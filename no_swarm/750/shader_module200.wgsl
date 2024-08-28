struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

var<private> global1: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(23312u, 3733u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1531u, 0u, 1u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(381u, 18931u, 104107u, 49111u), vec4<u32>(0u, 52752u, 42207u, 4294967295u), vec4<u32>(31760u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 21700u), vec4<u32>(4294967295u, 1u, 1u, 22350u), vec4<u32>(33375u, 4294967295u, 5569u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(31208u, 7539u, 4294967295u, 1u), vec4<u32>(1u, 18340u, 4294967295u, 0u), vec4<u32>(25985u, 41430u, 0u, 2270u), vec4<u32>(6420u, 18410u, 37023u, 0u), vec4<u32>(0u, 85020u, 1u, 49332u), vec4<u32>(4294967295u, 122750u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 63859u, 1u, 99307u), vec4<u32>(13523u, 1u, 4597u, 46608u), vec4<u32>(23315u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 90u, 30901u, 26860u), vec4<u32>(1u, 1u, 2646u, 45369u), vec4<u32>(0u, 0u, 4657u, 22563u), vec4<u32>(4294967295u, 74567u, 4294967295u, 29173u), vec4<u32>(45662u, 7527u, 81068u, 0u), vec4<u32>(20052u, 1u, 0u, 77766u), vec4<u32>(4294967295u, 12592u, 23355u, 0u));

var<private> global2: u32 = 0u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(-1865f, ~(~min(select(vec2<u32>(44062u, 61237u), vec2<u32>(4294967295u, 67360u), true), vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1594f), -542f))), u_input.a, -(~(-abs(vec2<i32>(u_input.a, 17014i)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x))), ~firstLeadingBit(var_0.b) | ~(~vec2<u32>(45129u, var_0.b.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.c)) + _wgslsmith_f_op_vec2_f32(min(var_0.c, vec2<f32>(-1159f, var_0.c.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -1231f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-129f, -1500f) - vec2<f32>(var_0.c.x, 583f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.c - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 1081f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.c.x)) + var_0.c), true)))), abs(_wgslsmith_dot_vec2_i32(-var_0.e, -var_0.e) | abs(-1i)), (min(~var_0.e, -vec2<i32>(0i, -2147483647i)) & (max(vec2<i32>(u_input.a, 2458i), var_0.e) >> (_wgslsmith_div_vec2_u32(var_0.b, var_0.b) % vec2<u32>(32u)))) >> (vec2<u32>(var_0.b.x, var_0.b.x) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_mult_vec3_i32(-vec3<i32>(11278i, u_input.a, 1i), vec3<i32>(var_0.e.x, i32(-1i) * -abs(var_1.e.x), ~(~u_input.a)));
    let var_3 = vec4<u32>(~reverseBits(firstTrailingBit(var_0.b.x)), 39002u, _wgslsmith_sub_u32(4294967295u, var_1.b.x), var_1.b.x);
    let var_4 = 0i;
    return max(select(var_1.b, firstTrailingBit(min(select(vec2<u32>(40494u, 60626u), var_1.b, false), var_3.zz)), true), min(vec2<u32>(99070u, min(max(var_0.b.x, 29440u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(729u, 43771u)))), firstTrailingBit(~(vec2<u32>(var_0.b.x, 1u) | var_1.b))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -419f, false != any(vec4<bool>(true, false, false, true))))), min(~func_3(), ~abs(func_3())), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-976f + 341f), _wgslsmith_f_op_f32(-1000f - -1138f))), 434f), select(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i)), ~vec3<i32>(-1i, u_input.a, -3422i)), i32(-1i) * -10886i, firstLeadingBit(94725u) <= func_3().x) >> (~4294967295u % 32u), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -2147483647i) ^ (~vec2<i32>(-2147483647i, 12089i) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(0i, u_input.a))), vec2<i32>(-u_input.a, 1i)));
    let var_1 = var_0;
    global1 = array<vec4<u32>, 26>();
    global0 = array<vec3<bool>, 23>();
    var var_2 = var_1;
    return ~(~var_0.e.x ^ u_input.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = ~arg_0.x;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -301f)))), vec2<u32>(~4294967295u, 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(446f + -686f), _wgslsmith_f_op_f32(-1608f - -1629f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1240f, -1478f)))))), func_2(), vec2<i32>(~firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(firstTrailingBit(u_input.a), -1i)) & _wgslsmith_sub_vec2_i32(countOneBits(select(vec2<i32>(0i, -42031i), vec2<i32>(0i, 2147483647i), vec2<bool>(false, arg_2))), max(vec2<i32>(-6609i, 17735i), vec2<i32>(u_input.a, -41062i)) | max(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-1i, u_input.a))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.x)))), vec2<u32>(0u, arg_1 >> (12594u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(874f, 1292f))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, -430f, arg_2)), _wgslsmith_f_op_f32(-1746f * var_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, 611f))), any(!global0[_wgslsmith_index_u32(4294967295u, 23u)])))), abs(-abs(~631i)), var_1.e);
    var var_2 = vec4<bool>(true, any(vec3<bool>(arg_2, !arg_2, !arg_2 | !arg_2)), true, true);
    global1 = array<vec4<u32>, 26>();
    return Struct_1(var_1.c.x, vec2<u32>(_wgslsmith_mod_u32(29890u, arg_0.x), arg_0.x), vec2<f32>(-627f, -747f), -1i, countOneBits(-abs(_wgslsmith_clamp_vec2_i32(var_1.e, vec2<i32>(var_1.e.x, 27985i), var_1.e))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-154f + -1101f), arg_1.c.x))), min(min(vec2<u32>(arg_1.b.x ^ 1u, arg_1.b.x), arg_1.b), vec2<u32>(0u, _wgslsmith_mult_u32(firstTrailingBit(1u), func_1(vec2<u32>(64012u, arg_1.b.x), 1u, false).b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, -365f) * vec2<f32>(arg_1.a, arg_1.a)) + vec2<f32>(arg_1.c.x, arg_1.c.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-479f, -1123f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(580f, arg_1.a))), _wgslsmith_f_op_vec2_f32(-arg_1.c)))), -_wgslsmith_clamp_i32(arg_0, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 14182i, u_input.a, -5488i), max(vec4<i32>(-524i, -51513i, 2147483647i, 0i), vec4<i32>(u_input.a, arg_0, u_input.a, arg_0)))), ~vec2<i32>(~_wgslsmith_div_i32(arg_1.e.x, arg_2.x), -75055i ^ -arg_0));
    var var_1 = arg_1.d;
    var var_2 = var_0;
    global0 = array<vec3<bool>, 23>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-323f))), vec2<u32>(4294967295u, var_2.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -1102f)) - _wgslsmith_f_op_vec2_f32(-var_2.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, arg_1.c.x))) - arg_1.c), func_1(vec2<u32>(_wgslsmith_clamp_u32(var_2.b.x, 1u, ~5226u), ~_wgslsmith_sub_u32(var_0.b.x, arg_1.b.x)), 4294967295u, any(global0[_wgslsmith_index_u32(0u, 23u)])).d, -vec2<i32>(31820i, ~13434i) & -_wgslsmith_add_vec2_i32(arg_2.yx, vec2<i32>(-45592i, 0i)));
    return _wgslsmith_f_op_f32(step(var_3.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c.x - 554f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.x, var_3.c.x)) * -1000f))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_1 {
    global1 = array<vec4<u32>, 26>();
    global0 = array<vec3<bool>, 23>();
    global1 = array<vec4<u32>, 26>();
    let var_0 = ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, _wgslsmith_sub_i32(36543i >> (0u % 32u), u_input.a), u_input.a), select(reverseBits(-vec4<i32>(u_input.a, u_input.a, u_input.a, -28104i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 45146i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, 0i, u_input.a, 1i))), !arg_1));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(223f + arg_0.x))))), 236f, arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1268f));
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2058f * _wgslsmith_f_op_f32(step(-431f, arg_0.x))))), vec2<u32>(25424u, _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(~4294967295u, 1u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(var_1.wx)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * arg_0.x)))))), u_input.a, var_0.wz);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(trunc(-2465f)));
    var var_1 = max(global1[_wgslsmith_index_u32(arg_0.b.x & 43556u, 26u)], ~global1[_wgslsmith_index_u32(4294967295u, 26u)]);
    var var_2 = vec2<i32>(firstLeadingBit(arg_0.d), 1i);
    global0 = array<vec3<bool>, 23>();
    var_2 = vec2<i32>(0i, 1i);
    return Struct_1(arg_0.a, ~var_1.xw << (_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.b, arg_0.b), vec2<u32>(~var_1.x, _wgslsmith_div_u32(1u, 67027u)), vec2<u32>(countOneBits(40416u), _wgslsmith_add_u32(4294967295u, var_1.x))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.c, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, 1280f), arg_0.c)))), -(-18884i << (1u % 32u)), vec2<i32>(arg_0.e.x, _wgslsmith_clamp_i32(-1i, ~(~var_2.x), arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = func_6(func_5(vec3<f32>(-2504f, _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(-1i, 2147483647i, u_input.a)), func_1(vec2<u32>(1u, 0u), 0u, false), vec3<i32>(u_input.a, -2147483647i, -1i))), _wgslsmith_div_f32(-1244f, -1928f)), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, false), vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x)), vec2<bool>(false, true)), true), false, reverseBits(-19094i) != u_input.a);
    let var_2 = vec4<f32>(var_1.c.x, _wgslsmith_div_f32(func_6(Struct_1(-190f, func_3(), _wgslsmith_div_vec2_f32(vec2<f32>(1056f, var_1.a), var_1.c), -1i, select(var_1.e, var_1.e, false)), vec2<bool>(var_1.c.x < var_1.a, !var_0.x), true, !any(vec4<bool>(var_0.x, var_0.x, var_0.x, true))).c.x, _wgslsmith_f_op_f32(var_1.a - var_1.a)), _wgslsmith_div_f32(-1592f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(-1824f - 690f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(step(-1468f, -1556f))))));
    var_0 = select(!vec2<bool>(false, any(!vec3<bool>(var_0.x, true, false))), select(!(!select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), false)), vec2<bool>(var_0.x, !var_0.x || !var_0.x), !(!all(vec3<bool>(var_0.x, var_0.x, true)))), true);
    var var_3 = 37397i;
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -905f)))), _wgslsmith_f_op_f32(-var_2.x), var_1.c.x, _wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) * _wgslsmith_f_op_f32(f32(-1f) * -745f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) - _wgslsmith_f_op_f32(f32(-1f) * -1140f))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_div_f32(var_2.x, -1747f)) + -1122f)));
}

