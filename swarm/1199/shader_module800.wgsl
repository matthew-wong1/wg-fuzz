struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32>;

var<private> global2: Struct_5;

var<private> global3: array<vec4<bool>, 20>;

var<private> global4: Struct_5;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(trunc(global2.b.xw)), _wgslsmith_f_op_vec4_f32(select(global2.b, _wgslsmith_f_op_vec4_f32(-global4.b), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(-global2.c.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-373f, 458f))))))));
    var var_1 = Struct_3(u_input.a.x, vec4<bool>(any(select(select(vec4<bool>(true, false, arg_0.c.x, false), arg_0.c, true), !arg_0.c, global3[_wgslsmith_index_u32(~arg_0.d.e.x, 20u)])), arg_0.c.x, !(any(arg_0.b) || true), true), !vec4<bool>(true, any(!arg_0.b.xz), !arg_0.b.x == arg_0.c.x, arg_0.b.x), arg_0.d, ~(vec2<i32>(reverseBits(-19203i), ~(-2147483647i)) | abs(select(vec2<i32>(-25194i, 2147483647i), u_input.a.zz, true))));
    var var_2 = var_1.d;
    var_2 = var_1.d;
    global2 = var_0;
    return arg_0.d.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(global1.yyx, arg_0.a.a, arg_0.d.a), arg_0.d.b);
    var var_1 = Struct_5(vec2<f32>(arg_0.b, -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 1461f, -545f, -209f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)), !arg_1.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(149f, global4.a.x, -918f, 648f), vec4<f32>(-173f, -1545f, arg_0.b, global4.b.x)) - global4.b) * vec4<f32>(142f, _wgslsmith_f_op_f32(f32(-1f) * -726f), arg_0.b, -1509f))), global4.b.yx);
    let var_2 = Struct_1(abs(var_0.a), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~firstTrailingBit(vec2<i32>(-9426i, 2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 1i) | vec2<i32>(u_input.a.x, u_input.a.x), ~u_input.a.wz)), ~u_input.a.xw));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-245f)), _wgslsmith_f_op_f32(func_3(Struct_3(var_0.b, vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), arg_1, Struct_2(var_2, var_1.b.x, arg_0.c, var_2, arg_0.a.a.yz), u_input.a.zw)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x * 1000f)), -222f, -919f)));
    let var_4 = var_2;
    return Struct_1(~var_0.a, countOneBits(_wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_4.b), u_input.a.wx), var_4.b)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool) -> Struct_4 {
    global2 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global4.c, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -420f), _wgslsmith_f_op_f32(105f - arg_0.b))))), global4.b, _wgslsmith_f_op_vec2_f32(global4.c + global4.c));
    global4 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.b.zy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global4.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.x, -546f))))), global4.a)));
    global0 = -1365f;
    var var_0 = Struct_4(abs(1u), arg_0, Struct_3(max(abs(-18710i), reverseBits(23223i)) >> (~_wgslsmith_clamp_u32(global1.x, global1.x, 35556u) % 32u), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(arg_1.x, arg_2, true, true), vec4<bool>(true, true, arg_2, arg_2), arg_2), !global3[_wgslsmith_index_u32(global1.x, 20u)], true)), !vec4<bool>(!arg_2, arg_1.x, arg_1.x & arg_2, !arg_1.x), arg_0, u_input.a.xx | vec2<i32>(869i, -2147483647i)), arg_0.a, ~arg_0.e.x);
    global2 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(482f, -817f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b.wz)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(1215f)), _wgslsmith_f_op_f32(1588f * var_0.c.d.b), _wgslsmith_f_op_f32(step(global2.a.x, global2.a.x)), _wgslsmith_f_op_f32(round(664f))))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-136f, _wgslsmith_f_op_f32(abs(-1000f))))));
    return Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 36958u, global1.x), ~firstTrailingBit(vec3<u32>(48101u, global1.x, var_0.b.d.a.x)) << ((arg_0.d.a >> (select(var_0.c.d.d.a, vec3<u32>(var_0.b.d.a.x, var_0.c.d.e.x, arg_0.e.x), false) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_2(arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x + -2131f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), var_0.c.d.d.b, func_2(arg_0, select(global3[_wgslsmith_index_u32(~4294967295u, 20u)], !vec4<bool>(arg_1.x, false, true, var_0.c.b.x), select(vec4<bool>(var_0.c.b.x, false, var_0.c.b.x, var_0.c.b.x), vec4<bool>(true, false, true, arg_1.x), vec4<bool>(arg_2, true, arg_2, false)))), ~_wgslsmith_mod_vec2_u32(arg_0.a.a.xz, var_0.b.a.a.xz)), Struct_3(_wgslsmith_sub_i32(reverseBits(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.b, 25258i, arg_0.a.b), _wgslsmith_sub_vec3_i32(u_input.a.wxz, u_input.a.xwz))), select(vec4<bool>(var_0.c.b.x, !arg_1.x, false, all(vec4<bool>(arg_1.x, arg_2, var_0.c.c.x, false))), vec4<bool>(u_input.a.x > arg_0.d.b, true, any(global3[_wgslsmith_index_u32(76603u, 20u)]), select(arg_1.x, false, var_0.c.b.x)), vec4<bool>(any(var_0.c.c), all(vec3<bool>(true, false, true)), true, all(vec2<bool>(var_0.c.b.x, false)))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.e.x, min(67962u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.b.a.a.x), var_0.c.d.e))), 20u)], Struct_2(func_2(Struct_2(var_0.b.a, -131f, u_input.a.x, var_0.c.d.d, vec2<u32>(arg_0.d.a.x, 4294967295u)), !global3[_wgslsmith_index_u32(global1.x, 20u)]), -2206f, -2147483647i, func_2(arg_0, select(vec4<bool>(false, false, var_0.c.b.x, true), vec4<bool>(true, true, true, var_0.c.b.x), arg_2)), _wgslsmith_mult_vec2_u32(~arg_0.e, arg_0.e)), u_input.a.yz ^ countOneBits(-u_input.a.zx)), func_2(Struct_2(Struct_1(vec3<u32>(var_0.a, 19725u, var_0.c.d.a.a.x), _wgslsmith_add_i32(-28942i, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1066f))), var_0.b.a.b, var_0.c.d.d, vec2<u32>(var_0.e, var_0.b.d.a.x & arg_0.a.a.x)), var_0.c.b), _wgslsmith_div_u32(6936u, 1u));
}

fn func_5(arg_0: Struct_4) -> Struct_5 {
    global2 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.x, global2.a.x) * vec2<f32>(arg_0.b.b, -1295f)) * global4.b.zw) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, global4.c.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(global4.b)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b.wy - vec2<f32>(global4.a.x, -1464f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(global4.c)), global2.a, all(vec2<bool>(arg_0.c.c.x, arg_0.c.c.x))))))));
    let var_0 = !(!vec3<bool>(arg_0.c.b.x, true, true));
    global3 = array<vec4<bool>, 20>();
    var var_1 = abs(~func_4(func_4(Struct_2(arg_0.c.d.a, global2.b.x, u_input.a.x, Struct_1(arg_0.d.a, u_input.a.x), vec2<u32>(0u, global1.x)), func_4(Struct_2(Struct_1(vec3<u32>(66144u, 0u, 2363u), -38459i), -1000f, arg_0.b.a.b, Struct_1(vec3<u32>(63659u, 0u, arg_0.e), arg_0.d.b), global1.xw), vec2<bool>(false, false), var_0.x).c.b.yw, false).c.d, !vec2<bool>(var_0.x, var_0.x), true).c.d.d.a.xy);
    global0 = 671f;
    return Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1006f + _wgslsmith_f_op_f32(global2.c.x + arg_0.b.b)), arg_0.b.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)), global4.a);
}

fn func_1() -> vec3<bool> {
    let var_0 = global4.a.x;
    let var_1 = global4.b.yzz;
    let var_2 = func_5(func_4(Struct_2(func_2(Struct_2(Struct_1(global1.xxz, u_input.a.x), 2347f, -7794i, Struct_1(vec3<u32>(36869u, 81545u, global1.x), 1i), global1.zx), vec4<bool>(false, true, false, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(171f)), _wgslsmith_f_op_f32(max(global2.b.x, global2.b.x))), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2507i), vec2<i32>(u_input.a.x, -2147483647i))), Struct_1(vec3<u32>(35869u, 48106u, 149997u), -1i), ~vec2<u32>(global1.x, 4294967295u)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true)), any(vec4<bool>(-30390i < u_input.a.x, false, true, true))));
    global2 = Struct_5(_wgslsmith_f_op_vec2_f32(-var_1.zy), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(global2.b)))), _wgslsmith_f_op_vec4_f32(-var_2.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1308f, global4.b.x) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 343f), var_2.a)))));
    let var_3 = true;
    return vec3<bool>(false, false, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, true, (global4.c.x == -653f) | true), !select(vec3<bool>(true, true, true), func_1(), true), ~max(_wgslsmith_clamp_u32(1u, global1.x, global1.x), max(global1.x, global1.x)) > global1.x);
    let var_1 = select(var_0, var_0, global1.x <= global1.x);
    global4 = func_5(func_4(Struct_2(Struct_1(min(global1.zzz, vec3<u32>(global1.x, 4294967295u, global1.x)), _wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, 1i))), _wgslsmith_div_f32(global4.a.x, 1025f), u_input.a.x, func_4(Struct_2(Struct_1(vec3<u32>(global1.x, 102232u, global1.x), u_input.a.x), global4.a.x, u_input.a.x, Struct_1(vec3<u32>(41860u, 29626u, 17953u), u_input.a.x), global1.ww), func_1().xz, u_input.a.x > -1i).d, reverseBits(~global1.wx)), select(select(var_0.zx, vec2<bool>(true, var_0.x), func_1().xy), func_4(func_4(Struct_2(Struct_1(global1.xyz, u_input.a.x), global4.a.x, 0i, Struct_1(vec3<u32>(global1.x, 13110u, global1.x), u_input.a.x), global1.yx), var_1.yx, true).c.d, func_4(Struct_2(Struct_1(global1.wwz, 0i), -1705f, 2147483647i, Struct_1(vec3<u32>(76333u, 12398u, 51555u), u_input.a.x), global1.zy), vec2<bool>(var_1.x, false), var_0.x).c.b.wz, true).c.b.wz, false), all(!(!var_0.zz))));
    let var_2 = var_1.zy;
    let var_3 = func_2(Struct_2(func_2(func_4(func_4(Struct_2(Struct_1(global1.xzw, 2147483647i), global2.c.x, -226i, Struct_1(global1.ywy, u_input.a.x), global1.wy), vec2<bool>(var_1.x, true), var_0.x).b, !vec2<bool>(var_1.x, var_1.x), false).b, global3[_wgslsmith_index_u32(~global1.x, 20u)]), global2.c.x, 15034i, func_2(func_4(func_4(Struct_2(Struct_1(vec3<u32>(1480u, 51073u, 29790u), 1i), 1249f, 1i, Struct_1(vec3<u32>(4294967295u, global1.x, global1.x), -29713i), vec2<u32>(global1.x, global1.x)), vec2<bool>(false, var_0.x), true).c.d, vec2<bool>(true, var_0.x), select(var_0.x, true, false)).c.d, select(vec4<bool>(var_2.x, var_0.x, var_0.x, var_0.x), !global3[_wgslsmith_index_u32(51885u, 20u)], false)), abs(select(vec2<u32>(28602u, global1.x), global1.yx, func_1().yx))), global3[_wgslsmith_index_u32(61008u, 20u)]);
    global2 = Struct_5(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(699f)))), _wgslsmith_f_op_f32(select(521f, global4.c.x, all(var_0)))))), vec4<f32>(global4.b.x, 1201f, -2132f, _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(global2.c.x + global2.a.x), _wgslsmith_f_op_f32(global2.c.x * global4.b.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global4.a)))));
    var var_4 = Struct_1(vec3<u32>(global1.x, _wgslsmith_div_u32(global1.x, ~func_4(Struct_2(Struct_1(vec3<u32>(global1.x, 0u, 88230u), u_input.a.x), global2.a.x, var_3.b, Struct_1(global1.ywx, -150i), global1.yx), vec2<bool>(false, false), false).e), abs(~1u)), -u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(119771u, reverseBits(~((41211u ^ var_4.a.x) & 20616u)), func_5(Struct_4(~global1.x, Struct_2(var_3, _wgslsmith_f_op_f32(global2.b.x - 121f), var_4.b, var_3, vec2<u32>(0u, var_3.a.x)), Struct_3(_wgslsmith_dot_vec2_i32(u_input.a.wy, vec2<i32>(-23120i, -2147483647i)), !global3[_wgslsmith_index_u32(var_3.a.x, 20u)], select(global3[_wgslsmith_index_u32(78980u, 20u)], vec4<bool>(false, var_2.x, var_0.x, var_2.x), vec4<bool>(true, var_1.x, false, false)), Struct_2(Struct_1(var_3.a, 2147483647i), 739f, 47567i, var_3, vec2<u32>(0u, var_4.a.x)), func_4(Struct_2(Struct_1(global1.zzz, var_3.b), -286f, u_input.a.x, Struct_1(vec3<u32>(43679u, var_3.a.x, global1.x), u_input.a.x), global1.wy), var_1.yx, true).c.e), var_3, var_4.a.x)).c.x);
}

