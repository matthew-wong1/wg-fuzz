struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    var var_0 = select(select(!vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, all(vec2<bool>(false, false))), vec4<bool>(false, u_input.a.x >= -17334i, _wgslsmith_f_op_f32(step(-542f, 284f)) <= -1364f, abs(global0.x) <= (u_input.b.x << (4294967295u % 32u))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(vec2<bool>(true, true)), true, all(vec3<bool>(true, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), true)), vec4<bool>(true, true, true, true), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(true, false, true)))), true);
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 1u ^ global0.x, 4294967295u) ^ vec4<u32>(u_input.b.x, ~(~4294967295u), firstLeadingBit(global0.x ^ 4294967295u), 36929u), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~4294967295u, ~global0.x, max(113519u, 0u)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.d, global0.x)), vec2<u32>(38547u, global0.x))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, u_input.b.x, u_input.b.x), select(u_input.b, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 22826u, 3902u), vec3<u32>(u_input.d, 574u, global0.x)), true)), ~(~1u), 4294967295u));
    let var_1 = vec2<u32>(select(countOneBits(~(u_input.b.x ^ 59675u)), ~global0.x ^ 46569u, true), ~_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(global0.xw, vec2<u32>(u_input.d, u_input.b.x), vec2<u32>(46898u, 0u))), min(vec2<u32>(u_input.e.x, 93868u), vec2<u32>(1u, u_input.d))));
    let var_2 = _wgslsmith_mod_vec3_u32(firstTrailingBit(~(~u_input.b)) | _wgslsmith_div_vec3_u32(u_input.e, max(select(vec3<u32>(global0.x, 4294967295u, u_input.b.x), global0.xyy, true), vec3<u32>(var_1.x, global0.x, 41798u) & u_input.e)), global0.xxw);
    var var_3 = Struct_1(!(!vec4<bool>(!var_0.x, var_0.x && true, var_0.x, false)));
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(286f, _wgslsmith_f_op_f32(round(333f)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_1 = abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(arg_1, u_input.a)), _wgslsmith_mult_vec3_i32(arg_1, ~arg_1)), vec3<i32>(arg_1.x, min(1i, u_input.c) | (u_input.a.x & u_input.a.x), u_input.c)));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(var_1, _wgslsmith_add_i32(-1i, u_input.c)), -u_input.a.x);
    let var_3 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.zx, _wgslsmith_mult_vec2_i32(vec2<i32>(-25962i, 1i), vec2<i32>(-62504i, -80045i))), min(arg_1.zy & vec2<i32>(var_2.x, var_1), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 1i), var_2))), 1i), ~(vec2<i32>(var_2.x, -17260i) << (countOneBits(vec2<u32>(1u, u_input.e.x) | vec2<u32>(50524u, 97523u)) % vec2<u32>(32u))), all(vec4<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)), false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), -1000f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))))), all(vec4<bool>(true, true, true, false)));
    let var_4 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mod_u32(115054u, global0.x)), u_input.b.xx) & global0.xx;
    return select(!vec4<bool>(select(true, false, all(vec4<bool>(false, false, true, var_3.c))), any(vec2<bool>(var_3.c, false)), true, !var_3.e != !var_3.c), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_3.c, false, var_3.e, true), !vec4<bool>(var_3.c, false, true, true)), vec4<bool>(false, var_3.c, 1294i == var_1, false), !select(vec4<bool>(true, false, true, false), vec4<bool>(var_3.e, true, var_3.c, true), vec4<bool>(var_3.c, true, var_3.c, true))), vec4<bool>(!var_3.e, true, false, max(4294967295u, u_input.b.x) > 1u), false), !vec4<bool>(!var_3.c, var_3.c, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.x), vec2<u32>(var_4.x, u_input.b.x)) >= ~0u, var_3.e));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(!func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(373f, -793f) - vec2<f32>(1301f, arg_0.d)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, arg_0.d))), select(vec3<i32>(arg_0.a, -16967i, u_input.c), vec3<i32>(u_input.a.x, 24231i, -1i), arg_0.e) << (vec3<u32>(0u, 16313u, 39327u) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-218f, arg_0.d) - arg_0.d), -342f)))));
    let var_2 = Struct_3(Struct_1(var_0.a), Struct_1(vec4<bool>(arg_0.c, !(!arg_0.c), var_0.a.x, true)));
    var_0 = var_2.a;
    var var_3 = abs(u_input.d);
    return Struct_1(!func_2(vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(sign(arg_0.d))), -vec3<i32>(2147483647i, u_input.c, arg_0.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_3 {
    global1 = u_input.c;
    var var_0 = u_input.a.zy | vec2<i32>(arg_1.d.x, -23607i);
    var var_1 = arg_1.b;
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(88509u, 25919u, _wgslsmith_clamp_u32(~global0.x, global0.x, 4294967295u), ~max(u_input.e.x | u_input.b.x, ~43626u)), abs(~vec4<u32>(_wgslsmith_add_u32(u_input.d, u_input.e.x), ~global0.x, _wgslsmith_mod_u32(u_input.b.x, 0u), ~u_input.e.x)));
    var var_2 = arg_0;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -2147483647i;
    var var_0 = func_4(func_1(Struct_2(_wgslsmith_div_i32(-1i, -4452i), u_input.a.xx, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 784f)), false)), Struct_5(firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, select(u_input.a.x, 2147483647i, false))), ~_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, -14262i, u_input.c, -1i), vec4<i32>(26246i, 2147483647i, 6240i, u_input.c)), -1005f, _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a.x, -23895i), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.xy, u_input.a.xy), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.c), vec2<i32>(u_input.a.x, -14897i))))), Struct_3(func_1(Struct_2(u_input.c, vec2<i32>(-1i, -2147483647i), any(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(-750f * 481f), false)), func_1(Struct_2(_wgslsmith_clamp_i32(11679i, 22926i, 2089i), vec2<i32>(-43511i, 1i), true, _wgslsmith_f_op_f32(max(-183f, -144f)), func_1(Struct_2(18078i, vec2<i32>(0i, u_input.a.x), true, 649f, true)).a.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, 436f, -1000f, -197f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(105f, -212f, 847f, -946f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, 146f, -1000f, 1027f))))));
    var var_1 = Struct_2(_wgslsmith_mod_i32(u_input.c, 2147483647i & u_input.c), _wgslsmith_mult_vec2_i32(countOneBits(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-28145i, -19633i), u_input.a.yz))), abs(abs(u_input.a.xz))), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1634f, 1890f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -1116f))), 968f)), true);
    global1 = u_input.c;
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>((_wgslsmith_div_u32(u_input.d, global0.x) >> (1u % 32u)) & global0.x, ~u_input.d), _wgslsmith_mult_vec2_u32(vec2<u32>(~4573u, ~global0.x), vec2<u32>(u_input.d << (select(11021u, 1u, true) % 32u), _wgslsmith_mult_u32(~86119u, u_input.b.x))));
    global0 = vec4<u32>(abs(reverseBits(global0.x)), 22643u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d >> (global0.x % 32u), ~1u, 12623u), ~(firstLeadingBit(u_input.b) & global0.wwy)), 0u);
    var var_3 = Struct_4(_wgslsmith_div_i32(-1i, firstLeadingBit(_wgslsmith_div_i32(u_input.c, -42308i))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(min(1u, u_input.d), var_2.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, var_2.x, 1u, 33065u)), abs(vec4<u32>(10617u, global0.x, u_input.d, var_2.x))), min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, 1u, var_2.x), vec4<u32>(0u, 43014u, 30557u, var_2.x)), 28471u)), global0.yxy, vec3<u32>(49526u, _wgslsmith_add_u32(~global0.x, var_2.x >> (28780u % 32u)), 3215u)), var_0.b, var_0.a.a, u_input.c);
    var var_4 = Struct_1(var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, _wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.x, u_input.b.x, 4294967295u), ~u_input.b), ~_wgslsmith_mod_vec3_u32(global0.xzw, u_input.b)), ~global0.xzx), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-569f - 1036f) + _wgslsmith_f_op_f32(sign(1944f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.d, var_1.d, var_1.d, var_1.d)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, 488f, var_1.d)))))), !select(var_3.c.a, var_0.b.a, !var_4.a.x))), var_1.a, _wgslsmith_sub_u32(~880u, ~20814u));
}

