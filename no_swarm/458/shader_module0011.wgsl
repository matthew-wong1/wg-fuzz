struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1218f, -1000f, -163f);

var<private> global1: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true));

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(1000f), Struct_2(463f), Struct_2(-1000f), Struct_2(662f), Struct_2(-645f), Struct_2(-576f), Struct_2(1087f), Struct_2(-609f), Struct_2(-785f), Struct_2(649f), Struct_2(-511f), Struct_2(-427f), Struct_2(530f), Struct_2(-2407f), Struct_2(-477f), Struct_2(-483f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(firstLeadingBit(4294967295u), countOneBits(4294967295u)), max(_wgslsmith_div_u32(1u, 37555u), 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, ~102775u, 64510u, 1u)), 4294967295u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 79848u, 1u), vec4<u32>(17811u, 1u, 0u, 1u)), 1u)), vec4<u32>(27139u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 10891u, 20505u) ^ select(vec3<u32>(1u, 1u, 24040u), vec3<u32>(0u, 0u, 0u), vec3<bool>(false, false, arg_1)), vec3<u32>(1u, 0u, 1u)), _wgslsmith_mult_u32(~select(11955u, 1u, false), 0u), select(~0u, _wgslsmith_mod_u32(22189u, 26052u), !arg_1) | 0u));
    global1 = array<vec4<bool>, 3>();
    let var_1 = global2[_wgslsmith_index_u32(0u, 16u)];
    var var_2 = !(!vec3<bool>(arg_1, arg_1, true));
    var_2 = vec3<bool>(arg_1, true, true);
    return false;
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global2 = array<Struct_2, 16>();
    var var_0 = select(select(vec3<bool>(true, any(vec3<bool>(true, true, true)), false), vec3<bool>(~arg_0.x < arg_0.x, true, func_3(Struct_2(global0.x), all(vec4<bool>(true, true, false, true)))), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false)), select(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(true, true)), true, true)), true);
    return arg_0.x;
}

fn func_1() -> Struct_4 {
    let var_0 = func_2(~vec2<u32>(54162u, _wgslsmith_mult_u32(1u, 97916u))) <= 1u;
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_sub_vec3_i32(countOneBits((_wgslsmith_mult_vec3_i32(vec3<i32>(5914i, 1i, u_input.b.x), u_input.a) << (~vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), u_input.a);
    let var_3 = Struct_4(-723f, Struct_1(856f));
    global1 = array<vec4<bool>, 3>();
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 3>();
    global2 = array<Struct_2, 16>();
    let var_0 = func_1();
    var var_1 = 38222u;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -865f) + -366f)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(abs(max(1u, 31443u))), -vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, -11583i, 2147483647i), vec4<i32>(1i, -49779i, 17457i, u_input.b.x)), u_input.a.x & u_input.b.x), select(i32(-1i) * -12596i, 1i, false), ~u_input.a.x, _wgslsmith_sub_i32(abs(u_input.a.x), i32(-1i) * -1i)), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), var_0.b.a, _wgslsmith_f_op_f32(f32(-1f) * -591f), 898f), 0i);
}

