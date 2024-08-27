struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-976f, -301f, -272f), 8692i, 15137u, vec3<u32>(41898u, 4294967295u, 1u));

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<vec4<bool>, 2>;

var<private> global3: array<Struct_1, 9>;

var<private> global4: array<bool, 25> = array<bool, 25>(true, true, true, true, false, false, true, false, true, false, true, true, false, false, false, true, true, false, false, false, true, true, true, false, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = !arg_0.x;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1044f, arg_1.a.x, global0.a.x), _wgslsmith_f_op_vec3_f32(-global0.a))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, arg_1.a.x, global0.a.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a.x, arg_1.a.x, global0.a.x), vec3<f32>(-1128f, 1407f, -754f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 269f, global0.a.x)))), global0.b ^ -(~(~arg_1.b)), reverseBits(arg_1.d.x), ~reverseBits(~abs(arg_1.d)));
    global2 = array<vec4<bool>, 2>();
    global4 = array<bool, 25>();
    var var_1 = _wgslsmith_div_vec2_u32(~(max(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.e.x, global0.c)) >> (global0.d.xz % vec2<u32>(32u))), ~(~(~u_input.b)));
    return ~firstTrailingBit(~(_wgslsmith_div_u32(var_1.x, 10063u) | 0u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    global1 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x));
    let var_1 = _wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(global0.b, -29012i, 0i, -1i), _wgslsmith_sub_vec4_i32(-arg_1, arg_1)), arg_1, select(arg_1, _wgslsmith_sub_vec4_i32(arg_1, arg_1 ^ vec4<i32>(arg_1.x, 19646i, 0i, arg_0.b)) << ((~vec4<u32>(arg_0.d.x, 37753u, 70122u, 3858u) | vec4<u32>(0u, 1u, u_input.c, 56850u)) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(global0.c, 2u)]));
    let var_2 = select(select(vec4<bool>(true, true, true, true), !select(!global2[_wgslsmith_index_u32(31365u, 2u)], select(global2[_wgslsmith_index_u32(u_input.c, 2u)], vec4<bool>(global4[_wgslsmith_index_u32(u_input.c, 25u)], false, global4[_wgslsmith_index_u32(arg_0.d.x, 25u)], global4[_wgslsmith_index_u32(1u, 25u)]), global4[_wgslsmith_index_u32(u_input.e.x, 25u)]), -16361i == global0.b), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(46060u, 28352u, u_input.b.x, 1u), vec4<u32>(arg_0.d.x, 1u, arg_0.c, 21765u)), 25u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(arg_0.d.x, 25u)], !any(!vec4<bool>(true, true, global4[_wgslsmith_index_u32(arg_0.d.x, 25u)], global4[_wgslsmith_index_u32(u_input.a, 25u)])), false), global4[_wgslsmith_index_u32(firstLeadingBit(13508u), 25u)]);
    global4 = array<bool, 25>();
    return func_3(select(select(var_2.yz, vec2<bool>(true, false), var_2.wx), select(vec2<bool>(true, any(var_2.wxx)), select(vec2<bool>(true, false), select(var_2.yx, vec2<bool>(var_2.x, true), vec2<bool>(global4[_wgslsmith_index_u32(global0.d.x, 25u)], true)), !var_2.wy), !any(vec3<bool>(true, var_2.x, true))), vec2<bool>(select(true, !global4[_wgslsmith_index_u32(1u, 25u)], any(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c, 25u)], var_2.x, var_2.x))), any(select(var_2, global2[_wgslsmith_index_u32(24844u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)])))), Struct_1(vec3<f32>(-1099f, arg_0.a.x, _wgslsmith_f_op_f32(step(arg_0.a.x, 644f))), ~countOneBits(global0.b << (1u % 32u)), global0.c, u_input.e));
}

fn func_2() -> i32 {
    var var_0 = select(select(!(!(!vec2<bool>(global4[_wgslsmith_index_u32(global0.d.x, 25u)], global4[_wgslsmith_index_u32(u_input.d, 25u)]))), select(vec2<bool>(global4[_wgslsmith_index_u32(global0.d.x, 25u)], global4[_wgslsmith_index_u32(firstLeadingBit(13673u), 25u)]), vec2<bool>(true, global0.b < 5506i), any(vec3<bool>(false, global4[_wgslsmith_index_u32(16352u, 25u)], global4[_wgslsmith_index_u32(u_input.a, 25u)])) | (global0.a.x < 1000f)), global4[_wgslsmith_index_u32(firstLeadingBit(global0.d.x), 25u)]), !select(!vec2<bool>(true, global4[_wgslsmith_index_u32(54411u, 25u)]), !(!vec2<bool>(true, global4[_wgslsmith_index_u32(21200u, 25u)])), select(vec2<bool>(false, global4[_wgslsmith_index_u32(global0.c, 25u)]), vec2<bool>(true, true), vec2<bool>(true, true))), !(!(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 25u)], true))));
    var var_1 = global3[_wgslsmith_index_u32(~abs(u_input.a), 9u)];
    let var_2 = !vec4<bool>(true, var_0.x, false, all(select(!vec2<bool>(var_0.x, true), !vec2<bool>(true, var_0.x), true | var_0.x)));
    global3 = array<Struct_1, 9>();
    var var_3 = abs(vec4<u32>(0u, func_4(global1[_wgslsmith_index_u32(func_3(vec2<bool>(var_0.x, true), global3[_wgslsmith_index_u32(var_1.d.x, 9u)]) | global0.d.x, 28u)], vec4<i32>(global0.b, global0.b, var_1.b, -5867i) << (abs(vec4<u32>(global0.c, u_input.a, 1u, 44521u)) % vec4<u32>(32u))), _wgslsmith_div_u32(~global0.d.x >> (0u % 32u), 9192u), var_1.c));
    return _wgslsmith_div_i32(((-global0.b | select(0i, 11499i, var_0.x)) & firstTrailingBit(2147483647i)) & _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(-32618i, global0.b, var_1.b, 7217i)), _wgslsmith_div_vec4_i32(min(vec4<i32>(var_1.b, global0.b, 1i, 1i), vec4<i32>(0i, -2336i, global0.b, 2325i)), vec4<i32>(11823i, var_1.b, 0i, var_1.b))), ~_wgslsmith_mult_i32(34844i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, -1i, var_1.b, -2147483647i), vec4<i32>(27271i, -2147483647i, var_1.b, -4958i)), min(-59241i, var_1.b), true)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> bool {
    global2 = array<vec4<bool>, 2>();
    var var_0 = -func_2();
    var var_1 = global1[_wgslsmith_index_u32(0u, 28u)];
    var var_2 = var_1.c;
    let var_3 = Struct_1(vec3<f32>(-1468f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(873f, global0.a.x)), _wgslsmith_f_op_f32(select(arg_2, arg_1.a.x, true)), all(vec3<bool>(true, global4[_wgslsmith_index_u32(var_1.d.x, 25u)], true))))), arg_0.a.x), _wgslsmith_add_i32(func_2(), global0.b), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 64400u, 47131u), max(vec4<u32>(47584u, global0.d.x, 7743u, 35801u), vec4<u32>(4294967295u, arg_0.c, 0u, 1u)))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(28027u, u_input.e.x, 0u), var_1.d));
    return -9317i < max(global0.b, _wgslsmith_mod_i32(18869i, _wgslsmith_mod_i32(i32(-1i) * -23969i, 12744i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 3286i;
    global3 = array<Struct_1, 9>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_f32(865f - 1f)));
    var var_2 = _wgslsmith_f_op_f32(-global0.a.x);
    global1 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(_wgslsmith_mult_i32(-52688i, global0.b), abs(2147483647i), 5122i, -33085i) & (vec4<i32>(1i, -12268i, global0.b, 16390i) >> (min(vec4<u32>(0u, 53096u, 74571u, 4294967295u), vec4<u32>(1u, 57860u, 0u, u_input.a)) % vec4<u32>(32u))), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b, -1i, global0.b, -39334i), vec4<i32>(global0.b, global0.b, global0.b, 2147483647i), vec4<i32>(global0.b, -2147483647i, global0.b, -25831i)), select(true, false, func_1(Struct_1(global0.a, -10461i, u_input.a, vec3<u32>(4294967295u, 0u, 30757u)), global3[_wgslsmith_index_u32(~0u, 9u)], -301f, _wgslsmith_add_vec2_i32(vec2<i32>(global0.b, 3491i), vec2<i32>(global0.b, 33382i))))), vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.e, vec3<u32>(global0.c, 0u, 1u)), select(global0.d, vec3<u32>(global0.c, 32194u, global0.d.x), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 25u)], true, false))), u_input.e.x, u_input.b.x & global0.d.x, global0.d.x));
}

