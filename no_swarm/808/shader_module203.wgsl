struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(-1484f, -433f);

var<private> global1: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global2: Struct_5 = Struct_5(vec3<bool>(false, true, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(min(arg_0.a.yyz, -vec3<i32>(-1i, arg_0.e, arg_2.b.e)), vec3<i32>(~2147483647i, -arg_2.b.e, countOneBits(arg_2.b.d)));
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~0u, arg_1, _wgslsmith_div_u32(u_input.d.x, arg_1), _wgslsmith_div_u32(0u, 4294967295u)), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 55095u) | _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 4294967295u, arg_1, 1u), vec4<u32>(37676u, arg_1, 0u, u_input.d.x))), vec4<u32>(~_wgslsmith_mult_u32(arg_1, arg_1), ~(~43004u), arg_1, arg_1), vec4<u32>(_wgslsmith_mult_u32(~4294967295u, 101802u), max(632u, arg_1), min(u_input.c, select(arg_1, u_input.d.x, arg_2.a)), u_input.c)) >> (reverseBits(~(min(vec4<u32>(u_input.c, arg_1, 1u, arg_1), vec4<u32>(29110u, 29423u, arg_1, u_input.c)) >> (~vec4<u32>(arg_1, u_input.c, arg_1, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global1 = array<vec2<bool>, 26>();
    var var_2 = -arg_0.a.yyx;
    let var_3 = -843f;
    return firstTrailingBit(abs(vec4<i32>(_wgslsmith_clamp_i32(-27473i, firstTrailingBit(u_input.a), 1i), var_0.x, var_0.x << (4294967295u % 32u), _wgslsmith_div_i32(arg_0.a.x, arg_0.d))));
}

fn func_2() -> bool {
    global0 = array<f32, 2>();
    let var_0 = _wgslsmith_sub_i32(54899i, u_input.b.x | ~(~(-2147483647i)));
    let var_1 = Struct_2(global2.a.x, Struct_1(~_wgslsmith_sub_vec4_i32(select(vec4<i32>(var_0, -1i, -1i, u_input.a), vec4<i32>(u_input.b.x, 0i, 2147483647i, var_0), vec4<bool>(false, global2.a.x, global2.a.x, global2.a.x)), func_3(Struct_1(vec4<i32>(var_0, var_0, var_0, var_0), -480f, global0[_wgslsmith_index_u32(u_input.c, 2u)], 28544i, u_input.a), u_input.d.x, Struct_2(false, Struct_1(vec4<i32>(-24726i, var_0, 56568i, var_0), 582f, global0[_wgslsmith_index_u32(u_input.d.x, 2u)], 8358i, -1205i), Struct_1(vec4<i32>(var_0, -2147483647i, var_0, 30060i), 351f, global0[_wgslsmith_index_u32(1u, 2u)], var_0, var_0), u_input.b.x))), -1416f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(u_input.d.x, 38349u), _wgslsmith_div_u32(29681u, u_input.c)), 2u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 2u)] - -143f))), all(vec4<bool>(true, false, false, true)) && true)), -31876i, 0i), Struct_1(vec4<i32>(38484i, -1i, firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, var_0)), abs(~26650i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 2u)] + global0[_wgslsmith_index_u32(21273u, 2u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(2818u, 2u)] * global0[_wgslsmith_index_u32(0u, 2u)]))), 1i, 0i), -35792i);
    global2 = Struct_5(global2.a);
    return true;
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    global0 = array<f32, 2>();
    var var_0 = vec3<bool>(func_2() || !global2.a.x, true, true);
    global1 = array<vec2<bool>, 26>();
    var var_1 = Struct_5(select(!(!(!global2.a)), !select(vec3<bool>(global2.a.x, global2.a.x, global2.a.x), !vec3<bool>(global2.a.x, true, false), select(vec3<bool>(global2.a.x, var_0.x, true), global2.a, global2.a)), var_0.x));
    var var_2 = Struct_5(!vec3<bool>(true, ~0u > select(u_input.c, u_input.c, true), abs(1i) >= _wgslsmith_div_i32(arg_0.d, arg_0.d)));
    return select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(var_2.a.x, var_2.a.x), global1[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(1u, 0u), u_input.d.x << (u_input.c % 32u)), 26u)]), select(select(select(global2.a.zz, var_0.zz, global2.a.x), !var_2.a.zx, global2.a.xy), var_0.xy, true)), !select(!(!vec2<bool>(global2.a.x, global2.a.x)), select(global1[_wgslsmith_index_u32(~u_input.c, 26u)], select(global2.a.yx, vec2<bool>(global2.a.x, var_2.a.x), global1[_wgslsmith_index_u32(u_input.d.x, 26u)]), select(var_1.a.zx, global1[_wgslsmith_index_u32(4294967295u, 26u)], false)), !select(vec2<bool>(var_2.a.x, var_2.a.x), var_0.zy, vec2<bool>(global2.a.x, var_2.a.x))), global1[_wgslsmith_index_u32(35174u, 26u)]);
}

fn func_4(arg_0: vec2<bool>) -> i32 {
    return ~(-1i);
}

fn func_5(arg_0: bool, arg_1: vec4<i32>) -> vec4<i32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, 89280u), 2u)];
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.c, 7434u, _wgslsmith_mult_u32(0u, u_input.d.x), abs(u_input.c)), ~(~vec4<u32>(75973u, u_input.d.x, u_input.d.x, 4294967295u))), _wgslsmith_sub_u32(~0u, ~u_input.d.x)), 2u)];
    var var_2 = true;
    return vec4<i32>(~0i, 0i, _wgslsmith_sub_i32(-_wgslsmith_add_i32(arg_1.x, arg_1.x) & (arg_1.x >> (~u_input.c % 32u)), _wgslsmith_sub_i32(-7454i, _wgslsmith_add_i32(u_input.a ^ arg_1.x, select(arg_1.x, u_input.a, arg_0)))), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(~4294967295u), 26u)];
    let var_1 = func_5(!(_wgslsmith_mod_u32(~u_input.d.x, 18583u) > abs(select(u_input.c, u_input.c, false))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-51096i, u_input.a) << (~1u % 32u), 22756i ^ u_input.b.x), -(~2147483647i), func_4(func_1(Struct_1(vec4<i32>(0i, -67652i, 0i, -13816i), -454f, global0[_wgslsmith_index_u32(41782u, 2u)], 43659i, -7279i))), (63125i >> (0u % 32u)) ^ u_input.a));
    global0 = array<f32, 2>();
    global1 = array<vec2<bool>, 26>();
    global2 = Struct_5(select(select(select(select(global2.a, vec3<bool>(global2.a.x, false, global2.a.x), global2.a), !global2.a, true), !(!global2.a), !var_0.x & true), select(vec3<bool>(true, true, !var_0.x), global2.a, var_0.x), true));
    global2 = Struct_5(!(!global2.a));
    var var_2 = global2.a;
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1697f)))), var_2.x, select(vec2<bool>(false, !var_0.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 2u)] <= 979f, true), vec2<bool>(false, func_2()))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(max(u_input.d.x & 35975u, u_input.c), u_input.c, select(~u_input.d.x, 61244u, true)), 2492i, func_3(Struct_1(~var_1, _wgslsmith_f_op_f32(-var_3.a.a), _wgslsmith_f_op_f32(max(702f, global0[_wgslsmith_index_u32(0u, 2u)])), -func_4(vec2<bool>(var_0.x, false)), ~_wgslsmith_dot_vec3_i32(var_1.wxz, var_1.wxy)), ~0u, Struct_2(!var_3.a.c.x | true, Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(55394i, var_1.x, var_1.x, 0i), var_1), _wgslsmith_f_op_f32(2017f - var_3.a.a), -738f, var_1.x, -54274i ^ var_1.x), Struct_1(vec4<i32>(0i, 21552i, var_1.x, var_1.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(25821u, 2u)] * -480f), _wgslsmith_div_f32(-372f, global0[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_div_i32(-1621i, -1i), -var_1.x), 2147483647i)), var_1.xzw, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-332f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(51826u, 2u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 2u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 2u)])) * _wgslsmith_f_op_f32(var_3.a.a + var_3.a.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-357f, var_3.a.a, var_3.a.a)))))));
}

