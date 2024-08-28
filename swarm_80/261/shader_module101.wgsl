struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<f32>(-657f, 1121f, -659f), Struct_1(vec4<u32>(0u, 0u, 3458u, 60224u), 1u));

var<private> global1: Struct_4 = Struct_4(vec3<f32>(-371f, -255f, 658f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 54608u, 1u), 0u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<i32>) -> vec2<i32> {
    var var_0 = Struct_1(min(min(~vec4<u32>(global0.b.b, global1.b.b, 1u, 3443u), ~select(global1.b.a, vec4<u32>(4294967295u, 0u, global1.b.b, global0.b.b), arg_1)), ~firstTrailingBit(vec4<u32>(38570u, 4294967295u, 1u, global1.b.a.x)) << (vec4<u32>(~60845u, global1.b.b, _wgslsmith_add_u32(global1.b.b, global0.b.a.x), ~36399u) % vec4<u32>(32u))), global1.b.b);
    var var_1 = ~_wgslsmith_mult_i32(17866i, min(_wgslsmith_mult_i32(u_input.a, arg_2.x), _wgslsmith_sub_i32(1i, -1i)) & 1i);
    var_1 = 13593i;
    let var_2 = !(~var_0.a.x > var_0.b);
    var var_3 = _wgslsmith_mult_vec4_u32((var_0.a | vec4<u32>(33068u, _wgslsmith_div_u32(0u, var_0.a.x), ~10959u, 41653u)) | ~global1.b.a, vec4<u32>(~(~global0.b.a.x), abs(~(~global1.b.a.x)), 31427u, abs(~min(global1.b.a.x, global1.b.a.x))));
    return vec2<i32>(-1i, ~countOneBits(-49892i));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: bool, arg_3: vec2<i32>) -> vec2<i32> {
    global1 = Struct_4(global0.a, global0.b);
    global0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1192f, 158f) + _wgslsmith_div_f32(global0.a.x, arg_0))), _wgslsmith_f_op_f32(floor(global1.a.x)), -522f), Struct_1(~vec4<u32>(global1.b.a.x, 17065u, 40503u, global1.b.b) ^ vec4<u32>(~1u, arg_1.x, global1.b.b, _wgslsmith_clamp_u32(5381u, 0u, 0u)), global1.b.a.x));
    var var_0 = 1i & _wgslsmith_sub_i32(2147483647i, -_wgslsmith_clamp_i32(arg_3.x, u_input.a, 0i >> (0u % 32u)));
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 - global1.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1169f - global1.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -548f))))), global0.b);
    var_0 = -_wgslsmith_mod_i32(arg_3.x, u_input.a);
    return -vec2<i32>(_wgslsmith_mod_i32(42959i, u_input.a), max(-1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(70252i, 33505i), vec2<i32>(-8720i, u_input.a)))));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec2<i32>) -> vec4<u32> {
    var var_0 = !all(vec2<bool>(true, all(vec3<bool>(true, true, true))));
    global0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1604f), _wgslsmith_f_op_f32(f32(-1f) * -1304f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2421f - global0.a.x)))))), Struct_1(global1.b.a, 48671u));
    var var_1 = 1u;
    var var_2 = Struct_2(~u_input.a);
    let var_3 = global0.b;
    return _wgslsmith_div_vec4_u32(vec4<u32>(~arg_1.b.a.x, 4294967295u, var_3.b, 4294967295u), vec4<u32>(arg_1.b.a.x, arg_1.b.b, global0.b.a.x, abs(min(global0.b.a.x, global1.b.a.x))) ^ (arg_1.b.a | global1.b.a));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = global0.b.a;
    var_0 = func_5(25553i, Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-1500f * -1000f), global0.a.x), Struct_1(global1.b.a, global0.b.b)), func_4(800f, global1.b.a, true, -min(func_3(vec2<i32>(73829i, arg_2.a), true, vec4<i32>(-18896i, arg_2.a, arg_2.a, arg_1.a)), vec2<i32>(arg_1.a, arg_1.a) >> (vec2<u32>(21608u, var_0.x) % vec2<u32>(32u)))));
    var_0 = vec4<u32>(4294967295u, global0.b.a.x, var_0.x, ~1u);
    var_0 = _wgslsmith_mult_vec4_u32(~global1.b.a, _wgslsmith_add_vec4_u32(vec4<u32>(global1.b.b, var_0.x, 81114u, 56187u), ~global0.b.a) << (~global0.b.a % vec4<u32>(32u))) ^ vec4<u32>(firstTrailingBit(global0.b.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.a.x, var_0.x, 47037u, 103573u) << (vec4<u32>(global1.b.a.x, global0.b.a.x, global1.b.b, 23793u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(global0.b.a, vec4<u32>(40401u, global0.b.b, global0.b.b, var_0.x))), select(select(global1.b.a, global0.b.a, arg_3), vec4<u32>(var_0.x, global1.b.a.x, global1.b.b, 4294967295u), select(vec4<bool>(false, false, false, true), arg_3, arg_3.x))), func_5(arg_1.a, Struct_4(vec3<f32>(-1111f, global0.a.x, global1.a.x), Struct_1(global0.b.a, var_0.x)), vec2<i32>(_wgslsmith_div_i32(-16192i, -10797i), abs(u_input.a))).x, _wgslsmith_dot_vec4_u32(global0.b.a, global0.b.a));
    let var_1 = select(arg_3.xxw, select(arg_3.wwx, !(!(!vec3<bool>(false, arg_0, arg_3.x))), -1i != arg_1.a), select(arg_3.wxx, arg_3.zwz, (75527u >> (global1.b.a.x % 32u)) < 27502u));
    return Struct_2(-1i);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>) -> vec3<i32> {
    global1 = arg_0;
    let var_0 = false;
    let var_1 = -546f;
    var var_2 = func_2(var_0, Struct_2(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(u_input.a, -1015i, -1i), reverseBits(1i ^ u_input.a))), Struct_2(_wgslsmith_add_i32(_wgslsmith_mult_i32(firstTrailingBit(u_input.a), 27641i), u_input.a)), vec4<bool>(var_0, !any(select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0))), true, !any(select(vec4<bool>(true, var_0, false, false), vec4<bool>(false, true, false, var_0), vec4<bool>(true, var_0, var_0, false)))));
    var var_3 = global0.a;
    return vec3<i32>(var_2.a, select(-1i, -62855i, true), 27024i);
}

fn func_6(arg_0: f32, arg_1: vec3<i32>, arg_2: u32, arg_3: f32) -> Struct_4 {
    var var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false))) || (_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-120f * global1.a.x) - arg_3)) >= arg_0);
    var_0 = true;
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-352f, -1000f, -212f) + vec3<f32>(-1006f, 1699f, global1.a.x)))) - _wgslsmith_f_op_vec3_f32(-global1.a)), Struct_1(~reverseBits(~vec4<u32>(51569u, global0.b.b, 11391u, arg_2)), 0u));
    global1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -455f)), 539f, _wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))), global0.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(145f, -1673f, true)), _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(-global0.a.x), -456f)))), vec4<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x * arg_3), -184f)), -356f, _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.a.x, 1543f, false)), _wgslsmith_f_op_f32(global1.a.x - -1424f))))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, global0.b.a.x <= global1.b.a.x, any(vec3<bool>(true, true, false))), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true)))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(var_1.x, -1402f, false)), _wgslsmith_f_op_f32(-arg_0), -602f))) - _wgslsmith_f_op_vec3_f32(trunc(var_1.wzw))), Struct_1(vec4<u32>(0u, 31541u, global0.b.a.x, 1u), global0.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(global0.a.x, _wgslsmith_add_vec3_i32(~(-func_1(Struct_4(vec3<f32>(global0.a.x, -1555f, global0.a.x), global0.b), vec4<u32>(global1.b.b, global0.b.b, global1.b.b, global1.b.b))), -reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(2147483647i, -14110i, u_input.a)))), global1.b.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.a.x)), _wgslsmith_f_op_f32(-global1.a.x)), -481f)))));
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.a.x, 1124f, global0.a.x), vec3<f32>(global0.a.x, global1.a.x, global0.a.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1327f, 1061f, 116f), _wgslsmith_f_op_vec3_f32(global0.a + global1.a))))), func_6(302f, select(~vec3<i32>(18911i, u_input.a, 14236i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, true)), func_5(35087i, func_6(-1331f, min(vec3<i32>(11793i, u_input.a, u_input.a), vec3<i32>(-40342i, u_input.a, u_input.a)), 16272u, _wgslsmith_f_op_f32(global1.a.x * -1000f)), vec2<i32>(-1i, select(u_input.a, u_input.a, false))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a.x)) + 1170f))).b);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.a.x)), 1966f));
    var var_1 = ~firstLeadingBit(~_wgslsmith_mod_vec4_u32(firstLeadingBit(global1.b.a), vec4<u32>(global1.b.b, global0.b.a.x, global0.b.b, global0.b.a.x)));
    var var_2 = 4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~(~11205u), var_1.x), vec2<u32>(4294967295u, reverseBits(global0.b.b)) >> ((global0.b.a.xx | vec2<u32>(34127u, global0.b.b)) % vec2<u32>(32u))) % 32u);
    var var_3 = func_6(_wgslsmith_f_op_f32(sign(729f)), firstLeadingBit(-func_1(Struct_4(vec3<f32>(global0.a.x, global0.a.x, global1.a.x), global1.b), firstTrailingBit(global1.b.a))), 3595u, _wgslsmith_f_op_f32(global1.a.x * 670f));
    var var_4 = func_6(_wgslsmith_f_op_f32(-global1.a.x), ~firstLeadingBit(select(firstTrailingBit(vec3<i32>(u_input.a, 29432i, u_input.a)), vec3<i32>(u_input.a, -25353i, u_input.a) << (var_1.zyz % vec3<u32>(32u)), true)), ~var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(668f)), _wgslsmith_f_op_f32(var_3.a.x * 265f)))).a;
    let var_5 = Struct_3(_wgslsmith_sub_vec4_i32(-reverseBits(select(vec4<i32>(-2147483647i, 26881i, -42310i, u_input.a), vec4<i32>(49174i, 42718i, u_input.a, u_input.a), vec4<bool>(true, false, true, true))), -_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, 40804i, 2147483647i, -19441i), ~vec4<i32>(2147483647i, u_input.a, 1i, u_input.a))), Struct_1(vec4<u32>(func_6(-454f, vec3<i32>(u_input.a, -51780i, u_input.a) >> (global1.b.a.zww % vec3<u32>(32u)), ~var_3.b.a.x, -727f).b.a.x, global1.b.b, 0u, 4294967295u), 51681u));
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(-1649f * 1498f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * 1f) * global0.a.x) + 1490f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(578f, _wgslsmith_f_op_f32(floor(var_6.x)), var_4.x, _wgslsmith_f_op_f32(sign(var_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-636f))), ~(~var_1.xy) >> (~vec2<u32>(global0.b.a.x, var_3.b.a.x) % vec2<u32>(32u)), var_3.b.b);
}

