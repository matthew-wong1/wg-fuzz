struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, Struct_1(true, vec2<f32>(-142f, -717f), vec4<f32>(120f, 188f, 1461f, 524f), 7891i));

var<private> global1: f32;

var<private> global2: array<Struct_2, 18>;

var<private> global3: vec2<u32>;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = !vec4<bool>(!all(vec3<bool>(global0.a, true, true)), select(global4.c.x <= 594f, global4.a, true || global0.b.a), true, true);
    var var_1 = -250f;
    var_0 = !vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(307f, 933f, global4.a)))) != global0.b.c.x, true, global4.a, any(var_0.xz));
    let var_2 = firstTrailingBit(max(vec2<u32>(_wgslsmith_add_u32(u_input.d.x, 1u), ~min(4294967295u, arg_0)), ~u_input.c.wy));
    return global0.b.a | true;
}

fn func_2() -> vec2<bool> {
    global3 = u_input.d.zz;
    let var_0 = vec3<bool>(!func_3(~47114u), true, global0.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(-global0.b.b);
    var_1 = global0.b.c.yy;
    var_1 = vec2<f32>(-1523f, _wgslsmith_f_op_f32(exp2(global4.c.x)));
    return var_0.yx;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<bool>) -> vec2<f32> {
    var var_0 = vec4<bool>(true, any(!vec3<bool>(arg_1.e.a, global0.b.b.x >= global0.b.b.x, true)), all(!vec2<bool>(any(vec4<bool>(true, global4.a, false, global4.a)), false)), false);
    global3 = u_input.d.yz;
    global3 = ~arg_0;
    global0 = Struct_2(any(func_2()), Struct_1(!(~u_input.e.x < 0i), vec2<f32>(global4.c.x, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(1437f - global4.c.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -238f), 2878f, 1000f, _wgslsmith_f_op_f32(step(arg_1.e.c.x, 327f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global4.c, global0.b.c))), -11982i));
    global0 = Struct_2(global0.a, global0.b);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.e.c.wy + global0.b.b) - _wgslsmith_f_op_vec2_f32(sign(global4.b))) + arg_1.b.b.c.xx) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.b.b.x, arg_1.b.b.c.x) - _wgslsmith_f_op_vec2_f32(-global4.b)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.e.b.x, -312f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.c.x, global4.b.x) + vec2<f32>(1000f, arg_1.b.b.c.x)), var_0.yw)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global2 = array<Struct_2, 18>();
    var var_0 = !select(vec4<bool>(all(vec4<bool>(true, true, arg_2.a, arg_2.a)), true, false, arg_1.a), select(select(!vec4<bool>(true, false, global4.a, false), select(vec4<bool>(global0.b.a, false, arg_1.a, true), vec4<bool>(arg_2.a, global0.b.a, global4.a, global0.a), false), !global0.b.a), !select(vec4<bool>(false, true, true, arg_2.a), vec4<bool>(true, false, false, global4.a), vec4<bool>(false, global0.b.a, false, global0.a)), select(select(vec4<bool>(true, global4.a, true, false), vec4<bool>(false, false, true, global4.a), arg_2.a), !vec4<bool>(false, true, global0.a, false), vec4<bool>(true, arg_1.b.a, global0.b.a, global4.a))), global4.a);
    let var_1 = _wgslsmith_mod_i32(-1i, -_wgslsmith_add_i32(1i, i32(-1i) * -1i) | _wgslsmith_add_i32(~reverseBits(u_input.e.x), arg_1.b.d >> (1u % 32u)));
    global3 = vec2<u32>(~29697u, u_input.c.x);
    global4 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-266f, _wgslsmith_f_op_f32(f32(-1f) * -907f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2026f, 832f), vec2<f32>(arg_2.c.x, 269f), var_0.zw)))))) - arg_1.b.c.wy), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(813f, _wgslsmith_f_op_f32(-arg_1.b.b.x), 425f, -164f))), reverseBits(-1i) << (_wgslsmith_mult_u32(global3.x & ~global3.x, _wgslsmith_div_u32(_wgslsmith_add_u32(global3.x, 4294967295u), 0u)) % 32u));
    return Struct_1(global4.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(u_input.d.xy, Struct_3(min(u_input.c.x, 2817u), arg_1, global3.x, arg_1.b.d, arg_2), var_0.xwz)) + vec2<f32>(_wgslsmith_f_op_f32(abs(arg_2.b.x)), _wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(u_input.d.x, 1u), Struct_3(1u, Struct_2(true, Struct_1(true, global4.b, arg_1.b.c, u_input.a.x)), 0u, -23095i, arg_1.b), vec3<bool>(global4.a, true, global0.a))).x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.b.c.x)), -1118f, -1419f, -466f))), min(-2147483647i, min(5945i, _wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.e.wy) & (i32(-1i) * -6502i))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = u_input.c.yz;
    var var_1 = ~(~u_input.d.x) <= global3.x;
    var var_2 = Struct_3(u_input.d.x, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(firstLeadingBit(~u_input.c), _wgslsmith_clamp_vec4_u32(abs(u_input.c), u_input.c ^ u_input.c, u_input.c)), 18u)], abs(0u & ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(1u, var_0.x))), -33828i, Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.c.x, global4.b.x)), arg_0.c, global4.d << (var_0.x % 32u)));
    var var_3 = arg_0.a;
    var var_4 = ~vec2<i32>(global4.d, arg_0.d);
    return StorageBuffer(vec2<u32>(min(~var_0.x ^ ~var_2.c, var_0.x), 1u), var_4.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.b.c.x, global4.c.x)), -1000f, _wgslsmith_f_op_f32(1345f + var_2.e.c.x), _wgslsmith_f_op_f32(global0.b.b.x - 321f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b.c - vec4<f32>(-352f, global4.b.x, var_2.b.b.b.x, arg_0.b.x)) + global0.b.c))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-576f, global4.c.x, arg_1.b.b.x, -1606f))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~4294967295u, 18u)];
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.c.x - var_0.b.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b.x) + _wgslsmith_f_op_f32(global4.b.x + _wgslsmith_div_f32(-1631f, -1000f)))));
    global2 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(189f, 437f, 1149f, 601f), _wgslsmith_f_op_vec4_f32(-global0.b.c)) + vec4<f32>(943f, _wgslsmith_f_op_f32(sign(-1150f)), _wgslsmith_f_op_f32(trunc(-516f)), var_0.b.c.x)), Struct_2(_wgslsmith_f_op_f32(global0.b.b.x + global4.b.x) < _wgslsmith_f_op_f32(-556f * 790f), Struct_1(global4.a, _wgslsmith_f_op_vec2_f32(func_1(u_input.c.wy, Struct_3(u_input.d.x, Struct_2(global4.a, global0.b), u_input.d.x, u_input.b.x, global0.b), vec3<bool>(false, true, global0.a))), _wgslsmith_f_op_vec4_f32(-global0.b.c), ~1i)), global0.b), global2[_wgslsmith_index_u32((0u >> (global3.x % 32u)) & 31244u, 18u)]);
}

