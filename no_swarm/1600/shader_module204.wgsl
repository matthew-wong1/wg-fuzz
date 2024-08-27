struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: u32;

var<private> global1: vec3<bool>;

var<private> global2: Struct_2;

var<private> global3: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(0u, 51621u, 4294967295u, 9594u), vec4<u32>(1u, 24989u, 4294967295u, 41405u), vec4<u32>(23803u, 6624u, 56329u, 43227u), vec4<u32>(10627u, 1u, 27499u, 4294967295u), vec4<u32>(1u, 85508u, 31344u, 856u), vec4<u32>(16757u, 4294967295u, 4294967295u, 35228u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 10284u, 49364u, 1u), vec4<u32>(0u, 79496u, 13721u, 57940u), vec4<u32>(4294967295u, 4294967295u, 1u, 20039u), vec4<u32>(1u, 40564u, 4294967295u, 1657u), vec4<u32>(78572u, 0u, 0u, 4294967295u), vec4<u32>(48236u, 4294967295u, 4294967295u, 4171u), vec4<u32>(0u, 43164u, 0u, 5701u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(4294967295u, 21630u, 0u, 0u), vec4<u32>(898u, 21498u, 82617u, 8725u), vec4<u32>(4294967295u, 3269u, 0u, 4294967295u), vec4<u32>(1u, 0u, 1u, 8897u), vec4<u32>(0u, 0u, 4294967295u, 7175u), vec4<u32>(0u, 57062u, 10442u, 33831u), vec4<u32>(67111u, 0u, 16065u, 4294967295u), vec4<u32>(15709u, 4294967295u, 4294967295u, 45136u), vec4<u32>(43627u, 80561u, 43516u, 4294967295u), vec4<u32>(4741u, 12915u, 26040u, 1u), vec4<u32>(2463u, 4294967295u, 0u, 44867u), vec4<u32>(101531u, 1u, 0u, 4294967295u), vec4<u32>(14336u, 0u, 27020u, 81798u), vec4<u32>(25378u, 83341u, 78960u, 4294967295u));

var<private> global4: vec3<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = u_input.d.xy;
    global2 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(315f, 371f, -1578f, global4.x), vec4<f32>(global4.x, -524f, -753f, global4.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-343f, global4.x), _wgslsmith_f_op_f32(-1140f - 175f), global4.x, -526f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.x, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(-134f * global4.x)))));
    global1 = vec3<bool>(!(!(!(true & global1.x))), any(select(select(global1.xy, !global1.yy, all(vec2<bool>(false, global1.x))), vec2<bool>(global1.x, false), select(!vec2<bool>(global1.x, true), !global1.zz, global1.x))), u_input.d.x > firstTrailingBit(66451u));
    var var_2 = Struct_1(firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, arg_1.a, 0u, 1u), vec4<u32>(var_0.x, arg_0, global2.a, 4294967295u))) >> (global3[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(62606u, var_0.x)), 29u)] % vec4<u32>(32u)), u_input.d, ~1u);
    return _wgslsmith_dot_vec3_u32(reverseBits(var_2.a.xzw), vec3<u32>((var_0.x >> (global2.a % 32u)) | (_wgslsmith_dot_vec3_u32(u_input.d.yzx, var_2.b.zwx) & reverseBits(25554u)), global2.a, _wgslsmith_add_u32(select(_wgslsmith_dot_vec2_u32(var_2.b.xy, vec2<u32>(27748u, u_input.d.x)), _wgslsmith_div_u32(arg_1.a, 76365u), global1.x), _wgslsmith_add_u32(_wgslsmith_add_u32(10971u, u_input.d.x), arg_1.a))));
}

fn func_2() -> Struct_1 {
    let var_0 = global4.x;
    let var_1 = !vec3<bool>(true, true, !(!(!global1.x)));
    global2 = Struct_2(1u);
    let var_2 = -538f;
    var var_3 = global2.a;
    return Struct_1(~(u_input.d << ((~vec4<u32>(75816u, global2.a, 4294967295u, 0u) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 45189u, 57604u, 102680u), global3[_wgslsmith_index_u32(global2.a, 29u)])) % vec4<u32>(32u))), vec4<u32>(~_wgslsmith_mod_u32(1u, ~0u), 0u, 59743u, func_3(_wgslsmith_mod_u32(~34873u, ~1062u), Struct_2(_wgslsmith_mult_u32(0u, global2.a)))), 0u);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-472f, 593f, arg_0.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.x, arg_1.x, arg_0.x))), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, true), vec3<bool>(false, false, false))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -356f) + vec3<f32>(492f, 1000f, arg_1.x)) + vec3<f32>(arg_0.x, 433f, global4.x)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 110f, -1073f) * vec3<f32>(-103f, -152f, global4.x)), vec3<f32>(799f, global4.x, 1000f)))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(max(-512f, arg_1.x)))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -412f), 1f, 1061f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, arg_1.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1261f, 2600f)))));
    var var_1 = -1239f <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1.x))))));
    let var_2 = Struct_2(1u << ((countOneBits(_wgslsmith_sub_u32(0u, arg_2.a)) & _wgslsmith_div_u32(~arg_3.b.x, _wgslsmith_clamp_u32(global2.a, arg_2.a, arg_3.c))) % 32u));
    global1 = !(!(!select(!vec3<bool>(global1.x, global1.x, false), !vec3<bool>(global1.x, global1.x, false), all(vec4<bool>(global1.x, false, false, true)))));
    return Struct_2(_wgslsmith_add_u32(_wgslsmith_mult_u32(~max(3110u, 4294967295u), ~reverseBits(global2.a)), arg_2.a));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global3 = array<vec4<u32>, 29>();
    let var_0 = -_wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.b, 1681i, u_input.c, 1i), vec4<i32>(u_input.a, u_input.a, -23535i, u_input.a)), ~vec4<i32>(u_input.c, 2147483647i, u_input.a, -2147483647i)), ~vec4<i32>(1i, _wgslsmith_add_i32(u_input.b, -13207i), u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(12131i, u_input.c, -1i, u_input.b), vec4<i32>(0i, u_input.a, u_input.a, 46444i))));
    var var_1 = vec2<u32>(0u >> (((_wgslsmith_sub_u32(arg_3.a, 0u) >> (4988u % 32u)) & _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(11259u, 1u), vec2<u32>(9920u, 1u)), 7698u)) % 32u), 4294967295u);
    global1 = !vec3<bool>(global1.x, true, !arg_1);
    global2 = arg_3;
    return arg_3;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    global4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + arg_3.www) * arg_3.xyw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(arg_3.zzz)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(206f, arg_3.x, arg_3.x) - vec3<f32>(-252f, 2015f, arg_3.x)) * _wgslsmith_f_op_vec3_f32(-arg_3.wwx)))))));
    global0 = ~func_4(_wgslsmith_f_op_vec2_f32(ceil(global4.zz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.xz + vec2<f32>(global4.x, arg_3.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x))) * arg_3.yz), arg_0, func_2()).a;
    var var_0 = all(global1.zx);
    var_0 = arg_2;
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(min(-1000f, arg_3.x)), arg_3.x))));
    return global2.a;
}

fn func_1() -> u32 {
    let var_0 = firstTrailingBit(func_6(func_5(_wgslsmith_f_op_f32(f32(-1f) * -564f), true, Struct_1(_wgslsmith_mod_vec4_u32(u_input.d, u_input.d), global3[_wgslsmith_index_u32(global2.a, 29u)], _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(global2.a, 29u)], vec4<u32>(u_input.d.x, u_input.d.x, 40406u, 0u))), func_4(_wgslsmith_f_op_vec2_f32(global4.xy + global4.zx), vec2<f32>(global4.x, -768f), Struct_2(1u), func_2())), vec2<i32>(u_input.c, max(-17825i, 1i)), global1.x, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global4.x * -235f), global4.x, -1470f, -121f)))));
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(f32(-1f) * -222f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -641f, -949f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) + vec3<f32>(-653f, global4.x, global4.x)))), -(~u_input.c) <= 4706i)));
    global1 = vec3<bool>(!global1.x, global1.x, true);
    global3 = array<vec4<u32>, 29>();
    global1 = !vec3<bool>(false, true, false | global1.x);
    return 104341u;
}

fn func_7(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = select(false, arg_1.x, global1.x);
    let var_1 = arg_1.xw;
    var var_2 = true;
    let var_3 = Struct_2(global2.a ^ arg_0.x);
    var var_4 = Struct_2(~(~(~func_4(vec2<f32>(-1757f, 1606f), vec2<f32>(global4.x, arg_2), Struct_2(var_3.a), Struct_1(vec4<u32>(6922u, arg_0.x, u_input.d.x, 1u), vec4<u32>(global2.a, 0u, 1u, arg_0.x), arg_0.x)).a)));
    return Struct_1(u_input.d, ~global3[_wgslsmith_index_u32(arg_0.x, 29u)], ~_wgslsmith_add_u32(_wgslsmith_div_u32(func_2().a.x, ~var_4.a), abs(abs(4294967295u))));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = select(vec4<bool>(true & select(global1.x | true, all(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), true), global1.x, any(select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), global1.yz)) | global1.x, global1.x), !select(!(!vec4<bool>(global1.x, false, global1.x, global1.x)), !vec4<bool>(false, true, global1.x, global1.x), !all(vec2<bool>(global1.x, global1.x))), !select(select(!vec4<bool>(false, global1.x, true, false), select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, false, false, global1.x), true), vec4<bool>(true, false, true, global1.x)), vec4<bool>(global1.x, any(global1.xz), global1.x, true), vec4<bool>(u_input.d.x > 7587u, false, false, any(global1.zx))));
    global1 = select(select(var_0.xxz, vec3<bool>(true, var_0.x, true), select(var_0.zxy, var_0.www, select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, var_0.x, global1.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(var_0.xzx, var_0.xxx, var_0.ywy)))), vec3<bool>(any(!vec4<bool>(false, false, true, var_0.x)), false, true), true);
    global1 = !vec3<bool>(true, true, var_0.x);
    var var_1 = func_2();
    return func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, global4.x)) - _wgslsmith_div_f32(global4.x, global4.x))), true, arg_0, func_4(global4.xz, global4.yy, Struct_2(global2.a), Struct_1(var_1.b, max(~arg_1.b, u_input.d << (arg_0.a % vec4<u32>(32u))), var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(_wgslsmith_add_vec2_u32(u_input.d.yw, _wgslsmith_sub_vec2_u32(~u_input.d.zz, u_input.d.ww)), vec4<bool>(false, global1.x, true, (u_input.d.x ^ 1u) > func_1()), global4.x, -1270f), func_7(~(~vec2<u32>(u_input.d.x, 19556u)), select(!(!vec4<bool>(global1.x, false, global1.x, global1.x)), vec4<bool>(true, false, !global1.x, global1.x && global1.x), select(vec4<bool>(global1.x, true, true, false), vec4<bool>(global1.x, global1.x, false, true), !vec4<bool>(false, global1.x, global1.x, true))), global4.x, global4.x), vec2<i32>(-2147483647i, -select(-u_input.b, 2147483647i, any(vec4<bool>(global1.x, false, false, true)))));
    let var_1 = -abs(firstTrailingBit(-_wgslsmith_add_i32(u_input.a, u_input.a)));
    global3 = array<vec4<u32>, 29>();
    var var_2 = Struct_1(~func_2().a >> (u_input.d % vec4<u32>(32u)), ~vec4<u32>(countOneBits(_wgslsmith_add_u32(4294967295u, var_0.a)), _wgslsmith_div_u32(var_0.a, _wgslsmith_add_u32(8514u, global2.a)), ~_wgslsmith_div_u32(73891u, 9190u), _wgslsmith_mod_u32(var_0.a, ~u_input.d.x)), global2.a);
    var var_3 = (38839u ^ u_input.d.x) | ~46522u;
    var_3 = _wgslsmith_mod_u32(select(47982u, global2.a, !(!global1.x)), func_1());
    let var_4 = vec2<bool>(!global1.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(global4.x);
}

