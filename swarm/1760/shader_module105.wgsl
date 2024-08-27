struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: bool;

var<private> global2: array<vec2<i32>, 11>;

var<private> global3: vec3<u32> = vec3<u32>(51472u, 64959u, 22905u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> vec3<u32> {
    global1 = arg_0;
    global1 = false;
    let var_0 = global0[_wgslsmith_index_u32(1u, 5u)];
    var var_1 = var_0.a;
    let var_2 = 2147483647i;
    return _wgslsmith_sub_vec3_u32(vec3<u32>(~(~93480u), ~(~_wgslsmith_dot_vec3_u32(u_input.d.xzx, var_0.b)), select(0u, _wgslsmith_sub_u32(var_0.d, 15374u), true) & ~u_input.d.x), u_input.a.wyz);
}

fn func_2(arg_0: Struct_2) -> f32 {
    global3 = ~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.a.yyy, vec3<u32>(1u, 14923u, 0u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4665u, global3.x, 42987u), vec3<u32>(4294967295u, u_input.a.x, u_input.d.x), vec3<u32>(0u, 49644u, 1534u))), ~(~u_input.d.wyy));
    global3 = _wgslsmith_add_vec3_u32(u_input.d.wwx, select(u_input.a.yzy, ~(~func_3(arg_0.c.a, vec3<f32>(952f, -320f, 218f))), vec3<bool>(true, arg_0.c.a, true)));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1841f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2075f)) * _wgslsmith_f_op_f32(-328f - 321f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-580f + -647f)) * _wgslsmith_div_f32(-2374f, 1f)), any(vec2<bool>(true, true))))));
    let var_1 = false || !any(!vec4<bool>(arg_0.c.a, false, arg_0.c.a, arg_0.c.a));
    let var_2 = ~(-48171i);
    return -1133f;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> Struct_2 {
    let var_0 = select(vec3<bool>(true, true, true), !select(vec3<bool>(true, u_input.e.x >= arg_1.x, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(false, false, false), true)), vec3<bool>(true, !(_wgslsmith_f_op_f32(func_2(Struct_2(u_input.c.yxz, u_input.a.xw, Struct_1(true), 15648u))) < _wgslsmith_f_op_f32(-1164f - -1330f)), all(vec3<bool>(true, true, true))));
    var var_1 = Struct_1(any(select(!(!vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(true, false, false || var_0.x), any(!var_0.yz))));
    let var_2 = Struct_2(-vec3<i32>(arg_1.x, -_wgslsmith_clamp_i32(u_input.c.x, arg_1.x, -21354i), arg_0), (abs(max(vec2<u32>(arg_2, 0u), vec2<u32>(arg_2, 4294967295u))) << (~u_input.d.ww % vec2<u32>(32u))) & u_input.a.ww, Struct_1(var_0.x), global3.x);
    var var_3 = Struct_2(firstTrailingBit(~var_2.a & max(vec3<i32>(0i, 49773i, u_input.e.x), u_input.c.zwx)) ^ var_2.a, ~vec2<u32>(_wgslsmith_clamp_u32(1u >> (var_2.b.x % 32u), var_2.d ^ 1u, u_input.b), arg_2), Struct_1(select(u_input.e.x << (arg_2 % 32u), ~(-20315i), all(var_0.yz)) > (u_input.e.x | arg_1.x)), min(~4294967295u, ~4294967295u));
    global1 = true;
    return Struct_2(_wgslsmith_add_vec3_i32(abs(var_2.a), vec3<i32>(abs(41676i), var_3.a.x, ~2147483647i)), vec2<u32>(19480u, arg_2), var_3.c, global3.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = arg_1.a;
    let var_1 = ~arg_1.b.x;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(801f, -212f)) + _wgslsmith_f_op_f32(376f + 541f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f - -1473f)), arg_1.c.a));
    global0 = array<Struct_3, 5>();
    let var_3 = Struct_3(func_1(~(-2147483647i), u_input.e, ~arg_1.b.x), _wgslsmith_add_vec3_u32(~func_3(!arg_1.c.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-295f, 622f, 317f)))), ~(~vec3<u32>(arg_0.x, 31609u, 4294967295u)) >> (arg_2.yyz % vec3<u32>(32u))), vec2<i32>(abs(-arg_1.a.x) & reverseBits(_wgslsmith_clamp_i32(var_0.x, u_input.c.x, -14458i)), ~func_1(~1i, var_0.zz >> (global3.zx % vec2<u32>(32u)), ~var_1).a.x), select(11494u, var_1, false));
    return func_1(reverseBits(_wgslsmith_dot_vec2_i32(-global2[_wgslsmith_index_u32(var_1, 11u)], vec2<i32>(var_0.x, u_input.e.x))) >> (abs(4294967295u) % 32u), firstTrailingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(var_0.x, arg_1.a.x), vec2<i32>(-31525i, -arg_1.a.x))), ~abs(u_input.a.x));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_2(vec3<i32>(~reverseBits(28330i), -2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(11060i, arg_2.x, 1i), ~(vec3<i32>(-2147483647i, arg_2.x, arg_0.a.x) | vec3<i32>(u_input.c.x, arg_2.x, arg_2.x)))), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.d, firstTrailingBit(global3.x)), arg_0.b), arg_0.c, global3.x);
    var var_1 = u_input.c.wxy;
    let var_2 = any(vec2<bool>(var_0.c.a, any(!(!vec3<bool>(arg_0.c.a, false, var_0.c.a)))));
    global0 = array<Struct_3, 5>();
    global2 = array<vec2<i32>, 11>();
    return _wgslsmith_dot_vec4_u32(~select(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 29183u, 9808u, 4294967295u), u_input.a)), _wgslsmith_add_vec4_u32(u_input.a, u_input.d) >> (reverseBits(vec4<u32>(4294967295u, 31722u, 0u, 4294967295u)) % vec4<u32>(32u)), !func_4(vec2<u32>(52077u, global3.x), arg_0, vec4<u32>(arg_0.b.x, 0u, 1u, var_0.d)).c.a), u_input.a);
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    global3 = min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(12845u, 0u), ~u_input.d.x), countOneBits(global3.x ^ global3.x)), ~_wgslsmith_add_vec3_u32(arg_0.b, _wgslsmith_add_vec3_u32(u_input.d.wzz, vec3<u32>(29827u, global3.x, 4294967295u)))), ~arg_0.b);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(1f)), 1513f);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -214f)) - var_0.x) - _wgslsmith_f_op_f32(round(-2346f))), _wgslsmith_f_op_f32(func_2(arg_0.a)));
    var var_2 = Struct_2(-u_input.c.wxz ^ _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 4659i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c.x), global2[_wgslsmith_index_u32(arg_0.b.x, 11u)])), min(_wgslsmith_mod_vec3_i32(arg_0.a.a, arg_0.a.a), u_input.c.wzy)), _wgslsmith_clamp_vec2_u32(func_1(-27018i, vec2<i32>(arg_0.c.x << (u_input.b % 32u), ~arg_0.c.x), 38197u).b, vec2<u32>(52479u, global3.x), select(vec2<u32>(4294967295u, u_input.a.x), u_input.a.zx, true) & ((vec2<u32>(1u, 1551u) >> (vec2<u32>(u_input.a.x, global3.x) % vec2<u32>(32u))) | arg_0.a.b)), func_4(arg_0.b.zy, Struct_2(u_input.c.yyx, _wgslsmith_mult_vec2_u32(global3.yz << (arg_0.b.xz % vec2<u32>(32u)), abs(global3.xy)), arg_0.a.c, _wgslsmith_mod_u32(1u, global3.x)), abs(abs(u_input.d ^ u_input.d))).c, arg_0.a.b.x);
    global1 = all(!(!vec4<bool>(var_2.c.a, arg_0.a.c.a || var_2.c.a, any(vec4<bool>(arg_0.a.c.a, var_2.c.a, var_2.c.a, arg_0.a.c.a)), true)));
    return Struct_2(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(abs(var_2.a), u_input.c.wyz), _wgslsmith_mult_i32(firstTrailingBit(2147483647i), func_1(-23488i, global2[_wgslsmith_index_u32(1u, 11u)], 51376u).a.x)), _wgslsmith_clamp_i32(-1i, arg_0.a.a.x, func_1(var_2.a.x ^ 2147483647i, ~vec2<i32>(arg_0.c.x, arg_0.c.x), firstLeadingBit(global3.x)).a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(1i), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-15613i, var_2.a.x, 71130i, -73552i))), ~(-global2[_wgslsmith_index_u32(var_2.d, 11u)]))), vec2<u32>(firstTrailingBit(71911u & arg_0.d) ^ func_1(-2147483647i, ~var_2.a.xx, func_5(Struct_2(var_2.a, vec2<u32>(global3.x, 12782u), var_2.c, 34408u), u_input.b, vec2<i32>(arg_0.c.x, -22647i))).d, min(~u_input.a.x, (67040u << (global3.x % 32u)) | global3.x)), var_2.c, _wgslsmith_mult_u32(max(u_input.d.x, global3.x), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1f, 112f, true)))))));
    let var_1 = func_6(global0[_wgslsmith_index_u32(func_5(func_4(global3.yz, func_1(-u_input.e.x, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.e.x), u_input.e), 1u), vec4<u32>(77672u, ~0u, u_input.d.x >> (4294967295u % 32u), ~47920u)), u_input.b, global2[_wgslsmith_index_u32(reverseBits(u_input.b) | ~(~global3.x), 11u)]), 5u)]);
    global2 = array<vec2<i32>, 11>();
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(var_1)), _wgslsmith_f_op_f32(floor(-952f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1192f)) - _wgslsmith_f_op_f32(-1000f * 1946f))) * -918f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1583f, _wgslsmith_f_op_f32(f32(-1f) * -433f), all(vec4<bool>(var_1.c.a, var_1.c.a, false, var_1.c.a)) & true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-126f, 1147f)) - 180f))));
    let var_3 = any(!(!select(select(vec2<bool>(var_1.c.a, var_1.c.a), vec2<bool>(true, false), vec2<bool>(var_1.c.a, var_1.c.a)), select(vec2<bool>(true, var_1.c.a), vec2<bool>(var_1.c.a, var_1.c.a), vec2<bool>(var_1.c.a, var_1.c.a)), vec2<bool>(var_1.c.a, var_1.c.a))));
    global1 = func_6(global0[_wgslsmith_index_u32(~abs(~1u), 5u)]).c.a;
    let var_4 = abs(-5325i);
    let var_5 = select(44305u, 33343u, true);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-vec2<i32>(15141i, 7410i))));
}

