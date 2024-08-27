struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(vec2<u32>(85262u, 7800u)), Struct_4(vec2<u32>(4294967295u, 1u)), Struct_4(vec2<u32>(64681u, 56785u)), Struct_4(vec2<u32>(1u, 13994u)), Struct_4(vec2<u32>(1u, 0u)), Struct_4(vec2<u32>(49448u, 2946u)), Struct_4(vec2<u32>(69030u, 0u)), Struct_4(vec2<u32>(0u, 1u)), Struct_4(vec2<u32>(1u, 55050u)), Struct_4(vec2<u32>(48854u, 10843u)), Struct_4(vec2<u32>(52446u, 48071u)), Struct_4(vec2<u32>(32407u, 19024u)), Struct_4(vec2<u32>(47397u, 0u)), Struct_4(vec2<u32>(33612u, 10985u)), Struct_4(vec2<u32>(4294967295u, 73077u)), Struct_4(vec2<u32>(6493u, 0u)), Struct_4(vec2<u32>(4294967295u, 126881u)), Struct_4(vec2<u32>(18988u, 1u)), Struct_4(vec2<u32>(1u, 9475u)), Struct_4(vec2<u32>(1u, 38613u)), Struct_4(vec2<u32>(4294967295u, 84943u)), Struct_4(vec2<u32>(0u, 26318u)), Struct_4(vec2<u32>(4294967295u, 1u)), Struct_4(vec2<u32>(17513u, 0u)), Struct_4(vec2<u32>(0u, 12794u)), Struct_4(vec2<u32>(75856u, 1u)), Struct_4(vec2<u32>(24398u, 49599u)), Struct_4(vec2<u32>(3163u, 1u)), Struct_4(vec2<u32>(8388u, 85588u)), Struct_4(vec2<u32>(4294967295u, 82312u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = Struct_4(~arg_0.a);
    global1 = array<Struct_4, 30>();
    let var_1 = u_input.b;
    global0 = array<Struct_4, 31>();
    let var_2 = select(vec4<i32>(1i, var_1, 10216i, select(_wgslsmith_add_i32(var_1, -1i), var_1, !select(false, false, false))), -_wgslsmith_div_vec4_i32(vec4<i32>(-var_1, var_1, reverseBits(var_1), 0i), vec4<i32>(-1i, u_input.a, var_1, u_input.b) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, var_1, 0i, 103582i), vec4<i32>(var_1, u_input.c.x, u_input.c.x, var_1))), vec4<bool>(true, var_0.a.x >= countOneBits(arg_0.a.x), false, !(select(false, false, false) | (53981u <= arg_0.a.x))));
    return !(-16474i > select(_wgslsmith_add_i32(0i, _wgslsmith_div_i32(0i, u_input.d)), _wgslsmith_add_i32(min(var_2.x, var_2.x), min(u_input.a, -11549i)), true));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: f32) -> Struct_3 {
    let var_0 = arg_2;
    var var_1 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_2, arg_2, true)), _wgslsmith_f_op_f32(ceil(835f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, -753f), vec2<f32>(643f, -851f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 1703f) - vec2<f32>(arg_2, var_0)))))), ~(-1i), Struct_1(select(vec4<bool>(arg_0.a.x == arg_0.a.x, 60841i < u_input.d, false, all(vec3<bool>(false, true, true))), vec4<bool>(-1168f < var_0, true, true, true), vec4<bool>(-646f == arg_2, false, func_3(global0[_wgslsmith_index_u32(arg_0.a.x, 31u)]), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(284f, -259f), vec2<f32>(-305f, -994f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(569f, arg_2)))), arg_0.a.x), countOneBits(~(~0u)));
    let var_2 = firstLeadingBit(arg_1 >> (~(abs(vec4<u32>(arg_0.a.x, 21610u, var_1.d, 6136u)) & reverseBits(vec4<u32>(arg_0.a.x, 14459u, 0u, 0u))) % vec4<u32>(32u)));
    let var_3 = var_1.d;
    let var_4 = Struct_4(arg_0.a | ~firstTrailingBit(~arg_0.a));
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.a)), vec2<f32>(var_0, -1808f))) + var_1.c.b), _wgslsmith_div_i32(~arg_1.x, arg_1.x ^ -max(4231i, arg_1.x)), Struct_1(vec4<bool>(all(var_1.c.a) & all(var_1.c.a.zyz), false, true, var_1.c.a.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_1.a.x - -1500f)), var_1.a)), _wgslsmith_mult_u32(~1u | var_4.a.x, 1u)), ~var_1.d);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = 4294967295u;
    let var_1 = ~countOneBits(min(~max(vec3<u32>(0u, var_0, var_0), vec3<u32>(24199u, 21340u, 4294967295u)), ~select(vec3<u32>(var_0, 0u, 14050u), vec3<u32>(4294967295u, 72174u, 4294967295u), arg_1.x)));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.b.x, arg_0.a.x)), arg_0.c.b)))), arg_0.c.b);
    global1 = array<Struct_4, 30>();
    global1 = array<Struct_4, 30>();
    return !(!select(vec3<bool>(arg_1.x, arg_1.x, true), arg_1.zyx, vec3<bool>(false, !arg_1.x, var_0 <= 22193u)));
}

fn func_1() -> bool {
    var var_0 = ~vec2<u32>(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(13517u, 1u, 4433u, 0u), vec4<u32>(1u, 1u, 1u, 1u))), 0u);
    var var_1 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))) == false;
    var_0 = vec2<u32>(min(~29584u, min(0u, var_0.x) & var_0.x) ^ _wgslsmith_mod_u32(14364u, ~_wgslsmith_div_u32(var_0.x, var_0.x)), ~(~(~15084u)));
    let var_2 = ~(~abs(max(vec3<u32>(var_0.x, var_0.x, var_0.x) & vec3<u32>(0u, 1u, var_0.x), min(vec3<u32>(var_0.x, 3604u, var_0.x), vec3<u32>(34016u, var_0.x, var_0.x)))));
    var var_3 = -2147483647i;
    return any(select(select(func_4(func_2(global0[_wgslsmith_index_u32(84110u, 31u)], vec4<i32>(u_input.d, u_input.b, -2147483647i, 29050i), 1446f), vec4<bool>(true, true, true, true)), func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 1u, 42326u), 31u)], min(vec4<i32>(4058i, u_input.b, 2147483647i, u_input.b), vec4<i32>(u_input.c.x, u_input.e, -2147483647i, -2147483647i)), -212f).c.a.xyx, true != all(vec4<bool>(true, false, true, true))), !vec3<bool>(true, 0u > var_0.x, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 31>();
    var var_0 = -27498i;
    var var_1 = reverseBits(_wgslsmith_mod_u32(565u, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(0u, 99024u), vec2<u32>(4294967295u, 26743u), vec2<bool>(true, true)), vec2<u32>(1u, 1u))));
    global1 = array<Struct_4, 30>();
    var var_2 = all(vec3<bool>(func_1(), !(_wgslsmith_f_op_f32(-566f - 988f) == _wgslsmith_f_op_f32(step(-189f, -179f))), false));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~(-vec4<i32>(u_input.d, u_input.e, 1i, abs(0i))), 40415u, 2513u);
}

