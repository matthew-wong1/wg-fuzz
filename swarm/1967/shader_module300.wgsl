struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: array<Struct_2, 31>;

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-5225i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(-42899i, 0i), vec2<i32>(5944i, 2147483647i), vec2<i32>(i32(-2147483648), 32103i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), -16591i), vec2<i32>(1i, 18358i), vec2<i32>(21533i, 2147483647i), vec2<i32>(0i, -6299i), vec2<i32>(1i, 1i), vec2<i32>(3564i, 29171i), vec2<i32>(2147483647i, 79454i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), 1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -786f) + -533f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-447f, 1322f) + _wgslsmith_f_op_f32(-130f * 258f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1400f, true)))))));
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> u32 {
    global2 = array<vec2<i32>, 16>();
    global0 = array<Struct_2, 31>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) + _wgslsmith_f_op_f32(step(-826f, 844f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1394f)))))), 743f, 1268f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1175f - 1098f)), _wgslsmith_f_op_f32(-205f * _wgslsmith_f_op_f32(-1091f + -432f)), func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-150f * _wgslsmith_f_op_f32(min(-2448f, -1037f)))))));
    return _wgslsmith_div_u32(14098u, ~u_input.a.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec3<f32> {
    global1 = array<Struct_2, 31>();
    global2 = array<vec2<i32>, 16>();
    let var_0 = Struct_2(select(vec2<bool>(true, !select(true, false, false)), vec2<bool>(false, false), false));
    global1 = array<Struct_2, 31>();
    var var_1 = (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), ~(~vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x))) ^ vec4<u32>(max(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(u_input.a.x, u_input.b.x))), u_input.a.x & ~4294967295u, func_2(firstTrailingBit(vec2<i32>(-2147483647i, -1i)), var_0), u_input.b.x)) << (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a.x, select(u_input.a.x, 1u, true), u_input.a.x, u_input.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(12221u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 18624u))) ^ vec4<u32>(countOneBits(u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, 37118u, u_input.b.x), u_input.b.x, 0u)) % vec4<u32>(32u));
    return vec3<f32>(-540f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))), -696f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec3<f32>(-339f, 476f, 224f), vec3<i32>(-1i, -20578i, -16090i))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-571f, 851f, -1085f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-503f, 120f, -2519f)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2457f)) - 678f))), vec3<i32>(15548i, abs(~(-2147483647i)), 2147483647i), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.b.xy, vec2<u32>(34289u, 2556u))), vec2<u32>(231u, reverseBits(84626u))), vec2<u32>(4294967295u, _wgslsmith_mod_u32(1u, ~u_input.a.x))));
}

