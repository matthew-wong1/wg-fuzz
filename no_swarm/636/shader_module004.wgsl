struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<bool, 10>;

var<private> global2: i32;

var<private> global3: array<vec3<f32>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-671f, -2221f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(325f)), 244f)), _wgslsmith_f_op_f32(trunc(-260f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-951f, -345f))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -521f)))))));
    var var_1 = !select(!vec4<bool>(true, false, var_0.x > 1270f, any(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.b.x, 10u)]))), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 10u)], !(!global1[_wgslsmith_index_u32(arg_0.x, 10u)])), !select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 10u)], global1[_wgslsmith_index_u32(arg_0.x, 10u)], global1[_wgslsmith_index_u32(arg_0.x, 10u)], global1[_wgslsmith_index_u32(arg_0.x, 10u)]), !vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(62536u, 10u)])));
    global0 = array<u32, 26>();
    let var_2 = true;
    var var_3 = Struct_1(vec2<u32>(~(~(~u_input.b.x)), ~arg_0.x), -354f, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, 53001u, 1u)) << (vec3<u32>(u_input.b.x, 1u, 26664u) % vec3<u32>(32u)), ~min(arg_0.zxx, u_input.b)), u_input.b), -322f);
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(~(95054u << (var_3.a.x % 32u)), max(~global0[_wgslsmith_index_u32(4294967295u, 26u)], firstLeadingBit(0u)), 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(4294967295u, 4882u), ~40927u, abs(78677u)), _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(0u), max(var_3.c.x, arg_0.x), _wgslsmith_mult_u32(var_3.c.x, arg_0.x)), select(vec3<u32>(global0[_wgslsmith_index_u32(63721u, 26u)], arg_0.x, var_3.a.x) >> (arg_0.xzz % vec3<u32>(32u)), var_3.c >> (vec3<u32>(arg_0.x, 1u, 30411u) % vec3<u32>(32u)), !vec3<bool>(false, var_1.x, false))), abs(arg_0.wyz)));
}

fn func_2(arg_0: f32) -> bool {
    global0 = array<u32, 26>();
    global2 = -u_input.a.x;
    global3 = array<vec3<f32>, 30>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(900u, func_3(vec4<u32>(1u, global0[_wgslsmith_index_u32(75927u, 26u)], u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]) | vec4<u32>(u_input.b.x, 33208u, u_input.b.x, u_input.b.x))), 0u), 10u)] && global1[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(~4294967295u, u_input.b.x, all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 10u)]))), 26u)], 26u)]), 10u)];
    var var_1 = ~max(countOneBits(1u), ~(~u_input.b.x)) ^ _wgslsmith_add_u32(select(20568u, ~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)]), all(vec4<bool>(true, var_0, var_0, var_0))), 24103u);
    return !(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25897u, 26u)], 26u)], 26u)]), vec4<u32>(4294967295u, u_input.b.x, 6043u, u_input.b.x)) << (4294967295u % 32u)) <= u_input.b.x);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> Struct_4 {
    global0 = array<u32, 26>();
    var var_0 = Struct_2(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.b.x, 10u)], any(vec2<bool>(func_2(1917f), global0[_wgslsmith_index_u32(25037u, 26u)] > u_input.b.x)), select(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(94899u, 1u) << (_wgslsmith_clamp_u32(0u, 0u, 18463u) % 32u), 10u)], true, arg_0)), ~(~vec3<i32>(u_input.a.x, -2147483647i, u_input.c)) & reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.c), vec3<i32>(0i, u_input.a.x, -1i)) ^ countOneBits(u_input.a.wyw)));
    var var_1 = true;
    var var_2 = _wgslsmith_div_vec3_u32(~u_input.b, abs(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.zy, arg_1.xz), 1u, 0u))) >> (vec3<u32>(41744u, ~u_input.b.x, u_input.b.x) % vec3<u32>(32u));
    let var_3 = _wgslsmith_mod_vec3_u32(arg_1.xzz, vec3<u32>(1u, ~1u, abs(global0[_wgslsmith_index_u32(u_input.b.x, 26u)])));
    return Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, var_3.x), ~0u), 30u)] + global3[_wgslsmith_index_u32(_wgslsmith_div_u32(max(var_3.x, u_input.b.x), 0u), 30u)]), _wgslsmith_div_vec3_f32(vec3<f32>(-307f, -983f, _wgslsmith_f_op_f32(-1455f * 993f)), global3[_wgslsmith_index_u32(0u, 30u)]))), Struct_1(~vec2<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_2.x, 26u)], 1u), _wgslsmith_mod_u32(var_3.x, arg_1.x)), -3324f, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b ^ vec3<u32>(47900u, 50203u, global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<u32>(3418u, 3871u, u_input.b.x) & vec3<u32>(var_2.x, 18481u, 50352u)), arg_1.xzz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(879f)), _wgslsmith_f_op_f32(-639f - -1000f))))), false);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4) -> bool {
    global3 = array<vec3<f32>, 30>();
    var var_0 = Struct_5(arg_1, Struct_3(arg_1.c), ~(~(~(vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u, 70625u) & vec4<u32>(arg_1.b.c.x, 1u, 0u, 1u)))), true);
    global1 = array<bool, 10>();
    let var_1 = 0u << (arg_1.b.a.x % 32u);
    global2 = arg_0.x;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    global0 = array<u32, 26>();
    let var_1 = -_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(1718i, var_0.x)), vec2<i32>(-1i, u_input.a.x)) & ~(~u_input.a.ww), var_0.xz);
    let var_2 = vec2<bool>(select(true, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)]) & ~(~70286u), 10u)], func_4(vec3<i32>(abs(-1i), u_input.a.x, -1i), func_1(false, vec4<u32>(1u, 67313u, 26900u, 1u)))), !(!(any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], true, false)) == global1[_wgslsmith_index_u32(u_input.b.x, 10u)])));
    var var_3 = select(true, true, var_2.x);
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(282f, 1368f), vec2<f32>(707f, -232f), false)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1159f, -472f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1677f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-926f, 122f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(904f, -623f) - vec2<f32>(-368f, -340f))) * vec2<f32>(-195f, _wgslsmith_f_op_f32(min(-249f, -1000f))))));
    var_0 = u_input.a;
    var_0 = _wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(min(~u_input.a, -u_input.a), vec4<i32>(reverseBits(u_input.c), _wgslsmith_mod_i32(-9562i, var_0.x), select(0i, 1i, false), -2147483647i)), vec4<i32>(0i, _wgslsmith_mod_i32(-18458i, var_1.x >> (0u % 32u)), u_input.c, abs(~(-1i)))));
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1000f)), 818f)), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(round(var_4.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1000f, 583f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 10u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 30u)]))), vec3<bool>(false, func_2(_wgslsmith_f_op_f32(var_4.x + var_4.x)), false))));
}

