struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(227f, -1388f), vec4<i32>(-1i, -1i, -1i, 0i), 40138u);

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-1300f, -986f), vec4<i32>(15174i, -27332i, -78347i, -11941i), 52873u);

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.a), arg_1.b, ~arg_2.c);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(337f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1000f * -157f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.x))))));
    var var_0 = ~reverseBits(40473u);
    var var_1 = arg_0;
    var var_2 = any(select(vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), any(vec4<bool>(true, true, true, false))), vec2<bool>(true, all(vec3<bool>(false, true, false)))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), true))));
    return _wgslsmith_f_op_f32(round(-2652f));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_3.a;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(arg_3.c, 22u)], arg_2, Struct_1(vec2<f32>(arg_3.a.x, -610f), reverseBits(vec4<i32>(1i, global2.b.x, arg_3.b.x, 1i)), arg_2.c), arg_3)) * _wgslsmith_f_op_f32(-arg_0)));
    var var_1 = select(vec2<bool>(false, false), !select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, false), true), vec2<bool>(select(true, false, true), true), vec2<bool>(true, true)), !vec2<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    global2 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, global1.c), 22u)];
    let var_2 = 235f;
    return arg_2;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(1185f, ~(-(global2.b << (vec4<u32>(u_input.a.x, 4294967295u, 36673u, 0u) % vec4<u32>(32u))) | ~global1.b), global3[_wgslsmith_index_u32(~global1.c, 22u)], global3[_wgslsmith_index_u32(min(u_input.a.x, _wgslsmith_mod_u32(global1.c, u_input.a.x)), 22u)]);
    var var_1 = -(~global2.b.x);
    global3 = array<Struct_1, 22>();
    var var_2 = global3[_wgslsmith_index_u32(2341u >> (~firstLeadingBit((4294967295u & u_input.a.x) & ~4294967295u) % 32u), 22u)];
    var_1 = -30942i;
    return func_2(1456f, _wgslsmith_mod_vec4_i32(var_0.b, -(~global2.b) | vec4<i32>(~var_2.b.x, i32(-1i) * -5838i, 1i, 1i)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1.a.x, var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x))), select(-vec4<i32>(var_2.b.x, 2147483647i, 0i, var_0.b.x), firstTrailingBit(vec4<i32>(var_0.b.x, global2.b.x, 18830i, var_0.b.x)), all(vec3<bool>(false, false, false))) & (vec4<i32>(-1i) * -var_0.b), 4294967295u), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-268f, _wgslsmith_f_op_f32(max(var_2.a.x, 735f)))), _wgslsmith_div_vec4_i32(vec4<i32>(~global1.b.x, _wgslsmith_sub_i32(46584i, -16756i), var_0.b.x, -2147483647i), vec4<i32>(_wgslsmith_mod_i32(var_0.b.x, global2.b.x), u_input.b.x, -var_2.b.x, abs(var_0.b.x))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 1u), _wgslsmith_mult_vec2_u32(reverseBits(u_input.a), u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.a;
    global3 = array<Struct_1, 22>();
    global1 = func_1();
    let var_0 = global1.b;
    let var_1 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(!all(vec4<bool>(false, true, true, false)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1282f - global2.a.x) - global0.x) < _wgslsmith_div_f32(global1.a.x, -1477f)), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))) | true);
    global3 = array<Struct_1, 22>();
    global2 = func_2(_wgslsmith_f_op_f32(max(global0.x, -776f)), _wgslsmith_add_vec4_i32(func_2(global2.a.x, _wgslsmith_add_vec4_i32(global2.b, global2.b), func_2(global1.a.x, global1.b | global1.b, Struct_1(vec2<f32>(378f, 187f), global2.b, u_input.a.x), func_2(global1.a.x, global1.b, Struct_1(global1.a, global1.b, 4294967295u), Struct_1(global1.a, vec4<i32>(var_0.x, 2147483647i, -2147483647i, -7687i), 32500u))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, -1002f)), ~vec4<i32>(global1.b.x, u_input.b.x, 0i, 0i), 55517u)).b, global1.b), Struct_1(global1.a, -_wgslsmith_add_vec4_i32(global1.b, _wgslsmith_div_vec4_i32(vec4<i32>(global2.b.x, 23085i, var_0.x, 30127i), vec4<i32>(u_input.b.x, 1i, u_input.b.x, global1.b.x))), u_input.a.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_2(139f, global1.b, global3[_wgslsmith_index_u32(61192u, 22u)], Struct_1(vec2<f32>(global1.a.x, global0.x), global1.b, u_input.a.x)).a.x + 631f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), max(vec4<i32>(2147483647i, var_0.x, _wgslsmith_mod_i32(-19285i, -1i), 2147483647i), global1.b), _wgslsmith_sub_u32(15955u, ~(~907u))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a - global2.a) - _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, _wgslsmith_div_f32(-163f, global2.a.x)), _wgslsmith_div_vec2_f32(global1.a, global1.a))), -(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(global2.b, vec4<i32>(u_input.b.x, 0i, u_input.b.x, global2.b.x))), ~abs(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer((~min(1i, u_input.b.x) ^ 1i) << (u_input.a.x % 32u));
}

