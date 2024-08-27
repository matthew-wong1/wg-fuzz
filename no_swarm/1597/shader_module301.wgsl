struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 29>;

var<private> global2: Struct_2 = Struct_2(-44790i, vec3<bool>(false, true, false), Struct_1(true, 63896u, 0u, vec3<i32>(1i, 15890i, i32(-2147483648))), vec3<u32>(125132u, 130458u, 74492u), i32(-2147483648));

var<private> global3: array<i32, 28>;

var<private> global4: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    var var_0 = abs(u_input.a);
    let var_1 = u_input.b;
    var var_2 = global2.b.x;
    global3 = array<i32, 28>();
    global1 = array<Struct_1, 29>();
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, ~global4.x) | 32361u, 29u)];
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>) -> i32 {
    var var_0 = Struct_3(~u_input.b, ~(global2.d >> (vec3<u32>(_wgslsmith_add_u32(global4.x, 52712u), 1u, 62556u) % vec3<u32>(32u))), func_2());
    global3 = array<i32, 28>();
    return -global2.e;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(0u, 28u)], select(!vec3<bool>(global2.b.x, true, !arg_0.a), vec3<bool>(arg_0.a, any(vec2<bool>(true, false)), all(!vec3<bool>(false, false, global2.b.x))), select(select(select(vec3<bool>(global2.b.x, arg_0.a, arg_0.a), vec3<bool>(false, false, true), global2.b.x), vec3<bool>(true, global2.c.a, false), !global2.b), vec3<bool>(select(global2.b.x, false, global2.c.a), true, false), true)), func_2(), global2.d, min(abs(select(global2.e, -58162i, arg_3)), i32(-1i) * -4171i) | arg_2.x);
    let var_1 = Struct_1(func_2().a, 0u, min(global2.d.x, 32595u), ~(~arg_2.xwx));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(arg_1))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1 - -936f), _wgslsmith_f_op_f32(arg_1 - arg_1)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-225f, -594f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(896f, arg_1))))), vec2<bool>(arg_0.a, true)));
    global3 = array<i32, 28>();
    return var_0;
}

fn func_1() -> vec4<i32> {
    var var_0 = func_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(877f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1817f)) - -392f))), ~vec4<i32>(-global3[_wgslsmith_index_u32(20534u, 28u)], func_3(vec4<f32>(-950f, -525f, -1845f, 1000f), vec4<f32>(-732f, 544f, -1522f, 855f)), firstTrailingBit(global3[_wgslsmith_index_u32(global4.x, 28u)]), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], 1i)) & vec4<i32>(max(min(-2147483647i, -9916i), global2.e >> (global4.x % 32u)), ~(-global3[_wgslsmith_index_u32(7109u, 28u)]), abs(_wgslsmith_div_i32(6581i, 33008i)), -2147483647i), true);
    var_0 = func_4(Struct_1(2147483647i != abs(-var_0.a), func_4(global2.c, _wgslsmith_f_op_f32(1354f * 734f), countOneBits(vec4<i32>(0i, 0i, 43533i, -1i)), !global2.b.x).d.x & abs(~global2.d.x), _wgslsmith_div_u32(func_2().b, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, 1u, 50405u), vec4<u32>(4294967295u, var_0.d.x, var_0.c.b, u_input.b))) >> (u_input.b % 32u), vec3<i32>(firstTrailingBit(i32(-1i) * -4785i), -33310i, min(17993i << (global0.x % 32u), -1i))), -1342f, _wgslsmith_clamp_vec4_i32(vec4<i32>(func_4(Struct_1(true, 15475u, global2.c.b, var_0.c.d), 439f, _wgslsmith_sub_vec4_i32(vec4<i32>(global2.c.d.x, var_0.c.d.x, -40576i, global2.a), vec4<i32>(global2.e, -25422i, -14195i, global3[_wgslsmith_index_u32(61188u, 28u)])), !global2.b.x).e, global3[_wgslsmith_index_u32(abs(4294967295u), 28u)], _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global0.x, 28u)] >> (0u % 32u), ~40648i), 1i), _wgslsmith_div_vec4_i32(-(~vec4<i32>(2147483647i, var_0.c.d.x, 2147483647i, -2147483647i)), ~vec4<i32>(var_0.a, global3[_wgslsmith_index_u32(7297u, 28u)], 10992i, var_0.a)), vec4<i32>(-12861i, 23762i, _wgslsmith_mod_i32(-39907i, ~global2.e), var_0.e)), var_0.c.a);
    var var_1 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(abs(var_0.c.c), select(1u, u_input.b, global2.c.a), all(global2.b)), min(global4.x, u_input.a.x) >> (firstTrailingBit(57796u) % 32u)) & _wgslsmith_clamp_u32(~u_input.b, _wgslsmith_dot_vec3_u32(global0.zyx, var_0.d) & _wgslsmith_dot_vec2_u32(var_0.d.yy, global0.wy), _wgslsmith_mult_u32(~global2.c.c, u_input.b | u_input.a.x)), 29u)], 1f, vec4<i32>(18757i & ~func_2().d.x, global3[_wgslsmith_index_u32(var_0.d.x, 28u)], var_0.c.d.x, ~(-1i)), global2.c.a);
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(~(~1u)), ~global4.x, _wgslsmith_sub_u32(11223u, _wgslsmith_clamp_u32(4294967295u, 61554u << (global4.x % 32u), global0.x))), var_0.d);
    return reverseBits(-(~vec4<i32>(global2.e, -1i, -1i, _wgslsmith_div_i32(var_0.e, var_1.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = 0u;
    var var_2 = vec2<i32>(0i, global3[_wgslsmith_index_u32(~u_input.a.x, 28u)]);
    var var_3 = false & !global2.b.x;
    global3 = array<i32, 28>();
    var var_4 = var_1;
    var var_5 = _wgslsmith_dot_vec4_i32((~_wgslsmith_div_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(24264u, 28u)], global3[_wgslsmith_index_u32(var_0, 28u)], var_2.x, global2.c.d.x), vec4<i32>(global3[_wgslsmith_index_u32(global4.x, 28u)], var_2.x, -75i, global2.a)) & func_1()) >> (vec4<u32>(global4.x ^ ~9414u, firstTrailingBit(countOneBits(58580u)), select(_wgslsmith_mult_u32(33915u, u_input.b), 5513u & var_0, false), 94552u) % vec4<u32>(32u)), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~reverseBits(global2.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -461f), 2495f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(819f - 344f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(142f))) * -831f), -220f, _wgslsmith_f_op_f32(f32(-1f) * -610f)), i32(-1i) * -1940i, global2.c.d);
}

