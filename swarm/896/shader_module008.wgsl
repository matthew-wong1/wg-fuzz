struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(14115i, 1i);

var<private> global1: vec2<f32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1468f, global1.x, -1000f)))));
    let var_1 = -_wgslsmith_dot_vec4_i32(abs(~(~vec4<i32>(u_input.b, 1i, global0.x, 2147483647i))), ~vec4<i32>(_wgslsmith_div_i32(u_input.b, u_input.a.x), 2147483647i, 2147483647i, firstTrailingBit(u_input.b)));
    let var_2 = abs(vec2<i32>(_wgslsmith_div_i32(global0.x, 0i), -6287i));
    var var_3 = global1.x;
    var var_4 = arg_0.c.b.x;
    return (-countOneBits(-vec4<i32>(210i, -62925i, 25984i, var_1)) & (vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, u_input.b, global0.x, 1i)))) | abs(vec4<i32>(select(-global0.x, _wgslsmith_add_i32(u_input.b, u_input.b), true), _wgslsmith_dot_vec2_i32(var_2, u_input.a), var_1 | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_1, -3333i, 0i), vec4<i32>(1i, -54758i, u_input.b, 2147483647i)), u_input.a.x));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, -1000f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), vec2<f32>(115f, 1766f), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -174f))))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), vec2<bool>(true, all(vec4<bool>(false, true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), all(vec4<bool>(true, false, true, false)))))));
    global0 = vec2<i32>(~40142i, ~(~0i));
    var var_0 = Struct_1(abs(~select(vec4<u32>(4294967295u, u_input.c, 1u, u_input.c), countOneBits(vec4<u32>(u_input.c, 72344u, 37448u, u_input.c)), true)), vec3<u32>(79524u | _wgslsmith_sub_u32(u_input.c, ~u_input.c), ~(~(~23774u)), 1u));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x);
    var var_1 = var_0.b.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(global1.x, 823f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, global1.x))), false)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))))));
}

fn func_2() -> i32 {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) * _wgslsmith_f_op_f32(-1146f + global1.x)), global1.x)) * _wgslsmith_f_op_vec2_f32(func_4(-2147483647i, func_3(Struct_2(_wgslsmith_f_op_f32(select(global1.x, -372f, false)), _wgslsmith_add_u32(0u, u_input.c), Struct_1(vec4<u32>(u_input.c, 1u, u_input.c, 474u), vec3<u32>(0u, u_input.c, u_input.c)))))));
    var var_0 = any(select(vec2<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))), vec2<bool>(true, true), all(vec2<bool>(true, true))));
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) | ~vec4<u32>(u_input.c, u_input.c, 22895u, u_input.c), vec4<u32>(u_input.c, _wgslsmith_add_u32(u_input.c, 33724u), ~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 115402u), vec2<u32>(4294967295u, 1u)))), u_input.c, u_input.c, _wgslsmith_mult_u32(u_input.c, u_input.c) >> (0u % 32u)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24665u, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)), u_input.c, u_input.c), ~u_input.c ^ ~max(u_input.c, 29869u), max(u_input.c, 0u)));
    var_0 = !all(vec3<bool>(any(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(global1.x - -269f) > _wgslsmith_f_op_f32(global1.x - 1229f)));
    var_0 = max(u_input.a.x, -517i) <= u_input.b;
    return abs(_wgslsmith_sub_i32(-46988i, _wgslsmith_div_i32(countOneBits(global0.x >> (var_1.a.x % 32u)), global0.x)));
}

fn func_1(arg_0: f32) -> vec2<f32> {
    let var_0 = global0.x;
    var var_1 = select(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, global0.x, global0.x), vec3<i32>(global0.x, global0.x, u_input.a.x)), select(vec3<i32>(-2147483647i, 1i, 28582i), vec3<i32>(u_input.a.x, 0i, 51374i), true), -vec3<i32>(global0.x, 36358i, u_input.a.x)), _wgslsmith_mod_vec3_i32(-vec3<i32>(global0.x, -7862i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i) >> (vec3<u32>(u_input.c, 4294967295u, u_input.c) % vec3<u32>(32u))), vec3<i32>(-15792i, ~global0.x, 2147483647i)) | vec3<i32>(func_2(), 0i, u_input.a.x), abs(vec3<i32>(-(u_input.a.x ^ -2147483647i), _wgslsmith_mult_i32(i32(-1i) * -54292i, _wgslsmith_mult_i32(-1i, u_input.b)), -global0.x)), !vec3<bool>(all(vec3<bool>(false, true, true)), true, !any(vec3<bool>(true, false, true))));
    var var_2 = Struct_3(select(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(85793u, 36611u, 1u)), vec3<u32>(u_input.c, u_input.c, u_input.c) ^ vec3<u32>(u_input.c, u_input.c, u_input.c)), ~vec3<u32>(u_input.c, u_input.c, 6522u)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 0u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(u_input.c, 4294967295u, 1u)), vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 80412u, u_input.c))), _wgslsmith_mod_u32(u_input.c, _wgslsmith_div_u32(27923u, 27561u)) > 25465u), 32188i, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f)), -726f), 24912u, Struct_1(max(vec4<u32>(1u, 0u, u_input.c, 77644u), vec4<u32>(1u, u_input.c, u_input.c, 0u)) & select(vec4<u32>(66612u, 70981u, 1u, 30275u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<bool>(false, true, false, false)), ~firstTrailingBit(vec3<u32>(4294967295u, u_input.c, u_input.c)))));
    let var_3 = true;
    let var_4 = ~(~max(_wgslsmith_mult_u32(4294967295u, firstTrailingBit(var_2.c.b)), var_2.a.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1729f, var_2.c.a) + vec2<f32>(var_2.c.a, arg_0)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, 2332f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(func_1(global1.x));
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-u_input.b ^ func_2(), firstTrailingBit(u_input.b)), -reverseBits(reverseBits(2749i)), -u_input.b, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, global0.x) << (max(u_input.c, u_input.c) % 32u), u_input.a.x)), max(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(25412i, 3137i))), 55644i, min(global0.x, abs(global0.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(52415i, global0.x, -12929i, _wgslsmith_div_i32(-1i, -6681i)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, -1i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(39929i, 29595i, u_input.b, 19337i), vec4<i32>(global0.x, global0.x, u_input.b, global0.x))))));
    global0 = u_input.a;
    let var_1 = -(vec2<i32>(u_input.b ^ -global0.x, 18150i) | u_input.a);
    let var_2 = Struct_1(~select(vec4<u32>(~u_input.c, 1u, 4294967295u, 5799u), vec4<u32>(u_input.c, reverseBits(106583u), u_input.c, countOneBits(4294967295u)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), false)), select(vec3<u32>(~u_input.c, 1u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 1u, 1u) << (vec3<u32>(u_input.c, 4294967295u, u_input.c) % vec3<u32>(32u))), vec3<bool>(false, true, true)) | ~(~min(vec3<u32>(u_input.c, 7013u, 0u), vec3<u32>(u_input.c, 0u, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_vec2_f32(func_4(-var_1.x, var_0)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * 289f))), var_0, var_2.a, var_0.xwx, global1.x);
}

