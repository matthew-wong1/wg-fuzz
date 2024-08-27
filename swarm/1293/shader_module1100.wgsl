struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true)));

var<private> global1: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> bool {
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_0 = 4294967295u;
    let var_1 = reverseBits(vec4<u32>(0u, global1.a, ((0u ^ global1.a) & u_input.c.x) << (global1.a % 32u), 1u));
    global1 = Struct_2(~84353u);
    return true;
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> bool {
    let var_0 = vec3<u32>(select(_wgslsmith_mod_u32(~arg_0, global1.a), 1u, true), 0u, ~firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0, 29553u), arg_2 ^ 4294967295u)));
    let var_1 = vec3<i32>(arg_1.x, 57835i, arg_1.x);
    global1 = Struct_2(9016u);
    global1 = Struct_2(~firstTrailingBit(max(firstTrailingBit(71593u), arg_2)));
    var var_2 = _wgslsmith_mod_vec4_i32(-(-(~vec4<i32>(31283i, 0i, 0i, arg_1.x)) ^ min(-vec4<i32>(23004i, -2147483647i, var_1.x, -35605i), ~vec4<i32>(-1i, var_1.x, -41255i, u_input.a.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -6501i, arg_1.x, var_1.x, -1i), vec4<i32>(~(u_input.a.x ^ arg_1.x), -1i, 1i | reverseBits(arg_1.x), 1i)));
    return true == any(vec3<bool>(true, true, true));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec2<u32> {
    let var_0 = select(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>((all(vec4<bool>(false, false, false, false)) | func_2()) == func_3(~u_input.c.x, vec3<i32>(u_input.b, u_input.b, u_input.a.x), 112692u), func_2()), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, false))));
    let var_1 = ~(vec4<u32>(u_input.c.x, 4294967295u, min(~50078u, global1.a >> (0u % 32u)), arg_0.a) | (select(vec4<u32>(0u, 36257u, 4294967295u, 130440u), vec4<u32>(4294967295u, arg_1, global1.a, 132796u), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x))) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 55045u, 2656u, 4294967295u), vec4<u32>(31828u, 14591u, 3412u, 51554u)) % vec4<u32>(32u))));
    var var_2 = max(_wgslsmith_mult_vec4_u32(vec4<u32>(36996u, 42390u, 18624u, abs(u_input.c.x) << (~1u % 32u)), ~vec4<u32>(1u, 4294967295u, firstLeadingBit(arg_1), 4294967295u)), vec4<u32>(~1u, u_input.c.x, min(32608u, 38135u), 31292u));
    global1 = arg_0;
    global1 = Struct_2(~(_wgslsmith_dot_vec3_u32(~var_1.yyz, vec3<u32>(global1.a, 44336u, 77630u) << (var_1.wyx % vec3<u32>(32u))) ^ min(countOneBits(0u), 4294967295u)));
    return select(reverseBits(reverseBits(_wgslsmith_mod_vec2_u32(var_1.wx, vec2<u32>(4294967295u, arg_0.a) ^ vec2<u32>(1u, 4294967295u)))), u_input.c, any(vec4<bool>(any(vec3<bool>(false, var_0.x, false)), false, all(var_0), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(reverseBits(u_input.c.x));
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    var var_0 = Struct_2(global1.a);
    let var_1 = ~u_input.b;
    var var_2 = func_1(Struct_2(u_input.c.x), ~global1.a << (global1.a % 32u));
    var var_3 = Struct_2(154500u);
    var var_4 = max(~abs(vec4<u32>(var_2.x, 1u, u_input.c.x, var_0.a) >> (vec4<u32>(10765u, 4762u, 52701u, 1u) % vec4<u32>(32u))), vec4<u32>(var_3.a | func_1(Struct_2(var_2.x), abs(32915u)).x, var_3.a, firstLeadingBit(~78591u), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_4.yzz, var_4.xyy, true), abs(vec3<i32>(-u_input.a.x, 14872i, abs(-1i)) >> (~(~vec3<u32>(var_2.x, 44086u, 318u)) % vec3<u32>(32u))), _wgslsmith_clamp_u32(~(firstLeadingBit(var_3.a) | reverseBits(65004u)), ~(~4294967295u), var_0.a), u_input.a.x);
}

