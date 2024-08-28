struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

var<private> global2: array<vec3<bool>, 8>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = -_wgslsmith_mult_i32(select(arg_0.a, _wgslsmith_mod_i32(arg_1, 18601i), false) | arg_2.a, abs(-select(0i, 1i, true)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-729f, -239f), vec2<f32>(-259f, -185f)))) * vec2<f32>(-249f, _wgslsmith_f_op_f32(sign(1047f)))), ((arg_3.x | 1u) >> (_wgslsmith_mult_u32(36989u, global0.x) % 32u)) > (_wgslsmith_add_u32(global0.x, arg_3.x) & reverseBits(global0.x)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1157f * -504f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(570f, 133f) * _wgslsmith_f_op_f32(max(1000f, 591f))), _wgslsmith_f_op_f32(select(-408f, _wgslsmith_f_op_f32(round(1000f)), true))), -1226f, !global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(107584u, 101634u), 5u)]), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1285f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(715f + -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + 1000f), _wgslsmith_f_op_f32(trunc(1504f)))), _wgslsmith_f_op_f32(-497f + _wgslsmith_f_op_f32(f32(-1f) * -582f))))), _wgslsmith_sub_i32(arg_0.a, -2147483647i) > _wgslsmith_dot_vec2_i32(~reverseBits(u_input.a.xx), u_input.a.yy), global0.x);
    let var_2 = ~arg_3.x;
    let var_3 = vec3<u32>(0u & var_1.d, 25667u, var_1.d);
    let var_4 = !select(select(vec4<bool>(true, true, !var_1.a.e.x, true), select(vec4<bool>(true, var_1.a.e.x, var_1.c, true), vec4<bool>(var_1.a.b, true, true, var_1.a.e.x), vec4<bool>(true, false, var_1.a.b, var_1.a.e.x)), true | var_1.a.b), select(!(!vec4<bool>(var_1.c, false, var_1.a.e.x, true)), !select(vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.a.e.x), vec4<bool>(var_1.a.e.x, var_1.a.e.x, var_1.a.e.x, var_1.c), vec4<bool>(false, true, false, var_1.a.b)), !select(vec4<bool>(var_1.c, var_1.a.b, false, false), vec4<bool>(var_1.c, false, var_1.a.b, var_1.a.b), var_1.c)), false);
    return select(!(!(!var_1.a.e)), var_1.a.e, !vec3<bool>(all(var_4), true, var_4.x));
}

fn func_2() -> Struct_4 {
    global2 = array<vec3<bool>, 8>();
    global0 = vec2<u32>(~4294967295u, global0.x);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(130f, 557f)) - vec2<f32>(-166f, -685f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1447f, 202f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2442f, 427f))))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1043f, 1592f)), _wgslsmith_f_op_f32(922f * -1362f), -1000f))), 106f, func_3(Struct_4(_wgslsmith_mult_i32(1i, 1i)), 0i, Struct_4(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.zxz, vec3<i32>(0i, u_input.b, -2693i)), 1i)), vec2<u32>(~(~23967u), 4294967295u)));
    global1 = array<vec3<bool>, 5>();
    let var_1 = Struct_4(select(-(~(~(-34664i))), abs(_wgslsmith_mod_i32(u_input.b, ~u_input.c.x)), var_0.b || (311f != _wgslsmith_f_op_f32(-219f - var_0.d))));
    return var_1;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> Struct_1 {
    let var_0 = Struct_3(10977u, -u_input.c.x, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1267f, -744f))), vec2<f32>(1000f, -1168f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -200f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(158f, 256f))))), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-489f, -462f, -1059f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 115f, 404f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(355f, -1012f))), select(!global1[_wgslsmith_index_u32(44228u, 5u)], !select(global2[_wgslsmith_index_u32(global0.x, 8u)], vec3<bool>(false, true, false), false), func_3(func_2(), ~u_input.c.x, Struct_4(arg_0.a), ~vec2<u32>(global0.x, 1523u)))));
    let var_1 = arg_1;
    let var_2 = vec2<i32>(0i, 1i);
    var var_3 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(select(vec3<i32>(38945i, var_2.x, 1i), u_input.a.xyy, global2[_wgslsmith_index_u32(71785u, 8u)])), max(u_input.a.wyx, select(vec3<i32>(arg_1.a, 7852i, -65921i), u_input.c, false)), _wgslsmith_clamp_vec3_i32(u_input.a.zyx, u_input.a.wyy, -u_input.c)), _wgslsmith_mod_vec3_i32(u_input.a.ywz, firstTrailingBit(u_input.c)));
    global2 = array<vec3<bool>, 8>();
    return var_0.c;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> i32 {
    var var_0 = Struct_4(0i);
    global0 = _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global0.x) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<u32>(0u, global0.x), select(vec2<u32>(global0.x, global0.x), vec2<u32>(1u, global0.x), arg_0.e.x)), ~(vec2<u32>(global0.x, 0u) ^ vec2<u32>(global0.x, global0.x))), reverseBits(vec2<u32>(4294967295u << (_wgslsmith_add_u32(global0.x, global0.x) % 32u), _wgslsmith_mod_u32(min(global0.x, global0.x), countOneBits(7940u)))));
    var var_1 = -995f;
    var var_2 = func_2();
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -382f);
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(0i, 20145i), var_2.a);
}

fn func_6(arg_0: i32) -> vec2<u32> {
    let var_0 = max(vec3<u32>(_wgslsmith_div_u32(5262u, global0.x), 4294967295u, countOneBits(global0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(~0u, firstLeadingBit(~5294u), global0.x), vec3<u32>(global0.x, ~(~global0.x), _wgslsmith_add_u32(1u, 25222u))));
    global0 = firstLeadingBit(var_0.zy);
    let var_1 = Struct_3(0u, ~u_input.c.x, func_4(func_2(), func_2()));
    var var_2 = Struct_2(var_1.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(379f - var_1.c.a.x), var_1.c.c.x, _wgslsmith_f_op_f32(abs(1165f)), -1616f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -288f, var_1.c.d, 521f)))))))), true, 4294967295u);
    global1 = array<vec3<bool>, 5>();
    return var_0.zy;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_4) -> i32 {
    global0 = vec2<u32>(arg_2.a, global0.x);
    global2 = array<vec3<bool>, 8>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_2.c.c.xz - vec2<f32>(arg_2.c.d, arg_2.c.a.x)))))))), arg_2.c.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.c.c.x))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.c.x + arg_0.x) + -1193f)))), arg_0.x, !(!select(select(arg_2.c.e, global1[_wgslsmith_index_u32(1u, 5u)], arg_2.c.b), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.a, 4294967295u), 5u)], !global2[_wgslsmith_index_u32(arg_2.a, 8u)])));
    global0 = func_6(func_5(func_4(Struct_4(arg_2.b), func_2()), arg_1, _wgslsmith_div_vec3_f32(vec3<f32>(-201f, arg_0.x, 119f), arg_0), u_input.a)) | reverseBits(~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(4294967295u, global0.x)), select(vec2<u32>(7699u, 69667u), vec2<u32>(arg_2.a, arg_2.a), true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-662f, arg_0.x)))));
    return reverseBits(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 8>();
    let var_0 = select(select(vec2<bool>(-u_input.b > 0i, all(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), false), vec2<bool>(true, true)), false | (u_input.c.x > func_1(vec3<f32>(-222f, 1593f, 1501f), -1i, Struct_3(global0.x, 0i, Struct_1(vec2<f32>(-380f, 1000f), false, vec3<f32>(-1450f, 1713f, -2202f), 846f, vec3<bool>(true, false, false))), Struct_4(-8450i)))), select(vec2<bool>(true, false), func_4(func_2(), Struct_4(~29972i)).e.xz, true), !func_3(func_2(), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, -17652i, -1i), vec4<i32>(-1i, -2147483647i, -10385i, u_input.b)), u_input.b), Struct_4(i32(-1i) * -1i), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 1222u, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 6991u, global0.x)), ~35657u)).yx);
    let var_1 = _wgslsmith_mult_vec3_u32(~vec3<u32>(reverseBits(_wgslsmith_div_u32(26010u, 75356u)), _wgslsmith_mod_u32(global0.x, ~global0.x), 0u), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, global0.x, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), abs(global0.x), _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(1u, global0.x))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, global0.x), countOneBits(vec3<u32>(global0.x, global0.x, global0.x))) >> (max(~vec3<u32>(global0.x, 34020u, global0.x), ~vec3<u32>(0u, global0.x, global0.x)) % vec3<u32>(32u))));
    global0 = ~var_1.zx;
    var var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(global0.x >> (var_1.x % 32u), select(var_1.x, var_1.x, var_0.x))), vec3<i32>(-17631i, _wgslsmith_add_i32(-22263i, 0i), max(1i, ~select(1i, u_input.a.x, var_0.x))));
}

