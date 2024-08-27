struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(u_input.c ^ vec4<u32>(51380u, 1u, 48247u, 14340u), vec4<u32>(u_input.e.x, u_input.d, 1u, 49180u)) >> (u_input.c.x % 32u), arg_1.zyy, false, _wgslsmith_dot_vec4_i32(~arg_1, _wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_1.x, -1i, -2147483647i) & -vec4<i32>(-22530i, arg_3.x, arg_1.x, arg_1.x), max(vec4<i32>(arg_1.x, -8142i, arg_0, -2147483647i) >> (u_input.e % vec4<u32>(32u)), vec4<i32>(0i, arg_1.x, u_input.a.x, -5148i)))));
    let var_1 = select(vec2<bool>(!(~0u <= var_0.a), var_0.c), select(vec2<bool>(!any(vec3<bool>(var_0.c, var_0.c, var_0.c)), !(!var_0.c)), vec2<bool>(any(!vec4<bool>(var_0.c, var_0.c, false, var_0.c)), var_0.c), !(!select(vec2<bool>(true, var_0.c), vec2<bool>(false, false), vec2<bool>(false, var_0.c)))), vec2<bool>(all(vec3<bool>(var_0.c, !var_0.c, false)), var_0.c));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-682f, -178f, arg_2) + vec3<f32>(arg_2, arg_2, arg_2)))))));
    let var_3 = ~vec4<u32>(u_input.c.x, ~58457u, _wgslsmith_add_u32(u_input.c.x, max(min(4294967295u, u_input.e.x), _wgslsmith_add_u32(var_0.a, 15717u))), u_input.e.x);
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-206f + arg_2)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f));
}

fn func_3() -> bool {
    let var_0 = u_input.e.yx;
    let var_1 = 1000f;
    let var_2 = vec2<f32>(1000f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -141f), -970f)))));
    var var_3 = u_input.a.yz;
    let var_4 = firstLeadingBit(var_3.x);
    return !any(vec4<bool>(true, _wgslsmith_sub_u32(1u, var_0.x) <= ~var_0.x, any(vec3<bool>(true, true, false)), all(vec3<bool>(true, false, true))));
}

fn func_1() -> i32 {
    let var_0 = true;
    let var_1 = Struct_2(Struct_1(u_input.e.x, vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(2147483647i, 1i)), u_input.a.ww), u_input.a.x), var_0, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-u_input.a.x, firstTrailingBit(-2147483647i)), 1i, abs(-u_input.a.x))), u_input.e.xxw, _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(48151u, u_input.e.x, ~u_input.c.x, 39637u), u_input.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-180f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_i32(0i, u_input.a.x), vec4<i32>(-1i, 2147483647i, -1530i, u_input.a.x) >> (vec4<u32>(18252u, u_input.e.x, u_input.d, u_input.d) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_div_vec3_i32(u_input.a.xyy, u_input.a.yxy))))), countOneBits(u_input.a.xx));
    var var_2 = !select(!select(!vec3<bool>(var_1.a.c, var_1.a.c, var_0), !vec3<bool>(false, var_1.a.c, false), vec3<bool>(var_0, var_1.a.c, var_1.a.c)), !(!vec3<bool>(var_1.a.c, var_1.a.c, var_1.a.c)), !(any(vec2<bool>(var_1.a.c, true)) & any(vec2<bool>(var_0, true))));
    var var_3 = false;
    var var_4 = all(!select(vec4<bool>(func_3(), true, var_0, func_3()), !select(vec4<bool>(var_1.a.c, false, false, var_2.x), vec4<bool>(var_2.x, var_0, var_0, true), vec4<bool>(var_2.x, var_1.a.c, true, true)), vec4<bool>(all(vec3<bool>(var_0, var_0, var_2.x)), false, u_input.a.x == u_input.a.x, true)));
    return u_input.a.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec4<i32>, arg_3: u32) -> StorageBuffer {
    let var_0 = reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(u_input.c), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d, u_input.e.x, 66747u, 33626u), vec4<u32>(0u, arg_3, 0u, u_input.c.x) ^ vec4<u32>(1u, 27677u, arg_3, arg_3))), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 0u, 4294967295u, u_input.e.x), vec4<u32>(58792u, arg_3, 38689u, u_input.c.x), ~u_input.e), vec4<u32>(_wgslsmith_mod_u32(1u, 11617u), 1u, ~arg_3, _wgslsmith_add_u32(u_input.b, arg_3)))));
    let var_1 = !arg_1;
    var var_2 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(max(u_input.c.x, 40472u), arg_3) ^ reverseBits(arg_3), _wgslsmith_mod_u32(~_wgslsmith_div_u32(arg_3, arg_3), arg_3)), 0u, 1184u);
    let var_3 = Struct_1(u_input.d, arg_2.xyz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1121f - -2016f)), 1225f)) <= _wgslsmith_f_op_f32(939f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(591f * -1581f)))), arg_2.x >> (arg_3 % 32u));
    var_2 = u_input.c.yyy;
    return StorageBuffer(566f, select(abs(var_0), firstTrailingBit(_wgslsmith_mod_u32(~0u, ~arg_3)), var_1), ~(u_input.e.wx ^ (select(u_input.e.xy, u_input.e.yw, vec2<bool>(true, var_1)) ^ vec2<u32>(var_3.a, u_input.b))), u_input.e, _wgslsmith_f_op_f32(f32(-1f) * -414f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(firstLeadingBit(23066i), min(func_1(), u_input.a.x) < 1i, u_input.a & -reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 16604i), u_input.a)), (u_input.d & 1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, min(35467u, 50626u)), u_input.e.yy << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.xy) % vec2<u32>(32u))));
}

