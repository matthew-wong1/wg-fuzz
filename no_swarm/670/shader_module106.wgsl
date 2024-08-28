struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(19386i, -1i), vec2<i32>(19879i, 38240i), vec2<i32>(-9540i, 0i), vec2<i32>(-1i, 36797i), vec2<i32>(27580i, 1i), vec2<i32>(38440i, 1i), vec2<i32>(45644i, 0i), vec2<i32>(38496i, -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, 18780i), vec2<i32>(-11373i, 12635i), vec2<i32>(62592i, 50048i), vec2<i32>(1i, 1i), vec2<i32>(13615i, 1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, -7235i), vec2<i32>(41091i, 0i), vec2<i32>(-21974i, 0i), vec2<i32>(28807i, 2147483647i), vec2<i32>(18289i, 1i), vec2<i32>(-59410i, 60998i), vec2<i32>(2147483647i, 17942i), vec2<i32>(-1i, 18085i), vec2<i32>(-22987i, 36173i), vec2<i32>(22958i, -1i));

var<private> global1: u32;

var<private> global2: Struct_5;

var<private> global3: array<vec2<u32>, 18>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    global3 = array<vec2<u32>, 18>();
    global3 = array<vec2<u32>, 18>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-830f * global2.b), -(~global2.a));
    global3 = array<vec2<u32>, 18>();
    var var_1 = !(!select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true), arg_0 >= arg_0), vec4<bool>(false, true, true, true), 1i < u_input.c));
    return vec4<u32>(0u, 73031u ^ ~(1u | u_input.a), u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 24980u), reverseBits(~u_input.d)) | max(~29804u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 1u), firstTrailingBit(u_input.a))));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_3(func_3(_wgslsmith_div_f32(global2.b, _wgslsmith_div_f32(-931f, _wgslsmith_f_op_f32(exp2(global2.b))))), any(vec3<bool>(true, true, true)) | (false && select(true, true, true)), u_input.b, Struct_1(global2.b, _wgslsmith_sub_i32(firstLeadingBit(abs(global2.a)), -2147483647i)), _wgslsmith_add_u32(abs(u_input.a), u_input.a) ^ u_input.a);
    let var_1 = var_0.d;
    global3 = array<vec2<u32>, 18>();
    var var_2 = -_wgslsmith_sub_vec4_i32(~((vec4<i32>(1i, 0i, var_1.b, var_1.b) & vec4<i32>(423i, var_1.b, var_1.b, -1i)) ^ vec4<i32>(u_input.c, 1i, global2.a, 4317i)), firstTrailingBit(-vec4<i32>(9282i, var_1.b, var_1.b, 47627i) ^ countOneBits(vec4<i32>(-2147483647i, global2.a, global2.a, -21447i))));
    var_2 = _wgslsmith_add_vec4_i32(select(-_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 0i, -48671i, var_0.c.x), vec4<i32>(u_input.c, global2.a, var_0.d.b, var_2.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, global2.a, global2.a, u_input.b.x) << (vec4<u32>(u_input.a, var_0.a.x, u_input.a, 0u) % vec4<u32>(32u)), reverseBits(vec4<i32>(var_0.c.x, 2147483647i, 1i, 50103i))), all(vec4<bool>(var_0.b, true, false, var_0.b))) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-30353i, var_0.c.x)), global0[_wgslsmith_index_u32(var_0.a.x, 26u)]), _wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, -31350i), ~global2.a), ~42162i, 0i), max(vec4<i32>(_wgslsmith_add_i32(var_2.x | var_2.x, var_1.b), -2147483647i, 14304i, var_2.x), abs(vec4<i32>(var_2.x, var_1.b, max(var_1.b, var_0.c.x), reverseBits(0i)))));
    return vec3<bool>(select(select(_wgslsmith_div_f32(-328f, var_1.a) > -237f, 0u == _wgslsmith_sub_u32(4294967295u, u_input.d.x), !var_0.b), var_0.b, var_0.b), var_0.b, var_0.b);
}

fn func_1() -> bool {
    global0 = array<vec2<i32>, 26>();
    var var_0 = any(!vec2<bool>(u_input.c > -38114i, true));
    var var_1 = u_input.c;
    var var_2 = func_2();
    var var_3 = u_input.c;
    return -47989i == u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(11393u > u_input.a, true, true, func_1()), all(vec3<bool>(true, true, true))), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), u_input.a > u_input.d.x), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), -11204i >= global2.a)), vec4<bool>(select(countOneBits(4294967295u), u_input.d.x, true) < firstLeadingBit(_wgslsmith_mod_u32(u_input.d.x, u_input.a)), func_2().x, false, !all(vec4<bool>(true, true, true, true))), vec4<bool>(any(func_2().xy), true, all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false))), all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)))));
    var var_1 = Struct_3(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~0u, 4294967295u << (u_input.d.x % 32u), _wgslsmith_add_u32(1u, 1u), min(28047u, 18690u)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1069f))), vec4<u32>(u_input.d.x, ~countOneBits(0u), 1u, firstLeadingBit(~24126u))), false, u_input.b, Struct_1(_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(705f)) * _wgslsmith_f_op_f32(max(-1188f, global2.b)))), -_wgslsmith_clamp_i32(-1i, -29657i, ~0i)), _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(44388u, u_input.d.x))), 5152u));
    let var_2 = vec4<bool>(var_1.b, 12658u < firstTrailingBit(~countOneBits(u_input.d.x)), true, !((_wgslsmith_mult_i32(u_input.c, 10260i) <= min(-2347i, -1040i)) || var_0.x));
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(var_1.e, 26u)], 18130u, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a & 68374u, ~reverseBits(24146u), var_1.a.x ^ _wgslsmith_mod_u32(4294967295u, 15679u)), ~abs(vec3<u32>(var_1.e, 23569u, 37221u))));
    var var_4 = _wgslsmith_div_vec4_u32(~var_1.a, vec4<u32>(~reverseBits(~var_1.e), 66519u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_1.e, var_1.e, 58704u, 10263u)), var_1.a), ~_wgslsmith_div_u32(~u_input.d.x, ~u_input.a)));
    var var_5 = ~select(~4294967295u, _wgslsmith_dot_vec4_u32(var_1.a, _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(52447u, var_4.x, 4294967295u, var_4.x)), vec4<u32>(var_4.x, 2244u, 15763u, var_3.b) | vec4<u32>(20470u, u_input.a, 0u, 101334u))), true);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~_wgslsmith_mult_i32(1i, -u_input.c)), global2.a >> (var_1.e % 32u), vec3<i32>(var_1.d.b, 1i, u_input.c), var_1.a.x << (u_input.a % 32u));
}

