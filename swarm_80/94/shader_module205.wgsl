struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 62805u, 4294967295u);

var<private> global2: array<bool, 17> = array<bool, 17>(false, false, true, true, true, true, true, false, true, true, false, true, false, false, false, false, true);

var<private> global3: Struct_3;

var<private> global4: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(898f, -296f, -932f, -816f), vec4<f32>(1139f, 1655f, -1396f, 975f), vec4<f32>(-968f, -686f, -600f, 1030f), vec4<f32>(184f, -1000f, 1456f, 451f), vec4<f32>(-636f, -169f, 902f, -1000f), vec4<f32>(-2345f, -259f, 490f, -783f), vec4<f32>(123f, 114f, 116f, -563f), vec4<f32>(1633f, 695f, -958f, -1139f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    global1 = vec3<u32>(4294967295u, 1u, u_input.c.x);
    let var_0 = ~abs(~(~(vec4<u32>(12631u, 1u, u_input.b, 77415u) << (vec4<u32>(u_input.b, global1.x, global1.x, u_input.c.x) % vec4<u32>(32u)))));
    let var_1 = Struct_3(true);
    var var_2 = true || arg_2.c.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a)))), u_input.a.xy, !select(global0.yzx, arg_2.c, any(select(vec2<bool>(false, false), vec2<bool>(global0.x, arg_2.c.x), vec2<bool>(arg_2.c.x, true)))));
    return select(~countOneBits(var_0.zwy), ~(max(var_0.xxz, vec3<u32>(var_0.x, 29016u, var_0.x)) | vec3<u32>(var_0.x, 0u, global1.x)) & ~abs(vec3<u32>(1u, global1.x, 0u)), !select(!vec3<bool>(global3.a, var_1.a, true), select(var_3.c, select(global0.wyw, global0.yzx, false), !global0.ywz), !(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 17u)]))));
}

fn func_2() -> vec4<bool> {
    global0 = vec4<bool>(any(!vec4<bool>(true, global0.x || false, false, false)), select(true, false, !(_wgslsmith_f_op_f32(ceil(2272f)) < _wgslsmith_f_op_f32(min(-1613f, -994f)))), !global3.a, false);
    global1 = _wgslsmith_add_vec3_u32(func_3(true, 2147483647i, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-524f, 1493f)))), -(~vec2<i32>(u_input.a.x, -30474i)), global0.yzz)), vec3<u32>(_wgslsmith_sub_u32(60845u, ~(~1u)), abs(_wgslsmith_sub_u32(select(1u, 1u, global2[_wgslsmith_index_u32(global1.x, 17u)]), u_input.b)), ~73628u));
    var var_0 = Struct_3(true);
    var_0 = Struct_3(global2[_wgslsmith_index_u32(firstTrailingBit(~(~(global1.x & global1.x))), 17u)]);
    var var_1 = any(select(select(!global0.xz, select(vec2<bool>(false, false), global0.zy, true), select(global0.xz, !vec2<bool>(var_0.a, global0.x), true)), vec2<bool>(4294967295u <= global1.x, true), global0.yy));
    return vec4<bool>(true, any(select(vec4<bool>(!global2[_wgslsmith_index_u32(global1.x, 17u)], global3.a, true, false), vec4<bool>(any(vec2<bool>(true, global3.a)), any(global0.yxw), true, any(vec3<bool>(false, global3.a, true))), select(!vec4<bool>(false, global3.a, global3.a, global2[_wgslsmith_index_u32(50416u, 17u)]), !vec4<bool>(false, global2[_wgslsmith_index_u32(27017u, 17u)], var_0.a, false), select(vec4<bool>(var_0.a, false, false, global2[_wgslsmith_index_u32(1056u, 17u)]), vec4<bool>(true, var_0.a, global2[_wgslsmith_index_u32(12432u, 17u)], global3.a), vec4<bool>(false, false, true, var_0.a))))), !select(!any(vec3<bool>(false, false, var_0.a)), any(vec2<bool>(false, global0.x)), false), global1.x == u_input.b);
}

fn func_1() -> f32 {
    let var_0 = vec3<u32>(global1.x, 16943u, ~(~u_input.c.x));
    global0 = select(func_2(), vec4<bool>(false, false, global3.a, all(select(vec4<bool>(global0.x, false, global2[_wgslsmith_index_u32(48502u, 17u)], true), vec4<bool>(global3.a, global2[_wgslsmith_index_u32(15738u, 17u)], false, global0.x), true)) || (func_2().x == func_2().x)), func_2());
    var var_1 = u_input.a.zzy;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1788f - 441f), _wgslsmith_f_op_f32(sign(974f))))), vec2<i32>(reverseBits(-var_1.x), -var_1.x ^ _wgslsmith_add_i32(var_1.x, u_input.a.x)), global0.zxx), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-833f, 489f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(381f, 232f) - vec2<f32>(-447f, 457f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(915f)), _wgslsmith_f_op_f32(select(345f, -1991f, true))))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -439f) * _wgslsmith_f_op_f32(120f * -967f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-694f - 1000f))), -vec2<i32>(-u_input.a.x, u_input.a.x), !vec3<bool>(!global2[_wgslsmith_index_u32(var_0.x, 17u)], all(global0.zz), true)), Struct_1(1000f, -vec2<i32>(-77208i, -8177i) >> (vec2<u32>(var_0.x, ~0u) % vec2<u32>(32u)), !vec3<bool>(all(vec2<bool>(global3.a, global0.x)), 1i >= u_input.a.x, !global2[_wgslsmith_index_u32(var_0.x, 17u)])), global2[_wgslsmith_index_u32(var_0.x, 17u)]);
    let var_3 = _wgslsmith_div_f32(var_2.a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - _wgslsmith_div_f32(1000f, 1520f));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    global1 = vec3<u32>(52946u, 0u, u_input.b);
    let var_0 = !vec3<bool>(!(!global0.x), any(select(func_2().wz, select(arg_1.c.zx, global0.xw, arg_1.c.zx), global2[_wgslsmith_index_u32(38388u, 17u)] || arg_1.c.x)), global2[_wgslsmith_index_u32(global1.x, 17u)]);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1807f + -137f)));
    let var_2 = min(abs(select(arg_1.b, vec2<i32>(_wgslsmith_sub_i32(30084i, arg_1.b.x), ~(-32008i)), global0.zz)), _wgslsmith_clamp_vec2_i32(min(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.xz, vec2<i32>(0i, arg_1.b.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.b.x, -2147483647i), vec2<i32>(2147483647i, 1i))), ~vec2<i32>(arg_1.b.x, u_input.a.x) | ~vec2<i32>(-1i, arg_1.b.x)), _wgslsmith_mult_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(16702i, u_input.a.x), vec2<i32>(u_input.a.x, arg_1.b.x)), select(vec2<i32>(13940i, arg_1.b.x), arg_1.b, var_0.x), true), _wgslsmith_mod_vec2_i32(min(vec2<i32>(u_input.a.x, 0i), vec2<i32>(u_input.a.x, arg_1.b.x)), reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)))), arg_1.b));
    var var_3 = u_input.a.x;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(632f - 1715f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + _wgslsmith_f_op_f32(select(1503f, arg_0, arg_1.c.x))) + var_1)), _wgslsmith_div_f32(var_1, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = countOneBits((abs(reverseBits(vec3<u32>(global1.x, 1u, u_input.c.x))) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.c.x) >> (vec3<u32>(global1.x, 1u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(global1.x, 102611u, u_input.b) >> (vec3<u32>(global1.x, u_input.b, 38839u) % vec3<u32>(32u)), vec3<u32>(1u, 5281u, 49426u) | vec3<u32>(1u, global1.x, global1.x))) | vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, u_input.c.x), vec4<u32>(global1.x, global1.x, 0u, global1.x)), 0u, ~global1.x));
    var var_0 = vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global1.x, 1u, 13207u), 1u, 0u, ~global1.x), vec4<u32>(38704u, ~u_input.b, global1.x, _wgslsmith_mod_u32(global1.x, 31768u))), 60356u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 23632u), vec2<u32>(u_input.c.x, 104341u)) << (~select(u_input.b, 0u, true) % 32u)) >> (max(vec4<u32>(global1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 68245u), vec2<u32>(4294967295u, u_input.c.x)), 31316u, 0u), countOneBits(vec4<u32>(15895u, 4294967295u, 4294967295u, 442u) & ~vec4<u32>(1u, global1.x, u_input.b, u_input.b))) % vec4<u32>(32u));
    var var_1 = u_input.a.x ^ -1i;
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1083f) * _wgslsmith_f_op_f32(-1f)), Struct_1(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_vec2_i32(select(u_input.a.xz, vec2<i32>(-1i, u_input.a.x), global0.zz), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(-1i, 2147483647i))), vec3<bool>(false, !global0.x, any(vec3<bool>(false, false, global0.x))))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_4(var_2.x, Struct_1(_wgslsmith_f_op_f32(-var_2.x), vec2<i32>(-u_input.a.x, 2147483647i), vec3<bool>(!global3.a, var_0.x > 39436u, select(global0.x, global3.a, false))))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)) * _wgslsmith_f_op_f32(floor(-1069f))));
    let x = u_input.a;
    s_output = StorageBuffer(509f, _wgslsmith_sub_vec4_u32(~(reverseBits(vec4<u32>(var_0.x, 63656u, 45018u, 14997u)) ^ (vec4<u32>(4294967295u, 0u, 4294967295u, u_input.c.x) << (vec4<u32>(1u, global1.x, 46674u, 4294967295u) % vec4<u32>(32u)))), reverseBits(~vec4<u32>(4294967295u, 3972u, u_input.b, 52791u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * 552f))) + _wgslsmith_f_op_f32(var_3 * 479f)));
}

