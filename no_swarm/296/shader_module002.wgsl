struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<i32>) -> vec3<u32> {
    var var_0 = Struct_3(14686i, vec3<u32>(~1u, max(firstTrailingBit(reverseBits(u_input.b)), 65167u), reverseBits(min(13982u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e.x, 0u, 60723u), vec3<u32>(u_input.b, arg_0.e.x, u_input.b))))), Struct_1(arg_1, arg_0.d, ~(vec4<u32>(0u, u_input.b, arg_0.b, arg_0.b) | _wgslsmith_add_vec4_u32(u_input.a, u_input.a))), _wgslsmith_add_vec3_u32(~countOneBits(firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, 21787u))), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(u_input.a.x, arg_0.b, 122866u), abs(vec3<u32>(arg_0.b, 19680u, u_input.b))), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(arg_0.e.x, arg_0.b, arg_0.e.x)), abs(u_input.a.wzz)), abs(vec3<u32>(arg_0.b, arg_0.e.x, arg_0.e.x) & arg_0.e))), Struct_2(Struct_1(abs(arg_1), arg_0.d, min(vec4<u32>(62922u, 36056u, u_input.b, 4294967295u), vec4<u32>(arg_0.b, arg_0.e.x, u_input.b, arg_0.e.x) << (vec4<u32>(arg_0.e.x, 4294967295u, 4294967295u, arg_0.e.x) % vec4<u32>(32u)))), Struct_1(firstTrailingBit(arg_1), arg_0.d, u_input.a), 495f, max(67141u, ~(~arg_0.b)), select(arg_0.a, vec3<i32>(_wgslsmith_sub_i32(arg_0.a.x, -2147483647i), firstTrailingBit(arg_0.c), -arg_1.x), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_1 = Struct_4(arg_0.a.yx);
    var_1 = Struct_4(abs(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c, 1i, -2147483647i), vec3<i32>(var_1.a.x, -2147483647i, var_1.a.x)), var_0.c.a.yxx), 1i)));
    return vec3<u32>(~_wgslsmith_mod_u32(11714u, arg_0.e.x), 0u, 1u);
}

fn func_2() -> f32 {
    var var_0 = Struct_5(~select(~max(vec3<i32>(-19875i, 2682i, -2147483647i), vec3<i32>(25441i, -2147483647i, 1i)), vec3<i32>(-1i) * -vec3<i32>(0i, 16759i, 46752i), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), 33908u, 1753i, _wgslsmith_f_op_f32(-291f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(486f, 1358f, true))))))), select(func_3(Struct_5(countOneBits(vec3<i32>(0i, -1i, 8477i)), 17132u, _wgslsmith_sub_i32(-48729i, -40946i), _wgslsmith_f_op_f32(f32(-1f) * -543f), vec3<u32>(u_input.b, 18830u, 1u) ^ u_input.a.yyy), -(~vec4<i32>(-11320i, 35621i, 36017i, 2147483647i))), u_input.a.wyw, vec3<bool>(false, false, true)));
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, 1u), abs(4294967295u), ~4294967295u, 0u), vec4<u32>(reverseBits(var_0.e.x), ~0u, _wgslsmith_add_u32(30857u, var_0.e.x), u_input.b)) | firstTrailingBit(_wgslsmith_clamp_vec4_u32(~u_input.a, ~vec4<u32>(var_0.e.x, var_0.b, 21794u, var_0.b), firstTrailingBit(u_input.a))), vec4<u32>(0u, 0u, u_input.b, u_input.a.x));
    var var_2 = 1i;
    var_0 = Struct_5(~var_0.a, ~51098u, 21953i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_0.d + var_0.d))), -1155f)))), u_input.a.zww);
    let var_3 = Struct_4(var_0.a.zx);
    return -298f;
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(-min(vec4<i32>(arg_0.a.x, arg_0.a.x, -1i, -4578i), vec4<i32>(1i, arg_0.a.x, 1i, 419i)), _wgslsmith_div_f32(-1257f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(565f, 1000f))), firstTrailingBit(max(u_input.a, ~vec4<u32>(u_input.b, 42495u, 4294967295u, 59866u)))), Struct_1(~vec4<i32>(arg_0.a.x & arg_0.a.x, arg_0.a.x, -arg_0.a.x, -12948i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2694f * _wgslsmith_f_op_f32(floor(-693f)))), vec4<u32>(firstTrailingBit(1u), u_input.a.x, u_input.a.x, 12682u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -987f))), 113269u, ~vec3<i32>(arg_0.a.x, _wgslsmith_mod_i32(1i, 5014i), -26865i));
    let var_1 = _wgslsmith_add_vec4_i32(var_0.a.a, var_0.a.a);
    var var_2 = Struct_4(max(max(_wgslsmith_clamp_vec2_i32(-arg_0.a, var_0.b.a.zy, firstLeadingBit(vec2<i32>(6574i, -1i))), -(~vec2<i32>(arg_0.a.x, 82i))), -(vec2<i32>(-1i) * -vec2<i32>(69176i, var_1.x))));
    var var_3 = -2147483647i;
    var_0 = Struct_2(var_0.b, var_0.b, 633f, _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(var_0.a.c.x, var_0.d)), var_0.b.a.wxx);
    return Struct_1(vec4<i32>(-1i, 2147483647i, var_0.a.a.x, abs(arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1248f, 583f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.b)))), ~(~vec4<u32>(var_0.a.c.x, 0u, var_0.a.c.x, 1u)) ^ (~(~u_input.a) << (vec4<u32>(_wgslsmith_mult_u32(30786u, 9013u), abs(u_input.b), u_input.a.x, 4294967295u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-4041i, abs(1i), _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(select(vec2<i32>(-14843i, 55686i), vec2<i32>(17396i, 1i), vec2<bool>(true, true)), min(vec2<i32>(1i, -1i), vec2<i32>(-2147483647i, 44326i))), countOneBits(~vec2<i32>(1i, 58937i))), -2147483647i);
    var_0 = countOneBits(firstLeadingBit(~(-vec4<i32>(-8364i, -2147483647i, var_0.x, var_0.x))));
    let var_1 = func_1(Struct_4(var_0.ww));
    var_0 = -select(-max(var_1.a, vec4<i32>(var_0.x, var_1.a.x, -2147483647i, 2147483647i)), var_1.a, select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))) >> (vec4<u32>(_wgslsmith_add_u32(0u, ~81064u), _wgslsmith_dot_vec4_u32(~(~u_input.a), var_1.c), _wgslsmith_mult_u32(49250u, u_input.b), _wgslsmith_div_u32(11529u, 1u)) % vec4<u32>(32u));
    var var_2 = var_1.a;
    let var_3 = _wgslsmith_mod_u32(u_input.a.x, 5509u);
    var_0 = vec4<i32>(5231i << (~_wgslsmith_add_u32(u_input.b, u_input.b) % 32u), 1i, -2147483647i, firstTrailingBit(-1i)) << (_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1.c.x, 0u, 4294967295u, var_1.c.x)), vec4<u32>(55700u, ~select(u_input.a.x, 40719u, true), 51889u, var_1.c.x)) % vec4<u32>(32u));
    var_0 = -vec4<i32>(1i, var_1.a.x, ~(~(-1i)) >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(var_3, 0u), var_1.c.x) % 32u), var_0.x);
    let var_4 = -5573i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_1.b, -287f, all(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)))));
}

