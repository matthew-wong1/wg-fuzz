struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global1 = global0[_wgslsmith_index_u32(~58165u, 31u)];
    let var_0 = ~firstLeadingBit(~(~vec2<u32>(64161u, 1u) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(global1.a.x, 1u), vec2<u32>(global1.a.x, 1u)) % vec2<u32>(32u))));
    global1 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1050f) * _wgslsmith_f_op_f32(f32(-1f) * -691f)))), _wgslsmith_f_op_f32(sign(-712f)))));
    global1 = arg_0;
    return vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-263f)), _wgslsmith_f_op_f32(f32(-1f) * -893f)))), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -375f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1389f * _wgslsmith_f_op_f32(f32(-1f) * -447f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-630f, -557f)))))), _wgslsmith_div_f32(1261f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1260f + 1041f)))));
}

fn func_2() -> u32 {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~53590u), ~(~91146u)), 31u)];
    global1 = Struct_1(u_input.d);
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-242f, 1175f, 906f, 1870f), vec4<f32>(1000f, 574f, -497f, 781f), true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(106f, 206f, 893f, -1105f) + vec4<f32>(1955f, -131f, -326f, -808f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<u32>(global1.a.x, 55330u, 1u))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1212f, 1000f, 304f, -1621f), vec4<f32>(-1196f, 281f, 1761f, 340f)))))));
    var var_1 = global0[_wgslsmith_index_u32(abs(firstTrailingBit(global1.a.x)), 31u)];
    var var_2 = 26958i;
    return _wgslsmith_sub_u32(~global1.a.x, firstLeadingBit(1u));
}

fn func_1() -> Struct_1 {
    var var_0 = min(vec3<u32>(~func_2(), 73379u, 4294967295u), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 0u, 0u, 1u), vec4<u32>(global1.a.x, 15726u, 416u, u_input.a.x)), u_input.c, ~global1.a.x) | u_input.d);
    let var_1 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, -40439i, 1i), vec3<i32>(reverseBits(-1i >> (0u % 32u)), firstLeadingBit(56498i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2601i, 2147483647i), vec2<i32>(1i, 2147483647i)) << (0u % 32u)));
    var_0 = ~_wgslsmith_add_vec3_u32(u_input.d, ~global1.a);
    let var_2 = vec4<i32>(2147483647i, _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32((var_1.xy << (vec2<u32>(var_0.x, u_input.b) % vec2<u32>(32u))) ^ select(var_1.yy, vec2<i32>(-2147483647i, var_1.x), false), vec2<i32>(var_1.x, var_1.x))), _wgslsmith_dot_vec3_i32(-var_1, var_1), -44780i);
    var var_3 = Struct_1(firstTrailingBit(abs(u_input.d)));
    return Struct_1(firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(global1.a, select(vec3<u32>(var_3.a.x, u_input.b, 0u), vec3<u32>(1u, var_0.x, 46941u), true)), firstTrailingBit(vec3<u32>(global1.a.x, var_0.x, 1u) << (var_3.a % vec3<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 31>();
    var var_0 = ~u_input.c;
    var var_1 = func_1();
    var var_2 = func_1();
    var var_3 = _wgslsmith_div_vec2_u32(var_1.a.xy, ~_wgslsmith_sub_vec2_u32(global1.a.xz, vec2<u32>(35438u, 0u)));
    var var_4 = _wgslsmith_mod_i32(-1i, -1i);
    var var_5 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(363f + 804f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(681f, 668f)), _wgslsmith_f_op_f32(abs(-639f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(408f, 421f)), _wgslsmith_f_op_f32(select(168f, 483f, false)))), _wgslsmith_f_op_f32(max(861f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(416f, -1185f)), _wgslsmith_f_op_f32(1000f - -1080f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-334f, 1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a.x, 1i, -1i, 49966u >> (global1.a.x % 32u), 490f);
}

