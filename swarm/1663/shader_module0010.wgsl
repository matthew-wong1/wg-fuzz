struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(2499f, -318f, -564f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<i32>) -> i32 {
    global2 = array<vec3<f32>, 1>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(1u, 1u)]) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(275f, arg_0.a.d.x, arg_0.c) - vec3<f32>(-502f, -586f, arg_0.a.d.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_0.a.d.x, arg_0.a.d.x), vec3<f32>(-1894f, arg_0.a.b.x, 1367f), arg_1.x)))))), global2[_wgslsmith_index_u32(4294967295u, 1u)]));
    let var_1 = vec3<bool>(false, ~4294967295u < ~_wgslsmith_dot_vec3_u32(~u_input.b, ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x)), true);
    var var_2 = (~min(34769i | arg_2.x, arg_0.d.x >> (2182u % 32u)) >> (~1u % 32u)) & -(i32(-1i) * -2147483647i);
    var var_3 = var_0.xx;
    return 1i;
}

fn func_2(arg_0: vec4<f32>) -> vec4<f32> {
    global2 = array<vec3<f32>, 1>();
    var var_0 = ~_wgslsmith_clamp_i32(2147483647i, 1i, select(-93170i, func_3(Struct_2(Struct_1(vec3<i32>(2147483647i, -1i, 7399i), vec2<f32>(-119f, arg_0.x), -49754i, arg_0.zxx, -8821i), vec2<i32>(-44477i, 8484i), arg_0.x, vec4<i32>(-89533i, -2147483647i, -2147483647i, -54691i)), vec3<bool>(true, true, true), -vec2<i32>(0i, 5939i)), !(arg_0.x == 979f)));
    let var_1 = Struct_3(u_input.b.x, vec3<i32>(1i, 1i, 1i));
    var var_2 = Struct_2(Struct_1(-(~abs(var_1.b)), arg_0.yx, abs(var_1.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(var_1.a, 1u)] - global2[_wgslsmith_index_u32(34854u, 1u)]))) - global2[_wgslsmith_index_u32(u_input.b.x, 1u)]), max(var_1.b.x, 0i)), firstLeadingBit(vec2<i32>(1i, abs(2147483647i)) & reverseBits(vec2<i32>(var_1.b.x, 33679i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-237f))) + _wgslsmith_div_f32(1067f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(sign(arg_0.x)))))), vec4<i32>(-18330i, var_1.b.x, -12974i, -_wgslsmith_clamp_i32(firstTrailingBit(2147483647i), ~var_1.b.x, var_1.b.x)));
    var var_3 = !(any(select(!vec3<bool>(global1.x, global1.x, global1.x), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, true), global1.x), !vec3<bool>(true, global1.x, true))) | any(!(!vec4<bool>(false, false, global1.x, global1.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(var_2.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(615f - arg_0.x))))));
}

fn func_1(arg_0: i32, arg_1: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 237f, -227f, -571f)))))) * _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(698f, 507f, -1662f, -1246f), vec4<f32>(-1588f, -1841f, -267f, 1052f))), vec4<f32>(_wgslsmith_f_op_f32(select(-591f, 542f, global1.x)), 519f, _wgslsmith_f_op_f32(sign(-469f)), -1835f), !global1.x)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_f_op_f32(ceil(var_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(866f, 524f)) * var_0.x)))) - var_0.x);
    return ~(-(vec3<i32>(-1i) * -vec3<i32>(arg_1, arg_0, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(~u_input.b.x, u_input.a.x);
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(~(-2147483647i) << (var_0 % 32u)), -_wgslsmith_mod_i32(1i, -2827i), ~(~2147483647i)), _wgslsmith_add_vec3_i32(func_1(_wgslsmith_div_i32(0i, -1i), -1i), abs(vec3<i32>(1i, 1i, 1i))) ^ max(-vec3<i32>(1i, -2147483647i, -44192i), vec3<i32>(~(-1i), -31324i, 1i)));
    let var_2 = Struct_1(select(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, countOneBits(-5163i), -29820i), ~vec3<i32>(2865i, 2147483647i, -28708i)), -vec3<i32>(-1i, var_1.x, var_1.x), select(vec3<bool>(global1.x | false, true, global1.x), !vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, u_input.b.x >= u_input.b.x, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(129f, 865f), vec2<f32>(-320f, 1021f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2475f, -1000f) - vec2<f32>(497f, -568f)), select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), true)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec4<f32>(-410f, -663f, -1000f, -383f))).wz), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-3046f, -2033f))))), 1i, vec3<f32>(-511f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-218f, -1002f)))), 875f), 38512i);
    let var_3 = ~4294967295u;
    let var_4 = select(vec3<bool>(global1.x, select(global1.x, !global1.x || (var_2.b.x < var_2.d.x), all(vec3<bool>(false, false, false))), global1.x), !select(select(!vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, false), all(vec4<bool>(global1.x, global1.x, global1.x, global1.x))), select(vec3<bool>(global1.x, global1.x, global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, true), vec3<bool>(false, global1.x, global1.x)), vec3<bool>(global1.x, global1.x, false)), (-6656i | var_2.e) > 44426i), true);
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(vec4<u32>(var_0, 50304u, 64752u, 1u) | vec4<u32>(var_0, 1u, 0u, var_0)) & ~(~vec4<u32>(42511u, 1u, var_0, 0u)), countOneBits(reverseBits(vec4<u32>(var_3, 0u, var_0, var_3)))), var_2.d.x, var_2.a, _wgslsmith_f_op_f32(var_2.d.x - 1f), max(var_1.x, _wgslsmith_div_i32(var_2.e, var_1.x) & -2147483647i));
}

