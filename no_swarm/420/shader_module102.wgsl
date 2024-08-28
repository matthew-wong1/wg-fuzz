struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -718f) + 1587f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-374f, 891f))))) - _wgslsmith_f_op_f32(step(-1741f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(387f + -807f) + _wgslsmith_f_op_f32(f32(-1f) * -928f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -681f))))));
    global0 = vec4<i32>(1i, global0.x, max(_wgslsmith_dot_vec2_i32(abs(global0.yw), vec2<i32>(-36931i, global0.x)) >> (4967u % 32u), ~global0.x | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, global0.x) >> (u_input.d % vec2<u32>(32u)), global0.yx)), min(_wgslsmith_div_i32(global0.x, -35566i), abs(u_input.b.x)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1206f, _wgslsmith_f_op_f32(ceil(var_0))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 690f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(279f)) - -417f), Struct_1(abs(firstLeadingBit(vec2<i32>(-37989i, -71816i))), -firstTrailingBit(_wgslsmith_mod_i32(u_input.a, 31701i)), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), false), vec2<f32>(_wgslsmith_f_op_f32(498f * _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -1000f)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(12690u, u_input.d.x, u_input.c), vec3<u32>(4294967295u, u_input.c, 27092u)), vec3<u32>(4294967295u, u_input.d.x, u_input.c)) << (((u_input.c & u_input.c) & _wgslsmith_mult_u32(31369u, u_input.c)) % 32u)));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-123f, -778f)), var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * -656f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b)))), Struct_1(vec2<i32>(17358i, -60608i), ~var_1.c.b, vec4<bool>(any(vec3<bool>(var_1.c.c.x, var_1.c.c.x, var_1.c.c.x)), _wgslsmith_f_op_f32(sign(var_0)) > 1934f, _wgslsmith_add_u32(var_1.c.e, 6455u) < _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(13013u, 11092u)), var_1.c.c.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -898f))))), 15306u));
    var var_2 = _wgslsmith_clamp_u32(u_input.c, 4294967295u, min(abs(var_1.c.e | var_1.c.e), var_1.c.e << ((u_input.c ^ 0u) % 32u))) & u_input.d.x;
    return 2147483647i;
}

fn func_2() -> i32 {
    global0 = ~(-vec4<i32>(func_3(), global0.x, 2147483647i, 1i));
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>((_wgslsmith_sub_u32(u_input.d.x, u_input.d.x) << (reverseBits(u_input.d.x) % 32u)) ^ u_input.c, ~(~_wgslsmith_mod_u32(16438u, u_input.c)), u_input.c, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, ~u_input.c), 1u, 12723u)), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.c, 1u, u_input.d.x), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) >> (vec4<u32>(u_input.c, 56212u, 1u, u_input.d.x) % vec4<u32>(32u))), vec4<u32>(32337u, ~35183u, _wgslsmith_clamp_u32(u_input.c, u_input.c, 49009u), ~u_input.d.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -146f), vec2<f32>(-1332f, 1583f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2043f, 888f), vec2<f32>(1181f, -268f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-229f, 1165f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-608f, -1616f))))), _wgslsmith_f_op_f32(-2333f * 1486f), Struct_1(-_wgslsmith_sub_vec2_i32(-u_input.b.xx, countOneBits(u_input.b.yx)), -16154i, vec4<bool>(true, u_input.b.x <= u_input.a, true, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2570f, -199f))), select(abs(var_0.x), 5726u, true) << (var_0.x % 32u)));
    var var_2 = u_input.b;
    let var_3 = firstTrailingBit(max(~abs(var_0.xwz), vec3<u32>(_wgslsmith_dot_vec4_u32(var_0, firstTrailingBit(var_0)), 1u, ~85831u)));
    return -16302i;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<i32>) -> i32 {
    global0 = min(vec4<i32>(2147483647i | func_2(), min(1i & global0.x, arg_1.b), 2147483647i, -51580i), -vec4<i32>(u_input.b.x, 2972i & select(-12307i, 1i, arg_0.x), arg_1.b, global0.x));
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(select(_wgslsmith_add_u32(~arg_1.e, ~37429u), 6780u, all(vec2<bool>(false, arg_1.c.x))), 25024u), 0u, arg_1.e, abs(countOneBits(4294967295u)));
    var var_1 = arg_0.yx;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1f), arg_1.d.x), vec2<f32>(arg_1.d.x, _wgslsmith_f_op_f32(arg_1.d.x * arg_2.x)))), -737f, arg_1);
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(976f - arg_1.d.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.d.x, 127f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)))), var_2.a.x, arg_1.d.x)));
    return _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(global0.yyx), select(vec3<i32>(arg_1.b, -57278i, arg_3.x), u_input.b.zwy, vec3<bool>(var_2.c.c.x, true, arg_0.x))), abs(i32(-1i) * -5874i), u_input.a), 2175i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-vec2<i32>(-(i32(-1i) * -18527i), func_1(vec4<bool>(true, false, true, true), Struct_1(vec2<i32>(u_input.a, 1i), global0.x, vec4<bool>(true, true, true, false), vec2<f32>(-2111f, 463f), u_input.c), vec2<f32>(-932f, 1991f), vec4<i32>(u_input.a, -30860i, global0.x, -33442i)) | (31744i << (u_input.c % 32u))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-186f * -623f)))), -259f, Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, firstLeadingBit(var_0.x)), firstTrailingBit(vec2<i32>(var_0.x, 10183i)) << (vec2<u32>(19815u, 1u) % vec2<u32>(32u))), u_input.a, select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, any(vec2<bool>(false, false))), true || all(vec4<bool>(true, false, false, true))), vec2<f32>(-1106f, -617f), _wgslsmith_dot_vec2_u32(u_input.d, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 5861u), max(u_input.d, vec2<u32>(0u, u_input.c)), max(vec2<u32>(36685u, u_input.c), u_input.d)))));
    var_0 = vec2<i32>(1i, _wgslsmith_sub_i32(-130i, u_input.a) ^ global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~(~0u ^ ~var_1.c.e), var_1.c.e << (0u % 32u)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.x, var_0.x), _wgslsmith_dot_vec2_i32(var_1.c.a, firstLeadingBit(global0.xz))) >> (~(~85958u << (u_input.d.x % 32u)) % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -728f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -991f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_1.c.d.x)), var_1.a.x, var_1.c.c.x & false))))));
}

