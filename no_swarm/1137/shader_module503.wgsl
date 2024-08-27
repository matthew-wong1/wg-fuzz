struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(0i, -1i, -3342i, 2147483647i, 2777i, 1i, -53596i, -61728i, i32(-2147483648), 14394i, 0i, -29634i, -34688i);

var<private> global1: vec3<bool>;

var<private> global2: Struct_2 = Struct_2(73089u, true, vec3<f32>(127f, 330f, 929f), 61290u, Struct_1(10692i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: f32) -> vec3<f32> {
    global0 = array<i32, 13>();
    global1 = vec3<bool>(global2.b, !(!all(vec2<bool>(global1.x, false))) & all(select(vec2<bool>(global1.x, arg_0), select(global1.zy, vec2<bool>(true, global1.x), true), global1.x)), any(select(vec4<bool>(global1.x, !global1.x, false, !global1.x), !select(vec4<bool>(arg_0, true, true, global1.x), vec4<bool>(false, true, true, false), arg_0), vec4<bool>(true, !global1.x, false, !global1.x))));
    let var_0 = !all(vec4<bool>(true, arg_0, all(vec2<bool>(false, global2.b)), global2.b && global2.b)) || all(vec3<bool>(arg_0, global2.b, all(global1.yy)));
    var var_1 = Struct_2(78881u, global2.b == true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global2.c)) * vec3<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(-633f + arg_1), _wgslsmith_f_op_f32(round(global2.c.x)))) + vec3<f32>(-744f, 1568f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-global2.c.x)))), 4294967295u, global2.e);
    global1 = !select(!select(vec3<bool>(false, false, false), vec3<bool>(var_1.b, global2.b, true), vec3<bool>(true, true, true)), select(!(!vec3<bool>(true, global1.x, false)), vec3<bool>(var_1.b, var_1.b, true), any(select(global1.xz, global1.yx, false))), select(select(select(vec3<bool>(var_0, false, false), vec3<bool>(global1.x, global1.x, arg_0), global2.b), vec3<bool>(false, var_0, var_0), vec3<bool>(false, false, global1.x)), select(!vec3<bool>(false, global2.b, false), vec3<bool>(false, arg_0, global1.x), !arg_0), any(vec4<bool>(global1.x, true, false, arg_0))));
    return _wgslsmith_div_vec3_f32(var_1.c, var_1.c);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    global0 = array<i32, 13>();
    let var_0 = !(!global2.b);
    global0 = array<i32, 13>();
    let var_1 = Struct_1(-1246i);
    global2 = Struct_2(_wgslsmith_add_u32(u_input.c.x, min(abs(~2120u), arg_1.a)), arg_0, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, 674f, _wgslsmith_f_op_f32(abs(-845f)))))), 76276u, var_1);
    return global2.d;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    var var_0 = func_4(global1.x, Struct_2(u_input.c.x, global2.b, _wgslsmith_f_op_vec3_f32(func_3(global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(171f * 807f), _wgslsmith_f_op_f32(floor(global2.c.x)))))), global2.a, Struct_1(abs(min(global2.e.a, arg_3)))), vec3<i32>(i32(-1i) * -(~0i), _wgslsmith_dot_vec2_i32(~max(vec2<i32>(arg_1.x, 2147483647i), vec2<i32>(19554i, global0[_wgslsmith_index_u32(0u, 13u)])), -vec2<i32>(arg_3, 1i)), _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(u_input.b.wzw, vec3<i32>(-1i, -1i, -1i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(467i, 2147483647i, arg_3), u_input.b.zwy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)));
    var var_1 = Struct_2(1u, global2.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1406f), global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.c.x, global2.c.x))))), min(~firstTrailingBit(~global2.d), ~(~u_input.c.x)), global2.e);
    var var_2 = vec3<u32>(~42736u, ~4294967295u, firstTrailingBit(~10352u));
    return Struct_1(2147483647i);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    global2 = Struct_2(1u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(847f * _wgslsmith_f_op_f32(global2.c.x * 764f)))) <= _wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(abs(global2.c.x))), global2.c, 1u, Struct_1(global0[_wgslsmith_index_u32(58476u, 13u)]));
    var var_0 = global2.c.yy;
    let var_1 = !(!(!vec3<bool>(!global1.x, arg_1.x, global2.b)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f)), _wgslsmith_f_op_f32(trunc(-923f)), !any(!vec2<bool>(global1.x, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1898f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-global2.c);
    return arg_0.a;
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> vec2<u32> {
    global2 = arg_1;
    let var_0 = func_2(~_wgslsmith_clamp_i32(countOneBits(-2147483647i) & select(global2.e.a, 2147483647i, arg_1.b), 1i, select(~(-2147483647i), ~23715i, global2.b)), abs(vec2<i32>(global2.e.a, arg_2)) ^ _wgslsmith_add_vec2_i32(u_input.b.yw, u_input.b.xy & (vec2<i32>(2147483647i, -1i) & u_input.b.xw)), _wgslsmith_mult_i32(14562i, 30479i) > global0[_wgslsmith_index_u32(72447u, 13u)], u_input.a);
    var var_1 = _wgslsmith_mult_i32(firstTrailingBit(-2147483647i), -(~_wgslsmith_mod_i32(~arg_3, -1i)));
    let var_2 = func_2(~max(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_1.d, 20924u), 13u)], ~(-6959i >> (1u % 32u))), vec2<i32>(-(_wgslsmith_sub_i32(-23671i, arg_0) & arg_3), var_0.a), true, _wgslsmith_sub_i32(arg_3, -21420i));
    var_1 = ~abs(2147483647i);
    return _wgslsmith_div_vec2_u32(u_input.c.zy, firstTrailingBit(u_input.c.xy));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = -_wgslsmith_add_vec3_i32(u_input.b.ywy, _wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 13u)], 0i, u_input.a) >> (vec3<u32>(global2.d, u_input.c.x, 44870u) % vec3<u32>(32u)), firstTrailingBit(u_input.b.wwx)));
    var_0 = ~(-vec3<i32>(_wgslsmith_clamp_i32(-global2.e.a, 1i, _wgslsmith_div_i32(var_0.x, u_input.b.x)), countOneBits(-1i), _wgslsmith_mod_i32(1i, ~global0[_wgslsmith_index_u32(global2.d, 13u)])));
    let var_1 = func_6(firstLeadingBit(~func_5(func_2(0i, var_0.yy, global1.x, 2147483647i), global1.zz)), Struct_2(u_input.c.x, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2.c))), 82856u, func_2(func_2(global0[_wgslsmith_index_u32(9909u, 13u)], vec2<i32>(var_0.x, 12055i) >> (u_input.c.zz % vec2<u32>(32u)), true, global0[_wgslsmith_index_u32(u_input.c.x, 13u)] & var_0.x).a, u_input.b.xz, (true && global2.b) == (global0[_wgslsmith_index_u32(global2.a, 13u)] != -2147483647i), 115i)), var_0.x, u_input.b.x);
    let var_2 = var_1.x;
    var var_3 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 56099u, ~4294967295u, reverseBits(u_input.c.x)), ~vec4<u32>(2048u, var_1.x, var_1.x, 30245u)));
    return Struct_2(0u, countOneBits(var_0.x) > -_wgslsmith_dot_vec3_i32(vec3<i32>(-39113i, global0[_wgslsmith_index_u32(var_2, 13u)], 4292i), u_input.b.xwx & vec3<i32>(global2.e.a, -54708i, u_input.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -830f), _wgslsmith_f_op_f32(trunc(-1472f)), _wgslsmith_f_op_f32(trunc(-486f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.x, global2.c.x) * _wgslsmith_div_f32(-165f, -280f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(ceil(155f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f * global2.c.x))), vec3<bool>(!(global1.x == false), arg_0, false))), 50884u, Struct_1(countOneBits(~global2.e.a)));
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    let var_0 = global2.c.xy;
    global1 = select(!(!select(!vec3<bool>(arg_0.b, global1.x, true), select(vec3<bool>(arg_0.b, global2.b, false), vec3<bool>(true, global2.b, global1.x), global1.x), !vec3<bool>(true, arg_0.b, true))), !select(!select(vec3<bool>(global2.b, false, true), vec3<bool>(true, true, true), arg_0.b), select(vec3<bool>(arg_0.b, arg_0.b, global1.x), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, global2.b, true), arg_0.b)), true), arg_0.b);
    let var_1 = !global1.x && all(global1.zy);
    var var_2 = _wgslsmith_f_op_f32(429f + _wgslsmith_f_op_f32(-1f));
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.x)) * _wgslsmith_f_op_vec3_f32(func_3((global2.b && true) && global2.b, -1828f)).x)));
    return Struct_1(-1i);
}

fn func_8(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = false;
    global1 = vec3<bool>(true, true, true);
    var var_1 = ~(~75777u);
    global2 = Struct_2(~_wgslsmith_clamp_u32(~4294967295u, func_6(reverseBits(-29828i), Struct_2(4462u, false, global2.c, arg_0, global2.e), reverseBits(1i), -41845i).x, ~_wgslsmith_sub_u32(u_input.c.x, global2.d)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2000f, -642f, 2468f), vec3<f32>(global2.c.x, global2.c.x, 675f), true)), _wgslsmith_f_op_vec3_f32(ceil(global2.c)))), global2.c) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c * vec3<f32>(global2.c.x, global2.c.x, global2.c.x)))), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~u_input.c.xz, _wgslsmith_mod_vec2_u32(vec2<u32>(65404u, 4294967295u), u_input.c.xz)), ~(~4294967295u)), 4294967295u), Struct_1(-(~func_7(Struct_2(arg_0, true, vec3<f32>(global2.c.x, global2.c.x, global2.c.x), global2.a, Struct_1(global2.e.a))).a)));
    global0 = array<i32, 13>();
    return _wgslsmith_mod_u32(54674u, global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 13>();
    global2 = Struct_2(_wgslsmith_clamp_u32(~18946u | global2.d, u_input.c.x, global2.a) ^ func_8(u_input.c.x, func_7(func_1(global2.b))), !func_1(any(vec4<bool>(true, true, global1.x, true)) || !global1.x).b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2.c.x, global2.c.x)), _wgslsmith_f_op_f32(561f * global2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) - _wgslsmith_f_op_f32(sign(-357f))), _wgslsmith_f_op_f32(max(1f, -1108f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c * vec3<f32>(-1000f, -2860f, global2.c.x))))), global2.b)), 105719u, global2.e);
    global0 = array<i32, 13>();
    let var_0 = global2.e;
    var var_1 = u_input.c.zx;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(4294967295u), firstTrailingBit(-(~select(vec4<i32>(2147483647i, 23298i, 2147483647i, 29914i), vec4<i32>(2147483647i, -2147483647i, -72656i, 2147483647i), global1.x))), global2.c.x, ~(firstTrailingBit(vec4<u32>(84604u, var_1.x, 38848u, global2.a)) << (vec4<u32>(var_1.x, 2799u, u_input.c.x, 0u) % vec4<u32>(32u))) << (~vec4<u32>(~u_input.c.x, ~40020u, ~global2.a, global2.d << (1u % 32u)) % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, -579f, 1026f) * vec3<f32>(global2.c.x, global2.c.x, 1550f)) - _wgslsmith_f_op_vec3_f32(min(global2.c, vec3<f32>(global2.c.x, global2.c.x, global2.c.x)))) * func_1(false).c), vec3<f32>(_wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(trunc(1132f))), _wgslsmith_f_op_f32(abs(1000f)), -273f)));
}

