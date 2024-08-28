struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
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

var<private> global0: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(floor(-204f));
    var var_1 = Struct_1(abs(vec4<i32>(u_input.a.x, global0.b.c.x, _wgslsmith_dot_vec3_i32(global0.b.c.xyy, vec3<i32>(u_input.c, u_input.d, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-4545i, global0.b.c.x, 54260i, global0.b.c.x), firstTrailingBit(global0.b.c)))), !global0.b.b || true, firstLeadingBit(-_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(global0.b.c, vec4<i32>(2147483647i, u_input.d, -4902i, global0.b.a.x)), global0.b.a)), !vec2<bool>(global0.b.d.x, all(vec2<bool>(false, false))));
    global0 = Struct_2(reverseBits(~global0.a), Struct_1(max(vec4<i32>(1i, -1i, -u_input.a.x, global0.b.a.x), ~vec4<i32>(global0.b.a.x, 1i, var_1.c.x, -2147483647i)), any(vec4<bool>(var_0 != -385f, !global0.b.d.x, global0.b.d.x, var_1.b)), ~abs(-global0.b.c), !var_1.d), _wgslsmith_f_op_f32(abs(-933f)));
    var var_2 = abs(var_1.c.x) > u_input.d;
    var var_3 = !vec2<bool>(false, any(select(vec4<bool>(true, true, var_1.d.x, true), vec4<bool>(false, global0.b.b, global0.b.d.x, var_1.d.x), vec4<bool>(global0.b.d.x, true, global0.b.b, false))) | true);
    return vec4<u32>(global0.a.x, ~(~u_input.b), ~reverseBits(reverseBits(u_input.b) | ~global0.a.x), global0.a.x);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>) -> vec4<u32> {
    global0 = Struct_2(abs(~(~(~vec4<u32>(4294967295u, u_input.b, global0.a.x, 47534u)))), global0.b, 937f);
    let var_0 = Struct_1(~(global0.b.a & abs(vec4<i32>(global0.b.a.x, u_input.a.x, global0.b.c.x, global0.b.a.x))), true, vec4<i32>(u_input.c, global0.b.a.x, -u_input.c, -10953i), select(vec2<bool>(true, global0.b.b), global0.b.d, !(!global0.b.d)));
    var var_1 = !vec3<bool>(40764u == arg_0, (_wgslsmith_div_i32(global0.b.c.x, -2147483647i) <= select(1i, 21868i, var_0.b)) || (true && global0.b.b), var_0.b & all(vec3<bool>(global0.b.d.x, false, false)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1135f, -2571f)))) + vec2<f32>(global0.c, global0.c)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, _wgslsmith_div_f32(-416f, global0.c)) * vec2<f32>(_wgslsmith_f_op_f32(-global0.c), 118f)))));
    global0 = Struct_2(_wgslsmith_div_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, arg_0, 39200u, arg_0), ~global0.a), _wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_1.x, arg_0, 50388u), global0.a), select(select(vec4<bool>(var_0.b, true, var_1.x, false), vec4<bool>(true, global0.b.b, false, false), vec4<bool>(true, false, global0.b.b, global0.b.b)), !vec4<bool>(true, false, true, var_1.x), true)), _wgslsmith_add_vec4_u32(min(vec4<u32>(12338u, 13814u, global0.a.x, 51552u), arg_1) ^ global0.a, vec4<u32>(0u | u_input.b, u_input.b, ~4294967295u, firstLeadingBit(18092u)))), var_0, 1137f);
    return countOneBits(abs(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 106966u, 99126u), ~vec4<u32>(u_input.b, arg_1.x, u_input.b, u_input.b))));
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(global0.a, Struct_1(vec4<i32>(max(_wgslsmith_dot_vec3_i32(global0.b.a.xwy, vec3<i32>(2317i, u_input.d, u_input.d)), _wgslsmith_sub_i32(global0.b.a.x, -1i)), ~u_input.a.x, global0.b.c.x, -global0.b.c.x), global0.b.d.x, ~_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.b.c.x, global0.b.a.x, 0i, global0.b.a.x), vec4<i32>(-2147483647i, global0.b.a.x, u_input.d, u_input.a.x)), vec4<i32>(global0.b.a.x, -14958i, -1i, u_input.a.x)), vec2<bool>(select(true, false, false) && global0.b.d.x, ~46668u != _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 22234u, global0.a.x), vec3<u32>(4294967295u, global0.a.x, global0.a.x)))), _wgslsmith_f_op_f32(967f - -994f));
    global0 = Struct_2(_wgslsmith_mod_vec4_u32(func_4(~countOneBits(global0.a.x), func_3(vec3<f32>(922f, global0.c, -2585f), vec4<f32>(global0.c, global0.c, 331f, 1471f)) | _wgslsmith_sub_vec4_u32(global0.a, global0.a)), global0.a << (vec4<u32>(_wgslsmith_add_u32(88323u, 31448u), ~38202u, 4294967295u, abs(u_input.b)) % vec4<u32>(32u))), global0.b, -197f);
    var var_0 = Struct_2(min(~(~vec4<u32>(global0.a.x, global0.a.x, 46148u, 69541u)) & ~reverseBits(vec4<u32>(global0.a.x, u_input.b, global0.a.x, global0.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u >> (u_input.b % 32u), 53410u, u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b)), vec4<u32>(u_input.b >> (global0.a.x % 32u), u_input.b, ~52306u, u_input.b))), global0.b, _wgslsmith_f_op_f32(ceil(global0.c)));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c, -2403f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -488f) - vec2<f32>(global0.c, var_0.c)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1395f, 438f), vec2<f32>(-533f, 1044f)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1292f, global0.c)) * vec2<f32>(global0.c, var_0.c)))), select(select(!global0.b.d, select(var_0.b.d, vec2<bool>(global0.b.b, global0.b.d.x), global0.b.b), select(vec2<bool>(global0.b.d.x, var_0.b.d.x), vec2<bool>(global0.b.b, var_0.b.b), var_0.b.d)), select(!vec2<bool>(var_0.b.b, global0.b.d.x), select(var_0.b.d, vec2<bool>(var_0.b.d.x, global0.b.d.x), var_0.b.d), global0.b.d.x && true), false)))));
    var_0 = Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.a, countOneBits(vec4<u32>(34788u, 4294967295u, global0.a.x, var_0.a.x))), ~global0.a), global0.b, -468f);
    return Struct_2(abs(vec4<u32>(~global0.a.x, ~32971u, u_input.b, _wgslsmith_mod_u32(var_0.a.x >> (var_0.a.x % 32u), _wgslsmith_mult_u32(global0.a.x, global0.a.x)))), global0.b, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(min(1000f, 1f))));
}

fn func_1() -> bool {
    var var_0 = func_2();
    var_0 = Struct_2(vec4<u32>(83483u, 4294967295u, u_input.b << (0u % 32u), countOneBits(func_2().a.x ^ 1u)), func_2().b, 156f);
    var var_1 = u_input.a.x;
    var var_2 = global0.a.x;
    let var_3 = -684f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<u32>(~(~global0.a.x), ~global0.a.x, 1u, ~(~(~global0.a.x))), global0.b, global0.c);
    global0 = var_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-125f, var_0.c, global0.c, 1058f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, 1000f, global0.c, global0.c), vec4<f32>(-407f, var_0.c, var_0.c, -1108f)))) * vec4<f32>(var_0.c, _wgslsmith_f_op_f32(sign(global0.c)), _wgslsmith_f_op_f32(-var_0.c), 1000f)), select(vec4<bool>(var_0.b.b, !any(vec3<bool>(false, false, global0.b.d.x)), !global0.b.b, func_1()), select(select(select(vec4<bool>(global0.b.b, global0.b.d.x, global0.b.d.x, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(var_0.b.d.x, var_0.b.d.x, var_0.b.d.x, var_0.b.d.x), vec4<bool>(global0.b.d.x, var_0.b.d.x, false, var_0.b.d.x), vec4<bool>(global0.b.d.x, true, true, true)), false), !vec4<bool>(global0.b.b, global0.b.d.x, true, var_0.b.d.x), func_1()), true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))));
    global0 = func_2();
    var var_3 = func_2();
    let var_4 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-268f);
}

