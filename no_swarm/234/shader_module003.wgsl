struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_4,
    d: Struct_3,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

var<private> global1: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec4<bool>(true, false, false, true), vec4<u32>(1u, 27555u, 1u, 0u), Struct_2(Struct_1(false, vec2<f32>(809f, 263f), i32(-2147483648), vec4<bool>(false, true, false, false)), vec3<i32>(-1i, -31393i, 0i), vec3<u32>(0u, 0u, 1u), 0u)), Struct_4(vec4<bool>(false, true, false, true), vec4<u32>(4294967295u, 5545u, 1u, 45211u), Struct_2(Struct_1(false, vec2<f32>(378f, -197f), i32(-2147483648), vec4<bool>(false, true, true, false)), vec3<i32>(1i, -1i, 2147483647i), vec3<u32>(1u, 4294967295u, 1u), 17066u)), Struct_4(vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 13526u, 4294967295u, 1u), Struct_2(Struct_1(false, vec2<f32>(-1414f, -2738f), -90826i, vec4<bool>(true, true, false, true)), vec3<i32>(i32(-2147483648), 1i, 26697i), vec3<u32>(4294967295u, 0u, 4294967295u), 71626u)), Struct_4(vec4<bool>(true, false, true, true), vec4<u32>(37772u, 49999u, 1u, 4294967295u), Struct_2(Struct_1(true, vec2<f32>(-514f, -1981f), -53147i, vec4<bool>(true, false, false, false)), vec3<i32>(2147483647i, 56809i, 1i), vec3<u32>(4294967295u, 21180u, 1u), 1u)), Struct_4(vec4<bool>(true, false, false, false), vec4<u32>(12102u, 1u, 1u, 0u), Struct_2(Struct_1(false, vec2<f32>(-198f, 100f), 21613i, vec4<bool>(false, false, false, true)), vec3<i32>(2147483647i, 8088i, 57816i), vec3<u32>(7016u, 3276u, 4294967295u), 10542u)), Struct_4(vec4<bool>(false, false, false, false), vec4<u32>(1u, 4294967295u, 1u, 81343u), Struct_2(Struct_1(true, vec2<f32>(-1000f, -1011f), -1i, vec4<bool>(false, true, false, true)), vec3<i32>(-1i, -1i, 2147483647i), vec3<u32>(49956u, 30287u, 0u), 1u)), Struct_4(vec4<bool>(true, true, false, false), vec4<u32>(4294967295u, 0u, 33180u, 0u), Struct_2(Struct_1(true, vec2<f32>(-436f, 2239f), -1i, vec4<bool>(false, true, false, false)), vec3<i32>(-7150i, 16298i, 1i), vec3<u32>(24639u, 4294967295u, 4294967295u), 4294967295u)));

var<private> global2: array<i32, 11> = array<i32, 11>(0i, i32(-2147483648), 25232i, 1i, -1i, 1i, -1i, -1i, 59585i, 2147483647i, -140937i);

var<private> global3: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(0i, 32927i), vec2<i32>(39231i, -32000i), vec2<i32>(359i, 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_5) -> Struct_2 {
    return Struct_2(arg_1.b.c.a, max(~_wgslsmith_div_vec3_i32(-vec3<i32>(59093i, arg_1.c.c.b.x, global2[_wgslsmith_index_u32(27779u, 11u)]), arg_1.d.a.wzz), min(_wgslsmith_div_vec3_i32(u_input.a, arg_1.c.c.b), countOneBits(u_input.a))), _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(10493u, 111622u, arg_0)), arg_1.b.b.zyx >> (arg_1.c.c.c % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 45006u), arg_1.b.b.x & 0u, ~arg_1.c.b.x), max(arg_1.c.b.zzy, select(vec3<u32>(arg_1.b.c.c.x, 4294967295u, 68096u), u_input.b.wxz, true)))), 4294967295u);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2) -> u32 {
    global1 = array<Struct_4, 7>();
    var var_0 = arg_2.a;
    global1 = array<Struct_4, 7>();
    var_0 = Struct_1(all(select(arg_2.a.d.yyy, select(arg_2.a.d.yyw, !vec3<bool>(true, false, arg_2.a.a), vec3<bool>(true, true, false)), (arg_1.x == 1u) == arg_2.a.d.x)), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), _wgslsmith_f_op_f32(round(var_0.b.x)))))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.c, arg_2.a.c, firstTrailingBit(2147483647i), -2147483647i), select(-vec4<i32>(u_input.a.x, u_input.a.x, -1i, -25615i), firstTrailingBit(vec4<i32>(-30449i, global2[_wgslsmith_index_u32(1u, 11u)], -43621i, var_0.c)), select(arg_2.a.d, vec4<bool>(false, arg_0, true, arg_0), arg_0))), 2147483647i), !func_2((u_input.d | u_input.b.x) & 12493u, Struct_5(false, Struct_4(arg_2.a.d, u_input.b, Struct_2(arg_2.a, u_input.a, u_input.b.xww, 0u)), global1[_wgslsmith_index_u32(arg_2.d, 7u)], Struct_3(vec4<i32>(global2[_wgslsmith_index_u32(arg_2.c.x, 11u)], u_input.a.x, -19453i, var_0.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.b.x, 1947f, -1137f, arg_2.a.b.x) - vec4<f32>(-2247f, -181f, -691f, var_0.b.x)))).a.d);
    var var_1 = true;
    return _wgslsmith_dot_vec3_u32(arg_1.wxz, firstTrailingBit(_wgslsmith_mod_vec3_u32(~(vec3<u32>(7408u, 4182u, 17055u) >> (vec3<u32>(arg_2.d, 1u, arg_1.x) % vec3<u32>(32u))), abs(_wgslsmith_add_vec3_u32(arg_1.yww, vec3<u32>(u_input.b.x, 4294967295u, 19456u))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>) -> f32 {
    return arg_0.x;
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, _wgslsmith_f_op_f32(f32(-1f) * -905f), _wgslsmith_f_op_f32(select(584f, -663f, false)))), vec4<u32>(func_3(false, vec4<u32>(0u, 19778u, 5336u, u_input.c), func_2(0u, Struct_5(false, global1[_wgslsmith_index_u32(u_input.b.x, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], Struct_3(vec4<i32>(-2678i, u_input.a.x, u_input.a.x, 35633i)), vec4<f32>(-124f, -309f, -1776f, 1000f)))), 0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b.zw), 1u))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_add_u32(~(~u_input.b.x) | ~u_input.b.x, _wgslsmith_div_u32(u_input.d, u_input.b.x));
    let var_1 = !vec3<bool>(false, !arg_1, arg_1);
    var var_2 = arg_0;
    let var_3 = Struct_2(Struct_1(arg_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * -1505f), -1000f) + vec2<f32>(-1123f, 1140f)), u_input.a.x, !select(func_2(0u, Struct_5(false, Struct_4(vec4<bool>(arg_1, arg_1, var_1.x, var_1.x), u_input.b, Struct_2(Struct_1(var_1.x, vec2<f32>(arg_0, arg_0), -54834i, vec4<bool>(true, true, arg_1, true)), vec3<i32>(arg_2, global2[_wgslsmith_index_u32(u_input.c, 11u)], arg_2), vec3<u32>(0u, 0u, 82181u), 7648u)), global1[_wgslsmith_index_u32(u_input.c, 7u)], Struct_3(vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.d, 11u)], 19012i, 1i)), vec4<f32>(arg_0, arg_0, -532f, arg_0))).a.d, vec4<bool>(false, false, arg_1, arg_1), true)), _wgslsmith_clamp_vec3_i32(~u_input.a, -min(u_input.a, vec3<i32>(global2[_wgslsmith_index_u32(59626u, 11u)], 6919i, global2[_wgslsmith_index_u32(9389u, 11u)])), vec3<i32>(max(global2[_wgslsmith_index_u32(40823u, 11u)], u_input.a.x), ~arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, u_input.a.x, -1i, -1i), vec4<i32>(u_input.a.x, -1i, arg_2, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]))) ^ -u_input.a), u_input.b.yyx, min(0u, _wgslsmith_mult_u32(0u, 1u | _wgslsmith_clamp_u32(u_input.b.x, 48010u, u_input.d))));
    let var_4 = (-24110i >> (0u % 32u)) > _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(firstTrailingBit(var_3.d), 11u)], min(select(~global2[_wgslsmith_index_u32(u_input.c, 11u)], firstLeadingBit(3670i), true), 12662i), 2147483647i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + var_3.a.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 3>();
    global2 = array<i32, 11>();
    global2 = array<i32, 11>();
    global0 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(func_1()), !func_2(73326u, Struct_5(true, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(u_input.c, 22u)], vec4<f32>(411f, 386f, -1137f, -757f))).a.a, ~_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], -2147483647i))) + _wgslsmith_f_op_f32(round(-385f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), global3[_wgslsmith_index_u32(min(~(~u_input.b.x >> (u_input.c % 32u)), u_input.b.x), 3u)], 4294967295u, u_input.b.xw);
}

