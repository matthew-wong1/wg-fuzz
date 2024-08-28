struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(1i), Struct_2(2147483647i), Struct_2(-2249i), Struct_2(-1i), Struct_2(0i), Struct_2(i32(-2147483648)), Struct_2(0i), Struct_2(436i), Struct_2(80307i), Struct_2(43536i), Struct_2(-1i), Struct_2(0i), Struct_2(0i), Struct_2(-6226i), Struct_2(46949i), Struct_2(3007i), Struct_2(0i), Struct_2(53177i), Struct_2(-1i), Struct_2(6586i), Struct_2(1i), Struct_2(-8259i), Struct_2(1i), Struct_2(-1i), Struct_2(1i), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(2794i), Struct_2(i32(-2147483648)), Struct_2(13087i), Struct_2(-1i), Struct_2(1i));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 32>();
    let var_0 = ~vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(71920i, -1i, u_input.a, 26369i), vec4<i32>(29998i, u_input.d, -22954i, u_input.e.x)) << (firstTrailingBit(u_input.b.x) % 32u), _wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.xy)), 1i, _wgslsmith_add_i32(~1i, ~(7801i | u_input.e.x)));
    let var_1 = Struct_1(-(u_input.e.yy | -abs(vec2<i32>(2147483647i, var_0.x))), u_input.b.x);
    var var_2 = abs(~(~1u));
    global0 = array<Struct_2, 32>();
    return abs(~1u);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_i32(u_input.e.zx, _wgslsmith_add_vec2_i32(u_input.c.yx, vec2<i32>(1i, _wgslsmith_clamp_i32(19288i, 2235i, u_input.e.x)))), u_input.b.x);
    global0 = array<Struct_2, 32>();
    var var_1 = 1i;
    var_1 = 2147483647i;
    global0 = array<Struct_2, 32>();
    return Struct_4(Struct_2(u_input.d), _wgslsmith_mult_u32(u_input.b.x, func_3()), _wgslsmith_div_u32(1u, var_0.b), vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(181f, -673f, true)))) < -442f, all(vec4<bool>(true, var_0.b > var_0.b, var_0.a.x > 1i, true)), true));
}

fn func_1(arg_0: vec4<bool>) -> bool {
    let var_0 = func_2();
    var var_1 = Struct_2(~(-28570i));
    let var_2 = var_0.b;
    var_1 = func_2().a;
    var var_3 = 32228u;
    return all(vec2<bool>(true, select(var_2 >= (var_2 << (u_input.b.x % 32u)), all(arg_0.zx), -1i >= var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.e.x) | u_input.c.zz, vec2<i32>(u_input.c.x, u_input.d) ^ vec2<i32>(u_input.e.x, u_input.c.x)), _wgslsmith_add_vec2_i32(u_input.c.yx >> (u_input.b.zy % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, -1i))), ~(~(u_input.c.x >> (21582u % 32u)))));
    global0 = array<Struct_2, 32>();
    let var_1 = min(vec3<i32>(var_0.x << (u_input.b.x % 32u), var_0.x, u_input.e.x), select(u_input.e, firstLeadingBit(reverseBits(max(vec3<i32>(var_0.x, var_0.x, -1i), var_0))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), func_1(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))))));
    var var_2 = u_input.b.wzw;
    var var_3 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_mod_i32(var_1.x, -abs(-33576i)) & 4550i);
}

