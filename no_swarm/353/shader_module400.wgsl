struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, 1u), Struct_1(false, 0u), Struct_1(true, 50988u), Struct_1(true, 2940u), Struct_1(true, 19417u), Struct_1(false, 13419u), Struct_1(true, 4294967295u), Struct_1(false, 4294967295u), Struct_1(false, 0u), Struct_1(true, 4294967295u), Struct_1(false, 41525u), Struct_1(true, 74222u), Struct_1(false, 4294967295u), Struct_1(true, 51305u), Struct_1(false, 0u), Struct_1(true, 47035u), Struct_1(false, 1u), Struct_1(false, 1u), Struct_1(true, 1u), Struct_1(false, 1u), Struct_1(true, 4294967295u), Struct_1(false, 4294967295u), Struct_1(true, 43453u), Struct_1(true, 88430u), Struct_1(true, 38837u), Struct_1(false, 1u), Struct_1(false, 4294967295u), Struct_1(true, 1u), Struct_1(false, 26258u), Struct_1(false, 24513u), Struct_1(true, 1u), Struct_1(true, 10278u));

var<private> global3: f32 = -796f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> i32 {
    return -1415i;
}

fn func_1(arg_0: bool) -> f32 {
    global2 = array<Struct_1, 32>();
    var var_0 = ~_wgslsmith_sub_i32(-u_input.d.x, ~u_input.d.x);
    var var_1 = _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(~(max(vec4<i32>(u_input.d.x, 0i, 1i, u_input.d.x), vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.d.x)) | firstTrailingBit(vec4<i32>(u_input.d.x, -20733i, 7918i, u_input.d.x))), -(~vec4<i32>(2147483647i, 0i, u_input.d.x, u_input.d.x))));
    let var_2 = ~func_2();
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-6054i, reverseBits(var_2), u_input.d.x), u_input.d ^ reverseBits(vec3<i32>(-2147483647i, var_2, abs(var_2))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(max(firstTrailingBit(~(21178i >> (1u % 32u))), u_input.d.x >> (max(u_input.a, ~u_input.b.x) % 32u)), -54677i);
    global0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a & 0u, u_input.c, u_input.c), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, select(vec4<u32>(u_input.c, 0u, 1u, u_input.b.x), u_input.b, false)), 0u, ~46887u)), 4294967295u);
    global1 = true;
    global2 = array<Struct_1, 32>();
    global2 = array<Struct_1, 32>();
    let var_1 = _wgslsmith_clamp_i32(-reverseBits(reverseBits(select(u_input.d.x, -33317i, false))), _wgslsmith_clamp_i32(2282i, u_input.d.x, 2147483647i), _wgslsmith_clamp_i32(reverseBits(i32(-1i) * -9976i), -13593i, u_input.d.x));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(620f + _wgslsmith_f_op_f32(func_1(false))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f + 627f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec2_u32(vec2<u32>(max(u_input.a, 41991u), 11106u), vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 18044u), 1u)), 4294967295u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1414f, -1834f, -1313f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1410f, 1000f, 361f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-163f, _wgslsmith_f_op_f32(func_1(true)), _wgslsmith_f_op_f32(round(836f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-658f, 350f, -378f), vec3<f32>(-1448f, 152f, 1387f))), any(vec2<bool>(true, true)))), vec3<u32>(u_input.e.x, _wgslsmith_clamp_u32(u_input.a, max(u_input.a, 1u) | _wgslsmith_div_u32(u_input.a, u_input.c), u_input.a), select(max(_wgslsmith_add_u32(51365u, 1u), 1u), ~min(1u, u_input.e.x), true)));
}

