struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 3> = array<f32, 3>(398f, -538f, -852f);

var<private> global2: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: i32 = 1i;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    return _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.a, 0u), ~u_input.a), 1u) << (~u_input.a % 32u);
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(~12052u, ~u_input.a, 19922u), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(13485u, u_input.a, u_input.a), vec3<u32>(0u, 50509u, 1796u)))) & firstTrailingBit(~(~vec3<u32>(u_input.a, 20786u, 56381u))), vec2<i32>(-1i, -50123i | max(~u_input.b, min(u_input.b, 1i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(u_input.a), ~4294967295u), 3u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 3u)], 104f)))), true)));
    return ~(~_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(22891u, 37476u, 82u, 40401u), vec4<u32>(4294967295u, 2435u, 0u, var_0.a.x)), ~(~vec4<u32>(var_0.a.x, 10997u, var_0.a.x, var_0.a.x))));
}

fn func_2() -> i32 {
    global4 = ~(-2147483647i);
    global1 = array<f32, 3>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 3u)] * -213f) - 1779f))), max(func_3(), ~max(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), ~vec4<u32>(10864u, u_input.a, 32177u, u_input.a))), min(_wgslsmith_mult_u32(firstLeadingBit(min(11582u, 0u)), 45828u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(69665u, u_input.a, 56350u), vec3<u32>(u_input.a, 2045u, u_input.a)), vec3<u32>(303u, u_input.a, u_input.a)), func_3().x)));
    var var_1 = global3.x;
    var_1 = 11321u < var_0.c;
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(~(-20600i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), u_input.b)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global3.x;
    var_0 = global3.x;
    let var_1 = Struct_2(_wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(58436u, u_input.a, 53273u) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(15663u, 43347u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), vec3<u32>(u_input.a, u_input.a, 1u)), ~(-vec2<i32>(u_input.b, ~u_input.b)), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(52030u, func_1(~vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)))), 3u)]);
    global3 = select(vec3<bool>(any(!vec2<bool>(global3.x, true)), global3.x, !(!(!global3.x))), select(vec3<bool>(false, global3.x, _wgslsmith_f_op_f32(ceil(-761f)) > -178f), select(select(vec3<bool>(true, false, global3.x), select(vec3<bool>(global3.x, false, true), vec3<bool>(global3.x, false, global3.x), true), vec3<bool>(false, global3.x, true)), vec3<bool>(all(vec3<bool>(true, global3.x, false)), !global3.x, global3.x == true), select(select(vec3<bool>(global3.x, true, true), vec3<bool>(true, true, global3.x), vec3<bool>(false, global3.x, global3.x)), select(vec3<bool>(true, true, true), vec3<bool>(global3.x, true, global3.x), vec3<bool>(true, global3.x, false)), true)), global3.x), -var_1.b.x == (func_2() >> (0u % 32u)));
    var var_2 = var_1.b;
    global3 = vec3<bool>(global3.x, all(select(global2[_wgslsmith_index_u32(~var_1.a.x, 32u)], select(vec2<bool>(global3.x, true), global2[_wgslsmith_index_u32(u_input.a, 32u)], vec2<bool>(global3.x, global3.x)), false)) | any(global3.xx), false);
    var var_3 = _wgslsmith_add_u32(func_3().x, _wgslsmith_mod_u32(u_input.a, (u_input.a << ((4294967295u >> (0u % 32u)) % 32u)) ^ ~select(u_input.a, 40203u, true)));
    global4 = ~countOneBits(var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1256f, global1[_wgslsmith_index_u32(var_1.a.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], var_1.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-159f, global1[_wgslsmith_index_u32(13647u, 3u)], -1955f, 1280f)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1057f * _wgslsmith_f_op_f32(round(var_1.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(313f)))))), var_1.c, global1[_wgslsmith_index_u32(u_input.a, 3u)], global1[_wgslsmith_index_u32(38645u, 3u)]));
}

