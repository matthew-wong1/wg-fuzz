struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(42373i, 4567i, -1i), vec2<f32>(513f, 556f), vec3<bool>(false, true, false), 1000f, true);

var<private> global1: array<bool, 13>;

var<private> global2: array<Struct_1, 3>;

var<private> global3: vec3<f32> = vec3<f32>(-1000f, 1338f, 212f);

var<private> global4: array<Struct_2, 8>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(~select(1667u, u_input.a.x, arg_0.c.x), 21699u), ~14334u), 8u)];
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(countOneBits(0u), 3u)], select(select(vec3<bool>(any(vec2<bool>(var_0.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)])), global0.c.x, all(global0.c)), !(!var_0.b), arg_0.c), !var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + var_0.a.b.x) * global0.b.x) <= _wgslsmith_f_op_f32(-global3.x)), u_input.b);
    global4 = array<Struct_2, 8>();
    global1 = array<bool, 13>();
    var var_2 = u_input.a.x;
    return ~u_input.a.x;
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) << (_wgslsmith_mod_u32(u_input.a.x, 4294967295u) % 32u), func_3(global2[_wgslsmith_index_u32(abs(67543u), 3u)]), 46214u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 52235u, 1u)), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a);
    var var_1 = _wgslsmith_div_vec3_u32(((vec3<u32>(u_input.a.x, var_0, var_0) << (reverseBits(u_input.a.wwz) % vec3<u32>(32u))) & u_input.a.www) & _wgslsmith_sub_vec3_u32(u_input.a.zwz, max(vec3<u32>(var_0, 4294967295u, u_input.a.x), u_input.a.wzz)), u_input.a.ywx);
    let var_2 = 1i;
    var var_3 = select(0i, global0.a.x, any(global0.c));
    global4 = array<Struct_2, 8>();
    return global0.c;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global0.a, global0.a), _wgslsmith_mod_i32(global0.a.x, 0i), 1i);
    global0 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global0.a.x, _wgslsmith_add_i32(u_input.b, u_input.b)), u_input.b, (u_input.b >> (u_input.a.x % 32u)) >> (~u_input.a.x % 32u)), vec3<i32>(global0.a.x, _wgslsmith_sub_i32(-1i, 2147483647i), i32(-1i) * -22759i)), global0.b, func_2(), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.d - arg_0.x))), false);
    var var_1 = vec4<bool>(false | !global0.e, -abs(u_input.b) != u_input.b, global0.e, true || !any(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(4590u, 13u)])));
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(~0u, 3u)], global0.c, global0.a.x);
    return Struct_1(global0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global0.b.x + global3.x), 931f), _wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_div_vec2_f32(vec2<f32>(-691f, var_2.a.d), arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, global0.d), vec2<f32>(global0.d, -234f))))), select(global0.c, vec3<bool>(u_input.b == global0.a.x, var_2.b.x, all(!vec4<bool>(true, global0.e, global0.e, false))), vec3<bool>(global1[_wgslsmith_index_u32(reverseBits(~0u), 13u)], var_2.b.x, func_2().x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x))), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = global4[_wgslsmith_index_u32(u_input.a.x, 8u)];
    var var_1 = min(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(var_0.a.a.zx << (u_input.a.xz % vec2<u32>(32u)), global0.a.xy), -vec2<i32>(-var_0.c, arg_1.a.x));
    var var_2 = vec3<bool>(false, all(arg_1.c), all(!select(select(vec4<bool>(true, true, arg_0.c.x, arg_1.e), vec4<bool>(var_0.b.x, true, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], true), vec4<bool>(arg_0.c.x, arg_0.c.x, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, arg_0.e, global1[_wgslsmith_index_u32(2967u, 13u)]), global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec4<bool>(false, var_0.a.e, false, var_0.b.x))));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-_wgslsmith_add_i32(-5090i, arg_0.a.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1.a.x, arg_1.a.x), _wgslsmith_clamp_i32(0i, -1i, 0i))), 0i) & -6409i;
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-406f, var_0.a.d, 1100f, arg_1.d) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.x, 619f, global3.x, var_0.a.b.x) - vec4<f32>(-1170f, 288f, 1148f, 195f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(874f, -604f, var_0.a.b.x, var_0.a.b.x), vec4<f32>(global0.d, global3.x, -1256f, global0.d))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, global3.x, 1651f, _wgslsmith_f_op_f32(-arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, arg_1.d, -1545f, var_0.a.d)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(122f, 488f, var_0.a.b.x, -383f) - vec4<f32>(2299f, -736f, global0.b.x, 661f)))), any(select(!vec4<bool>(false, true, global0.e, var_0.a.e), !vec4<bool>(global0.e, false, true, false), var_2.x & global1[_wgslsmith_index_u32(41065u, 13u)]))))));
    return select(select(select(select(select(vec4<bool>(false, true, arg_0.e, arg_1.e), vec4<bool>(var_2.x, var_0.b.x, true, true), var_2.x), vec4<bool>(arg_1.e, arg_1.e, false, false), select(vec4<bool>(arg_0.c.x, var_0.b.x, true, var_0.a.c.x), vec4<bool>(false, false, true, var_2.x), false)), select(!vec4<bool>(false, false, arg_0.c.x, true), vec4<bool>(var_2.x, global0.c.x, arg_0.e, false), select(vec4<bool>(var_0.a.c.x, false, false, arg_0.e), vec4<bool>(false, true, true, var_0.a.c.x), false)), !(!var_2.x)), select(select(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], var_2.x, global1[_wgslsmith_index_u32(3080u, 13u)]), !vec4<bool>(var_0.a.c.x, var_0.b.x, false, false), select(vec4<bool>(true, var_0.b.x, false, global0.e), vec4<bool>(arg_0.c.x, arg_1.c.x, false, global1[_wgslsmith_index_u32(4294967295u, 13u)]), false)), select(select(vec4<bool>(arg_0.e, true, true, var_2.x), vec4<bool>(arg_0.c.x, arg_0.c.x, false, var_0.b.x), global0.c.x), vec4<bool>(arg_0.e, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], false, global0.e), !global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), true), select(select(!vec4<bool>(arg_0.c.x, false, global0.e, false), !vec4<bool>(var_2.x, global0.c.x, true, var_2.x), all(vec3<bool>(true, true, global0.e))), !select(vec4<bool>(arg_0.c.x, var_0.b.x, false, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec4<bool>(arg_0.e, global1[_wgslsmith_index_u32(71236u, 13u)], arg_0.e, true), vec4<bool>(arg_1.e, arg_1.e, true, false)), var_0.b.x)), select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(global0.e, global1[_wgslsmith_index_u32(10314u, 13u)], false, var_2.x), vec4<bool>(var_2.x, false, var_2.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]))), select(!(!vec4<bool>(arg_1.e, true, global1[_wgslsmith_index_u32(0u, 13u)], true)), vec4<bool>(global0.e, global0.c.x, var_0.b.x, true), !vec4<bool>(global0.e, false, true, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_4.x)), _wgslsmith_f_op_f32(global0.d + arg_1.d), var_2.x)) > _wgslsmith_f_op_f32(f32(-1f) * -694f)), select(vec4<bool>(true, true, var_0.b.x, var_2.x), select(!vec4<bool>(arg_1.c.x, global1[_wgslsmith_index_u32(0u, 13u)], arg_1.e, arg_1.c.x), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], false, false), select(vec4<bool>(false, var_0.b.x, arg_0.c.x, false), vec4<bool>(var_2.x, false, global1[_wgslsmith_index_u32(0u, 13u)], true), false), var_0.a.c.x & global1[_wgslsmith_index_u32(28788u, 13u)]), var_0.b.x), vec4<bool>(all(!vec2<bool>(arg_0.c.x, var_0.b.x)), var_0.b.x && !var_0.b.x, arg_1.c.x, select(1519f >= arg_1.b.x, arg_1.e & true, false))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<bool>) -> Struct_1 {
    global1 = array<bool, 13>();
    var var_0 = global0.a.x;
    var var_1 = global4[_wgslsmith_index_u32(u_input.a.x, 8u)];
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, ~countOneBits(1u)), 8u)];
    var_1 = global4[_wgslsmith_index_u32(u_input.a.x, 8u)];
    return func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(757f + var_1.a.d))), -1646f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(select(select(func_4(Struct_1(global0.a, vec2<f32>(726f, global3.x), vec3<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global0.e, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), 853f, false), func_1(global3.yx)), !select(vec4<bool>(global1[_wgslsmith_index_u32(90791u, 13u)], false, false, true), vec4<bool>(global0.e, true, true, true), vec4<bool>(global0.c.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(71391u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)])), func_2().x), select(select(func_4(Struct_1(global0.a, global0.b, global0.c, global3.x, false), global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), !vec4<bool>(true, global0.c.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global0.c.x), true), !select(vec4<bool>(global0.c.x, global1[_wgslsmith_index_u32(1u, 13u)], true, false), vec4<bool>(global0.c.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec4<bool>(global0.c.x, global0.e, false, false)), any(vec3<bool>(global0.c.x, global1[_wgslsmith_index_u32(25537u, 13u)], global0.c.x))), false), !(!global0.c.yx));
    var var_0 = func_1(global0.b).d;
    var var_1 = vec2<i32>(~global0.a.x, u_input.b);
    var var_2 = -441f;
    let var_3 = -var_1.x;
    let var_4 = global2[_wgslsmith_index_u32((46874u >> (abs(u_input.a.x) % 32u)) | 31169u, 3u)];
    let var_5 = func_5(vec4<bool>(var_4.e, any(func_5(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 13u)], global0.e, false), select(global0.c.xy, vec2<bool>(var_4.e, true), true)).c), !(!(u_input.a.x == 0u)), true), func_5(!select(func_4(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_1(global0.a, vec2<f32>(var_4.b.x, -300f), vec3<bool>(false, var_4.c.x, true), 1412f, false)), !vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(4924u, 13u)]), select(vec4<bool>(false, global0.c.x, true, global1[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(global0.c.x, var_4.e, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], var_4.c.x), vec4<bool>(false, global0.e, true, global0.c.x))), select(vec2<bool>(all(vec4<bool>(false, global1[_wgslsmith_index_u32(11532u, 13u)], true, false)), global1[_wgslsmith_index_u32(~u_input.a.x, 13u)]), vec2<bool>(false, global3.x >= var_4.b.x), !func_5(vec4<bool>(var_4.e, true, global0.e, true), vec2<bool>(true, var_4.c.x)).c.zz)).c.xy);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_u32(1u, 12671u)), min(-select(firstTrailingBit(global0.a), select(global0.a, var_5.a, vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 13u)])), !var_5.c), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, reverseBits(23109i), -60975i), var_4.a)), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x, ~(~(u_input.a.x >> (u_input.a.x % 32u))), min(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 25121u), vec3<u32>(26242u, 0u, 1u)), 4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, 53619u), vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x)) % 32u))), 998f);
}

