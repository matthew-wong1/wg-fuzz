struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18>;

var<private> global1: array<f32, 7>;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true));

var<private> global3: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = ~select(countOneBits(~max(1u, 72412u)), 4294967295u, false);
    global1 = array<f32, 7>();
    global2 = array<vec4<bool>, 2>();
    global2 = array<vec4<bool>, 2>();
    global1 = array<f32, 7>();
    return vec2<i32>(global3.d.x, 1i);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<i32> {
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(-arg_3.x), global3.a.x) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-792f, global3.a.x, global1[_wgslsmith_index_u32(4294967295u, 7u)]))), _wgslsmith_f_op_vec3_f32(global3.a - vec3<f32>(-231f, -380f, -675f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.a.x, 775f, global1[_wgslsmith_index_u32(4294967295u, 7u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, global3.a.x, arg_2.a.x) - vec3<f32>(-677f, 1438f, 1000f)), false)))), func_3(arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0.a)) + _wgslsmith_div_vec3_f32(global3.a, arg_0.a)), max(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, arg_2.d.x), vec2<i32>(1i, 0i)), arg_2.d.zy), any(global2[_wgslsmith_index_u32(u_input.a, 2u)]) || arg_0.c, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.x, arg_2.d.x, -12829i), arg_0.d) | vec3<i32>(global3.d.x, 2689i, u_input.b))), !(select(all(global2[_wgslsmith_index_u32(u_input.a, 2u)]), arg_2.c, arg_2.c) & (!arg_0.c & arg_0.c)), vec3<i32>(~_wgslsmith_mult_i32(global3.b.x, 22459i), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_2.b.x, global3.b.x, -1i, u_input.b), vec4<i32>(-1i, 809i, arg_2.d.x | arg_2.b.x, u_input.b)), 9573i));
    let var_0 = arg_2.a.zx;
    return -arg_0.d.yz;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> i32 {
    var var_0 = global3.b.x < 1i;
    global2 = array<vec4<bool>, 2>();
    var var_1 = ~(~((select(vec4<u32>(14293u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), global2[_wgslsmith_index_u32(u_input.a, 2u)]) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))) ^ (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 22153u, 67932u, 1u)) | ~vec4<u32>(4294967295u, 0u, 1u, 7207u))));
    var var_2 = ~vec3<u32>(var_1.x, 8568u, 0u);
    var var_3 = arg_0;
    return var_3.d.x;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<i32> {
    return vec3<i32>(global3.b.x ^ (_wgslsmith_div_i32(-arg_1.x, arg_1.x) | -(global3.d.x ^ arg_2.d.x)), countOneBits(19106i), func_4(Struct_1(global3.a, reverseBits(func_2(arg_2, vec2<u32>(1u, u_input.a), arg_2, global3.a.yx)), true, reverseBits(-global3.d)), arg_2.a.xx, select(select(vec2<bool>(true, true), !vec2<bool>(true, arg_2.c), !vec2<bool>(true, global3.c)), select(select(vec2<bool>(arg_2.c, false), vec2<bool>(arg_2.c, global3.c), vec2<bool>(false, true)), select(vec2<bool>(arg_2.c, arg_2.c), vec2<bool>(arg_2.c, true), vec2<bool>(true, arg_2.c)), !arg_2.c), any(!vec4<bool>(global3.c, global3.c, true, global3.c))), global3.d));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 1u;
    global0 = array<vec4<f32>, 18>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-985f)), arg_3.a.x)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.a.x * 1667f), _wgslsmith_f_op_f32(step(arg_3.a.x, -1626f)))), arg_1.a.x, 419f);
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(~countOneBits(14958u)), 7u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a.x;
    var_0 = _wgslsmith_f_op_f32(step(-952f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.a.x)) - _wgslsmith_f_op_f32(ceil(-272f)))));
    global3 = func_5(vec2<bool>(global3.c, all(vec3<bool>(global3.c, true, true))), Struct_1(_wgslsmith_f_op_vec3_f32(global3.a * _wgslsmith_f_op_vec3_f32(global3.a * _wgslsmith_div_vec3_f32(vec3<f32>(685f, global3.a.x, 545f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 7u)], 195f, global3.a.x)))), vec2<i32>(reverseBits(_wgslsmith_div_i32(global3.b.x, u_input.b)), _wgslsmith_dot_vec2_i32(-vec2<i32>(11013i, u_input.b), -vec2<i32>(u_input.b, u_input.b))), false, ~func_1(u_input.a & u_input.a, _wgslsmith_mult_vec3_i32(global3.d, vec3<i32>(-21558i, u_input.b, global3.d.x)), Struct_1(global3.a, vec2<i32>(u_input.b, u_input.b), global3.c, global3.d))), !(true == (global3.c || true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, -1039f, global3.a.x) - vec3<f32>(global3.a.x, global3.a.x, 1087f))), countOneBits(-vec2<i32>(u_input.b, u_input.b)), false, _wgslsmith_clamp_vec3_i32(func_1(1u, ~global3.d, Struct_1(vec3<f32>(-796f, -1288f, -1886f), vec2<i32>(global3.d.x, u_input.b), global3.c, global3.d)), vec3<i32>(9065i, max(global3.d.x, global3.b.x), 1i), _wgslsmith_div_vec3_i32(~global3.d, reverseBits(vec3<i32>(global3.d.x, u_input.b, global3.d.x))))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(step(383f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 7u)]))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(820f)))))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, global1[_wgslsmith_index_u32(u_input.a, 7u)], global3.a.x) * vec3<f32>(global1[_wgslsmith_index_u32(49566u, 7u)], -405f, 126f))))), _wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-42309i, u_input.b), -vec2<i32>(1i, global3.b.x)), (global3.b & (global3.d.zx ^ global3.d.zx)) | abs(global3.b)), select(select(false, !global3.c, true), global3.c, !global3.c) & any(select(vec2<bool>(global3.c, false), vec2<bool>(true, true), select(vec2<bool>(true, global3.c), vec2<bool>(global3.c, true), vec2<bool>(global3.c, true)))), countOneBits(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, 32606i), -25254i), u_input.b, -11275i)));
    var var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(u_input.a), u_input.a, _wgslsmith_clamp_u32(4294967295u, 1798u, 1u), ~u_input.a), select(vec4<u32>(u_input.a, 1u, u_input.a, 0u) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), true)), ~(~vec4<u32>(44109u, 60930u, u_input.a, 51289u))), -_wgslsmith_clamp_i32(-33353i, func_5(!vec2<bool>(true, global3.c), Struct_1(var_2.a, global3.d.yy, true, vec3<i32>(2147483647i, u_input.b, u_input.b)), any(vec2<bool>(global3.c, false)), func_5(vec2<bool>(global3.c, false), Struct_1(vec3<f32>(var_2.a.x, 780f, -230f), var_2.b, true, vec3<i32>(var_2.b.x, var_2.b.x, 39723i)), global3.c, Struct_1(vec3<f32>(-1242f, global1[_wgslsmith_index_u32(u_input.a, 7u)], 1000f), vec2<i32>(-24i, 14796i), global3.c, global3.d))).b.x, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.a.x, var_2.a.x, all(vec4<bool>(false, global3.c, global3.c, false)))) - -731f), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 10080u), firstLeadingBit(vec2<u32>(u_input.a, u_input.a))), max(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(17655u, u_input.a) % vec2<u32>(32u)), vec2<u32>(1u, 1u))), 7u)]);
}

