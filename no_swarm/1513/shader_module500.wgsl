struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_4) -> bool {
    let var_0 = 182f;
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    let var_1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(~(~59821u & arg_3.c.x), 1u)), 21u)];
    global0 = array<i32, 21>();
    return -select(~arg_0.a, 2147483647i, all(vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x))) <= ~(-14427i);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> i32 {
    return 1i;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(true, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, u_input.c.x, 2147483647i)), vec3<i32>(0i, 1i, global0[_wgslsmith_index_u32(u_input.a, 21u)])), -1i, _wgslsmith_mod_i32(1i, 33909i ^ u_input.c.x)), ~vec4<i32>(~(-2147483647i), global0[_wgslsmith_index_u32(1u, 21u)] >> (23845u % 32u), -u_input.c.x, countOneBits(58929i))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 72306u)), vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(29979u, u_input.a), vec2<u32>(u_input.a, u_input.a)))));
    return Struct_4(true, select(_wgslsmith_mod_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 25302i, -19239i, -56018i), var_0.b), _wgslsmith_clamp_vec4_i32(var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.a, true, true, var_0.a)), var_0.b), reverseBits(vec4<i32>(-1i, func_3(Struct_2(Struct_1(-49840i, vec3<bool>(var_0.a, var_0.a, false), vec4<i32>(var_0.b.x, -2147483647i, var_0.b.x, 0i), -67110i, vec2<f32>(-804f, 946f)), Struct_1(0i, vec3<bool>(var_0.a, false, false), var_0.b, -46740i, vec2<f32>(1241f, -1159f))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(51360u, 21u)], vec3<bool>(false, false, var_0.a), var_0.b, 19967i, vec2<f32>(-1383f, -1450f)), Struct_1(u_input.b.x, vec3<bool>(var_0.a, var_0.a, var_0.a), vec4<i32>(5542i, global0[_wgslsmith_index_u32(var_0.c.x, 21u)], u_input.c.x, u_input.d), var_0.b.x, vec2<f32>(493f, -1000f))), Struct_3(vec2<bool>(true, var_0.a)), Struct_4(var_0.a, var_0.b, vec2<u32>(27942u, var_0.c.x))), ~(-1i), 1i)), !select(select(vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(false, var_0.a, true, var_0.a), var_0.a), select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(true, false, var_0.a, var_0.a), true), !vec4<bool>(false, var_0.a, true, var_0.a))), _wgslsmith_mult_vec2_u32(var_0.c, countOneBits(vec2<u32>(u_input.a, 1u)) | (var_0.c >> (vec2<u32>(59759u, var_0.c.x) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(~select(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), vec4<u32>(17805u, 37515u, u_input.a, u_input.a), false)) & select(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(16473u, 0u, 0u, 53351u)), abs(vec4<u32>(60290u, 1u, u_input.a, 27002u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 1u, 34756u, u_input.a)) | firstTrailingBit(select(vec4<u32>(4294967295u, u_input.a, u_input.a, 12097u), vec4<u32>(u_input.a, u_input.a, 26930u, u_input.a), false)), ~vec4<u32>(firstTrailingBit(u_input.a), u_input.a, u_input.a, _wgslsmith_mod_u32(8211u, 1u)), !vec4<bool>(true, func_1(Struct_1(-1i, vec3<bool>(true, true, false), vec4<i32>(-10786i, global0[_wgslsmith_index_u32(u_input.a, 21u)], 5522i, global0[_wgslsmith_index_u32(u_input.a, 21u)]), 15605i, vec2<f32>(-1402f, 695f)), Struct_2(Struct_1(u_input.c.x, vec3<bool>(true, false, true), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 26884i, 28551i, u_input.c.x), -36986i, vec2<f32>(1000f, 661f)), Struct_1(-52117i, vec3<bool>(true, true, false), vec4<i32>(u_input.d, u_input.c.x, global0[_wgslsmith_index_u32(39197u, 21u)], -17837i), -22526i, vec2<f32>(1449f, -1040f))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 21u)], vec3<bool>(false, false, false), vec4<i32>(-34183i, global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(36817u, 21u)], u_input.b.x), 0i, vec2<f32>(-632f, 1367f)), Struct_1(-13101i, vec3<bool>(false, true, true), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], -28575i, u_input.b.x, -1i), -30727i, vec2<f32>(945f, 917f))), Struct_4(true, vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(1u, 21u)], -4132i, u_input.c.x), vec2<u32>(1u, 4294967295u))), true, true));
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    let var_1 = func_2();
    global0 = array<i32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_1.b ^ ~(var_1.b & var_1.b)), ~vec3<u32>(~0u, var_1.c.x, 94629u), var_0.yy);
}

