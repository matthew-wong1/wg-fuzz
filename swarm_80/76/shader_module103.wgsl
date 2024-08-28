struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: f32 = -434f;

var<private> global4: f32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: i32) -> bool {
    global0 = ~(~(~select(-61779i, arg_2, -470f >= global1.d.x)));
    global2 = min(reverseBits(arg_2), global1.b.x) >> (u_input.c % 32u);
    global2 = arg_2;
    global0 = 0i;
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -302f), 871f, global1.d.x, -1017f), abs(-(vec4<i32>(2147483647i, u_input.a.x, global1.b.x, -28845i) ^ firstTrailingBit(global1.b))), global1.d.x, vec2<f32>(_wgslsmith_f_op_f32(global1.c * 2203f), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, -906f) + _wgslsmith_f_op_f32(2336f - arg_1)))));
    return !(u_input.c < min(~7886u, abs(u_input.c)));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: i32, arg_3: vec2<u32>) -> u32 {
    global3 = _wgslsmith_f_op_f32(sign(2047f));
    var var_0 = global1.a;
    var var_1 = _wgslsmith_f_op_f32(round(global1.d.x));
    global3 = _wgslsmith_f_op_f32(round(global1.a.x));
    var var_2 = 1272f;
    return ~(~88455u);
}

fn func_2() -> Struct_1 {
    global4 = 320f;
    global2 = u_input.a.x;
    var var_0 = min(vec4<u32>(0u, func_4(!func_3(global1.b.ywz, global1.d.x, -46572i), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 209u, u_input.c, 54255u), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c), vec4<u32>(51044u, 1118u, u_input.d.x, u_input.d.x) << (vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 0u) % vec4<u32>(32u))), u_input.b, select(u_input.d.xz, u_input.d.xz, any(vec3<bool>(true, true, true)))), u_input.d.x, u_input.d.x), select(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.c, u_input.d.x, u_input.c, 1u)), ~vec4<u32>(u_input.d.x, 0u, u_input.c, u_input.c)), ~vec4<u32>(28192u, u_input.d.x, 4845u, 1u), true) >> (~min(vec4<u32>(u_input.c, u_input.c, 9578u, 23588u), _wgslsmith_mult_vec4_u32(vec4<u32>(9587u, 0u, 64216u, u_input.c), vec4<u32>(u_input.d.x, u_input.c, 0u, u_input.c))) % vec4<u32>(32u)));
    let var_1 = true;
    let var_2 = Struct_1(global1.a, vec4<i32>(-39651i, 2147483647i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global1.b.x, ~u_input.b, ~(-1i)), firstLeadingBit(u_input.b)), _wgslsmith_div_i32(-1i, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.x, -1750f, var_1))) + global1.a.x)), global1.d);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.a, _wgslsmith_f_op_vec4_f32(-var_2.a))), global1.b, global1.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_2.a.wz)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1.d, _wgslsmith_div_vec2_f32(var_2.a.wx, global1.a.wx)), _wgslsmith_f_op_vec2_f32(-global1.a.yy))));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2();
    let var_1 = Struct_1(global1.a, ~(~max(vec4<i32>(u_input.a.x, u_input.a.x, 0i, -2147483647i), vec4<i32>(u_input.a.x, global1.b.x, -6763i, global1.b.x))), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, -845f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.xx * vec2<f32>(961f, var_0.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.d * var_0.a.xy))) - var_0.d));
    let var_2 = min(global1.b.x, global1.b.x);
    global3 = 1000f;
    let var_3 = !any(select(vec3<bool>(func_3(vec3<i32>(-23524i, -14112i, var_2), var_0.d.x, 19724i), any(vec2<bool>(false, false)), select(false, false, true)), vec3<bool>(true, true, true), false));
    return select(select(!(!select(vec3<bool>(true, false, true), vec3<bool>(var_3, true, true), vec3<bool>(true, true, var_3))), !select(select(vec3<bool>(var_3, false, false), vec3<bool>(false, true, var_3), vec3<bool>(var_3, var_3, false)), vec3<bool>(true, var_3, true), !vec3<bool>(var_3, true, true)), !vec3<bool>(var_3, false, true)), select(vec3<bool>((179f != var_1.c) && any(vec2<bool>(var_3, false)), var_3, !any(vec4<bool>(var_3, true, var_3, false))), select(vec3<bool>(true, u_input.b <= u_input.b, any(vec4<bool>(var_3, var_3, var_3, false))), vec3<bool>(false, false, false), select(select(vec3<bool>(var_3, var_3, false), vec3<bool>(true, var_3, var_3), vec3<bool>(var_3, false, var_3)), !vec3<bool>(false, var_3, var_3), vec3<bool>(false, var_3, true))), false), select(!vec3<bool>(!var_3, true, !var_3), select(vec3<bool>(!var_3, var_3, any(vec4<bool>(var_3, var_3, true, false))), select(!vec3<bool>(true, var_3, var_3), select(vec3<bool>(false, true, var_3), vec3<bool>(var_3, var_3, true), vec3<bool>(true, var_3, true)), false), func_3(~vec3<i32>(-34028i, 0i, u_input.a.x), -732f, 2147483647i)), vec3<bool>((13185i != var_2) || var_3, !var_3, var_3)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_u32(firstLeadingBit(abs(countOneBits(u_input.d.zx ^ u_input.d.xx))), u_input.d.yz);
    var var_1 = select(select(vec4<bool>(369f != _wgslsmith_f_op_f32(-arg_1.d.x), arg_2.x, func_3(vec3<i32>(arg_0.x, 11378i, 0i), _wgslsmith_div_f32(-946f, -2057f), arg_1.b.x), any(!vec4<bool>(false, false, arg_2.x, arg_2.x))), select(select(vec4<bool>(true, true, true, false), !vec4<bool>(false, false, arg_2.x, arg_2.x), !vec4<bool>(arg_2.x, true, true, true)), !vec4<bool>(arg_2.x, true, arg_2.x, false), !(!vec4<bool>(true, true, arg_2.x, arg_2.x))), false), select(vec4<bool>(false, func_1().x, true | select(arg_2.x, arg_2.x, false), _wgslsmith_f_op_f32(503f + arg_1.d.x) < -714f), vec4<bool>(true, any(vec2<bool>(arg_2.x, arg_2.x)), !func_3(vec3<i32>(u_input.b, 36789i, -2147483647i), -732f, arg_0.x), (arg_1.d.x != global1.d.x) && true), false), select(!(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), !(!select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), arg_2.x)), all(vec2<bool>(true, arg_2.x | false))));
    let var_2 = !vec3<bool>(select(true, true, !var_1.x), all(select(arg_2, vec3<bool>(true, var_1.x, true), var_1.x)) & var_1.x, true);
    return arg_1;
}

fn func_6(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(arg_2.a, _wgslsmith_f_op_vec4_f32(-func_5(~arg_2.b, func_5(arg_2.b, Struct_1(vec4<f32>(global1.c, -292f, -100f, arg_2.d.x), global1.b, arg_2.a.x, global1.a.xx), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)).a)), vec4<i32>(~0i, -10240i, 39151i >> (~(arg_1.x >> (2822u % 32u)) % 32u), max(arg_2.b.x & 0i, _wgslsmith_dot_vec4_i32(arg_2.b, vec4<i32>(global1.b.x, arg_2.b.x, global1.b.x, 0i))) ^ -27788i), _wgslsmith_f_op_f32(abs(-285f)), arg_2.a.xy);
    global2 = -reverseBits(global1.b.x >> (_wgslsmith_add_u32(u_input.c, 1u) % 32u)) ^ var_0.b.x;
    var var_1 = countOneBits(vec4<i32>(min(i32(-1i) * -28426i, u_input.b), 1i, 1i, -(~(2147483647i >> (arg_0 % 32u)))));
    global2 = -(_wgslsmith_add_i32(i32(-1i) * -20132i, firstLeadingBit(var_0.b.x)) >> (arg_3.x % 32u)) & arg_2.b.x;
    var var_2 = select(~(-(~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, arg_2.b.x, -54645i), arg_2.b))), vec4<i32>(~var_0.b.x, 0i, _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-33187i, u_input.b, 11214i), vec3<i32>(1i, u_input.a.x, 2147483647i)), _wgslsmith_clamp_i32(-30189i, abs(global1.b.x), 0i)), 2147483647i), vec4<bool>(!select(select(true, true, false), any(vec2<bool>(false, true)), true), true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), arg_1.x > ~1u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a - arg_2.a) - _wgslsmith_f_op_vec4_f32(exp2(global1.a)))) + arg_2.a), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.a.x, -280f), _wgslsmith_f_op_f32(f32(-1f) * -260f))) + func_5(firstTrailingBit(vec4<i32>(-18571i, var_0.b.x, global1.b.x, var_2.x)), arg_2, vec3<bool>(true, true, false)).a.x)), global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    var var_1 = select(vec4<bool>(!(global1.b.x <= ~(-40853i)), false, true, any(vec2<bool>(any(vec3<bool>(false, false, true)), true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, u_input.d.x > u_input.d.x, 783f <= global1.c, true), vec4<bool>(true, true, true, true), global1.a.x < -431f));
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(344f + _wgslsmith_f_op_f32(f32(-1f) * -652f)), global1.c));
    var var_2 = func_6(~(~4294967295u), ~reverseBits(_wgslsmith_sub_vec2_u32(u_input.d.yz, u_input.d.zx) ^ vec2<u32>(15961u, u_input.c)), func_5(~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(global1.b, global1.b), vec4<i32>(-1i, u_input.b, -10916i, global1.b.x)), Struct_1(global1.a, firstLeadingBit(vec4<i32>(u_input.b, u_input.a.x, -24789i, 25372i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-447f))), _wgslsmith_f_op_vec2_f32(max(global1.d, _wgslsmith_f_op_vec2_f32(-global1.d)))), func_1()), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d.x | 0u, firstLeadingBit(23760u), ~u_input.c)), _wgslsmith_add_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(24797u, 0u, 30462u), vec3<u32>(23083u, 1u, u_input.c)), u_input.d ^ vec3<u32>(u_input.c, u_input.c, 1u)), ~firstLeadingBit(vec3<u32>(u_input.d.x, u_input.c, u_input.d.x)))));
    var var_3 = vec4<f32>(global1.c, -2312f, -914f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c + 208f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global1.b.x, var_2.b.x, -41246i), var_2.b.wxx), ~(~global1.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, var_2.c))))) * _wgslsmith_f_op_vec2_f32(-var_3.yw)), abs(vec3<u32>(_wgslsmith_div_u32(u_input.d.x, u_input.c >> (60394u % 32u)), max(_wgslsmith_mod_u32(59003u, u_input.d.x), u_input.d.x), abs(1u))));
}

