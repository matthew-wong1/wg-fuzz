struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_2, 17>;

var<private> global2: i32 = -45935i;

var<private> global3: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(-202f, -562f, -1079f, 153f), vec4<f32>(1694f, -823f, -826f, 1172f), vec4<f32>(-1000f, 704f, 1267f, -183f), vec4<f32>(-1000f, 249f, 1000f, 224f));

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<bool>) -> vec4<i32> {
    var var_0 = vec4<u32>(25675u, arg_1.x, 56550u, 39147u) ^ abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.b, 1u, 18838u, 4294967295u), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1, arg_1), ~u_input.a, _wgslsmith_mod_u32(17449u, arg_0.b), ~u_input.a)));
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(min(arg_0.b, 13116u)), 56893u), vec2<u32>(arg_0.b, _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.x, arg_0.b), ~4621u)));
    let var_2 = Struct_2(global4[_wgslsmith_index_u32(arg_1.x, 31u)]);
    let var_3 = ~(~u_input.b.x);
    var var_4 = ~reverseBits(vec2<u32>(firstTrailingBit(30340u >> (var_1 % 32u)), 42608u));
    return vec4<i32>(_wgslsmith_mult_i32(abs(-11872i), -18957i), firstLeadingBit(2147483647i), _wgslsmith_div_i32(u_input.b.x, firstTrailingBit(var_3)), -(_wgslsmith_div_i32(2147483647i, u_input.b.x) | u_input.b.x)) | u_input.b;
}

fn func_2() -> bool {
    var var_0 = !(!vec2<bool>(u_input.a >= u_input.a, select(select(false, true, false), all(vec4<bool>(true, true, false, false)), true)));
    let var_1 = u_input.b.xxz;
    var var_2 = -func_3(global4[_wgslsmith_index_u32(u_input.a, 31u)], vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(92494u, 4227u)), max(u_input.a, 27454u) & 35987u), true, vec4<bool>(true, var_0.x, var_0.x, false));
    var var_3 = Struct_1(select(!vec2<bool>(any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), false), vec2<bool>(true, false), select(vec2<bool>(true, !var_0.x), vec2<bool>(var_0.x, var_0.x), select(any(vec3<bool>(true, false, var_0.x)), var_0.x, true))), u_input.a);
    var_2 = abs(u_input.b);
    return !all(select(vec3<bool>(all(vec3<bool>(var_3.a.x, true, var_0.x)), true, !var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, true, false), var_3.a.x), !vec3<bool>(true, false, var_0.x)), !select(vec3<bool>(var_0.x, var_3.a.x, true), vec3<bool>(true, var_3.a.x, var_3.a.x), var_3.a.x)));
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_mult_i32(-1i, -(~(~reverseBits(-83037i))));
    var var_1 = vec2<bool>(!any(vec4<bool>(false, true, true, false)), select(!(true && func_2()), true, !all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
    global1 = array<Struct_2, 17>();
    let var_2 = -u_input.b.xx;
    global0 = u_input.a;
    return _wgslsmith_div_i32(-(~1i), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 17>();
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.b.xw, u_input.b.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, u_input.a), ~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))), vec4<u32>(57983u, 1u, 71801u, 27205u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-999f, 521f))))), u_input.b, vec3<i32>(var_0, firstLeadingBit(28157i), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(959f, -182f) + vec2<f32>(1000f, -754f))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 14441u, 4294967295u), vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) & vec4<u32>(24507u, 66194u, u_input.a, 0u)) % 32u)));
}

