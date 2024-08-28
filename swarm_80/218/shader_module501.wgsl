struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-439f, true, 1i), Struct_1(622f, false, 57463i), Struct_1(-1563f, true, 21777i), Struct_1(209f, true, 37595i));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: f32 = -364f;

var<private> global3: array<bool, 9>;

var<private> global4: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_1.c, _wgslsmith_mult_i32(~(u_input.b.x ^ u_input.b.x), i32(-1i) * -59448i)), countOneBits(u_input.b.x));
    return _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(floor(1000f))));
}

fn func_2() -> vec3<bool> {
    global1 = vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 1u)], any(global1.yzy), global1.x, u_input.a < 0u);
    var var_0 = 1f;
    var var_1 = select(global1.zzw, !global1.yxz, _wgslsmith_f_op_f32(func_3(false, global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.a), 4u)], _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(418f, -1000f), vec2<f32>(-1686f, -1421f))))))) == -352f);
    var var_2 = vec4<u32>(reverseBits(_wgslsmith_sub_u32(u_input.a, u_input.a)), _wgslsmith_sub_u32(4294967295u, u_input.a), _wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(52373u, u_input.a, 1u, u_input.a), vec4<u32>(0u, u_input.a, 4294967295u, 59092u))), reverseBits(~vec4<u32>(u_input.a, u_input.a, 1828u, u_input.a)))), u_input.a);
    global1 = select(select(select(select(select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(var_2.x, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<bool>(var_1.x, false, true, true)), vec4<bool>(false, true, true, true), true), !(!vec4<bool>(global1.x, global4[_wgslsmith_index_u32(54106u, 1u)], true, global1.x)), true), !select(!vec4<bool>(global3[_wgslsmith_index_u32(var_2.x, 9u)], global1.x, false, global1.x), select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 1u)], global4[_wgslsmith_index_u32(31049u, 1u)], false, global3[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<bool>(var_1.x, true, global4[_wgslsmith_index_u32(62248u, 1u)], var_1.x), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 1u)], global1.x, false, global1.x)), !vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(1u, 9u)])), var_1.x), !select(!select(vec4<bool>(false, var_1.x, false, global1.x), vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, var_1.x, false, true)), select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(74528u, 9u)], false), !vec4<bool>(global1.x, global3[_wgslsmith_index_u32(var_2.x, 9u)], global1.x, global1.x), select(vec4<bool>(true, true, false, true), vec4<bool>(var_1.x, false, false, global1.x), global1.x)), !any(global1.zyx)), global3[_wgslsmith_index_u32(4294967295u, 9u)] && (-1367f > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1046f, -1028f))))));
    return select(vec3<bool>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 11349u, 11469u), _wgslsmith_add_u32(u_input.a, 27720u)) >= u_input.a, !global4[_wgslsmith_index_u32(1u, 1u)], true), global1.yzw, vec3<bool>(true, all(!global1.xxz), true & (u_input.b.x <= firstLeadingBit(39695i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>) -> f32 {
    var var_0 = vec4<i32>(arg_0.c, u_input.b.x, 5892i, abs(arg_0.c));
    let var_1 = _wgslsmith_clamp_u32(u_input.a, ~u_input.a, countOneBits(_wgslsmith_add_u32(1u << (~u_input.a % 32u), 2464u)));
    global4 = array<bool, 1>();
    var_0 = firstTrailingBit(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, -25068i, -2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, 1i, -1i))) >> (vec4<u32>(_wgslsmith_mod_u32(9983u, u_input.a), u_input.a, ~var_1, u_input.a) % vec4<u32>(32u))) >> (reverseBits(_wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, u_input.a, var_1, 0u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1, 29423u, u_input.a, u_input.a), vec4<u32>(42522u, u_input.a, 45979u, u_input.a)))) % vec4<u32>(32u));
    let var_2 = countOneBits(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(107730u, 54198u, 1u, 6995u), vec4<u32>(1u, u_input.a, var_1, var_1))) ^ var_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.xz, _wgslsmith_f_op_vec2_f32(select(arg_2.zx, arg_2.yx, global1.yw)), true))))) - 1439f);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(u_input.a, 4u)], !func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1448f)), 1012f, _wgslsmith_f_op_f32(1374f * 2024f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(685f, -646f, -1495f), vec3<f32>(1239f, 970f, 248f), global3[_wgslsmith_index_u32(33607u, 9u)])), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1725f, -378f, -2089f))))))));
    let var_1 = global0[_wgslsmith_index_u32(53651u, 4u)];
    var var_2 = !(!(false | (max(30130i, var_1.c) <= ~var_1.c)));
    var var_3 = any(vec3<bool>(true, all(vec4<bool>(!var_1.b, all(global1.xwz), select(global3[_wgslsmith_index_u32(4294967295u, 9u)], false, true), true)), false));
    global0 = array<Struct_1, 4>();
    return Struct_1(-754f, any(global1.zxz), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.c, -2147483647i), _wgslsmith_div_i32(~(-542i), u_input.b.x) >> (87672u % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(-235f, !arg_0.b, ~1i);
    var var_1 = func_1();
    var var_2 = -(min(var_1.c, u_input.b.x) | _wgslsmith_clamp_i32(var_0.c >> (_wgslsmith_sub_u32(u_input.a, arg_1) % 32u), min(_wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.b.yy), u_input.b.x), var_0.c));
    let var_3 = arg_0.a;
    global2 = var_0.a;
    return Struct_1(func_1().a, false, ~(i32(-1i) * -1i));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    global3 = array<bool, 9>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 4u)];
    var var_1 = global0[_wgslsmith_index_u32(func_6(select(all(vec3<bool>(true, true, true)), 0i < u_input.b.x, global1.x), func_5(func_1(), 1u, vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-850f, 1002f) - _wgslsmith_f_op_f32(var_0.a - var_0.a)), 1019f, _wgslsmith_f_op_f32(func_3(true, Struct_1(-1231f, var_0.b, u_input.b.x), vec2<f32>(var_0.a, -1275f)))), select(!select(vec4<bool>(var_0.b, var_0.b, true, false), vec4<bool>(false, true, global1.x, false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 9u)], global4[_wgslsmith_index_u32(1u, 1u)], true, false)), !(!vec4<bool>(global1.x, true, global4[_wgslsmith_index_u32(130856u, 1u)], var_0.b)), global3[_wgslsmith_index_u32(u_input.a, 9u)])), min(vec3<i32>(u_input.b.x, (var_0.c << (u_input.a % 32u)) & 15018i, countOneBits(-2147483647i)), u_input.b)), 4u)];
    let var_2 = 4294967295u;
    let var_3 = func_1();
    var var_4 = vec4<i32>(~var_0.c, u_input.b.x, countOneBits(7658i), _wgslsmith_mult_i32(-(~0i), -1i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(~(~u_input.a), ~4294967295u, ~u_input.a, func_6(true, Struct_1(var_3.a, false, 1i), ~u_input.b)), ~vec4<u32>(abs(1u), firstLeadingBit(4294967295u), ~21764u, func_6(var_0.b, global0[_wgslsmith_index_u32(u_input.a, 4u)], vec3<i32>(-1i, 2147483647i, 27766i)))) % vec4<u32>(32u));
    global0 = array<Struct_1, 4>();
    var var_5 = var_4.zw;
    var_1 = Struct_1(_wgslsmith_f_op_f32(var_3.a + var_3.a), any(func_2().yx), -7216i);
    let x = u_input.a;
    s_output = StorageBuffer(-581f);
}

