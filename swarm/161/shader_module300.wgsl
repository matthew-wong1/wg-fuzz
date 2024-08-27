struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(167f, -745f);

var<private> global1: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true));

var<private> global2: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

var<private> global3: Struct_2 = Struct_2(vec2<i32>(i32(-2147483648), 2147483647i));

var<private> global4: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec2<f32> {
    global1 = array<vec4<bool>, 18>();
    var var_0 = select(global2[_wgslsmith_index_u32(arg_1 << (1u % 32u), 8u)], !select(select(select(global2[_wgslsmith_index_u32(arg_1, 8u)], vec3<bool>(arg_0.x, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, arg_0.x, arg_0.x), global2[_wgslsmith_index_u32(0u, 8u)], arg_0.x), !arg_0.x), select(select(global2[_wgslsmith_index_u32(arg_1, 8u)], global2[_wgslsmith_index_u32(arg_1, 8u)], true), vec3<bool>(arg_0.x, true, true), !global2[_wgslsmith_index_u32(u_input.c, 8u)]), arg_0.x), vec3<bool>(select(~arg_1 >= min(u_input.c, arg_1), true, false), true, any(vec2<bool>(true, true))));
    let var_1 = min(u_input.b, u_input.b);
    global2 = array<vec3<bool>, 8>();
    let var_2 = arg_0.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1452f, 776f), vec2<f32>(790f, global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1559f)))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-244f, 1572f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1184f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(433f, -134f) * vec2<f32>(1709f, -135f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(false, false), ~1u))))));
    global3 = Struct_2(_wgslsmith_mod_vec2_i32(select(_wgslsmith_sub_vec2_i32(arg_1, global3.a) >> (countOneBits(vec2<u32>(13294u, u_input.c)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(arg_1, vec2<i32>(-3979i, -2147483647i)), arg_0.x), min(abs(~vec2<i32>(global3.a.x, arg_1.x)), -reverseBits(u_input.a.wy))));
    global3 = Struct_2(vec2<i32>(-arg_1.x, ~global3.a.x) >> (abs(~vec2<u32>(14664u, u_input.c)) % vec2<u32>(32u)));
    var var_1 = Struct_2(vec2<i32>(-9893i, global3.a.x));
    let var_2 = Struct_2(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.x, var_1.a.x, -1i), u_input.a))), vec2<i32>(global3.a.x, u_input.b)));
    return true;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(u_input.a.yw);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-377f, -207f, 1478f) + vec3<f32>(-1000f, 1151f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, -522f, global0.x))))));
    let var_2 = select(!vec2<bool>(select(true, true, true), false), vec2<bool>(_wgslsmith_div_i32(u_input.a.x, global3.a.x) <= ~global3.a.x, select(true, func_2(vec2<bool>(true, true), global3.a >> (vec2<u32>(81021u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-722f - var_1.x)), any(global2[_wgslsmith_index_u32(~0u, 8u)]))), true);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1 + var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1047f, var_1.x, -1725f)), vec3<bool>(var_2.x, var_2.x, true))))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x + -237f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) * 1f), -964f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1)) * vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(var_1.x + var_1.x)))));
    var var_4 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.ywy, vec3<i32>(global3.a.x, 1i, i32(-1i) * -global3.a.x)), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i ^ global3.a.x, 0i, -u_input.b)), _wgslsmith_sub_vec3_i32(countOneBits(u_input.a.wyx), u_input.a.yxx)));
    return Struct_3(Struct_2(-global3.a), !vec2<bool>(select(56583i <= u_input.b, true, true), true), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_div_f32(var_3.x, global0.x)), 687f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-607f, -1760f, _wgslsmith_f_op_f32(f32(-1f) * -306f), -372f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global0.x, 228f)), 1419f, _wgslsmith_f_op_f32(-global0.x), global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-123f + global0.x), _wgslsmith_f_op_f32(min(global0.x, -1060f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -274f, 374f, 2116f))))));
    let var_1 = func_1();
    var var_2 = ~_wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(9995u, 1u, u_input.c))), vec3<u32>(~u_input.c, u_input.c | 0u, _wgslsmith_mod_u32(u_input.c, 4737u)) & vec3<u32>(max(u_input.c, u_input.c), ~39262u, u_input.c));
    let var_3 = Struct_2(~(-global3.a));
    var var_4 = true;
    global4 = 39930i | ~_wgslsmith_add_i32(12033i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.a.a.x, global3.a.x, var_1.a.a.x, var_1.a.a.x), vec4<i32>(global3.a.x, u_input.b, var_1.a.a.x, 2147483647i), vec4<bool>(false, var_1.b.x, true, var_1.b.x)), vec4<i32>(-22697i, u_input.b, var_3.a.x, u_input.b)));
    global4 = var_1.a.a.x;
    let var_5 = var_1.b.x;
    var var_6 = (~(_wgslsmith_clamp_u32(var_2.x, var_2.x, 45908u) << (var_2.x % 32u)) < u_input.c) == (11473u < firstLeadingBit(firstTrailingBit(~10240u)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, vec2<i32>(-u_input.a.x, ~_wgslsmith_mult_i32(_wgslsmith_div_i32(28684i, var_3.a.x), var_3.a.x >> (1u % 32u))), var_1.a.a);
}

