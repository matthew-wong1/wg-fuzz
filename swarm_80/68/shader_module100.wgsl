struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2;

var<private> global2: array<u32, 3>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> i32 {
    var var_0 = Struct_1(arg_1.b.a, 4294967295u, arg_1.a.c, ~arg_2);
    global0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 62122u, 0u), global1.d.zyz);
    global2 = array<u32, 3>();
    let var_1 = -71280i;
    global2 = array<u32, 3>();
    return _wgslsmith_mult_i32(select(~var_1, _wgslsmith_mod_i32(-var_1 >> ((var_0.c.x ^ arg_1.d.x) % 32u), _wgslsmith_sub_i32(0i, var_1) & 0i), !(global0.x == 47362u) & true), ~(-18375i));
}

fn func_2() -> vec3<u32> {
    var var_0 = all(!select(select(vec3<bool>(false, global1.b.a, global1.b.a), !vec3<bool>(global1.a.a, true, global1.b.a), !vec3<bool>(global1.a.a, false, global1.a.a)), select(!vec3<bool>(global1.b.a, true, global1.b.a), select(vec3<bool>(true, global1.a.a, global1.a.a), vec3<bool>(false, true, global1.b.a), false), global1.b.a), select(!vec3<bool>(global1.b.a, true, global1.a.a), !vec3<bool>(false, global1.a.a, false), global1.b.a)));
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(func_3(global1.a, Struct_2(global1.a, global1.b, 1u, firstLeadingBit(vec4<u32>(87511u, global1.a.b, global0.x, 16710u)), abs(global0.x)), global1.e), -1i), firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.e, u_input.e))));
    let var_2 = Struct_1(true, u_input.b.x, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(10908u, global1.d.x, global0.x, 1u) >> ((vec4<u32>(34302u, global2[_wgslsmith_index_u32(17542u, 3u)], 4294967295u, global0.x) >> (global1.d % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c, global2[_wgslsmith_index_u32(global0.x, 3u)], global2[_wgslsmith_index_u32(97369u, 3u)], u_input.b.x), abs(global1.d))), global1.c), 49901u);
    return select(_wgslsmith_div_vec3_u32(u_input.b.xwz, vec3<u32>(1u, _wgslsmith_mod_u32(abs(9481u), u_input.b.x << (86172u % 32u)), var_2.d)), global1.d.zwy, vec3<bool>(false, global1.b.a & all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, var_2.a), vec3<bool>(false, false, true))), true && !any(vec2<bool>(false, global1.a.a))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> u32 {
    global0 = func_2();
    global1 = Struct_2(Struct_1(-2147483647i <= min(_wgslsmith_mult_i32(-2147483647i, u_input.c), firstLeadingBit(u_input.e)), ~11161u, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 117368u) >> (vec2<u32>(global0.x, u_input.a) % vec2<u32>(32u)), vec2<u32>(66740u, global0.x)), min(firstLeadingBit(u_input.b.xw), u_input.b.yy)), ~min(~24656u, u_input.b.x)), arg_1, abs(_wgslsmith_div_u32(51215u, _wgslsmith_clamp_u32(~arg_1.d, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.e, 12930u), 3u)], arg_1.c.x))), vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(func_2().x), 1u), min(abs(arg_1.d), 9821u) << (0u % 32u), global1.a.c.x, global1.c), 4294967295u);
    let var_0 = select(global1.a.a, select(all(!vec3<bool>(true, false, global1.a.a)), true, global1.b.a), false);
    global0 = min(u_input.b.xwz, u_input.b.wzw) ^ _wgslsmith_mod_vec3_u32(~(u_input.b.ywz & _wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(arg_1.d, 3u)], global0.x), global1.d.ywz)), ~u_input.b.wxz);
    let var_1 = Struct_1(!arg_1.a || false, 4294967295u, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b.x, max(0u, u_input.a)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), global0.xy)), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.b.xzx, u_input.b.yyw)) & _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(global1.d, global1.d))), ~1u);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(false & (_wgslsmith_f_op_f32(trunc(2229f)) > -914f), ~(~1u) | (func_1(false, global1.a) & global2[_wgslsmith_index_u32(~4294967295u, 3u)]), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(46069u, 4294967295u), global1.a.c), vec2<u32>(func_1(true, Struct_1(true, 0u, vec2<u32>(global2[_wgslsmith_index_u32(1u, 3u)], global0.x), u_input.b.x)), _wgslsmith_clamp_u32(4294967295u, 1u, global2[_wgslsmith_index_u32(global0.x, 3u)]))), 14297u), global1.b, _wgslsmith_sub_u32(global1.d.x, ~_wgslsmith_div_u32(global1.b.c.x, func_2().x)), ~u_input.b, _wgslsmith_dot_vec2_u32(max(~vec2<u32>(global1.b.b, global0.x) & min(u_input.b.xy, u_input.b.yw), ~vec2<u32>(u_input.a, u_input.a)), global1.a.c));
    let var_1 = u_input.d;
    let var_2 = ~(~func_2().x);
    let var_3 = global1.a.c.x;
    var var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(global2[_wgslsmith_index_u32(6597u, 3u)]) << (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-451f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-3388f, 257f))) + 514f));
}

