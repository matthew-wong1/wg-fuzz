struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-1634f, -446f, -1001f, -2648f, -723f, 386f, -1524f, 2100f, 2061f, 286f, -1007f, -168f, 913f, -2287f, 1085f, -545f, -134f, -1110f, -1466f, -484f, -521f, 558f, 1469f, -164f, 571f, -422f, -1286f, -512f, 687f, -758f, 1000f);

var<private> global1: Struct_3;

var<private> global2: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    let var_0 = 18703u;
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(min(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(279f, -842f, 200f, -990f) * global1.a))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.x, global1.e.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zy - arg_0.xy) - global1.c)))), global1.c, select(vec2<bool>(true, true), vec2<bool>(!global1.d.x, global1.d.x), !select(vec2<bool>(global1.d.x, false), !vec2<bool>(false, global1.d.x), global1.d.x)), Struct_2(_wgslsmith_f_op_f32(round(1078f)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, arg_1, 5123u, var_0)), select(firstTrailingBit(vec4<u32>(51631u, 25703u, global1.e.b, 1u)), vec4<u32>(0u, u_input.d, u_input.d, 1683u), vec4<bool>(true, global1.d.x, global1.d.x, global1.e.c))), global1.d.x, global1.e.d, global0[_wgslsmith_index_u32(28179u, 31u)]));
    var var_2 = global1.e;
    global1 = var_1;
    global1 = var_1;
    return ~_wgslsmith_div_u32(countOneBits(var_1.e.b), var_1.e.b);
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_mod_i32(arg_0.x, u_input.c.x);
    global2 = u_input.c.x;
    let var_1 = abs(vec4<u32>(~1u, abs(0u), u_input.a.x, 1u) & select(~vec4<u32>(2066u, global1.e.b, u_input.b, 19554u), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.e.b, 16455u, global1.e.b, 4294967295u), vec4<u32>(4294967295u, 62684u, 58468u, global1.e.b)), !vec4<bool>(global1.e.c, true, global1.e.c, global1.e.c))) & max(~(~firstTrailingBit(vec4<u32>(global1.e.b, u_input.a.x, 1u, global1.e.b))), vec4<u32>(max(0u, 31437u), abs(u_input.b), func_3(global1.a.xwz, 4294967295u, vec4<i32>(2147483647i, var_0, var_0, 0i)), global1.e.b & 1u) >> (vec4<u32>(~1u, ~1u, countOneBits(global1.e.b), countOneBits(1u)) % vec4<u32>(32u)));
    global0 = array<f32, 31>();
    let var_2 = _wgslsmith_mult_vec3_i32(max(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, var_0, var_0), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, -1i, arg_0.x), vec3<i32>(u_input.c.x, u_input.c.x, -24294i)), min(vec3<i32>(arg_0.x, 0i, -1i), vec3<i32>(u_input.c.x, var_0, -2147483647i))), countOneBits(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(1i, -2147483647i, -2147483647i)), vec3<i32>(arg_0.x, var_0, u_input.c.x) << (vec3<u32>(var_1.x, var_1.x, global1.e.b) % vec3<u32>(32u))))), abs(reverseBits(vec3<i32>(-16318i, var_0, _wgslsmith_div_i32(arg_0.x, 0i)))));
    return -1607f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    global0 = array<f32, 31>();
    global1 = Struct_3(arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - 1327f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 31u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1465f - _wgslsmith_f_op_f32(sign(1947f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global1.b, vec2<f32>(-198f, global0[_wgslsmith_index_u32(global1.e.b, 31u)]))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1.e.b, 31u)], 1291f), global1.c))), vec2<bool>(select(global1.d.x, any(vec2<bool>(global1.d.x, false)), false), global1.d.x), arg_0);
    global0 = array<f32, 31>();
    return Struct_2(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f), arg_2), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2)))))), min(45643u, 0u), all(!(!(!vec4<bool>(arg_0.c, arg_1.e.c, arg_1.e.c, true)))), arg_1.e.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(881f)) + _wgslsmith_f_op_f32(round(arg_0.d.a))))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(func_2(u_input.c))))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 41886u), ~1u, func_3(global1.a.wxy, ~u_input.a.x, vec4<i32>(-2147483647i, 1i, 1i, u_input.c.x))), global1.d.x, global1.e.d, _wgslsmith_f_op_f32(1953f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.c)) + _wgslsmith_div_f32(1999f, arg_1.a)))), Struct_3(global1.a, global1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2250f, global1.c.x))), select(vec2<bool>(true, global1.e.c), global1.d, any(vec2<bool>(global1.e.c, global1.d.x))), global1.e), arg_1.a);
    var var_1 = vec4<bool>(!(!all(select(vec3<bool>(false, var_0.c, false), vec3<bool>(var_0.c, false, var_0.c), true))), true, false, u_input.c.x >= _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(0i, -1i, u_input.c.x), -1i, min(1i, u_input.c.x)), ~25245i));
    let var_2 = var_1.wz;
    let var_3 = select(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, abs(46498i), ~(-2147483647i), -arg_0), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.c.x, 58205i, 0i, u_input.c.x), vec4<i32>(-13024i, 18595i, u_input.c.x, u_input.c.x)), -vec4<i32>(arg_0, -19226i, -2147483647i, 65021i)))), -(~(-vec4<i32>(2147483647i, arg_0, -2147483647i, 1i))), var_0.c);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a, arg_1.a)) + _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(632f, global0[_wgslsmith_index_u32(u_input.d, 31u)], var_1.x)), _wgslsmith_f_op_f32(global1.c.x * global1.c.x))))) + arg_1.a));
    return !select(vec4<bool>(true, global1.e.c, var_1.x, all(var_1.yxw)), vec4<bool>(global1.d.x, !(u_input.b != u_input.a.x), var_2.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(14901u, 1u), 31u)] <= _wgslsmith_f_op_f32(var_4.a * global0[_wgslsmith_index_u32(var_0.b, 31u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, var_0.e)) - _wgslsmith_f_op_f32(exp2(var_4.a))) != _wgslsmith_f_op_f32(f32(-1f) * -1020f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(func_1(i32(-1i) * -u_input.c.x, Struct_1(global1.e.e)), vec4<bool>(any(!vec2<bool>(true, global1.d.x)), false, all(vec4<bool>(global1.d.x, global1.e.c, false, true)) | true, !global1.e.c || (global1.e.c & global1.d.x)), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(global1.d.x, global1.d.x, true, global1.e.c), vec4<bool>(global1.e.c, true, global1.e.c, global1.e.c), select(false, global1.d.x, global1.e.c)), func_1(min(u_input.c.x, u_input.c.x), global1.e.d)));
    let var_1 = vec2<bool>((u_input.c.x == (u_input.c.x & _wgslsmith_div_i32(u_input.c.x, 13397i))) == !global1.d.x, all(vec2<bool>(all(vec2<bool>(false, true)) | all(vec3<bool>(false, global1.e.c, true)), false)));
    let var_2 = u_input.c.x;
    let var_3 = false != var_1.x;
    var var_4 = _wgslsmith_f_op_f32(max(-646f, _wgslsmith_f_op_f32(floor(global1.b.x))));
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -402f))))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, 21549u, -vec4<i32>(u_input.c.x, -15412i, abs(0i), min(-2147483647i, u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.b, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(147f, 1000f), vec2<f32>(global1.a.x, global0[_wgslsmith_index_u32(17826u, 31u)]))))));
}

