struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-344f, -768f) * vec2<f32>(arg_1, -1275f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(182f, arg_1), vec2<f32>(arg_1, 328f), false)))), vec2<f32>(-774f, arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) * -929f), -2040f)), !vec2<bool>(true, all(vec3<bool>(false, arg_0.x, arg_0.x)))));
    global0 = array<vec4<bool>, 32>();
    let var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_sub_vec3_i32(~(~abs(vec3<i32>(46471i, u_input.b, -2147483647i))), ~abs(-vec3<i32>(0i, u_input.b, u_input.b))), arg_0.x, reverseBits(~vec3<u32>(17591u, abs(56287u), 0u)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1048f, 738f), vec2<f32>(994f, 1949f)) - vec2<f32>(464f, 827f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1850f, var_0.x), vec2<f32>(242f, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1348f, -1441f))))))));
    return min(var_2.a.x, _wgslsmith_dot_vec2_i32(~var_2.a.yz, var_2.a.zy)) ^ -u_input.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_mult_u32(29801u, ~arg_1.x);
    let var_1 = Struct_1(min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -u_input.b, func_3(arg_0, -271f)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-6010i, u_input.b, 30755i), vec3<i32>(0i, u_input.b, u_input.b)), vec3<i32>(2147483647i, u_input.b, u_input.b))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), ~0i), u_input.b, u_input.b)), true & arg_0.x, min(_wgslsmith_clamp_vec3_u32(select(arg_1 | arg_1, ~vec3<u32>(74267u, arg_1.x, arg_1.x), false), vec3<u32>(firstLeadingBit(u_input.a), var_0, 0u), firstTrailingBit(countOneBits(arg_1))), max(arg_1, vec3<u32>(var_0, _wgslsmith_clamp_u32(arg_1.x, var_0, arg_1.x), ~u_input.a))));
    let var_2 = select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_0.x), true), true), !vec3<bool>(true, any(arg_0), true), all(select(vec3<bool>(arg_0.x, arg_0.x & arg_0.x, true), !(!vec3<bool>(arg_0.x, true, false)), select(vec3<bool>(false, arg_0.x, var_1.b), !vec3<bool>(arg_0.x, true, arg_0.x), any(vec3<bool>(false, var_1.b, false))))));
    return -(vec2<i32>(-1i) * -var_1.a.xx);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(u_input.a, 4294967295u, ~u_input.a);
    global0 = array<vec4<bool>, 32>();
    var var_1 = _wgslsmith_f_op_f32(138f - _wgslsmith_f_op_f32(-554f - _wgslsmith_f_op_f32(-149f + -125f)));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, abs(u_input.b), firstTrailingBit(62479i)) << (~vec3<u32>(26594u & u_input.a, u_input.a, 43620u) % vec3<u32>(32u)), firstTrailingBit(select(select(min(vec3<i32>(u_input.b, arg_2.x, arg_1), vec3<i32>(arg_1, arg_1, -2147483647i)), vec3<i32>(arg_1, -1i, u_input.b) ^ vec3<i32>(u_input.b, arg_2.x, 53804i), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), ~min(vec3<i32>(2147483647i, arg_1, arg_2.x), vec3<i32>(u_input.b, 2147483647i, arg_1)), true)));
    var_2 = _wgslsmith_add_vec3_i32(-vec3<i32>(firstTrailingBit(abs(u_input.b)), -(~arg_2.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, var_2.x), vec2<i32>(u_input.b, arg_2.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-4700i, 2147483647i, var_2.x, 0i), vec4<i32>(9188i, 2147483647i, 0i, var_2.x)))), vec3<i32>(-1i) * -(~abs(vec3<i32>(-1i, 0i, arg_2.x))));
    return Struct_1(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, -37257i) >> (~u_input.a % 32u), -16689i), countOneBits(_wgslsmith_sub_i32(~arg_2.x, 0i)), u_input.b), 17444i < (max(-37944i, ~8585i) >> (~_wgslsmith_clamp_u32(22949u, arg_0, u_input.a) % 32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, _wgslsmith_clamp_u32(arg_0, 0u, 62869u), ~7463u), vec3<u32>(_wgslsmith_clamp_u32(arg_0, arg_0, u_input.a), arg_0, ~4294967295u)) >> (_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(u_input.a, 1u, u_input.a)), vec3<u32>(~arg_0, arg_0, firstTrailingBit(u_input.a))) % vec3<u32>(32u)));
}

fn func_1() -> vec3<u32> {
    let var_0 = ~u_input.b;
    var var_1 = _wgslsmith_div_u32(u_input.a, u_input.a) >> (4294967295u % 32u);
    var var_2 = func_4(u_input.a, ~415i, ~(~func_2(vec2<bool>(true, true), vec3<u32>(u_input.a, 115117u, 74194u)) << (_wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a, 13259u)), max(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, u_input.a))) % vec2<u32>(32u))));
    var var_3 = !vec4<bool>((!var_2.b || all(global0[_wgslsmith_index_u32(35589u, 32u)])) || var_2.b, var_2.b, !(any(vec2<bool>(var_2.b, var_2.b)) | func_4(19317u, -2147483647i, var_2.a.zz).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(902f)) - _wgslsmith_f_op_f32(-1074f + 433f)) <= 546f);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(459f, 632f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(242f + _wgslsmith_f_op_f32(f32(-1f) * -1158f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2249f + 817f), 389f)))), _wgslsmith_f_op_f32(-695f + -747f));
    return vec3<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~u_input.a), vec2<u32>(82351u, abs(31692u))), 4294967295u) | func_4(_wgslsmith_mult_u32(abs(~4294967295u), _wgslsmith_mod_u32(var_2.c.x, u_input.a) << (1u % 32u)), _wgslsmith_div_i32(~(-49208i), _wgslsmith_clamp_i32(var_0, max(2147483647i, 37619i), 1i)), vec2<i32>(-40362i, reverseBits(1i))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0, ~vec3<u32>(firstLeadingBit(53054u), u_input.a, var_0.x >> (var_0.x % 32u)), any(vec3<bool>(true, true, true))), select(abs(-vec4<i32>(24624i, u_input.b, 0i, -25256i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.b & 2147483647i, -7109i, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(-13135i, -61937i, u_input.b, u_input.b), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), vec4<i32>(-26997i, u_input.b, u_input.b, u_input.b)) >> (~vec4<u32>(u_input.a, u_input.a, 7154u, 4294967295u) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.x & var_0.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(38622u, 4294967295u, 68646u), vec3<u32>(u_input.a, 39213u, 46697u))), 32u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, reverseBits(~6688u), ~(~0u)), vec3<u32>(func_4(var_0.x, -30920i, firstLeadingBit(vec2<i32>(u_input.b, -4969i))).c.x, ~(~69862u), func_1().x)), var_0.xx);
}

