struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec4<f32> {
    let var_0 = vec3<i32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2289f, 758f, 189f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1082f, 150f, 1000f))) + vec3<f32>(1004f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f)), _wgslsmith_f_op_f32(floor(-1149f)))));
    var var_2 = arg_0.a;
    var_2 = Struct_1(var_0, var_2.b, _wgslsmith_mult_u32(arg_0.a.c, _wgslsmith_div_u32(_wgslsmith_sub_u32(~u_input.a.x, arg_1 & arg_0.a.c), 1u)));
    var var_3 = Struct_2(-43820i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 447f, -200f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-449f, -1630f, var_1.x, var_1.x) * vec4<f32>(303f, -1671f, var_1.x, -1596f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, 539f, 812f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 685f, var_1.x, var_1.x) - vec4<f32>(392f, var_1.x, -361f, -821f)))))), arg_0.a);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1441f, -762f, var_1.x, var_1.x) - vec4<f32>(-805f, var_1.x, var_3.b.x, var_3.b.x)), vec4<f32>(var_1.x, var_3.b.x, var_3.b.x, -1601f))), var_3.b)) - var_3.b));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = ~2769i;
    let var_1 = vec4<i32>(firstTrailingBit(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0), vec2<i32>(var_0, -14975i)))), 1i, reverseBits(-_wgslsmith_div_i32(var_0, var_0)), var_0);
    global0 = array<Struct_4, 23>();
    global0 = array<Struct_4, 23>();
    let var_2 = Struct_3(Struct_2(_wgslsmith_mult_i32(-(~(-49551i)), -(~32567i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(571f, 1000f, -1000f, -405f))) + _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(4127u, 23u)], 25995u)))), Struct_1(~vec3<i32>(var_0, 1i, 2147483647i), (false | arg_0.x) | false, abs(3156u))), Struct_2(_wgslsmith_sub_i32(var_0, _wgslsmith_sub_i32(-14009i, var_0)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(791f))), -483f, _wgslsmith_f_op_f32(109f * -316f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(685f, -597f)))), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, var_1.x, 3284i), var_1.wyz), true, u_input.b)), Struct_1(reverseBits(max(var_1.xzw, vec3<i32>(39661i, var_1.x, var_0))), all(vec4<bool>(true, true, true, true)), 21605u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, 1u)), vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.b) | u_input.b, 0u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.zx), _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(u_input.a.x, u_input.b)))));
    return _wgslsmith_f_op_f32(trunc(var_2.b.b.x));
}

fn func_1(arg_0: Struct_2) -> bool {
    global0 = array<Struct_4, 23>();
    let var_0 = _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-505f, arg_0.b.x)), arg_0.b.x) - _wgslsmith_f_op_f32(func_2(select(vec4<bool>(true, false, arg_0.c.b, arg_0.c.b), vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, false), true)))), -199f)));
    global0 = array<Struct_4, 23>();
    global0 = array<Struct_4, 23>();
    var var_1 = ~abs(_wgslsmith_dot_vec2_i32(-arg_0.c.a.yz, ~vec2<i32>(0i, arg_0.c.a.x)));
    return select(true, arg_0.c.b, true);
}

fn func_4(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = min(-vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(u_input.b, ~0u | _wgslsmith_mult_u32(u_input.b, u_input.a.x), _wgslsmith_sub_u32(0u & u_input.a.x, 61130u & u_input.b), u_input.b) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-22651i, -2147483647i, 0i, 0i), vec4<i32>(1i, _wgslsmith_div_i32(0i, -2147483647i), firstLeadingBit(-10676i), 1i), _wgslsmith_mult_vec4_i32(-vec4<i32>(-9092i, -1i, -35388i, -44564i), vec4<i32>(21548i, 52887i, -37064i, -9498i))) & (_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -20890i, 50864i), vec4<i32>(33308i, -36700i, -33129i, 15241i)), vec4<i32>(-12194i, -2147483647i, -1i, -31481i)) >> (u_input.a % vec4<u32>(32u))));
    var var_1 = u_input.a.x;
    var_1 = u_input.a.x;
    let var_2 = Struct_2(-22264i ^ var_0.x, vec4<f32>(1000f, _wgslsmith_f_op_f32(step(1563f, 1137f)), 906f, -309f), Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, -22655i, var_0.x)), reverseBits(vec3<i32>(-1i, -4052i, -2147483647i))), _wgslsmith_clamp_i32(~var_0.x, -2147483647i << (u_input.b % 32u), 1i), 0i), all(!(!arg_0)), ~_wgslsmith_mod_u32(~4294967295u, 15959u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - -1260f) - _wgslsmith_f_op_f32(round(var_2.b.x)))) + _wgslsmith_div_f32(-1856f, var_2.b.x)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 23>();
    let var_0 = -1000f;
    global0 = array<Struct_4, 23>();
    let var_1 = true;
    var var_2 = func_4(!vec2<bool>(func_1(Struct_2(-2147483647i, vec4<f32>(var_0, var_0, var_0, 927f), Struct_1(vec3<i32>(1i, 0i, -24330i), var_1, 64844u))) && any(vec4<bool>(true, var_1, false, var_1)), !var_1));
    let var_3 = Struct_3(Struct_2(var_2.a, vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-var_0), var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -278f)), func_4(!select(vec2<bool>(false, var_1), vec2<bool>(var_2.c.b, true), false)).c), func_4(vec2<bool>(true, true)), func_4(vec2<bool>(true, var_2.c.b)).c, u_input.a.yy << (~firstLeadingBit(u_input.a.zw) % vec2<u32>(32u)));
    let var_4 = vec3<u32>(var_2.c.c, var_3.d.x, ~38418u);
    var var_5 = Struct_2(countOneBits(~_wgslsmith_sub_i32(var_2.c.a.x, abs(-61464i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.a.b)), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-16666i >> (var_5.c.c % 32u), firstTrailingBit(var_5.a)), -1i);
}

