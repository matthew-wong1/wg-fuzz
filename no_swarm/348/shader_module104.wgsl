struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
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

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 27> = array<u32, 27>(0u, 4294967295u, 41022u, 0u, 1666u, 1u, 21570u, 29908u, 0u, 0u, 0u, 4294967295u, 0u, 44446u, 69562u, 48988u, 50251u, 4294967295u, 60648u, 30216u, 4294967295u, 80922u, 0u, 4294967295u, 55593u, 4294967295u, 4294967295u);

var<private> global2: array<f32, 8>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> vec2<u32> {
    let var_0 = abs(~(~select(_wgslsmith_add_u32(u_input.a, 34019u), 2544u << (u_input.a % 32u), global0.x)));
    var var_1 = _wgslsmith_add_vec2_i32((_wgslsmith_div_vec2_i32(~u_input.e.wz, vec2<i32>(-18842i, u_input.e.x)) >> (vec2<u32>(_wgslsmith_add_u32(arg_1.c.x, 47460u), ~80297u) % vec2<u32>(32u))) >> (reverseBits(arg_1.c) % vec2<u32>(32u)), u_input.d.xy);
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(arg_1.d.a));
    global0 = select(select(vec3<bool>(!(arg_1.d.d && arg_1.d.d), !(!global0.x), arg_1.d.d), !vec3<bool>(any(vec3<bool>(arg_1.d.d, true, global0.x)), true, all(vec4<bool>(arg_1.d.d, false, global0.x, false))), true), vec3<bool>(~arg_1.b <= 0i, false, true), vec3<bool>(true, false, false));
    let var_3 = arg_1;
    return vec2<u32>(~0u, var_3.c.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> vec3<f32> {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(412f + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 8u)], global2[_wgslsmith_index_u32(0u, 8u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(18768u, 8u)]), global2[_wgslsmith_index_u32(4294967295u, 8u)])), -789f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, u_input.a), 8u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-855f * -229f) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(70453u, 8u)] - -791f))), -329f), -2856f, _wgslsmith_mult_vec2_u32(arg_1, min(func_3(global1[_wgslsmith_index_u32(arg_1.x, 27u)], Struct_3(vec3<f32>(752f, global2[_wgslsmith_index_u32(10948u, 8u)], -1239f), -1i, arg_1, Struct_1(vec4<f32>(-1000f, 770f, -173f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29404u, 27u)], 8u)]), global2[_wgslsmith_index_u32(arg_1.x, 8u)], arg_1, false, global2[_wgslsmith_index_u32(u_input.a, 8u)])), global2[_wgslsmith_index_u32(u_input.a, 8u)], u_input.e.x), arg_1)) << (~vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 27u)] << (0u % 32u), 1u) % vec2<u32>(32u)), true, -602f);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * _wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.a, global0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 8u)], -227f, -1000f, 2087f))) * vec4<f32>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], var_0.b, 597f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1071f)), vec2<u32>(_wgslsmith_add_u32(0u, abs(1u)), 1u), global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30513u, 27u)], 8u)]))))));
    var_0 = var_1.a;
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_0.e) * var_0.e) + var_0.e), var_1.a.b, _wgslsmith_f_op_f32(max(-855f, var_1.a.b)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    global0 = !vec3<bool>(arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(u_input.b, 2147483647i), vec2<u32>(43195u, 0u))).x) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 1169f), false);
    var var_0 = true;
    var var_1 = arg_1;
    global2 = array<f32, 8>();
    var var_2 = Struct_3(vec3<f32>(-139f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(40286u, 76324u) >> (~global1[_wgslsmith_index_u32(1u, 27u)] % 32u), 8u)], _wgslsmith_div_f32(arg_0.x, arg_0.x), select(true, any(vec2<bool>(arg_1.d, true)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.c.x, 8u)])) * arg_1.a.x)), u_input.c, max(vec2<u32>(u_input.a, ~_wgslsmith_clamp_u32(20594u, 13019u, 22549u)), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), arg_1.c), 30393u)), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-121f + -434f), _wgslsmith_f_op_f32(select(324f, -2876f, global0.x)), _wgslsmith_f_op_f32(-618f - arg_0.x), -2016f), var_1.a, vec4<bool>(arg_1.d || global0.x, all(vec3<bool>(false, var_1.d, true)), arg_1.d, var_1.d | arg_1.d))), arg_0.x, min(abs(vec2<u32>(arg_1.c.x, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(arg_1.c.x, 27u)], 7570u), ~arg_1.c)), true, var_1.b));
    return Struct_1(var_2.d.a, -1313f, _wgslsmith_mult_vec2_u32(reverseBits(reverseBits(~var_1.c)), _wgslsmith_mod_vec2_u32(countOneBits(arg_1.c), countOneBits(_wgslsmith_mult_vec2_u32(var_2.d.c, vec2<u32>(u_input.a, 15406u))))), var_2.d.d, -831f);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> bool {
    global1 = array<u32, 27>();
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(-1i, arg_0.x) >> (vec2<u32>(4377u, 34418u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 27u)], 0u), vec2<u32>(u_input.a, 4294967295u))))))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-805f, -686f, -1931f, 985f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 8u)]))), ~vec2<u32>(1u, 1u), global0.x, 596f));
    global1 = array<u32, 27>();
    var var_1 = Struct_4(1538f, ~select(~(~vec4<u32>(1u, 50503u, u_input.a, 1u)), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.a, 4294967295u, 32531u)), ~vec4<u32>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(25689u, 27u)], u_input.a, u_input.a)), !(!vec4<bool>(true, global0.x, global0.x, global0.x))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(31890u, 8u)], var_0.b, -311f, global2[_wgslsmith_index_u32(53390u, 8u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(323f, global2[_wgslsmith_index_u32(var_0.c.x, 8u)], var_1.a, -1962f), var_0.a))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1812f, -2048f, -1489f, -1000f), _wgslsmith_f_op_vec4_f32(max(var_0.a, var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(~4294967295u, 8u)], -2206f, all(vec4<bool>(true, true, false, global0.x))))), var_0.c, _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.d.xxz), arg_0.wyy >> (var_1.b.zxx % vec3<u32>(32u))) <= (i32(-1i) * -16791i), _wgslsmith_f_op_f32(round(-636f))));
    return func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-614f, _wgslsmith_f_op_f32(-1747f - _wgslsmith_f_op_f32(-var_2.a.a.x)), global2[_wgslsmith_index_u32(4294967295u, 8u)])), func_4(vec3<f32>(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(-494f * _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(var_1.b.x, 8u)]))), var_2.a.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_0.c.x, 8u)], var_0.e, var_1.a, -348f) + var_2.a.a), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(var_2.a.e, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 27u)], 8u)]))), vec2<u32>(global1[_wgslsmith_index_u32(0u, 27u)], 41179u) & vec2<u32>(17334u, var_2.a.c.x), any(select(vec4<bool>(var_0.d, var_2.a.d, true, global0.x), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, var_0.d, global0.x, var_2.a.d))), var_0.b))).d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(global0.x, true, !(!global0.x || true)), select(vec3<bool>(global0.x, !func_1(u_input.e, global0.x), any(!vec3<bool>(false, global0.x, false))), !(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, true))), all(vec3<bool>(false, any(vec2<bool>(global0.x, global0.x)), any(vec4<bool>(global0.x, false, false, global0.x))))), func_1(u_input.e, any(vec3<bool>(true, !global0.x, true))));
    global2 = array<f32, 8>();
    global1 = array<u32, 27>();
    let var_0 = ~((vec4<i32>(u_input.d.x, -2147483647i, _wgslsmith_dot_vec3_i32(u_input.e.zwy, vec3<i32>(u_input.e.x, -39590i, -48379i)), -17298i) << (select(~vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], u_input.a, u_input.a), ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(35917u, 27u)], 0u, 45099u), true) % vec4<u32>(32u))) << ((firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], 36880u, u_input.a, u_input.a)) ^ vec4<u32>(global1[_wgslsmith_index_u32(u_input.a << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 27u)], 27u)] % 32u), 27u)], func_4(vec3<f32>(1425f, -468f, global2[_wgslsmith_index_u32(34467u, 8u)]), Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(18325u, 8u)], global2[_wgslsmith_index_u32(47167u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)]), -1561f, vec2<u32>(36483u, global1[_wgslsmith_index_u32(0u, 27u)]), global0.x, global2[_wgslsmith_index_u32(25279u, 8u)])).c.x, 45120u, ~20266u)) % vec4<u32>(32u)));
    let var_1 = ~(-countOneBits(var_0.yyx ^ vec3<i32>(var_0.x, -13425i, u_input.d.x)));
    global1 = array<u32, 27>();
    let var_2 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17702u, 27u)], 8u)], global2[_wgslsmith_index_u32(32336u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)]), vec3<f32>(-555f, 269f, global2[_wgslsmith_index_u32(u_input.a, 8u)]), vec3<bool>(false, false, false))))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1826f, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(84674u, 27u)], 27u)], 8u)], global2[_wgslsmith_index_u32(33564u, 8u)]), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 8u)], 268f, -246f, -1184f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_f_op_f32(f32(-1f) * -625f)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 25041u), ~vec2<u32>(u_input.a, u_input.a)), true, 1537f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global2[_wgslsmith_index_u32(0u, 8u)], 1f, func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1633f, global2[_wgslsmith_index_u32(11931u, 8u)], -987f)), var_2.a.a.yyy), var_2.a).b));
}

