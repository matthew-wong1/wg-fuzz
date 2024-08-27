struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1134f)))) * 2057f);
    var var_1 = Struct_1(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), any(vec4<bool>(true, true, true, true))), vec4<bool>(true, true || all(vec4<bool>(false, true, false, true)), !any(vec4<bool>(true, true, true, false)), true), 98529u < global0.x), _wgslsmith_div_i32(0i, -56566i) <= arg_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2055f - -872f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1415f * -1660f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -884f))))))), _wgslsmith_add_i32(-1i, u_input.b.x << (4294967295u % 32u)) >= (u_input.b.x ^ ~min(23237i, 26674i)));
    var var_2 = Struct_2(Struct_1(var_1.a, var_1.e, var_1.c, _wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(-487f - _wgslsmith_f_op_f32(var_1.d * -1340f)))), var_1.a.x), var_1.a.x, Struct_1(vec4<bool>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -756f) >= _wgslsmith_f_op_f32(-var_1.c.x), !var_1.a.x || false, _wgslsmith_f_op_f32(-853f + -1000f) > _wgslsmith_f_op_f32(max(var_1.d, -909f))), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x) + vec3<f32>(var_1.c.x, var_1.d, 1981f)) - vec3<f32>(var_1.d, var_1.c.x, var_1.c.x)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(var_1.c))))), _wgslsmith_div_f32(-257f, var_1.d), var_1.b));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_2.c.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1601f)), var_1.b));
    var var_3 = var_1.c.zy;
    return arg_1.x;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(~u_input.a.x, func_3(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 70508i, -20220i, u_input.d), vec4<i32>(49214i, u_input.d, 2147483647i, -2147483647i)), vec4<i32>(-11512i, u_input.d, -2147483647i, -677i)), firstLeadingBit(vec4<u32>(4294967295u, 31243u, 4294967295u, 23946u))), _wgslsmith_mult_u32(countOneBits(52495u), ~countOneBits(global0.x))), u_input.a.yyy);
    let var_0 = -1000f;
    global0 = u_input.a.wwx;
    let var_1 = -2147483647i;
    let var_2 = (u_input.c << (_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 29046u, 37866u), u_input.c.wzy), min(4294967295u, 69793u), global0.x, global0.x), vec4<u32>(4294967295u >> (global0.x % 32u), 20841u, 0u, abs(u_input.a.x))) % vec4<u32>(32u))) << (u_input.c % vec4<u32>(32u));
    return Struct_2(Struct_1(vec4<bool>(all(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, false)) && true, any(vec4<bool>(false, true, false, false)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true))), !all(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.zxw), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, 511f, var_0))))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), all(vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_i32(0i, -var_1) >= -var_1), false, Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), all(vec2<bool>(true, false))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, true))), !(!select(false, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-262f, var_0, -3007f)), arg_0.yzw))), _wgslsmith_f_op_f32(f32(-1f) * -1254f), !(var_1 == firstTrailingBit(var_1))));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 525f, -402f, 121f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 581f, -1000f, 572f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 1227f, arg_0.d, 1000f) - vec4<f32>(1397f, arg_0.c.x, arg_0.d, arg_0.c.x))) + vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x), arg_0.d, arg_0.c.x))));
    global0 = max(~(~vec3<u32>(u_input.a.x, ~4294967295u, ~u_input.a.x)), ~(~vec3<u32>(10379u, u_input.a.x >> (0u % 32u), 1u)));
    let var_1 = select(var_0.c.a.x, arg_0.b, arg_0.c.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.d, _wgslsmith_f_op_f32(1035f + var_0.c.d)))));
    var var_2 = u_input.d;
    var var_3 = Struct_1(vec4<bool>(true, var_0.a.e, arg_0.a.x && any(select(vec4<bool>(false, false, true, var_0.a.a.x), vec4<bool>(var_1, true, var_0.a.a.x, false), false)), true), false, _wgslsmith_f_op_vec3_f32(-var_0.c.c), arg_0.d, any(arg_0.a));
    return !(!(!any(vec2<bool>(true, arg_0.e)))) != var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, !(!func_1(Struct_1(vec4<bool>(false, false, true, false), false, vec3<f32>(383f, 553f, -787f), 1000f, false))));
    global0 = ~((select(vec3<u32>(45912u, u_input.c.x, 4294967295u), vec3<u32>(global0.x, 4294967295u, global0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)) ^ ~vec3<u32>(u_input.a.x, 1u, u_input.c.x)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(46815u, 80195u, 46623u), u_input.a.zyz) % vec3<u32>(32u))) << ((vec3<u32>(4294967295u, ~(~4294967295u), u_input.a.x) | ~vec3<u32>(_wgslsmith_add_u32(u_input.c.x, 4294967295u), max(global0.x, global0.x), 46080u)) % vec3<u32>(32u));
    global0 = ~vec3<u32>(u_input.c.x | (1u >> (_wgslsmith_dot_vec3_u32(u_input.a.zwx, vec3<u32>(34141u, 62781u, global0.x)) % 32u)), ~105547u, u_input.c.x);
    let var_1 = u_input.d;
    let var_2 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(971f, -218f, 287f, 570f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(731f, -1030f, 1826f, 1482f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(498f, 146f, -1735f, -342f)))))).a, Struct_2(Struct_1(!vec4<bool>(var_0.x, true, var_0.x, false), var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-454f, -550f, 118f) - vec3<f32>(1000f, -450f, -270f)) - vec3<f32>(572f, 2153f, 268f)), -854f, !(!var_0.x)), (-1535i > firstTrailingBit(u_input.d)) && all(!vec2<bool>(var_0.x, true)), Struct_1(vec4<bool>(!var_0.x, true, false, 43092u != global0.x), func_1(Struct_1(vec4<bool>(var_0.x, var_0.x, true, false), var_0.x, vec3<f32>(1523f, -350f, -1513f), 259f, var_0.x)) || !var_0.x, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-842f, 1502f, 174f, -572f))).c.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(299f, -154f, false)))), var_0.x && true)));
    let var_3 = select(false, false, func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-425f, var_2.b.c.c.x, -1230f, 1442f) + vec4<f32>(var_2.b.a.c.x, 1116f, var_2.a.c.x, var_2.b.c.c.x)), vec4<f32>(932f, -719f, -644f, -1125f)), vec4<f32>(460f, _wgslsmith_f_op_f32(-197f + var_2.b.c.d), _wgslsmith_f_op_f32(796f * var_2.b.c.d), _wgslsmith_f_op_f32(-var_2.a.c.x))))).c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(var_2.b.c.d - var_2.b.c.d), -514f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_2(vec4<f32>(var_2.b.a.c.x, var_2.a.c.x, var_2.a.d, -1805f)).c.d)))), _wgslsmith_mod_u32(reverseBits(~(~20580u)), ~(~1u)), vec2<i32>(u_input.b.x, var_1), firstLeadingBit(select(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(global0.zy, vec2<u32>(global0.x, 11205u)), global0.yy >> (vec2<u32>(u_input.a.x, 28621u) % vec2<u32>(32u))), u_input.c.zz, !select(vec2<bool>(false, false), vec2<bool>(var_2.a.e, false), var_3))), u_input.c.x);
}

