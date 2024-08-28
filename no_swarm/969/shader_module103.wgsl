struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: bool) -> u32 {
    global1 = u_input.c.zz;
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(-29575i, firstTrailingBit(12817i) | _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.e.x, -1962i), arg_0.e), 56982i)), 31271i ^ ((1i >> (firstLeadingBit(u_input.a) % 32u)) | (firstTrailingBit(1i) | ~arg_0.e.x)), countOneBits(select(arg_0.e.x, 1i, 1681f > _wgslsmith_f_op_f32(-arg_0.a.x))));
    global1 = vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(countOneBits(u_input.a), global1.x)), vec2<u32>(~global1.x, u_input.d)), 2695u);
    global0 = vec4<bool>(true, !global0.x, global0.x, true | arg_2);
    global1 = ~((_wgslsmith_sub_vec2_u32(select(u_input.c.yz, u_input.c.yz, arg_1), u_input.c.zy) & u_input.c.zy) >> (u_input.c.yz % vec2<u32>(32u)));
    return (~global1.x >> (global1.x % 32u)) ^ 4294967295u;
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    global1 = vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_3, 0u, 0u, global1.x), vec4<u32>(u_input.a, arg_0, global1.x, 33033u), arg_2.b.a)), reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, arg_0, 56465u, arg_2.b.a.x), vec4<u32>(arg_2.b.a.x, arg_2.b.a.x, u_input.a, 4294967295u)))), 41113u);
    var var_0 = ~((~(global1.x | 0u) << (reverseBits(u_input.d) % 32u)) ^ 1u);
    var var_1 = vec4<u32>(arg_0, _wgslsmith_sub_u32(80296u & abs(global1.x), arg_3), _wgslsmith_mult_u32(arg_3, _wgslsmith_sub_u32(arg_3 >> (_wgslsmith_sub_u32(30744u, arg_0) % 32u), 1u)), ~(~(~16658u)));
    var_1 = arg_2.b.a;
    let var_2 = _wgslsmith_f_op_f32(-518f * arg_1.x);
    return Struct_2(global0.x, arg_2.b);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    global1 = arg_0.a.zw;
    let var_0 = all(arg_0.d);
    var var_1 = func_3(u_input.b, vec4<f32>(arg_3.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_2.b, arg_3.b)), _wgslsmith_f_op_f32(step(-998f, arg_3.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - 186f), any(select(vec4<bool>(false, global0.x, false, var_0), vec4<bool>(global0.x, true, arg_3.c, false), vec4<bool>(false, arg_0.d.x, arg_0.d.x, arg_3.c))))), 1000f, 140f), Struct_2(var_0, Struct_1(vec4<u32>(reverseBits(1u), func_2(Struct_3(arg_3.a, -460f, var_0, vec3<f32>(864f, arg_2.a.x, -547f), arg_3.e), false, true, true), ~8140u, ~4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(20501u, 0u, arg_1), u_input.c), 989f, select(vec2<bool>(global0.x, arg_2.c), !vec2<bool>(arg_3.c, false), true))), 93385u);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_f_op_f32(round(-911f))));
    let var_3 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-497f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_3.d.x, _wgslsmith_f_op_f32(trunc(-1381f))), _wgslsmith_f_op_f32(var_1.b.c - _wgslsmith_f_op_f32(arg_2.a.x + -776f)))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = ~arg_0.x & 0i;
    let var_1 = func_3(reverseBits(_wgslsmith_add_u32(19757u >> (u_input.b % 32u), ~4294967295u)) ^ ~u_input.c.x, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, -403f))), -615f, -348f, arg_1.x))), Struct_2(any(select(vec2<bool>(arg_2.x, global0.x), !vec2<bool>(arg_2.x, false), true)), func_3(global1.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(109f, arg_1.x, arg_1.x, -1000f))))), Struct_2(select(arg_2.x, true, false), Struct_1(vec4<u32>(u_input.a, u_input.c.x, global1.x, u_input.c.x), vec3<u32>(global1.x, u_input.b, u_input.a), arg_1.x, global0.ww)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 1u, 0u, global1.x), vec4<u32>(global1.x, 4294967295u, 4294967295u, global1.x))).b), 1u >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c | vec3<u32>(22123u, 0u, 19164u), vec3<u32>(0u, 0u, global1.x)), ~func_2(Struct_3(vec3<f32>(-293f, 1059f, -1881f), 980f, arg_2.x, vec3<f32>(arg_1.x, arg_1.x, 3116f), arg_0.yy), global0.x, arg_2.x, false)) % 32u));
    var var_2 = !select(vec2<bool>(var_1.a, !var_1.a), vec2<bool>(global0.x, !all(arg_2)), !(countOneBits(16398u) <= ~u_input.d));
    var var_3 = vec2<i32>(arg_0.x, arg_0.x);
    let var_4 = false;
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(abs(-1172f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-178f + 1203f), _wgslsmith_f_op_f32(step(-257f, _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) - var_1.b.c)), _wgslsmith_f_op_vec2_f32(round(arg_1.xy)), _wgslsmith_div_u32(26251u, var_1.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), reverseBits(21651i)), select(~_wgslsmith_mult_i32(-1i, -35056i), ~(~(-4124i)), select(false, all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true)), 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-959f - _wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(global1.x, u_input.d, u_input.c.x, 1u), vec3<u32>(1u, global1.x, 63690u), -678f, vec2<bool>(global0.x, global0.x)), 29478u, Struct_3(vec3<f32>(-328f, -290f, 1422f), 299f, true, vec3<f32>(-193f, 764f, 1541f), vec2<i32>(-43118i, -1i)), Struct_3(vec3<f32>(-976f, -1066f, -1733f), 162f, false, vec3<f32>(-1106f, 393f, -135f), vec2<i32>(16451i, 2147483647i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(706f))), -1000f)), select(!select(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, true, false), true), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, true, false), vec4<bool>(global0.x, false, global0.x, global0.x)), !vec4<bool>(false, global0.x, global0.x, false)), select(!(!vec4<bool>(global0.x, false, global0.x, global0.x)), !(!vec4<bool>(true, false, false, global0.x)), true), vec4<bool>(any(global0.zz), false, select(!global0.x, global0.x, any(global0.zyy)), false)));
    var var_1 = vec2<u32>(~var_0.c, ~(~0u));
    var var_2 = func_3(global1.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(544f, -280f, var_0.b.x, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, var_0.b.x, var_0.b.x, 296f))), vec4<f32>(1000f, 1623f, var_0.b.x, 581f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(662f, var_0.b.x, 391f, -734f), vec4<f32>(var_0.a.x, 1044f, var_0.b.x, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.b.x, 1520f, -1397f)), global0.x))), !select(!vec4<bool>(true, global0.x, true, true), select(vec4<bool>(false, true, global0.x, true), vec4<bool>(false, true, global0.x, true), false), true || global0.x))), Struct_2(false, func_3(max(u_input.a, var_0.c), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, -276f, -2318f, var_0.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1153f, -981f, -255f) + vec4<f32>(1000f, var_0.b.x, 378f, 626f))), Struct_2(false, func_3(global1.x, vec4<f32>(182f, 1759f, var_0.b.x, 213f), Struct_2(false, Struct_1(vec4<u32>(4294967295u, var_1.x, 19430u, 18761u), u_input.c, var_0.a.x, global0.xz)), var_0.c).b), var_0.c).b), var_0.c).b;
    var var_3 = -_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, _wgslsmith_div_i32(-19827i, -11531i), firstTrailingBit(27330i), -1i), _wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(41456i, 0i, -2147483647i, 16391i), vec4<i32>(-10000i, 2147483647i, 0i, 0i))), _wgslsmith_div_vec4_i32(select(vec4<i32>(67311i, -49591i, -2147483647i, 1i), vec4<i32>(-24164i, -34132i, -35287i, -2147483647i), vec4<bool>(global0.x, var_2.d.x, true, true)), -vec4<i32>(0i, 21574i, 23458i, 35371i))));
    let var_4 = Struct_1(_wgslsmith_mod_vec4_u32(var_2.a, func_3(~4294967295u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1037f, var_0.a.x, var_2.c, 210f), vec4<f32>(var_0.a.x, 258f, 968f, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, -1356f, var_0.b.x, 620f)))), func_3(~var_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(951f, -740f, 1178f, -588f)), Struct_2(var_2.d.x, Struct_1(vec4<u32>(42372u, 4294967295u, var_0.c, 4294967295u), vec3<u32>(4294967295u, 38285u, global1.x), -176f, vec2<bool>(global0.x, var_2.d.x))), func_4(vec3<i32>(var_3.x, -1i, 1i), vec3<f32>(-1115f, var_0.a.x, var_0.a.x), vec4<bool>(true, var_2.d.x, global0.x, false)).c), var_2.a.x).b.a), min(u_input.c, var_2.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b.x, -1464f), _wgslsmith_f_op_f32(-1000f * -159f)))))), global0.yy);
    var_1 = (~(~select(vec2<u32>(var_1.x, 1u), var_2.b.xz, vec2<bool>(var_2.d.x, var_4.d.x))) & ~var_2.a.zw) >> (firstLeadingBit(u_input.c.zz) % vec2<u32>(32u));
    let var_5 = var_2.a.x;
    let var_6 = func_3(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(34382u, var_2.b.x), vec2<u32>(454u, var_0.c) & u_input.c.yx)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-960f, var_2.c, var_2.c, var_2.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.x, var_4.c, -493f, 323f)))))))), func_3(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(firstTrailingBit(15436u), var_2.b.x), 45876u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_2.c, var_2.c, 1000f)), vec4<f32>(758f, var_0.b.x, _wgslsmith_div_f32(-1359f, var_4.c), _wgslsmith_f_op_f32(min(var_4.c, -1619f))), vec4<bool>(false, var_3.x != var_3.x, all(vec4<bool>(global0.x, global0.x, var_2.d.x, true)), global0.x))), Struct_2(all(vec3<bool>(var_2.d.x, global0.x, var_4.d.x)), var_4), global1.x), ~1u | select(var_4.b.x, ~var_1.x & var_2.b.x, true));
    let var_7 = func_4(var_3.zzx, var_0.a, select(select(select(!vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(true, var_2.d.x, var_2.d.x, false), !vec4<bool>(false, var_4.d.x, false, var_4.d.x)), select(vec4<bool>(false, false, var_2.d.x, var_6.a), select(vec4<bool>(var_2.d.x, true, global0.x, global0.x), vec4<bool>(var_6.b.d.x, global0.x, var_2.d.x, var_4.d.x), var_4.d.x), all(vec3<bool>(true, global0.x, true))), all(!global0.yzy)), !(!(!vec4<bool>(false, global0.x, var_2.d.x, true))), select(!(!vec4<bool>(var_2.d.x, var_4.d.x, global0.x, false)), vec4<bool>(!global0.x, false, !var_4.d.x, var_4.b.x >= 17310u), select(select(vec4<bool>(false, var_2.d.x, true, false), vec4<bool>(false, var_6.b.d.x, true, var_6.a), vec4<bool>(false, global0.x, false, var_6.b.d.x)), !vec4<bool>(true, true, var_6.b.d.x, false), !var_4.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(182f, _wgslsmith_f_op_f32(-283f + -1258f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1638f * var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1373f - -2032f), 515f, false)), 814f, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(var_2.c - 914f)))), vec4<f32>(-643f, func_4(vec3<i32>(var_3.x & var_3.x, _wgslsmith_sub_i32(var_3.x, var_3.x), countOneBits(-14648i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_6.b.c, var_2.c, var_7.b.x) * var_7.a), select(select(vec4<bool>(true, true, false, var_2.d.x), vec4<bool>(true, var_4.d.x, true, false), false), vec4<bool>(true, global0.x, true, global0.x), !vec4<bool>(false, var_6.b.d.x, var_6.a, true))).a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_6.b.c), func_3(0u, vec4<f32>(597f, -657f, -835f, var_7.b.x), func_3(var_6.b.a.x, vec4<f32>(2743f, var_6.b.c, -618f, 1194f), var_6, var_2.a.x), ~var_0.c).b.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, _wgslsmith_div_f32(-1000f, var_7.a.x)))), var_4.b.x, var_3.x, 801f);
}

