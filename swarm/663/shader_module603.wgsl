struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(-11643i, 23533i, 29743i), vec3<i32>(-15485i, 2147483647i, 0i), vec3<i32>(2147483647i, -63893i, -1i), vec3<i32>(0i, 23974i, -1i), vec3<i32>(2147483647i, -29257i, 20171i), vec3<i32>(8696i, 0i, 1i), vec3<i32>(-1052i, i32(-2147483648), 2147483647i), vec3<i32>(-5366i, -25796i, 28816i), vec3<i32>(0i, 2109i, -35839i), vec3<i32>(8443i, 0i, -62115i), vec3<i32>(0i, -29928i, 2147483647i), vec3<i32>(-1i, -12434i, 1i), vec3<i32>(-1288i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), 18414i), vec3<i32>(1i, 4202i, 29861i), vec3<i32>(26658i, -1i, 0i), vec3<i32>(-60360i, i32(-2147483648), -19882i), vec3<i32>(-1i, -1i, -7599i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-28106i, 1i, 12586i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), 495i, -16378i), vec3<i32>(0i, 0i, 1i), vec3<i32>(0i, 0i, 29938i), vec3<i32>(97185i, 43416i, -3253i), vec3<i32>(-8582i, 0i, i32(-2147483648)), vec3<i32>(-96651i, 2147483647i, -30810i), vec3<i32>(i32(-2147483648), -2362i, 1i));

var<private> global1: u32 = 0u;

var<private> global2: f32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(arg_0.a.a.x), min(15731i, arg_1.a.a.x)), (arg_0.a.a.x << (4294967295u % 32u)) & arg_0.a.a.x, 53896i, ~(~(-9896i))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, ~u_input.a, ~u_input.a, u_input.b >> (u_input.b % 32u)), ~select(vec4<u32>(1u, u_input.b, u_input.b, u_input.a), vec4<u32>(u_input.a, u_input.a, 75959u, u_input.b), arg_1.a.b), ~(vec4<u32>(u_input.a, 4294967295u, u_input.a, 333u) ^ vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.b))) % vec4<u32>(32u)));
    let var_1 = vec3<f32>(-217f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-345f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1144f - -802f) + _wgslsmith_f_op_f32(-arg_0.a.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a.c.x - 502f)))) * arg_1.a.c.x));
    var var_2 = ~vec2<i32>(1i, 72350i);
    global2 = arg_1.a.c.x;
    let var_3 = vec3<bool>(true, !all(!(!vec4<bool>(arg_0.a.b, false, true, false))), arg_0.a.b);
    return var_1.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: f32) -> vec2<f32> {
    let var_0 = ~abs(~abs(reverseBits(vec4<u32>(0u, 4294967295u, u_input.b, 0u))));
    global2 = 1f;
    global2 = -612f;
    let var_1 = select(!vec2<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)))), vec2<bool>(true, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<i32>(-43294i, 1i, -78399i), false, vec3<f32>(189f, -426f, -379f))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 29u)], true, vec3<f32>(arg_1, 1326f, 182f))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-475f)))), select(select(vec2<bool>(true, all(vec4<bool>(true, true, false, true))), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(true, false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), false));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 889f), -145f), _wgslsmith_f_op_f32(-arg_1)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = 1000f;
    var var_1 = true;
    let var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1411i, _wgslsmith_add_i32(2147483647i, -52605i), 24017i, -1680i), ~select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 0i, -7694i, -2147483647i), vec4<i32>(-43434i, 2147483647i, -20692i, -8900i)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 0i, -1i), vec4<i32>(-15346i, 1i, 1i, -12757i)), vec4<bool>(false, false, true, true))), 55999i);
    let var_3 = select(select(vec2<bool>(any(vec4<bool>(true, true, true, true)), select(true, false, false) | true), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, false, false, true)), true), true), select(vec2<bool>(false, any(vec3<bool>(true, true, true))), vec2<bool>(true, true), true)), vec2<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), false), !(true && any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    var var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(abs(46947u), abs(38325u), u_input.b), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 41506u, 28636u), vec3<u32>(57652u, u_input.a, u_input.b)) | _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, 101977u), vec3<u32>(u_input.b, 49416u, 51002u)), max(vec3<u32>(u_input.b, u_input.b, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(u_input.a, u_input.a, 1u)))), abs(select(vec3<u32>(u_input.b, 31011u, 25382u), vec3<u32>(u_input.b, 4902u, 33502u), vec3<bool>(true, var_3.x, var_3.x)) | ~vec3<u32>(u_input.a, u_input.b, u_input.b))));
    return Struct_2(Struct_1(vec3<i32>(-56583i, -(i32(-1i) * -20041i), 2147483647i), all(!(!vec3<bool>(false, var_3.x, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-300f, var_0, var_0), vec3<f32>(-776f, -913f, var_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -518f, -2248f) * vec3<f32>(arg_0.x, arg_0.x, -812f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, var_0, -273f))))));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_2.a.c.x))));
    global0 = array<vec3<i32>, 29>();
    let var_1 = -7369i | ((func_4(_wgslsmith_f_op_vec2_f32(arg_2.a.c.yz + vec2<f32>(arg_3, -125f))).a.a.x ^ -(~arg_0)) & -15345i);
    var var_2 = _wgslsmith_f_op_f32(-arg_3);
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_1.zy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a.c.x, arg_3)), arg_1.x)));
    return func_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1696f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2(arg_2.a.c.yx, arg_2.a.c.x, var_3.x)).x))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: f32, arg_3: i32) -> vec2<u32> {
    var var_0 = func_5(-(~(~arg_3)), vec3<f32>(_wgslsmith_f_op_f32(-1221f * _wgslsmith_f_op_f32(arg_2 - 509f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))), _wgslsmith_f_op_f32(f32(-1f) * -1087f)), func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(137f, -1914f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(-302f, 1000f), 1222f, 187f)))), arg_1.x))), arg_2);
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a.c.yx)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.c.zy) + vec2<f32>(733f, -1732f)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1570f), _wgslsmith_f_op_f32(1886f + var_0.a.c.x)))));
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~(~select(arg_0.yzy, vec3<u32>(arg_0.x, 4294967295u, 2864u), vec3<bool>(arg_1.x, var_1.a.b, false))), reverseBits(vec3<u32>(u_input.a, arg_0.x, 1u) | arg_0.wwx)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, 91048u, u_input.a), arg_0.yyy) | ~arg_0.wyw, _wgslsmith_div_vec3_u32(min(~arg_0.yzy, vec3<u32>(119168u, u_input.a, 53820u) & vec3<u32>(u_input.b, u_input.b, arg_0.x)), ~arg_0.yyz), arg_0.yww | ~(~arg_0.zyy)));
    var var_3 = ~arg_3;
    var var_4 = _wgslsmith_div_vec4_i32(~((_wgslsmith_mod_vec4_i32(vec4<i32>(-12029i, var_0.a.a.x, -33471i, -465i), vec4<i32>(arg_3, var_1.a.a.x, 21996i, arg_3)) ^ -vec4<i32>(var_1.a.a.x, var_0.a.a.x, var_0.a.a.x, 0i)) ^ -(vec4<i32>(33149i, var_0.a.a.x, -791i, 2147483647i) | vec4<i32>(arg_3, var_1.a.a.x, 2844i, arg_3))), select(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -26358i, var_0.a.a.x, var_1.a.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-10723i, -1i, arg_3, 24097i), vec4<i32>(var_1.a.a.x, var_1.a.a.x, -9302i, arg_3), vec4<i32>(1i, var_1.a.a.x, var_1.a.a.x, -2147483647i))), vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(60455i, 17159i)), -_wgslsmith_div_i32(var_1.a.a.x, 2147483647i), -2147483647i, -firstTrailingBit(27838i)), vec4<bool>(arg_1.x, true, _wgslsmith_mult_i32(-412i, var_1.a.a.x) != (-16190i ^ var_1.a.a.x), false)));
    return var_2.zz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(func_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(31037u, 46695u, 0u, u_input.b), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 31101u, 12497u, u_input.a), vec4<u32>(u_input.a, u_input.b, 94808u, 1u))), vec3<bool>(true, false, true), 1f, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-21784i, ~1i), ~1i)));
    let var_1 = Struct_2(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(-278f, 2111f), -1096f, -359f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -678f) + vec2<f32>(245f, -672f)), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1087f), vec2<f32>(-1296f, 123f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-282f, 866f)), true)))).a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.c.zy));
    global1 = ~(var_0.x >> ((4294967295u | var_0.x) % 32u));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2560f) - 571f));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f) + _wgslsmith_f_op_f32(473f + 1075f)), _wgslsmith_f_op_f32(min(-427f, _wgslsmith_f_op_f32(trunc(615f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(var_1.a.c.xz, vec2<f32>(var_1.a.c.x, -791f))), _wgslsmith_f_op_vec2_f32(-var_1.a.c.xx))))) * var_1.a.c.zy);
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a, u_input.a), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_1, func_5(var_1.a.a.x, var_1.a.c, var_1, -1000f))), var_1.a.c.x), 754f)), ~(select(var_0, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(u_input.a, 4294967295u)), select(vec2<bool>(false, var_1.a.b), vec2<bool>(var_1.a.b, true), true)) << (~(~var_0) % vec2<u32>(32u))), ~countOneBits(~(vec4<u32>(u_input.b, 68948u, var_0.x, var_0.x) | vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u))), 2147483647i);
}

