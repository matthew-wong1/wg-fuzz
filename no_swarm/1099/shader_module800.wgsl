struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), -65030i);

var<private> global2: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global0 = vec2<u32>(global0.x >> (_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(global0.x, global0.x)) % 32u), (34019u >> (_wgslsmith_div_u32(_wgslsmith_div_u32(0u, 40374u), global0.x) % 32u)) >> (abs(global0.x) % 32u));
    global2 = 1i;
    var var_0 = 286f;
    global0 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(~(vec2<u32>(4294967295u, global0.x) >> (vec2<u32>(21873u, global0.x) % vec2<u32>(32u)))), min(reverseBits(vec2<u32>(global0.x, global0.x) & vec2<u32>(global0.x, global0.x)), vec2<u32>(global0.x, _wgslsmith_sub_u32(global0.x, global0.x))), firstLeadingBit(~vec2<u32>(4294967295u, 34958u))) ^ ~(~(~(~vec2<u32>(4294967295u, 4294967295u))));
    var var_1 = firstLeadingBit(u_input.b.wzy);
    return !(!(true | select(false, true, true)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    var var_0 = firstTrailingBit(select(max(~vec4<u32>(10431u, 77468u, 47494u, 46919u) & _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, global0.x, 52392u), vec4<u32>(1u, global0.x, 29414u, 11035u)), ~countOneBits(vec4<u32>(13284u, global0.x, global0.x, 21593u))), (vec4<u32>(0u, 4294967295u, 0u, 73303u) & vec4<u32>(global0.x, 4294967295u, 4294967295u, global0.x)) | _wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, global0.x, 0u, global0.x), vec4<u32>(1u, global0.x, global0.x, global0.x) ^ vec4<u32>(76953u, global0.x, global0.x, 0u)), false));
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(2147483647i & u_input.b.x, _wgslsmith_add_i32(max(arg_0.a.x, 8812i), 0i), -_wgslsmith_mult_i32(1i, -2147483647i)), 24569i, _wgslsmith_dot_vec2_i32(reverseBits(max(vec2<i32>(1570i, 2249i), arg_0.a.wz)), firstTrailingBit(vec2<i32>(global1.x, arg_0.a.x))), 2147483647i));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-3116f * -1000f), -861f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-802f)) * -1081f))) * _wgslsmith_div_f32(265f, _wgslsmith_f_op_f32(trunc(-165f))));
    var var_3 = 9899u << (((~(101353u >> (global0.x % 32u)) << (10034u % 32u)) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.xw, ~var_0.xx), global0.x)) % 32u);
    let var_4 = Struct_3(firstTrailingBit(-arg_0.a.x), vec3<bool>(!func_3(), true, all(select(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1)), vec2<bool>(true, arg_1), arg_1))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-370f)), 520f, _wgslsmith_f_op_f32(round(-237f)))))), vec4<bool>((var_1.a.x != (-1i | global1.x)) || !all(vec4<bool>(false, true, arg_1, true)), arg_1, all(select(vec2<bool>(arg_1, false), !vec2<bool>(arg_1, true), var_0.x <= 10655u)), arg_1));
    return ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_0.x), var_0.zyy) | var_0.x, ~127959u), countOneBits(var_0.xz) << (var_0.zy % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = -2147483647i;
    global2 = -(1i << (global0.x % 32u));
    global1 = -u_input.b.yz;
    let var_1 = ~(~(~global0.x));
    let var_2 = _wgslsmith_sub_vec2_u32(~(vec2<u32>(47815u, 25814u) << ((vec2<u32>(17530u, 69306u) | vec2<u32>(32174u, global0.x)) % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(func_2(Struct_1(vec4<i32>(0i, var_0, 74298i, 12690i)), false) & (vec2<u32>(global0.x, var_1) << (vec2<u32>(global0.x, var_1) % vec2<u32>(32u))), ~(~vec2<u32>(15597u, global0.x)), vec2<u32>(17950u, var_1)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(15482u, global0.x))), ~select(vec2<u32>(1u, 1u), ~vec2<u32>(1u, global0.x), true), ~vec2<u32>(var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, 50676u, 8242u), vec4<u32>(4294967295u, global0.x, 4294967295u, 30540u)))));
    return !select(vec3<bool>(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x) > _wgslsmith_f_op_f32(-arg_0.a.x), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), !all(vec2<bool>(false, true))), !vec3<bool>(all(vec2<bool>(false, true)), var_0 < 1i, true), !any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_4 {
    global0 = vec2<u32>(1u, ~(max(global0.x, global0.x) ^ ~global0.x) << (_wgslsmith_mult_u32(min(~37592u, max(global0.x, global0.x)), global0.x) % 32u));
    var var_0 = Struct_2(Struct_1(u_input.b), any(vec4<bool>(false, arg_0.x, arg_0.x, false)), select(vec3<bool>(arg_0.x, !any(arg_0), u_input.b.x >= ~global1.x), select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0, !func_1(Struct_4(vec4<f32>(-781f, -116f, 602f, 1072f)))), select(select(arg_1.d.wyy, vec3<bool>(true, true, arg_1.d.x), true), vec3<bool>(any(vec2<bool>(true, false)), true, !arg_1.d.x), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -269f)))) - arg_1.c.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1279f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1517f, _wgslsmith_f_op_f32(max(1000f, var_0.d))) + arg_1.c.x), 1633f, 1000f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.d)), -1437f, _wgslsmith_div_f32(581f, _wgslsmith_f_op_f32(-arg_1.c.x)), 486f))));
    var var_2 = ~1u;
    global1 = u_input.b.zw;
    return Struct_4(_wgslsmith_f_op_vec4_f32(round(var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(global0.x, global0.x)), firstTrailingBit(vec2<u32>(0u, 44576u))), vec2<u32>(~866u, _wgslsmith_mod_u32(4294967295u, 7970u))));
    let var_1 = 65430i > (~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global1.x, global1.x, -1i), u_input.b << (vec4<u32>(global0.x, var_0, var_0, global0.x) % vec4<u32>(32u))) >> (var_0 % 32u));
    var var_2 = func_4(vec3<bool>(var_1, false, var_1), Struct_3(_wgslsmith_mult_i32(1i, 1316i), select(vec3<bool>(all(vec2<bool>(var_1, var_1)), true || var_1, false), select(vec3<bool>(true, var_1, true), vec3<bool>(var_1, var_1, true), global1.x < 20429i), select(select(vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, var_1, false)), vec3<bool>(var_1, true, var_1), func_1(Struct_4(vec4<f32>(-1909f, -233f, -324f, 400f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(564f - 620f)), _wgslsmith_f_op_f32(-1022f * -600f), -2474f), select(select(vec4<bool>(var_1, var_1, true, true), vec4<bool>(true, false, var_1, false), true), select(select(vec4<bool>(var_1, false, var_1, false), vec4<bool>(var_1, var_1, true, true), vec4<bool>(var_1, var_1, var_1, var_1)), !vec4<bool>(var_1, false, false, true), !var_1), true)));
    var var_3 = select(vec2<bool>(select(true, all(select(vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(true, false, var_1, false), vec4<bool>(var_1, var_1, true, true))), var_1), true), vec2<bool>(all(vec2<bool>(true, var_1)), !var_1), var_1);
    var_2 = func_4(func_1(Struct_4(var_2.a)), Struct_3(_wgslsmith_add_i32(~(-1408i & global1.x), countOneBits(firstTrailingBit(0i))), select(vec3<bool>(func_1(Struct_4(vec4<f32>(1568f, -443f, var_2.a.x, -979f))).x, false | var_3.x, true), func_1(func_4(vec3<bool>(var_1, var_1, true), Struct_3(-32756i, vec3<bool>(var_1, var_1, false), vec3<f32>(233f, 1310f, var_2.a.x), vec4<bool>(var_3.x, var_3.x, var_1, true)))), global1.x >= 0i), vec3<f32>(var_2.a.x, var_2.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x))), select(select(vec4<bool>(var_1, var_1, false, true), !vec4<bool>(true, var_1, var_1, false), false), vec4<bool>(false, true, false, true), !all(vec3<bool>(var_1, true, var_1)))));
    global0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(4294967295u, var_0, global0.x), abs(vec3<u32>(global0.x, global0.x, 1u))), _wgslsmith_div_vec3_u32(max(vec3<u32>(18289u, global0.x, 52677u), vec3<u32>(7258u, var_0, var_0)), abs(vec3<u32>(global0.x, var_0, 46380u)))), ~select(4294967295u, firstTrailingBit(58201u), false)), min(firstTrailingBit(func_2(Struct_1(vec4<i32>(u_input.b.x, global1.x, 0i, -19813i)), var_3.x)) ^ abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, global0.x), vec2<u32>(global0.x, 0u))), ~vec2<u32>(45584u, abs(0u))), countOneBits(countOneBits(vec2<u32>(global0.x, 750u))) << (~((vec2<u32>(4294967295u, 52190u) << (vec2<u32>(var_0, var_0) % vec2<u32>(32u))) << (select(vec2<u32>(var_0, 0u), vec2<u32>(var_0, 0u), var_1) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(u_input.b.yz, -u_input.b.wx), vec4<u32>(~4294967295u, 1u, 1u, _wgslsmith_dot_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(660u, 1u, 0u), vec3<u32>(global0.x, var_0, 26373u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 1232u, 1u), vec3<u32>(1u, global0.x, 0u))), ~vec3<u32>(1u, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(736f + 1516f), _wgslsmith_f_op_f32(var_2.a.x + -186f), -574f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1127f, _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(565f, 530f))))));
}

