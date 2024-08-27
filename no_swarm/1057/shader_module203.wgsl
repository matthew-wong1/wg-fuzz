struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 1i, 18220i);

var<private> global1: vec4<bool>;

var<private> global2: vec3<f32>;

var<private> global3: vec3<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - -1055f) * _wgslsmith_div_f32(global2.x, arg_1.x)), global2.x, -1279f)) - vec3<f32>(-402f, 1133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(sign(748f))))));
    var var_0 = Struct_2(Struct_1(85657u, vec2<u32>(arg_0 << (arg_0 % 32u), arg_0) & _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0, 27735u), ~vec2<u32>(0u, 1u)), max(arg_0, arg_0), -525f, 0u), 296f, -vec2<i32>(~1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0.x, -2147483647i, u_input.a, 1i)), vec4<i32>(global0.x, u_input.b, 1i, global0.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, global3.x) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(338f, -1334f, global2.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1176f, global2.x, arg_1.x)), vec3<f32>(var_0.b, -273f, 815f))) - vec3<f32>(var_0.a.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.x - -284f), _wgslsmith_f_op_f32(-var_0.a.d))), -931f)));
    var var_2 = var_0.a;
    var var_3 = Struct_2(Struct_1(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 19379u, arg_0), vec3<u32>(var_0.a.b.x, 22099u, arg_0))), ~select(~var_2.b, ~var_2.b, global1.x), ~2836u, _wgslsmith_f_op_f32(var_2.d + arg_1.x), 1u), -223f, vec2<i32>(abs(var_0.c.x), global0.x));
    return -825f;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-1038f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1147f + -738f) + global2.x))), arg_3.a.d, 1865f);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(280f - _wgslsmith_f_op_f32(global3.x * 826f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1, vec2<f32>(-2412f, arg_2.d)))))));
    global2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-236f)), 924f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.a.d)))), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.b, global2.x), _wgslsmith_f_op_f32(floor(-396f))))))));
    global0 = vec3<i32>(arg_3.c.x & min(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), firstLeadingBit(global0.xy)), ~(-60884i)), -2147483647i, i32(-1i) * -13606i);
    global0 = _wgslsmith_add_vec3_i32(firstTrailingBit(~reverseBits(vec3<i32>(arg_3.c.x, -3611i, arg_3.c.x) << (vec3<u32>(18698u, 1u, 4294967295u) % vec3<u32>(32u)))), vec3<i32>(0i, abs(-global0.x) << (arg_1 % 32u), min(_wgslsmith_sub_i32(~53757i, arg_3.c.x), arg_3.c.x)));
    return any(global1.xwz) | any(!global1.yzw);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, -490f, _wgslsmith_f_op_f32(-336f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d * global3.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1707f, 411f, arg_0.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-417f, global3.x, arg_0.d)), true)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(2360f * -1670f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x))))), arg_1));
    global1 = select(!select(!select(vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(false, true, arg_1.x, false), vec4<bool>(true, true, true, arg_1.x)), vec4<bool>(true, all(vec3<bool>(global1.x, arg_2, arg_2)), all(arg_1.zz), arg_2), false), vec4<bool>(false, select(all(select(global1.wx, vec2<bool>(arg_2, arg_2), arg_1.zx)), true, arg_0.c != (16980u ^ arg_0.a)), true, all(vec3<bool>(all(vec4<bool>(true, true, global1.x, false)), arg_1.x && arg_1.x, all(vec3<bool>(true, false, global1.x))))), select(!vec4<bool>(arg_2, arg_2, arg_2, arg_1.x | global1.x), select(vec4<bool>(global0.x < 9103i, false, false, u_input.a >= -1i), vec4<bool>(any(vec3<bool>(global1.x, false, arg_2)), select(arg_2, arg_2, global1.x), true, func_2(vec4<u32>(arg_0.a, 6921u, arg_0.a, 63782u), arg_0.e, arg_0, Struct_2(arg_0, arg_0.d, vec2<i32>(5738i, -2147483647i)))), vec4<bool>(!arg_1.x, any(arg_1.yz), !global1.x, false)), select(select(!vec4<bool>(arg_2, arg_2, arg_1.x, arg_2), select(vec4<bool>(true, true, false, true), vec4<bool>(false, arg_2, true, true), true), all(global1.wxx)), !select(vec4<bool>(false, arg_1.x, true, true), vec4<bool>(false, global1.x, false, false), vec4<bool>(arg_1.x, false, false, false)), select(select(global1.x, arg_2, arg_1.x), !arg_1.x, true))));
    let var_0 = Struct_2(arg_0, _wgslsmith_f_op_f32(select(446f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), false)), ~(~global0.xz));
    var var_1 = Struct_2(Struct_1(var_0.a.a, ~vec2<u32>(arg_0.e, ~var_0.a.b.x), 31014u, _wgslsmith_f_op_f32(-589f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1768f) + _wgslsmith_div_f32(global2.x, var_0.a.d))), arg_0.b.x), global3.x, _wgslsmith_div_vec2_i32((vec2<i32>(23258i, u_input.b) >> (arg_0.b % vec2<u32>(32u))) >> (arg_0.b % vec2<u32>(32u)), (global0.yz << ((var_0.a.b & arg_0.b) % vec2<u32>(32u))) << (arg_0.b % vec2<u32>(32u))));
    let var_2 = Struct_2(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d + global2.x)))), global3.x)), vec2<i32>(-abs(global0.x), _wgslsmith_mult_i32(-(var_0.c.x & 53468i), global0.x)));
    return Struct_2(Struct_1(19840u, ~(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a.a, var_1.a.b.x), var_2.a.b) << (select(var_0.a.b, var_1.a.b, arg_2) % vec2<u32>(32u))), _wgslsmith_clamp_u32(var_2.a.e, abs(reverseBits(arg_0.e)), ~firstTrailingBit(1u)), _wgslsmith_f_op_f32(func_3(max(arg_0.c | 47291u, 1u), vec2<f32>(var_2.a.d, _wgslsmith_f_op_f32(global2.x * var_2.b)))), 63143u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.d)) + -335f), var_0.c);
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1091f, global2.x, _wgslsmith_f_op_f32(sign(arg_0.a.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, -1853f, 1186f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(317f, global3.x, -1156f) * vec3<f32>(-253f, arg_0.a.d, global2.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1181f, -653f, -1886f)) + vec3<f32>(756f, 130f, global2.x)))), !global1.x));
    let var_1 = !(global0.x <= firstTrailingBit(-1i));
    var var_2 = 4294967295u;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1130f, -1048f)), -1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(342f, global2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x))))), var_0.x)), _wgslsmith_f_op_f32(func_3(~(0u | ~arg_0.a.b.x), _wgslsmith_f_op_vec2_f32(-global3.zy))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -301f);
    return _wgslsmith_div_u32(~2578u, firstTrailingBit(12577u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(-1i, global0.x, -_wgslsmith_div_i32(global0.x, abs(i32(-1i) * -5408i)));
    let var_0 = ~vec2<u32>(_wgslsmith_mod_u32(select(1u, 1u, true), 0u), _wgslsmith_mult_u32(func_4(func_1(Struct_1(1u, vec2<u32>(1u, 0u), 4294967295u, -807f, 0u), vec3<bool>(global1.x, true, global1.x), global1.x)), 30272u));
    var var_1 = func_1(Struct_1(~var_0.x, vec2<u32>(countOneBits(~var_0.x), 997u), ~(~4294967295u), _wgslsmith_f_op_f32(exp2(global2.x)), ~54089u), global1.www, any(global1.yz)).a;
    let var_2 = vec2<f32>(-259f, 1000f);
    let var_3 = _wgslsmith_add_u32(~var_0.x, 18156u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(((1u | var_3) >> (_wgslsmith_mult_u32(var_1.e, 131462u) % 32u)) >> (_wgslsmith_sub_u32(15551u, var_1.b.x << (var_0.x % 32u)) % 32u), 1u), firstLeadingBit(abs(-u_input.b)), var_2.x, -72999i);
}

