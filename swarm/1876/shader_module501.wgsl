struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec4<i32> = vec4<i32>(1i, -27191i, 26592i, 0i);

var<private> global2: vec2<f32> = vec2<f32>(-2334f, -1000f);

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2) -> vec4<f32> {
    global1 = ~(-(vec4<i32>(global1.x, -44430i, -1i, 11978i) & -vec4<i32>(-44854i, global1.x, 0i, global1.x))) & _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(global1.x), global1.x), -40810i, firstTrailingBit(global1.x << (arg_0.x % 32u)), -1i), (-vec4<i32>(global1.x, 9843i, -46733i, global1.x) & -vec4<i32>(global1.x, 1i, -32350i, -1i)) >> (~max(vec4<u32>(0u, 1u, arg_0.x, 0u), vec4<u32>(u_input.b, arg_0.x, u_input.a.x, arg_0.x)) % vec4<u32>(32u)));
    global3 = vec4<bool>(!(_wgslsmith_f_op_f32(step(-2228f, 274f)) > -1166f) & arg_1, global3.x, !(!all(global3.yx)), arg_1);
    var var_0 = global3.zx;
    var var_1 = arg_2;
    var var_2 = Struct_1(arg_0.x);
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-124f - -863f), global2.x)), _wgslsmith_f_op_f32(trunc(-901f)), 654f)));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> vec2<i32> {
    var var_0 = select(vec4<bool>(false, !global3.x, false, select(global3.x, arg_0, any(vec4<bool>(true, global3.x, global3.x, true)) || any(vec3<bool>(true, arg_0, global3.x)))), vec4<bool>(true, global3.x, any(select(select(vec4<bool>(false, false, arg_0, false), vec4<bool>(true, false, arg_0, false), vec4<bool>(false, global3.x, true, true)), vec4<bool>(true, true, true, false), select(false, false, false))), firstLeadingBit(~arg_2.a.x) == _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_2.a.x, u_input.a.x, 851u), vec4<u32>(1343u, 4294967295u, 43917u, 0u) ^ vec4<u32>(u_input.a.x, 0u, 4294967295u, 0u))), global3.x);
    let var_1 = global1.zw;
    let var_2 = _wgslsmith_f_op_f32(-global2.x);
    var var_3 = ~(~(~vec2<u32>(0u, 11173u) << (vec2<u32>(~u_input.b, select(22091u, 4294967295u, false)) % vec2<u32>(32u))));
    let var_4 = vec4<u32>(6788u, 1u, _wgslsmith_dot_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 61471u, u_input.b, var_3.x), vec4<u32>(51433u, 1u, 27733u, 4294967295u))), min(min(vec4<u32>(12581u, arg_2.a.x, 0u, var_3.x) & vec4<u32>(u_input.b, 4294967295u, 0u, var_3.x), vec4<u32>(37489u, var_3.x, 6936u, u_input.b)), (vec4<u32>(var_3.x, 16786u, arg_2.a.x, arg_2.a.x) | vec4<u32>(1u, u_input.b, 4294967295u, 0u)) & min(vec4<u32>(1u, 0u, 0u, 65261u), vec4<u32>(4294967295u, var_3.x, arg_2.a.x, 38571u)))), ~54783u & reverseBits(u_input.a.x));
    return (vec2<i32>(-35031i, select(0i, global1.x, var_0.x || global3.x)) << (~vec2<u32>(~1u, abs(var_3.x)) % vec2<u32>(32u))) << (~u_input.a.zy % vec2<u32>(32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_div_u32(countOneBits(min(u_input.a.x, 7859u)) & u_input.b, ~(~u_input.b)));
    global0 = any(vec4<bool>(any(select(global3.xwz, vec3<bool>(false, global3.x, global3.x), global3.x)), true, true, u_input.a.x <= var_1.a));
    let var_2 = select(min(firstTrailingBit(reverseBits(vec2<i32>(global1.x, arg_1.x))), vec2<i32>(global1.x, 2147483647i) & global1.wy), ~select(arg_1.zy, global1.yz, var_1.a <= var_1.a), !(!all(vec2<bool>(arg_2.x, true)))) & -func_4(arg_2.x, global2.x, Struct_2(~u_input.a.yx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1561f, global2.x, -912f, -2884f), arg_0, arg_2.x)) - _wgslsmith_f_op_vec4_f32(func_3(u_input.a.yz, false, Struct_2(vec2<u32>(20066u, 65826u))))));
    global0 = all(arg_2.zz);
    return arg_2.wx;
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec3<f32> {
    global3 = vec4<bool>(!(global3.x & (select(arg_0, arg_1.x, true) & all(vec2<bool>(true, true)))), all(global3.xx), true, !global3.x & false);
    let var_0 = arg_3;
    var var_1 = true;
    var var_2 = Struct_2(u_input.a.xx);
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -550f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1231f, -1750f, 213f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(253f, global2.x, 276f), vec3<f32>(global2.x, global2.x, global2.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -240f, 116f) + vec3<f32>(-878f, -1465f, global2.x)))), vec3<f32>(global2.x, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -831f)) + global2.x)), arg_1.x | all(vec2<bool>(arg_1.x, arg_1.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: i32, arg_3: vec4<u32>) -> f32 {
    global0 = any(vec2<bool>(true, any(global3.xx)));
    let var_0 = _wgslsmith_div_vec4_u32(~arg_3, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~arg_3, vec4<u32>(u_input.b, 0u, 4294967295u, u_input.a.x)), ~(~arg_3)) << (~reverseBits(vec4<u32>(u_input.a.x, 11893u, arg_3.x, 103410u) << (vec4<u32>(arg_3.x, 11046u, arg_3.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(!(!(!(global3.x | global3.x))), select(select(!select(global3.yy, vec2<bool>(true, true), global3.zz), func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-873f, 791f, global2.x, -400f))), vec4<i32>(-20307i, global1.x, -6353i, -24384i) << (vec4<u32>(var_0.x, arg_3.x, u_input.b, 107617u) % vec4<u32>(32u)), vec4<bool>(global3.x, global3.x, false, true)), global3.zx), !global3.wy, true || global3.x), firstTrailingBit(vec3<i32>(36717i << (~var_0.x % 32u), (global1.x << (33814u % 32u)) << (~4294967295u % 32u), max(-2147483647i, reverseBits(-2147483647i)))), Struct_1(~arg_3.x)));
    var var_2 = Struct_1(17732u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(min(global2.x, 956f))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1424f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1045f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, -2137f, global2.x), vec3<f32>(global2.x, global2.x, 201f), global3.xzx)), -global1.x, -global1.x, vec4<u32>(u_input.a.x, 37062u, u_input.b, 0u) << (vec4<u32>(11247u, 1u, u_input.b, 74093u) % vec4<u32>(32u))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(695f, -1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(335f, global2.x))) - var_1)));
    var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_div_f32(var_2.x, 630f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-3110f, 1163f) - vec2<f32>(var_2.x, var_1))))))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-533f, global2.x), 909f))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1427f, 359f), -1000f)))));
    var var_3 = _wgslsmith_dot_vec2_i32(global1.xz ^ select(global1.yz, countOneBits(_wgslsmith_mod_vec2_i32(global1.wy, global1.ww)), vec2<bool>(func_2(vec4<f32>(var_1, var_2.x, var_1, var_1), vec4<i32>(global1.x, 29711i, -40120i, global1.x), vec4<bool>(global3.x, true, global3.x, global3.x)).x, false)), min(global1.zw, global1.wy));
    let var_4 = Struct_1(u_input.a.x);
    var var_5 = _wgslsmith_mod_vec2_u32(u_input.a.zx, select(_wgslsmith_add_vec2_u32(vec2<u32>(75475u, 90743u), u_input.a.xz) >> (countOneBits(u_input.a.zy) % vec2<u32>(32u)), u_input.a.yx, global3.x)) << ((_wgslsmith_div_vec2_u32(vec2<u32>(var_4.a << (1u % 32u), u_input.a.x), ~(u_input.a.yz & u_input.a.yz)) << (u_input.a.xx % vec2<u32>(32u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_vec3_u32(vec3<u32>(var_4.a, 1u, _wgslsmith_div_u32(u_input.b, 1u)), u_input.a), u_input.a), ~vec4<i32>(select(firstTrailingBit(global1.x), _wgslsmith_sub_i32(21537i, -64565i), global3.x), -global1.x, ~global1.x, max(-2147483647i, 9022i << (var_5.x % 32u))), vec4<f32>(global2.x, -446f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(390f, var_2.x) - _wgslsmith_f_op_f32(select(global2.x, -922f, global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(!global3.x, !global3.xz, global1.wxy, Struct_1(u_input.a.x))).x)), reverseBits(reverseBits(~global1.xxz)), -1053f);
}

