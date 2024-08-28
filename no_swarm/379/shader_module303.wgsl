struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<i32>(43964i, -24282i, 15526i, -15335i), vec4<i32>(-28559i, -38191i, 30753i, 1i), vec2<f32>(-1390f, 442f), 22486u, true), Struct_1(vec4<i32>(-14133i, i32(-2147483648), 1i, 1i), vec4<i32>(-34540i, -24636i, -37163i, 0i), vec2<f32>(177f, -1634f), 0u, true), Struct_1(vec4<i32>(-731i, 7061i, -19511i, 1i), vec4<i32>(1i, 0i, -3771i, 34988i), vec2<f32>(-1624f, -1458f), 21947u, false), Struct_1(vec4<i32>(24130i, 0i, 0i, -1i), vec4<i32>(-1i, -29231i, i32(-2147483648), -75964i), vec2<f32>(-437f, 1694f), 4294967295u, false), Struct_1(vec4<i32>(-37543i, -29591i, 17929i, -13270i), vec4<i32>(0i, -345i, 2147483647i, 2147483647i), vec2<f32>(-991f, -201f), 19314u, true), Struct_1(vec4<i32>(-33826i, 2147483647i, 57519i, -1i), vec4<i32>(-32272i, 0i, -1i, -22700i), vec2<f32>(620f, -352f), 0u, false), Struct_1(vec4<i32>(1i, 8544i, -209i, 1i), vec4<i32>(-102948i, 51071i, 1i, 45525i), vec2<f32>(1049f, 1216f), 48858u, false));

var<private> global2: array<bool, 2>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<u32> {
    global2 = array<bool, 2>();
    var var_0 = true;
    let var_1 = vec4<bool>(!arg_2.e, all(vec4<bool>(!(4294967295u >= global0.d), true, all(vec3<bool>(true, true, false)), any(vec3<bool>(arg_0.e, arg_1.e, false)) || arg_1.e)), true, abs(max(arg_1.b.x << (4294967295u % 32u), _wgslsmith_dot_vec3_i32(global0.a.xyy, vec3<i32>(arg_1.b.x, 1i, -1i)))) >= reverseBits(u_input.b));
    var var_2 = vec2<u32>(u_input.c.x, arg_1.d);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)))), arg_1.c.x, 103f);
    return _wgslsmith_sub_vec4_u32(~arg_3, ~firstLeadingBit(arg_3));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_i32(abs(abs(-2147483647i)), arg_0 | firstLeadingBit(-11119i));
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(arg_3.b, vec4<i32>(~(-global0.b.x), -arg_0, arg_1.x, _wgslsmith_div_i32(~0i, arg_3.a.x))), vec4<i32>(0i, u_input.b, arg_3.b.x, -abs(_wgslsmith_clamp_i32(global0.b.x, global0.a.x, u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(723f - 1032f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-754f * _wgslsmith_f_op_f32(global0.c.x - 158f))))), 1u, true);
    let var_2 = !(all(vec2<bool>(false, true)) || select(true, global2[_wgslsmith_index_u32(~var_1.d, 2u)], false));
    var var_3 = (-2147483647i << (~u_input.a % 32u)) >> (1u % 32u);
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(947f, _wgslsmith_f_op_f32(abs(arg_3.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(max(632f, var_1.c.x))), -1080f), vec4<f32>(1475f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(334f, -990f)), 1076f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -606f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1018f))))), _wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(max(325f, _wgslsmith_div_f32(arg_3.c.x, _wgslsmith_div_f32(arg_3.c.x, arg_3.c.x))))), false));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(abs(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, arg_3.a.x), firstLeadingBit(var_1.b.x))), ~0i), arg_1.zy);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<u32>) -> i32 {
    global0 = arg_1;
    let var_0 = arg_1.e & true;
    let var_1 = vec3<i32>(-15638i, func_4(-1i, -(arg_1.b >> (func_3(Struct_1(vec4<i32>(global0.b.x, 1i, 0i, global0.b.x), vec4<i32>(-24682i, arg_1.a.x, -10280i, -54751i), vec2<f32>(global0.c.x, -1000f), arg_1.d, var_0), Struct_1(global0.b, arg_1.a, arg_2, 1u, global2[_wgslsmith_index_u32(1u, 2u)]), Struct_1(arg_1.b, global0.b, arg_1.c, 51797u, true), vec4<u32>(global0.d, 21302u, 1u, 87180u)) % vec4<u32>(32u))), arg_1.c.x, Struct_1(vec4<i32>(global0.a.x, 1i, select(arg_1.a.x, 1i, var_0), arg_1.a.x), _wgslsmith_sub_vec4_i32(~global0.b, vec4<i32>(-49509i, -32772i, arg_0.x, -2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, -813f))), ~_wgslsmith_mod_u32(arg_1.d, 42246u), false)), abs(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, 33160i, 1i) ^ global0.b.zwy), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, global0.a.x, u_input.b), arg_1.b.xww), vec3<i32>(arg_0.x, 0i, 1i), arg_1.a.xzy))));
    let var_2 = arg_1;
    global1 = array<Struct_1, 7>();
    return 52948i;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(1308f * arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-325f * arg_0) + 240f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1240f), true)))));
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(arg_1.x), countOneBits(~arg_1.x) >> (arg_2.d % 32u), ~(~(~(-15219i)))), max(vec3<i32>(-(arg_2.a.x << (global0.d % 32u)), ~_wgslsmith_dot_vec4_i32(global0.a, global0.b), firstLeadingBit(-10575i)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-34728i, u_input.b, u_input.b)), vec3<i32>(arg_2.b.x, _wgslsmith_mod_i32(-2147483647i, u_input.b), global0.b.x), arg_2.b.wzy)), -vec3<i32>(arg_2.b.x, select(-13087i, 0i, global2[_wgslsmith_index_u32(~arg_2.d, 2u)]), arg_1.x << (u_input.a % 32u)));
    var var_2 = Struct_1(max(abs(_wgslsmith_sub_vec4_i32(global0.a, -arg_2.a)), global0.b), vec4<i32>(var_1.x, var_1.x, abs(func_2(vec3<i32>(global0.b.x, arg_2.b.x, arg_1.x), Struct_1(global0.a, arg_2.b, arg_2.c, 8688u, global0.e), vec2<f32>(arg_2.c.x, -799f), u_input.c) << (_wgslsmith_div_u32(0u, u_input.c.x) % 32u)), func_4(_wgslsmith_mult_i32(var_1.x, arg_1.x), _wgslsmith_mult_vec4_i32(global0.a, vec4<i32>(-35087i, var_1.x, u_input.b, global0.b.x)), -1487f, arg_2) >> (4294967295u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0, -938f), _wgslsmith_f_op_f32(1120f + var_0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2513f, 889f) + var_0.zy)))), 1u, !(!global0.e));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(255f, arg_2.c.x), var_0.xx)))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.x, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.c.x)) * arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.c.x + var_0.x), _wgslsmith_f_op_f32(-arg_0)) + global0.c), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x << (u_input.c.x % 32u), _wgslsmith_sub_u32(var_2.d, 1u), ~0u) >> (~0u % 32u), 2u)])));
    global0 = arg_2;
    return vec4<i32>(15079i, -14169i, 0i, arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(global0.d, 7u)];
    var var_0 = Struct_1(-(~func_1(_wgslsmith_f_op_f32(-global0.c.x), vec3<i32>(-41953i, -1416i, u_input.b), global1[_wgslsmith_index_u32(u_input.a << (27156u % 32u), 7u)])), vec4<i32>(-1i) * -global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(903f))))), 1u, true);
    let var_1 = Struct_1(-var_0.b, ~(~abs(-var_0.b)), vec2<f32>(var_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_f_op_f32(1134f - 544f))), -117f)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(93700u, global0.d), vec2<u32>(var_0.d, 4294967295u))), false);
    global1 = array<Struct_1, 7>();
    var var_2 = Struct_1(var_1.a, var_0.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + -1049f) + _wgslsmith_f_op_f32(f32(-1f) * -114f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0.c.x, -1300f)), 1000f))), _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.c.x, 582f))))), 1u, _wgslsmith_f_op_f32(f32(-1f) * -1640f) > _wgslsmith_f_op_f32(step(671f, var_1.c.x)));
    let var_3 = var_2.b.x;
    var_2 = global1[_wgslsmith_index_u32(~26420u, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global0.a.x, 0i | u_input.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.c.x)) + var_2.c.x), _wgslsmith_f_op_f32(-284f * _wgslsmith_f_op_f32(round(var_0.c.x))), _wgslsmith_f_op_f32(global0.c.x + var_1.c.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_1.c.x, var_2.c.x) - vec3<f32>(782f, var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_2.c.x, -2913f) * vec3<f32>(-302f, 490f, global0.c.x)), select(!vec3<bool>(false, global2[_wgslsmith_index_u32(25800u, 2u)], global0.e), vec3<bool>(true, true, var_1.e), all(vec3<bool>(var_0.e, var_0.e, global2[_wgslsmith_index_u32(33881u, 2u)]))))), vec3<bool>(!(!var_1.e), countOneBits(var_1.a.x) >= _wgslsmith_add_i32(var_0.a.x, 8805i), any(!vec3<bool>(var_2.e, var_0.e, var_1.e))))));
}

