struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 11> = array<u32, 11>(36434u, 1u, 1u, 37149u, 1u, 17240u, 4960u, 5230u, 27568u, 0u, 17455u);

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<u32, 13>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = arg_0.b.x;
    let var_1 = vec4<u32>(~4218u, ~(~global1[_wgslsmith_index_u32(0u, 11u)]), u_input.a, firstTrailingBit(39555u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.x)));
    var var_3 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(25634u, 17006u), vec2<u32>(0u, 0u)) >> (abs(11698u) % 32u), ~firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x, 4294967295u))), ~0u, ~27688u);
    global1 = array<u32, 11>();
    return arg_0.a;
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    return -u_input.e;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    global3 = array<u32, 13>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(ceil(1262f)))), arg_2)));
    global0 = _wgslsmith_f_op_f32(-var_0);
    let var_1 = global2[_wgslsmith_index_u32(~22106u, 28u)];
    let var_2 = 47056u;
    return Struct_2(abs(~u_input.b), !vec2<bool>(firstLeadingBit(u_input.e) <= (u_input.b.x << (4294967295u % 32u)), func_2(Struct_1(false, vec4<f32>(-1027f, var_0, var_1.b.x, -153f), var_1.c))), vec3<i32>(_wgslsmith_mult_i32(max(var_1.c.x, ~2147483647i), abs(u_input.b.x | 57553i)), abs(1i), func_3(2147483647i, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u), arg_1) << ((vec4<u32>(3038u, 30817u, u_input.c.x, 25400u) | vec4<u32>(arg_1.x, arg_0, arg_1.x, 0u)) % vec4<u32>(32u)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(arg_2.a, select(vec2<bool>(arg_0 & arg_1.b.x, arg_0), select(func_1(~0u, vec4<u32>(4294967295u, 380u, global1[_wgslsmith_index_u32(u_input.a, 11u)], global3[_wgslsmith_index_u32(u_input.a, 13u)]), _wgslsmith_f_op_f32(f32(-1f) * -211f)).b, vec2<bool>(true, true), !select(arg_1.b, vec2<bool>(arg_0, false), true)), !select(arg_2.b, !vec2<bool>(arg_2.b.x, false), arg_2.b.x)), vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(u_input.e) ^ arg_1.a.x, arg_2.c.x), arg_1.c.x & min(abs(-24115i), abs(u_input.b.x)), ~1i));
    let var_1 = func_1(global3[_wgslsmith_index_u32(23660u, 13u)], vec4<u32>(u_input.a, u_input.c.x, _wgslsmith_div_u32(0u, ~global3[_wgslsmith_index_u32(4294967295u, 13u)]), 63617u) >> (vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(1u, 13u)]), u_input.a), global1[_wgslsmith_index_u32(abs(4294967295u), 11u)], 30175u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f) + _wgslsmith_f_op_f32(floor(1122f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1210f)) - _wgslsmith_f_op_f32(757f + 181f))))));
    var var_2 = Struct_1(var_0.b.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), -2166f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-530f + -711f), 1432f), 543f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2414f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(869f, -916f, -1000f, 450f), vec4<f32>(2451f, -1047f, 1000f, -1190f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-310f, 156f, -411f, 742f)))))), select(abs(vec3<i32>(51813i, 1i, var_0.c.x) << (vec3<u32>(0u, global3[_wgslsmith_index_u32(6371u, 13u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], 13u)]) % vec3<u32>(32u))) | vec3<i32>(max(u_input.e, var_1.a.x), -u_input.d, _wgslsmith_sub_i32(var_0.c.x, -13480i)), max(-reverseBits(vec3<i32>(u_input.d, var_1.a.x, arg_2.a.x)), _wgslsmith_add_vec3_i32(abs(arg_1.c), var_0.a.zwy << (u_input.c.wzz % vec3<u32>(32u)))), vec3<bool>(true, select(func_2(global2[_wgslsmith_index_u32(u_input.c.x, 28u)]), any(vec2<bool>(false, arg_1.b.x)), arg_2.b.x), true)));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))));
    var var_3 = u_input.b.xx;
    return vec3<i32>(var_0.a.x, -3675i, -_wgslsmith_dot_vec3_i32(~(-var_2.c), vec3<i32>(u_input.e, 1i, i32(-1i) * -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 11>();
    var var_0 = u_input.d;
    var var_1 = select(select(vec2<bool>(false, false), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), false)), select(!select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(!all(vec4<bool>(false, true, false, true)), true | any(vec2<bool>(false, true))), any(vec3<bool>(true, true, true))), select(vec2<bool>(u_input.c.x >= 1u, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), select(vec2<bool>(true, true), vec2<bool>(true, true), ~u_input.b.x > 0i), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -828f) == _wgslsmith_f_op_f32(round(-415f)), true)));
    var var_2 = u_input.b.zxz;
    var var_3 = global2[_wgslsmith_index_u32(~0u, 28u)];
    var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-97560i, ~var_3.c.x, _wgslsmith_dot_vec4_i32(u_input.b | vec4<i32>(u_input.d, var_3.c.x, 1i, var_2.x), vec4<i32>(var_3.c.x, u_input.b.x, i32(-1i) * -1i, var_2.x | 2147483647i))), vec3<i32>(min(6420i, -1i), 1i, 27114i), ~(-func_4(false, func_1(0u, u_input.c, var_3.b.x), func_1(36267u, vec4<u32>(u_input.a, 0u, 26580u, u_input.a), -1089f))));
    var var_4 = func_1(~14086u, _wgslsmith_add_vec4_u32(~(vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(68734u, 13u)], 13u)], 60448u, u_input.c.x) & _wgslsmith_mult_vec4_u32(u_input.c, u_input.c)), u_input.c), 1537f).b;
    let var_5 = ~(~global1[_wgslsmith_index_u32(abs(~(~global3[_wgslsmith_index_u32(4294967295u, 13u)])), 11u)]);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(231u, ~var_5), ~_wgslsmith_mod_u32(4294967295u, 5322u)) ^ (~max(1u, 54618u) << (~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 11u)], 13u)], var_5, u_input.a, 5048u)) % 32u)), 11u)]);
}

