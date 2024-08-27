struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<i32, 12> = array<i32, 12>(-57120i, -3103i, -12140i, -62419i, -16379i, 9053i, 2147483647i, 46683i, 2147483647i, 17073i, 11335i, -63984i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<i32>) -> u32 {
    let var_0 = arg_1.a;
    let var_1 = Struct_3(arg_0.x, Struct_2(Struct_1(-(var_0.a << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))))), -arg_3.x, 4294967295u, arg_1);
    global0 = array<i32, 12>();
    let var_2 = var_1.e;
    let var_3 = Struct_2(Struct_1(select(countOneBits(vec2<i32>(0i, -1i)), max(arg_3.wy, var_2.a.a), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 88070u), 12u)] >= -2147483647i)));
    return var_1.d;
}

fn func_1() -> bool {
    let var_0 = vec3<u32>(max(abs(~(~u_input.b)), min(4294967295u, u_input.b) >> (_wgslsmith_mod_u32(max(4294967295u, 24971u), func_2(vec4<bool>(false, true, false, false), Struct_2(Struct_1(vec2<i32>(-22713i, 1i))), 1657f, vec4<i32>(global0[_wgslsmith_index_u32(27367u, 12u)], 59521i, global0[_wgslsmith_index_u32(u_input.b, 12u)], 48126i))) % 32u)), 4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, ~40769u), 52029u));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    let var_1 = 594f;
    global0 = array<i32, 12>();
    return any(select(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), vec3<bool>(false, (i32(-1i) * -16624i) == _wgslsmith_dot_vec2_i32(vec2<i32>(188i, global0[_wgslsmith_index_u32(1u, 12u)]), vec2<i32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)])), true), !(var_1 > -1000f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec3<u32> {
    global0 = array<i32, 12>();
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec4_i32(arg_1, vec4<i32>(arg_1.x | arg_1.x, global0[_wgslsmith_index_u32(u_input.b, 12u)], -arg_1.x, arg_1.x))) ^ select(((arg_1 << (vec4<u32>(1u, 0u, 1u, u_input.a) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-6149i, arg_1.x, global0[_wgslsmith_index_u32(u_input.b, 12u)], 1923i), vec4<i32>(-13740i, arg_1.x, arg_1.x, global0[_wgslsmith_index_u32(31353u, 12u)]), vec4<i32>(70904i, global0[_wgslsmith_index_u32(u_input.a, 12u)], arg_1.x, 1i))) ^ -vec4<i32>(0i, arg_1.x, -1i, 2147483647i), vec4<i32>(~reverseBits(arg_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, arg_1.x, arg_1.x), reverseBits(vec4<i32>(28701i, -51784i, arg_1.x, 22590i))), -1i, 2147483647i), select(vec4<bool>(true, arg_0, arg_0, true), !vec4<bool>(false, false, arg_0, arg_0), _wgslsmith_clamp_i32(-17797i, arg_1.x, 0i) <= select(global0[_wgslsmith_index_u32(1u, 12u)], arg_1.x, arg_0)));
    global0 = array<i32, 12>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]), _wgslsmith_add_vec2_i32(arg_1.xy, var_0.xx), vec2<bool>(true, arg_0)), ~abs(vec2<i32>(arg_1.x, global0[_wgslsmith_index_u32(u_input.b, 12u)])))));
    let var_2 = ~(vec2<i32>(i32(-1i) * -2147483647i, -25913i) & (-(~arg_1.yz) & _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, var_0.x), arg_1.wx, arg_1.ww), abs(var_1.a.a))));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b | u_input.b, func_2(vec4<bool>(false, arg_0, arg_0, arg_0), Struct_2(Struct_1(arg_1.zz)), 616f, vec4<i32>(24899i, 4127i, -15081i, 90213i))), vec2<u32>(u_input.b, u_input.b)), ~0u & _wgslsmith_div_u32(~70614u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(61413u, u_input.b, u_input.b))), u_input.a), ~((vec3<u32>(u_input.a, 4294967295u, u_input.b) ^ vec3<u32>(1891u, 27715u, 43154u)) << (vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u))) & ~reverseBits(~vec3<u32>(u_input.a, 0u, 50460u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    var var_0 = u_input.b & u_input.b;
    var_0 = ~u_input.b;
    let var_1 = -1i;
    let var_2 = min(~_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, 0u, 4294967295u)), vec3<u32>(firstLeadingBit(7516u), ~u_input.b, u_input.a)), _wgslsmith_mod_vec3_u32(func_3(func_1(), ~vec4<i32>(43334i, global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(15874u, 12u)], -25951i)) ^ vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.a, 1u | (u_input.a << (4294967295u % 32u)), _wgslsmith_div_u32(~18333u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 25105i, var_1), vec3<i32>(var_1, -1i, 1i)))));
}

