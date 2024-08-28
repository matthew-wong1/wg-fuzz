struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(8378i, 725f, vec2<bool>(false, true)), vec2<bool>(true, true), -273f), Struct_2(Struct_1(-26280i, 691f, vec2<bool>(true, true)), vec2<bool>(false, false), -1000f), Struct_2(Struct_1(i32(-2147483648), 252f, vec2<bool>(true, true)), vec2<bool>(false, false), 708f), Struct_2(Struct_1(-25968i, -1528f, vec2<bool>(false, true)), vec2<bool>(false, false), -244f), Struct_2(Struct_1(1i, -615f, vec2<bool>(false, true)), vec2<bool>(false, false), 1000f), Struct_2(Struct_1(61086i, 1526f, vec2<bool>(true, false)), vec2<bool>(true, true), 726f), Struct_2(Struct_1(2147483647i, 472f, vec2<bool>(false, false)), vec2<bool>(false, true), 181f), Struct_2(Struct_1(-17193i, -403f, vec2<bool>(true, true)), vec2<bool>(false, true), -2336f), Struct_2(Struct_1(1i, -922f, vec2<bool>(true, false)), vec2<bool>(false, true), -738f), Struct_2(Struct_1(35430i, 335f, vec2<bool>(false, false)), vec2<bool>(true, true), 967f), Struct_2(Struct_1(-10647i, -970f, vec2<bool>(true, false)), vec2<bool>(false, false), 183f), Struct_2(Struct_1(-22246i, -593f, vec2<bool>(false, false)), vec2<bool>(true, true), -954f), Struct_2(Struct_1(-1i, -367f, vec2<bool>(false, false)), vec2<bool>(false, true), 966f));

var<private> global1: vec3<u32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_add_i32(firstLeadingBit(-1i) & arg_2.a.a, 0i), arg_2.a.b, arg_1.d.c);
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    var var_1 = min(arg_1.d.a, 3227i);
    var_1 = -75321i;
    return ~(~vec3<u32>(24265u, 4294967295u, u_input.c));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    global1 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(func_3(true, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -288f), Struct_1(-1i, -1522f, vec2<bool>(false, true)), u_input.d, Struct_1(u_input.b, -1100f, vec2<bool>(false, true))), Struct_4(Struct_1(u_input.a, arg_0.x, vec2<bool>(true, false))), Struct_4(Struct_1(4648i, 229f, vec2<bool>(false, true)))), ~(~vec3<u32>(global1.x, 20475u, 1u))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.d, firstLeadingBit(4543u)) ^ countOneBits(~vec3<u32>(u_input.c, global1.x, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(max(u_input.d, u_input.c), ~u_input.d, u_input.c), _wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.d, 17811u, global1.x), vec3<u32>(u_input.d, 1u, 57401u), vec3<bool>(true, false, false)), ~vec3<u32>(1u, 41527u, u_input.c)))));
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, ~u_input.c), min(_wgslsmith_mult_vec2_u32(global1.xx, vec2<u32>(global1.x, global1.x)), global1.yy >> (global1.zy % vec2<u32>(32u)))), ~vec2<u32>(u_input.c & 1u, _wgslsmith_add_u32(global1.x, u_input.c))) >> (vec2<u32>(4294967295u ^ ~global1.x, u_input.c) % vec2<u32>(32u));
    global1 = ~vec3<u32>(_wgslsmith_sub_u32(54272u | global1.x, _wgslsmith_mult_u32(0u, 31472u)) >> (countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(20469u, var_0.x, 683u), vec3<u32>(var_0.x, 34400u, 0u))) % 32u), _wgslsmith_mult_u32(countOneBits(var_0.x), global1.x), u_input.d);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -360f), Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(613f, -238f)))) * 293f), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), any(vec3<bool>(false, true, true))), vec2<bool>(true, true))), global1.x, Struct_1(-(~max(1i, 37384i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f + 1000f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-871f))))), select(vec2<bool>(select(false, true, true), u_input.b != 2147483647i), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_0), vec4<f32>(-1348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + var_1.a)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b.b)) - _wgslsmith_f_op_f32(f32(-1f) * -1017f))))) * _wgslsmith_f_op_vec4_f32(abs(arg_0)));
    return var_0.x;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = -_wgslsmith_sub_vec3_i32(-reverseBits(max(vec3<i32>(-8313i, 29080i, u_input.b), vec3<i32>(u_input.b, u_input.a, u_input.b))), vec3<i32>(15054i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-22681i, -7896i, arg_1.a), -vec3<i32>(1i, arg_1.a, u_input.a)), 11627i));
    global0 = array<Struct_2, 13>();
    var var_1 = firstLeadingBit(select(func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1727f, arg_0, arg_0, -531f)))), ~33247u & (u_input.c | 27504u), 0u >= countOneBits(global1.x)) | u_input.d);
    global0 = array<Struct_2, 13>();
    let var_2 = all(select(select(!vec3<bool>(true, arg_1.c.x, arg_1.c.x), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1.c.x, false), true), arg_1.c.x), !select(!vec3<bool>(arg_1.c.x, true, true), vec3<bool>(true, true, true), false), true));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(768f, arg_1.b), vec2<f32>(arg_1.b, arg_0))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(271f, arg_1.b), vec2<f32>(-1026f, arg_0), var_2)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(674f, 760f), _wgslsmith_f_op_f32(f32(-1f) * -438f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> bool {
    let var_0 = min(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(2147483647i, 55639i, 13204i), vec3<i32>(0i, -2147483647i, u_input.a), true), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 11688i), abs(vec3<i32>(u_input.a, u_input.a, 0i)), vec3<i32>(u_input.b, 0i, -2147483647i) | vec3<i32>(-1i, -1i, u_input.b))), u_input.a), u_input.b);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_0.x * arg_0.x))) - 333f), _wgslsmith_f_op_f32(trunc(arg_0.x)));
    var var_2 = arg_2.x;
    var var_3 = firstLeadingBit(-vec3<i32>(-1i, u_input.b, ~u_input.a >> (reverseBits(79548u) % 32u)));
    let var_4 = Struct_2(Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-21760i, u_input.a, -1i), vec3<i32>(-2043i, 40424i, 23710i))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2870i, var_3.x, -39935i), ~vec4<i32>(var_0, var_3.x, var_3.x, u_input.a))), -1000f, arg_2.xy), arg_2.zy, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = Struct_1(min(-23703i, ~(-1i)), 717f, vec2<bool>(!func_4(_wgslsmith_f_op_vec2_f32(func_1(1036f, Struct_1(1i, 683f, vec2<bool>(true, false)))), vec4<u32>(global1.x, global1.x, global1.x, 0u) & vec4<u32>(u_input.c, 43719u, 22650u, 1u), vec3<bool>(true, true, true)), false));
    var_1 = Struct_1(-(~u_input.b), _wgslsmith_f_op_f32(1023f * var_1.b), !select(var_1.c, var_1.c, var_1.c));
    var var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(885f, -968f, _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -788f, var_1.b)), select(select(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), vec3<bool>(var_1.c.x, true, false), vec3<bool>(true, var_1.c.x, true)), select(vec3<bool>(var_1.c.x, false, false), vec3<bool>(var_1.c.x, false, false), true), true))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 1474f, var_1.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-802f, 1372f, var_1.b) + vec3<f32>(var_1.b, var_1.b, var_1.b)), select(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), vec3<bool>(var_1.c.x, false, var_1.c.x), true))))))));
    global1 = reverseBits(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.d, global1.x), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(u_input.c, u_input.c, 130021u))), ~abs(vec3<u32>(52464u, global1.x, 31663u)), true)) & ~vec3<u32>(~firstLeadingBit(global1.x), ~u_input.d, u_input.c);
    var var_4 = Struct_1(~(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), vec2<bool>(true, (!var_1.c.x & !var_1.c.x) != false));
    global0 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(189f)) + var_1.b), vec4<f32>(var_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-851f, -1028f)), var_1.b)), _wgslsmith_f_op_f32(-var_4.b), _wgslsmith_f_op_f32(var_4.b + var_4.b)), -u_input.a);
}

