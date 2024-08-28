struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<i32, 12> = array<i32, 12>(0i, 14661i, 19386i, -47034i, -1i, -1i, i32(-2147483648), 30259i, -1i, 1940i, i32(-2147483648), 9539i);

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -840f), _wgslsmith_div_f32(-996f, _wgslsmith_f_op_f32(-arg_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, arg_2.d.x)), _wgslsmith_f_op_f32(max(106f, arg_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c, -1124f) + -1137f) * _wgslsmith_f_op_f32(sign(115f))), arg_2.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 857f, arg_2.d.x)))));
    var var_1 = arg_2;
    let var_2 = arg_2;
    let var_3 = Struct_1(_wgslsmith_div_u32(36191u, _wgslsmith_div_u32(1u & var_2.a, ~0u)) | (5974u >> (global0.x % 32u)), true, _wgslsmith_f_op_f32(abs(var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(floor(var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(1447f * arg_2.d.x))) - _wgslsmith_f_op_f32(max(156f, _wgslsmith_f_op_f32(floor(arg_2.d.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.d.x, 1184f)) * var_0.x), _wgslsmith_f_op_f32(floor(var_1.c)), all(select(vec3<bool>(var_1.e, var_2.b, true), vec3<bool>(false, arg_0.b, var_2.b), vec3<bool>(arg_0.e, arg_2.b, false)))))), 1u > (_wgslsmith_mod_u32(abs(arg_2.a), 1u) ^ 4294967295u));
    return ~_wgslsmith_mod_u32(_wgslsmith_div_u32(2058u, 44433u) | _wgslsmith_mult_u32(var_1.a, var_2.a), ~54112u) <= firstTrailingBit(75521u);
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(~(~firstTrailingBit(22196u >> (global0.x % 32u))), 39481u, ~_wgslsmith_sub_u32(select(global0.x << (4294967295u % 32u), 1u, arg_1), 1u));
    global1 = array<i32, 12>();
    global2 = array<Struct_1, 16>();
    var var_1 = Struct_1(min(2295u, ~(_wgslsmith_mult_u32(global0.x, global0.x) >> (abs(0u) % 32u))), all(vec2<bool>(func_3(global2[_wgslsmith_index_u32(arg_0, 16u)], u_input.b, Struct_1(global0.x, false, 342f, vec3<f32>(1543f, -778f, 353f), false)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(1091f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f) + -141f))), vec3<f32>(-309f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1666f - -1852f)), arg_1)), _wgslsmith_f_op_f32(1447f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(611f - -966f), _wgslsmith_f_op_f32(578f * 237f))))), all(vec4<bool>(1u >= _wgslsmith_sub_u32(1u, global0.x), !func_3(Struct_1(arg_0, false, 1300f, vec3<f32>(-324f, 1000f, 2248f), false), -24444i, Struct_1(24199u, arg_1, -886f, vec3<f32>(-1098f, 789f, 952f), arg_1)), arg_1, any(vec3<bool>(arg_1, true, true)))));
    global0 = ~(~vec3<u32>(max(4294967295u, _wgslsmith_sub_u32(0u, arg_0)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a, arg_0) & vec3<u32>(global0.x, 0u, 12075u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.a, 4294967295u), vec3<u32>(var_1.a, 25159u, arg_0))), 64201u));
    return global2[_wgslsmith_index_u32(4294967295u, 16u)];
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = ~(-20208i);
    var var_1 = func_2(58453u, (countOneBits(~1u) > global0.x) | arg_0.x);
    var var_2 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, countOneBits(63675u), _wgslsmith_mult_u32(global0.x, 11878u), 1u), ~(vec4<u32>(77869u, var_1.a, 56761u, var_1.a) << (vec4<u32>(var_1.a, 0u, 0u, var_1.a) % vec4<u32>(32u)))), 15354u, 1u, ~29957u);
    global0 = _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(0u, var_1.a, var_1.a, var_1.a)), vec4<u32>(min(76374u, var_2.x), _wgslsmith_dot_vec3_u32(var_2.zyy, vec3<u32>(var_2.x, var_2.x, 4210u)), countOneBits(1u), ~0u)), 4294967295u), firstTrailingBit(var_2.xww >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, global0.x, 0u), ~var_2.xwx) % vec3<u32>(32u))));
    let var_3 = Struct_1(~(~firstLeadingBit(_wgslsmith_div_u32(global0.x, 2892u))), !var_1.e, _wgslsmith_div_f32(var_1.d.x, var_1.d.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.d, _wgslsmith_f_op_vec3_f32(-var_1.d))))), var_1.b);
    return global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 1u)), 16u)];
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = countOneBits(~(abs(vec2<u32>(0u, arg_0.a)) & vec2<u32>(4294967295u, global0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1358f, -267f, arg_0.d.x, -283f)))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)) + _wgslsmith_f_op_f32(-arg_0.d.x));
    var var_3 = arg_0;
    var var_4 = -318f;
    return ~(~_wgslsmith_add_u32(arg_0.a, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = var_0;
    var var_2 = var_1;
    let var_3 = vec2<i32>(18117i, ~_wgslsmith_sub_i32(var_0 << (0u % 32u), -global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(57294u, global0.x), 12u)]));
    var_2 = select(_wgslsmith_mod_i32(var_3.x, global1[_wgslsmith_index_u32(firstTrailingBit(func_4(func_1(vec4<bool>(true, false, false, false)))), 12u)]), -var_3.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -248f), -972f)))), global0.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, -3549f, _wgslsmith_f_op_f32(f32(-1f) * -1310f)))));
}

