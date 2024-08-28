struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, -16787i);

var<private> global1: Struct_2;

var<private> global2: array<f32, 14> = array<f32, 14>(-484f, -1000f, -216f, -361f, 1738f, -365f, 1580f, -1883f, 1161f, 742f, -152f, -193f, 617f, -352f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> vec2<u32> {
    var var_0 = abs(_wgslsmith_mult_u32(~(~_wgslsmith_mod_u32(global1.b.e, 42619u)), global1.b.e ^ 4294967295u));
    var var_1 = Struct_2(vec2<u32>(countOneBits(87743u), global1.b.e), global1.b);
    let var_2 = vec4<f32>(global1.b.a.x, var_1.b.a.x, _wgslsmith_f_op_f32(880f - _wgslsmith_f_op_f32(f32(-1f) * -2177f)), global2[_wgslsmith_index_u32(21816u, 14u)]);
    global2 = array<f32, 14>();
    global1 = Struct_2(~min(global1.a, ~vec2<u32>(global1.b.e, global1.b.e)), Struct_1(_wgslsmith_f_op_vec2_f32(var_1.b.a - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.x, 199f), vec2<f32>(464f, -130f))))), _wgslsmith_clamp_i32(u_input.a, _wgslsmith_add_i32(global1.b.b, 2147483647i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(35932i, 0i, 2147483647i, 28466i), vec4<i32>(7720i, arg_1.x, arg_1.x, u_input.a)), _wgslsmith_mod_i32(u_input.a, 2147483647i))), !all(vec2<bool>(true, true)), select(vec3<bool>(var_1.b.a.x > -736f, var_1.b.c, false), !vec3<bool>(true, false, var_1.b.d.x), vec3<bool>(arg_0 != global1.b.b, !var_1.b.c, true)), global1.b.e));
    return vec2<u32>(~0u, (var_1.b.e | reverseBits(var_1.b.e)) << (68240u % 32u));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_u32(reverseBits(firstLeadingBit(~vec4<u32>(7289u, 1u, 0u, 4294967295u))) ^ firstTrailingBit(abs(abs(vec4<u32>(41703u, 1u, 13616u, 0u)))), min(~((vec4<u32>(15163u, 4294967295u, 1u, 0u) >> (vec4<u32>(16934u, global1.b.e, global1.b.e, 37138u) % vec4<u32>(32u))) & select(vec4<u32>(global1.a.x, 4294967295u, 32164u, 1u), vec4<u32>(22042u, 4294967295u, arg_0, arg_0), global1.b.d.x)), ~vec4<u32>(firstTrailingBit(global1.b.e), 54112u, _wgslsmith_add_u32(global1.b.e, global1.b.e), global1.b.e)));
    let var_1 = ~(~(global1.a.x | ((var_0.x & var_0.x) ^ reverseBits(32125u))));
    var var_2 = 820f;
    var var_3 = min(-2212i, _wgslsmith_add_i32(2147483647i, -2147483647i));
    let var_4 = vec3<i32>(_wgslsmith_dot_vec2_i32(~(~reverseBits(vec2<i32>(global1.b.b, u_input.a))), (vec2<i32>(global1.b.b, global0.x) << (func_3(0i, vec4<i32>(global0.x, u_input.a, global1.b.b, 2147483647i)) % vec2<u32>(32u))) >> ((~var_0.xz << ((global1.a | var_0.xx) % vec2<u32>(32u))) % vec2<u32>(32u))), u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global1.b.b, -1i, -1i), -vec3<i32>(-2147483647i, 18403i, 10510i) << (var_0.wzw % vec3<u32>(32u))), 14061i));
    return global1.b;
}

fn func_1() -> u32 {
    global1 = Struct_2(global1.a, func_2(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global1.a.x), vec3<u32>(global1.a.x, global1.a.x, global1.a.x)), global1.b.e), global2[_wgslsmith_index_u32(6651u, 14u)]));
    var var_0 = select(!select(vec4<bool>(!global1.b.c, any(vec4<bool>(global1.b.c, true, true, global1.b.d.x)), select(false, true, false), !global1.b.c), select(vec4<bool>(true, false, false, true), !vec4<bool>(true, true, global1.b.c, false), select(vec4<bool>(global1.b.d.x, true, false, true), vec4<bool>(true, false, true, false), global1.b.d.x)), any(vec4<bool>(true, global1.b.c, false, false))), vec4<bool>(func_2(~func_2(global1.a.x, -460f).e, global2[_wgslsmith_index_u32(1u, 14u)]).d.x, select(global1.b.d.x, (-2147483647i <= global0.x) || all(global1.b.d), global1.b.c), false, 22890i < -global1.b.b), (~0u ^ global1.a.x) >= 19245u);
    var var_1 = _wgslsmith_div_i32(~1i, 17972i);
    global1 = Struct_2(select(min(global1.a, vec2<u32>(32573u, global1.a.x)) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.b.e, 1u, 24034u), vec4<u32>(global1.b.e, global1.b.e, global1.b.e, global1.a.x)), abs(62142u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.x, ~global1.a.x), func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.b, 1i, global0.x), vec3<i32>(1i, global1.b.b, 1i)), vec4<i32>(-2147483647i, 2147483647i, u_input.a, u_input.a))), !vec2<bool>(true, select(false, true, false))), global1.b);
    global2 = array<f32, 14>();
    return 20971u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(func_1() < 70492u, false, global1.b.c, (global1.b.d.x & false) && true);
    global2 = array<f32, 14>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)) + global1.b.a.x);
    global1 = Struct_2(global1.a, func_2(~(~17410u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-102f)) * -617f), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(1u, 14u)])), global1.b.d.x))));
    var var_2 = countOneBits(vec2<i32>(global1.b.b, u_input.a) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, 37603i), vec2<i32>(global1.b.b, 1i), vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(-1i, global0.x))) ^ vec2<i32>(u_input.a, -reverseBits(select(-2147483647i, u_input.a, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-291f - -1114f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a.x - global2[_wgslsmith_index_u32(~4294967295u, 14u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~21324u, 14u)] + _wgslsmith_f_op_f32(ceil(-546f)))))), vec2<f32>(1000f, func_2(func_2(func_1(), _wgslsmith_f_op_f32(step(227f, -183f))).e, global2[_wgslsmith_index_u32(44436u, 14u)]).a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -603f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1374f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(419f, global2[_wgslsmith_index_u32(global1.a.x, 14u)]) + _wgslsmith_f_op_f32(107f + 2047f))), 1f));
}

