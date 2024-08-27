struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(exp2(global0.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(124f, global0.c.x))) + 1000f), 325f), global0.c, global0.d, _wgslsmith_add_vec4_u32(reverseBits(global0.e), ~(~vec4<u32>(u_input.a, global0.e.x, 44738u, 4294967295u))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_mult_u32(~func_1().e.x, _wgslsmith_mod_u32(~(global0.e.x & abs(u_input.a)), ~global0.e.x));
    var var_1 = vec4<bool>(!(!all(select(vec4<bool>(global0.d, global0.d, global0.d, global0.d), vec4<bool>(global0.d, global0.d, global0.d, global0.d), false))), global0.d, all(vec3<bool>(true, true, true)), all(vec4<bool>(global0.d, _wgslsmith_f_op_f32(global0.c.x + -234f) != _wgslsmith_f_op_f32(f32(-1f) * -330f), !all(vec2<bool>(false, global0.d)), global0.d)));
    return -1531f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    var var_0 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.c.x, 896f)) - _wgslsmith_f_op_f32(func_3(-42176i, global0.c.xy)))))), global0.b, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_1.a)))), _wgslsmith_div_f32(-2111f, -725f)), var_0.c), true, ~select(~arg_0.e, ~arg_1.e & max(vec4<u32>(23870u, 0u, 191827u, arg_0.e.x), vec4<u32>(arg_1.e.x, global0.e.x, arg_1.e.x, 4294967295u)), arg_0.d));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x - 232f), _wgslsmith_f_op_f32(round(global0.b.x)))) - _wgslsmith_f_op_f32(-global0.a)), vec2<f32>(arg_3, _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c)), var_0.c)))), true, var_0.e);
    let var_2 = Struct_1(func_1().a, _wgslsmith_f_op_vec2_f32(-arg_1.c.yx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c.x, var_1.b.x)) + global0.a))), (_wgslsmith_clamp_i32(max(-2147483647i, -1808i), -1034i, u_input.d.x) >> (6260u % 32u)) > _wgslsmith_mult_i32(_wgslsmith_clamp_i32(55992i, u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.d, u_input.d)), arg_2.x << (countOneBits(34247u) % 32u)), reverseBits(~vec4<u32>(_wgslsmith_sub_u32(arg_0.e.x, 1u), firstTrailingBit(0u), 1123u, firstTrailingBit(arg_0.e.x))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-942f * arg_1.b.x), _wgslsmith_f_op_f32(var_2.c.x - arg_0.b.x));
    return _wgslsmith_dot_vec4_i32(reverseBits(reverseBits(vec4<i32>(arg_2.x, u_input.d.x, 2147483647i, 2147483647i) ^ arg_2)) & ~(-countOneBits(arg_2)), max(vec4<i32>(~(~u_input.d.x), ~11230i, firstTrailingBit(abs(29652i)), 21800i), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d.x, u_input.d.x, -2147483647i), vec4<i32>(15030i, -8624i, 58332i, 0i))), ~u_input.d.x, func_2(Struct_1(global0.b.x, global0.c.yx, global0.c, true, global0.e), func_1(), -vec4<i32>(u_input.d.x, u_input.d.x, -7524i, 1i), -1680f), u_input.d.x) & ((abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 8796i, u_input.d.x, -40571i), vec4<i32>(-13046i, u_input.d.x, -1i, u_input.d.x))) & ~max(vec4<i32>(u_input.d.x, 2147483647i, -18473i, 0i), vec4<i32>(-1i, u_input.d.x, 37355i, u_input.d.x))) | -vec4<i32>(1i << (u_input.a % 32u), u_input.d.x, 1i, abs(1i)));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(global0.e.x, ~(~reverseBits(u_input.b))), ~_wgslsmith_dot_vec4_u32(min(select(vec4<u32>(global0.e.x, 16034u, u_input.c.x, 33870u), global0.e, vec4<bool>(global0.d, true, global0.d, global0.d)), global0.e), abs(_wgslsmith_mult_vec4_u32(global0.e, global0.e))));
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(abs(1i), func_2(func_1(), Struct_1(_wgslsmith_f_op_f32(115f + 840f), _wgslsmith_f_op_vec2_f32(-global0.c.zx), _wgslsmith_f_op_vec3_f32(-global0.c), false, reverseBits(vec4<u32>(0u, u_input.c.x, 1u, global0.e.x))), vec4<i32>(select(var_0.x, var_0.x, global0.d), -2147483647i, var_0.x, max(3464i, var_0.x)), global0.c.x)), u_input.d);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(func_3(var_2.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b.x, global0.c.x)))), vec2<f32>(global0.b.x, global0.c.x)))), vec2<f32>(-683f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.x, global0.c.xx))))), _wgslsmith_f_op_vec3_f32(global0.c + _wgslsmith_div_vec3_f32(vec3<f32>(func_1().a, 394f, _wgslsmith_f_op_f32(abs(-2138f))), global0.c)), true, global0.e);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x, vec3<i32>(abs(0i), min(var_2.x, var_2.x), u_input.d.x ^ -var_0.x) | _wgslsmith_div_vec3_i32(var_0.zzx, vec3<i32>(-1i) * -vec3<i32>(5760i, var_0.x, u_input.d.x)), var_3.e.x, var_0.zxx);
}

