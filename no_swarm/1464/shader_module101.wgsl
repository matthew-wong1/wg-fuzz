struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true));

var<private> global2: vec4<u32> = vec4<u32>(87678u, 4542u, 8068u, 16126u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<i32> {
    var var_0 = 0u;
    var var_1 = select(global1[_wgslsmith_index_u32(~58887u, 15u)], select(select(vec4<bool>(global0.b <= -168f, all(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, true, true)), true), vec4<bool>(true, true, false, true), select(true, true, true)), vec4<bool>(true, true, true, !any(global1[_wgslsmith_index_u32(global0.a.x, 15u)])), vec4<bool>(false, u_input.b.x <= ~(-14776i), true, !all(global1[_wgslsmith_index_u32(1u, 15u)]))), all(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, all(vec3<bool>(true, false, true))), vec3<bool>(true, all(vec3<bool>(false, false, false)), true))));
    global2 = vec4<u32>(11088u, global2.x, u_input.c.x, ~(~_wgslsmith_mult_u32(~global0.a.x, global2.x >> (48842u % 32u))));
    global2 = global0.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b))), 1530f, -298f));
    return u_input.e ^ -(select(u_input.d.xw & u_input.e, u_input.e >> (vec2<u32>(u_input.c.x, 44792u) % vec2<u32>(32u)), !var_1.x) << (global2.wx % vec2<u32>(32u)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_3(global0.a, _wgslsmith_f_op_f32(-global0.b));
    global1 = array<vec4<bool>, 15>();
    global2 = vec4<u32>(u_input.a.x, ~(~_wgslsmith_mult_u32(u_input.c.x, ~global0.a.x)), 4294967295u, u_input.a.x);
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(reverseBits(arg_0), ~(-34697i), _wgslsmith_mod_i32(1i, -2716i)) << (4294967295u % 32u), _wgslsmith_dot_vec2_i32(~func_3(), u_input.e)), u_input.a.x, min(~(~u_input.a ^ (var_0.a.zy ^ vec2<u32>(var_0.a.x, 27349u))), u_input.a));
    let var_2 = !all(!vec4<bool>(true, select(true, false, true), true, false));
    return Struct_3(vec4<u32>(68795u, min(global0.a.x, u_input.c.x), 4294967295u, firstLeadingBit(global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) + _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.b))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3) -> i32 {
    global0 = func_2(321i);
    var var_0 = Struct_1(u_input.e, global0.a.x, arg_0.xy);
    let var_1 = -14646i;
    var_0 = Struct_1(var_0.a, var_0.c.x, ~arg_0.zz);
    var_0 = Struct_1(u_input.d.zw, max(~_wgslsmith_mult_u32(7012u, 1u), 0u << (arg_0.x % 32u)), vec2<u32>(30366u, 9997u));
    return _wgslsmith_div_i32(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(0i, 59110i), _wgslsmith_add_i32(u_input.b.x, var_0.a.x)), var_0.a.x) >> (_wgslsmith_sub_u32(arg_0.x, var_0.b) % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> i32 {
    let var_0 = vec3<i32>(func_1(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, global2.x)), _wgslsmith_div_vec3_u32(vec3<u32>(global2.x, 0u, u_input.c.x), arg_0.a.xxw)), func_2(1i)) | (-(~arg_1) | u_input.d.x), 18361i, i32(-1i) * -_wgslsmith_dot_vec3_i32(-u_input.b, _wgslsmith_add_vec3_i32(u_input.d.zxw, vec3<i32>(u_input.e.x, 2147483647i, -19477i))));
    let var_1 = firstTrailingBit(abs(_wgslsmith_div_u32(23108u, ~min(1u, 7149u))));
    let var_2 = arg_0.a.wx;
    let var_3 = arg_0;
    let var_4 = abs(~u_input.d.x);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, u_input.a.x, global2.x), vec3<u32>(global2.x, firstLeadingBit(0u), firstTrailingBit(global0.a.x))), 15u)]);
    var var_1 = reverseBits(func_4(Struct_3(global0.a, -437f), _wgslsmith_mult_i32(func_1(vec3<u32>(0u, u_input.a.x, global0.a.x), Struct_3(global0.a, 611f)), u_input.e.x) ^ ~(-38834i)));
    let var_2 = firstTrailingBit(18830u);
    let var_3 = Struct_1(firstTrailingBit(u_input.e), _wgslsmith_dot_vec2_u32(global0.a.yx, global2.xw), max(~global2.yy, global2.yy));
    var var_4 = var_3.c.x;
    var_0 = true;
    global2 = vec4<u32>(4294967295u | select((546u >> (0u % 32u)) & global0.a.x, _wgslsmith_add_u32(71545u, global0.a.x), true), abs(37826u), var_2, var_2 >> (_wgslsmith_div_u32(~(~0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(24003u, 0u, 4294967295u, u_input.a.x)), abs(20248u))) % 32u));
    var_0 = _wgslsmith_sub_i32(var_3.a.x & abs(u_input.b.x), 0i) >= _wgslsmith_sub_i32(~(-(u_input.b.x >> (u_input.c.x % 32u))), var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(655f, global0.b)), _wgslsmith_div_f32(global0.b, global0.b))));
}

