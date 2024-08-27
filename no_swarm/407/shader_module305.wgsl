struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: array<i32, 18> = array<i32, 18>(i32(-2147483648), 2147483647i, 15887i, i32(-2147483648), 13052i, 0i, 0i, -46423i, 0i, 49234i, -1i, 23510i, 1i, 26378i, 2147483647i, i32(-2147483648), 30302i, 2147483647i);

var<private> global2: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(1i, 1i), vec2<i32>(-1i, 30202i), vec2<i32>(-16932i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -33870i), vec2<i32>(-38811i, 648i), vec2<i32>(0i, 0i), vec2<i32>(10032i, -554i), vec2<i32>(1i, -22489i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 5976i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -16049i), vec2<i32>(-36242i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, -17838i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~4294967295u, 18u)];
    var var_1 = !(!select(vec3<bool>(any(vec4<bool>(false, false, false, false)), true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)));
    var var_2 = true;
    var var_3 = ~(~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 72859u, 21058u, u_input.a.x), vec4<u32>(92337u, 17131u, u_input.a.x, u_input.c.x))));
    let var_4 = 1i;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(105f)), 830f) + -296f);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -894f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1682f) + -1000f) - 314f), -855f)), true));
    global0 = array<Struct_2, 3>();
    var_0 = _wgslsmith_f_op_f32(abs(-572f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_3, 1000f)))))), _wgslsmith_f_op_f32(max(arg_0.a.x, arg_3)))));
    var var_1 = select(vec3<i32>(_wgslsmith_mult_i32(~arg_1.x, -2147483647i), 0i, arg_1.x) ^ firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 3266i, global1[_wgslsmith_index_u32(4294967295u, 18u)]), reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(21306u, 18u)], 0i, -9706i)))), _wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, 35511i << (u_input.b % 32u), -64770i), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(arg_0.d.x, 18u)], arg_1.x), -global1[_wgslsmith_index_u32(arg_0.d.x, 18u)], firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), ~firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], -1i, arg_1.x)))), select(true, arg_0.b.x, true));
    return arg_0.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 3>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-413f, arg_1)))))), select(arg_3.d.b, !(!select(vec3<bool>(false, false, true), vec3<bool>(arg_3.d.b.x, arg_2.x, arg_3.d.e), false)), !func_3(Struct_1(vec2<f32>(arg_1, 444f), vec3<bool>(false, false, arg_3.d.b.x), arg_0, u_input.a, true), vec2<i32>(global1[_wgslsmith_index_u32(43697u, 18u)], arg_3.b), !arg_2.x, _wgslsmith_f_op_f32(382f + arg_3.c.x))), ~arg_3.d.c, min(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, arg_0.x, arg_3.d.c.x), u_input.a), abs(~u_input.a)) >> (arg_0 % vec3<u32>(32u)), true);
    var var_1 = arg_3.c.wzw;
    let var_2 = arg_3.c;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_3.d.a), arg_2.xyx, vec3<u32>(arg_3.d.d.x, var_0.d.x, abs(~(arg_3.d.c.x >> (arg_3.d.d.x % 32u)))), vec3<u32>(_wgslsmith_mod_u32(~u_input.a.x & ~4294967295u, arg_3.d.c.x), arg_3.d.d.x, min(93912u << (min(arg_3.d.c.x, var_0.c.x) % 32u), ~(~40446u))), _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 19513i), -global2[_wgslsmith_index_u32(74802u, 17u)])) != -(arg_3.b << (49347u % 32u)));
    return var_3;
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    let var_0 = _wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], vec2<i32>(min(global1[_wgslsmith_index_u32(1u, 18u)], select(_wgslsmith_add_i32(32666i, 16324i), abs(global1[_wgslsmith_index_u32(33545u, 18u)]), !arg_0.b.x)), reverseBits(-60255i)));
    let var_1 = global0[_wgslsmith_index_u32(~(~(~_wgslsmith_add_u32(~60872u, 0u))), 3u)];
    let var_2 = countOneBits(u_input.a.x) <= func_2(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.d.x, var_1.d.d.x, u_input.c.x), var_1.d.c), arg_0.d), vec3<u32>(~4294967295u, 1u, 7791u)), 648f, select(!vec4<bool>(arg_0.b.x, arg_0.b.x, true, var_1.d.e), !select(vec4<bool>(arg_0.e, true, var_1.d.e, true), vec4<bool>(arg_0.e, true, false, arg_0.b.x), vec4<bool>(var_1.d.b.x, false, true, true)), select(vec4<bool>(arg_0.b.x, true, false, arg_0.b.x), !vec4<bool>(false, var_1.d.b.x, true, false), select(vec4<bool>(var_1.d.e, true, false, false), vec4<bool>(var_1.d.b.x, false, false, arg_0.b.x), vec4<bool>(arg_0.e, false, false, arg_0.b.x)))), global0[_wgslsmith_index_u32(arg_0.d.x, 3u)]).c.x;
    return arg_0.d;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = !select(func_2(vec3<u32>(u_input.b, ~49947u, min(0u, arg_2.d.x)), _wgslsmith_div_f32(1240f, _wgslsmith_f_op_f32(f32(-1f) * -849f)), !vec4<bool>(true, arg_2.b.x, true, false), Struct_2(-879f, _wgslsmith_dot_vec3_i32(vec3<i32>(72120i, -6487i, global1[_wgslsmith_index_u32(arg_2.c.x, 18u)]), vec3<i32>(arg_1.x, global1[_wgslsmith_index_u32(44186u, 18u)], global1[_wgslsmith_index_u32(u_input.c.x, 18u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(555f, arg_3.x, -1377f, -727f) + vec4<f32>(586f, -1334f, 1517f, -1662f)), arg_2)).b.zz, !vec2<bool>(false, arg_2.b.x), arg_0.b.x);
    return select(!arg_2.b, !vec3<bool>(var_0.x & arg_0.e, true, var_0.x), !(_wgslsmith_f_op_f32(arg_2.a.x - 254f) != _wgslsmith_f_op_f32(trunc(330f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 3>();
    global2 = array<vec2<i32>, 17>();
    let var_0 = func_5(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -124f) - _wgslsmith_div_f32(2104f, -1751f))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(select(true, false, false), true, true), true), vec3<u32>(~u_input.b << (~6374u % 32u), 0u, u_input.c.x), func_4(func_2(vec3<u32>(u_input.c.x, 0u, 0u), -1841f, vec4<bool>(true, false, false, true), Struct_2(1296f, -7733i, vec4<f32>(1222f, 935f, 1691f, 192f), Struct_1(vec2<f32>(656f, -903f), vec3<bool>(false, true, true), u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.c.x), true)))) ^ u_input.a, (u_input.a.x >= func_4(Struct_1(vec2<f32>(795f, 426f), vec3<bool>(false, false, false), u_input.a, vec3<u32>(1u, 61730u, 1u), true)).x) & false), ~reverseBits(vec2<i32>(~global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global1[_wgslsmith_index_u32(~4294967295u, 18u)])), func_2(~(~vec3<u32>(0u, u_input.b, u_input.b)) | (vec3<u32>(u_input.a.x, 1u, 0u) | (vec3<u32>(u_input.a.x, 9315u, 1u) << (u_input.a % vec3<u32>(32u)))), -2784f, vec4<bool>(select(true, true, select(true, true, false)), -1433f > _wgslsmith_f_op_f32(round(-1285f)), true, true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(~22497u), u_input.c.x, ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(65592u, 4294967295u))), 3u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(693f, 805f, -174f) * vec3<f32>(2185f, -1000f, 1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(451f * -1357f), func_2(vec3<u32>(u_input.b, u_input.a.x, u_input.b), 669f, vec4<bool>(false, false, false, true), Struct_2(253f, global1[_wgslsmith_index_u32(0u, 18u)], vec4<f32>(584f, -216f, 246f, 167f), Struct_1(vec2<f32>(-874f, -610f), vec3<bool>(false, true, true), u_input.a, u_input.a, false))).a.x, _wgslsmith_f_op_f32(round(-1000f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(max(551f, -424f)), _wgslsmith_div_f32(596f, 1002f)))));
    let var_1 = _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(23732i, 1i, 1i), select(vec3<i32>(-22419i, global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.b, 18u)], 57630i), var_0)), min(vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global1[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec3<i32>(-7559i, global1[_wgslsmith_index_u32(u_input.c.x, 18u)], -2339i)) | -vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)])), -(-vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global1[_wgslsmith_index_u32(16419u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)]) ^ vec3<i32>(min(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 0i), ~global1[_wgslsmith_index_u32(u_input.b, 18u)], ~global1[_wgslsmith_index_u32(1u, 18u)])));
    var var_2 = var_1;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -420f), select(0i | firstLeadingBit(firstTrailingBit(0i)), _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, var_1.x >> (u_input.a.x % 32u)), firstTrailingBit(1i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 4294967295u), ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, 1u)), 18u)] > _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.x, var_2.x), -vec2<i32>(-1i, -5215i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(477f, 1541f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) - -1642f), _wgslsmith_f_op_f32(ceil(-361f)))), func_2(reverseBits(vec3<u32>(u_input.b, u_input.c.x, 4294967295u)) >> (abs(vec3<u32>(u_input.a.x, 38753u, u_input.c.x)) % vec3<u32>(32u)), 221f, !vec4<bool>(var_0.x && var_0.x, true, var_0.x, false), Struct_2(1060f, 50173i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1080f, -838f, -126f, -243f) - vec4<f32>(1861f, 602f, 109f, -429f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, -552f, -1343f, -1000f)), select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, true, false, var_0.x), vec4<bool>(true, true, var_0.x, false)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, 827f)), vec3<bool>(true, true, true), u_input.a, u_input.a, true))));
    let var_4 = min(min(firstLeadingBit(~var_3.d.d.x), ~52259u), _wgslsmith_add_u32(u_input.c.x, 13298u));
    let var_5 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_1()), 273f), vec3<bool>(true, any(var_0), true), _wgslsmith_add_vec3_u32(u_input.a | var_3.d.d, ~(~vec3<u32>(41248u, u_input.c.x, u_input.b))) >> (var_3.d.d % vec3<u32>(32u)), select(~u_input.a, abs(vec3<u32>(97451u, 60710u, _wgslsmith_clamp_u32(u_input.a.x, var_4, var_3.d.d.x))), false), func_5(var_3.d, _wgslsmith_mult_vec2_i32(vec2<i32>(27754i, ~var_3.b), firstLeadingBit(~global2[_wgslsmith_index_u32(1u, 17u)])), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_3.d.a))), var_0, ~abs(vec3<u32>(var_3.d.d.x, 3372u, u_input.a.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 61532u, var_4), vec3<u32>(0u, var_4, var_3.d.c.x)) & max(vec3<u32>(var_3.d.d.x, 43081u, var_3.d.c.x), var_3.d.c), false), vec3<f32>(var_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-336f)) * _wgslsmith_f_op_f32(trunc(-392f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.a.x)))).x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_1.xx & vec2<i32>(abs(var_1.x | 13688i), ~(~(-11967i))), _wgslsmith_f_op_f32(max(-1035f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(func_2(vec3<u32>(var_3.d.d.x, u_input.b, 34488u), -447f, vec4<bool>(true, false, false, var_3.d.e), Struct_2(var_5.a.x, 94351i, var_3.c, Struct_1(var_5.a, var_0, vec3<u32>(1u, u_input.b, 69353u), var_3.d.d, var_3.d.b.x))).a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * var_3.d.a.x), 1147f))))), ~vec4<u32>(var_5.c.x, ~23033u, ~1u, _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(99211u, var_3.d.c.x, u_input.a.x, 4294967295u), vec4<u32>(var_4, 68575u, 119146u, u_input.c.x)), firstLeadingBit(0u))), -(~abs(~vec4<i32>(-1i, global1[_wgslsmith_index_u32(19810u, 18u)], var_2.x, 81548i))));
}

