struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_3;

var<private> global1: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(148f, 1000f, 188f), vec3<f32>(-211f, 324f, -141f), vec3<f32>(2097f, -1223f, -270f), vec3<f32>(278f, -405f, -283f), vec3<f32>(-433f, -1036f, -1000f), vec3<f32>(1475f, -149f, 662f), vec3<f32>(-178f, -1628f, 728f), vec3<f32>(-2047f, 805f, -1001f), vec3<f32>(-784f, 769f, -1227f), vec3<f32>(1000f, -725f, 832f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> vec2<i32> {
    global0 = Struct_3(select(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-20485i, max(arg_2 << (0u % 32u), _wgslsmith_clamp_i32(arg_2, 13745i, arg_2))), !vec2<bool>(false, arg_2 == -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f - global0.c.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1496f))))), global0.c);
    let var_0 = !(all(vec4<bool>(true, true, true, true)) & true);
    global0 = Struct_3(_wgslsmith_clamp_vec2_i32(countOneBits(-vec2<i32>(u_input.a, -2147483647i)) & vec2<i32>(global0.a.x, min(arg_2, global0.a.x)), ~_wgslsmith_clamp_vec2_i32(max(vec2<i32>(arg_2, global0.a.x), vec2<i32>(2147483647i, u_input.a)), -global0.a, global0.a), vec2<i32>(-global0.a.x << (_wgslsmith_mod_u32(global0.c.c, global0.c.b.x) % 32u), -(~global0.a.x))), -1208f, global0.c);
    var var_1 = vec3<u32>(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 53671u, 21114u) >> (vec4<u32>(global0.c.c, 40085u, 45490u, 38107u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c.c, global0.c.b.x, 0u, 28280u), vec4<u32>(global0.c.c, 35547u, global0.c.b.x, 30561u), vec4<u32>(18445u, 1u, global0.c.b.x, 4294967295u))), _wgslsmith_mod_u32(global0.c.b.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(40320u, global0.c.b.x), 20081u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.c, global0.c.c, global0.c.c, 1u), vec4<u32>(0u, global0.c.c, global0.c.b.x, global0.c.c)))), false), global0.c.b.x, 8188u);
    let var_2 = Struct_2(1u, _wgslsmith_clamp_vec3_u32(global0.c.b, global0.c.b, global0.c.b));
    return -global0.a;
}

fn func_2(arg_0: f32) -> u32 {
    global0 = Struct_3(_wgslsmith_sub_vec2_i32(global0.a, -global0.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b)))))), Struct_1(_wgslsmith_f_op_f32(trunc(-954f)), vec3<u32>(firstTrailingBit(20556u), 49635u, ~(~10054u)), _wgslsmith_mod_u32(1u, firstLeadingBit(min(global0.c.c, 0u)))));
    var var_0 = Struct_3(_wgslsmith_mult_vec2_i32(~vec2<i32>(reverseBits(u_input.a), _wgslsmith_div_i32(-1i, global0.a.x)), ~(~global0.a) | _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), abs(global0.a))), 861f, global0.c);
    var_0 = Struct_3(_wgslsmith_clamp_vec2_i32(global0.a, firstLeadingBit(vec2<i32>(0i, var_0.a.x)), ~func_3(_wgslsmith_f_op_f32(var_0.c.a - -178f), vec4<f32>(-1386f, -1119f, 781f, arg_0), var_0.a.x)), -128f, global0.c);
    var var_1 = Struct_2(global0.c.c, var_0.c.b);
    var var_2 = var_0.c;
    return 17562u;
}

fn func_1() -> Struct_3 {
    global1 = array<vec3<f32>, 10>();
    global1 = array<vec3<f32>, 10>();
    var var_0 = func_2(_wgslsmith_f_op_f32(min(438f, _wgslsmith_f_op_f32(-global0.b))));
    var_0 = 1u;
    global0 = Struct_3(_wgslsmith_div_vec2_i32(firstTrailingBit(~(vec2<i32>(u_input.a, -2147483647i) | global0.a)), vec2<i32>(global0.a.x, _wgslsmith_add_i32(i32(-1i) * -45181i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -23782i), global0.a)))), _wgslsmith_f_op_f32(global0.b * -180f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-179f, -1016f))))), _wgslsmith_clamp_vec3_u32(global0.c.b, _wgslsmith_sub_vec3_u32(~vec3<u32>(global0.c.c, global0.c.c, global0.c.b.x), min(global0.c.b, vec3<u32>(1u, 0u, global0.c.b.x))), reverseBits(~vec3<u32>(global0.c.b.x, global0.c.c, 32810u))), _wgslsmith_div_u32(0u, global0.c.c)));
    return Struct_3(_wgslsmith_div_vec2_i32(global0.a, vec2<i32>(-74293i >> (global0.c.c % 32u), u_input.a ^ 2147483647i) & func_3(-1495f, vec4<f32>(global0.b, global0.b, global0.c.a, 135f), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, 0i, 1i, global0.a.x), vec4<i32>(u_input.a, global0.a.x, u_input.a, u_input.a)))), global0.c.a, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = true;
    let var_2 = var_0.b;
    var var_3 = -global0.a.x;
    var var_4 = select(!(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(var_1, false)), vec2<bool>(true, false), true)), vec2<bool>(var_1, false), vec2<bool>(var_1, true));
    var_4 = !select(!(!select(vec2<bool>(false, false), vec2<bool>(false, var_4.x), var_4.x)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(var_1, true), select(vec2<bool>(var_4.x, var_1), vec2<bool>(var_1, true), vec2<bool>(false, var_4.x))), vec2<bool>(true, true), !(!var_4.x)), true);
    let var_5 = vec2<bool>(true, all(!select(vec2<bool>(true, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(true, true), vec2<bool>(var_1, true)), select(vec2<bool>(var_4.x, var_4.x), vec2<bool>(var_1, var_1), false))));
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(global0.c.b.yz, var_6.c.b.xy) << (var_6.c.c % 32u), ~var_0.c.c));
}

