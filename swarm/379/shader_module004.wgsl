struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    var var_0 = vec4<f32>(-1801f, 946f, -341f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-880f)) + -193f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1515f - 984f), -640f))), global0.x)));
    let var_1 = Struct_2(-599f, Struct_1(global0.x, vec2<i32>(_wgslsmith_sub_i32(-14973i & u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.b.x, 1i, u_input.a), vec4<i32>(-1i, u_input.a, 46324i, 1i))), 0i)), Struct_1(all(vec3<bool>(false, false, 4294967295u <= u_input.c.x)), max(vec2<i32>(~u_input.b.x, -arg_0), select(-u_input.b, _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(22885i, u_input.b.x)), u_input.a > u_input.a))), Struct_1(any(select(vec3<bool>(false, global0.x, true), !vec3<bool>(global0.x, false, global0.x), all(vec2<bool>(global0.x, global0.x)))), u_input.b));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-var_0.x), var_1.d, Struct_1(false, firstTrailingBit(var_1.c.b)), var_1.b);
    return select(!vec3<bool>(any(select(vec4<bool>(false, false, false, var_2.d.a), vec4<bool>(var_2.c.a, true, false, false), var_2.b.a)), true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(any(vec3<bool>(true, true, false)), select(true, true, true), var_1.b.a), vec3<bool>(u_input.d.x <= u_input.d.x, true & global0.x, all(vec4<bool>(var_1.b.a, var_2.c.a, var_2.c.a, true))), !(!vec3<bool>(var_1.b.a, var_2.b.a, false))), select(!vec3<bool>(var_2.b.a, false, true), !vec3<bool>(false, false, var_1.d.a), !select(vec3<bool>(global0.x, var_2.b.a, var_2.b.a), vec3<bool>(false, var_1.b.a, false), vec3<bool>(var_2.b.a, var_2.d.a, global0.x))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_2.c.a, global0.x), vec3<bool>(var_1.c.a, var_2.b.a, global0.x), true), !vec3<bool>(false, global0.x, true)), vec3<bool>(all(vec4<bool>(true, var_2.d.a, var_1.b.a, true)), !var_2.d.a, var_2.d.a), true)));
}

fn func_2() -> vec3<bool> {
    global0 = func_3(1i);
    var var_0 = Struct_2(1524f, Struct_1(true, u_input.b), Struct_1(!all(global0.zy), vec2<i32>(u_input.a << (u_input.c.x % 32u), 1i)), Struct_1(!(u_input.c.x <= 11157u) | global0.x, ~_wgslsmith_add_vec2_i32(u_input.b, u_input.b) | ~vec2<i32>(-1i, 0i)));
    var var_1 = _wgslsmith_sub_vec2_u32(min(select(vec2<u32>(~0u, select(4294967295u, u_input.c.x, global0.x)), ~u_input.d.yz, !global0.x), vec2<u32>(_wgslsmith_mult_u32(~u_input.d.x, firstLeadingBit(1u)), abs(~2904u))), vec2<u32>(u_input.c.x, u_input.c.x));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~11289i, -82333i), 1i), -(~var_0.d.b.x)) >> (abs(0u) % 32u);
    var var_3 = Struct_1(all(vec4<bool>(!all(vec3<bool>(true, global0.x, global0.x)), true, false, true)), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(u_input.a, var_0.b.b.x)) | _wgslsmith_sub_vec2_i32(var_0.b.b, vec2<i32>(-9400i, 0i)), var_0.b.b), vec2<i32>(56329i, -(~var_0.c.b.x)), ~vec2<i32>(u_input.a, ~1i)));
    return select(vec3<bool>(!all(global0.zz), any(vec4<bool>(false, var_3.a && true, any(vec3<bool>(global0.x, false, true)), var_0.c.a)), var_3.b.x != 11770i), !select(vec3<bool>(global0.x, var_1.x >= var_1.x, var_0.b.a), vec3<bool>(true, false, !global0.x), true), var_3.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_2) -> bool {
    global0 = select(func_2(), func_3(_wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(u_input.a, -2147483647i, arg_1.x), -1i, _wgslsmith_add_i32(_wgslsmith_div_i32(8014i, -18219i), select(2147483647i, arg_2.b.b.x, true)))), !(!select(func_2(), vec3<bool>(global0.x, arg_2.d.a, true), vec3<bool>(true, arg_2.c.a, arg_2.d.a))));
    let var_0 = _wgslsmith_sub_i32(-14284i, -2147483647i);
    var var_1 = vec2<u32>(_wgslsmith_div_u32((arg_0.x << (4294967295u % 32u)) >> (_wgslsmith_div_u32(26856u, 28739u) % 32u), 11565u) & reverseBits(u_input.c.x), _wgslsmith_div_u32(0u, reverseBits(u_input.d.x)));
    let var_2 = 4294967295u;
    var_1 = vec2<u32>(var_1.x, ~25184u);
    return arg_2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!select(!select(vec3<bool>(true, true, global0.x), vec3<bool>(true, global0.x, false), false), vec3<bool>(!global0.x, global0.x & false, !global0.x), select(!vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, true, false), select(vec3<bool>(global0.x, false, true), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x)))), select(select(vec3<bool>(func_1(vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, u_input.c.x), vec2<i32>(u_input.b.x, u_input.a), Struct_2(-1523f, Struct_1(global0.x, vec2<i32>(-2147483647i, u_input.a)), Struct_1(false, vec2<i32>(u_input.a, u_input.b.x)), Struct_1(true, vec2<i32>(-2147483647i, -2147483647i)))), func_3(56466i).x, false), vec3<bool>(global0.x && global0.x, global0.x, true), vec3<bool>(true, u_input.a < u_input.b.x, any(vec4<bool>(false, false, true, true)))), vec3<bool>(global0.x, any(vec2<bool>(global0.x, global0.x)), !global0.x), vec3<bool>(!global0.x, global0.x, global0.x)), vec3<bool>(func_2().x, global0.x, true));
    var var_0 = vec3<u32>(~u_input.c.x, ~(u_input.d.x | ~u_input.c.x), 45903u);
    let var_1 = -reverseBits(~vec4<i32>(-27910i, u_input.a, -u_input.b.x, u_input.a));
    let var_2 = select(vec4<bool>(true, global0.x || any(vec2<bool>(global0.x, false)), true, false), select(vec4<bool>(true, (var_0.x & u_input.d.x) <= 0u, !global0.x || false, !all(vec3<bool>(global0.x, false, false))), !select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(global0.x, false, global0.x, true), global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, true), global0.x)), !select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), all(vec4<bool>(global0.x, false, global0.x, global0.x)))), select(vec4<bool>(global0.x, var_0.x == select(u_input.d.x, u_input.c.x, global0.x), true, !func_3(31785i).x), select(vec4<bool>(!global0.x, all(global0.xz), false, any(vec3<bool>(false, global0.x, global0.x))), select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, false, false, global0.x), select(vec4<bool>(true, false, true, true), vec4<bool>(global0.x, global0.x, global0.x, false), global0.x)), vec4<bool>(func_2().x, global0.x, !global0.x, false)), global0.x != true));
    global0 = var_2.wwz;
    let var_3 = Struct_1(!global0.x, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zx, var_0.x, _wgslsmith_mod_vec2_u32(~u_input.d.xy & vec2<u32>(~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(29822u, 13467u, u_input.d.x, var_0.x), u_input.c)), ~vec2<u32>(_wgslsmith_sub_u32(u_input.d.x, 4294967295u), u_input.d.x)));
}

