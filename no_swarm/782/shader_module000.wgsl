struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_4(Struct_2(Struct_1(abs(vec3<u32>(0u, u_input.c, 1u)) ^ vec3<u32>(1u, 27068u, u_input.c), ~(~vec4<u32>(19866u, u_input.c, u_input.c, 4294967295u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-986f, 451f, 1493f, 474f) * vec4<f32>(797f, -1000f, 806f, -716f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1149f, 1000f, -1063f, 283f) + vec4<f32>(1601f, -800f, -675f, 435f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(504f, -765f) * vec2<f32>(-195f, 458f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1560f, -1548f), vec2<f32>(-1507f, -781f))))), firstLeadingBit(vec2<u32>(79653u, 65116u) << (max(vec2<u32>(u_input.c, 47745u), vec2<u32>(u_input.c, 1u)) % vec2<u32>(32u))), Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 55484u), vec3<u32>(u_input.c, 21241u, u_input.c)), u_input.c, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u) >> (vec4<u32>(22067u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)), reverseBits(vec4<u32>(0u, u_input.c, 1u, u_input.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-335f, 1782f, -385f, -207f) - vec4<f32>(2297f, 1000f, -2742f, 644f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, -467f, -237f, -163f) + vec4<f32>(1221f, -151f, -178f, 478f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1455f, 565f), vec2<f32>(175f, -444f), vec2<bool>(false, false))))), Struct_1(max(vec3<u32>(1u, u_input.c, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(37661u, 46580u, 52351u))), vec4<u32>(0u, 122148u, 16237u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(3232u, 39804u, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-811f, -1040f, -984f, -797f))) * vec4<f32>(-318f, -1000f, -387f, -190f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1179f)))), true, vec4<u32>(~15111u, _wgslsmith_add_u32(u_input.c, ~1u), 0u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c, u_input.c), ~u_input.c, 4294967295u)) ^ _wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, 14188u), vec4<u32>(u_input.c, u_input.c, 1u, 13914u), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)), vec4<u32>(~u_input.c, 4294967295u, u_input.c, u_input.c), vec4<u32>(u_input.c, max(u_input.c, 22280u), 41963u, u_input.c)), !any(vec3<bool>(true, any(vec3<bool>(true, true, false)), true)));
    var_0 = Struct_4(var_0.a, any(vec3<bool>(!all(vec3<bool>(var_0.d, false, var_0.b)), var_0.a.c.c.x == _wgslsmith_div_f32(var_0.a.d.c.x, 408f), !all(vec3<bool>(var_0.b, false, true)))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a.b.x, var_0.a.b.x, var_0.a.c.a.x), vec3<u32>(0u, 0u, 0u)), var_0.c.x ^ 27167u, _wgslsmith_mult_u32(68113u, var_0.a.a.b.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(3050u, 4294967295u, u_input.c, u_input.c), var_0.c), var_0.c), var_0.a.c.b), select((false == var_0.b) && any(select(vec4<bool>(false, var_0.d, var_0.d, true), vec4<bool>(var_0.b, true, var_0.b, true), var_0.b)), !var_0.b, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c, 0u)), var_0.a.a.a.yz) < 0u));
    var_0 = Struct_4(Struct_2(var_0.a.a, var_0.c.zz, var_0.a.c, var_0.a.a), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), ~var_0.c.yy), 0u) > 4294967295u, vec4<u32>(_wgslsmith_mult_u32(var_0.a.a.a.x << (u_input.c % 32u), ~23418u), ~(4294967295u << (u_input.c % 32u)), _wgslsmith_mult_u32(max(var_0.c.x, var_0.c.x), ~var_0.a.c.b.x), max(var_0.a.d.b.x, var_0.a.d.a.x)) | var_0.a.a.b, all(select(vec2<bool>(var_0.d, any(vec3<bool>(true, var_0.d, false))), vec2<bool>(false, true), !(!vec2<bool>(false, var_0.b)))));
    var var_1 = select(countOneBits(vec2<i32>(~(-35550i), -arg_0.x)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(10376i, u_input.a.x), arg_0.xz), -298f > _wgslsmith_f_op_f32(255f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.d.d.x, var_0.a.c.c.x))));
    var var_2 = Struct_3(var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.d.x - _wgslsmith_f_op_f32(abs(var_0.a.a.c.x)))))), var_0.a.a);
    return false;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<u32>, arg_3: u32) -> vec4<u32> {
    let var_0 = select(!vec2<bool>(select(func_3(u_input.a), true, true), false), vec2<bool>(true, true), !vec2<bool>(true, all(vec3<bool>(true, false, true)) || true));
    let var_1 = ~_wgslsmith_sub_vec2_u32(reverseBits(select(vec2<u32>(0u, 10467u), vec2<u32>(arg_0.x, 64048u), true)) >> (arg_0.zy % vec2<u32>(32u)), ~(~abs(vec2<u32>(arg_1, arg_1))));
    let var_2 = _wgslsmith_div_f32(-844f, -1000f);
    let var_3 = !all(!vec4<bool>(var_0.x, true, false, false));
    return _wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(var_1.x, max(arg_3, u_input.c), 1u, ~max(_wgslsmith_mult_u32(arg_3, arg_0.x), 4294967295u)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1732f - -1003f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1212f, -211f)) + -1985f))), _wgslsmith_div_f32(-682f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1342f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-977f)))))))), 3003f);
    return Struct_1(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.c), _wgslsmith_add_vec3_u32(abs(vec3<u32>(16039u, 4294967295u, 1u)), ~vec3<u32>(u_input.c, u_input.c, 4294967295u))), min(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 86006u, u_input.c, 71909u) | vec4<u32>(61104u, 0u, 42784u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(28197u, u_input.c, u_input.c, u_input.c), vec4<u32>(8827u, u_input.c, u_input.c, 60588u))), firstTrailingBit(~u_input.c), ~(~vec3<u32>(31985u, u_input.c, 1u)), u_input.c), vec4<u32>(0u, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), reverseBits(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c))), 1u)), var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -21095i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -345f), -894f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1119f, -293f, true))))), 1320f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-681f, -2171f)) * -553f)));
    var var_2 = ~u_input.a.x ^ -1i;
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<i32>(-5180i, ~_wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.zy)), vec2<i32>(-1i) * -countOneBits(vec2<i32>(-2147483647i, -20721i))), min(vec2<i32>(0i >> (0u % 32u), u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -1i) | _wgslsmith_clamp_vec2_i32(u_input.a.yx, u_input.a.zx, vec2<i32>(u_input.a.x, u_input.a.x)), abs(u_input.a.xz))), var_3.a.x);
}

