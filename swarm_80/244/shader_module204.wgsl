struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: Struct_2;

var<private> global2: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(0u, 90673u, 11985u, 20249u), vec4<u32>(4294967295u, 86533u, 1u, 4294967295u), vec4<u32>(25054u, 0u, 4u, 1u), vec4<u32>(139319u, 1u, 0u, 42738u), vec4<u32>(1u, 40067u, 1u, 25774u), vec4<u32>(37438u, 8080u, 1u, 50675u), vec4<u32>(58825u, 104358u, 0u, 9164u), vec4<u32>(4294967295u, 1u, 1u, 90188u), vec4<u32>(60634u, 1173u, 0u, 4294967295u), vec4<u32>(47992u, 11862u, 10352u, 1u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u));

var<private> global3: f32 = -257f;

var<private> global4: vec3<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    let var_0 = 4294967295u;
    let var_1 = global1.b;
    let var_2 = vec4<i32>(reverseBits(-2147483647i), arg_3.b.b.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.e.x, arg_1.x, global4.x, var_1.b.x), ~vec4<i32>(0i, arg_3.b.e.x, arg_1.x, 13174i), !vec4<bool>(global1.a.x, true, true, true)), arg_3.b.b << ((vec4<u32>(var_0, var_0, var_0, 37808u) >> (global2[_wgslsmith_index_u32(4294967295u, 11u)] % vec4<u32>(32u))) % vec4<u32>(32u)))), reverseBits(-62020i));
    return abs(firstTrailingBit(i32(-1i) * -_wgslsmith_clamp_i32(-60757i, u_input.a, arg_1.x)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> vec3<u32> {
    let var_0 = ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_3.x, 1u) << (~(arg_3.x ^ global0[_wgslsmith_index_u32(60349u, 19u)]) % 32u), 19u)] & ~select(_wgslsmith_mult_u32(1u, arg_3.x | global0[_wgslsmith_index_u32(16248u, 19u)]), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(29627u, 19u)], 19u)], arg_2.c.x);
    var var_1 = !(false && (!global1.b.a == true));
    let var_2 = Struct_1(arg_0.b.c < 1136f, arg_2.b.e, 109f, _wgslsmith_f_op_f32(542f + 2216f), -vec4<i32>(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.d, arg_2.b.d, -1501f)), vec3<i32>(36508i, 0i, global1.b.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(16394u, 35406u), vec2<u32>(0u, arg_3.x)), Struct_2(arg_2.a, Struct_1(arg_2.b.a, vec4<i32>(arg_1.b.x, -2545i, global1.b.e.x, global4.x), arg_0.b.d, arg_2.b.d, vec4<i32>(global1.b.b.x, 28437i, -11903i, arg_1.b.x)), global1.a)), max(max(u_input.a, global4.x), arg_1.b.x), abs(global1.b.b.x), global1.b.b.x));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -127f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c, -352f, -311f, arg_0.b.c)), vec4<f32>(global1.b.d, 1440f, 363f, 1992f), arg_1.a && false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1073f, arg_2.b.c, arg_1.d, -1366f) * vec4<f32>(arg_0.b.d, arg_0.b.c, 238f, -760f)))))));
    return ~(~countOneBits(vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(arg_3, arg_3), ~11197u)));
}

fn func_1(arg_0: u32, arg_1: u32) -> vec4<bool> {
    global1 = Struct_2(global1.c, global1.b, global1.c);
    global2 = array<vec4<u32>, 11>();
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~arg_1, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(arg_0 | arg_0, 19u)], 1u), ~arg_1), abs(select(func_2(Struct_2(global1.c, Struct_1(false, vec4<i32>(global1.b.e.x, -28860i, global4.x, 1i), -1000f, -148f, vec4<i32>(-9207i, u_input.a, global4.x, 33718i)), vec4<bool>(global1.c.x, true, false, false)), global1.b, Struct_2(vec4<bool>(global1.a.x, true, global1.b.a, true), global1.b, vec4<bool>(false, global1.b.a, true, global1.a.x)), vec3<u32>(global0[_wgslsmith_index_u32(7322u, 19u)], 0u, global0[_wgslsmith_index_u32(arg_1, 19u)])), abs(vec3<u32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(95261u, 19u)], 1u)), all(vec4<bool>(false, false, global1.c.x, global1.c.x))))) & ~reverseBits(~(~vec3<u32>(arg_1, global0[_wgslsmith_index_u32(4294967295u, 19u)], arg_0)));
    var var_1 = vec3<bool>(true, global1.a.x, global1.c.x || false);
    var var_2 = Struct_1(-28746i <= reverseBits(u_input.a), vec4<i32>(-1i, ~global1.b.e.x, u_input.a, ~(~(-20293i))), _wgslsmith_f_op_f32(trunc(-2242f)), _wgslsmith_f_op_f32(-1546f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.c), _wgslsmith_f_op_f32(ceil(global1.b.c)), var_1.x || true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1333f + -1000f) - _wgslsmith_f_op_f32(global1.b.c - 395f)))), _wgslsmith_sub_vec4_i32(firstLeadingBit(min(global1.b.b >> (global2[_wgslsmith_index_u32(1u, 11u)] % vec4<u32>(32u)), vec4<i32>(u_input.a, 2147483647i, global4.x, global4.x))), abs(min(_wgslsmith_clamp_vec4_i32(global1.b.b, vec4<i32>(-46407i, u_input.a, global1.b.e.x, -5186i), vec4<i32>(u_input.a, 22301i, global4.x, -1i)), global1.b.e))));
    return vec4<bool>(all(!(!global1.a.yxx)), -761f >= _wgslsmith_f_op_f32(ceil(global1.b.d)), min(_wgslsmith_clamp_i32(_wgslsmith_div_i32(global1.b.b.x, 1i), 0i, -1i), _wgslsmith_mod_i32(global4.x << (arg_1 % 32u), _wgslsmith_sub_i32(-3223i, -2147483647i))) > global4.x, !var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(global1.c, select(global1.a, func_1(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(72424u, 19u)], 19u)], 19u)]), (global4.x < 31056i) || any(global1.c.wz)), global1.a), Struct_1(false, min(vec4<i32>(global4.x, u_input.a, -22290i, abs(u_input.a)), reverseBits(global1.b.b) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 23949u, 0u, 55439u), vec4<u32>(0u, global0[_wgslsmith_index_u32(42564u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(5189u, 19u)])) % vec4<u32>(32u))), _wgslsmith_f_op_f32(281f * global1.b.d), global1.b.c, global1.b.e), select(func_1(abs(1u), global0[_wgslsmith_index_u32(~(~0u), 19u)]), func_1(~_wgslsmith_mod_u32(35782u, 41459u), _wgslsmith_mod_u32(4294967295u >> (global0[_wgslsmith_index_u32(76797u, 19u)] % 32u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(32835u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10429u, 19u)], 19u)], 19u)]))), global1.a.x));
    var var_1 = all(vec3<bool>(!any(!global1.c.ywx), !var_0.a.x, all(!(!global1.c.xw))));
    var var_2 = Struct_2(global1.a, Struct_1(false, ~(-vec4<i32>(global1.b.b.x, global1.b.b.x, -2147483647i, -325i)), 484f, 670f, _wgslsmith_add_vec4_i32(firstLeadingBit(var_0.b.b), vec4<i32>(global1.b.e.x, abs(global1.b.b.x), -1320i, max(var_0.b.b.x, -2147483647i)))), vec4<bool>(!global1.c.x, all(vec2<bool>(212f <= global1.b.c, !global1.b.a)), false, !var_0.b.a));
    var var_3 = var_0;
    var var_4 = 2147483647i;
    var var_5 = global1.b;
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(64616u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1663f, global1.b.c), var_3.b.c) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(750f, var_5.d) + vec2<f32>(var_6.b.d, var_3.b.c)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-176f, -1071f), vec2<f32>(181f, 665f), var_0.a.yy))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1663f, 943f)))))), func_1(firstLeadingBit(select(4294967295u, global0[_wgslsmith_index_u32(39912u, 19u)], var_2.a.x)), 0u).x)), var_2.b.e.x, var_5.d, _wgslsmith_f_op_f32(select(var_3.b.c, var_3.b.c, true)));
}

