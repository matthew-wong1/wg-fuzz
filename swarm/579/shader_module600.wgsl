struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<i32>(2147483647i, 1i, 1i), 1000f), Struct_2(vec3<i32>(i32(-2147483648), -35371i, i32(-2147483648)), 1094f), Struct_2(vec3<i32>(-1161i, 1i, i32(-2147483648)), 1192f), Struct_2(vec3<i32>(6471i, -16526i, -79725i), -885f), Struct_2(vec3<i32>(0i, -16679i, 12846i), 210f), Struct_2(vec3<i32>(0i, -25473i, i32(-2147483648)), 1000f), Struct_2(vec3<i32>(-6998i, 0i, 0i), -667f), Struct_2(vec3<i32>(-11274i, 2147483647i, 10101i), -1779f), Struct_2(vec3<i32>(2147483647i, -1i, -434i), -511f), Struct_2(vec3<i32>(12703i, 2147483647i, -10661i), -1584f), Struct_2(vec3<i32>(-13827i, -8831i, -22337i), -956f), Struct_2(vec3<i32>(0i, i32(-2147483648), 1i), -604f), Struct_2(vec3<i32>(8592i, 1i, 2147483647i), 661f), Struct_2(vec3<i32>(-34618i, 8235i, 0i), -1820f), Struct_2(vec3<i32>(5444i, -24059i, -59373i), 1388f), Struct_2(vec3<i32>(45470i, 48028i, 2147483647i), -605f), Struct_2(vec3<i32>(-12743i, 51734i, 15627i), -861f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec2<bool> {
    global0 = array<f32, 29>();
    global1 = array<Struct_2, 17>();
    global0 = array<f32, 29>();
    var var_0 = !vec2<bool>(any(vec3<bool>(true, false, true)) & true, false);
    let var_1 = vec4<u32>(1u, ~(~u_input.a), _wgslsmith_dot_vec4_u32(~arg_0, vec4<u32>(4294967295u, 1u, 54202u, _wgslsmith_mod_u32(19353u, 4294967295u)) & abs(abs(vec4<u32>(52214u, 1u, arg_0.x, 1u)))), u_input.a);
    return !vec2<bool>(all(!select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true))), true);
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-752f, global0[_wgslsmith_index_u32(u_input.a, 29u)]))), vec2<f32>(global0[_wgslsmith_index_u32(firstTrailingBit(5604u), 29u)], -1028f), select(vec2<bool>(false, false), func_3(vec4<u32>(u_input.a, 52010u, u_input.a, u_input.a)), vec2<bool>(true, true))))));
    global0 = array<f32, 29>();
    global1 = array<Struct_2, 17>();
    global0 = array<f32, 29>();
    return Struct_1(vec3<i32>(-26275i, u_input.b, _wgslsmith_mult_i32(~(-39493i), _wgslsmith_dot_vec2_i32(vec2<i32>(-57900i, u_input.b), vec2<i32>(-4442i, u_input.b)))) << (~select(~vec3<u32>(u_input.a, 59992u, u_input.a), firstTrailingBit(vec3<u32>(1u, u_input.a, 12438u)), true) % vec3<u32>(32u)), -1708f > var_0.x, any(select(func_3(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) & vec4<u32>(u_input.a, 43897u, 1u, 9161u)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), false), select(func_3(vec4<u32>(u_input.a, 1u, u_input.a, 11397u)).x, all(vec4<bool>(false, true, false, true)), true))), ~(~(~35692u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> bool {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = arg_1;
    global1 = array<Struct_2, 17>();
    global0 = array<f32, 29>();
    return func_3(~(vec4<u32>(var_0.d, ~var_0.d, 17057u, u_input.a) ^ max(~vec4<u32>(4294967295u, var_0.d, 4294967295u, 20737u), vec4<u32>(u_input.a, 22522u, var_0.d, u_input.a)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), vec2<bool>(true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)))), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), true)), 442f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(min(~vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, 0u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(~vec2<u32>(61969u, u_input.a), vec2<u32>(u_input.a, 7862u))) | (vec2<u32>(~u_input.a, u_input.a) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 20369u), countOneBits(vec2<u32>(108471u, u_input.a))) % vec2<u32>(32u))), vec3<i32>(u_input.b, _wgslsmith_sub_i32(u_input.b, u_input.b), func_2().a.x), u_input.b, ~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 78877u)) >> (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 47741u, u_input.a, 1u), vec4<u32>(874u, u_input.a, u_input.a, 46091u))) % vec4<u32>(32u)));
}

