struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: array<vec4<u32>, 18>;

var<private> global2: array<vec3<f32>, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.d), 44948i, u_input.d), vec3<i32>(15379i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -23202i, -70580i, u_input.d), vec4<i32>(u_input.a, u_input.d, u_input.a, u_input.a)), 2664i), firstLeadingBit(vec2<i32>(u_input.a, u_input.d)))));
    var var_1 = _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-17596i, u_input.d, 1i), var_0 >> (u_input.b.x % 32u)), vec2<i32>(~var_0, var_0)), -vec2<i32>(_wgslsmith_mod_i32(~u_input.a, ~(-15587i)), 44895i));
    var_1 = ~_wgslsmith_add_i32(102294i, var_0);
    var var_2 = -var_0;
    let var_3 = -1115f;
    global0 = array<Struct_2, 20>();
    var var_4 = ~vec4<u32>(firstLeadingBit(~(~34993u)), ~0u, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(u_input.c.x, u_input.b.x)), ~(~max(u_input.b.x, u_input.e.x)));
    var_1 = _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, var_0, var_0), vec3<i32>(u_input.a, 21522i, var_0) >> (vec3<u32>(59792u, 32454u, u_input.c.x) % vec3<u32>(32u)), abs(vec3<i32>(u_input.a, 27952i, -2147483647i)))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, 3042i, var_0), vec3<i32>(var_0, var_0, 1390i)) & (vec3<i32>(u_input.d, -51735i, u_input.d) << (u_input.e.wxz % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-81001i, -2147483647i, u_input.a), vec3<i32>(22654i, -6168i, 1i)))));
    let var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(25748u, var_4.x);
}

