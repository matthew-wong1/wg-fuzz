struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec2<f32>, 5>;

var<private> global2: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-737f, 252f), vec2<f32>(-640f, -141f), vec2<f32>(1000f, -1750f), vec2<f32>(2835f, -1392f), vec2<f32>(943f, 482f), vec2<f32>(2177f, 1169f), vec2<f32>(-936f, -1278f), vec2<f32>(-822f, -1000f), vec2<f32>(1186f, 1877f), vec2<f32>(-1097f, -852f), vec2<f32>(-174f, 597f), vec2<f32>(1422f, -566f), vec2<f32>(173f, -145f), vec2<f32>(239f, -788f), vec2<f32>(-715f, 1000f), vec2<f32>(476f, -373f), vec2<f32>(483f, 2014f), vec2<f32>(718f, 523f), vec2<f32>(-994f, -1265f), vec2<f32>(-1335f, 1086f), vec2<f32>(1000f, -1000f), vec2<f32>(-885f, -516f), vec2<f32>(1000f, 2070f), vec2<f32>(-649f, 1365f), vec2<f32>(941f, 450f), vec2<f32>(-619f, 490f), vec2<f32>(-1473f, -114f), vec2<f32>(-1490f, 1528f), vec2<f32>(-564f, -932f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = ~(-reverseBits(1i));
    global1 = array<vec2<f32>, 5>();
    var var_1 = any(vec2<bool>(true, _wgslsmith_f_op_f32(-849f + arg_2.x) != -383f));
    var_0 = -(~firstTrailingBit(28058i));
    var var_2 = Struct_3(select(!vec2<bool>(true == global0.x, true), select(arg_1.a.a, vec2<bool>(true, true), true), vec2<bool>(true, false)), arg_1.a, arg_3);
    return select(select(!vec2<bool>(select(global0.x, arg_1.c.a.x, var_2.b.a.x), all(vec3<bool>(true, var_2.c.a.a.x, var_2.c.c.a.x))), select(arg_3.c.a, select(!vec2<bool>(arg_1.c.a.x, false), !vec2<bool>(true, var_2.b.a.x), var_2.b.a), true), select(!(!arg_3.a.a), select(!var_2.b.a, vec2<bool>(true, var_2.b.a.x), arg_3.c.a), true)), arg_3.c.a, false);
}

fn func_2(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = Struct_1(func_3(all(!(!vec3<bool>(global0.x, true, false))), Struct_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<i32>(0i, u_input.e) & vec2<i32>(54818i, u_input.e), ~96522u, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1129f, -1097f, 1849f))), ~0u), -(~vec4<i32>(2147483647i, u_input.a, 29951i, -1i)), Struct_1(vec2<bool>(true, global0.x), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(13198i, -64248i), vec2<bool>(false, global0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 0u, u_input.b.x), vec3<u32>(18579u, 52158u, 32131u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-633f, -2821f, -1004f) - vec3<f32>(-339f, -841f, 1655f)), _wgslsmith_dot_vec3_u32(u_input.b.yxz, vec3<u32>(4294967295u, 4294967295u, 30884u)))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(121238u, _wgslsmith_dot_vec4_u32(u_input.b & u_input.b, vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), 5u)], Struct_2(Struct_1(vec2<bool>(global0.x, true), vec2<i32>(-2147483647i, u_input.e) << (vec2<u32>(74313u, u_input.c) % vec2<u32>(32u)), firstLeadingBit(arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-706f, 640f, 1000f)), 1u), -(~vec4<i32>(-42086i, u_input.e, u_input.a, u_input.a)), Struct_1(vec2<bool>(global0.x, false), -vec2<i32>(1i, u_input.e), arg_0.x, vec3<f32>(-287f, -354f, 182f), u_input.b.x))), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, u_input.a), select(-vec2<i32>(-42194i, u_input.a), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, 21683i), select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(3167i, -7879i), vec2<bool>(global0.x, global0.x))), true)), _wgslsmith_sub_u32(arg_0.x, 0u), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -133f)))), _wgslsmith_f_op_f32(f32(-1f) * -2267f)), ~u_input.b.x);
    var_0 = Struct_1(!var_0.a, vec2<i32>(~(~0i ^ ~var_0.b.x), -(~_wgslsmith_sub_i32(var_0.b.x, var_0.b.x))), ~(~firstTrailingBit(firstLeadingBit(arg_0.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.d))))), var_0.c);
    var var_1 = ~abs(vec3<u32>(~var_0.c, arg_0.x, u_input.c));
    var var_2 = -(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.b.x, u_input.e), u_input.e) >> (abs(27514u) % 32u)) & _wgslsmith_mod_i32(2147483647i, countOneBits(abs(-1i)));
    let var_3 = vec3<bool>(any(vec2<bool>(false, true)), var_0.a.x, !(!(!(!var_0.a.x))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.d + var_0.d))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d.x, var_0.d.x, -1036f), var_0.d)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1666f, 350f, var_0.d.x) - var_0.d))))), vec3<f32>(-2541f, -179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1117f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-110f, 413f, true))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = arg_2.x;
    var var_1 = ~(~u_input.e);
    var var_2 = Struct_2(Struct_1(select(arg_2.yy, vec2<bool>(true, true), select(arg_2.zy, arg_2.zy, var_0 & global0.x)), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, -1i, u_input.a), select(-2147483647i, 59281i, true), 1i), (18587i ^ u_input.a) >> (countOneBits(u_input.d.x) % 32u)), 2511u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(min(arg_0.x, arg_1.x)), _wgslsmith_f_op_f32(arg_0.x + 186f)) - _wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(1u, u_input.b.x, 0u)))), u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(-1i), u_input.e & _wgslsmith_clamp_i32(1i, 44884i, -102021i), -min(u_input.a, u_input.a), _wgslsmith_div_i32(-1i >> (u_input.b.x % 32u), u_input.a)), vec4<i32>(firstTrailingBit(abs(u_input.a)), _wgslsmith_sub_i32(u_input.e, u_input.e), u_input.e, ~u_input.e)), Struct_1(!vec2<bool>(true || var_0, all(vec4<bool>(var_0, var_0, global0.x, global0.x))), vec2<i32>(~u_input.e, u_input.a), 18055u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-756f, 972f, -1575f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-845f, 799f, -417f) - vec3<f32>(arg_0.x, -1000f, arg_0.x))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, -466f, 2200f)))), u_input.d.x));
    var var_3 = -var_2.b.x;
    global1 = array<vec2<f32>, 5>();
    return Struct_2(Struct_1(arg_2.zz, var_2.c.b, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, ~1u), ~(~4418u)), var_2.c.d, ~max(firstTrailingBit(var_2.a.c), var_2.c.e)), min(var_2.b, min(abs(var_2.b), var_2.b | var_2.b) | abs(var_2.b)), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2[_wgslsmith_index_u32(~(abs(~1u) | _wgslsmith_mod_u32(u_input.b.x, abs(u_input.d.x))), 29u)], global2[_wgslsmith_index_u32(~36104u, 29u)], vec3<bool>(global0.x, global0.x, false));
    var var_1 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.c.d.x)), var_0.c.d.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(var_0.c.e, 5u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-751f, -990f) + vec2<f32>(-431f, var_0.a.d.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(319f, -503f), global1[_wgslsmith_index_u32(~u_input.b.x, 5u)]))), select(select(vec3<bool>(true, true, global0.x), !vec3<bool>(global0.x, false, global0.x), true), select(!vec3<bool>(var_0.c.a.x, false, false), vec3<bool>(global0.x, var_0.c.a.x, true), global0.x), true)).a, -_wgslsmith_mod_vec4_i32(min(_wgslsmith_mult_vec4_i32(var_0.b, var_0.b), var_0.b | vec4<i32>(u_input.a, -2147483647i, 2147483647i, -1i)), vec4<i32>(firstLeadingBit(59382i), ~21221i, ~25325i, i32(-1i) * -9470i)), var_0.a);
    let var_2 = Struct_3(!var_0.c.a, var_0.a, Struct_2(func_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(735f)), _wgslsmith_f_op_f32(max(var_1.c.d.x, var_1.a.d.x))), global1[_wgslsmith_index_u32(var_0.a.e, 5u)], !select(vec3<bool>(false, var_0.c.a.x, global0.x), vec3<bool>(true, var_0.a.a.x, true), vec3<bool>(true, true, true))).c, var_0.b >> (~_wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(1u, 1u, 25120u, var_0.c.e)) % vec4<u32>(32u)), func_1(var_0.c.d.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.c.d.xx))), !vec3<bool>(false, false, var_1.a.a.x)).a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d.x, -509f, -909f, var_0.a.d.x)))))), vec4<f32>(_wgslsmith_f_op_f32(var_1.a.d.x * _wgslsmith_f_op_f32(max(var_0.c.d.x, -1309f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d.x - 1483f)), var_2.c.c.d.x))));
}

