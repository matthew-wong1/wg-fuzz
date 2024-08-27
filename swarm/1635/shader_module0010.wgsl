struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, false, true), 1410f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global2 = Struct_1(select(arg_1.a, select(vec3<bool>(arg_1.a.x, false, arg_2.a.x), vec3<bool>(arg_2.a.x, 41344i >= u_input.a, true), vec3<bool>(true | global2.a.x, !arg_1.a.x, true)), any(select(vec4<bool>(arg_3.a.x, false, true, arg_3.a.x), vec4<bool>(false, arg_3.a.x, true, arg_3.a.x), true))), 549f);
    var var_0 = Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(514f * 819f)));
    var var_1 = reverseBits(~0u);
    var var_2 = arg_1;
    var_1 = 4294967295u;
    return _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, countOneBits(u_input.b)), vec2<i32>(u_input.a, ~(-u_input.b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<i32> {
    global1 = max(_wgslsmith_clamp_i32(-1i, u_input.a, _wgslsmith_add_i32(1i, (25678i ^ u_input.a) ^ 1i)), _wgslsmith_dot_vec4_i32(~countOneBits(abs(vec4<i32>(14799i, u_input.b, -47476i, 0i))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a, u_input.b, -1i, -2147483647i), vec4<i32>(2147483647i, u_input.b, -1i, u_input.a), vec4<bool>(global2.a.x, arg_0.a.x, global2.a.x, global2.a.x)), -vec4<i32>(48624i, -46581i, u_input.a, u_input.a)), reverseBits(-vec4<i32>(-1i, 1i, u_input.b, -2147483647i)))));
    let var_0 = _wgslsmith_f_op_f32(trunc(725f));
    var var_1 = reverseBits(_wgslsmith_add_i32(firstTrailingBit(~u_input.b), _wgslsmith_add_i32(-17053i, ~func_3(vec4<f32>(1159f, global2.b, -1035f, arg_0.b), arg_0, arg_0, arg_0))));
    var var_2 = vec3<bool>(!any(select(select(global2.a, global2.a, global2.a), vec3<bool>(false, false, false), any(global2.a))), all(!(!select(vec4<bool>(true, global2.a.x, true, global2.a.x), vec4<bool>(true, arg_0.a.x, global2.a.x, false), true))), !(!global2.a.x != false));
    global0 = !arg_0.a.x;
    return vec3<i32>(_wgslsmith_mult_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, -12420i)), u_input.b, -38580i);
}

fn func_1(arg_0: f32, arg_1: u32) -> bool {
    let var_0 = firstTrailingBit(~(~min(~4294967295u, arg_1)));
    var var_1 = -firstLeadingBit(reverseBits(_wgslsmith_div_vec3_i32(func_2(Struct_1(vec3<bool>(global2.a.x, true, global2.a.x), arg_0), vec2<u32>(113410u, 22889u)), ~vec3<i32>(u_input.b, u_input.a, u_input.b))));
    let var_2 = Struct_1(!(!vec3<bool>(global2.a.x, all(global2.a), !global2.a.x)), global2.b);
    let var_3 = Struct_1(!select(!global2.a, vec3<bool>(any(vec3<bool>(var_2.a.x, true, var_2.a.x)), true, false & global2.a.x), true), _wgslsmith_div_f32(-1000f, var_2.b));
    var_1 = func_2(var_3, vec2<u32>(countOneBits(firstLeadingBit(arg_1)), 8517u));
    return u_input.b != (~u_input.b ^ _wgslsmith_dot_vec2_i32(var_1.yy, vec2<i32>(0i, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.a.x;
    var var_0 = !(!global2.a.x);
    global1 = u_input.a;
    var var_1 = -vec2<i32>(reverseBits(_wgslsmith_add_i32(0i, u_input.a)), 2147483647i);
    var var_2 = Struct_1(global2.a, global2.b);
    global0 = (global2.a.x & true) & func_1(_wgslsmith_f_op_f32(-var_2.b), 22167u);
    var var_3 = vec3<f32>(2416f, 338f, 110f);
    let var_4 = _wgslsmith_div_f32(-1093f, -1720f);
    var_1 = vec2<i32>(-1i) * -(~min(func_2(Struct_1(global2.a, -1815f), vec2<u32>(79680u, 1u)).zz, vec2<i32>(-1i, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.b, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -36766i, var_1.x, -1i), vec4<i32>(var_1.x, 0i, -39568i, u_input.b)), ~5630i)), vec4<f32>(var_4, _wgslsmith_f_op_f32(var_2.b - 429f), -904f, -2068f), vec3<i32>(2147483647i, -27933i, _wgslsmith_sub_i32(~1i, ~(-var_1.x))), ~vec3<u32>(1u, 1u, 1u), countOneBits(vec2<u32>(_wgslsmith_clamp_u32(~68164u, 4294967295u, ~5299u), _wgslsmith_mod_u32(~4294967295u, ~55303u))));
}

