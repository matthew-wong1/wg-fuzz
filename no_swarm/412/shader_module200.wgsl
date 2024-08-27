struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 5>;

var<private> global2: Struct_4 = Struct_4(vec4<u32>(24390u, 11132u, 66386u, 0u), Struct_3(vec4<i32>(-44270i, 2147483647i, -53927i, i32(-2147483648)), false));

var<private> global3: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec4<u32>(0u, 44871u, 1u, 24942u), Struct_3(vec4<i32>(33427i, -36183i, 0i, -27342i), true)), Struct_4(vec4<u32>(141121u, 0u, 4728u, 1u), Struct_3(vec4<i32>(3584i, i32(-2147483648), 1i, 19205i), true)), Struct_4(vec4<u32>(0u, 12852u, 1u, 49430u), Struct_3(vec4<i32>(-1i, 2147483647i, 1i, 61318i), false)), Struct_4(vec4<u32>(4294967295u, 28748u, 11969u, 4294967295u), Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -20086i), false)), Struct_4(vec4<u32>(0u, 40940u, 4294967295u, 60863u), Struct_3(vec4<i32>(-69636i, 5265i, 1i, 0i), false)), Struct_4(vec4<u32>(62736u, 6132u, 1u, 69086u), Struct_3(vec4<i32>(-1i, -12291i, 11006i, 0i), true)), Struct_4(vec4<u32>(11583u, 0u, 1u, 39975u), Struct_3(vec4<i32>(13496i, 25672i, i32(-2147483648), -63172i), true)), Struct_4(vec4<u32>(4294967295u, 65112u, 4294967295u, 1u), Struct_3(vec4<i32>(1i, 6982i, -43723i, 1i), false)), Struct_4(vec4<u32>(17414u, 21527u, 19002u, 0u), Struct_3(vec4<i32>(-2695i, 12548i, -28994i, i32(-2147483648)), false)), Struct_4(vec4<u32>(1u, 45477u, 11507u, 0u), Struct_3(vec4<i32>(-40946i, -36879i, i32(-2147483648), -10960i), false)), Struct_4(vec4<u32>(8577u, 14472u, 43383u, 5722u), Struct_3(vec4<i32>(7104i, 2147483647i, 86534i, 16629i), true)), Struct_4(vec4<u32>(33613u, 4294967295u, 75726u, 538u), Struct_3(vec4<i32>(0i, 2147483647i, 1i, -53035i), true)), Struct_4(vec4<u32>(29459u, 6631u, 35324u, 17559u), Struct_3(vec4<i32>(18038i, -12955i, 1i, 2055i), false)), Struct_4(vec4<u32>(4294967295u, 27580u, 4294967295u, 0u), Struct_3(vec4<i32>(i32(-2147483648), 1i, -31225i, 2147483647i), false)), Struct_4(vec4<u32>(11631u, 49687u, 0u, 8933u), Struct_3(vec4<i32>(0i, 70338i, 4914i, 2147483647i), true)), Struct_4(vec4<u32>(0u, 1u, 86344u, 4294967295u), Struct_3(vec4<i32>(2147483647i, 14989i, 5749i, -1i), false)), Struct_4(vec4<u32>(19006u, 107924u, 1u, 4294967295u), Struct_3(vec4<i32>(23730i, -13576i, i32(-2147483648), 2147483647i), false)), Struct_4(vec4<u32>(47202u, 102137u, 4294967295u, 1u), Struct_3(vec4<i32>(-1i, 2147483647i, 2659i, 1i), true)));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: i32, arg_3: bool) -> u32 {
    let var_0 = ~firstTrailingBit(~_wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.a.x, global2.a.x), u_input.a.zz), global2.a.yx));
    let var_1 = arg_0;
    global2 = Struct_4(~select(global2.a, vec4<u32>(var_0.x, ~4294967295u, 1u, 1u), false), var_1);
    let var_2 = var_1.a.x;
    global2 = global3[_wgslsmith_index_u32(select(~global2.a.x, ~_wgslsmith_div_u32(~(~1u), countOneBits(global2.a.x | u_input.a.x)), global2.b.b), 18u)];
    return select(var_0.x, var_0.x, all(select(!(!vec2<bool>(true, var_1.b)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(arg_0.b, arg_0.b)), vec2<bool>(true, true), any(vec4<bool>(true, false, var_1.b, arg_0.b))), vec2<bool>(true, true))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = global2.a.yzz;
    let var_1 = vec4<u32>(global2.a.x, (func_3(Struct_3(vec4<i32>(arg_2.b, arg_2.b, 0i, arg_2.a.x), false), vec2<i32>(-2778i, -2147483647i), -global2.b.a.x, true) << (1704u % 32u)) ^ max(4294967295u, 4294967295u), max(global2.a.x, _wgslsmith_div_u32(abs(countOneBits(31847u)), ~25977u)), ~firstLeadingBit(~arg_3));
    global2 = global3[_wgslsmith_index_u32(0u, 18u)];
    var var_2 = global2.b;
    var_2 = global2.b;
    return 15947u;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> Struct_1 {
    global2 = Struct_4(global2.a, Struct_3(~_wgslsmith_add_vec4_i32(firstLeadingBit(global2.b.a), abs(vec4<i32>(u_input.c, u_input.c, -18493i, arg_0.a.x))), arg_1 & select(all(vec4<bool>(false, true, false, arg_1)), arg_0.b, u_input.b <= global2.a.x)));
    global3 = array<Struct_4, 18>();
    global2 = Struct_4(~vec4<u32>(~1u, 4294967295u, firstLeadingBit(~8348u), ~func_2(vec3<bool>(global2.b.b, false, true), vec4<bool>(arg_1, arg_0.b, false, false), Struct_1(arg_0.a.yx, global2.b.a.x), u_input.b)), Struct_3(vec4<i32>(abs(select(63538i, arg_0.a.x, arg_1)), 1i, _wgslsmith_div_i32(-2147483647i >> (global2.a.x % 32u), arg_0.a.x), select(~14812i, 1i, false)), !(1u <= global2.a.x)));
    global3 = array<Struct_4, 18>();
    global3 = array<Struct_4, 18>();
    return Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(arg_0.a.yyy, arg_0.a.xxy), firstLeadingBit(u_input.c)), ~(global2.b.a.x << (~(~29790u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 18>();
    global1 = array<Struct_4, 5>();
    var var_0 = func_1(Struct_3(-(vec4<i32>(-1i) * -vec4<i32>(-41530i, 28251i, -16066i, u_input.c)), global2.b.b), false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-597f, -674f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(729f + -1528f)), _wgslsmith_f_op_f32(sign(-1650f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) * _wgslsmith_f_op_f32(abs(300f))), _wgslsmith_f_op_f32(floor(-637f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -211f), 1741f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -398f))), !(!select(vec4<bool>(global2.b.b, global2.b.b, global2.b.b, true), vec4<bool>(global2.b.b, global2.b.b, global2.b.b, true), vec4<bool>(true, global2.b.b, false, false)))))));
    var var_2 = vec4<bool>(true, select(!((global2.b.b & global2.b.b) && (global2.b.b || false)), true, select(global2.b.b, 1u < ~global2.a.x, !global2.b.b | any(vec3<bool>(false, true, false)))), !(~4294967295u != abs(u_input.a.x)), true);
    let var_3 = 4031u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.c, _wgslsmith_mult_i32(u_input.c, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.c, 0i), global2.b.a), vec4<i32>(1i, u_input.c, 0i, u_input.c))), 1i, select(~_wgslsmith_dot_vec3_i32(global2.b.a.wxz, global2.b.a.xyy), -_wgslsmith_div_i32(1i, var_0.a.x), true)), global2.b.a.yzz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.zy))))), var_1.xw, countOneBits(~u_input.c) >= ~(i32(-1i) * -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1788f, var_1.x)), _wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(f32(-1f) * -1397f))));
}

