struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true));

var<private> global1: array<vec4<i32>, 2>;

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = -346f;
    var var_1 = 13303i;
    var_1 = u_input.a.x >> (~u_input.d.x % 32u);
    var_1 = -83297i;
    global2 = vec2<bool>(true, true);
    return vec2<f32>(_wgslsmith_f_op_f32(-var_0), 749f);
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    var var_0 = !arg_1.a.e.zz;
    var var_1 = global1[_wgslsmith_index_u32(1u, 2u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(func_3(arg_1.b));
    global1 = array<vec4<i32>, 2>();
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-514f, 2851f, arg_1.a.c, arg_1.a.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(194f, var_2.x, var_2.x, arg_1.a.c)))), vec4<f32>(1f, var_2.x, var_2.x, _wgslsmith_f_op_f32(min(arg_1.a.c, 1790f))))), vec4<f32>(_wgslsmith_f_op_f32(var_2.x + var_2.x), 1459f, _wgslsmith_f_op_f32(197f - _wgslsmith_f_op_f32(-arg_1.a.c)), _wgslsmith_div_f32(-366f, _wgslsmith_f_op_f32(-arg_1.a.c))), false))));
    return arg_1.b;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> bool {
    global2 = select(select(arg_0.a.e.zz, !(!(!arg_1.a.e.xx)), !any(arg_0.a.e)), !(!(!arg_0.a.e.xx)), !(!(!arg_1.a.e.zx)));
    global2 = arg_0.a.e.wx;
    global0 = array<vec3<bool>, 25>();
    global0 = array<vec3<bool>, 25>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c)))), 717f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1928f))), arg_0.a.c);
    return ~max(~firstLeadingBit(1u), 4294967295u) <= (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.a, u_input.d.x, 41260u, u_input.d.x), ~vec4<u32>(arg_0.a.d, 40521u, u_input.d.x, arg_1.a.d)), u_input.d.x) & _wgslsmith_dot_vec4_u32(~(~vec4<u32>(82397u, arg_0.a.d, u_input.d.x, arg_1.a.d)), vec4<u32>(~arg_0.a.d, ~arg_0.a.d, arg_0.a.a, arg_1.a.d ^ arg_0.a.d)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: bool) -> vec2<bool> {
    var var_0 = !func_4(Struct_4(arg_0, func_2(_wgslsmith_div_i32(0i, -1i), Struct_4(arg_0, Struct_2(u_input.b.xxz), Struct_2(vec3<i32>(1i, -26393i, 30734i)), vec3<i32>(2147483647i, 18235i, -2147483647i)), u_input.c), func_2(min(4583i, 17384i), Struct_4(Struct_1(u_input.d.x, false, arg_0.c, arg_0.a, arg_0.e), Struct_2(vec3<i32>(u_input.b.x, u_input.c, 7612i)), Struct_2(vec3<i32>(u_input.c, 0i, u_input.b.x)), vec3<i32>(u_input.b.x, -24818i, -19072i)), _wgslsmith_sub_i32(u_input.c, u_input.c)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.a), u_input.a.x, 19814i)), Struct_4(Struct_1(1u, !global2.x, _wgslsmith_f_op_f32(sign(-1783f)), 1u, vec4<bool>(arg_3, true, true, global2.x)), Struct_2(vec3<i32>(u_input.b.x, 69727i, u_input.a.x)), func_2(2147483647i << (arg_0.a % 32u), Struct_4(Struct_1(u_input.d.x, global2.x, arg_0.c, arg_0.a, arg_0.e), Struct_2(u_input.b.wxw), Struct_2(vec3<i32>(1i, u_input.a.x, 1i)), u_input.b.xxw), -1i), ~countOneBits(vec3<i32>(u_input.c, 13151i, -13598i))));
    let var_1 = u_input.b;
    var var_2 = firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(max(var_1.x, u_input.b.x) << (countOneBits(u_input.d.x) % 32u), reverseBits(-33259i) ^ reverseBits(u_input.c)), u_input.a));
    var var_3 = reverseBits(~vec2<u32>(_wgslsmith_add_u32(0u, ~1u), abs(u_input.d.x) << (~57478u % 32u)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, 112f)))))) - _wgslsmith_f_op_f32(exp2(arg_0.c)));
    return arg_0.e.yx;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    global1 = array<vec4<i32>, 2>();
    let var_0 = func_2(-(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.c, -1i)))), Struct_4(arg_1, Struct_2(~countOneBits(vec3<i32>(u_input.c, 1i, 1i))), Struct_2(~countOneBits(vec3<i32>(u_input.c, u_input.b.x, u_input.b.x))), vec3<i32>(-u_input.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.c), vec3<i32>(0i, 23585i, u_input.a.x)), 15784i)), i32(-1i) * -_wgslsmith_add_i32(u_input.a.x, -58996i));
    let var_1 = -vec2<i32>(min(select(-14098i, ~(-8085i), arg_0.x), -13260i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x & u_input.c, _wgslsmith_sub_i32(u_input.c, 32101i)), abs(-10093i)));
    global0 = array<vec3<bool>, 25>();
    var var_2 = -reverseBits(var_1.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(global0[_wgslsmith_index_u32(u_input.d.x >> (~u_input.d.x % 32u), 25u)], vec3<bool>(true, select(global2.x, !global2.x, global2.x), func_5(func_1(Struct_1(96099u, true, 799f, u_input.d.x, vec4<bool>(true, true, global2.x, global2.x)), 801f, global2.x, global2.x), Struct_1(u_input.d.x, global2.x, -237f, u_input.d.x, vec4<bool>(global2.x, true, global2.x, global2.x)))), select(vec3<bool>(true, true, true), !global0[_wgslsmith_index_u32(u_input.d.x, 25u)], false)), vec3<bool>(all(select(select(vec2<bool>(true, global2.x), vec2<bool>(false, true), false), select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, false), vec2<bool>(global2.x, true)), global2.x)), global2.x, global2.x), false);
    var var_1 = 2147483647i;
    global2 = var_0.xz;
    let var_2 = 4294967295u;
    let var_3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(-((func_2(u_input.c, Struct_4(Struct_1(var_2, false, -224f, var_2, vec4<bool>(false, false, var_0.x, global2.x)), Struct_2(vec3<i32>(22510i, -81662i, 38612i)), Struct_2(vec3<i32>(-53783i, 2147483647i, u_input.a.x)), u_input.b.zzz), u_input.c).a.zx & -vec2<i32>(u_input.c, 0i)) & vec2<i32>(-55082i, func_2(u_input.b.x, Struct_4(Struct_1(u_input.d.x, var_0.x, 1143f, var_3.x, vec4<bool>(false, global2.x, global2.x, global2.x)), Struct_2(u_input.b.xyw), Struct_2(vec3<i32>(u_input.a.x, -2147483647i, 1417i)), u_input.b.xyw), 1i).a.x)), ~(-u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(~(-3884i) << (var_3.x % 32u), ~firstTrailingBit(57754i), u_input.b.x, ~2147483647i | (u_input.b.x | -45637i)), u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(35652u, 4294967295u, 7205u, var_2) >> (vec4<u32>(var_2, 50618u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), ~vec4<u32>(var_3.x, 1u, 1u, 1u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, var_3.x) & (vec2<u32>(67848u, var_3.x) << (var_3.zz % vec2<u32>(32u))), ~(~vec2<u32>(0u, 63189u)), u_input.d.zz)));
}

