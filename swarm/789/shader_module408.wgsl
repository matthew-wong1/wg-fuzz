struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19>;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(arg_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1025f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(ceil(global1.c.x))))));
    global0 = array<vec4<bool>, 19>();
    global1 = arg_0;
    var var_1 = Struct_2(any(vec3<bool>((global1.d | true) != true, all(vec2<bool>(true, false)) && false, any(!vec4<bool>(arg_0.d, false, arg_0.d, arg_0.d)))), Struct_1(arg_0.c.yz, 26191i, arg_0.c, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(778f))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(arg_0.c.x, 372f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1.a.x, -1089f), -664f))), vec3<i32>(-1i) * -vec3<i32>(~(-2147483647i), global1.b, _wgslsmith_mod_i32(0i, 24740i)));
    let var_2 = i32(-1i) * -43266i;
    return arg_1;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec2<f32> {
    let var_0 = select(select(vec4<bool>(global1.d, global1.d, !arg_1, global1.d), select(vec4<bool>(true, arg_0 < arg_0, all(vec3<bool>(global1.d, false, global1.d)), global1.d && true), select(!global0[_wgslsmith_index_u32(u_input.a, 19u)], vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(false, false, true, arg_1)), select(!vec4<bool>(global1.d, false, arg_1, global1.d), !global0[_wgslsmith_index_u32(4294967295u, 19u)], any(vec3<bool>(arg_1, arg_1, global1.d)))), arg_1), !select(vec4<bool>(global1.d, select(true, arg_1, false), u_input.a == u_input.a, true), select(!global0[_wgslsmith_index_u32(4294967295u, 19u)], !vec4<bool>(true, false, arg_1, true), true), vec4<bool>(false, true, arg_1, any(vec4<bool>(true, false, true, global1.d)))), global0[_wgslsmith_index_u32(1u, 19u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global1.c.zy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0)) - global1.a)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(700f, _wgslsmith_f_op_f32(arg_0 + arg_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 * global1.a.x)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global1.c.x, var_1.x)), _wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1318f, arg_0) - global1.c.zx))))), _wgslsmith_mod_i32(select(abs(~(-4990i)), _wgslsmith_add_i32(u_input.b.x >> (76230u % 32u), min(0i, global1.b)), var_0.x), ~arg_2.x), global1.c, true);
    var_1 = var_2.c.yx;
    global1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a + global1.a), var_2.a), -1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global1.c))), _wgslsmith_f_op_f32(ceil(arg_0)) == -1047f);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_2.a.x)), global1.d)) - var_2.a))), global1.a, vec2<bool>(any(select(vec4<bool>(true, var_2.d, false, arg_1), !vec4<bool>(true, var_2.d, var_2.d, true), vec4<bool>(var_2.d, false, false, arg_1))), false && !(-843f > arg_0))));
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = select(vec2<u32>(u_input.a, u_input.a ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 15646u, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, 0u, u_input.a)), u_input.a)), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, max(38962u, u_input.a))), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(global1.c.yy + arg_0.b.a), 1i, _wgslsmith_f_op_vec3_f32(step(global1.c, vec3<f32>(-892f, global1.a.x, global1.a.x))), select(arg_0.b.d, true, global1.d)), vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), ~u_input.a)), _wgslsmith_sub_vec2_u32(abs(firstTrailingBit(vec2<u32>(94501u, 82793u))), func_2(Struct_1(arg_0.b.a, 5672i, vec3<f32>(1372f, 1000f, 1780f), false), vec2<u32>(u_input.a, u_input.a)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 41249u), vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)))), !vec2<bool>(any(vec3<bool>(false, true, false)), all(select(vec2<bool>(false, true), vec2<bool>(true, global1.d), arg_0.b.d))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.c * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) - _wgslsmith_f_op_vec2_f32(-global1.c.zz)) + _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-1000f * 245f), false, -vec2<i32>(30129i, arg_0.b.b), min(u_input.b.xx, arg_0.d.xy))))), -1i & (arg_0.d.x >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(9603u, 101488u, 49517u), vec3<u32>(1u, u_input.a, 26252u)), min(vec3<u32>(var_0.x, var_0.x, 0u), vec3<u32>(var_0.x, var_0.x, 51782u))) % 32u)), _wgslsmith_f_op_vec3_f32(arg_0.b.c - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.c.x, arg_0.b.c.x, 1140f) * vec3<f32>(1000f, global1.a.x, -598f)) - vec3<f32>(1383f, -489f, arg_0.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-995f, global1.c.x, arg_0.b.a.x), global1.c)))), arg_0.b.d == (u_input.a != reverseBits(max(var_0.x, var_0.x))));
    var_0 = ~firstTrailingBit(firstLeadingBit(vec2<u32>(~var_0.x, var_0.x)));
    let var_1 = ~vec3<u32>(_wgslsmith_add_u32(var_0.x, 0u), ~0u, ~(~0u));
    let var_2 = 1000f;
    return _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_div_i32(~0i, -(i32(-1i) * -1i)), firstLeadingBit(_wgslsmith_mod_i32(u_input.b.x, global1.b) ^ (global1.b << (4294967295u % 32u)))) & -15598i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), max(func_1(Struct_2(true, Struct_1(vec2<f32>(global1.c.x, 1000f), 53457i, vec3<f32>(global1.c.x, -1000f, -331f), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, 346f)), firstTrailingBit(vec3<i32>(-1i, 1i, 0i)))), global1.b), vec3<f32>(1366f, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-global1.c.x), true, u_input.b.xz, vec2<i32>(-2147483647i, firstTrailingBit(global1.b)))).x, -169f), false);
    var var_1 = -427f;
    var var_2 = select(~abs(vec4<u32>(87952u, u_input.a, ~u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(~select(vec4<u32>(u_input.a, u_input.a, 1u, 18720u), vec4<u32>(37493u, 1u, 65489u, 0u), global1.d), vec4<u32>(~0u, ~1u, ~var_0, abs(u_input.a))) << (_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 29954u, u_input.a)), vec4<u32>(func_2(Struct_1(vec2<f32>(global1.a.x, -1000f), global1.b, global1.c, global1.d), vec2<u32>(var_0, u_input.a)).x, ~u_input.a, u_input.a, var_0)) % vec4<u32>(32u)), all(!global0[_wgslsmith_index_u32(u_input.a | 51319u, 19u)]));
    let var_3 = any(select(vec2<bool>(true, true), !(!vec2<bool>(true, global1.d)), vec2<bool>(true, true))) && (-1000f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_f_op_f32(-460f - global1.a.x), true | global1.d)) * global1.a.x));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a.x, global1.c.x), global1.a, false)))), 2147483647i, _wgslsmith_f_op_vec3_f32(-global1.c), all(vec4<bool>(all(vec4<bool>(global1.d, var_3, false, false)) || false, select(select(var_3, var_3, var_3), true, true), var_3, var_3)));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(u_input.b.wyz << (~vec3<u32>(16930u, u_input.a, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, u_input.b.x, var_5.b | 11865i)) & func_1(Struct_2(all(vec3<bool>(var_4.d, var_4.d, false)), Struct_1(vec2<f32>(-1476f, global1.c.x), -45235i, var_4.c, var_5.d), _wgslsmith_div_vec2_f32(var_4.a, global1.c.zx), u_input.b.xxw)), _wgslsmith_clamp_vec4_u32(countOneBits(~(vec4<u32>(82719u, var_2.x, 0u, 34138u) ^ vec4<u32>(1u, 1u, var_2.x, u_input.a))), max(vec4<u32>(1u, 1u, 9592u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 220u, var_0, var_0), vec4<u32>(4294967295u, 41481u, 4294967295u, u_input.a))) << (vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), reverseBits(45644u), ~33727u, ~4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(reverseBits(abs(vec4<u32>(var_0, var_0, 4294967295u, var_2.x))), vec4<u32>(max(40361u, 1u), _wgslsmith_clamp_u32(var_0, 19929u, 0u), var_0, ~35708u))), min(~(~vec3<u32>(69397u, 1u, 22896u)), ~(vec3<u32>(0u, 4294967295u, 4294967295u) | (vec3<u32>(50637u, u_input.a, 1u) >> (vec3<u32>(var_0, var_0, var_0) % vec3<u32>(32u))))), u_input.b.www, _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_add_u32(var_0, ~var_2.x)), var_2.x, u_input.a));
}

