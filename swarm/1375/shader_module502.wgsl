struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(11991i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-55855i, -26063i), vec2<i32>(-4857i, -1i), vec2<i32>(1i, 19032i), vec2<i32>(1i, 8159i), vec2<i32>(2147483647i, -29456i), vec2<i32>(1i, -41772i), vec2<i32>(4985i, 13107i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(52862i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), 26746i), vec2<i32>(22593i, i32(-2147483648)), vec2<i32>(-1i, -25378i), vec2<i32>(30687i, -35697i), vec2<i32>(1i, -32349i), vec2<i32>(1i, -27764i), vec2<i32>(1989i, i32(-2147483648)), vec2<i32>(2147483647i, -11177i), vec2<i32>(2324i, -6054i), vec2<i32>(-18960i, 2147483647i), vec2<i32>(48672i, 8348i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(39570i, -11325i));

var<private> global1: Struct_1;

var<private> global2: vec3<bool>;

var<private> global3: f32;

var<private> global4: array<f32, 11> = array<f32, 11>(607f, -375f, -820f, 1619f, -817f, 903f, -328f, 903f, -390f, 409f, -786f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.a, _wgslsmith_f_op_f32(max(1319f, 310f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-895f, -306f))))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(10805u, 11u)]))) + 1415f)), true, global1.c, global1.b);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = select(!vec3<bool>(!(!global1.d), false, true), vec3<bool>(global1.b && global2.x, all(vec4<bool>(26952u <= u_input.a, true, true, false)), (true | func_1().b) & false), vec3<bool>(global2.x, false, !arg_0.b));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(u_input.d.x & u_input.d.x, 11u)])))));
    global1 = func_1();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - 417f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1099f)))), global2.x)) - -102f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-264f * -795f) + _wgslsmith_f_op_f32(-global1.a)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a, -855f, 621f))))))));
    return vec4<u32>(abs(_wgslsmith_clamp_u32(1u, 0u, 0u) << (0u % 32u)), u_input.e.x, u_input.d.x, u_input.e.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1, arg_1), 11u)]))), true, -457i, select(any(!vec3<bool>(true, true, global1.d)) != true, (func_1().d | global2.x) | true, global2.x));
    global2 = !select(select(vec3<bool>(true, global1.b, all(vec3<bool>(true, true, global2.x))), vec3<bool>(true, true, true), vec3<bool>(!var_0.d, true & var_0.d, true | global1.b)), vec3<bool>(func_1().b, true, true), vec3<bool>(!(true | global2.x), !global2.x, var_0.b));
    global4 = array<f32, 11>();
    global4 = array<f32, 11>();
    global2 = select(select(vec3<bool>(true, true, true), select(select(!vec3<bool>(true, var_0.b, global1.b), !vec3<bool>(var_0.b, true, true), select(global2.x, false, var_0.d)), select(!vec3<bool>(true, global2.x, global2.x), !vec3<bool>(true, false, global2.x), vec3<bool>(false, false, global2.x)), !vec3<bool>(true, true, global2.x)), false), !vec3<bool>(_wgslsmith_f_op_f32(-global1.a) < _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(60160u, 11u)] + var_0.a), true, var_0.b), vec3<bool>(select(-u_input.c != 1i, all(vec4<bool>(true, false, false, true)), (global4[_wgslsmith_index_u32(u_input.d.x, 11u)] > 339f) && func_1().d), any(vec3<bool>(false && global2.x, true, true)), true && !(arg_1 != 16541u)));
    return select(vec3<bool>(all(vec4<bool>(true, true, true, true)), all(select(select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(false, true, false, global1.d), vec4<bool>(var_0.b, global1.d, true, true)), !vec4<bool>(var_0.b, var_0.d, false, false), !var_0.b)), global1.d), vec3<bool>(global1.b, false, false), global2.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global2 = !func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 11u)], arg_0.a, arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-321f, 763f, -1000f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(311f, global1.a, global4[_wgslsmith_index_u32(u_input.d.x, 11u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1739f, 396f, global1.a) - vec3<f32>(arg_0.a, arg_0.a, arg_0.a)))), _wgslsmith_dot_vec4_u32(func_3(Struct_1(207f, false, 76128i, false)), _wgslsmith_sub_vec4_u32(vec4<u32>(38921u, 5214u, u_input.d.x, u_input.e.x), ~vec4<u32>(26076u, u_input.e.x, u_input.d.x, u_input.e.x))));
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~func_3(arg_0).x, u_input.d.x, u_input.e.x, u_input.a), ~vec4<u32>(~u_input.a, u_input.e.x, u_input.d.x, u_input.e.x));
    let var_1 = Struct_1(522f, func_1().b, ~select(~u_input.b.x, _wgslsmith_div_i32(u_input.c, u_input.c), true) ^ (_wgslsmith_mod_i32(-2147483647i, max(u_input.c, arg_0.c)) & _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(20641i, u_input.b.x)), _wgslsmith_mod_vec2_i32(u_input.b.xx, u_input.b.xw))), arg_0.d);
    var_0 = 13887u;
    let var_2 = var_1.d;
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -734f), var_2, global1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + 171f), _wgslsmith_f_op_f32(step(-765f, -657f)))) <= _wgslsmith_f_op_f32(-arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_2(func_1());
    var var_0 = func_1();
    var var_1 = _wgslsmith_div_f32(func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4[_wgslsmith_index_u32(62067u, 11u)], global4[_wgslsmith_index_u32(u_input.a, 11u)])), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, global1.a, global1.a), vec3<f32>(global4[_wgslsmith_index_u32(u_input.d.x, 11u)], global1.a, global4[_wgslsmith_index_u32(u_input.d.x, 11u)])), countOneBits(u_input.d.x)).x, -(i32(-1i) * -2147483647i), !(!global1.b))).a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(252f + var_0.a)), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.d.x), 0u), 11u)])));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(64014u, max(4294967295u, u_input.e.x)), 11u)], _wgslsmith_f_op_f32(276f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a, 11u)] + 761f) + _wgslsmith_f_op_f32(global1.a + var_0.a)))) + vec4<f32>(211f, -944f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-384f - var_0.a))), -907f), global1.a));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x + global1.a)))))), true, 4510i, any(select(select(vec4<bool>(false, false, global2.x, true), !vec4<bool>(global2.x, global2.x, true, true), select(vec4<bool>(global2.x, false, false, true), vec4<bool>(var_0.d, global2.x, false, global1.d), vec4<bool>(global1.d, global2.x, false, var_0.d))), vec4<bool>(true, var_0.b && true, true, func_1().d), !select(vec4<bool>(true, true, var_0.d, false), vec4<bool>(false, global2.x, global1.b, false), var_0.d))));
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(select(u_input.b.wwx, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(31374i, 0i, 1i), vec3<i32>(-8431i, -34928i, -2147483647i)), max(u_input.b.xyx, vec3<i32>(var_0.c, 9689i, -5888i))), !vec3<bool>(var_3.d, var_0.d, true)), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_0.c, var_0.c, -4855i, 6104i)), -10375i, -global1.c) & _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.yxw, vec3<i32>(var_3.c, var_3.c, var_3.c)), abs(vec3<i32>(23369i, 0i, 2147483647i)), u_input.b.xyx), vec3<i32>(firstTrailingBit(28077i), _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, var_3.c), abs(global1.c)), 0i)));
}

