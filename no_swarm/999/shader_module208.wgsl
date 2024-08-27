struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(~select(vec2<i32>(2147483647i, 7944i), u_input.b.zx, arg_1.yy), u_input.b.zz | u_input.b.yx, -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 0i))), -_wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, 9838i, u_input.b.x), vec3<i32>(u_input.b.x, 0i, u_input.b.x)), vec4<bool>(any(arg_1.wwx) && !arg_0, true, true | any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(307f)), _wgslsmith_f_op_f32(608f + 1099f), _wgslsmith_f_op_f32(f32(-1f) * -722f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 288f, 519f)))))));
    var var_2 = var_1;
    var_0 = var_2.a.c.x;
    global0 = array<vec4<f32>, 26>();
    return -383f;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: u32) -> bool {
    let var_0 = ~countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-u_input.b.x, u_input.b.x), ~_wgslsmith_clamp_vec2_i32(u_input.b.zy, u_input.b.yy, u_input.b.yx)));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(38421u, 26u)]));
    let var_2 = u_input.c.zxw;
    global0 = array<vec4<f32>, 26>();
    var_1 = _wgslsmith_f_op_vec4_f32(min(global0[_wgslsmith_index_u32(~arg_0, 26u)], _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 747f), var_1.x, _wgslsmith_f_op_f32(step(var_1.x, -1068f)))))));
    return min(~(~var_2.x), 1u) > (firstTrailingBit(reverseBits(u_input.c.x)) & (~0u | ~(~arg_0)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = func_4(u_input.c.x, _wgslsmith_f_op_f32(func_3(true, select(vec4<bool>(arg_0, true, true, !arg_0), vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(u_input.b.x != u_input.b.x, any(vec4<bool>(true, arg_0, true, arg_0)), all(vec3<bool>(true, arg_0, arg_0)), arg_0)))), u_input.a.x);
    var var_1 = -561f;
    let var_2 = Struct_1(-(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 31072i) >> (u_input.c.xz % vec2<u32>(32u)), -vec2<i32>(u_input.b.x, u_input.b.x)) & _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 5954i), max(u_input.b.yy, vec2<i32>(10387i, u_input.b.x)))), min(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-11730i, -95123i, u_input.b.x), vec3<i32>(u_input.b.x, 1i, u_input.b.x)), ~(-71321i), -28165i), u_input.b), select(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(vec4<bool>(func_4(4294967295u, 492f, 1u), false, arg_0, select(true, arg_0, false)), select(!vec4<bool>(arg_0, true, true, false), !vec4<bool>(true, arg_0, true, true), !arg_0), true), vec4<bool>(true, false, arg_0, arg_0 || (u_input.b.x == u_input.b.x))));
    var_1 = _wgslsmith_f_op_f32(func_3(all(select(!select(vec3<bool>(false, false, true), vec3<bool>(arg_0, arg_0, true), vec3<bool>(var_2.c.x, true, false)), select(vec3<bool>(true, true, true), var_2.c.ywx, select(var_2.c.wzx, vec3<bool>(true, arg_0, arg_0), arg_0)), select(vec3<bool>(arg_0, var_2.c.x, true), select(vec3<bool>(false, false, false), vec3<bool>(arg_0, true, true), var_2.c.wxy), var_2.c.x))), vec4<bool>(!((0u << (u_input.c.x % 32u)) >= min(39086u, 0u)), any(vec2<bool>(arg_0, true)), !(!arg_0), var_2.c.x)));
    var var_3 = _wgslsmith_div_i32(var_2.b.x, u_input.b.x);
    return Struct_2(var_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -275f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(177f * 100f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1149f, 526f)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    var var_0 = func_2(!(!arg_2.c.x));
    var_0 = Struct_2(func_2(any(func_2(arg_1.x).a.c.wx)).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, _wgslsmith_f_op_f32(func_3(false, arg_1)), _wgslsmith_f_op_f32(352f - 890f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b), vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - arg_3), _wgslsmith_f_op_f32(round(465f)), _wgslsmith_f_op_f32(abs(-1756f))), ~46009u == (u_input.a.x >> (1u % 32u))))));
    var var_1 = func_2(!(max(17795u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 27618u, u_input.c.x), u_input.c.ywx)) <= abs(max(u_input.c.x, 33909u))));
    return Struct_2(var_1.a, vec3<f32>(_wgslsmith_f_op_f32(floor(func_2(func_2(true).a.c.x).b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.x, -142f)) + _wgslsmith_f_op_f32(trunc(var_0.b.x))) + 632f), _wgslsmith_f_op_f32(step(var_1.b.x, arg_3))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = !(!(arg_0.a.a.x >= ~8682i));
    var var_2 = arg_0.a;
    var_1 = !(!(var_0.a.c.x & true));
    var var_3 = func_1(u_input.c.wyx, vec4<bool>(!(-194f != _wgslsmith_f_op_f32(step(arg_1.b.x, -199f))), any(arg_1.a.c.xyw), !all(vec3<bool>(true, true, true)), func_4(reverseBits(u_input.c.x), func_1(vec3<u32>(54382u, 40353u, arg_2.x), vec4<bool>(true, true, true, false), var_0.a, 676f).b.x, u_input.c.x) & true), var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-var_0.b.x))), func_2(true).b.x));
    return func_2(true).a;
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(803f + arg_2.b.x)));
    global0 = array<vec4<f32>, 26>();
    var var_1 = arg_3.a;
    var_1 = func_1(vec3<u32>(_wgslsmith_mod_u32(abs(~u_input.c.x), ~_wgslsmith_div_u32(61352u, 5228u)), u_input.a.x, 4294967295u), func_5(arg_2, arg_2, vec4<u32>(max(0u, ~u_input.a.x), u_input.a.x, ~1u << (u_input.c.x % 32u), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), func_5(arg_3, Struct_2(Struct_1(vec2<i32>(arg_2.a.a.x, arg_1.a.x), var_1.b, vec4<bool>(false, false, arg_1.c.x, true)), _wgslsmith_f_op_vec3_f32(arg_2.b * vec3<f32>(arg_2.b.x, arg_3.b.x, var_0))), max(firstTrailingBit(vec4<u32>(0u, u_input.c.x, 4294967295u, 4294967295u)), _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x))), arg_3.a.c).c).c, Struct_1(arg_2.a.a, _wgslsmith_mod_vec3_i32(var_1.b, (vec3<i32>(arg_1.a.x, -5232i, arg_1.a.x) >> (u_input.c.xxx % vec3<u32>(32u))) << ((vec3<u32>(1u, u_input.c.x, u_input.c.x) & vec3<u32>(u_input.a.x, 39043u, 78859u)) % vec3<u32>(32u))), vec4<bool>(false, !(arg_3.a.c.x || true), true, all(vec4<bool>(true, var_1.c.x, arg_1.c.x, var_1.c.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + -557f)))).a;
    let var_2 = !(!select(vec3<bool>(arg_0 != 591f, arg_3.a.c.x, func_4(4294967295u, -1761f, 1u)), func_1(firstTrailingBit(vec3<u32>(4294967295u, 53611u, 32682u)), vec4<bool>(arg_3.a.c.x, false, arg_3.a.c.x, arg_1.c.x), func_5(Struct_2(arg_3.a, arg_2.b), arg_2, u_input.c, var_1.c), _wgslsmith_f_op_f32(-arg_2.b.x)).a.c.xxw, vec3<bool>(var_1.c.x, arg_2.a.a.x > 2147483647i, u_input.a.x == u_input.c.x)));
    return arg_2.b.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(min(vec2<i32>(_wgslsmith_mult_i32(1i, 0i), u_input.b.x), ~(u_input.b.zz >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))))), u_input.b, vec4<bool>(true, !any(vec4<bool>(false, false, true, true)), true, all(vec4<bool>(true, true, true, true))));
    global0 = array<vec4<f32>, 26>();
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(130f, func_5(func_1(u_input.c.zzx, vec4<bool>(var_0.c.x, var_0.c.x, false, false), Struct_1(var_0.a, var_0.b, var_0.c), -1357f), func_2(var_0.c.x), vec4<u32>(0u, 18025u, 4294967295u, u_input.a.x), vec4<bool>(false, var_0.c.x, var_0.c.x, false)), Struct_2(Struct_1(vec2<i32>(1i, u_input.b.x), u_input.b, var_0.c), _wgslsmith_div_vec3_f32(vec3<f32>(-771f, 641f, -1000f), vec3<f32>(-591f, 1311f, -928f))), func_2(!var_0.c.x))))));
    let var_2 = vec2<u32>(58716u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c.zxz, _wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.c.x, 4317u, u_input.c.x), u_input.c.wwz), max(vec3<u32>(1u, u_input.c.x, u_input.a.x), vec3<u32>(u_input.a.x, 23664u, 0u)))), ~28093u));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(234f, _wgslsmith_f_op_f32(func_3(-2147483647i < (var_0.b.x | var_0.b.x), vec4<bool>(false, !var_0.c.x, u_input.b.x <= var_0.b.x, false))), var_1.x)));
    global0 = array<vec4<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec2_f32(func_6(var_4.x, Struct_1(var_0.a, var_0.b, var_0.c), Struct_2(Struct_1(vec2<i32>(var_0.a.x, 2147483647i), u_input.b, vec4<bool>(true, var_0.c.x, false, var_0.c.x)), vec3<f32>(var_4.x, var_4.x, 1126f)), Struct_2(Struct_1(u_input.b.zx, vec3<i32>(var_0.b.x, 0i, u_input.b.x), var_0.c), vec3<f32>(var_4.x, var_1.x, -1543f)))).x, true)))), _wgslsmith_f_op_f32(-284f - _wgslsmith_f_op_f32(step(514f, _wgslsmith_f_op_f32(floor(var_4.x)))))), var_2, _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_2.x, 26u)]));
}

