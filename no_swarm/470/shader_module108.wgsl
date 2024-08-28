struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32>;

var<private> global1: Struct_4 = Struct_4(false, Struct_1(false, 1u, vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), -21180i)), Struct_3(vec3<u32>(48198u, 15274u, 14380u), false), Struct_1(true, 4294967295u, vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec2<i32>(-9945i, -1i)));

var<private> global2: Struct_1 = Struct_1(true, 0u, vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec2<i32>(4985i, -29126i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    let var_0 = arg_0.b;
    var var_1 = vec2<i32>(reverseBits(~arg_0.d.e.x), 15189i) | _wgslsmith_clamp_vec2_i32(~min(vec2<i32>(-1i, -2147483647i), abs(vec2<i32>(global2.e.x, arg_0.d.e.x))), -(~firstTrailingBit(vec2<i32>(arg_0.d.e.x, var_0.e.x))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -global1.d.e, -vec2<i32>(0i, -1i)));
    let var_2 = global1.c;
    var var_3 = ~countOneBits(~firstTrailingBit(vec2<u32>(arg_0.c.a.x, var_2.a.x)));
    let var_4 = ~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 1i, _wgslsmith_add_i32(-1i, 39720i)), select(vec3<i32>(arg_0.b.e.x, -2147483647i, arg_0.b.e.x), ~vec3<i32>(1i, var_0.e.x, arg_0.d.e.x), global2.c.x)) & firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(global2.e.x, arg_0.d.e.x), var_1.x, var_1.x));
    return ~(-(min(global2.e, ~var_4.yz) & abs(firstLeadingBit(var_0.e))));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: f32) -> vec3<i32> {
    let var_0 = Struct_4(!all(select(vec4<bool>(global2.a, false, false, true), !vec4<bool>(global1.b.c.x, false, false, false), vec4<bool>(true, global1.d.d.x, global2.a, true))), Struct_1(false, 4294967295u, !global1.b.d, select(global1.d.c, !select(global1.b.d, global1.b.c, vec3<bool>(global1.d.c.x, global2.d.x, false)), select(select(vec3<bool>(global2.a, global2.a, false), global2.c, global1.b.d), select(vec3<bool>(global2.c.x, global1.b.c.x, true), global1.b.c, false), all(global2.c))), global1.b.e), Struct_3(_wgslsmith_add_vec3_u32(abs(~vec3<u32>(34411u, u_input.a, global1.c.a.x)), countOneBits(vec3<u32>(global2.b, global1.d.b, u_input.a))), true), global1.d);
    let var_1 = Struct_1(false, 4294967295u, select(!select(global2.c, global1.d.d, var_0.d.d), !global2.c, false), !global2.c, -global2.e);
    var var_2 = Struct_2(Struct_1(!((global2.c.x | false) | (global1.d.e.x != global2.e.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 30339u, 39893u), global1.c.a), vec3<bool>(!var_1.d.x, all(vec4<bool>(true, global1.b.d.x, false, true)), true && (global2.d.x || global1.d.c.x)), select(var_1.c, vec3<bool>(global1.a, !var_1.c.x, false), global1.b.e.x < 0i), max(global1.d.e, _wgslsmith_sub_vec2_i32(vec2<i32>(-2916i, global1.b.e.x), global2.e | var_0.d.e))), vec2<bool>(any(vec4<bool>(all(global2.d.xz), all(vec4<bool>(var_0.b.d.x, global1.c.b, var_1.c.x, var_1.a)), true, !global1.d.c.x)), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_2)));
    let var_3 = var_0.c;
    var var_4 = var_0.d;
    return vec3<i32>(0i, _wgslsmith_mod_i32(~1i, _wgslsmith_clamp_i32(1i, var_1.e.x, -17671i) | 0i) >> (var_2.a.b % 32u), 0i);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.b, arg_1.b, 39343u, 1u), vec4<u32>(0u, arg_0, 3906u, 1u)), firstTrailingBit(vec4<u32>(1u, 1u, 4294967295u, global2.b)))), (_wgslsmith_clamp_vec2_u32(vec2<u32>(62186u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.c.a.x, arg_1.b), global1.c.a.zx), _wgslsmith_add_vec2_u32(global1.c.a.xx, global1.c.a.zz)) << (vec2<u32>(~global2.b, countOneBits(0u)) % vec2<u32>(32u))) >> (min(global1.c.a.xz, vec2<u32>(_wgslsmith_add_u32(1u, global2.b), arg_1.b)) % vec2<u32>(32u)));
    var var_1 = true;
    let var_2 = ~(~_wgslsmith_add_vec3_i32(func_4(_wgslsmith_f_op_f32(678f - -722f), func_3(Struct_4(false, arg_1, global1.c, Struct_1(false, 30245u, vec3<bool>(global2.d.x, global2.d.x, true), global2.d, vec2<i32>(global2.e.x, global2.e.x)))), 1385f), -select(vec3<i32>(30454i, 252i, 1i), vec3<i32>(global1.d.e.x, 56886i, 0i), global2.a)));
    var var_3 = Struct_3(min(~_wgslsmith_mod_vec3_u32(countOneBits(global1.c.a), ~global1.c.a), vec3<u32>(8010u, abs(1u), abs(13027u)) ^ vec3<u32>(_wgslsmith_mult_u32(arg_1.b, 2350u), 1u, global2.b << (global2.b % 32u))), ~(-44943i) <= select(1i, func_4(-2490f, global1.d.e & global1.d.e, _wgslsmith_f_op_f32(select(206f, -1162f, arg_2.x))).x, true));
    var_1 = false | all(!arg_2.yww);
    return _wgslsmith_mult_vec3_i32(var_2, var_2);
}

fn func_5(arg_0: vec3<i32>) -> vec3<bool> {
    global2 = Struct_1(false, global2.b, select(global2.c, global2.c, !(!global1.b.d)), !select(vec3<bool>(false, global2.c.x, true), vec3<bool>(any(global1.b.d.xy), !global1.d.a, global1.d.b <= 51374u), true), vec2<i32>(_wgslsmith_add_i32(10840i << (~4294967295u % 32u), 0i), global1.b.e.x));
    let var_0 = vec3<bool>(all(vec3<bool>(false, all(select(vec3<bool>(global2.d.x, global2.a, true), vec3<bool>(global2.a, global1.a, false), global1.b.c.x)), !global2.a)), global1.a, global2.d.x);
    let var_1 = ~1i;
    return !vec3<bool>(global2.a, false, any(!(!global2.c.zy)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    global2 = Struct_1(global2.d.x, _wgslsmith_clamp_u32(max(global1.c.a.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(9099u, u_input.a), 32774u)), ~firstTrailingBit(arg_1.b), 86399u), vec3<bool>(((true == arg_1.a) & true) || all(!vec4<bool>(false, true, global2.c.x, global1.c.b)), select(global1.c.b, any(select(global1.d.c, global1.b.d, false)), global1.a), global1.d.a), func_5(func_2(~abs(global2.b), arg_1, select(vec4<bool>(global2.c.x, arg_1.c.x, global2.a, false), !vec4<bool>(global2.d.x, arg_1.c.x, false, true), !vec4<bool>(global2.a, false, true, true)))), arg_1.e);
    let var_0 = _wgslsmith_div_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.e.x, 1i, -26119i, global2.e.x), vec4<i32>(-66031i, -2147483647i, arg_1.e.x, 10658i)) | (vec4<i32>(global2.e.x, 1i, global2.e.x, global1.b.e.x) & -vec4<i32>(0i, 1i, 74247i, -2147483647i)), vec4<i32>(global1.b.e.x, -5449i, -2147483647i, _wgslsmith_div_i32(select(global1.b.e.x, 19501i, arg_1.c.x), -2147483647i))) ^ ~(vec4<i32>(_wgslsmith_mod_i32(arg_1.e.x, global2.e.x), ~(-1i), -8992i, global2.e.x) ^ (vec4<i32>(-69829i, 2147483647i, 0i, -7331i) ^ ~vec4<i32>(arg_1.e.x, -2147483647i, arg_1.e.x, 2147483647i)));
    var var_1 = -2147483647i;
    var var_2 = Struct_4(false, arg_1, global1.c, arg_1);
    let var_3 = !vec4<bool>(true, global2.a, true, false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
}

fn func_6(arg_0: u32, arg_1: f32) -> Struct_1 {
    global1 = Struct_4(true, global1.d, global1.c, global1.b);
    var var_0 = Struct_4(any(global1.d.d), global1.b, global1.c, global1.b);
    let var_1 = Struct_4(select(global1.a, var_0.d.d.x, _wgslsmith_sub_i32(global2.e.x, var_0.d.e.x) > func_3(Struct_4(global2.a, Struct_1(global1.d.a, 4294967295u, vec3<bool>(global1.a, global1.b.d.x, global2.d.x), global1.b.c, var_0.b.e), global1.c, Struct_1(var_0.c.b, 4294967295u, var_0.d.c, vec3<bool>(global2.d.x, true, global2.c.x), global2.e))).x) | !(!(!global1.c.b)), Struct_1(any(func_5(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.e.x, 2147483647i, global1.d.e.x), vec3<i32>(var_0.d.e.x, -1i, global1.d.e.x))).yy), global1.d.b ^ _wgslsmith_dot_vec2_u32(select(global1.c.a.xy, vec2<u32>(28380u, arg_0), true), vec2<u32>(global1.b.b, global2.b)), func_5(~func_4(-1453f, global1.b.e, -255f)), func_5(-firstLeadingBit(vec3<i32>(17590i, -5174i, 1i))), min(firstLeadingBit(global2.e | vec2<i32>(global2.e.x, -30672i)), min(global2.e, var_0.d.e))), Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.b.b, firstTrailingBit(var_0.c.a.x), _wgslsmith_mult_u32(0u, global2.b)), (vec3<u32>(u_input.a, arg_0, u_input.a) << (vec3<u32>(4294967295u, arg_0, 1u) % vec3<u32>(32u))) << (var_0.c.a % vec3<u32>(32u))), any(var_0.b.d.yx)), global1.b);
    let var_2 = Struct_3(var_0.c.a, true);
    let var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-453f, arg_1, true)))))) + -118f), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(var_1.b.e.x, -1i)), _wgslsmith_mult_vec2_i32(~var_1.b.e, global2.e)), abs(vec2<i32>(_wgslsmith_add_i32(-30279i, var_0.d.e.x), var_0.b.e.x))), _wgslsmith_f_op_f32(select(arg_1, arg_1, var_0.a))).x;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(!select(vec4<bool>(global1.b.c.x, false, false, global2.d.x), select(vec4<bool>(false, global1.b.c.x, false, true), vec4<bool>(global2.d.x, global2.a, global1.b.d.x, global2.d.x), vec4<bool>(false, false, true, global2.c.x)), !vec4<bool>(global1.a, true, global2.d.x, global2.d.x))), all(vec2<bool>(true, true)), all(vec3<bool>(all(vec2<bool>(false, false)), any(!vec3<bool>(global1.a, true, true)), false)));
    var var_1 = global1.c.a.x;
    global1 = Struct_4(true | any(!select(global1.b.d.zx, vec2<bool>(true, true), var_0.x)), Struct_1(false, ~64373u, vec3<bool>(true, true, true), select(select(!var_0, global2.c, !var_0), var_0, select(vec3<bool>(false, global1.b.c.x, var_0.x), !vec3<bool>(true, global1.d.c.x, true), any(vec4<bool>(false, false, var_0.x, true)))), global2.e), global1.c, Struct_1(true, u_input.a, global2.c, !vec3<bool>(u_input.a > global1.b.b, false, any(vec3<bool>(var_0.x, global1.c.b, false))), select(-global1.b.e & (global2.e & vec2<i32>(global2.e.x, 1i)), (global2.e << (global1.c.a.yz % vec2<u32>(32u))) | vec2<i32>(global1.b.e.x, global2.e.x), all(select(var_0, vec3<bool>(true, global2.d.x, global1.b.c.x), global2.d.x)))));
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1165f, -1000f)) * vec2<f32>(1000f, -335f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(508f, 286f)) + vec2<f32>(-789f, 1000f)), select(select(global2.d.xz, var_0.xx, true), select(vec2<bool>(var_2, false), vec2<bool>(false, global2.a), false), global2.d.yy))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(252f + -222f), _wgslsmith_f_op_f32(ceil(916f))), vec2<f32>(-283f, 953f))));
    global1 = Struct_4(global1.b.d.x, func_6(abs(global1.d.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1830f * 1075f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(var_3, Struct_1(false, global1.b.b, var_0, vec3<bool>(true, true, true), global1.b.e))))))), Struct_3(vec3<u32>(1u, ~(~global1.d.b), reverseBits(u_input.a)), all(!select(vec4<bool>(false, false, global1.c.b, var_0.x), vec4<bool>(var_2, global1.c.b, false, var_2), vec4<bool>(var_0.x, var_2, var_0.x, var_2)))), func_6(_wgslsmith_div_u32(~_wgslsmith_mult_u32(global1.b.b, 19923u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1.d.b, 21289u, global2.b, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, global1.c.a.x), vec4<u32>(0u, 0u, u_input.a, global2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(-1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_6(_wgslsmith_mult_u32((global2.b | u_input.a) & 1u, global2.b), var_3.x).b);
}

