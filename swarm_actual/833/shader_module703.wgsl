struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global1: i32;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(false, 56594u, 1369f, 13965u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<i32> {
    var var_0 = Struct_2(vec2<bool>(!any(!global0[_wgslsmith_index_u32(64484u, 12u)]), false), !any(vec2<bool>(true, -685f == arg_0)));
    global0 = array<vec3<bool>, 12>();
    return vec4<i32>(u_input.a.x, u_input.e.x, _wgslsmith_mult_i32(-15976i, _wgslsmith_dot_vec2_i32(~(-u_input.e), u_input.b)), ~(~(-_wgslsmith_mult_i32(u_input.b.x, u_input.e.x))));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: f32) -> vec4<bool> {
    var var_0 = ~u_input.c.x;
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~(arg_0 ^ vec4<i32>(arg_0.x, 0i, u_input.e.x, u_input.e.x)), ~firstTrailingBit(vec4<i32>(-31070i, arg_0.x, 55496i, arg_0.x))), ~arg_0), select(abs(func_3(arg_2, ~u_input.c.x)), ~select(max(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, u_input.a.x), vec4<i32>(2147483647i, arg_0.x, -748i, arg_0.x)), abs(arg_0), !vec4<bool>(arg_1, arg_1, true, true)), vec4<bool>(arg_1, !all(vec4<bool>(true, false, arg_1, arg_1)), !arg_1, false)));
    global1 = 2147483647i;
    var var_2 = ~(abs(2147483647i) ^ (i32(-1i) * -(-2147483647i << (u_input.d % 32u))));
    let var_3 = Struct_2(vec2<bool>(arg_1, all(vec3<bool>(!arg_1, true, true))), !arg_1);
    return !(!(!vec4<bool>(all(vec4<bool>(var_3.a.x, var_3.b, true, true)), true, var_3.a.x, !var_3.a.x)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> f32 {
    global1 = _wgslsmith_div_i32(-8373i, ~(-2147483647i));
    let var_0 = Struct_2(!(!arg_2.a), 11089i >= _wgslsmith_dot_vec3_i32(u_input.a, u_input.a));
    var var_1 = !vec4<bool>(false, select(!(!arg_2.a.x), arg_2.b, true | any(vec4<bool>(false, false, var_0.a.x, arg_1))), any(func_2(firstLeadingBit(vec4<i32>(u_input.e.x, u_input.e.x, u_input.a.x, u_input.a.x)), arg_1, _wgslsmith_f_op_f32(259f * 202f))), !arg_1);
    var var_2 = Struct_1(all(func_2(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-38410i, u_input.e.x, u_input.b.x, 2147483647i)), vec4<i32>(u_input.a.x, 21565i, -45570i, -2147483647i)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(946f, 1268f)))).xw), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(835f - -221f))), 298f)), 1f), min(1u, select(14898u, ~66163u, true)));
    let var_3 = global2[_wgslsmith_index_u32(~(~max(7827u, ~u_input.d) & ~select(4294967295u, _wgslsmith_mod_u32(var_2.d, var_2.d), !var_0.b)), 1u)];
    return var_3.c;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1298f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-541f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(110f, -1528f)))), vec3<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 + arg_1)), -1000f, 562f), true & (14771u < u_input.d))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(534f, arg_3, -1107f) + vec3<f32>(arg_1, arg_3, arg_3)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_1, -335f) * vec3<f32>(arg_3, arg_1, arg_1))))))));
    let var_1 = Struct_1(true, firstLeadingBit(0u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(604f, _wgslsmith_f_op_f32(max(var_0.x, 740f))))))), ~min(arg_2 >> (1u % 32u), 25852u));
    var var_2 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(func_1(~20451u, var_1.a, Struct_2(vec2<bool>(arg_0, false), arg_0))), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_3)), arg_1))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_1, -466f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, arg_3, arg_1), vec3<f32>(var_0.x, var_1.c, -733f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, arg_3, var_1.c)))), vec3<f32>(_wgslsmith_div_f32(var_1.c, var_0.x), _wgslsmith_f_op_f32(var_0.x - -1002f), 564f)))));
    var var_3 = vec2<i32>(2147483647i, 2147483647i);
    return Struct_2(vec2<bool>(false, all(vec4<bool>(u_input.a.x > 17957i, var_1.a, true, true))), var_1.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<bool>) -> u32 {
    global1 = ~_wgslsmith_dot_vec2_i32(u_input.e, func_3(_wgslsmith_f_op_f32(func_1(~0u, false, arg_0)), min(1u, ~u_input.d)).xy);
    return 92912u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, func_5(func_4(false, 677f, _wgslsmith_mult_u32(u_input.c.x, u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c.x, false, Struct_2(vec2<bool>(false, false), true))))), ~vec4<u32>(1u, firstTrailingBit(u_input.c.x), _wgslsmith_mult_u32(1u, u_input.c.x), u_input.c.x), func_2(-abs(vec4<i32>(u_input.a.x, 8514i, u_input.a.x, u_input.a.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f * 875f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1692f * 382f), _wgslsmith_f_op_f32(func_1(u_input.c.x, true, Struct_2(vec2<bool>(false, true), true)))), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1372f, 203f)) * -340f) - _wgslsmith_f_op_f32(f32(-1f) * -812f))), abs(12408u));
    let var_1 = global2[_wgslsmith_index_u32(1u, 1u)];
    var var_2 = func_4(true, var_1.c, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + var_0.c) - 1327f))) * _wgslsmith_f_op_f32(func_1(var_1.d, !func_4(false, -1905f, var_1.b, var_0.c).b, func_4(func_4(var_1.a, -127f, u_input.d, 2256f).a.x, var_0.c, var_1.b, var_1.c)))));
    var_0 = global2[_wgslsmith_index_u32(~var_1.b, 1u)];
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.c.x, 4294967295u, 1u)), abs(_wgslsmith_div_vec3_u32(u_input.c.xzw, u_input.c.yxw))), vec3<u32>(reverseBits(0u), ~1u, _wgslsmith_div_u32(abs(65954u), 11545u))), u_input.c.x), 1u)];
    let var_3 = _wgslsmith_sub_u32(0u, u_input.c.x);
    let var_4 = u_input.c.zxw;
    global1 = max(-1i, min(-15970i, -firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, u_input.a.x))));
    let var_5 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(select(max(var_4.zy, vec2<u32>(0u, 1u)), u_input.c.xz, true), select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.d, var_3), u_input.c.xz), ~var_4.xz, true)) ^ select(firstLeadingBit(u_input.c.zz), countOneBits(vec2<u32>(97718u, var_1.d)) ^ _wgslsmith_add_vec2_u32(u_input.c.zz, var_4.xz), true | var_0.a), vec2<u32>(4294967295u, reverseBits(101883u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(_wgslsmith_f_op_f32(-var_0.c), u_input.c.x).x, var_1.c, -194f, 1i);
}

