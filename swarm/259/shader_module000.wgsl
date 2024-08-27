struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
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

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    global0 = max(u_input.d.xx, vec2<u32>(~28222u, ~(~_wgslsmith_div_u32(u_input.c.x, global0.x))));
    var var_0 = all(!select(vec2<bool>(!global1.a, true), !vec2<bool>(false, global1.a), any(vec2<bool>(false, false))));
    var_0 = true;
    var var_1 = abs(countOneBits(u_input.b));
    let var_2 = !(!(!select(select(vec2<bool>(true, global1.a), vec2<bool>(global1.a, false), vec2<bool>(false, global1.a)), vec2<bool>(global1.a, global1.a), select(vec2<bool>(global1.a, global1.a), vec2<bool>(false, global1.a), true))));
    return global1.a;
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~vec2<u32>(~u_input.c.x, ~global0.x)) | _wgslsmith_add_vec2_u32(u_input.d.yy, vec2<u32>((4294967295u >> (u_input.d.x % 32u)) ^ u_input.c.x, min(global0.x << (u_input.c.x % 32u), ~71081u)));
    global1 = Struct_1(false);
    let var_1 = Struct_1(((47355u ^ u_input.d.x) != u_input.c.x) || global1.a);
    var var_2 = var_1;
    var_2 = Struct_1(all(select(vec2<bool>(true, true), !vec2<bool>(true, global1.a), vec2<bool>(true, func_3()))));
    return Struct_1((29543i ^ u_input.b) >= u_input.a);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: f32) -> bool {
    global0 = ~max(_wgslsmith_mod_vec2_u32(u_input.c, u_input.d.zy), arg_1.zx);
    var var_0 = ~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, -1i), u_input.a) | select(u_input.a, -u_input.a, !arg_0.x), reverseBits(u_input.a), reverseBits(max(u_input.a, u_input.a)) ^ ~u_input.b, _wgslsmith_sub_i32(u_input.a, reverseBits(u_input.b)) << (1u % 32u));
    var var_1 = u_input.d.x;
    let var_2 = Struct_1(!all(arg_0));
    var var_3 = func_2();
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(select(vec3<bool>(true, true, true), vec3<bool>(true, func_1(vec2<bool>(true, global1.a), vec4<u32>(u_input.c.x, 0u, global0.x, 32699u), -1502f), true), vec3<bool>(false, any(vec4<bool>(false, global1.a, true, global1.a)), true)));
    global1 = Struct_1(!(-(u_input.b | u_input.b) > u_input.a));
    global0 = abs(vec2<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(97161u, global0.x), u_input.d.yz, vec2<u32>(u_input.d.x, 28633u)), _wgslsmith_add_vec2_u32(firstTrailingBit(u_input.d.xy), max(vec2<u32>(12314u, 50252u), vec2<u32>(global0.x, u_input.d.x)))), 11591u));
    let var_1 = Struct_1(global1.a);
    global1 = Struct_1(all(!(!select(vec4<bool>(true, var_1.a, global1.a, false), vec4<bool>(true, var_0, false, global1.a), true))));
    global0 = firstTrailingBit(firstLeadingBit(~select(abs(vec2<u32>(36435u, 0u)), vec2<u32>(32230u, u_input.d.x), !var_1.a)));
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -(~(vec2<i32>(-13617i, -16588i) ^ vec2<i32>(u_input.a, -2147483647i))));
}

