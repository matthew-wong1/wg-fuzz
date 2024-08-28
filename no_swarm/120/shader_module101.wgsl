struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<bool>(false, true, true), 0i), Struct_1(vec3<bool>(true, true, false), -27729i), Struct_1(vec3<bool>(true, false, true), 2147483647i), Struct_1(vec3<bool>(false, false, false), 461i), Struct_1(vec3<bool>(false, true, false), i32(-2147483648)), Struct_1(vec3<bool>(true, true, false), -18980i), Struct_1(vec3<bool>(false, false, false), i32(-2147483648)), Struct_1(vec3<bool>(true, true, false), 1i), Struct_1(vec3<bool>(true, false, true), 6581i), Struct_1(vec3<bool>(true, true, false), 2147483647i), Struct_1(vec3<bool>(false, false, true), 1i), Struct_1(vec3<bool>(true, true, false), i32(-2147483648)), Struct_1(vec3<bool>(false, true, false), -7661i), Struct_1(vec3<bool>(false, false, true), 0i), Struct_1(vec3<bool>(true, false, false), i32(-2147483648)), Struct_1(vec3<bool>(true, true, true), -3422i), Struct_1(vec3<bool>(true, true, false), -17341i), Struct_1(vec3<bool>(true, false, true), -5434i), Struct_1(vec3<bool>(true, true, false), 0i), Struct_1(vec3<bool>(true, false, false), 1951i), Struct_1(vec3<bool>(false, false, true), i32(-2147483648)), Struct_1(vec3<bool>(false, true, true), -51434i), Struct_1(vec3<bool>(false, false, false), 0i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    var var_0 = vec2<bool>(arg_1.a.x, all(arg_1.a.zx));
    return var_0.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> i32 {
    var var_0 = 1729f;
    let var_1 = ((1u << (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 47666u), vec3<u32>(4294967295u, 13615u, 27112u)), _wgslsmith_mod_u32(57640u, 52064u)) % 32u)) | reverseBits(105080u)) > ~_wgslsmith_mod_u32(~_wgslsmith_add_u32(8850u, 9750u), 1u);
    return -2147483647i;
}

fn func_1(arg_0: bool) -> vec4<u32> {
    global0 = !(!(!func_2(-vec3<i32>(-2147483647i, -1i, -23786i), Struct_1(vec3<bool>(arg_0, true, true), u_input.a.x))));
    var var_0 = Struct_4(max(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(1u, 1u, 1u, 1u))), vec2<f32>(-983f, _wgslsmith_f_op_f32(abs(-247f))), -vec4<i32>(-12234i, -_wgslsmith_mod_i32(-2147483647i, u_input.a.x), _wgslsmith_div_i32(func_3(vec3<bool>(arg_0, arg_0, arg_0), -15114i), u_input.a.x), 0i), 1331f, -1i);
    global0 = all(!(!vec3<bool>(func_2(u_input.a, global1[_wgslsmith_index_u32(var_0.a.x, 23u)]), arg_0 || arg_0, true)));
    let var_1 = _wgslsmith_dot_vec4_u32(firstTrailingBit(~var_0.a), var_0.a);
    global0 = any(select(!select(vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(false, false, true, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, false, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0))), vec4<bool>(var_1 < _wgslsmith_dot_vec2_u32(vec2<u32>(30609u, var_1), var_0.a.zy), any(vec4<bool>(true, arg_0, arg_0, arg_0)) || any(vec2<bool>(false, arg_0)), any(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, false), false)), true), !(any(vec2<bool>(arg_0, arg_0)) | arg_0)));
    return firstLeadingBit(firstLeadingBit(vec4<u32>(max(abs(var_1), _wgslsmith_mult_u32(var_0.a.x, 4294967295u)), reverseBits(0u) & _wgslsmith_clamp_u32(0u, 67288u, var_1), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.a.yy, vec2<u32>(var_1, 0u)), var_0.a.xx), _wgslsmith_dot_vec2_u32(select(var_0.a.yz, vec2<u32>(17291u, var_1), vec2<bool>(arg_0, arg_0)), select(vec2<u32>(74788u, 1u), vec2<u32>(var_1, 56849u), vec2<bool>(true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true);
    var var_1 = _wgslsmith_dot_vec4_i32(~((vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i) | vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -34519i)) ^ ~vec4<i32>(-2147483647i, u_input.a.x, 912i, -2147483647i)), ~((vec4<i32>(u_input.a.x, u_input.a.x, -12044i, u_input.a.x) & vec4<i32>(u_input.a.x, 39928i, 2147483647i, u_input.a.x)) & abs(vec4<i32>(1i, -15259i, u_input.a.x, 2475i)))) < -7231i;
    var_1 = true;
    var_1 = any(vec3<bool>(true, true, true));
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(u_input.a.x, -1i), u_input.a.x, -firstLeadingBit(12688i), u_input.a.x) << ((vec4<u32>(var_0.x, func_1(false).x, 131u | var_0.x, 1u) | ~(~vec4<u32>(var_0.x, var_0.x, var_0.x, 0u))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(select(countOneBits(-vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -12492i)), vec4<i32>(0i, min(u_input.a.x, u_input.a.x), 1i, select(-26168i, -1i, false)), false), vec4<i32>(~(~(-1i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, u_input.a.x), 0i & u_input.a.x), -(i32(-1i) * -36329i), ~(~8660i))));
    global1 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1817f - -372f)))) + -971f), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(3075i, 23558i, 1i, var_2.x) & vec4<i32>(var_2.x, 52965i, -1i, var_2.x), -_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 34389i, 0i, 19348i), var_2)), max(u_input.a.x, 0i) >> (select(abs(4294967295u), 46666u, var_0.x >= var_0.x) % 32u), _wgslsmith_add_i32(-(~var_2.x), -var_2.x), var_2.x), var_0.x | 39699u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(598f, _wgslsmith_div_f32(-553f, 590f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1457f + 333f), _wgslsmith_f_op_f32(f32(-1f) * -402f))))));
}

