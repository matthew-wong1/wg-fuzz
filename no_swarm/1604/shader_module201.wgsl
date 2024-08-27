struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<i32>, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: bool) -> i32 {
    global0 = _wgslsmith_clamp_vec2_i32(countOneBits(u_input.c >> (_wgslsmith_mod_vec2_u32(u_input.b.xz, vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u))), firstLeadingBit(abs(u_input.d.xy) << (u_input.a.zw % vec2<u32>(32u))), ~(~vec2<i32>(global0.x, -519i))) | u_input.d.zx;
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_0 | global0.x, _wgslsmith_add_i32(u_input.c.x, -2147483647i), i32(-1i) * -32769i, _wgslsmith_clamp_i32(-1i, u_input.d.x, arg_0))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.d.x, global0.x), 0i, -12576i, 2147483647i), select(vec4<i32>(u_input.d.x, -29780i, 2147483647i, 0i), ~vec4<i32>(-70314i, 20077i, 1i, -20941i), arg_1))), vec4<bool>(any(!vec3<bool>(true, arg_3, arg_1)), all(select(!vec3<bool>(arg_3, false, true), select(vec3<bool>(arg_1, true, false), vec3<bool>(true, arg_2, false), vec3<bool>(false, false, arg_1)), !vec3<bool>(true, arg_2, true))), true, all(select(!vec4<bool>(true, true, false, arg_2), !vec4<bool>(true, arg_3, false, arg_2), vec4<bool>(arg_1, arg_2, false, true)))));
    let var_1 = 4294967295u;
    global0 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-41056i, i32(-1i) * -43596i), -2147483647i), arg_0) | _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(-vec2<i32>(global0.x, var_0.a), countOneBits(u_input.d.xy)), abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0, -2147483647i), vec3<i32>(u_input.d.x, var_0.a, global0.x)), -20049i)));
    let var_2 = select(vec2<u32>(~var_1, 1u << (firstTrailingBit(11083u) % 32u)) & u_input.b.xx, u_input.b.zx, arg_1);
    return u_input.c.x;
}

fn func_2() -> bool {
    global1 = array<vec4<i32>, 21>();
    global1 = array<vec4<i32>, 21>();
    global0 = vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(-(u_input.d.yy >> (vec2<u32>(u_input.e, 0u) % vec2<u32>(32u))), vec2<i32>(0i, -1i), select(-u_input.d.zx, abs(vec2<i32>(0i, 18731i)), vec2<bool>(false, false)));
    var var_0 = -340f;
    var var_1 = Struct_1(_wgslsmith_clamp_i32(abs(abs(u_input.d.x)), _wgslsmith_mult_i32(global0.x, -(~global0.x)), min(~func_3(37100i, true, false, false), ~(-8258i))), vec4<bool>(true == any(vec2<bool>(true, true)), !(any(vec3<bool>(true, true, true)) & true), all(vec3<bool>(true, true, true)), u_input.d.x <= u_input.d.x));
    return !(false & (reverseBits(_wgslsmith_mod_i32(var_1.a, u_input.c.x)) >= _wgslsmith_mult_i32(0i, ~(-37834i))));
}

fn func_1() -> vec2<u32> {
    var var_0 = u_input.e;
    let var_1 = vec2<bool>(true | func_2(), false);
    let var_2 = _wgslsmith_div_u32(firstLeadingBit(u_input.b.x), ~21209u);
    var var_3 = select(-(max(vec2<i32>(global0.x, 0i), u_input.d.xy) | -u_input.d.yx), abs(_wgslsmith_div_vec2_i32(max(u_input.c, vec2<i32>(u_input.c.x, global0.x)), u_input.d.yz)), var_1.x) << (reverseBits(~_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.e, var_2), vec2<u32>(44314u, 32254u), var_1.x), _wgslsmith_clamp_vec2_u32(u_input.b.zx, u_input.b.yz, vec2<u32>(u_input.b.x, 1u)))) % vec2<u32>(32u));
    global0 = -_wgslsmith_add_vec2_i32(u_input.d.zx, min(vec2<i32>(-var_3.x, -25735i ^ global0.x), ~u_input.d.xy | firstLeadingBit(u_input.c)));
    return min(_wgslsmith_clamp_vec2_u32(u_input.b.zx, firstTrailingBit(u_input.b.zy), select(~(~vec2<u32>(var_2, var_2)), ~_wgslsmith_clamp_vec2_u32(u_input.a.wx, u_input.a.zw, u_input.b.zy), false == !var_1.x)), firstLeadingBit(u_input.b.yy >> ((u_input.b.xx | u_input.a.xw) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(~4294967295u), u_input.b.x), ~func_1());
    let var_1 = Struct_1(-2147483647i, vec4<bool>(!select(func_2(), true, global0.x > global0.x), true, true, true));
    let var_2 = var_1;
    var_0 = _wgslsmith_div_vec2_u32(u_input.a.wy, vec2<u32>(~0u, var_0.x));
    var var_3 = Struct_1(-55478i, select(select(select(var_2.b, var_2.b, all(vec2<bool>(var_2.b.x, var_2.b.x))), select(select(var_1.b, var_2.b, true), vec4<bool>(false, false, var_2.b.x, false), true), false), vec4<bool>(func_2(), false, false, var_1.b.x), all(var_1.b)));
    let var_4 = var_2;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(sign(691f)), -1751f, -242f, _wgslsmith_div_f32(-529f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1445f, 1038f)))), vec4<u32>(u_input.e, ~26002u, ~55219u, u_input.e));
}

