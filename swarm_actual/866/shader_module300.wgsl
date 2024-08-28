struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(16394u, 21502u, 9126u, 106509u));

var<private> global1: vec2<i32>;

var<private> global2: i32;

var<private> global3: array<bool, 2> = array<bool, 2>(true, true);

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = global1.x < 1i;
    return Struct_1(vec3<i32>(u_input.b, i32(-1i) * -2371i, 2147483647i));
}

fn func_3(arg_0: Struct_1) -> Struct_4 {
    var var_0 = global3[_wgslsmith_index_u32(15896u, 2u)];
    var var_1 = vec3<bool>(any(vec4<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(1u, 2u)], false, true, false)) | all(vec4<bool>(true, global3[_wgslsmith_index_u32(global0.a.x, 2u)], false, false)), global3[_wgslsmith_index_u32(13080u, 2u)], true, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.a.x, _wgslsmith_mult_u32(global0.a.x, global0.a.x), 4294967295u), 2u)])), any(!vec2<bool>(!global3[_wgslsmith_index_u32(global0.a.x, 2u)], !global3[_wgslsmith_index_u32(global0.a.x, 2u)])), all(!(!select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(global0.a.x, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 2u)], false, global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(48235u, 2u)], global3[_wgslsmith_index_u32(global0.a.x, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(global0.a.x, 2u)])))));
    global4 = u_input.b;
    let var_2 = ~countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global0.a.xy, global0.a.ww), _wgslsmith_clamp_vec2_u32(global0.a.yx, vec2<u32>(global0.a.x, 4294967295u), global0.a.wz)), select(global0.a.x, global0.a.x, !global3[_wgslsmith_index_u32(5876u, 2u)]), ~21997u, 0u));
    global4 = _wgslsmith_mod_i32(firstLeadingBit(-select(-42344i, arg_0.a.x, global3[_wgslsmith_index_u32(22515u, 2u)])), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_dot_vec2_i32(max(arg_0.a.yx, vec2<i32>(u_input.c, global1.x)), abs(arg_0.a.zz)), u_input.a), _wgslsmith_mult_i32(_wgslsmith_mult_i32(25922i, -1i) ^ _wgslsmith_add_i32(-2147483647i, arg_0.a.x), -2147483647i)));
    return Struct_4(_wgslsmith_div_u32(~(1u >> (min(45452u, global0.a.x) % 32u)), ~_wgslsmith_sub_u32(~var_2.x, ~83735u)), Struct_3(abs(abs(select(vec4<u32>(global0.a.x, 111325u, 10098u, var_2.x), vec4<u32>(var_2.x, global0.a.x, 41596u, global0.a.x), vec4<bool>(false, true, global3[_wgslsmith_index_u32(61516u, 2u)], false))))), func_2(Struct_3(vec4<u32>(_wgslsmith_add_u32(global0.a.x, global0.a.x), _wgslsmith_clamp_u32(var_2.x, var_2.x, var_2.x), 2780u << (global0.a.x % 32u), var_2.x)), !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], select(global3[_wgslsmith_index_u32(34374u, 2u)], false, global3[_wgslsmith_index_u32(global0.a.x, 2u)]))));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> i32 {
    let var_0 = func_3(func_2(arg_1, vec2<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 2u)], false, global3[_wgslsmith_index_u32(global0.a.x, 2u)], global3[_wgslsmith_index_u32(arg_1.a.x, 2u)])), !(arg_1.a.x >= arg_1.a.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-161f - 1000f), _wgslsmith_f_op_f32(abs(-1833f)), -536f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1603f, 1842f, 2301f) + vec3<f32>(1120f, -1177f, -800f)) + vec3<f32>(-723f, 577f, 100f)))));
    var var_2 = var_0;
    var var_3 = func_3(Struct_1(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, -18360i), func_2(Struct_3(vec4<u32>(var_0.a, 1u, 4294967295u, var_0.b.a.x)), vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 2u)])).a.x), ~min(2147483647i, var_0.c.a.x), global1.x))).b;
    global0 = arg_1;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(var_2.c.a.x, var_2.c.a.x, -2147483647i, global1.x), -vec4<i32>(global1.x, -31510i, 1i, 86242i)), -vec4<i32>(arg_0, global1.x, u_input.c, var_2.c.a.x) & firstLeadingBit(vec4<i32>(var_0.c.a.x, -58086i, -52274i, 0i))), -(~global1.x), -(_wgslsmith_mult_i32(u_input.a, -1i) & -57950i)), vec3<i32>(~(-2147483647i), -((global1.x >> (0u % 32u)) ^ -var_2.c.a.x), (u_input.c ^ 1i) >> (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(min(vec4<u32>(_wgslsmith_sub_u32(~1u, abs(65487u)), _wgslsmith_mod_u32(4294967295u, global0.a.x >> (18485u % 32u)), global0.a.x, min(_wgslsmith_mult_u32(30220u, global0.a.x), 63072u)), ~vec4<u32>(0u, 2590u & global0.a.x, _wgslsmith_sub_u32(global0.a.x, global0.a.x), _wgslsmith_mod_u32(global0.a.x, 88393u))), reverseBits(vec4<u32>(~_wgslsmith_sub_u32(1u, global0.a.x), ~1u, _wgslsmith_mult_u32(~global0.a.x, 38820u), ~global0.a.x)));
    let var_1 = Struct_2(true, _wgslsmith_mod_i32(_wgslsmith_add_i32(abs(u_input.b), func_1(-2147483647i, Struct_3(global0.a))), -61247i) ^ u_input.a, func_3(func_2(Struct_3(~global0.a), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, global3[_wgslsmith_index_u32(11246u, 2u)]), vec2<bool>(true, false)), true))).c, vec3<u32>(global0.a.x, 9853u, var_0.x));
    var var_2 = !vec3<bool>(true, all(select(vec4<bool>(false, false, var_1.a, true), select(vec4<bool>(var_1.a, true, global3[_wgslsmith_index_u32(48857u, 2u)], true), vec4<bool>(false, var_1.a, global3[_wgslsmith_index_u32(12556u, 2u)], true), vec4<bool>(false, true, global3[_wgslsmith_index_u32(global0.a.x, 2u)], global3[_wgslsmith_index_u32(global0.a.x, 2u)])), !vec4<bool>(true, var_1.a, var_1.a, var_1.a))), global3[_wgslsmith_index_u32(abs(~4294967295u), 2u)]);
    var_0 = ~vec4<u32>(abs(var_0.x), max(global0.a.x, 4294967295u), 1u, ~_wgslsmith_div_u32(~global0.a.x, 1u));
    let var_3 = func_3(Struct_1(var_1.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1000f)), firstTrailingBit(func_3(Struct_1(vec3<i32>(var_1.b, -13481i, 2147483647i))).b.a.zxx) >> (select(vec3<u32>(_wgslsmith_mod_u32(var_0.x, global0.a.x), _wgslsmith_clamp_u32(var_0.x, var_1.d.x, var_1.d.x), _wgslsmith_mod_u32(20223u, var_0.x)), min(vec3<u32>(34256u, 4294967295u, 1065u), var_1.d), select(var_2.x, !var_1.a, global3[_wgslsmith_index_u32(1u, 2u)])) % vec3<u32>(32u)), -_wgslsmith_sub_vec4_i32(~(-vec4<i32>(1i, -11597i, global1.x, 2147483647i)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -1i, global1.x, 2147483647i), vec4<i32>(global1.x, u_input.c, -11532i, var_3.c.a.x)))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i & _wgslsmith_div_i32(var_1.c.a.x, 410i), 24063i, _wgslsmith_mod_i32(abs(var_3.c.a.x), i32(-1i) * -22761i)), var_1.c.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1363f, 800f), vec2<f32>(-1172f, 999f), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(693f, -1126f) * vec2<f32>(867f, 1000f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-599f, -1000f)))) - vec2<f32>(-1000f, 1f))));
}

