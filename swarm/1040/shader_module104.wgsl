struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(-1i, 7188i, 2147483647i, 1i, -13732i, 2147483647i, -32176i, -1i, i32(-2147483648), 59956i, 0i, 27301i, 0i, 0i, 37662i, 1i);

var<private> global1: Struct_2;

var<private> global2: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: bool) -> bool {
    global1 = Struct_2(Struct_1(select(true, global1.b, arg_2), select(select(global1.a.b, global1.a.b, any(global1.a.b.zyw)), global1.a.b, global1.a.b), ~(~(~arg_1.xz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-442f, -289f, global1.a.e, -218f) - vec4<f32>(global1.a.e, 496f, 101f, global1.a.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(2287f, 576f, global1.a.e, global1.a.d.x), global1.a.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.d.x, global1.a.e) * _wgslsmith_f_op_f32(abs(global1.a.e))))), false, _wgslsmith_clamp_i32(16370i, _wgslsmith_clamp_i32(39102i, select(arg_0.x, ~arg_0.x, global1.a.b.x), -countOneBits(global1.c)), -1i), arg_1.x);
    global1 = Struct_2(Struct_1(false, vec4<bool>(all(vec4<bool>(false, global1.a.b.x, true, global1.a.a)), false, global1.a.a, all(vec4<bool>(global1.b, true, true, false))), abs(_wgslsmith_add_vec2_u32(u_input.b, arg_1.xz) | global1.a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-226f, global1.a.e, global1.a.e, -1365f), global1.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f * -912f))), false, -50232i, _wgslsmith_div_u32(86486u, 0u ^ (4294967295u | u_input.b.x)));
    global0 = array<i32, 16>();
    var var_0 = 12414i >> ((countOneBits(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 189u, 4294967295u), arg_1))) >> (39812u % 32u)) % 32u);
    var var_1 = Struct_3(global1.a.b.zz, ~(~countOneBits(vec2<u32>(u_input.d, 9406u) | vec2<u32>(global1.d, 1u))), vec4<u32>(arg_1.x, reverseBits(global1.a.c.x), 1u | max(global1.a.c.x, 2406u), u_input.b.x), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.d.x - global1.a.e), _wgslsmith_f_op_f32(global1.a.d.x + -249f)) < global1.a.e));
    return !var_1.a.x;
}

fn func_2() -> vec4<f32> {
    global1 = Struct_2(Struct_1(func_3(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 16u)], global0[_wgslsmith_index_u32(global1.d, 16u)], -1i) | (vec3<i32>(2147483647i, u_input.a.x, 0i) >> (vec3<u32>(3682u, global1.a.c.x, global1.a.c.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, 64934u, 19729u)), abs(vec3<u32>(0u, 4294967295u, 4294967295u))), true), !global1.a.b, global1.a.c >> (select(~u_input.c, ~vec2<u32>(1u, u_input.c.x), global1.a.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(trunc(global1.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1501f)))), false, -57408i, ~global1.a.c.x);
    var var_0 = any(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(_wgslsmith_mult_u32(4294967295u, global1.d), 1u), ~reverseBits(u_input.d)), 7u)]) || all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, global1.a.b.x), select(vec3<bool>(global1.b, true, true), global1.a.b.yyy, global1.b)), global1.a.b.wzy, vec3<bool>(global1.a.b.x, true, global1.a.a)));
    var var_1 = Struct_2(Struct_1(true, global1.a.b, vec2<u32>(16909u, 85205u), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.e))), -461f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.a.e, -549f, global1.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1589f, global1.a.d.x)), _wgslsmith_f_op_f32(global1.a.d.x * -1425f)))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.e))))), all(!vec4<bool>(global1.b, true, true, false)), _wgslsmith_dot_vec2_i32(-(~(-u_input.a)), firstLeadingBit(firstTrailingBit(u_input.a) & (vec2<i32>(-29360i, 2147483647i) << (vec2<u32>(4294967295u, global1.d) % vec2<u32>(32u))))), 36849u);
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(select(~(~86754u), countOneBits(var_1.a.c.x << (var_1.a.c.x % 32u)), !func_3(vec3<i32>(u_input.a.x, 1i, -2134i), vec3<u32>(26418u, 85597u, 4294967295u), var_1.b)), 1u), abs(4294967295u), 0u);
    var_0 = true || var_1.b;
    return global1.a.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<i32> {
    return ~(countOneBits(vec3<i32>(arg_0.c, ~arg_0.c, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a))) >> (_wgslsmith_mod_vec3_u32(firstTrailingBit(firstLeadingBit(arg_2)), _wgslsmith_clamp_vec3_u32(arg_2, arg_2, arg_2) | arg_2) % vec3<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = vec2<bool>(!global1.a.b.x, arg_0);
    let var_1 = min(func_4(Struct_2(Struct_1(arg_0, vec4<bool>(false, false, var_0.x, global1.a.a), ~vec2<u32>(4294967295u, global1.d), _wgslsmith_f_op_vec4_f32(func_2()), -133f), all(vec3<bool>(true, false, arg_0)), -6017i, ~u_input.b.x >> ((global1.d << (global1.d % 32u)) % 32u)), Struct_1(true, global1.a.b, _wgslsmith_mod_vec2_u32(~global1.a.c, vec2<u32>(34521u, global1.d)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a.e, 567f, global1.a.d.x, global1.a.d.x))), _wgslsmith_f_op_f32(-175f + global1.a.e)), ~vec3<u32>(select(global1.d, 0u, true), _wgslsmith_dot_vec2_u32(global1.a.c, u_input.c), _wgslsmith_add_u32(global1.d, 4294967295u))), ~(~vec3<i32>(_wgslsmith_sub_i32(arg_1, 2147483647i), -32380i, 1i)));
    let var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.e * global1.a.e))) == global1.a.e);
    global2 = array<vec2<bool>, 7>();
    var var_3 = vec4<bool>(any(global1.a.b), global1.a.b.x, true, var_0.x);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(global1.a.b.x != false, !global1.b), global1.a.b.wy, !(!global2[_wgslsmith_index_u32(select(u_input.d, 0u, global1.a.a), 7u)]));
    let var_1 = global2[_wgslsmith_index_u32(~min(_wgslsmith_mult_u32(firstTrailingBit(firstLeadingBit(4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, global1.a.c.x, 1u) & vec4<u32>(0u, 1u, u_input.c.x, u_input.c.x), ~vec4<u32>(global1.d, u_input.d, global1.a.c.x, global1.a.c.x))), func_1(all(vec3<bool>(global1.a.b.x, var_0.x, true)), ~(-global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))), 7u)];
    var var_2 = abs(~vec4<i32>(~global0[_wgslsmith_index_u32(4294967295u, 16u)] & global1.c, -_wgslsmith_mod_i32(-26324i, 17143i), 24192i, ~(-21257i)));
    let var_3 = _wgslsmith_f_op_f32(sign(global1.a.e));
    global0 = array<i32, 16>();
    global2 = array<vec2<bool>, 7>();
    var var_4 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-11111i)));
}

