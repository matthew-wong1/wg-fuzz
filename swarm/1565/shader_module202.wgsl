struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(1759f, -1518f, -1000f, -974f, 198f, 615f, -895f, 1059f, -770f, -655f, -419f, -1909f, -689f, -284f, 482f, 1192f, 499f, -514f, -713f, -130f, -808f, -1376f, -1784f, 1000f, 498f, 314f, 1163f, -267f);

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<u32, 28>;

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<f32>(-378f, 954f, -478f)), Struct_2(vec3<f32>(-354f, -1080f, -1456f)), Struct_2(vec3<f32>(406f, 836f, 334f)), Struct_2(vec3<f32>(1036f, -609f, 1571f)), Struct_2(vec3<f32>(727f, -243f, -1939f)), Struct_2(vec3<f32>(-309f, 836f, -1609f)));

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global3 = array<Struct_2, 6>();
    global3 = array<Struct_2, 6>();
    global2 = array<u32, 28>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(~792u, 28u)], 189f, -832f))));
    global1 = array<Struct_1, 5>();
    return _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(~_wgslsmith_add_u32(23516u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)])), countOneBits(20280u), global2[_wgslsmith_index_u32(4294967295u ^ _wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 28u)], ~11601u), 28u)]), 28u)]));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<i32>) -> vec4<i32> {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(~0u, 6u)])) * _wgslsmith_f_op_f32(abs(-708f))), 1857f, _wgslsmith_f_op_f32(global4.a.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 28u)])))))));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(abs(arg_2.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-10628i, 5151i, arg_2.x, arg_2.x), vec4<i32>(55066i, 0i, arg_2.x, arg_2.x), false), select(vec4<i32>(-2147483647i, -58112i, 15524i, u_input.a), vec4<i32>(-47656i, u_input.a, -1i, -2147483647i), vec4<bool>(true, false, false, arg_1.x))), select(vec4<i32>(-4970i, arg_2.x, arg_2.x, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, 0i), arg_1.x && arg_1.x)), -u_input.a), ~(~(-vec3<i32>(u_input.a, 0i, -2651i)) & reverseBits(arg_2.wyw)));
    let var_2 = select(!vec4<bool>(false, any(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), false, arg_1.x), !(!(!vec4<bool>(false, true, true, arg_1.x))), arg_1.x | true);
    let var_3 = Struct_4(vec4<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global2[_wgslsmith_index_u32(4294967295u, 28u)], ~14829u), 28u)] >> ((firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5746u, 28u)], 28u)]) | _wgslsmith_dot_vec3_u32(vec3<u32>(55009u, 16021u, 1u), vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)]))) % 32u), 28u)], -101f, _wgslsmith_f_op_f32(-114f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-235f - var_0.a.x) - _wgslsmith_div_f32(-1489f, var_0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(650f + 729f), _wgslsmith_f_op_f32(-global4.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1831f)))), Struct_3(global3[_wgslsmith_index_u32(~abs(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(24774u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)])), 6u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(1065f)), 1000f, _wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(var_0.a.x * arg_0)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(240f, var_0.a.x, global4.a.x, global0[_wgslsmith_index_u32(5368u, 28u)])), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5611u, 28u)], 28u)], 1000f, var_0.a.x))), vec4<bool>(var_2.x, var_2.x, true, arg_1.x))))));
    global2 = array<u32, 28>();
    return _wgslsmith_clamp_vec4_i32(~vec4<i32>(reverseBits(arg_2.x), reverseBits(firstLeadingBit(u_input.a)), _wgslsmith_add_i32(-arg_2.x, arg_2.x ^ u_input.a), var_1.x), -reverseBits(vec4<i32>(arg_2.x, 1i, _wgslsmith_sub_i32(u_input.a, var_1.x), 3044i & arg_2.x)), ~(vec4<i32>(-1i) * -(arg_2 ^ vec4<i32>(30724i, arg_2.x, var_1.x, var_1.x))));
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = -_wgslsmith_add_vec4_i32(~func_2(396f, vec2<bool>(true, true), ~vec4<i32>(-50235i, u_input.a, -24486i, -2147483647i)), vec4<i32>(-55665i, u_input.a, countOneBits(i32(-1i) * -1i), arg_0));
    var var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(433f - 1474f))), _wgslsmith_f_op_f32(min(-1408f, 2137f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1745f - global4.a.x) - global4.a.x))), Struct_3(global3[_wgslsmith_index_u32(~(~1u), 6u)]), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global4.a.x)), global4.a.x) - _wgslsmith_f_op_f32(abs(-849f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.a.x)) * 1578f)), -526f, _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52998u, 28u)], 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(87659u, 28u)]), 28u)]), 6u)]))));
    let var_2 = global4.a.x;
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(11528u, 1u), 6u)];
    let var_3 = vec4<i32>(var_0.x, u_input.a, _wgslsmith_mult_i32(u_input.a, ~(u_input.a << (_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(12252u, 28u)], global2[_wgslsmith_index_u32(6228u, 28u)]) % 32u))), -2147483647i);
    return Struct_4(vec4<f32>(global0[_wgslsmith_index_u32(~4294967295u, 28u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0[_wgslsmith_index_u32(18890u, 28u)])))), 227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)], 28u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45846u, 28u)], 28u)])))), var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_1.c)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-106f, var_1.b.a.a.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51744u, 28u)], 28u)], 28u)]) - var_1.a)))) * _wgslsmith_f_op_vec4_f32(-var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], global4.a.x))))) * _wgslsmith_f_op_vec3_f32(global4.a - vec3<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9609u, 28u)], 28u)], 28u)])), 1156f, _wgslsmith_div_f32(global4.a.x, global0[_wgslsmith_index_u32(2413u, 28u)])))));
    let var_0 = func_1(_wgslsmith_sub_i32(u_input.a, u_input.a));
    var var_1 = ~vec3<u32>(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28089u, 28u)], 28u)], ~firstLeadingBit(global2[_wgslsmith_index_u32(44566u, 28u)]), !any(vec3<bool>(true, false, true))), abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(2128u, 28u)], 59915u, 4294967295u), vec3<u32>(95970u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 1u))), _wgslsmith_add_u32(~countOneBits(1u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(18228u, 42802u, 9700u), vec3<u32>(global2[_wgslsmith_index_u32(0u, 28u)], 1u, global2[_wgslsmith_index_u32(4294967295u, 28u)])), abs(vec3<u32>(global2[_wgslsmith_index_u32(5365u, 28u)], 1u, 92675u))), 28u)]));
    let var_2 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)), true), vec4<bool>(any(vec2<bool>(true, false)), true, true, any(vec3<bool>(false, true, true))), true || (0u != global2[_wgslsmith_index_u32(var_1.x, 28u)])), false), select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), vec4<bool>(any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), true & select(true, true, true), true), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, false, false)))), select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false)), vec4<bool>(all(vec2<bool>(false, false)), false, select(all(vec2<bool>(true, true)), false, all(vec3<bool>(true, true, false))), any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), !all(vec2<bool>(true, true))));
    var var_3 = ~(_wgslsmith_clamp_u32(~(~0u), abs(var_1.x), _wgslsmith_add_u32(52520u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(var_1.x, 28u)], 51020u))) | 0u);
    var_3 = 1565u;
    global4 = global3[_wgslsmith_index_u32(~(~abs(var_1.x)), 6u)];
    var var_4 = _wgslsmith_mult_vec2_i32(min(~vec2<i32>(u_input.a, u_input.a), abs(abs(vec2<i32>(-15114i, u_input.a)))) ^ vec2<i32>(u_input.a, u_input.a), vec2<i32>(~select(-21866i | u_input.a, -2147483647i, var_2.x || var_2.x), ~(~(-41297i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_1.x, var_1.x, ~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, 63107u), 28u)], global2[_wgslsmith_index_u32(~0u, 28u)])), _wgslsmith_sub_u32(var_1.x, var_1.x), _wgslsmith_dot_vec3_u32(~(countOneBits(vec3<u32>(18253u, 51406u, 74560u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 1u, 16549u), vec3<u32>(46977u, global2[_wgslsmith_index_u32(var_1.x, 28u)], 57597u))), ~(~min(vec3<u32>(var_1.x, global2[_wgslsmith_index_u32(1u, 28u)], var_1.x), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(54792u, 28u)], 36977u)))), u_input.a, ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(3973u, 1u, global2[_wgslsmith_index_u32(0u, 28u)]), vec3<u32>(24303u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.x, 28u)], 28u)], 28u)])), ~vec3<u32>(32403u, 4294967295u, 590u))));
}

