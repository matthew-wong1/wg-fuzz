struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 35835u;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(28228u, 27426u), vec2<u32>(0u, 29397u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(32075u, 48403u), vec2<u32>(26695u, 39441u), vec2<u32>(0u, 8997u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(13362u, 1u), vec2<u32>(67909u, 24418u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 66548u), vec2<u32>(0u, 4294967295u));

var<private> global3: Struct_1 = Struct_1(-1212f, vec4<f32>(221f, -429f, -281f, 573f), 2147483647i, 1213f, 23963i);

var<private> global4: Struct_4;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(1430f));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1088f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.a.d, global4.a.a, global3.b.x, -1387f))))), _wgslsmith_f_op_vec4_f32(-global3.b))), u_input.b.x, _wgslsmith_f_op_f32(global3.d - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.a.d), 1f))), -(global3.c ^ -38179i));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.d, var_1.d)) * global4.a.d)))), u_input.b, vec4<i32>(-abs(global4.a.e), global3.e, 2147483647i, 8410i), true);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global3.b.zxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.b.yzy * global4.a.b.yxx)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-565f, -654f, global4.a.b.x)))))))));
    var var_4 = var_2.c.xw;
    return 886f;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = Struct_1(1000f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1198f + -687f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)) + arg_0.a), _wgslsmith_f_op_f32(-global4.a.d), global3.b.x), arg_2.x >> (_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 34221u), ~vec4<u32>(1u, u_input.a, 4294967295u, 0u))) % 32u), _wgslsmith_f_op_f32(max(1051f, _wgslsmith_f_op_f32(ceil(1399f)))), _wgslsmith_div_i32(-64437i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(abs(arg_0.c.xy), _wgslsmith_add_vec2_i32(u_input.b.zz, vec2<i32>(global3.c, arg_0.b.x))), u_input.b.xy)));
    var var_1 = (308u << (~_wgslsmith_add_u32(u_input.a, u_input.a) % 32u)) >> (4294967295u % 32u);
    let var_2 = -abs(arg_0.c.x);
    var var_3 = select(vec3<bool>(select(arg_0.d, !any(vec3<bool>(arg_0.d, false, true)), arg_1), any(!(!vec2<bool>(true, arg_0.d))), !((-51202i <= arg_2.x) & arg_1)), select(vec3<bool>(all(!vec3<bool>(arg_1, true, arg_0.d)), arg_1, false), vec3<bool>(arg_0.d || false, true, !any(vec2<bool>(arg_1, false))), all(select(!vec4<bool>(false, arg_0.d, arg_0.d, arg_0.d), select(vec4<bool>(false, arg_0.d, arg_0.d, arg_1), vec4<bool>(arg_1, arg_0.d, arg_1, arg_0.d), arg_1), vec4<bool>(arg_1, arg_0.d, true, arg_1)))), !(!vec3<bool>(global4.a.c <= -2147483647i, all(vec3<bool>(arg_1, true, true)), any(vec2<bool>(arg_1, arg_1)))));
    global3 = Struct_1(249f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(146f, var_0.a, 429f, global4.a.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, var_0.a, -1031f) * var_0.b), true)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(var_0.b, global4.a.b, vec4<bool>(true, false, false, false)))))))), abs(_wgslsmith_dot_vec2_i32(arg_0.b.xz, vec2<i32>(-50933i >> (u_input.a % 32u), _wgslsmith_mult_i32(2147483647i, global4.a.e)))), _wgslsmith_f_op_f32(arg_0.a + var_0.d), global4.a.c);
    return !vec3<bool>(!var_3.x, !all(select(vec2<bool>(arg_0.d, true), vec2<bool>(arg_1, true), true)), !select(-13145i != var_0.c, all(vec3<bool>(arg_0.d, var_3.x, var_3.x)), any(vec4<bool>(true, true, arg_1, true))));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    var var_0 = Struct_3(global4.a.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1040f), -264f)), global1[_wgslsmith_index_u32(arg_0, 7u)], select(!vec3<bool>(true, all(vec3<bool>(true, false, true)), true), func_4(Struct_2(_wgslsmith_f_op_f32(func_3()), -u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(global4.a.c, -41603i, 1i, 0i), vec4<i32>(0i, -33951i, global4.a.c, -2147483647i)), true), false, -u_input.b.xz), any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)))));
    var var_1 = u_input.a;
    let var_2 = Struct_3(-var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.b, 362f)), _wgslsmith_f_op_f32(exp2(var_0.b)))))), global4.a, var_0.d);
    var var_3 = firstTrailingBit(vec4<i32>(2147483647i, _wgslsmith_div_i32(reverseBits(21903i), global4.a.c) | -1i, select(max(-1i, -20503i), 1i & global4.a.c, true), countOneBits(-30522i >> (u_input.a % 32u))));
    var var_4 = var_2.c;
    return u_input.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(786f)) + global4.a.b.x), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(u_input.b) >> (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(1i, global3.c, global4.a.e)), u_input.b), min(vec4<i32>(~_wgslsmith_clamp_i32(global3.e, global3.c, -16805i), -1i, global4.a.c, u_input.b.x), firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(global3.c, 6796i, 0i, -54333i), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, global4.a.c, -26412i), vec4<i32>(-1i, 4316i, -1i, u_input.b.x))))), true);
    let var_1 = ~(func_2(21262u) & _wgslsmith_mult_vec3_i32(-abs(var_0.b), vec3<i32>(var_0.c.x, -u_input.b.x, -26776i)));
    var var_2 = ~vec4<u32>(~9883u, ~1u, ~(u_input.a >> (u_input.a % 32u)), abs(_wgslsmith_add_u32(22621u, 0u) ^ (u_input.a & 25402u)));
    global0 = u_input.a;
    let var_3 = select(select(select(vec3<bool>(func_4(Struct_2(var_0.a, vec3<i32>(25290i, global4.a.e, 10276i), vec4<i32>(var_1.x, u_input.b.x, 43427i, var_0.c.x), var_0.d), var_0.d, var_0.b.zx).x, false, true), select(!vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(var_0.d, var_0.d, var_0.d), all(vec3<bool>(true, false, false))), 17272i >= firstLeadingBit(u_input.b.x)), vec3<bool>(u_input.a != var_2.x, !var_0.d, false), var_0.d), vec3<bool>(var_0.d, true, any(vec4<bool>(false, true, var_0.d, true)) & any(select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, true)))), true);
    return global4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global3 = func_1(global3.b.wz, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global4.a.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b.x))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(global3.a - global3.a)), global4.a.d))));
    var var_1 = true;
    var var_2 = Struct_4(Struct_1(-755f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.a.b - vec4<f32>(1000f, global4.a.d, 882f, -118f))) - vec4<f32>(_wgslsmith_div_f32(-973f, -1504f), _wgslsmith_f_op_f32(-global4.a.b.x), _wgslsmith_f_op_f32(-209f - global4.a.b.x), global4.a.b.x)), 2147483647i, _wgslsmith_f_op_f32(step(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(730f, global3.b.x) + vec2<f32>(global4.a.d, 329f)), global3.b).b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1615f)))))), u_input.b.x ^ abs(func_1(global3.b.wz, global3.b).e)));
    global4 = Struct_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.a.b, vec4<f32>(1539f, 200f, 596f, global4.a.b.x), vec4<bool>(false, true, false, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1946f, var_2.a.a, -339f, 320f))), _wgslsmith_f_op_vec4_f32(global4.a.b - vec4<f32>(-1435f, -1041f, global4.a.a, 1000f)))), _wgslsmith_clamp_i32(min(u_input.b.x, global4.a.c), global3.c, _wgslsmith_sub_i32(~global3.c, -2147483647i)), global3.b.x, abs(_wgslsmith_add_i32(-var_2.a.e, 1i))));
    let var_3 = reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(43356u, u_input.a, 4381u, var_0), ~(~vec4<u32>(var_0, 103295u, 0u, var_0)))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a & 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 105509u, 4294967295u, 4294967295u), vec4<u32>(var_0, 22686u, u_input.a, u_input.a)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 4294967295u)), vec2<u32>(12107u, 66808u)), 1u), vec4<u32>(min(abs(17328u), 10518u), abs(abs(u_input.a)), var_0, ~_wgslsmith_mod_u32(u_input.a, var_0))) % vec4<u32>(32u));
    var var_4 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~var_3.x, 40024u, ~45435u, 25685u), ~(~(abs(vec4<u32>(62283u, u_input.a, 27661u, var_0)) << (~vec4<u32>(58965u, 4189u, 1u, u_input.a) % vec4<u32>(32u)))), var_3);
    let var_5 = vec2<u32>(var_3.x, ~69155u ^ u_input.a);
    var var_6 = _wgslsmith_mod_u32(var_0, ~4231u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~vec3<u32>(1u, 8798u, u_input.a))), _wgslsmith_mod_u32(40038u, var_3.x), u_input.b.x, abs(var_2.a.e), min(-min(abs(vec4<i32>(-85257i, u_input.b.x, -1i, global3.c)), vec4<i32>(global4.a.c, global3.e, global4.a.e, var_2.a.c)), -(vec4<i32>(-1i, var_2.a.e, u_input.b.x, global3.c) ^ ~vec4<i32>(global3.e, global3.c, u_input.b.x, global4.a.e))));
}

