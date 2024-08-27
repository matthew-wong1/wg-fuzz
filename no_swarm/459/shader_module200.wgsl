struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_3) -> bool {
    var var_0 = Struct_3(Struct_1(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, u_input.c) >> (arg_2.a.c % vec2<u32>(32u))), ~vec2<u32>(0u, arg_2.a.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xz)) - arg_1), _wgslsmith_mult_vec2_u32(vec2<u32>(abs(arg_2.a.a.x), firstLeadingBit(arg_2.a.a.x)), ~_wgslsmith_sub_vec2_u32(arg_2.a.a, vec2<u32>(u_input.c, u_input.c)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_2.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, 556f, arg_0.x, 773f))), _wgslsmith_f_op_vec4_f32(-arg_2.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_2.b, vec4<f32>(476f, -155f, -593f, 2289f), vec4<bool>(false, true, false, true))))));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(761f, var_0.a.b.x, 441f, 212f)) - _wgslsmith_f_op_vec4_f32(-var_0.b))) - vec4<f32>(1000f, var_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.b.x - arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -493f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_2.b.x)))))));
    var_0 = Struct_3(arg_2.a, arg_2.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1154f * var_0.a.b.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-698f, var_0.a.b.x))) + vec2<f32>(arg_2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2153f, var_0.a.b.x))))));
    var var_2 = Struct_4(Struct_2(-u_input.b.x, var_0.a, u_input.b.wz, 34093i, select(select(false, false, true) | true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), (-2147483647i >= u_input.b.x) == any(vec2<bool>(true, false)))), ~vec3<u32>(20632u, var_0.a.a.x, 34543u) | _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(4294967295u, arg_2.a.a.x, arg_2.a.a.x)), ~vec3<u32>(53499u, 0u, u_input.c)));
    return true;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_4(Struct_2(-2147483647i >> (1u % 32u), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(11325u, u_input.c), vec2<u32>(0u, u_input.c)) & countOneBits(vec2<u32>(u_input.c, u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-864f, 481f), vec2<f32>(1922f, -474f))), abs(min(vec2<u32>(57233u, 74954u), vec2<u32>(u_input.c, 25082u)))), -select(vec2<i32>(u_input.a.x, -56076i), vec2<i32>(u_input.b.x, 1738i), vec2<bool>(true, arg_0)), u_input.b.x, arg_0), _wgslsmith_add_vec3_u32(~abs(vec3<u32>(u_input.c, u_input.c, 53126u)), _wgslsmith_div_vec3_u32((vec3<u32>(u_input.c, 3063u, u_input.c) >> (vec3<u32>(u_input.c, 48175u, u_input.c) % vec3<u32>(32u))) >> (vec3<u32>(24481u, u_input.c, 1u) % vec3<u32>(32u)), abs(vec3<u32>(u_input.c, u_input.c, u_input.c)) << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(0u, u_input.c, u_input.c)) % vec3<u32>(32u)))));
    var var_1 = true;
    var_1 = (_wgslsmith_dot_vec3_i32(min(~u_input.b.xxw, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), vec3<i32>(20226i, 26867i, var_0.a.d))), ~vec3<i32>(2147483647i, u_input.a.x, u_input.b.x) ^ ~u_input.b.yyy) > -_wgslsmith_mult_i32(u_input.a.x, -u_input.a.x)) | any(vec3<bool>(arg_1, var_0.a.e, !func_3(vec3<f32>(var_0.a.b.b.x, 1087f, 692f), vec2<f32>(197f, var_0.a.b.b.x), Struct_3(Struct_1(var_0.b.yy, vec2<f32>(var_0.a.b.b.x, -597f), vec2<u32>(var_0.a.b.c.x, var_0.b.x)), vec4<f32>(630f, -234f, var_0.a.b.b.x, var_0.a.b.b.x)))));
    var var_2 = vec2<u32>(0u, 1u);
    var var_3 = select(select(vec3<bool>(false, _wgslsmith_f_op_f32(1920f * 348f) != _wgslsmith_f_op_f32(sign(var_0.a.b.b.x)), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, arg_0, false), !vec3<bool>(true, arg_0, arg_1)), select(vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(false, var_0.a.e, arg_2.x), vec3<bool>(true, arg_2.x, true), false), true), select(!vec3<bool>(arg_0, var_0.a.e, false), vec3<bool>(false, true, true), !vec3<bool>(false, arg_2.x, var_0.a.e))), arg_0), !select(vec3<bool>(false, select(false, arg_1, false), arg_2.x), !vec3<bool>(true, arg_0, false), !(!vec3<bool>(arg_0, false, true))), vec3<bool>(var_0.a.e & (var_0.a.e | true), arg_0, false | (var_0.a.e | any(arg_2))));
    return var_0.a.b;
}

fn func_1() -> u32 {
    var var_0 = Struct_2(u_input.b.x, func_2(!any(vec2<bool>(false, true)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), vec2<bool>(true, true)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 50603i, ~u_input.b.x, 1188i), -_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(-1i, u_input.a.x, 2147483647i, -1i))), u_input.a.x), ~u_input.a.x, any(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, true), true))));
    var_0 = Struct_2(select(-2147483647i, reverseBits((u_input.a.x & 33861i) >> (~1u % 32u)), !var_0.e), var_0.b, vec2<i32>(-2147483647i, u_input.b.x), _wgslsmith_add_i32(-1i, _wgslsmith_clamp_i32(abs(-2147483647i), u_input.b.x, _wgslsmith_dot_vec2_i32(var_0.c, ~vec2<i32>(-2057i, var_0.a)))), any(!(!vec4<bool>(var_0.e, var_0.e, true, false))));
    let var_1 = countOneBits(2147483647i);
    let var_2 = func_2(true | (var_0.e && var_0.e), true, select(select(!(!vec2<bool>(false, var_0.e)), vec2<bool>(var_0.e, false), false), vec2<bool>(false, var_0.e), vec2<bool>(false, select(true, var_0.b.b.x > 273f, !var_0.e))));
    let var_3 = vec4<u32>(~abs(9409u), min(~35414u, func_2(var_0.e, !(309f != var_0.b.b.x), select(vec2<bool>(var_0.e, var_0.e), vec2<bool>(true, true), any(vec3<bool>(var_0.e, var_0.e, var_0.e)))).c.x), ~(~58047u), u_input.c);
    return ~(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.b.c.x, 74804u << (var_2.a.x % 32u)), var_0.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>((func_1() & (u_input.c << (u_input.c % 32u))) & 1u, ~u_input.c), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, 331f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-843f, -947f))))), vec2<u32>(0u, 1u));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1340f, 1249f, -224f, var_0.b.x) - vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -1305f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -957f, var_0.b.x, 278f) - vec4<f32>(-1201f, 452f, 703f, 1452f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -209f, var_0.b.x, 1525f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(347f, var_0.b.x, var_0.b.x, var_0.b.x))));
    let var_2 = select(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))), vec2<bool>(true, var_0.c.x > 29316u)), !select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), true), !func_3(vec3<f32>(1358f, _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_div_f32(826f, 399f)), var_0.b, Struct_3(Struct_1(vec2<u32>(u_input.c, u_input.c), var_1.zw, var_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1319f, 1311f, 368f, -1942f)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1i));
}

