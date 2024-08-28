struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_3(~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(6028u, 30267u, u_input.d, u_input.a)), vec4<u32>(u_input.a, u_input.a, u_input.d, 46337u)), vec4<u32>(u_input.d << (u_input.e % 32u), ~u_input.d, u_input.e, abs(4384u)), (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.d) >> (vec4<u32>(3459u, u_input.e, u_input.a, 4294967295u) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, u_input.d, 1u, 57644u), vec4<u32>(u_input.e, 15851u, 0u, u_input.a))));
    var_0 = Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(~var_0.a.x, _wgslsmith_mult_u32(0u, firstTrailingBit(4294967295u)), ~(~0u), ~(~46765u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, var_0.a.x), var_0.a, ~var_0.a), vec4<u32>(_wgslsmith_sub_u32(1u, u_input.e), var_0.a.x, ~u_input.a, ~33272u))));
    return ~var_0.a.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<i32>) -> vec3<i32> {
    let var_0 = ~vec4<u32>(u_input.d, func_3(vec2<i32>(i32(-1i) * -32237i, u_input.b << (u_input.a % 32u)), arg_2), u_input.d, firstLeadingBit(u_input.d));
    return _wgslsmith_mult_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-30408i, 0i, -2147483647i)), ~vec3<i32>(u_input.c, 0i, 0i)), -2147483647i, abs(u_input.c)), _wgslsmith_mult_vec3_i32(~vec3<i32>(~(-2147483647i), ~u_input.b, _wgslsmith_clamp_i32(8134i, arg_3.x, arg_3.x)), _wgslsmith_add_vec3_i32(-abs(vec3<i32>(u_input.c, arg_3.x, u_input.c)), firstLeadingBit(min(vec3<i32>(arg_3.x, 19377i, -65145i), vec3<i32>(arg_3.x, 17070i, -30010i))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_0.a;
    let var_1 = ~vec4<i32>(~_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c, u_input.c, u_input.b), vec3<i32>(13375i, 30455i, u_input.b), false), func_2(arg_2.a.x, Struct_3(vec4<u32>(1u, var_0.x, u_input.a, 0u)), Struct_2(arg_2.a), vec2<i32>(u_input.c, 0i))), -28125i, ~(~(~u_input.b)), select(u_input.b >> ((u_input.d & 44746u) % 32u), u_input.b, true));
    var var_2 = 264f;
    var var_3 = ~_wgslsmith_div_vec3_u32(firstLeadingBit(~(~arg_0.a.zzw)), arg_0.a.yyy);
    var_0 = firstLeadingBit(~vec4<u32>(max(0u, min(55219u, 57315u)), max(abs(108544u), u_input.d), u_input.d, 0u));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 325f) + arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-505f, 800f)) + arg_0))));
    return Struct_1(countOneBits(select(select(reverseBits(arg_3.a), vec4<u32>(arg_3.a.x, 61149u, arg_3.a.x, arg_3.a.x) ^ arg_3.a, true && arg_2.x), _wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.e, 1u, 13968u, 38175u), arg_3.a, vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x)), ~vec4<u32>(u_input.a, 48594u, 4294967295u, 4294967295u)), true)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_3.a.x, ~0u), ~abs(u_input.d)), 1u << (_wgslsmith_dot_vec3_u32(abs(arg_3.a.zzy), reverseBits(vec3<u32>(4294967295u, 19484u, 6568u))) % 32u), _wgslsmith_mult_u32(9314u, 1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(773f, var_0.a.x, 307f), vec3<f32>(-792f, var_0.a.x, arg_0))), vec3<f32>(_wgslsmith_f_op_f32(select(1428f, arg_0, arg_2.x)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(319f))))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-258f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    let var_0 = select(vec2<bool>(u_input.c > _wgslsmith_add_i32(~u_input.b, u_input.b), any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true)))), !vec2<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true)), false), u_input.c == _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, u_input.b)), vec2<i32>(u_input.c, u_input.b)), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, 33590i), -vec2<i32>(u_input.b, 10565i))));
    let var_1 = reverseBits(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_2.x, 1u), arg_2)) ^ _wgslsmith_mult_vec3_u32(arg_2, ~_wgslsmith_sub_vec3_u32(arg_0.a.xxz, arg_2)));
    var var_2 = vec2<bool>(all(!vec4<bool>(true, true, true, !var_0.x)), !var_0.x);
    let var_3 = _wgslsmith_dot_vec2_i32(-max(~(-vec2<i32>(8941i, 24013i)), vec2<i32>(firstTrailingBit(14243i), u_input.b)), select(vec2<i32>(-445i, -1i ^ u_input.b), vec2<i32>(u_input.c, 1i), !select(var_0, vec2<bool>(true, var_0.x), var_2.x)) >> (vec2<u32>(_wgslsmith_div_u32(var_1.x, arg_2.x) >> (min(u_input.a, 1u) % 32u), 51558u) % vec2<u32>(32u)));
    var var_4 = -789f;
    return min(u_input.d & arg_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.e, 4294967295u, 70780u), max(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, arg_0.b.x, arg_2.x), vec4<u32>(1u, 70469u, arg_2.x, var_1.x)), ~(vec4<u32>(var_1.x, u_input.e, u_input.e, 1271u) & arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (func_5(func_4(_wgslsmith_f_op_f32(f32(-1f) * -452f), vec2<i32>(u_input.b, -40566i) & vec2<i32>(41417i, -1i), vec2<bool>(true, true), func_1(Struct_3(vec4<u32>(u_input.e, 37377u, u_input.a, 4294967295u)), Struct_2(vec2<f32>(367f, 575f)), Struct_2(vec2<f32>(-316f, -482f)))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, 1565f))), ~abs(vec3<u32>(32435u, 4294967295u, 7703u))) << (~(~u_input.d | func_5(Struct_1(vec4<u32>(30309u, u_input.a, 24026u, u_input.a), vec3<u32>(1u, u_input.e, u_input.e), vec3<f32>(-433f, -675f, 1758f)), Struct_2(vec2<f32>(-2202f, 263f)), vec3<u32>(68799u, u_input.e, u_input.e))) % 32u)) & 1u;
    var var_1 = vec2<f32>(1134f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(595f))))))));
    let var_2 = vec4<bool>(true == any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), u_input.a < u_input.e)), !(_wgslsmith_f_op_f32(ceil(-180f)) >= _wgslsmith_f_op_f32(482f + 796f)) & true, true, false & (u_input.c > u_input.b));
    var var_3 = Struct_3(~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 23517u, 34355u), vec3<u32>(61631u, 1u, u_input.a)), ~vec3<u32>(u_input.d, u_input.a, u_input.a)), u_input.d, 3833u >> (~u_input.a % 32u)));
    let var_4 = -1000f;
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-969f + _wgslsmith_f_op_f32(f32(-1f) * -1517f)), 906f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + 1200f))), 478f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), -813f, var_4, 459f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, var_1.x, var_4) - vec4<f32>(-1423f, var_1.x, var_4, 1258f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1563f, _wgslsmith_f_op_f32(var_1.x - var_4), _wgslsmith_f_op_f32(var_1.x * 1057f)))))));
    let var_6 = var_2;
    var var_7 = ~1u > firstTrailingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.c), vec4<i32>(-6350i, 1i, 52682i, 0i)), max(vec4<i32>(-1i, u_input.c, u_input.b, 0i), -vec4<i32>(1220i, 64205i, -1i, -11380i))), max(~vec4<i32>(1i, u_input.c, u_input.b, -33325i), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, 1i, -2147483647i, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.b), vec4<i32>(2147483647i, 2147483647i, u_input.b, u_input.b))))));
}

