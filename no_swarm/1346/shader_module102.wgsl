struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-1314f, vec3<bool>(false, true, true), false, vec2<f32>(1092f, -515f)), Struct_1(-571f, vec3<bool>(true, true, true), false, vec2<f32>(-2467f, 1617f)), Struct_1(-1285f, vec3<bool>(false, true, false), false, vec2<f32>(1076f, -1000f)), Struct_1(-940f, vec3<bool>(false, true, true), true, vec2<f32>(-964f, -694f)), Struct_1(1000f, vec3<bool>(false, true, true), false, vec2<f32>(525f, -2074f)), Struct_1(-666f, vec3<bool>(false, false, true), true, vec2<f32>(3503f, -489f)), Struct_1(-659f, vec3<bool>(false, true, true), false, vec2<f32>(167f, -855f)), Struct_1(409f, vec3<bool>(false, false, false), true, vec2<f32>(1712f, -344f)), Struct_1(-540f, vec3<bool>(false, false, false), false, vec2<f32>(1050f, 376f)), Struct_1(541f, vec3<bool>(false, false, false), false, vec2<f32>(541f, 263f)), Struct_1(-1001f, vec3<bool>(true, false, true), false, vec2<f32>(352f, -964f)), Struct_1(-421f, vec3<bool>(false, false, true), true, vec2<f32>(518f, -209f)), Struct_1(1093f, vec3<bool>(false, false, true), false, vec2<f32>(1000f, 1317f)), Struct_1(-233f, vec3<bool>(false, false, false), true, vec2<f32>(491f, 260f)), Struct_1(352f, vec3<bool>(true, false, true), false, vec2<f32>(1069f, -1000f)), Struct_1(-305f, vec3<bool>(true, false, true), false, vec2<f32>(-474f, 481f)), Struct_1(-304f, vec3<bool>(false, true, true), false, vec2<f32>(1000f, 441f)), Struct_1(-470f, vec3<bool>(false, false, true), false, vec2<f32>(-1000f, -1647f)), Struct_1(-3427f, vec3<bool>(false, true, false), true, vec2<f32>(745f, 233f)), Struct_1(1000f, vec3<bool>(true, true, true), false, vec2<f32>(-269f, -122f)), Struct_1(1025f, vec3<bool>(true, true, false), true, vec2<f32>(-239f, 546f)), Struct_1(111f, vec3<bool>(false, false, true), false, vec2<f32>(-2262f, -1332f)), Struct_1(408f, vec3<bool>(true, false, true), false, vec2<f32>(-1198f, -724f)), Struct_1(545f, vec3<bool>(true, true, true), true, vec2<f32>(2199f, -359f)), Struct_1(907f, vec3<bool>(true, true, true), true, vec2<f32>(1403f, -1000f)), Struct_1(-1469f, vec3<bool>(false, true, true), false, vec2<f32>(-899f, 974f)), Struct_1(-1000f, vec3<bool>(false, false, false), false, vec2<f32>(1000f, 1000f)), Struct_1(270f, vec3<bool>(false, false, true), true, vec2<f32>(958f, -223f)), Struct_1(-1000f, vec3<bool>(true, false, true), true, vec2<f32>(1199f, 549f)), Struct_1(-1000f, vec3<bool>(false, true, true), false, vec2<f32>(1141f, -1487f)), Struct_1(189f, vec3<bool>(false, false, false), false, vec2<f32>(498f, 1741f)));

var<private> global1: array<vec3<f32>, 12>;

var<private> global2: bool;

var<private> global3: u32;

var<private> global4: Struct_1 = Struct_1(125f, vec3<bool>(false, false, true), false, vec2<f32>(2185f, -1937f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.d;
    var var_1 = u_input.a.yz;
    let var_2 = max(~u_input.c.x ^ u_input.c.x, _wgslsmith_clamp_i32(firstLeadingBit(~(-1i)), _wgslsmith_div_i32(1i, countOneBits(4350i)), _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -3195i) << (~_wgslsmith_add_u32(7100u, u_input.b) % 32u)));
    var var_3 = select(~var_1.x, _wgslsmith_sub_u32(1u, select(~87698u, var_1.x, true) | _wgslsmith_clamp_u32(var_1.x, ~u_input.b, ~46337u)), false);
    let var_4 = ~abs(select(u_input.a.x ^ ~u_input.b, abs(var_1.x), !arg_0.b.x));
    return -737f;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> vec2<f32> {
    let var_0 = !(!select(select(vec4<bool>(true, arg_2.b.x, true, global4.b.x), !vec4<bool>(false, true, global4.c, arg_2.c), vec4<bool>(false, false, arg_2.b.x, true)), vec4<bool>(any(vec2<bool>(global4.b.x, true)), all(vec4<bool>(arg_2.c, global4.c, global4.b.x, false)), arg_2.c && true, true), vec4<bool>(!global4.b.x, true != global4.b.x, global4.b.x, global4.b.x)));
    var var_1 = 88383u;
    var var_2 = false;
    let var_3 = global4.b.x;
    global2 = global4.b.x;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -516f))) - _wgslsmith_f_op_vec2_f32(arg_0.xz + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-767f, -671f) - global4.d)), _wgslsmith_f_op_vec2_f32(-arg_0.zy))));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global4.d.x), _wgslsmith_f_op_f32(func_3(Struct_1(global4.a, vec3<bool>(true, global4.b.x, false), global4.b.x, global4.d))), _wgslsmith_f_op_f32(max(global4.a, arg_2.x))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_2, global1[_wgslsmith_index_u32(arg_1.x, 12u)]), global1[_wgslsmith_index_u32(min(0u, 1u), 12u)]), global4.c)), abs(min(u_input.c.zzz, _wgslsmith_sub_vec3_i32(u_input.c.xxx, u_input.c.www))), global0[_wgslsmith_index_u32(abs(u_input.a.x), 31u)], _wgslsmith_div_i32(0i, firstLeadingBit(select(arg_0, -2147483647i, global4.b.x))))));
    var var_1 = ~_wgslsmith_clamp_u32(arg_1.x, 0u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 15921u, u_input.b), reverseBits(vec3<u32>(arg_1.x, 48584u, arg_1.x)))));
    global4 = global0[_wgslsmith_index_u32(1u, 31u)];
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.a * arg_2.x), _wgslsmith_f_op_f32(global4.a * arg_2.x)));
    var var_3 = global0[_wgslsmith_index_u32(66460u, 31u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(636f, var_0.x) * var_3.d), vec2<f32>(-1933f, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(floor(var_2)), -1238f)))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global4 = Struct_1(arg_2.d.x, select(select(arg_1.b, global4.b, select(global4.b, arg_2.b, vec3<bool>(arg_1.b.x, false, arg_2.b.x))), select(!select(arg_2.b, global4.b, false), arg_1.b, vec3<bool>(true, any(vec2<bool>(arg_2.c, false)), any(arg_2.b.xx))), all(select(vec3<bool>(true, true, arg_2.c), vec3<bool>(arg_2.c, true, true), arg_2.c))), global4.b.x, _wgslsmith_f_op_vec2_f32(arg_2.d + _wgslsmith_f_op_vec2_f32(step(arg_1.d, arg_2.d))));
    let var_0 = u_input.c;
    global0 = array<Struct_1, 31>();
    let var_1 = (select(_wgslsmith_sub_i32(1i, u_input.c.x), -50211i, arg_1.c) | _wgslsmith_add_i32(min(_wgslsmith_mod_i32(-2147483647i, u_input.c.x), var_0.x & var_0.x), _wgslsmith_dot_vec4_i32(var_0, var_0 & vec4<i32>(var_0.x, -5649i, u_input.c.x, 0i)))) > abs(~var_0.x);
    var var_2 = arg_1;
    return arg_1;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = -1144f;
    return func_5((~_wgslsmith_add_vec2_u32(u_input.a.yw, u_input.a.ww) | firstLeadingBit(~u_input.a.yw)) & ~(vec2<u32>(11927u, u_input.a.x) & vec2<u32>(98197u, u_input.a.x)), Struct_1(1246f, select(global4.b, global4.b, all(arg_0) && all(global4.b)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-379f, global4.a) * _wgslsmith_f_op_vec2_f32(func_2(u_input.c.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 64769u), global1[_wgslsmith_index_u32(u_input.a.x, 12u)]))))), Struct_1(var_0, select(vec3<bool>(all(vec3<bool>(global4.c, arg_0.x, arg_0.x)), true, select(arg_0.x, arg_0.x, true)), global4.b, arg_0.x), false, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global4.d + global4.d)))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec3<f32>, 12>();
    let var_0 = func_5(~select(~select(u_input.a.wz, u_input.a.yy, arg_0.b.zx), max(vec2<u32>(42392u, u_input.b), u_input.a.wy) >> (~u_input.a.xx % vec2<u32>(32u)), !(!arg_0.b.xy)), Struct_1(global4.d.x, vec3<bool>((u_input.c.x >> (0u % 32u)) < 0i, global4.c, arg_0.b.x), true, _wgslsmith_f_op_vec2_f32(arg_0.d * func_5(countOneBits(u_input.a.yx), Struct_1(-1168f, global4.b, false, global4.d), arg_0).d)), Struct_1(global4.a, vec3<bool>(arg_0.b.x, true, !arg_0.b.x & false), !(!all(vec4<bool>(global4.b.x, true, arg_0.c, global4.c))), arg_0.d));
    var var_1 = _wgslsmith_add_i32(u_input.c.x ^ ~u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c.wxz, u_input.c.xyy));
    var var_2 = u_input.b;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(437f)))), !func_5(_wgslsmith_div_vec2_u32(u_input.a.zw, vec2<u32>(u_input.a.x, u_input.a.x) | u_input.a.xx), Struct_1(-148f, !var_0.b, func_1(vec2<bool>(arg_0.c, true)).c, _wgslsmith_f_op_vec2_f32(select(global4.d, var_0.d, vec2<bool>(false, false)))), arg_0).b, true, vec2<f32>(_wgslsmith_div_f32(func_5(vec2<u32>(67927u, u_input.b) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), arg_0, Struct_1(-1012f, vec3<bool>(arg_0.b.x, true, false), true, vec2<f32>(-1414f, 404f))).d.x, global4.a), global4.d.x));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + global4.a), _wgslsmith_f_op_f32(-155f - global4.a)))) + 823f), vec3<bool>(!var_0.c, func_1(vec2<bool>(false, true)).b.x, !var_3.c), false, var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 31u)];
    global3 = 41741u;
    global3 = max(13226u, firstTrailingBit(~u_input.b));
    var var_1 = Struct_1(var_0.a, !global4.b, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global4.d, var_0.d, !vec2<bool>(true, global4.c))))));
    let var_2 = func_6(func_1(vec2<bool>(all(!vec2<bool>(false, var_1.b.x)), var_1.c)));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(~1u ^ u_input.a.x, 68471u)), 31u)];
    var var_4 = func_6(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 43156u, abs(1u & u_input.a.x) << (u_input.a.x % 32u)), 31u)]);
    var var_5 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(countOneBits(abs(vec4<u32>(0u, 51051u, 0u, 84935u))), u_input.a), ~_wgslsmith_div_u32(~u_input.a.x, 0u)) ^ 20232u, 31u)];
    var var_6 = ~(~vec2<u32>(_wgslsmith_sub_u32(u_input.b, 10399u) & u_input.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4460u), vec2<u32>(676u, 39841u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.c.yzz, _wgslsmith_mod_vec3_i32(firstLeadingBit(u_input.c.wyy), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)))), select(select(-8524i, ~(-75512i), func_1(var_1.b.xz).b.x), firstTrailingBit(2147483647i), true)));
}

