struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-313f, 555f, -581f, 916f), vec4<f32>(601f, 782f, 123f, -423f), vec4<f32>(-678f, -165f, 1359f, 1070f), vec4<f32>(761f, -1129f, -621f, 1610f), vec4<f32>(-779f, 2497f, 737f, 976f), vec4<f32>(202f, -1652f, -1335f, -1883f), vec4<f32>(-234f, -847f, -453f, 681f), vec4<f32>(-504f, -803f, -857f, -734f), vec4<f32>(-354f, 202f, -803f, -1000f));

var<private> global2: vec2<f32>;

var<private> global3: array<u32, 16>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = 24648u;
    return !arg_3.xz;
}

fn func_3(arg_0: f32) -> vec2<bool> {
    var var_0 = global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 16u)], 16u)];
    let var_1 = any(vec3<bool>(true, true, true));
    var var_2 = vec3<i32>(max(-2147483647i, _wgslsmith_mod_i32(1i, 1i)), firstLeadingBit(_wgslsmith_add_i32(firstTrailingBit(~0i), 65564i)), -584i);
    var var_3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 376f) - _wgslsmith_f_op_f32(-124f - arg_0)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - arg_0)))), -vec2<i32>(31234i, var_2.x << (global3[_wgslsmith_index_u32(4294967295u, 16u)] % 32u)), abs(var_2.zz), Struct_1(u_input.a, vec2<u32>(~1u, 26770u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) * -1011f), global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, global2.x)), -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x)))), vec4<u32>(_wgslsmith_sub_u32(~53606u, _wgslsmith_mult_u32(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 16u)])), global3[_wgslsmith_index_u32(63813u, 16u)], _wgslsmith_div_u32(u_input.a, u_input.a), max(~1u, _wgslsmith_sub_u32(21415u, 1u))), select(vec4<bool>(!var_1, true, true, any(vec4<bool>(var_1, true, var_1, false))), select(select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, false, true, true)), !vec4<bool>(var_1, false, false, true), all(vec2<bool>(false, false))), var_1)));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-792f, global2.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-276f)))), any(select(vec4<bool>(var_1, var_1, true, var_1), !vec4<bool>(true, var_1, true, false), arg_0 >= -1050f)))), vec2<i32>(_wgslsmith_mod_i32(~(-18362i), _wgslsmith_mod_i32(var_3.b.x, var_3.c.x)), var_2.x) & ((-vec2<i32>(var_2.x, 2147483647i) | var_2.yx) ^ ~vec2<i32>(0i, var_3.c.x)), vec2<i32>(-40521i, -var_3.c.x), Struct_1(4294967295u, var_3.d.d.yz, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.a, 9u)])))), select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global3[_wgslsmith_index_u32(14270u, 16u)], 12505u, var_3.d.a), _wgslsmith_mod_vec4_u32(var_3.d.d, var_3.d.d)), var_3.d.d, _wgslsmith_f_op_f32(global2.x * var_3.d.c.x) != -368f), select(select(!var_3.d.e, select(var_3.d.e, var_3.d.e, var_3.d.e.x), 1i > var_3.c.x), select(vec4<bool>(var_3.d.e.x, false, false, false), vec4<bool>(false, true, var_3.d.e.x, true), !vec4<bool>(false, var_3.d.e.x, var_3.d.e.x, var_1)), any(select(var_3.d.e.xw, var_3.d.e.yz, false)))));
    return vec2<bool>(false, any(vec2<bool>(false, var_3.c.x == -2267i)) || false);
}

fn func_1() -> vec2<i32> {
    var var_0 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(func_2(global2.x, Struct_3(vec2<u32>(39235u, u_input.a), 1000f, -32509i), Struct_3(vec2<u32>(u_input.a, u_input.a), global2.x, -49807i), vec3<bool>(false, false, true)), vec2<bool>(true, false), any(vec2<bool>(false, false))), func_3(global2.x)), vec2<bool>(true, false), vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))))), vec2<bool>(!any(vec2<bool>(true, false)) || false, any(vec4<bool>(true, true, true, 77072u < u_input.a))), vec2<bool>(true, true));
    var_0 = vec2<bool>(var_0.x | any(select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, false), true)), any(vec2<bool>(true, var_0.x)));
    let var_1 = any(select(vec4<bool>(all(vec2<bool>(true, true)), false, true, var_0.x | true), vec4<bool>(var_0.x, true, false, all(vec3<bool>(var_0.x, var_0.x, var_0.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(47031i, -1i, 1i), vec3<i32>(-7277i, -1i, 16137i)) >= abs(-27829i)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global2.x - global2.x), global2.x)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) - global2.x), global2.x, global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(global2.x, 511f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 135f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(517f * 1124f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))))));
    var var_3 = select(vec2<bool>((_wgslsmith_clamp_u32(24604u, global3[_wgslsmith_index_u32(4294967295u, 16u)], 1u) > global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 16u)] & 1u, 16u)]) || func_3(_wgslsmith_f_op_f32(var_2.x * var_2.x)).x, true), vec2<bool>(func_3(1409f).x && ((var_1 && false) && var_0.x), var_0.x), true);
    return _wgslsmith_mod_vec2_i32(select(_wgslsmith_div_vec2_i32(~reverseBits(vec2<i32>(-2147483647i, -1i)), select(_wgslsmith_div_vec2_i32(vec2<i32>(-10938i, 1i), vec2<i32>(3731i, -1i)), vec2<i32>(1i, 1i), true)), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, -6789i), vec3<i32>(-2147483647i, -1i, 27249i)), -vec3<i32>(1i, 50632i, 50895i)), ~(i32(-1i) * -2147483647i)), any(select(!vec3<bool>(false, true, var_3.x), select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, false, false), false), !vec3<bool>(true, true, var_3.x)))), ~vec2<i32>(max(_wgslsmith_mult_i32(0i, -1i), ~20058i), -24838i));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: u32, arg_3: u32) -> i32 {
    global1 = array<vec4<f32>, 9>();
    let var_0 = vec2<i32>(_wgslsmith_add_i32(min(-arg_0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-22921i, arg_0.b.x), vec2<i32>(arg_0.c.x, -53275i))), -21958i) & reverseBits(abs(_wgslsmith_sub_i32(arg_0.c.x, 27796i))), ~1i);
    var var_1 = arg_0.d;
    global1 = array<vec4<f32>, 9>();
    global3 = array<u32, 16>();
    return _wgslsmith_add_i32(_wgslsmith_add_i32(9630i, ~1i), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_4(Struct_4(1079f, -func_1(), vec2<i32>(select(76037i, -26303i, true), 27023i), Struct_1(global3[_wgslsmith_index_u32(31396u, 16u)] & global3[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_div_vec2_u32(vec2<u32>(1u, 12571u), vec2<u32>(u_input.a, 4294967295u)), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)] & global3[_wgslsmith_index_u32(4294967295u, 16u)], 9u)], reverseBits(vec4<u32>(4294967295u, 1u, u_input.a, 31211u)), vec4<bool>(true, true, true, true))), abs(u_input.a), 4294967295u, min(u_input.a << (u_input.a % 32u), 0u)));
    let var_1 = ~vec3<i32>(abs(1i), i32(-1i) * -var_0.a, ~(var_0.a << (global3[_wgslsmith_index_u32(u_input.a, 16u)] % 32u)) & var_0.a);
    let var_2 = _wgslsmith_mult_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(var_1.x, -8553i), _wgslsmith_dot_vec3_i32(var_1, var_1) >> (1u % 32u), -2147483647i, var_0.a), vec4<i32>(i32(-1i) * -firstTrailingBit(var_1.x), _wgslsmith_div_i32(var_0.a, -1i ^ _wgslsmith_add_i32(var_0.a, var_0.a)), 1i, 23813i));
    global2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) + -101f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(max(global2.x, 963f))))), vec2<f32>(global2.x, 1154f));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1259f * 769f) - global2.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x + -2497f))), global2.x)));
    var var_4 = Struct_2(Struct_1(~(~(~u_input.a)), vec2<u32>(_wgslsmith_sub_u32(u_input.a, ~u_input.a), abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(25725u, u_input.a), 16u)], 16u)])), global1[_wgslsmith_index_u32(62783u, 9u)], min(vec4<u32>(countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)]), ~u_input.a, 1u, ~94626u), min(vec4<u32>(u_input.a, 0u, 0u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, u_input.a, global3[_wgslsmith_index_u32(25808u, 16u)]), vec4<u32>(0u, 4294967295u, u_input.a, global3[_wgslsmith_index_u32(u_input.a, 16u)])))), vec4<bool>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29424u, 16u)] << (global3[_wgslsmith_index_u32(94795u, 16u)] % 32u), 16u)] >= ~global3[_wgslsmith_index_u32(50371u, 16u)], any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), var_3.x < _wgslsmith_f_op_f32(-var_3.x), global3[_wgslsmith_index_u32(u_input.a, 16u)] < countOneBits(72912u))), true);
    var var_5 = var_2.x;
    var var_6 = vec4<i32>(i32(-1i) * -57778i, 85954i, 0i, -abs(_wgslsmith_div_i32(~(-41728i), _wgslsmith_sub_i32(0i, -15328i))));
    let x = u_input.a;
    s_output = StorageBuffer(50617u, var_4.a.c.x, var_4.a.c.x, _wgslsmith_div_i32(func_1().x, -var_1.x));
}

