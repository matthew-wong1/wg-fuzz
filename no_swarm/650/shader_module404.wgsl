struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: bool,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, 250f, 637f, -822f);

var<private> global1: Struct_4 = Struct_4(vec2<i32>(-15736i, 1164i), vec2<u32>(119534u, 1u), true, false);

var<private> global2: array<vec3<u32>, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_2) -> bool {
    global1 = Struct_4(vec2<i32>(global1.a.x, global1.a.x), ~vec2<u32>(u_input.b.x, arg_0.a.b.x), false, ((global1.a.x < _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, global1.a.x), global1.a)) || all(vec3<bool>(global1.c, arg_0.a.a, arg_0.a.a))) | !(global1.c || select(false, arg_0.a.a, false)));
    var var_0 = vec3<i32>(23065i, global1.a.x, 1i);
    let var_1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(min(_wgslsmith_div_u32(u_input.a, 47036u), reverseBits(25601u)), global1.b.x) ^ global1.b.x, firstLeadingBit(firstLeadingBit(u_input.b.x)));
    global2 = array<vec3<u32>, 7>();
    var var_2 = false;
    return global1.c;
}

fn func_3() -> i32 {
    let var_0 = Struct_3(vec4<bool>(false, any(!vec3<bool>(false, global1.c, global1.c)), !(!global1.d) || ((4294967295u | global1.b.x) <= 0u), any(vec4<bool>(false, global1.c, global1.c, false)) | global1.d), _wgslsmith_add_vec4_i32(min(vec4<i32>(-2147483647i, 1i, 7580i << (u_input.b.x % 32u), global1.a.x), vec4<i32>(global1.a.x, ~global1.a.x, global1.a.x, -17768i)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-4509i, global1.a.x, -1038i, global1.a.x), vec4<i32>(global1.a.x, -12566i, -15801i, global1.a.x)))), Struct_2(Struct_1(global0.x != _wgslsmith_f_op_f32(max(global0.x, global0.x)), global2[_wgslsmith_index_u32(global1.b.x, 7u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.wx)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(708f, global0.x) * global0.zz)))), true, vec3<bool>(true, true, !global1.c));
    global2 = array<vec3<u32>, 7>();
    let var_1 = var_0.c.a;
    var var_2 = Struct_1(func_2(Struct_2(var_0.c.a)), vec3<u32>(countOneBits(23528u), min(1u, global1.b.x), _wgslsmith_mult_u32(~(43245u | var_1.b.x), min(_wgslsmith_mult_u32(1u, 4294967295u), select(global1.b.x, 84342u, var_1.a)))), var_1.c);
    global1 = Struct_4(select((vec2<i32>(-1i) * -vec2<i32>(2147483647i, global1.a.x)) << (firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), var_2.b.xz)) % vec2<u32>(32u)), vec2<i32>(-1i, global1.a.x), all(vec4<bool>(var_1.a, true, var_0.d, true))), _wgslsmith_add_vec2_u32(vec2<u32>(~67925u, ~1u) >> (firstTrailingBit(~var_2.b.yz) % vec2<u32>(32u)), var_0.c.a.b.zy ^ vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 1u), 4294967295u)), any(select(select(var_0.a, !vec4<bool>(true, false, var_1.a, false), var_1.a), !vec4<bool>(true, true, var_2.a, var_0.d), !(!var_0.a))), any(var_0.a.xzw));
    return global1.a.x;
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_3(select(vec4<bool>(global1.c, func_2(Struct_2(Struct_1(global1.d, vec3<u32>(global1.b.x, u_input.a, 42055u), vec2<f32>(499f, 1351f)))) == global1.c, all(!vec3<bool>(global1.c, global1.d, global1.d)), true), select(!select(vec4<bool>(false, false, global1.c, global1.c), vec4<bool>(global1.d, global1.c, global1.d, true), vec4<bool>(true, global1.c, true, global1.c)), select(select(vec4<bool>(global1.c, global1.d, false, global1.d), vec4<bool>(true, global1.d, global1.d, false), false), select(vec4<bool>(false, global1.c, true, false), vec4<bool>(global1.d, false, global1.d, global1.c), global1.d), vec4<bool>(true, false, true, global1.c)), vec4<bool>(true & global1.d, all(vec3<bool>(global1.c, global1.c, true)), true, !global1.d)), !vec4<bool>(u_input.b.x > u_input.a, global1.c || true, func_2(Struct_2(Struct_1(false, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global0.yx))), 4294967295u == u_input.b.x)), vec4<i32>(func_3(), abs(-(~global1.a.x)), global1.a.x, select(_wgslsmith_add_i32(-global1.a.x, -1i), (i32(-1i) * -13902i) >> (~global1.b.x % 32u), global1.d)), Struct_2(Struct_1(true, global2[_wgslsmith_index_u32(global1.b.x, 7u)], global0.zx)), !(!any(vec4<bool>(true, global1.d, true, true)) || false), vec3<bool>(1f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)), true, !global1.d));
    var var_1 = true | !(global1.c || false);
    var_1 = true;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(-319f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -524f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))), arg_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-140f, 433f, var_0.c.a.c.x, 606f), vec4<f32>(485f, 692f, arg_0.x, 239f)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, var_0.c.a.c.x, global0.x, var_0.c.a.c.x), vec4<f32>(global0.x, 1021f, global0.x, -363f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3276f), _wgslsmith_f_op_f32(var_0.c.a.c.x - -147f), 177f, _wgslsmith_f_op_f32(f32(-1f) * -895f))))));
    global1 = Struct_4(global1.a, var_0.c.a.b.zz, false, var_0.a.x);
    return Struct_3(!select(select(select(vec4<bool>(global1.d, false, false, global1.d), var_0.a, var_0.a), select(vec4<bool>(false, false, var_0.d, true), var_0.a, vec4<bool>(var_0.e.x, false, global1.c, global1.d)), !var_0.a), !(!var_0.a), (global1.a.x & var_0.b.x) <= var_0.b.x), abs(var_0.b | vec4<i32>(-var_0.b.x, ~global1.a.x, ~(-22154i), 5511i)), Struct_2(Struct_1(global1.c, ~u_input.b.wzz, vec2<f32>(_wgslsmith_f_op_f32(-307f + -640f), arg_0.x))), false, select(select(vec3<bool>(!global1.c, any(var_0.e.yy), var_0.e.x), vec3<bool>(global1.c, any(var_0.a.wxy), global1.c), all(!var_0.a.xxz)), select(vec3<bool>(false, var_0.c.a.a == global1.d, var_0.a.x), !(!var_0.a.yzx), var_0.c.a.a), any(var_0.a)));
}

fn func_4(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = -_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(max(~vec3<i32>(0i, global1.a.x, -2147483647i), vec3<i32>(-6625i, global1.a.x, arg_0.b.x)), ~vec3<i32>(2147483647i, 1i, 0i)), arg_0.b.zyx);
    var var_1 = Struct_4(vec2<i32>(0i, ~(-global1.a.x & global1.a.x)), arg_0.c.a.b.xz, true, !arg_0.d);
    let var_2 = arg_0.a.x;
    global2 = array<vec3<u32>, 7>();
    let var_3 = u_input.b.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.yzx;
    var var_1 = Struct_2(Struct_1(any(select(!vec2<bool>(true, global1.d), !vec2<bool>(global1.c, true), !vec2<bool>(true, global1.c))), ~u_input.b.yzx, var_0.yz));
    let var_2 = func_4(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-127f, global0.x))));
    global2 = array<vec3<u32>, 7>();
    global2 = array<vec3<u32>, 7>();
    var var_3 = vec2<f32>(421f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1232f)))) - var_0.x), 2114f)));
    var var_4 = Struct_4(var_2.zx, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.a.b.x, ~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 10472u, u_input.a), u_input.b.xyz << (vec3<u32>(global1.b.x, 12142u, var_1.a.b.x) % vec3<u32>(32u)))), 4294967295u), -3871i <= _wgslsmith_sub_i32(global1.a.x, _wgslsmith_clamp_i32(reverseBits(global1.a.x), var_2.x, var_2.x << (10701u % 32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, select(-2147483647i, 1i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(-7502i, var_2.x, 28386i, 10328i), vec4<i32>(0i, 1i, 21992i, var_2.x))), ~(vec3<i32>(-20803i, var_2.x, var_2.x) | var_2)) > -global1.a.x);
    global0 = vec4<f32>(var_1.a.c.x, func_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(157f)), -859f, true)), var_1.a.c.x)).c.a.c.x, -1225f, _wgslsmith_f_op_f32(func_1(var_0.zy).c.a.c.x * _wgslsmith_f_op_f32(-global0.x)));
    var var_5 = func_1(global0.zw).c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 1294f, var_1.a.c.x, var_0.x)) * vec4<f32>(global0.x, var_5.a.c.x, var_1.a.c.x, -146f))))), -var_2.zy);
}

