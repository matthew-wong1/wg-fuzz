struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_4,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-230f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1347f + _wgslsmith_f_op_f32(step(-1320f, -1097f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1287f))))))));
    var var_1 = reverseBits(~u_input.a);
    return abs(arg_0.a.x);
}

fn func_2() -> vec4<f32> {
    var var_0 = ~reverseBits(vec4<i32>(min(firstTrailingBit(6419i), abs(-87961i)), ~(-1645i), countOneBits(0i), func_3(Struct_1(vec3<i32>(-2147483647i, -5551i, 42086i)))));
    let var_1 = Struct_2(vec2<u32>(u_input.a, (~u_input.a << (25394u % 32u)) << (~(~u_input.a) % 32u)), Struct_1(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 16758i, 54724i), var_0.zyw))), var_0.xyw);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-278f)), -209f, -1022f, 331f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 389f, 1253f, -541f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-326f, -821f, -921f, -1246f), vec4<f32>(-211f, -1020f, 1757f, -240f)))))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, 1187f, var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-754f, -1056f, var_2.x, 708f) * vec4<f32>(var_2.x, -1000f, -1375f, 1529f)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), 919f, -1990f, var_2.x)) * vec4<f32>(var_2.x, var_2.x, 851f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x - var_2.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, var_2.x, 1444f, 173f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 1000f, var_2.x) * vec4<f32>(var_2.x, var_2.x, 957f, -1032f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, var_2.x, 1030f)))))));
    let var_4 = _wgslsmith_mod_u32(u_input.a & ~u_input.a, 58399u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2000f, -1485f, var_3.x, var_3.x) * vec4<f32>(var_3.x, -214f, var_2.x, 760f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-884f, var_3.x, -540f, var_3.x) * vec4<f32>(var_2.x, var_3.x, var_3.x, -301f)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: u32, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_sub_vec2_i32(abs(select(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -77773i), vec2<i32>(41223i, -1i)), ~vec2<i32>(-2147483647i, -8493i), vec2<bool>(true, true))) | _wgslsmith_add_vec2_i32(~(vec2<i32>(-2147483647i, -8014i) << (arg_0.xz % vec2<u32>(32u))), max(~vec2<i32>(-1i, 0i), vec2<i32>(-2147483647i, -4496i))), vec2<i32>(2147483647i, -15114i << (u_input.a % 32u)));
    var var_1 = arg_3.x;
    var var_2 = vec2<u32>(1u, 0u);
    var_1 = 475f;
    let var_3 = Struct_1(-_wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, 2147483647i), vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(10055i, -2147483647i, -1i))), reverseBits(vec3<i32>(var_0.x, var_0.x, 0i))));
    return vec4<i32>(~(~var_0.x), i32(-1i) * -36208i, var_0.x, i32(-1i) * -31790i);
}

fn func_1(arg_0: Struct_5, arg_1: u32, arg_2: f32) -> vec2<bool> {
    let var_0 = reverseBits(countOneBits(func_4(~(~vec3<u32>(47000u, arg_1, 1u)), arg_2, select(arg_1, 39508u, !arg_0.a.c), _wgslsmith_f_op_vec4_f32(func_2()))));
    var var_1 = -301f;
    var var_2 = max(_wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_0.a.b.a.x, ~4294967295u, arg_0.c.d.a.x), vec3<u32>(u_input.a, firstLeadingBit(4294967295u), ~u_input.a), !(!vec3<bool>(false, arg_0.a.c, arg_0.c.c))), select(vec3<u32>(abs(u_input.a), abs(arg_0.c.b.a.x), arg_1), ~vec3<u32>(63326u, arg_0.c.d.a.x, 0u), !(!vec3<bool>(false, arg_0.c.c, arg_0.c.c)))), ~_wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_0.a.b.a.x, 4294967295u, arg_0.a.d.a.x), vec3<u32>(u_input.a, arg_0.a.d.a.x, 0u)) & countOneBits(vec3<u32>(arg_1, u_input.a, 0u)), ~vec3<u32>(0u, 14645u, 1u)));
    let var_3 = Struct_2(~select(arg_0.c.d.a & var_2.xz, ~reverseBits(arg_0.c.b.a), true), Struct_1(vec3<i32>(var_0.x, arg_0.c.b.b.a.x, arg_0.c.d.b.a.x)), -_wgslsmith_mod_vec3_i32(~var_0.xwz, ~arg_0.a.b.c ^ var_0.xxy));
    let var_4 = Struct_3(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(select(46772i, -41328i, false), -2147483647i)), _wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(arg_0.b - -816f))), ~(~abs(vec3<u32>(var_3.a.x, var_2.x, arg_0.a.d.a.x)) << (~(~vec3<u32>(arg_1, arg_1, 1u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(777f)))), -1721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-1f))), arg_0.c.c);
    return !select(select(vec2<bool>(any(vec3<bool>(false, true, arg_0.a.c)), any(vec3<bool>(arg_0.c.c, false, var_4.e))), vec2<bool>(true, false), var_4.e), !vec2<bool>(var_4.e & arg_0.c.c, false), select(select(select(vec2<bool>(true, true), vec2<bool>(true, var_4.e), vec2<bool>(var_4.e, arg_0.a.c)), select(vec2<bool>(arg_0.a.c, false), vec2<bool>(false, var_4.e), var_4.e), select(vec2<bool>(var_4.e, arg_0.a.c), vec2<bool>(arg_0.a.c, false), vec2<bool>(false, false))), vec2<bool>(false, arg_0.a.c), false));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: Struct_2) -> Struct_4 {
    let var_0 = select(!(!vec3<bool>(true, arg_1.a.a.x < arg_1.a.a.x, arg_1.c & false)), select(select(!(!vec3<bool>(true, arg_1.c, true)), vec3<bool>(true, arg_1.c, arg_2.b.a.x > arg_1.a.a.x), all(!vec4<bool>(arg_1.c, arg_1.c, false, false))), vec3<bool>(arg_1.b.a.x >= 5983u, 4294967295u < arg_2.a.x, !any(vec4<bool>(arg_0, true, arg_0, false))), arg_1.c && arg_0), !select(vec3<bool>(arg_0, true, !arg_0), !vec3<bool>(true, true, arg_0), select(!vec3<bool>(true, arg_1.c, false), vec3<bool>(true, true, arg_1.c), vec3<bool>(false, true, false))));
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(arg_1.d.b.a.x ^ 5626i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-65510i, arg_1.a.a.x, -49885i), arg_2.b.a), arg_1.d.c.x, -2147483647i), arg_1.d.b.a);
    var var_2 = arg_1.c;
    let var_3 = !var_0;
    var_2 = arg_0;
    return Struct_4(Struct_1(-(var_1 ^ (arg_1.a.a & vec3<i32>(0i, var_1.x, arg_1.b.c.x)))), Struct_2(_wgslsmith_mod_vec2_u32(arg_2.a, ~vec2<u32>(0u, 945u)) | arg_2.a, arg_2.b, ~func_4(vec3<u32>(103206u, u_input.a, 15999u), _wgslsmith_f_op_f32(max(-475f, -645f)), arg_1.b.a.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(530f, 1894f, -565f, 1077f)))).wxx), !(!(!(true != arg_1.c))), arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(all(select(vec2<bool>(false, true), func_1(Struct_5(Struct_4(Struct_1(vec3<i32>(-2147483647i, 0i, 0i)), Struct_2(vec2<u32>(u_input.a, u_input.a), Struct_1(vec3<i32>(27801i, 2147483647i, 54745i)), vec3<i32>(-2147483647i, -14375i, 50846i)), true, Struct_2(vec2<u32>(0u, u_input.a), Struct_1(vec3<i32>(-33252i, -1i, -2147483647i)), vec3<i32>(2147483647i, 11710i, 27604i))), 621f, Struct_4(Struct_1(vec3<i32>(3299i, 1i, -1i)), Struct_2(vec2<u32>(20280u, u_input.a), Struct_1(vec3<i32>(-2147483647i, 1i, -41294i)), vec3<i32>(-18875i, -822i, -1i)), false, Struct_2(vec2<u32>(u_input.a, u_input.a), Struct_1(vec3<i32>(-29631i, 11527i, 25455i)), vec3<i32>(13266i, 2147483647i, 0i))), vec3<i32>(10185i, 35431i, 34941i)), _wgslsmith_div_u32(u_input.a, 4294967295u), 989f), true)), Struct_4(Struct_1(vec3<i32>(~(-19207i), 0i, func_3(Struct_1(vec3<i32>(-2147483647i, -1i, 24850i))))), Struct_2(abs(~vec2<u32>(0u, u_input.a)), Struct_1(max(vec3<i32>(-54791i, -46558i, -1798i), vec3<i32>(2147483647i, 1i, -1i))), vec3<i32>(_wgslsmith_add_i32(-39778i, -39784i), ~(-2147483647i), 1i)), 25391u > firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 0u)), Struct_2(abs(~vec2<u32>(u_input.a, 1u)), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(26025i, 30162i, 0i), vec3<i32>(-512i, 6449i, 58904i))), select(vec3<i32>(34714i, 0i, -39848i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -1i, -12608i), vec3<i32>(-1i, 30417i, 0i)), any(vec4<bool>(true, false, false, false))))), Struct_2(_wgslsmith_sub_vec2_u32(select(min(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, u_input.a), true), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(0u, u_input.a))), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 1i, 87328i), max(vec3<i32>(0i, -7011i, -1i), vec3<i32>(2147483647i, 2147483647i, -2147483647i)))), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), -_wgslsmith_sub_vec3_i32(vec3<i32>(22754i, -5165i, -2147483647i), vec3<i32>(-1i, -1i, 0i)))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(589f, -1000f, -437f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1215f, -1852f, 260f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-752f, -1127f, -1059f) * vec3<f32>(100f, 921f, 1048f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1849f))), _wgslsmith_f_op_f32(f32(-1f) * -737f))));
    var_0 = Struct_4(Struct_1(vec3<i32>(28479i, -2236i, 1i)), func_5(var_0.c, Struct_4(func_5(all(vec4<bool>(var_0.c, true, false, false)), func_5(var_0.c, Struct_4(Struct_1(vec3<i32>(-1i, 31913i, 68477i)), Struct_2(var_0.d.a, var_0.a, vec3<i32>(-7865i, -547i, var_0.b.c.x)), true, var_0.b), Struct_2(vec2<u32>(60259u, 32585u), Struct_1(vec3<i32>(-2873i, 32377i, var_0.a.a.x)), var_0.b.b.a)), var_0.d).d.b, func_5(var_0.c, Struct_4(var_0.d.b, var_0.d, false, var_0.d), Struct_2(var_0.d.a, var_0.a, var_0.d.c)).b, true, var_0.b), func_5(false, Struct_4(Struct_1(var_0.d.c), func_5(true, Struct_4(Struct_1(var_0.b.c), Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(vec3<i32>(-1i, -1i, var_0.d.b.a.x)), var_0.d.b.a), var_0.c, Struct_2(var_0.d.a, Struct_1(vec3<i32>(-14519i, var_0.a.a.x, var_0.d.b.a.x)), vec3<i32>(var_0.d.c.x, -12639i, var_0.b.b.a.x))), var_0.b).b, var_0.c, Struct_2(var_0.b.a, Struct_1(vec3<i32>(-1i, -1i, -7732i)), vec3<i32>(var_0.a.a.x, 27634i, var_0.d.b.a.x))), func_5(!var_0.c, Struct_4(var_0.b.b, Struct_2(vec2<u32>(u_input.a, 4294967295u), var_0.b.b, vec3<i32>(-2147483647i, var_0.d.b.a.x, 0i)), false, var_0.b), Struct_2(var_0.d.a, Struct_1(vec3<i32>(-2147483647i, 1368i, -5330i)), var_0.b.c)).b).d).b, var_0.c, func_5(any(!vec3<bool>(true, var_0.c, var_0.c)) & all(vec3<bool>(false, false, false)), Struct_4(func_5(false, func_5(true, Struct_4(var_0.b.b, Struct_2(vec2<u32>(u_input.a, var_0.d.a.x), Struct_1(vec3<i32>(-2147483647i, 2760i, var_0.d.b.a.x)), vec3<i32>(var_0.d.c.x, 44507i, var_0.a.a.x)), false, var_0.b), var_0.d), var_0.d).a, func_5(any(vec4<bool>(var_0.c, var_0.c, false, var_0.c)), Struct_4(Struct_1(var_0.b.b.a), var_0.b, var_0.c, var_0.d), func_5(true, Struct_4(var_0.d.b, var_0.b, var_0.c, var_0.d), var_0.d).d).d, var_0.c, Struct_2(var_0.b.a, Struct_1(vec3<i32>(var_0.a.a.x, -2147483647i, var_0.a.a.x)), ~var_0.a.a)), var_0.d).b);
    var var_2 = Struct_5(Struct_4(var_0.b.b, func_5(func_5(var_0.c == true, func_5(false, Struct_4(Struct_1(vec3<i32>(var_0.b.c.x, var_0.b.b.a.x, -8370i)), var_0.b, true, Struct_2(var_0.d.a, var_0.d.b, var_0.d.b.a)), Struct_2(var_0.b.a, Struct_1(vec3<i32>(3687i, var_0.a.a.x, 2147483647i)), var_0.d.b.a)), func_5(var_0.c, Struct_4(var_0.a, var_0.d, var_0.c, var_0.d), Struct_2(vec2<u32>(4588u, 47316u), Struct_1(var_0.a.a), vec3<i32>(var_0.b.b.a.x, var_0.d.c.x, var_0.b.b.a.x))).d).c, func_5(all(vec4<bool>(false, false, var_0.c, var_0.c)), func_5(var_0.c, Struct_4(var_0.a, Struct_2(vec2<u32>(u_input.a, var_0.b.a.x), Struct_1(vec3<i32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)), vec3<i32>(2147483647i, var_0.a.a.x, var_0.d.c.x)), var_0.c, Struct_2(vec2<u32>(86579u, 0u), Struct_1(vec3<i32>(var_0.a.a.x, var_0.a.a.x, 2147483647i)), var_0.a.a)), var_0.b), func_5(var_0.c, Struct_4(var_0.d.b, Struct_2(vec2<u32>(u_input.a, 34442u), Struct_1(vec3<i32>(var_0.a.a.x, -31990i, var_0.d.c.x)), vec3<i32>(var_0.a.a.x, var_0.d.b.a.x, 39622i)), true, var_0.b), var_0.d).b), var_0.d).b, var_0.c, Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(14698u, u_input.a), vec2<u32>(u_input.a, var_0.b.a.x)) | vec2<u32>(u_input.a, var_0.d.a.x), var_0.a, vec3<i32>(var_0.a.a.x, ~var_0.a.a.x, -17322i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(560f + var_1.x), var_1.x)))), Struct_4(Struct_1(~firstTrailingBit(var_0.d.b.a)), Struct_2(vec2<u32>(max(var_0.d.a.x, 49901u), 4173u), var_0.d.b, countOneBits(~vec3<i32>(2147483647i, 0i, var_0.d.c.x))), var_0.c, Struct_2(var_0.d.a, Struct_1(var_0.d.b.a & vec3<i32>(-1i, 0i, var_0.d.c.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.b.b.a.yx, var_0.a.a.yz), -var_0.b.c.x, _wgslsmith_clamp_i32(var_0.a.a.x, var_0.b.c.x, var_0.a.a.x)))), vec3<i32>(var_0.a.a.x, var_0.b.c.x, -2147483647i) | countOneBits(func_4(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0.b.a.x, 1u), vec3<u32>(0u, var_0.b.a.x, u_input.a)), _wgslsmith_f_op_f32(-var_1.x), 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1079f, var_1.x, var_1.x))).xwy));
    var var_3 = Struct_4(func_5(any(select(select(vec2<bool>(var_0.c, false), vec2<bool>(true, false), vec2<bool>(var_0.c, var_2.a.c)), vec2<bool>(var_0.c, var_2.a.c), var_2.c.c)), func_5((var_0.b.c.x > var_0.d.b.a.x) & select(var_0.c, false, true), func_5(var_0.c, var_2.a, var_0.d), func_5(true, Struct_4(Struct_1(vec3<i32>(var_0.b.c.x, -2147483647i, var_2.d.x)), var_0.b, var_2.a.c, var_0.b), func_5(var_2.c.c, Struct_4(Struct_1(vec3<i32>(var_2.c.a.a.x, var_0.a.a.x, 7061i)), Struct_2(var_2.a.b.a, var_2.a.a, var_2.c.a.a), true, var_2.a.b), var_2.c.b).b).b), var_2.a.d).b.b, var_2.a.b, any(!select(vec4<bool>(var_0.c, false, true, true), vec4<bool>(var_2.a.c, var_0.c, true, true), vec4<bool>(true, var_0.c, var_2.a.c, true))), var_2.c.d);
    let var_4 = Struct_5(func_5(true, var_2.c, Struct_2(vec2<u32>(var_2.c.d.a.x ^ 22024u, var_0.b.a.x), func_5(true, func_5(var_2.c.c, Struct_4(Struct_1(var_2.a.a.a), var_0.b, false, var_2.a.b), Struct_2(var_2.c.b.a, Struct_1(var_3.b.c), vec3<i32>(-63486i, var_2.c.d.c.x, var_2.a.d.c.x))), var_2.a.b).d.b, vec3<i32>(select(var_2.d.x, var_3.b.c.x, true), var_2.d.x, select(-1i, -2147483647i, var_3.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2()).x, -1000f))), Struct_4(var_2.a.d.b, var_2.c.b, all(vec4<bool>(var_0.c & var_2.c.c, true, true, !var_0.c)), var_2.c.b), vec3<i32>(var_3.a.a.x, -1i | var_2.c.a.a.x, reverseBits(-25548i)));
    var_0 = Struct_4(func_5(!(var_2.c.c && var_3.c) & (var_4.c.d.b.a.x > _wgslsmith_mult_i32(-52346i, var_0.b.c.x)), var_4.c, var_0.d).d.b, Struct_2(vec2<u32>(_wgslsmith_mult_u32(~12466u, abs(0u)), ~_wgslsmith_mult_u32(4294967295u, var_2.c.b.a.x)), func_5(!(var_3.d.a.x <= var_3.d.a.x), var_4.a, Struct_2(select(vec2<u32>(var_4.a.b.a.x, 0u), var_3.d.a, false), var_0.d.b, -var_4.a.b.c)).b.b, var_0.d.b.a), true, func_5(true && all(vec3<bool>(var_0.c, false, false)), func_5(var_0.c, Struct_4(Struct_1(vec3<i32>(var_2.c.a.a.x, 1i, 33284i)), func_5(var_4.a.c, Struct_4(var_2.c.a, Struct_2(vec2<u32>(var_3.d.a.x, var_2.a.d.a.x), var_3.a, var_4.a.a.a), true, Struct_2(vec2<u32>(38882u, var_2.c.d.a.x), Struct_1(vec3<i32>(var_0.b.c.x, var_4.c.b.b.a.x, var_0.a.a.x)), var_0.d.c)), var_3.b).d, false, Struct_2(var_0.d.a, var_2.a.d.b, var_2.d)), var_4.c.b), func_5(48319u > (1u & var_4.a.d.a.x), func_5(all(vec2<bool>(var_4.c.c, false)), var_2.c, Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(var_0.d.c), var_4.a.d.b.a)), Struct_2(select(vec2<u32>(var_0.d.a.x, 1u), var_3.d.a, false), Struct_1(vec3<i32>(30979i, var_0.a.a.x, -5926i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_3.d.b.a.x, 36544i, 61035i), var_3.a.a))).d).d);
    let var_5 = var_2.a.b.b;
    let var_6 = vec3<bool>(all(select(select(vec3<bool>(false, var_4.a.c, var_4.c.c), vec3<bool>(var_2.c.c, var_4.c.c, true), var_3.c), !vec3<bool>(false, var_0.c, var_4.a.c), var_3.c)), false, var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1137f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), var_2.b)), vec2<f32>(-190f, -118f))), var_4.c.d.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(372f, 1002f, 1328f, 1825f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.b, var_2.b, var_4.b, -597f)))) * vec4<f32>(-394f, _wgslsmith_div_f32(var_4.b, 1000f), -1113f, var_1.x)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b, 1586f, var_4.b, 355f), vec4<f32>(var_4.b, 1000f, -858f, -165f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-748f, var_2.b, 113f, 486f), vec4<f32>(var_2.b, var_1.x, var_4.b, 212f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_4.b, var_4.b, var_1.x))))))));
}

