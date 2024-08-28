struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<f32>(-849f, 1598f), -17386i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_3(firstLeadingBit(~((u_input.c.xw >> (vec2<u32>(u_input.a, u_input.b.x) % vec2<u32>(32u))) | vec2<i32>(-42891i, arg_1.x))), Struct_2(select(select(!vec4<bool>(arg_2.x, false, true, true), vec4<bool>(false, arg_2.x, false, false), arg_2.x), select(select(vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), true), !vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), select(vec4<bool>(false, false, true, false), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), false)), vec4<bool>(true, global0.a.x < global0.a.x, arg_2.x, arg_2.x))));
    global0 = Struct_4(global0.a, firstTrailingBit(-_wgslsmith_div_i32(_wgslsmith_mod_i32(global0.b, arg_1.x), i32(-1i) * -2006i)));
    var var_1 = arg_2.x;
    var_1 = true;
    let var_2 = var_0.a >> (~_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(1u, _wgslsmith_sub_u32(u_input.a, 1u))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, arg_1), global0.a)))), !(u_input.b.x >= ~22377u))), global0.b);
    var var_0 = select(!vec3<bool>(any(vec4<bool>(true, false, true, true)), arg_1 < _wgslsmith_f_op_f32(-arg_1), all(vec3<bool>(true, false, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(global0.b > global0.b, true, true), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, all(vec2<bool>(false, true)), false), true), true);
    let var_1 = Struct_2(!vec4<bool>(var_0.x, false, arg_1 < _wgslsmith_div_f32(arg_1, 1197f), any(select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, false, var_0.x), var_0.x))));
    let var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0, firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(7883u, u_input.b.x), vec2<u32>(0u, u_input.b.x) & vec2<u32>(u_input.b.x, 4294967295u), u_input.b))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x & 45045u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(1u, 47467u))), u_input.b));
    let var_3 = global0.a.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a.x)) + _wgslsmith_f_op_f32(step(-291f, _wgslsmith_f_op_f32(step(521f, global0.a.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-780f + _wgslsmith_f_op_f32(f32(-1f) * -1499f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1267f))))));
    return _wgslsmith_dot_vec4_u32(min(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, var_2.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 4294967295u, 1u, var_2.x))), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(46406u, 45051u, 23492u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(23511u, u_input.b.x, 1u, 4583u), vec4<u32>(44204u, 30052u, 52816u, arg_0.x))) >> (vec4<u32>(_wgslsmith_div_u32(var_2.x, var_2.x), 4294967295u, countOneBits(arg_0.x), u_input.a) % vec4<u32>(32u))), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 4294967295u, 3614u) << (vec3<u32>(73121u, 17893u, u_input.a) % vec3<u32>(32u)), vec3<u32>(u_input.a, 18614u, 22893u) & vec3<u32>(1u, 0u, 40207u)) >> (arg_0.x % 32u), ~arg_0.x, firstTrailingBit(1u)));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = u_input.c;
    var var_2 = Struct_2(vec4<bool>(!var_0.a, any(select(select(vec2<bool>(false, false), vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, arg_0.a)), select(vec2<bool>(var_0.a, arg_0.a), vec2<bool>(var_0.a, false), vec2<bool>(false, var_0.a)), arg_0.a && var_0.a)), var_0.a, arg_0.a));
    var_2 = Struct_2(!select(vec4<bool>(any(var_2.a), any(vec2<bool>(true, var_2.a.x)), true, arg_0.a), !select(var_2.a, vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, false), var_0.a), true));
    var_1 = ~(~((select(arg_0.e, vec4<i32>(var_0.e.x, u_input.c.x, arg_0.e.x, 2147483647i), false) & ~arg_0.e) >> (vec4<u32>(_wgslsmith_div_u32(u_input.a, 0u), ~92905u, _wgslsmith_div_u32(u_input.b.x, var_0.b), _wgslsmith_sub_u32(var_0.b, arg_0.c)) % vec4<u32>(32u))));
    return var_0.e;
}

fn func_1() -> vec2<f32> {
    global0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(-global0.b, countOneBits(u_input.c.wy), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))), global0.a.x)), 1158f), 6491i);
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(887f, 449f, 1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.a.x, -1235f))))))));
    var var_1 = Struct_1(all(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true)), reverseBits(u_input.b.x), u_input.b.x, countOneBits(~_wgslsmith_mod_u32(u_input.a, u_input.b.x) >> ((_wgslsmith_div_u32(u_input.a, 20216u) ^ ~4294967295u) % 32u)), func_4(Struct_1(true, _wgslsmith_div_u32(firstLeadingBit(32913u), func_3(u_input.b, global0.a.x)), ~u_input.a, func_3(u_input.b, global0.a.x), select(_wgslsmith_mod_vec4_i32(vec4<i32>(20655i, 0i, global0.b, -11193i), vec4<i32>(-24706i, 0i, global0.b, u_input.c.x)), vec4<i32>(global0.b, u_input.c.x, global0.b, 16572i), true))));
    var_1 = Struct_1(false, ~(~(~var_1.b)) << (~11154u % 32u), 0u, u_input.b.x, vec4<i32>(_wgslsmith_mult_i32(countOneBits(max(global0.b, global0.b)), _wgslsmith_mod_i32(u_input.c.x, 10723i) << (~var_1.b % 32u)), reverseBits(select(0i, -26863i, false) ^ ~var_1.e.x), -(u_input.c.x >> (4294967295u % 32u)), 8022i));
    var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -102f))) * -1000f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(638f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1010f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(global0.b, u_input.c.wz, vec3<bool>(false, var_1.a, false))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1497f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1053f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.x, -485f, var_0.x))) + vec3<f32>(var_0.x, 1198f, var_0.x))))), _wgslsmith_div_i32(~17680i ^ -var_1.e.x, var_1.e.x) != u_input.c.x));
    return vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1049f * _wgslsmith_f_op_f32(-global0.a.x)) - 1000f), _wgslsmith_f_op_f32(-global0.a.x))), 513f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1306f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(592f, 1000f), global0.a)))) + _wgslsmith_f_op_vec2_f32(func_1())), u_input.c.x);
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(268f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -308f)))))), u_input.c.x);
    let var_0 = _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(-751f + 257f)));
    var var_1 = vec3<u32>(u_input.b.x, ~(~(~53322u)), u_input.b.x);
    var var_2 = vec3<u32>(0u, _wgslsmith_clamp_u32(1u, 43608u, _wgslsmith_add_u32(u_input.a, ~var_1.x << (countOneBits(u_input.a) % 32u))), u_input.b.x);
    var var_3 = abs(58010u);
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.a))), -2147483647i ^ global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(1662f, -186f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, global0.a.x))), vec2<f32>(1061f, 793f))) - _wgslsmith_f_op_vec2_f32(global0.a * global0.a))), global0.a.x, u_input.c.zzy, ~(26632i >> (~4294967295u % 32u)), min(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a, 4294967295u, 26646u)), vec3<u32>(~1u, abs(0u), var_2.x << (var_1.x % 32u)), ~(vec3<u32>(var_2.x, u_input.b.x, 54149u) ^ vec3<u32>(21302u, u_input.b.x, u_input.b.x))), firstLeadingBit(vec3<u32>(1u >> (var_1.x % 32u), u_input.b.x, _wgslsmith_mod_u32(var_1.x, var_2.x)))));
}

