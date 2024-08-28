struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(10305u, 0u), vec4<i32>(-42963i, 2147483647i, i32(-2147483648), -36816i), false, 33837u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    global0 = Struct_1(vec2<u32>(u_input.d.x, u_input.d.x), global0.b, any(!select(vec4<bool>(true, false, false, global0.c), vec4<bool>(true, false, false, global0.c), true)), 4294967295u << (abs(_wgslsmith_sub_u32(select(1u, global0.a.x, global0.c), 21769u)) % 32u));
    var var_0 = select(select(!vec4<bool>(true, all(vec3<bool>(true, true, global0.c)), false, true), !vec4<bool>(global0.c, !global0.c, u_input.c > -64489i, false), global0.c), select(!vec4<bool>(global0.b.x == 0i, !global0.c, all(vec3<bool>(true, true, true)), any(vec3<bool>(false, global0.c, global0.c))), vec4<bool>(all(select(vec4<bool>(global0.c, global0.c, true, global0.c), vec4<bool>(global0.c, global0.c, global0.c, global0.c), global0.c)), select(true, true, true), any(!vec3<bool>(global0.c, global0.c, global0.c)), !(!global0.c)), global0.a.x < ~(global0.d | 41234u)), ((_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.a.x, u_input.d.x, global0.d)) << (1u % 32u)) << (~global0.d % 32u)) <= ~(~1u));
    var_0 = vec4<bool>(false, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-413f, -261f)) + -162f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-513f)), _wgslsmith_f_op_f32(step(140f, -142f)))) <= _wgslsmith_f_op_f32(floor(-212f)), var_0.x);
    let var_1 = Struct_1(_wgslsmith_mod_vec2_u32(u_input.d.xx, vec2<u32>(~u_input.d.x, 16737u >> (_wgslsmith_mult_u32(7082u, u_input.b.x) % 32u))), select(global0.b, global0.b, !any(vec4<bool>(false, global0.c, false, true))), !global0.c, 0u);
    global0 = var_1;
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(-582f)), _wgslsmith_f_op_f32(581f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f), 338f)), -374f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(246f))), -1185f)));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.d.yx) << ((vec2<u32>(70786u, global0.d) | u_input.d.yx) % vec2<u32>(32u))), u_input.b, max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 39099u), vec2<u32>(0u, 0u), vec2<u32>(0u, global0.d)), u_input.a.xy)), reverseBits(global0.b >> (vec4<u32>(9395u, u_input.d.x, 33971u, 19811u >> (global0.a.x % 32u)) % vec4<u32>(32u))), true, 31760u);
    let var_1 = Struct_1(~u_input.d.yz, -(global0.b & (min(global0.b, vec4<i32>(var_0.b.x, global0.b.x, 33190i, -2147483647i)) >> (~vec4<u32>(4294967295u, u_input.a.x, var_0.a.x, 4294967295u) % vec4<u32>(32u)))), any(vec2<bool>(true, any(vec2<bool>(global0.c, false)))) || true, 4294967295u);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - vec4<f32>(_wgslsmith_f_op_f32(trunc(621f)), _wgslsmith_f_op_f32(abs(1048f)), -1449f, 1000f))));
    global0 = Struct_1(~u_input.b ^ ~vec2<u32>(var_1.a.x << (var_1.d % 32u), 1u), abs(vec4<i32>(u_input.c, u_input.c, -16244i, 57805i) & vec4<i32>(-23854i, 0i, u_input.c, u_input.c)) & vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, var_1.b.x, -2147483647i), var_1.b), -var_0.b), _wgslsmith_add_i32(15799i, ~0i), _wgslsmith_dot_vec3_i32(var_0.b.zxw, vec3<i32>(global0.b.x, u_input.c, -2147483647i)), 28070i), all(vec2<bool>(!var_0.c, all(vec2<bool>(true, var_0.c)))), _wgslsmith_div_u32(~var_1.a.x, ~var_0.d) >> (global0.d % 32u));
    var var_3 = global0.b.x;
    return min(u_input.c, -(~(~78924i) ^ reverseBits(-var_0.b.x)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0);
    global0 = Struct_1(~abs(vec2<u32>(u_input.b.x, _wgslsmith_div_u32(57651u, global0.a.x))), global0.b, all(!(!vec3<bool>(global0.c, true, global0.c))), ~global0.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(561f, 307f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) - _wgslsmith_f_op_f32(max(arg_0, arg_0)))));
    var var_2 = min(vec2<i32>(~min(-52923i, -47424i), _wgslsmith_mod_i32(select(-global0.b.x, u_input.c & 34337i, global0.c), func_2())), global0.b.zy);
    var_2 = vec2<i32>(u_input.c, 2147483647i);
    return Struct_1(~global0.a, -vec4<i32>(~(~u_input.c), 2147483647i, firstTrailingBit(u_input.c), global0.b.x), all(select(vec3<bool>(true, 36148u < global0.d, all(vec4<bool>(global0.c, global0.c, global0.c, global0.c))), vec3<bool>(!global0.c, arg_0 < 1103f, true), true)), ~(~(~global0.a.x)) | ~global0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_add_u32(_wgslsmith_mod_u32(~global0.d, 35909u), u_input.a.x) | global0.d);
    global0 = Struct_1(~abs(vec2<u32>(global0.a.x, u_input.a.x)), global0.b, !(_wgslsmith_f_op_f32(f32(-1f) * -1365f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-576f)))), 0u);
    global0 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-523f * -1128f))));
    global0 = Struct_1(global0.a, -(~abs(global0.b) | global0.b), all(vec3<bool>(true, all(vec3<bool>(false, global0.c, false)), (global0.d ^ 4294967295u) < 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(select(55498u, var_0 >> (var_0 % 32u), func_1(624f).c), 75586u, var_0 ^ u_input.d.x, ~_wgslsmith_div_u32(var_0, u_input.b.x)), abs(~(~vec4<u32>(global0.d, var_0, 1u, 1u)))));
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.d, ~16428u) & _wgslsmith_sub_vec2_u32(vec2<u32>(global0.d, 12943u), ~global0.a), func_1(1f).a), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(898f, -1539f, false)), _wgslsmith_f_op_f32(select(-1427f, 1026f, global0.c)))) - _wgslsmith_f_op_f32(-487f - _wgslsmith_f_op_vec4_f32(func_3()).x))).b, true, ~u_input.a.x >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(16862u, 1u, 30347u, 0u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(8774u, 4521u, u_input.b.x, 2471u), vec4<u32>(20970u, var_0, global0.a.x, u_input.b.x), vec4<u32>(u_input.d.x, 5288u, var_0, 63789u)), firstLeadingBit(vec4<u32>(global0.a.x, global0.d, 53048u, 1u))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(-min(abs(global0.b), reverseBits(global0.b)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.b.x, -2147483647i, global0.b.x), countOneBits(global0.b)), abs(global0.b.x), -12528i ^ global0.b.x, countOneBits(124347i))), _wgslsmith_dot_vec3_u32(u_input.a, u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), _wgslsmith_sub_i32(u_input.c, global0.b.x));
}

