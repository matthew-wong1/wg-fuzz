struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
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

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(13755i, -28808i), vec2<i32>(2551i, -29107i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-7848i, 66057i), vec2<i32>(-33196i, -16159i), vec2<i32>(-66732i, 2147483647i), vec2<i32>(-13409i, -1i), vec2<i32>(0i, 10410i), vec2<i32>(27087i, -17484i), vec2<i32>(-1i, 2147483647i), vec2<i32>(10368i, 14220i), vec2<i32>(4188i, 62576i), vec2<i32>(11348i, 52418i), vec2<i32>(2147483647i, 0i), vec2<i32>(-20010i, 13729i), vec2<i32>(1i, 1i));

var<private> global1: array<u32, 20>;

var<private> global2: Struct_2;

var<private> global3: array<vec2<i32>, 29>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global1 = array<u32, 20>();
    global0 = array<vec2<i32>, 19>();
    global1 = array<u32, 20>();
    global0 = array<vec2<i32>, 19>();
    var var_0 = Struct_1(!all(vec4<bool>(false, false, false, true)) | true, reverseBits(min(vec2<u32>(_wgslsmith_add_u32(0u, 9086u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 54908u))), vec2<u32>(~59710u, abs(4294967295u)))), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a.x, 13080u, 51089u)), ~(~vec3<u32>(u_input.a.x, 57840u, arg_0))));
    return vec2<u32>(~firstLeadingBit(~arg_0) << (u_input.a.x % 32u), arg_0);
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    global1 = array<u32, 20>();
    global0 = array<vec2<i32>, 19>();
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-global2.a), u_input.a, Struct_2(-695f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(140f, _wgslsmith_f_op_f32(global2.a * global2.a), _wgslsmith_f_op_f32(-global2.a)) + vec3<f32>(global2.a, _wgslsmith_f_op_f32(global2.a + 110f), _wgslsmith_f_op_f32(f32(-1f) * -588f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a, global2.a, global2.a), vec3<f32>(-495f, -383f, -163f), vec3<bool>(false, false, arg_0.x))))))), u_input.a);
    global0 = array<vec2<i32>, 19>();
    global1 = array<u32, 20>();
    return Struct_4(Struct_1(arg_0.x, func_3(69386u), abs(~26995u)), _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), -1i), -select(~vec2<i32>(u_input.b, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-8620i, -1i)), arg_0)));
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> f32 {
    var var_0 = Struct_3(Struct_1(!arg_0.a.a, arg_0.a.b, ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(9710u, 34950u, 45959u)), ~vec3<u32>(u_input.a.x, 0u, 22213u))), vec4<bool>(global2.a != _wgslsmith_f_op_f32(-global2.a), true, !arg_0.a.a, false), arg_0.a);
    global0 = array<vec2<i32>, 19>();
    let var_1 = Struct_3(func_2(!select(vec2<bool>(true, false), !var_0.b.zw, select(vec2<bool>(var_0.a.a, arg_0.a.a), vec2<bool>(arg_0.a.a, false), true))).a, select(select(vec4<bool>(all(vec4<bool>(var_0.b.x, true, arg_0.a.a, true)), var_0.c.a | true, 313f == global2.a, true), var_0.b, var_0.b), vec4<bool>(any(var_0.b.wz), !(true | arg_0.a.a), !var_0.c.a | (2869u < arg_0.a.c), any(select(vec2<bool>(arg_0.a.a, true), vec2<bool>(arg_0.a.a, arg_0.a.a), true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.a.a, all(vec4<bool>(var_0.c.a, arg_0.a.a, true, false)), true), true)), func_2(!(!(!vec2<bool>(var_0.b.x, false)))).a);
    let var_2 = u_input.a.x;
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global2.a, global2.a))))))));
}

fn func_1(arg_0: f32, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1527f - _wgslsmith_f_op_f32(func_4(func_2(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(-3803i, 2147483647i)))))));
    let var_1 = Struct_2(global2.a);
    var var_2 = global1[_wgslsmith_index_u32(reverseBits(arg_1), 20u)];
    let var_3 = Struct_4(Struct_1(func_2(vec2<bool>(true, true)).a.a, vec2<u32>(~1u, ~(~47292u)), firstTrailingBit(1u) << (1u % 32u)), (i32(-1i) * -2147483647i) & max(~(-14774i) ^ u_input.b, u_input.b));
    var var_4 = var_1;
    return any(!select(vec4<bool>(true, false, var_3.a.a, true), select(vec4<bool>(var_3.a.a, var_3.a.a, var_3.a.a, false), !vec4<bool>(var_3.a.a, true, var_3.a.a, false), select(vec4<bool>(var_3.a.a, false, var_3.a.a, var_3.a.a), vec4<bool>(true, true, true, var_3.a.a), vec4<bool>(false, true, false, var_3.a.a))), vec4<bool>(any(vec4<bool>(var_3.a.a, false, var_3.a.a, var_3.a.a)), var_3.a.a, true, false && var_3.a.a)));
}

fn func_5(arg_0: vec3<i32>, arg_1: bool) -> Struct_4 {
    var var_0 = Struct_2(-291f);
    var var_1 = !vec4<bool>(arg_1, any(!select(vec4<bool>(arg_1, false, false, true), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1))), arg_1, false);
    let var_2 = ~arg_0.x;
    let var_3 = !vec4<bool>(!var_1.x, false, var_1.x, any(select(vec4<bool>(true, arg_1, false, var_1.x), vec4<bool>(false, false, var_1.x, true), false)) & (var_0.a > _wgslsmith_f_op_f32(f32(-1f) * -908f)));
    global0 = array<vec2<i32>, 19>();
    return Struct_4(Struct_1(false, select(u_input.a, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.a.x, 20u)], 20u)], reverseBits(global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), var_3.zz), global1[_wgslsmith_index_u32(~abs(u_input.a.x), 20u)] | ~15190u), arg_0.x);
}

fn func_6(arg_0: bool, arg_1: Struct_4, arg_2: Struct_5) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(~arg_1.b, abs(arg_1.b), u_input.b), vec3<i32>(min(u_input.b, arg_1.b), -2147483647i, u_input.b), !vec3<bool>(arg_0, arg_1.a.a, false)), vec3<i32>(_wgslsmith_add_i32(arg_1.b | 0i, _wgslsmith_add_i32(1i, -2147483647i)), (arg_1.b & arg_1.b) >> (global1[_wgslsmith_index_u32(1u, 20u)] % 32u), ~(~u_input.b))) | ~reverseBits(vec3<i32>(u_input.b, 1i, -2147483647i));
    global3 = array<vec2<i32>, 29>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1083f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)))));
    global0 = array<vec2<i32>, 19>();
    global3 = array<vec2<i32>, 29>();
    return Struct_3(func_2(vec2<bool>(false, arg_1.a.a)).a, select(select(vec4<bool>(true, true, true, 2147483647i <= arg_1.b), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, arg_1.a.a, false, false), vec4<bool>(arg_1.a.a, arg_0, true, arg_1.a.a), true), select(vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, false, true, arg_1.a.a), vec4<bool>(true, arg_0, arg_1.a.a, false))), true), vec4<bool>(true, !arg_1.a.a, arg_0, false), vec4<bool>(_wgslsmith_div_f32(arg_2.a, 1534f) >= arg_2.a, all(select(vec4<bool>(false, false, arg_0, true), vec4<bool>(arg_0, false, true, true), arg_1.a.a)), any(vec3<bool>(arg_0, false, true)) & (arg_2.d.x == global2.a), true)), Struct_1(!arg_0, u_input.a, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    let var_1 = -abs(abs(firstLeadingBit(select(vec4<i32>(-4465i, 64810i, -2147483647i, u_input.b), vec4<i32>(-2147483647i, -1i, u_input.b, u_input.b), false))));
    let var_2 = func_6(!(reverseBits(0i) != _wgslsmith_div_i32(select(var_1.x, 29676i, true), u_input.b)), func_5(vec3<i32>(_wgslsmith_sub_i32(u_input.b, var_1.x & var_1.x), 6709i, ~var_1.x), select(true, false, func_1(-113f, global1[_wgslsmith_index_u32(26895u, 20u)]))), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(10173u, 64905u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-232f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-965f, var_0, -180f))))))), vec2<u32>(0u, 0u)));
    global0 = array<vec2<i32>, 19>();
    var var_3 = min(_wgslsmith_mod_u32((_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) << (var_2.c.c % 32u)) | (~global1[_wgslsmith_index_u32(var_2.c.c, 20u)] >> (~var_2.a.c % 32u)), ~u_input.a.x), 1u);
    var var_4 = (~vec3<u32>(43822u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], var_2.c.c), vec3<u32>(68013u, global1[_wgslsmith_index_u32(47729u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)])), min(13245u, 4294967295u)) | ~(~vec3<u32>(var_2.a.c, var_2.a.b.x, u_input.a.x))) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(49524u, _wgslsmith_sub_u32(var_2.a.b.x, u_input.a.x), ~u_input.a.x), ~vec3<u32>(global1[_wgslsmith_index_u32(1u, 20u)], u_input.a.x, global1[_wgslsmith_index_u32(var_2.c.b.x, 20u)])) % vec3<u32>(32u));
    global0 = array<vec2<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(countOneBits(18703u), 38293u), 1u), 20u)] & ~(~var_4.x), 29u)]);
}

