struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: Struct_4 = Struct_4(41441u, Struct_2(true, vec2<f32>(450f, -1163f)), vec3<bool>(true, false, true));

var<private> global2: array<f32, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = min(vec2<u32>(1u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(select(1u | u_input.b.x, u_input.d.x, global1.b.a), 27u)], u_input.d.x)), u_input.d.yy);
    global2 = array<f32, 3>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    let var_1 = u_input.c;
    return 1i;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = max(vec3<i32>(_wgslsmith_div_i32(~u_input.a, -2147483647i), min(0i, ~u_input.c << (1u % 32u)), _wgslsmith_add_i32(reverseBits(abs(u_input.a)), ~u_input.c)), -vec3<i32>(-10541i, u_input.a, ~u_input.c));
    global2 = array<f32, 3>();
    global1 = Struct_4(108526u, global1.b, !global1.c);
    global1 = Struct_4(35964u, global1.b, !global1.c);
    let var_1 = Struct_5(global1.b, vec2<i32>(0i, 1804i), Struct_3(arg_0.a, arg_0.b), min(var_0.x, func_3(Struct_2(true, _wgslsmith_f_op_vec2_f32(-global1.b.b)), Struct_2(arg_0.b, _wgslsmith_f_op_vec2_f32(select(global1.b.b, vec2<f32>(-1247f, global1.b.b.x), arg_0.b))))));
    return Struct_2(false, _wgslsmith_f_op_vec2_f32(trunc(global1.b.b)));
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(~u_input.a, 0i, _wgslsmith_clamp_i32(0i, _wgslsmith_mult_i32(-u_input.c, _wgslsmith_mult_i32(u_input.c, 24937i)), u_input.c)), _wgslsmith_add_i32(u_input.a, firstTrailingBit(1i)), -(~u_input.c), -41200i);
    var var_1 = Struct_5(func_2(Struct_3(622f, all(select(vec3<bool>(global1.c.x, false, true), global1.c, vec3<bool>(true, global1.c.x, global1.b.a))))), abs(~(var_0.zx >> (abs(vec2<u32>(17527u, 1u)) % vec2<u32>(32u)))), Struct_3(global1.b.b.x, true | !global1.c.x), abs(firstLeadingBit(~u_input.a)));
    let var_2 = 61057i;
    let var_3 = vec3<bool>(var_1.c.b == var_1.a.a, !global1.b.a, select(var_1.a.a, !(!select(true, global1.b.a, var_1.a.a)), false));
    let var_4 = u_input.b;
    return vec4<u32>(~0u, _wgslsmith_sub_u32(0u, global1.a) >> (firstLeadingBit(44099u ^ global0[_wgslsmith_index_u32(u_input.d.x, 27u)]) % 32u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, u_input.b.x, 50515u, 0u)), ~abs(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], 4294967295u, 95004u))), 4294967295u) << (vec4<u32>(~global0[_wgslsmith_index_u32(~(~1u), 27u)], 10820u, ~global1.a, ~4294967295u) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-627f, -372f, global2[_wgslsmith_index_u32(0u, 3u)], 1274f)))));
    var var_1 = !vec4<bool>(!global1.c.x, any(!vec4<bool>(global1.b.a, true, global1.b.a, true)), global1.b.a, true);
    global1 = Struct_4(var_0.x, global1.b, !(!(!select(vec3<bool>(true, global1.c.x, global1.b.a), global1.c, false))));
    global1 = Struct_4(abs(_wgslsmith_sub_u32(var_0.x, _wgslsmith_mod_u32(32927u, _wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(62044u, 32171u))))), Struct_2(!global1.c.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1842f - global2[_wgslsmith_index_u32(0u, 3u)])), global1.b.b.x)), !var_1.xxy);
    let var_2 = ~firstLeadingBit(vec4<u32>(global1.a, u_input.b.x | ~global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 25075u, ~(~1u)));
    var_0 = var_2;
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(476f * global2[_wgslsmith_index_u32(115288u, 3u)]), global1.b.b.x, global1.b.b.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.x, 6382u), 3u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-693f, global2[_wgslsmith_index_u32(1u, 3u)], 559f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 27u)], 3u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(19226u, 3u)], -1802f, global1.b.b.x, global1.b.b.x), vec4<f32>(global1.b.b.x, -206f, global2[_wgslsmith_index_u32(var_3.x, 3u)], -1161f)))))));
}

