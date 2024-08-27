struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-28708i, i32(-2147483648));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> i32 {
    let var_0 = Struct_2(all(vec3<bool>(true, _wgslsmith_f_op_f32(arg_0.c + -349f) == _wgslsmith_f_op_f32(-arg_0.d.x), -561f == _wgslsmith_f_op_f32(arg_0.c * -359f))), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-749f * arg_0.d.x)))), arg_0.d);
    let var_1 = Struct_1(arg_0.b.a, var_0.b.b, select(!select(select(var_0.b.c, vec2<bool>(var_0.b.c.x, false), arg_0.b.c), var_0.b.c, !arg_0.a), vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.a.x, 14829u), vec2<u32>(4294967295u, 1u)) > arg_1.x, false), !select(!var_0.b.c, var_0.b.c, var_0.a)), arg_0.b.a.x);
    global0 = ~(-vec2<i32>(countOneBits(var_0.b.b.x), var_1.b.x)) & -arg_0.b.b.xy;
    let var_2 = !(!var_0.b.c.x);
    let var_3 = var_0.d.x;
    return select(-2147483647i, var_1.b.x, !(64089u <= _wgslsmith_div_u32(1u, 17521u >> (var_0.b.a.x % 32u))));
}

fn func_2() -> vec2<i32> {
    global0 = vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(-abs(vec2<i32>(global0.x, 0i)), vec2<i32>(global0.x, global0.x));
    global0 = vec2<i32>(-_wgslsmith_sub_i32(-global0.x, ~98692i | global0.x), -_wgslsmith_mod_i32(func_3(Struct_2(true, Struct_1(vec3<u32>(u_input.b, 86743u, u_input.a), vec3<i32>(global0.x, 9071i, -31310i), vec2<bool>(false, false), u_input.b), -1000f, vec2<f32>(-1228f, -918f)), ~vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a)), _wgslsmith_div_i32(0i, global0.x << (u_input.a % 32u))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-177f))));
    var_0 = -402f;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818f * _wgslsmith_f_op_f32(abs(438f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(905f)) - 773f) - -1451f), 1000f, -1976f);
    return firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(-1i, _wgslsmith_div_i32(select(0i, 33177i, true), 1i), 1i), abs(-21899i)));
}

fn func_1() -> bool {
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.x), vec2<i32>(-2269i, -1i)), _wgslsmith_add_i32(firstLeadingBit(1i), ~global0.x)) >> (vec2<u32>(u_input.b, _wgslsmith_add_u32(5018u, _wgslsmith_sub_u32(36196u, u_input.b))) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, 0i), vec2<i32>(global0.x, global0.x))), countOneBits(_wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, global0.x), -vec2<i32>(2147483647i, 0i)))));
    global0 = ~func_2();
    global0 = (_wgslsmith_sub_vec2_i32(vec2<i32>(-59909i, global0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(1363i, 0i) & vec2<i32>(global0.x, -1i), ~vec2<i32>(global0.x, global0.x))) >> (~select(vec2<u32>(30609u, u_input.b) & vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, u_input.b), vec2<bool>(false, false)) % vec2<u32>(32u))) | reverseBits(~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, global0.x), vec2<i32>(-2147483647i, global0.x)), -vec2<i32>(global0.x, -1i)));
    let var_0 = Struct_1(_wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(2973u, u_input.b, 1u), vec3<u32>(u_input.a, 57457u, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 110680u, u_input.a), vec3<u32>(4294967295u, 4294967295u, u_input.b)))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(u_input.a, u_input.b, 103216u)), min(vec3<u32>(30851u, 0u, 5720u), vec3<u32>(34950u, u_input.b, 59170u)))), vec3<i32>(-21911i, _wgslsmith_sub_i32(select(27331i, -2147483647i, false), global0.x), ~(-67574i)), select(vec2<bool>(true, true), vec2<bool>(true, false), true && (true && any(vec4<bool>(false, true, true, true)))), 1u);
    global0 = min(vec2<i32>(2147483647i, -firstTrailingBit(-2147483647i)), -vec2<i32>(abs(firstLeadingBit(-44713i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(global0.x, -2147483647i), global0.x)));
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    global0 = arg_1.b.xx;
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -623f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-867f)) * _wgslsmith_f_op_f32(min(1000f, 1262f)))))));
    var var_1 = arg_0.b.c.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1548f + 1121f)), _wgslsmith_f_op_f32(max(-620f, -208f)), arg_0.d.x) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c))), arg_0.d.x, arg_0.c))));
    let var_3 = arg_0.d.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(func_1(), Struct_1(vec3<u32>(44165u, reverseBits(u_input.a), ~u_input.a), ~vec3<i32>(global0.x, global0.x, -2147483647i), vec2<bool>(all(vec4<bool>(true, false, true, false)), global0.x > 27636i), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 43525u), vec3<u32>(u_input.b, u_input.a, u_input.a)))), 1055f, vec2<f32>(-192f, _wgslsmith_f_op_f32(1f - 1430f))), Struct_1(~vec3<u32>(abs(u_input.a), u_input.b, ~0u), ~_wgslsmith_mod_vec3_i32(select(vec3<i32>(-2147483647i, global0.x, global0.x), vec3<i32>(-9853i, global0.x, global0.x), false), vec3<i32>(-17830i, global0.x, global0.x)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), ~firstTrailingBit(u_input.b) ^ u_input.a));
    global0 = -(~func_2());
    let var_1 = ~abs(var_0.b.a);
    global0 = func_4(func_4(var_0, func_4(var_0, var_0.b).b), var_0.b).b.b.yy;
    global0 = -func_4(func_4(var_0, var_0.b), var_0.b).b.b.xy >> (vec2<u32>(~11248u, abs(~1u)) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, -663f)))), -1792f), _wgslsmith_f_op_f32(sign(var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1055f))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c))), -571f, -326f, 293f));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, i32(-1i) * -34812i, -19219i, _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.b, ~abs(u_input.b), var_0.b.d, ~47974u), (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.a, 0u), vec4<u32>(0u, 1u, u_input.b, 130341u), vec4<u32>(106791u, 1u, 4294967295u, u_input.a)) & (vec4<u32>(4294967295u, 4294967295u, var_1.x, var_1.x) & vec4<u32>(var_1.x, 18055u, 41927u, var_1.x))) >> (abs(vec4<u32>(var_1.x, var_1.x, 4294967295u, 6626u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 975f, var_0.c, 808f), var_2)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x), _wgslsmith_f_op_f32(sign(-580f)), -849f)))));
}

