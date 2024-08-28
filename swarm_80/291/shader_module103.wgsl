struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> vec3<u32> {
    global0 = firstTrailingBit(min(select(vec4<u32>(~global0.x, _wgslsmith_clamp_u32(1u, arg_2.b, global0.x), arg_2.b, 1u), vec4<u32>(arg_2.b, ~u_input.e, 0u, 0u), false), ~(vec4<u32>(1u, arg_2.b, global0.x, 6855u) ^ vec4<u32>(u_input.b, u_input.a, 4294967295u, 11142u)) ^ vec4<u32>(u_input.b, 37076u, _wgslsmith_mult_u32(1u, global0.x), ~arg_0.b)));
    let var_0 = arg_2;
    global0 = vec4<u32>(0u, select(countOneBits(4294967295u) >> (global0.x % 32u), arg_2.b, true), firstLeadingBit(~0u), max(0u, 57494u) ^ _wgslsmith_clamp_u32(~1u, 0u, global0.x)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.b, 76692u, 4294967295u, arg_2.b) ^ vec4<u32>(u_input.a, global0.x, var_0.b, global0.x), vec4<u32>(12203u, arg_2.b, arg_0.b, arg_2.b), vec4<bool>(false, false, true, false)), ~(~vec4<u32>(u_input.b, global0.x, 29470u, 4294967295u))), u_input.a, reverseBits(4294967295u << (u_input.b % 32u)), _wgslsmith_sub_u32(var_0.b, _wgslsmith_add_u32(max(0u, arg_2.b), firstLeadingBit(1u)))) % vec4<u32>(32u));
    let var_1 = firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(15118i, 0i)), u_input.c.zx & u_input.d.zw), min(u_input.c.x, -1i) << (arg_0.b % 32u)), u_input.c.x, -26746i, ~u_input.c.x));
    var var_2 = vec4<u32>(33257u ^ _wgslsmith_clamp_u32(reverseBits(~global0.x), _wgslsmith_add_u32(reverseBits(arg_0.b), abs(u_input.a)), ~var_0.b), arg_2.b, 92475u, countOneBits(1u));
    return vec3<u32>(18596u, 22418u, _wgslsmith_add_u32(0u, u_input.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = true;
    let var_1 = arg_0.a.x;
    global0 = ~vec4<u32>(1u, ~arg_2.a.x >> (global0.x % 32u), abs(u_input.e), abs(arg_2.c.x));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f)), _wgslsmith_f_op_f32(-1522f + _wgslsmith_f_op_f32(912f * arg_2.b)), var_1);
    let var_3 = Struct_2(vec3<f32>(var_1, var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(arg_2.b, arg_0.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(2247f))))))));
    return ~u_input.e;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = ~u_input.b;
    global0 = vec4<u32>((0u ^ abs(u_input.b)) | _wgslsmith_dot_vec4_u32((vec4<u32>(4294967295u, 1u, 32185u, global0.x) << (vec4<u32>(71697u, 58822u, global0.x, u_input.b) % vec4<u32>(32u))) >> (vec4<u32>(global0.x, 93417u, u_input.a, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(global0.x, 4294967295u, 0u, global0.x) >> ((vec4<u32>(65449u, 0u, 1u, 26576u) & vec4<u32>(4294967295u, 8503u, global0.x, u_input.e)) % vec4<u32>(32u))), _wgslsmith_sub_u32(0u, func_4(Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1346f, 482f, -740f)))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-582f, -690f, -430f))), Struct_1(func_3(Struct_4(Struct_2(vec3<f32>(-354f, -471f, -839f)), 29163u), Struct_2(vec3<f32>(-1647f, 1716f, -716f)), Struct_4(Struct_2(vec3<f32>(1000f, 753f, 1173f)), global0.x)), _wgslsmith_f_op_f32(round(-1268f)), vec4<u32>(16130u, 0u, global0.x, u_input.a)))), 52056u, ~(~abs(~global0.x)));
    var_0 = ~_wgslsmith_clamp_u32(~35930u, 55917u, global0.x);
    return firstLeadingBit(firstLeadingBit(~u_input.a));
}

fn func_1() -> vec4<u32> {
    let var_0 = vec4<u32>(func_2(abs(~(-u_input.d.x))), abs(29514u), 47456u, _wgslsmith_mult_u32(~global0.x, ~global0.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(222f, 832f))))))));
    global0 = countOneBits(abs(abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, var_0.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 0u, 0u)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(791f * 1286f) + _wgslsmith_f_op_f32(f32(-1f) * -2028f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f) + -683f), all(vec4<bool>(true, true, true, true)))) - _wgslsmith_f_op_f32(step(-527f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(608f, -2364f))))))));
    let var_2 = Struct_3(Struct_1(min(~vec3<u32>(global0.x, 0u, u_input.e), ~global0.yzx) & _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(u_input.e, global0.x, u_input.e)), global0.wyw), _wgslsmith_f_op_f32(ceil(-495f)), var_0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -881f))), -586f)));
    return ~vec4<u32>(29437u, func_2(-1i), 1u, ~global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_dot_vec3_u32(global0.zxz, _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(u_input.a, 0u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, u_input.e, u_input.a), global0.yzz))));
    var_0 = Struct_4(Struct_2(var_0.a.a), ~reverseBits(func_4(var_0.a, var_0.a, Struct_1(global0.xxw, 1578f, vec4<u32>(4822u, global0.x, 790u, 1u))) & u_input.b));
    let var_1 = Struct_3(Struct_1(vec3<u32>(_wgslsmith_add_u32(6031u, 23170u) >> (func_1().x % 32u), min(1u, ~1u), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), ~(~vec4<u32>(32131u, u_input.a, u_input.e, var_0.b) | ~vec4<u32>(52018u, var_0.b, 14216u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2456f + 587f) * -317f))));
    let var_2 = var_1.a;
    var var_3 = !vec2<bool>(!all(vec2<bool>(true, true)), true);
    var_0 = Struct_4(Struct_2(var_0.a.a), 4294967295u);
    var_3 = vec2<bool>(var_3.x, any(!vec3<bool>(true, true, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.a.yz * vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(sign(var_1.a.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(173f, var_2.b))), vec2<f32>(var_1.a.b, 1386f), vec2<bool>(var_3.x, var_3.x))))));
}

