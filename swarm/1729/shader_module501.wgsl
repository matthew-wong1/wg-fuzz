struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: i32;

var<private> global2: vec2<u32> = vec2<u32>(71951u, 28009u);

var<private> global3: vec2<i32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-354f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~max(global2.x, 21254u), 27u)] + _wgslsmith_f_op_f32(min(563f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 27u)])))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 27u)])), _wgslsmith_f_op_vec3_f32(-arg_2.b)));
    var var_1 = Struct_4(true, ~vec4<u32>(~(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, global2.x), vec2<u32>(28994u, u_input.b))), _wgslsmith_clamp_u32(u_input.b, abs(arg_2.d.a.x), 59324u), 11480u), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 27u)] + var_0.x), _wgslsmith_f_op_f32(-240f + -925f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), -399f, _wgslsmith_f_op_f32(round(290f))), Struct_3(!vec4<bool>(global3.x <= 1i, true, false, true)), arg_2.e & !arg_1.x);
    var var_2 = var_1.d;
    let var_3 = arg_2.d;
    var var_4 = var_1.d;
    return ~(~_wgslsmith_add_u32(_wgslsmith_add_u32(var_1.b.x, 4294967295u) << (56890u % 32u), ~(~48937u)));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: u32, arg_3: vec3<f32>) -> Struct_3 {
    global1 = abs(-39578i);
    global2 = ~(arg_1.b.zw | ~countOneBits(vec2<u32>(arg_1.b.x, u_input.b) ^ vec2<u32>(4294967295u, 1273u)));
    var var_0 = arg_1.d;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 79949u, 0u), vec3<u32>(arg_1.b.x, 4294967295u, 13611u)) << (arg_1.b.zyy % vec3<u32>(32u))), vec3<u32>(reverseBits(u_input.b) ^ arg_1.b.x, 39689u, 19238u), false), select(abs(arg_1.b.zxx), firstLeadingBit(vec3<u32>(func_3(var_0.a, arg_1.d.a.wz, Struct_2(1i, arg_1.c.wxw, Struct_1(arg_1.b, 1350f, u_input.c.yx, global0[_wgslsmith_index_u32(arg_2, 27u)], arg_3.x), Struct_1(arg_1.b, global0[_wgslsmith_index_u32(73068u, 27u)], u_input.c.yy, -257f, -182f), arg_1.a)), 49221u, _wgslsmith_dot_vec3_u32(arg_1.b.www, vec3<u32>(17009u, global2.x, global2.x)))), var_0.a.x)), 27u)];
    global2 = vec2<u32>(_wgslsmith_div_u32(global2.x, _wgslsmith_mod_u32(arg_2, 33261u) ^ 1u), ~23351u);
    return Struct_3(!(!var_0.a));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    return ~(~(_wgslsmith_sub_u32(9594u, global2.x) >> (max(u_input.b, u_input.b) % 32u)) << (_wgslsmith_mod_u32(arg_1.b.x, ~(~29017u)) % 32u));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    global1 = u_input.c.x;
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 1u), 27u)];
    var var_1 = Struct_3(vec4<bool>(true, true, true, true));
    return vec4<u32>(func_4(-1786f, Struct_4(-276f > _wgslsmith_div_f32(global0[_wgslsmith_index_u32(32455u, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)]), reverseBits(select(vec4<u32>(53817u, 9488u, 17900u, u_input.b), vec4<u32>(u_input.b, 1307u, 0u, global2.x), var_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2077f, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(global2.x, 27u)])), func_2(-1i, Struct_4(var_1.a.x, vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<f32>(1000f, global0[_wgslsmith_index_u32(u_input.b, 27u)], -580f, global0[_wgslsmith_index_u32(u_input.b, 27u)]), Struct_3(vec4<bool>(var_1.a.x, false, false, true)), var_1.a.x), ~global2.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], 1457f, -265f), vec3<f32>(304f, global0[_wgslsmith_index_u32(u_input.b, 27u)], 382f), var_1.a.x))), true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], 344f, 935f)))))), -1779f), _wgslsmith_mod_u32(1u, reverseBits(firstTrailingBit(~global2.x))), 13047u, 28650u);
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_4) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -279f);
    global3 = vec2<i32>(2147483647i, firstTrailingBit(-_wgslsmith_add_i32(global3.x, -33369i)));
    let var_2 = u_input.c.yx;
    global0 = array<f32, 27>();
    return Struct_1(~(~arg_1 & _wgslsmith_add_vec4_u32(arg_1, ~vec4<u32>(arg_1.x, u_input.b, 1u, 0u))), var_1, _wgslsmith_div_vec2_i32(~min(vec2<i32>(var_2.x, 0i), vec2<i32>(var_2.x, -1i)), ~(vec2<i32>(var_2.x, 2147483647i) << (vec2<u32>(arg_3.b.x, 1u) % vec2<u32>(32u)))) & u_input.c.zx, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 - -1198f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, arg_3.c.x), _wgslsmith_f_op_f32(-var_1))))))), -2012f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mod_i32(~_wgslsmith_mult_i32(-1i, -21668i), u_input.a << (_wgslsmith_div_u32(~global2.x, ~global2.x) % 32u)), vec4<u32>(global2.x, global2.x, 76316u, u_input.b), _wgslsmith_div_i32(-34804i, -2147483647i ^ firstTrailingBit(-40581i)) >= (-1i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, global2.x, 8208u, global2.x), vec4<u32>(150380u, 1582u, 4294967295u, 0u) << (vec4<u32>(1u, global2.x, global2.x, 0u) % vec4<u32>(32u))) % 32u)), Struct_4(false, _wgslsmith_div_vec4_u32(func_1(~u_input.d), select(~vec4<u32>(u_input.b, global2.x, global2.x, 1u), select(vec4<u32>(global2.x, 45456u, 26921u, 4294967295u), vec4<u32>(u_input.b, 72709u, global2.x, 0u), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(3520u, 27u)])), _wgslsmith_f_op_f32(max(309f, global0[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_f_op_f32(abs(193f)), global0[_wgslsmith_index_u32(u_input.b, 27u)]) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], 1144f, global0[_wgslsmith_index_u32(global2.x, 27u)], global0[_wgslsmith_index_u32(33690u, 27u)]), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(global2.x, 27u)], 897f, 1000f, -734f), vec4<f32>(1404f, -1000f, global0[_wgslsmith_index_u32(global2.x, 27u)], -747f), vec4<bool>(true, true, false, false)))))), Struct_3(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, false, false)), true));
    var var_1 = func_2(u_input.a, Struct_4(_wgslsmith_div_f32(113f, -108f) >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a.x, 27u)] - -1284f), var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1508f - -504f), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1321f), _wgslsmith_f_op_f32(trunc(-651f)))), func_2(global3.x | 41940i, Struct_4(any(vec2<bool>(false, true)), vec4<u32>(var_0.a.x, var_0.a.x, global2.x, var_0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 27u)], 707f, global0[_wgslsmith_index_u32(global2.x, 27u)]) - vec4<f32>(var_0.d, global0[_wgslsmith_index_u32(u_input.b, 27u)], var_0.e, -660f)), func_2(var_0.c.x, Struct_4(false, var_0.a, vec4<f32>(-451f, 1148f, -743f, -788f), Struct_3(vec4<bool>(true, true, true, false)), false), var_0.a.x, vec3<f32>(576f, -1000f, var_0.b)), true), ~(0u << (u_input.b % 32u)), vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -316f))), any(func_2(u_input.c.x, Struct_4(false, var_0.a, vec4<f32>(global0[_wgslsmith_index_u32(35095u, 27u)], global0[_wgslsmith_index_u32(42198u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], -293f), Struct_3(vec4<bool>(false, false, false, false)), false), _wgslsmith_mult_u32(u_input.b, 4294967295u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(571f, var_0.e, var_0.e), vec3<f32>(-2030f, var_0.b, var_0.d), vec3<bool>(false, true, false)))).a)), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d, 517f, -1000f), vec3<f32>(-1107f, 2160f, var_0.d), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-513f, 1000f, global0[_wgslsmith_index_u32(global2.x, 27u)]) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(65354u, 27u)], var_0.e)))))));
    let var_2 = Struct_5(vec3<u32>(global2.x, ~(var_0.a.x & u_input.b), _wgslsmith_mod_u32(0u, ~u_input.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-251f, var_0.b, var_1.a.x)))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 7339u), vec2<u32>(0u, global2.x)), 27u)])))), Struct_2(-1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 27u)], var_0.b, var_0.b), vec3<f32>(var_0.b, var_0.d, global0[_wgslsmith_index_u32(17547u, 27u)]))) * vec3<f32>(206f, 761f, -544f))), Struct_1(~(var_0.a | var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * 204f) * _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.e.x, 2147483647i), vec2<i32>(var_0.c.x, u_input.c.x)) >> (_wgslsmith_mult_vec2_u32(var_0.a.yw, var_0.a.zz) % vec2<u32>(32u)), func_5(_wgslsmith_mult_i32(-2147483647i, -1i), _wgslsmith_clamp_vec4_u32(var_0.a, var_0.a, var_0.a), false != var_1.a.x, Struct_4(var_1.a.x, vec4<u32>(3339u, 1u, 4294967295u, 750u), vec4<f32>(341f, global0[_wgslsmith_index_u32(30720u, 27u)], -1198f, global0[_wgslsmith_index_u32(var_0.a.x, 27u)]), Struct_3(var_1.a), var_1.a.x)).d, _wgslsmith_div_f32(253f, global0[_wgslsmith_index_u32(u_input.b, 27u)])), Struct_1(~vec4<u32>(1u, var_0.a.x, u_input.b, 43144u), 1000f, vec2<i32>(var_0.c.x, var_0.c.x >> (7930u % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(30616u, var_0.a.x), 27u)], global0[_wgslsmith_index_u32(36943u, 27u)]), func_2(~global3.x, Struct_4(var_1.a.x, ~vec4<u32>(var_0.a.x, 5047u, 1u, 10059u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, 578f, 919f, 347f) * vec4<f32>(-658f, 1912f, 663f, global0[_wgslsmith_index_u32(global2.x, 27u)])), func_2(global3.x, Struct_4(var_1.a.x, vec4<u32>(1u, 61321u, 1u, global2.x), vec4<f32>(var_0.d, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(71458u, 27u)], var_0.d), Struct_3(vec4<bool>(false, var_1.a.x, false, var_1.a.x)), true), var_0.a.x, vec3<f32>(-1141f, 261f, var_0.e)), var_1.a.x), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-369f, 1565f, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_0.a.x, 27u)], var_0.e, global0[_wgslsmith_index_u32(var_0.a.x, 27u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1374f, var_0.e, global0[_wgslsmith_index_u32(var_0.a.x, 27u)]) + vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 27u)], var_0.e, -1083f)))).a.x));
    let var_3 = 1103f;
    let var_4 = func_2((-_wgslsmith_add_i32(u_input.a, -41775i) >> (~u_input.b % 32u)) << (~17869u % 32u), Struct_4(false, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 18409u), max(var_0.a, vec4<u32>(var_2.c.c.a.x, var_0.a.x, global2.x, 1u))), reverseBits(countOneBits(var_2.c.d.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, -1619f, 1000f, var_0.d), vec4<f32>(var_2.b, var_0.d, var_2.b, var_2.b))))), Struct_3(!(!var_1.a)), true), ~(~(~(~var_0.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c.b) - _wgslsmith_f_op_vec3_f32(abs(var_2.c.b))))));
    var_0 = func_5(-(~(~(~(-2147483647i)))), vec4<u32>(~(~16786u), var_0.a.x, func_1(-2147483647i).x, 0u), false, Struct_4((_wgslsmith_mult_i32(var_2.c.d.c.x, 1332i) <= func_5(var_0.c.x, var_0.a, var_2.c.e, Struct_4(var_2.c.e, var_2.c.d.a, vec4<f32>(1000f, 934f, global0[_wgslsmith_index_u32(30694u, 27u)], 885f), var_4, var_2.c.e)).c.x) && false, var_2.c.c.a, vec4<f32>(-265f, 1242f, _wgslsmith_f_op_f32(min(-875f, _wgslsmith_f_op_f32(1144f - 1907f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - -680f))), var_4, false));
    let var_5 = Struct_5(var_0.a.zxy, -104f, Struct_2(var_0.c.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_2.c.b.x, var_0.d) + var_2.c.b))))), var_2.c.c, func_5(reverseBits(abs(global3.x)), _wgslsmith_mod_vec4_u32(var_2.c.d.a, var_0.a) << (~var_0.a % vec4<u32>(32u)), true, Struct_4(true, vec4<u32>(var_2.a.x, 20107u, 11753u, global2.x), vec4<f32>(727f, var_0.e, var_2.b, 499f), Struct_3(var_1.a), var_2.c.e)), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(select(~30532i, -var_5.c.d.c.x >> (~4294967295u % 32u), var_5.c.e)).x, abs(~global2.x));
}

