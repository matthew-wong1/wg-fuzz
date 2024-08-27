struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global0 = array<i32, 30>();
    let var_0 = !select(vec3<bool>(true, false, true), vec3<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), true), global0[_wgslsmith_index_u32(57499u, 30u)] < -_wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]));
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>) -> f32 {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), ~vec2<u32>(16336u, 72019u))), 30u)], vec2<f32>(475f, -1038f));
    global0 = array<i32, 30>();
    let var_1 = -vec2<i32>(select(10437i, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.a, global0[_wgslsmith_index_u32(u_input.a, 30u)]), -var_0.a), all(!vec3<bool>(true, false, arg_1.x))), ~firstTrailingBit(countOneBits(-44563i)));
    return _wgslsmith_f_op_f32(func_3());
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b + arg_2.b)), true)) + arg_0.b)));
    global0 = array<i32, 30>();
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, firstTrailingBit(2147483647i)), _wgslsmith_div_vec2_i32(~vec2<i32>(arg_2.a, arg_2.a), -vec2<i32>(-1i, arg_0.a))), reverseBits(max(vec2<i32>(62348i, arg_2.a), vec2<i32>(-11912i, arg_2.a))) ^ (firstTrailingBit(vec2<i32>(arg_2.a, arg_0.a)) << (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-var_0.x)))), arg_1.x));
    let var_2 = 28447u;
    var_1 = Struct_1(var_1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(var_1.b, var_1.b)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.b))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(-1307f, 373f), -111f)))));
    return ~(~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2, 29788u, u_input.a, 1u), vec4<u32>(1u, 24022u, u_input.a, var_2)) ^ firstTrailingBit(vec4<u32>(2696u, u_input.a, 4294967295u, 0u)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = vec2<i32>(arg_0.a, arg_0.a);
    global0 = array<i32, 30>();
    var var_1 = func_4(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-164f + arg_0.b.x), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(arg_0.a, 41999i), vec3<bool>(false, true, false)))))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(0u, 30u)]), vec2<i32>(~1387i, -12516i)), _wgslsmith_f_op_vec2_f32(select(arg_0.b, vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x), _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)), any(vec2<bool>(arg_1, arg_1))))));
    let var_2 = arg_0;
    let var_3 = -(vec4<i32>(2147483647i, arg_0.a, min(-6121i, var_0.x), var_2.a) & _wgslsmith_mult_vec4_i32(abs(-vec4<i32>(global0[_wgslsmith_index_u32(0u, 30u)], 1i, arg_0.a, arg_0.a)), max(vec4<i32>(13379i, var_2.a, -2147483647i, var_0.x) >> (vec4<u32>(var_1.x, u_input.a, 1u, 31875u) % vec4<u32>(32u)), abs(vec4<i32>(4803i, var_2.a, var_2.a, arg_0.a)))));
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~1u, firstTrailingBit(32792u)), ~var_1.x ^ ~4294967295u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, var_1.x, 9001u), vec4<u32>(0u, var_1.x, var_1.x, var_1.x)), 34147u)), vec3<u32>(~(var_1.x ^ u_input.a), 8429u, var_1.x)), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 16738u)), ~_wgslsmith_add_u32(~u_input.a & 108492u, u_input.a));
    let var_1 = -1000f;
    var var_2 = Struct_1(-39909i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, -375f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 1000f) + vec2<f32>(var_1, 255f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(1u, ~(~u_input.a)), u_input.a), -vec2<i32>(func_1(Struct_1(-62833i, var_2.b), false), ~1i) ^ select(vec2<i32>(var_2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 30u)], -17424i), vec2<i32>(-41275i, 21808i))), min(vec2<i32>(-2147483647i, var_2.a) & vec2<i32>(2147483647i, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.a, 82435i), vec2<i32>(-2147483647i, 5179i))), vec2<bool>(any(vec3<bool>(false, false, false)), true)), (vec3<i32>(-1i) * -vec3<i32>(var_2.a, 0i, -2517i)) | ~(~vec3<i32>(global0[_wgslsmith_index_u32(27166u, 30u)], var_2.a, 99307i)), vec2<u32>(1u, u_input.a));
}

