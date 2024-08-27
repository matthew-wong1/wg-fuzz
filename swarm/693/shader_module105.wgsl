struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(556f - 148f) * _wgslsmith_f_op_f32(abs(-772f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1162f), -513f, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-228f, -379f), vec2<f32>(616f, -1726f))) * vec2<f32>(239f, -1000f))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1160f)), var_0.x))), 951f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))))));
    let var_2 = Struct_1(true);
    let var_3 = 12623i;
    var var_4 = true;
    return 1u;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1141f + -1368f))), -1000f, !arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(1000f - -1943f)))) + -1544f));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<f32>(-1546f, _wgslsmith_f_op_f32(func_4(~vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, 14993u, u_input.c.x, 0u)), func_3(u_input.e.x)), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(2147483647i, u_input.a, -18817i) << (vec3<u32>(51784u, u_input.e.x, u_input.e.x) % vec3<u32>(32u))) << (u_input.e.x % 32u), Struct_3(any(vec2<bool>(true, true)), Struct_2(Struct_1(false), ~u_input.d, Struct_1(false), all(vec4<bool>(false, false, true, false)), true), !(u_input.b.x > u_input.b.x), u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2138f - 257f)), 330f)));
    var var_1 = countOneBits(u_input.e);
    global1 = array<Struct_3, 15>();
    global0 = -65891i;
    let var_2 = false;
    return Struct_2(Struct_1(var_2), u_input.d ^ (vec3<i32>(select(-31637i, u_input.b.x, false), countOneBits(0i), 2147483647i) << (~select(u_input.c.wyz, vec3<u32>(25998u, u_input.c.x, 68046u), vec3<bool>(false, var_2, var_2)) % vec3<u32>(32u))), Struct_1(var_2), any(!(!vec4<bool>(var_2, var_2, var_2, var_2))), var_2);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: i32, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = arg_3;
    let var_1 = func_2();
    let var_2 = arg_0.yy;
    var var_3 = u_input.c;
    let var_4 = (-(~(arg_2 & 1i)) ^ var_1.b.x) != (57924i ^ _wgslsmith_mod_i32(min(max(1i, arg_3.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1.a.x), var_0.a.zz)), func_2().b.x));
    return select(vec2<bool>(all(select(select(vec4<bool>(true, var_1.a.a, var_1.a.a, var_4), vec4<bool>(false, true, true, false), vec4<bool>(true, true, var_2.x, var_1.a.a)), !vec4<bool>(true, true, var_1.e, false), var_1.b.x > -25755i)), false), vec2<bool>(true, !all(select(vec2<bool>(true, var_2.x), vec2<bool>(false, true), false))), select(arg_0.x, var_4, !all(select(vec4<bool>(false, arg_0.x, var_1.d, var_2.x), vec4<bool>(var_1.e, true, false, true), vec4<bool>(true, var_2.x, var_2.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x;
    var var_0 = _wgslsmith_f_op_f32(floor(-1821f));
    let var_1 = Struct_3(true, Struct_2(Struct_1(false), firstLeadingBit(u_input.d), Struct_1(any(func_1(vec3<bool>(true, false, false), Struct_4(u_input.d, 1i), 0i, Struct_4(u_input.d, u_input.a)))), true, true), true, 29329i);
    var var_2 = countOneBits(abs(u_input.e.x));
    let var_3 = 1u;
    var_2 = ~(func_3(~abs(u_input.e.x)) ^ abs(~(50775u << (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(-(vec4<i32>(1i, -14851i, -35371i, 11848i) >> (u_input.c % vec4<u32>(32u)))), vec4<i32>(1i, -var_1.d, var_1.d, _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec3_i32(var_1.b.b, u_input.d))), any(select(!vec2<bool>(true, var_1.b.d), func_1(vec3<bool>(false, var_1.c, true), Struct_4(u_input.d, u_input.d.x), u_input.a, Struct_4(var_1.b.b, var_1.d)), false))));
}

