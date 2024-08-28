struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: f32) -> vec2<i32> {
    global1 = global0[_wgslsmith_index_u32(~5510u, 9u)];
    var var_0 = global1.a.x;
    let var_1 = 4463u;
    var var_2 = global1.a;
    var var_3 = Struct_1(_wgslsmith_mod_vec2_i32(-(~_wgslsmith_add_vec2_i32(u_input.a.yw, vec2<i32>(-1i, -3367i))), ~reverseBits(global1.a)), ~(global1.b ^ vec3<u32>(~global1.b.x, _wgslsmith_add_u32(1u, 1u), global1.b.x)), -1164f, vec3<bool>(all(!vec2<bool>(true, global1.d.x)), !(global1.b.x < firstTrailingBit(global1.b.x)), true));
    return select(abs(vec2<i32>(i32(-1i) * -53489i, min(_wgslsmith_add_i32(-32101i, var_2.x), ~(-2147483647i)))), u_input.a.xx | var_3.a, false);
}

fn func_2() -> i32 {
    global1 = global0[_wgslsmith_index_u32(0u, 9u)];
    let var_0 = !(!select(true, false, all(!vec4<bool>(global3.x, false, global1.d.x, true))));
    let var_1 = vec2<u32>(global1.b.x, 0u);
    global1 = Struct_1(vec2<i32>(global1.a.x, _wgslsmith_add_i32(global1.a.x, -24289i) & -3434i) | global1.a, vec3<u32>(~(~1u), _wgslsmith_dot_vec3_u32(~global1.b, ~vec3<u32>(var_1.x, global1.b.x, 1u)), firstTrailingBit(var_1.x)) >> ((global1.b | _wgslsmith_add_vec3_u32(global1.b, _wgslsmith_div_vec3_u32(vec3<u32>(56879u, global1.b.x, var_1.x), global1.b))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(floor(1342f))), !vec3<bool>(~u_input.c > ~1i, any(vec4<bool>(global1.d.x, global1.d.x, false, false)), global3.x != true));
    var var_2 = Struct_1(func_3(-global1.a.x, 0u, 360f, global1.c), global1.b, -1454f, select(select(global3.xxz, !(!global1.d), true), select(!select(global1.d, global1.d, vec3<bool>(global1.d.x, global1.d.x, global1.d.x)), !vec3<bool>(global1.d.x, false, global3.x), select(global1.d, global3.wyy, global1.d)), select(!select(global1.d, vec3<bool>(true, false, true), false), vec3<bool>(any(vec3<bool>(global1.d.x, global3.x, false)), global1.b.x <= 0u, false), !(!global3.wxy))));
    return _wgslsmith_mult_i32(493i, -global1.a.x | min(u_input.b >> (~1524u % 32u), 25761i));
}

fn func_1(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_div_vec4_u32(firstTrailingBit(abs(select(_wgslsmith_add_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), vec4<u32>(global1.b.x, 0u, 78136u, 0u)), vec4<u32>(1u, 4294967295u, global1.b.x, 59293u), global1.d.x))), vec4<u32>(~(4294967295u << (global1.b.x % 32u)) | reverseBits(~0u), global1.b.x, global1.b.x, global1.b.x));
    let var_2 = global0[_wgslsmith_index_u32(~(~global1.b.x ^ var_1.x), 9u)];
    let var_3 = global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(var_1.x, 1u), global1.b.x) ^ var_1.x, 9u)];
    let var_4 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-18281i, _wgslsmith_div_i32(var_2.a.x, var_2.a.x) | _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), vec2<i32>(var_3.a.x, 78678i)), vec3<u32>(global1.b.x, 1u, min(var_3.b.x, _wgslsmith_dot_vec2_u32(var_2.b.zz | global1.b.xz, select(vec2<u32>(4294967295u, 1u), var_2.b.yz, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.c - global1.c)))), vec3<bool>(all(!(!vec4<bool>(arg_0, global3.x, global3.x, global3.x))), any(!var_3.d.xz), global1.d.x));
    return 31023i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    var var_0 = Struct_1(vec2<i32>(global1.a.x, func_1(global1.d.x, global3.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(global1.b.x, global1.b.x, 4294967295u), global1.b)), ~(~global1.b)), reverseBits(firstTrailingBit(~vec3<u32>(13131u, 8113u, 52817u))), vec3<u32>(min(_wgslsmith_add_u32(1u, global1.b.x), global1.b.x), ~global1.b.x, 40515u)), 356f, select(vec3<bool>((global1.b.x | global1.b.x) > min(36250u, global1.b.x), all(!vec4<bool>(global3.x, true, true, false)), !(global1.c > global1.c)), vec3<bool>(true, false, false), global1.d));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1651f) + _wgslsmith_div_f32(var_0.c, var_0.c))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c)))), _wgslsmith_f_op_f32(abs(426f)));
    let var_2 = Struct_1(u_input.a.xw, _wgslsmith_mod_vec3_u32(~reverseBits(global1.b), vec3<u32>(global1.b.x, var_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(68624u, global1.b.x), ~global1.b.zy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1504f))), global1.d);
    global3 = vec4<bool>(false, global1.d.x, false, all(var_2.d));
    var_0 = Struct_1(global1.a, ~vec3<u32>(abs(0u), abs(_wgslsmith_mod_u32(var_0.b.x, global1.b.x)), ~45912u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), !(!(!select(vec3<bool>(true, global1.d.x, true), vec3<bool>(true, var_0.d.x, global1.d.x), vec3<bool>(false, false, true)))));
    global2 = _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(339f - global1.c))), -797f)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.c, _wgslsmith_f_op_f32(trunc(362f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.c, -320f)) + _wgslsmith_f_op_f32(var_0.c + 1567f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), var_2.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(287f);
}

