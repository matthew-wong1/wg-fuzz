struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: f32;

var<private> global2: array<vec2<i32>, 1>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    let var_0 = ~_wgslsmith_mod_vec4_i32(~max(vec4<i32>(-17057i, u_input.c, -59442i, u_input.a), vec4<i32>(0i, arg_1.a, 3697i, arg_1.a)) & abs(vec4<i32>(u_input.b, -2147483647i, 15696i, arg_1.a)), -_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, -26i, 0i, u_input.a), vec4<i32>(-1i, 9570i, -1i, arg_1.a) >> (vec4<u32>(1u, arg_1.b, 66066u, 0u) % vec4<u32>(32u))));
    let var_1 = 1i;
    var var_2 = countOneBits(vec2<u32>(arg_1.b, arg_2.x << (select(~arg_1.b, arg_2.x << (arg_1.b % 32u), !arg_1.e.x) % 32u)));
    var_2 = vec2<u32>(var_2.x, arg_1.b) | arg_2;
    var_2 = arg_2 | vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(var_2.x, arg_2.x), ~26700u) << (arg_1.b % 32u), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_2, arg_2), arg_2 & vec2<u32>(0u, 3662u))));
    return !(!arg_1.e.x);
}

fn func_3() -> u32 {
    global0 = select(func_2(vec4<bool>(true, true, true, true), Struct_1(firstTrailingBit(0i), 1u, vec2<bool>(all(vec3<bool>(false, false, true)), select(false, true, true)), u_input.b, vec4<bool>(true, true, true, true)), ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 22527u), vec2<u32>(4294967295u, 1u))), any(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true))), all(!vec4<bool>(true, select(true, false, false), select(true, true, false), true)));
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f + -1000f))))));
    global0 = true;
    let var_1 = vec3<i32>(-41362i, abs(-2147483647i & u_input.a), -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(4728i, 11143i), _wgslsmith_div_i32(1i, -40445i)), ~vec2<i32>(u_input.c, u_input.a)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(195f, -819f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(645f, 1222f)))))));
    return _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(15100u, 40167u, 13665u), vec3<u32>(30785u, 4044u, 103844u)), ~4294967295u), vec2<u32>(_wgslsmith_clamp_u32(44206u, 37388u, 0u), _wgslsmith_mod_u32(78967u, 1u)))), 34205u);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_2(arg_0.x, (select(true | arg_1.x, true, true) && any(vec3<bool>(arg_1.x, false, false))) & false, select(!select(!arg_1.wx, select(vec2<bool>(arg_1.x, arg_1.x), arg_1.xx, arg_1.xx), all(arg_1.zx)), vec2<bool>(func_2(arg_1, Struct_1(u_input.c, 72127u, arg_1.xy, 1i, arg_1), firstLeadingBit(arg_3.xx)), (false | arg_1.x) | (arg_0.x < -224f)), true), Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, 14731i), _wgslsmith_div_i32(-26526i, u_input.a), 0i), u_input.c), max(reverseBits(9717u), func_3()), vec2<bool>(arg_1.x, arg_1.x), firstTrailingBit(abs(u_input.b)), !vec4<bool>(func_2(arg_1, Struct_1(1i, 8861u, vec2<bool>(false, false), 47616i, arg_1), vec2<u32>(arg_3.x, arg_3.x)), func_2(arg_1, Struct_1(u_input.a, 3408u, vec2<bool>(false, arg_1.x), u_input.a, vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)), vec2<u32>(arg_3.x, 4294967295u)), arg_1.x, arg_1.x)));
    let var_1 = ~arg_2;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * -2396f) - arg_0.x))), arg_1.x, arg_1.xz, Struct_1(u_input.b, ~(~select(14758u, var_0.d.b, true)), select(var_0.d.e.wx, select(!arg_1.xz, !vec2<bool>(false, arg_1.x), vec2<bool>(false, true)), !vec2<bool>(var_0.d.c.x, true)), _wgslsmith_mod_i32(-_wgslsmith_div_i32(var_0.d.d, u_input.a), firstTrailingBit(2641i) << (_wgslsmith_mod_u32(arg_3.x, 22920u) % 32u)), !vec4<bool>(arg_1.x, !arg_1.x, var_0.c.x, true & arg_1.x)));
    global2 = array<vec2<i32>, 1>();
    let var_3 = Struct_1(1i, ~16103u, select(!var_2.d.e.zy, !var_2.d.c, vec2<bool>(arg_1.x, false)), var_0.d.a, var_0.d.e);
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1767f;
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-376f, 335f), _wgslsmith_f_op_f32(-416f + -1156f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-350f * -100f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(func_1(vec4<f32>(645f, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, false, false, false), _wgslsmith_mod_u32(1u, 45495u), vec4<u32>(1u, 1u, 1u, 1u)) >> (1u % 32u), 1u)], abs(vec2<i32>(-23206i, i32(-1i) * -2147483647i))), _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.b ^ select(2147483647i, 29808i, true), firstTrailingBit(-11415i), min(1i, -2147483647i), -2147483647i), select(min(vec4<i32>(2099i, -18363i, u_input.a, u_input.b), ~vec4<i32>(-32999i, u_input.c, u_input.c, -51698i)), firstTrailingBit(vec4<i32>(u_input.c, u_input.a, u_input.a, 2147483647i)), any(vec2<bool>(false, true)))), 434f);
}

