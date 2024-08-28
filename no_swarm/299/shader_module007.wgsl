struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<i32, 25>;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 33002u, 1u), vec4<u32>(56428u, 1u, 0u, 57163u)));

var<private> global3: i32 = i32(-2147483648);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -(~u_input.e.xxy), vec3<i32>(_wgslsmith_div_i32(-arg_0, -2147483647i), _wgslsmith_mod_i32(arg_0, ~(-2147483647i)), -2147483647i), vec3<i32>(_wgslsmith_add_i32(countOneBits(-2147483647i), _wgslsmith_mod_i32(arg_0, u_input.b)), firstLeadingBit(global1[_wgslsmith_index_u32(0u, 25u)]), min(1i, arg_0))) & (u_input.e.yzw << (vec3<u32>(u_input.d, 1u, ~arg_1.b.x) % vec3<u32>(32u)));
    let var_1 = vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(486f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))), true))), 305f, _wgslsmith_f_op_f32(abs(-339f)));
    let var_2 = !select(vec4<bool>(true || all(vec2<bool>(false, true)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true)), !all(vec4<bool>(false, true, true, true)), 697f > _wgslsmith_f_op_f32(-var_1.x)), vec4<bool>(true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), false), vec4<bool>(select(true, 4088u >= u_input.d, false), true, u_input.d == (arg_1.a.x ^ 4294967295u), !(u_input.c != 1i)));
    global3 = 2147483647i >> (firstLeadingBit(u_input.d << (~u_input.a.x % 32u)) % 32u);
    global2 = array<Struct_1, 2>();
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.b.zw, arg_1.b.wz) & vec2<u32>(arg_1.a.x, u_input.a.x), ~(~arg_1.a.xz)), vec2<u32>(_wgslsmith_mult_u32(~arg_1.b.x ^ 1u, u_input.a.x), 1u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_0.b, vec4<u32>(4294967295u, countOneBits(arg_1.b.x), ~reverseBits(reverseBits(20673u)), ~(~1u << (func_3(0i, Struct_1(vec4<u32>(arg_0.b.x, 26590u, 5703u, u_input.d), vec4<u32>(arg_1.b.x, 4294967295u, 0u, arg_1.a.x)), 692f) % 32u))));
    global3 = i32(-1i) * -1i;
    var var_1 = select(vec3<bool>(false, all(vec3<bool>(true, true, true)), !(!(var_0.a.x == arg_0.a.x))), select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec2<bool>(false, true)), !any(vec2<bool>(false, false))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, select(false, true, true), any(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))), all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-404f - _wgslsmith_f_op_f32(f32(-1f) * -678f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(216f, -277f))), 720f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-807f - -1364f), -380f, true))))), vec4<f32>(_wgslsmith_f_op_f32(floor(482f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-410f * 1898f)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1046f))))), -2052f)));
    var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1507f, var_2.x)))) - _wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x))), -772f, var_2.x)));
    return Struct_1(arg_1.b, vec4<u32>(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, u_input.d), u_input.a.yy), ~vec2<u32>(44264u, 69494u)), arg_1.a.x), ~(arg_0.a.x ^ 1u) ^ min(abs(arg_0.a.x), var_0.b.x & 4294967295u), 103932u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = vec3<bool>((func_2(func_2(Struct_1(vec4<u32>(arg_2.x, arg_0.b.x, 4294967295u, 4294967295u), vec4<u32>(arg_0.b.x, arg_2.x, u_input.d, arg_2.x)), global2[_wgslsmith_index_u32(19287u, 2u)]), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 2u)]).b.x << (firstLeadingBit(func_2(Struct_1(vec4<u32>(arg_0.b.x, 76558u, arg_2.x, arg_0.a.x), arg_0.a), Struct_1(arg_2, arg_0.b)).a.x) % 32u)) > reverseBits(_wgslsmith_mod_u32(abs(arg_0.a.x), ~0u)), _wgslsmith_div_i32(~abs(0i), global1[_wgslsmith_index_u32(~arg_2.x, 25u)] << (u_input.d % 32u)) > global1[_wgslsmith_index_u32(max(arg_2.x, 59249u) | arg_2.x, 25u)], false);
    var var_1 = arg_0;
    var var_2 = -1180f;
    let var_3 = Struct_1(vec4<u32>(u_input.d, firstTrailingBit(33432u), var_1.a.x, arg_0.a.x), _wgslsmith_mod_vec4_u32(arg_0.b, _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(arg_0.b, var_1.a), ~var_1.a)));
    var_1 = global2[_wgslsmith_index_u32(arg_0.a.x, 2u)];
    return var_3;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = func_4(func_2(Struct_1(var_0.a | vec4<u32>(1785u, 1u, 3084u, 24025u), vec4<u32>(u_input.d ^ var_0.a.x, firstTrailingBit(var_0.a.x), var_0.a.x | var_0.b.x, 30761u)), Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 6434u, 1u, 1u), vec4<u32>(u_input.d, 0u, var_0.b.x, var_0.a.x)), max(arg_1.b, var_0.b) | arg_1.a)), !(!vec3<bool>(true, u_input.d == u_input.a.x, true)), vec4<u32>(var_0.a.x, 81029u, ~0u, abs(65912u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, 1817f, arg_0, -179f)))))) + vec4<f32>(_wgslsmith_f_op_f32(arg_0 + arg_0), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(331f)))), -338f));
    global3 = 12132i;
    var var_3 = _wgslsmith_f_op_f32(-1216f - -1365f);
    return func_4(func_4(Struct_1(firstLeadingBit(var_1.b & vec4<u32>(1u, u_input.a.x, 4294967295u, var_1.b.x)), var_1.b), vec3<bool>(true, true, true), arg_1.a), select(vec3<bool>(true, any(vec2<bool>(true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, 23356i > -global1[_wgslsmith_index_u32(var_0.a.x, 25u)], false)), vec4<u32>(abs(firstTrailingBit(4294967295u) >> (var_1.a.x % 32u)), 4294967295u, 30630u, countOneBits(12882u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1180f, Struct_1(vec4<u32>(4294967295u, ~_wgslsmith_clamp_u32(u_input.d, u_input.d, 37615u), u_input.a.x, _wgslsmith_mult_u32(18232u, reverseBits(u_input.a.x))), vec4<u32>(u_input.d, 25963u, _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(u_input.d, u_input.d)), 1u)));
    let var_1 = u_input.e.ww;
    global1 = array<i32, 25>();
    var var_2 = vec3<i32>(countOneBits(-15310i), -(global1[_wgslsmith_index_u32(~var_0.a.x, 25u)] ^ abs(45239i)), ~(-11046i));
    let var_3 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.a.zwz, min(vec3<u32>(13170u, 42414u, u_input.d), vec3<u32>(var_0.b.x, var_0.b.x, 0u))), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(32990u, var_0.b.x, var_0.b.x)), vec3<u32>(var_0.b.x, 5569u, 15206u))), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.b.x, 4294967295u), 4142u), func_2(func_2(var_0, Struct_1(var_0.a, var_0.b)), var_0).a.x ^ min(0u, _wgslsmith_mod_u32(45219u, u_input.a.x)), countOneBits(0u)), vec4<u32>(0u, firstLeadingBit(select(var_0.a.x, u_input.d & 1u, true)), 26807u, _wgslsmith_div_u32(~u_input.a.x & 1u, u_input.a.x)));
    global2 = array<Struct_1, 2>();
    let var_4 = var_3;
    let var_5 = global2[_wgslsmith_index_u32(~var_3.a.x, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(496f, 120f), _wgslsmith_div_f32(1000f, -1097f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -2208f)) * vec4<f32>(_wgslsmith_f_op_f32(step(-854f, -296f)), _wgslsmith_f_op_f32(min(-109f, -1135f)), -474f, -2063f))), func_1(-712f, func_2(Struct_1(abs(vec4<u32>(var_3.a.x, 4294967295u, 4294967295u, var_4.b.x)), ~var_5.a), func_1(_wgslsmith_f_op_f32(-1000f + -852f), var_3))).b.wx, _wgslsmith_add_i32(_wgslsmith_clamp_i32(19316i, global1[_wgslsmith_index_u32(18255u, 25u)], -1i) | select(41557i, -2147483647i, true), _wgslsmith_mult_i32(u_input.c | u_input.e.x, 2147483647i)) ^ max(1i & var_1.x, var_1.x));
}

