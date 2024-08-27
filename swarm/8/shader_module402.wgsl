struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    global0 = array<vec3<bool>, 4>();
    var var_0 = u_input.b;
    global0 = array<vec3<bool>, 4>();
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-765f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
    var_0 = ~(_wgslsmith_add_vec4_i32(vec4<i32>(~0i, u_input.b.x, ~var_0.x, 1i), ~u_input.b) ^ u_input.b);
    return ~72948u;
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<bool>, 4>();
    var var_0 = Struct_1(vec3<i32>(-9672i, -1i, max(min(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), -u_input.b.x), ~(~u_input.b.x))), ~0u, true != (u_input.b.x < -18637i), u_input.b.zz);
    let var_1 = vec4<u32>(abs(_wgslsmith_add_u32(_wgslsmith_mult_u32(22450u, var_0.b), _wgslsmith_mod_u32(1u, min(99161u, u_input.a.x)))), ~abs(~(~var_0.b)), _wgslsmith_mult_u32(0u, func_3()), ~u_input.a.x);
    var_0 = Struct_1(u_input.b.zzx, ~_wgslsmith_sub_u32(~var_0.b, u_input.c.x), var_0.c, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.zx, _wgslsmith_div_vec2_i32(vec2<i32>(-3643i, u_input.b.x), vec2<i32>(u_input.b.x, 7109i) & vec2<i32>(-2147483647i, u_input.b.x))), var_0.d));
    var var_2 = firstLeadingBit(abs(u_input.b.x));
    return Struct_1(u_input.b.xxy, ~(~(~u_input.a.x ^ 0u)), !(!any(vec2<bool>(var_0.c, false))) & !(var_0.c || (true | var_0.c)), ~(-abs(abs(u_input.b.yz))));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(u_input.b.xxx, 0u, false, u_input.b.yx);
    var var_1 = true;
    var_0 = func_2();
    let var_2 = var_0.b;
    var_0 = func_2();
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(var_0.b), u_input.a.x, ~u_input.a.x, var_0.b), abs(select(u_input.c, vec4<u32>(u_input.c.x, 33136u, 0u, u_input.c.x), var_0.c))) | 20602u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    var var_1 = vec4<u32>(func_1(), 12942u, 1u, func_3());
    var var_2 = Struct_1(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x >> (var_1.x % 32u), abs(u_input.b.x), func_2().d.x), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(18779i, 6781i, 19942i)), _wgslsmith_clamp_vec3_i32(u_input.b.xyz, u_input.b.xyx, u_input.b.xwz))), var_1.x << (((func_1() << (~0u % 32u)) >> (1u % 32u)) % 32u), all(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)) != select(true, true, all(vec3<bool>(true, true, true))), func_2().a.zy);
    var var_3 = vec2<i32>(-1i, var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.wxx);
}

