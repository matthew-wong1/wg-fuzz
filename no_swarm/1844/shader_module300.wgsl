struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<bool>, arg_3: vec2<bool>) -> u32 {
    var var_0 = 11502i;
    var var_1 = _wgslsmith_clamp_vec4_u32(min(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 16917u, u_input.d, 1u), vec4<u32>(37612u, u_input.d, 0u, 68426u))), vec4<u32>(15574u, _wgslsmith_sub_u32(4294967295u, 719u), ~7995u, countOneBits(0u))), vec4<u32>(select(u_input.d, u_input.d, arg_3.x), 4294967295u, reverseBits(u_input.d), 18794u) | firstLeadingBit(select(vec4<u32>(u_input.d, 16104u, u_input.d, 44335u), vec4<u32>(u_input.d, u_input.d, 40766u, u_input.d), vec4<bool>(arg_2.x, arg_2.x, arg_1, arg_1)))), ~max(select(~vec4<u32>(u_input.d, 4294967295u, 4294967295u, 0u), ~vec4<u32>(0u, 32556u, u_input.d, u_input.d), arg_1 || false), ~(~vec4<u32>(1u, u_input.d, 10691u, 4294967295u))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(18222u, u_input.d), vec2<u32>(u_input.d, 4294967295u)), u_input.d >> (14537u % 32u), 50902u), countOneBits(min(vec4<u32>(u_input.d, 40196u, 84320u, u_input.d), vec4<u32>(u_input.d, 22263u, u_input.d, u_input.d)))) & ~max(~vec4<u32>(1u, 76019u, 0u, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(12894u, u_input.d, u_input.d, 48987u), vec4<u32>(u_input.d, u_input.d, u_input.d, 1u))));
    return abs(~(u_input.d << (~firstTrailingBit(u_input.d) % 32u)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<u32>(~u_input.d ^ abs(u_input.d), abs(~func_3(185f, true, vec4<bool>(false, false, true, false), vec2<bool>(false, false))) << (_wgslsmith_sub_u32(~0u, 1u) % 32u));
    var var_1 = ~abs(0u);
    var_1 = 81822u;
    let var_2 = 2147483647i;
    let var_3 = Struct_1(vec3<u32>(48727u, u_input.d, var_0.x), -2147483647i);
    return Struct_1(var_3.a << (min(var_3.a, var_3.a) % vec3<u32>(32u)), 1i);
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = -1i;
    global0 = array<vec3<bool>, 14>();
    let var_1 = func_2();
    var var_2 = u_input.e.zww & vec3<i32>(countOneBits(-2147483647i | var_1.b), var_0, 21358i);
    global0 = array<vec3<bool>, 14>();
    return !any(select(!select(vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(false, true, arg_0, false)), !select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, true, true, false), true), !vec4<bool>(arg_0, true, arg_0, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<bool>(true, func_1((78964u == u_input.d) | true), true), func_2().b);
    var var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(~_wgslsmith_add_u32(u_input.d, u_input.d), ~(1u | u_input.d)), reverseBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.d, 5286u), ~vec2<u32>(22002u, 1u)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.d) & vec2<u32>(u_input.d, u_input.d), max(vec2<u32>(u_input.d, 22918u), vec2<u32>(u_input.d, u_input.d))) % vec2<u32>(32u))));
    global0 = array<vec3<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-u_input.a));
}

