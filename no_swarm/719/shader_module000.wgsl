struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, -35889i, i32(-2147483648));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<u32>) -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(firstTrailingBit(~arg_0.a)), vec2<u32>(48210u, 15355u));
    let var_1 = -_wgslsmith_mult_vec2_i32(arg_1.yz, countOneBits(u_input.a ^ global1.zz) | arg_1.xw);
    global1 = ~vec3<i32>(2147483647i, 4585i, countOneBits(~2147483647i));
    let var_2 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), ~u_input.b <= 33504u), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, any(vec3<bool>(true, true, false))), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), !vec2<bool>(any(vec3<bool>(true, true, false)), all(vec2<bool>(true, true)))), vec2<bool>(!all(vec2<bool>(false, true)), true), all(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), select(true, true, true))));
    global0 = Struct_3(global0.a, abs(select(vec2<u32>(u_input.b, var_0.b.x), ~arg_0.a.zw, !vec2<bool>(var_2.x, false))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(887f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-616f, 557f, true)), _wgslsmith_div_f32(679f, 202f)))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(1053f)), -1281f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-787f, 1037f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(912f, -374f) - vec2<f32>(-560f, 661f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(835f, 1447f))))))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1711f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2196f - 196f)), true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 * var_0))))), _wgslsmith_f_op_vec2_f32(func_3(global0.a, vec4<i32>(1i ^ ~global1.x, global1.x, u_input.a.x, global1.x), vec2<u32>(global0.b.x, ~_wgslsmith_add_u32(global0.b.x, u_input.c))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(921f + var_0), _wgslsmith_f_op_f32(trunc(var_1.x))), vec2<f32>(var_0, var_0)))));
    let var_3 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(min(-1i, max(u_input.a.x, global1.x)), global1.x, u_input.a.x), ~vec3<i32>(global1.x, -2147483647i, ~(-2024i)));
    global1 = ~(~max(-vec3<i32>(var_3, u_input.a.x, -2147483647i), vec3<i32>(global1.x, -u_input.a.x, 53756i)));
    return any(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, any(vec3<bool>(false, true, false)), true, true), true));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(~global0.a.a), _wgslsmith_add_vec2_u32(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(global0.a.a.x, u_input.b))), global0.a.a.ww));
    var var_1 = vec2<bool>(true, false);
    var var_2 = vec2<bool>(select(true, var_1.x, func_2()), var_1.x);
    global1 = vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, firstTrailingBit(-18917i), _wgslsmith_add_i32(-7608i, u_input.a.x) << (global0.a.a.x % 32u)), _wgslsmith_add_i32(-1i, -16223i));
    var_2 = !vec2<bool>(true, func_2());
    return Struct_1(var_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(vec3<i32>(-2147483647i, -1i, firstLeadingBit(u_input.a.x)));
    var var_0 = global0.a.a | _wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(9535u), _wgslsmith_div_u32(0u, u_input.c) & reverseBits(4294967295u), max(u_input.d, u_input.b), global0.a.a.x), ~(vec4<u32>(u_input.d, global0.a.a.x, global0.a.a.x, u_input.b) | vec4<u32>(u_input.c, global0.b.x, global0.b.x, u_input.c)) ^ ~reverseBits(global0.a.a));
    let var_1 = func_1();
    var var_2 = ~(~var_1.a.ww);
    var_0 = ~global0.a.a;
    var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.a, _wgslsmith_mod_vec4_u32(var_1.a, var_1.a)), var_1.a), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(global0.a.a << (vec4<u32>(86297u, 83721u, 54038u, 88835u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(1u, 1u, 86519u, var_2.x))), vec4<u32>(u_input.d, 7387u, global0.b.x, select(0u, var_1.a.x, false))), abs(select(global0.a.a, ~var_1.a, any(vec4<bool>(true, true, true, false))))) >> (~var_1.a % vec4<u32>(32u));
    global0 = Struct_3(Struct_1(~vec4<u32>(u_input.c, _wgslsmith_clamp_u32(global0.b.x, u_input.d, var_1.a.x), global0.b.x | 12153u, select(1u, var_0.x, true))), var_0.zx);
    let var_3 = Struct_1(countOneBits(max(global0.a.a, vec4<u32>(var_0.x ^ 0u, var_0.x, min(20088u, global0.b.x), 912u))));
    global0 = Struct_3(global0.a, var_0.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-178f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1966f, -168f)), _wgslsmith_f_op_f32(1597f * -1598f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(633f)), _wgslsmith_f_op_f32(-1142f + 181f)))), (var_3.a.x >> (countOneBits(~19978u) % 32u)) ^ ~_wgslsmith_mod_u32(func_1().a.x, firstTrailingBit(var_0.x)), global0.b.x);
}

