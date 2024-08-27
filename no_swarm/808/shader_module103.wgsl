struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1915f, -518f);

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(1u | u_input.b, true != arg_0.b, abs(arg_0.c), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, 706f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d.x))), _wgslsmith_div_f32(-346f, global0.x), _wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = var_0.b;
    let var_2 = -467f;
    global1 = array<Struct_1, 14>();
    let var_3 = arg_0;
    return ~select(abs(select(_wgslsmith_mod_vec4_u32(vec4<u32>(43495u, arg_0.a, var_3.a, 0u), vec4<u32>(70209u, 4294967295u, 4253u, 60216u)), vec4<u32>(36641u, var_0.a, u_input.b, var_3.a), !var_3.b)), vec4<u32>(~var_3.a, countOneBits(1u), ~var_3.a, abs(_wgslsmith_mod_u32(33554u, var_0.a))), arg_0.b);
}

fn func_2() -> vec4<bool> {
    let var_0 = 1382f;
    global1 = array<Struct_1, 14>();
    global0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(967f)), -239f), vec2<f32>(-460f, -958f)));
    var var_1 = select(~vec4<u32>(~(~42503u), 0u, u_input.b, u_input.b), ~func_3(Struct_1(reverseBits(u_input.b), true, reverseBits(vec4<i32>(0i, u_input.c.x, u_input.c.x, -33166i)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-323f, var_0, -914f, -378f), vec4<f32>(991f, -547f, 546f, -1066f))))), select(~(i32(-1i) * -14050i) > u_input.c.x, true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))));
    var_1 = countOneBits(firstTrailingBit(abs(vec4<u32>(_wgslsmith_add_u32(u_input.a, var_1.x), ~u_input.b, ~var_1.x, ~u_input.b))));
    return !select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, all(vec4<bool>(false, false, false, true)), true), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_2(select(1i, ~(~(u_input.c.x << (6340u % 32u))), any(func_2())));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_0.d.www - arg_0.d.yww);
    global1 = array<Struct_1, 14>();
    let var_3 = arg_1;
    return firstLeadingBit(_wgslsmith_add_u32(~11695u, ~(~u_input.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: vec4<u32>) -> f32 {
    let var_0 = Struct_1(~_wgslsmith_div_u32(~arg_3.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 1u), ~arg_3.x)), !arg_1, -_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(609i, 3588i, arg_2.a, -47896i), vec4<i32>(arg_0.x, -1501i, arg_0.x, arg_0.x)) & arg_0, arg_0), vec4<f32>(global0.x, 1062f, _wgslsmith_div_f32(-590f, 1000f), -557f));
    let var_1 = false;
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.d.xz), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.d.xw, vec2<f32>(var_0.d.x, global0.x))) * _wgslsmith_div_vec2_f32(var_0.d.zw, var_0.d.wx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.yw - vec2<f32>(-302f, 190f))), select(func_2().zw, vec2<bool>(true, true), select(func_2().xx, vec2<bool>(true, true), arg_1))))));
    var var_2 = arg_2;
    global1 = array<Struct_1, 14>();
    return 1412f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x - 884f), _wgslsmith_f_op_f32(func_4(min(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -5607i, -1i, u_input.c.x), vec4<i32>(u_input.c.x, -1i, -24551i, u_input.c.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -20238i), vec4<i32>(1i, -13975i, u_input.c.x, -13786i))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_2(_wgslsmith_add_i32(u_input.c.x, -25763i)), vec4<u32>(u_input.a, u_input.a, func_1(global1[_wgslsmith_index_u32(u_input.a, 14u)], Struct_2(u_input.c.x)), _wgslsmith_mult_u32(57373u, u_input.b)))), _wgslsmith_div_f32(-1863f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(194f, 544f), _wgslsmith_f_op_f32(-1000f - global0.x))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1599f, 123f)))))));
    var var_1 = ~0u;
    var var_2 = true;
    let var_3 = max((~vec2<u32>(1u, 1u) << (~reverseBits(vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u))) >> (~(_wgslsmith_mult_vec2_u32(vec2<u32>(45454u, u_input.b), vec2<u32>(0u, u_input.b)) ^ ~vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u)), ~vec2<u32>(~6007u, ~u_input.a));
    var var_4 = Struct_2(_wgslsmith_add_i32(_wgslsmith_clamp_i32(28740i, ~u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, 46200i)), 6670i) << (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4294967295u, firstLeadingBit(1u), 40405u | u_input.b), select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, var_3.x, var_3.x), vec4<u32>(u_input.a, 33417u, u_input.b, var_3.x)), ~vec4<u32>(1u, var_3.x, u_input.a, 0u), true)), ~0u, ~var_3.x));
}

