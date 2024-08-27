struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    var var_0 = u_input.b;
    let var_1 = ~4294967295u;
    var_0 = u_input.b;
    var var_2 = vec3<u32>(max(_wgslsmith_dot_vec3_u32(arg_0, _wgslsmith_add_vec3_u32(vec3<u32>(35566u, var_1, 4157u) & arg_0, vec3<u32>(0u, 4294967295u, 4294967295u))), arg_0.x), ~(~(~min(var_1, arg_0.x))), var_1);
    var_0 = 2147483647i;
    return ~var_2.x;
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = u_input.a;
    return ~arg_0.b.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = 1u;
    let var_1 = u_input.d.wyw;
    let var_2 = any(!vec2<bool>(!(!arg_0), true));
    var var_3 = ~(~_wgslsmith_add_vec4_u32(select(arg_1.b, vec4<u32>(4294967295u, 63875u, arg_1.b.x, 102042u), var_2), firstLeadingBit(vec4<u32>(arg_1.b.x, 8148u, arg_1.b.x, 4294967295u))) & select(~vec4<u32>(1u, 50932u, arg_1.b.x, 1u), ~(~arg_1.b), vec4<bool>(true, arg_0, true, true)));
    var var_4 = arg_1;
    return ~(~(~func_2(vec3<u32>(22863u, var_4.b.x, 92154u)))) << (~func_3(Struct_1(-vec2<i32>(28688i, -29684i), var_4.b, _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_1.x), var_1.yz), -u_input.a)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -226f;
    global0 = _wgslsmith_clamp_u32(79513u, 1u, 6367u);
    global0 = 1u;
    global0 = ~_wgslsmith_dot_vec3_u32(select(countOneBits(firstLeadingBit(vec3<u32>(1u, 0u, 4294967295u))), vec3<u32>(1u, 1u, 1u), true), vec3<u32>(1u, 1u, 1u));
    global0 = abs(~reverseBits(~(0u >> (1u % 32u))));
    let var_1 = !(1i < u_input.c);
    global0 = ~_wgslsmith_add_u32(1830u, func_1(!var_1, Struct_1(max(vec2<i32>(-2147483647i, u_input.d.x), vec2<i32>(u_input.d.x, -23475i)), ~vec4<u32>(25276u, 33592u, 36868u, 73752u), u_input.d.zx, u_input.c >> (1u % 32u))));
    global0 = ~(_wgslsmith_div_u32(reverseBits(1u), min(4294967295u, func_1(var_1, Struct_1(vec2<i32>(u_input.b, -27759i), vec4<u32>(0u, 1634u, 59034u, 44600u), vec2<i32>(u_input.a, 2147483647i), u_input.b)))) & 95396u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~(~97939u)), func_1(false, Struct_1(vec2<i32>(u_input.d.x, u_input.b), countOneBits(vec4<u32>(4294967295u, 6622u, 33404u, 21178u)), select(u_input.d.yy, vec2<i32>(48869i, u_input.c), vec2<bool>(true, var_1)), _wgslsmith_dot_vec2_i32(u_input.d.zy, u_input.d.wz)))));
}

