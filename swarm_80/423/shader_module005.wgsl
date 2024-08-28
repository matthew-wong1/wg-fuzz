struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool = true;

var<private> global2: array<f32, 31> = array<f32, 31>(-2054f, 824f, -277f, 169f, -409f, -833f, -313f, -1079f, 489f, -1000f, 504f, 1228f, 453f, 517f, 2744f, -1000f, -1224f, -1642f, 748f, 859f, -909f, 361f, 1381f, -663f, 270f, 1397f, -1000f, -196f, -276f, 1103f, -1000f);

var<private> global3: array<i32, 8>;

var<private> global4: array<i32, 26>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> bool {
    return arg_1.a & arg_1.a;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_u32(~10056u, 1u);
    let var_1 = Struct_4(func_3(Struct_3(Struct_2(Struct_1(-18825i, arg_3.e, vec3<i32>(-1i, arg_3.e.x, arg_2.x), arg_0, vec4<i32>(44424i, 29850i, u_input.b, 1i))), Struct_2(Struct_1(u_input.b, vec4<i32>(-2147483647i, -2147483647i, -30884i, u_input.b), arg_2.xxy, 28564u, vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], -6165i, global3[_wgslsmith_index_u32(var_0, 8u)], u_input.b))), arg_3, global4[_wgslsmith_index_u32(arg_0, 26u)], arg_3), Struct_4(any(vec2<bool>(true, true))), Struct_2(arg_3)));
    var var_2 = select(select(select(!select(vec3<bool>(false, false, var_1.a), vec3<bool>(var_1.a, true, false), vec3<bool>(false, false, var_1.a)), select(!vec3<bool>(false, var_1.a, false), select(vec3<bool>(var_1.a, false, true), vec3<bool>(false, false, true), vec3<bool>(var_1.a, false, var_1.a)), true), !select(vec3<bool>(true, false, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), var_1.a)), !vec3<bool>(all(vec3<bool>(false, true, true)), var_1.a, var_1.a), !(!select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(var_1.a, true, var_1.a)))), vec3<bool>(true, false, any(select(vec4<bool>(false, var_1.a, var_1.a, false), vec4<bool>(var_1.a, var_1.a, var_1.a, true), false)) & any(!vec3<bool>(var_1.a, true, true))), vec3<bool>(false, true | (!var_1.a || func_3(Struct_3(Struct_2(Struct_1(global4[_wgslsmith_index_u32(var_0, 26u)], arg_2, vec3<i32>(arg_3.a, -23283i, 89552i), u_input.a.x, arg_2)), Struct_2(arg_3), arg_3, arg_2.x, arg_3), Struct_4(var_1.a), Struct_2(Struct_1(-2147483647i, vec4<i32>(2147483647i, 2147483647i, global4[_wgslsmith_index_u32(arg_0, 26u)], -4654i), arg_3.e.wxz, 4294967295u, vec4<i32>(-1i, -1i, -13475i, 28623i))))), true));
    global2 = array<f32, 31>();
    var var_3 = var_2.x;
    return !vec4<bool>(select(var_1.a, true, (arg_3.d << (u_input.a.x % 32u)) < (arg_0 ^ 4294967295u)), all(!(!vec3<bool>(false, false, var_2.x))), var_1.a || all(vec2<bool>(true, true)), var_1.a);
}

fn func_1() -> Struct_2 {
    let var_0 = 34094i;
    let var_1 = !select(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), func_2(~4294967295u, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1507f, -550f, 511f))), -vec4<i32>(-17789i, u_input.b, 2147483647i, 2147483647i), Struct_1(var_0, vec4<i32>(2147483647i, 1i, global4[_wgslsmith_index_u32(u_input.a.x, 26u)], global3[_wgslsmith_index_u32(16023u, 8u)]), vec3<i32>(1926i, global4[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.b), u_input.a.x, vec4<i32>(global3[_wgslsmith_index_u32(8602u, 8u)], 9218i, global4[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(u_input.a.x, 8u)]))), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, true));
    var var_2 = _wgslsmith_dot_vec4_i32(select(~(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b, -2147483647i, global4[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec4<i32>(1885i, 0i, -2147483647i, -27370i)) & -vec4<i32>(1i, -1i, u_input.b, 1i)), vec4<i32>(i32(-1i) * -47182i, i32(-1i) * -14934i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-1034i, 57058i), i32(-1i) * -26821i), var_0), select(vec4<bool>(!var_1.x, true, true, global2[_wgslsmith_index_u32(u_input.a.x, 31u)] <= global2[_wgslsmith_index_u32(53216u, 31u)]), !select(var_1, var_1, var_1), all(var_1))), _wgslsmith_div_vec4_i32(abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(-1341i, 0i, 0i, 47307i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, global3[_wgslsmith_index_u32(u_input.a.x, 8u)], -26995i, global3[_wgslsmith_index_u32(1u, 8u)]), vec4<i32>(1i, 28964i, 2147483647i, -8010i), vec4<i32>(-43074i, var_0, 2147483647i, u_input.b)))), min(~vec4<i32>(26187i, 38008i, -1i, -20470i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 26u)], global3[_wgslsmith_index_u32(26788u, 8u)], global4[_wgslsmith_index_u32(11055u, 26u)], -2147483647i), vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 26u)], -2147483647i, 1i, -2147483647i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 2147483647i, global4[_wgslsmith_index_u32(46035u, 26u)], -2147483647i), select(vec4<i32>(0i, u_input.b, -1i, 6459i), vec4<i32>(var_0, 1i, 26457i, -28309i), var_1.x)))));
    global2 = array<f32, 31>();
    global0 = ~0i != u_input.b;
    return Struct_2(Struct_1(-7380i, vec4<i32>(u_input.b, _wgslsmith_sub_i32(~2147483647i, var_0), -93351i, ~select(global4[_wgslsmith_index_u32(4294967295u, 26u)], -2147483647i, var_1.x)), max(vec3<i32>(_wgslsmith_div_i32(30886i, var_0), var_0, -11351i << (u_input.a.x % 32u)), vec3<i32>(-10100i, -1i, ~(-35774i))), _wgslsmith_sub_u32(firstTrailingBit(1u), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x)), _wgslsmith_add_vec4_i32(~(~vec4<i32>(0i, u_input.b, global4[_wgslsmith_index_u32(u_input.a.x, 26u)], -2113i)), -(~vec4<i32>(var_0, global4[_wgslsmith_index_u32(u_input.a.x, 26u)], global3[_wgslsmith_index_u32(0u, 8u)], var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 8>();
    var var_0 = func_1();
    global2 = array<f32, 31>();
    global2 = array<f32, 31>();
    var_0 = Struct_2(var_0.a);
    var var_1 = Struct_4(!func_2(0u ^ ~u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(36548u, 31u)], 441f, 781f) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], 1023f, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]))), -var_0.a.b, func_1().a).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(u_input.a, firstTrailingBit(u_input.a)), abs(global4[_wgslsmith_index_u32(var_0.a.d, 26u)] & func_1().a.b.x));
}

