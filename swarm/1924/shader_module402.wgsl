struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<u32, 9>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, true), 1000f, 37404u);

var<private> global3: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(-71732i, -23641i), vec2<i32>(0i, 2147483647i), vec2<i32>(-51i, 2147483647i), vec2<i32>(1i, -43525i), vec2<i32>(2147483647i, -6813i), vec2<i32>(-62201i, -1i), vec2<i32>(62951i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(27233i, 2147483647i));

var<private> global4: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, true), 1348f, 30040u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = arg_3;
    return vec2<i32>(-41318i, u_input.c.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = vec4<i32>(9007i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~func_3(arg_1.d, arg_1.b.x, global0.yw, arg_1), vec2<i32>(-20608i << (global2.d % 32u), -u_input.c.x)), abs(u_input.c.x)), firstLeadingBit(46515i), u_input.c.x);
    global4 = arg_1;
    global4 = arg_1;
    let var_1 = Struct_1(select(!(!(!arg_1.a)), !global2.a, vec4<bool>(arg_1.a.x, (global4.b.x || global2.b.x) && true, true, false)), vec2<bool>(true, (!arg_1.a.x & arg_1.a.x) | (0u >= (0u ^ global4.d))), -1733f, ~global1[_wgslsmith_index_u32(~abs(0u), 9u)] ^ firstTrailingBit(countOneBits(global1[_wgslsmith_index_u32(1u, 9u)])));
    let var_2 = ~1i;
    return ~(~(arg_1.d ^ ~countOneBits(arg_2)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(reverseBits(~41936i), firstLeadingBit(max(abs(1i), -48709i))), ~func_3(u_input.b.x, global4.b.x, _wgslsmith_f_op_vec2_f32(sign(global0.yx)), Struct_1(select(global4.a, arg_1.a, false), !vec2<bool>(arg_1.b.x, false), -1434f, ~1u)).x, arg_0.x, firstLeadingBit(_wgslsmith_add_i32(~1i, -13101i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), arg_1.c) * arg_1.c);
    global1 = array<u32, 9>();
    let var_2 = Struct_1(select(select(select(global2.a, arg_2.a, global2.a), !global2.a, global4.a.x), !vec4<bool>(arg_2.b.x, global4.b.x && true, arg_2.a.x & arg_1.b.x, true), !arg_2.a.x), select(global4.b, global2.b, !any(select(global4.a, arg_2.a, arg_1.b.x))), var_1, ~arg_1.d);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-349f, global0.x, 572f, -863f), vec4<f32>(global0.x, global4.c, 539f, var_1), vec4<bool>(var_2.a.x, global4.b.x, arg_1.a.x, true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(619f, 603f, var_1, global2.c)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-652f, 525f, _wgslsmith_f_op_f32(trunc(-1132f)), _wgslsmith_f_op_f32(sign(var_1))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, 152f, var_1, 544f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, global4.c, global2.c, 461f))))));
    return 652u;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(~(~(~global4.d)) & ~countOneBits(global4.d), _wgslsmith_add_u32(~(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12470u, 9u)], 9u)]) & _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global4.d, 9u)], u_input.b.x), u_input.b.xz)), ~(~(~101281u))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), ~u_input.b.xy), _wgslsmith_dot_vec2_u32(~u_input.b.xx, u_input.b.yx)));
    let var_1 = 32431u;
    var var_2 = reverseBits(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.xz), func_4(u_input.c.wx, Struct_1(select(vec4<bool>(global4.b.x, global4.b.x, global4.a.x, global2.b.x), global4.a, false), global4.a.wy, _wgslsmith_f_op_f32(trunc(global4.c)), func_2(1245f, Struct_1(vec4<bool>(global2.b.x, global4.a.x, false, global4.a.x), vec2<bool>(true, true), global2.c, 3037u), 4294967295u)), Struct_1(select(vec4<bool>(true, true, global4.b.x, true), vec4<bool>(true, false, global2.a.x, true), global4.a), vec2<bool>(global2.b.x, global4.a.x), -141f, 4294967295u), u_input.c.x)));
    let var_3 = u_input.b.x;
    var var_4 = Struct_1(vec4<bool>(_wgslsmith_div_f32(-577f, _wgslsmith_f_op_f32(f32(-1f) * -758f)) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-841f)))), global2.b.x, (u_input.c.x ^ -u_input.c.x) <= -91243i, false), vec2<bool>(global4.b.x, !(!global2.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-365f * -586f), _wgslsmith_f_op_f32(sign(-503f)), all(select(vec4<bool>(global2.b.x, false, global2.a.x, true), global4.a, global2.b.x)))))), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(~16164u, ~global1[_wgslsmith_index_u32(var_1, 9u)]), var_0));
    return Struct_1(!var_4.a, vec2<bool>(true, !any(vec3<bool>(false, true, global4.a.x))), -1076f, 58714u);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = func_1().a.x;
    global3 = array<vec2<i32>, 9>();
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.c, -458f, 881f, 181f), vec4<f32>(473f, arg_1.c, arg_3.c, 1321f), vec4<bool>(arg_1.a.x, false, true, global4.b.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global4.c, global4.c, 1104f, global4.c), vec4<f32>(-619f, 303f, 1080f, 732f)))))));
    global4 = Struct_1(!vec4<bool>(true, global4.b.x, global4.b.x, all(global4.a)), vec2<bool>(!arg_1.a.x, global2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1111f)), _wgslsmith_f_op_f32(f32(-1f) * -2266f))), arg_3.c, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-316f * _wgslsmith_f_op_f32(-arg_1.c)) - _wgslsmith_div_f32(-371f, var_1.c))), ~(~_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(4892u, arg_1.d))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-133f * global4.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f + var_1.c)), global0.x, _wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(arg_3.c + -255f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 42768u;
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_5(~global1[_wgslsmith_index_u32(4294967295u, 9u)], func_1(), vec2<bool>(!(!global2.b.x), global2.b.x), Struct_1(vec4<bool>(any(vec3<bool>(true, false, global2.b.x)), global4.b.x, !global2.a.x, all(vec2<bool>(true, global4.b.x))), global2.a.xx, global4.c, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), global0.x, func_1().c, global4.c), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, 1000f, -1095f, global2.c)))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(634f, _wgslsmith_f_op_f32(select(1893f, global4.c, false)), func_1().c, -263f))))));
    let var_1 = vec4<i32>(u_input.c.x, func_3(~(~firstLeadingBit(1u)), global2.a.x, vec2<f32>(_wgslsmith_div_f32(global4.c, _wgslsmith_f_op_f32(global0.x - global0.x)), -1000f), Struct_1(global2.a, vec2<bool>(global2.a.x, any(global4.a.xz)), _wgslsmith_f_op_f32(-global4.c), ~global4.d)).x, _wgslsmith_dot_vec2_i32(-u_input.c.wz & firstLeadingBit(global3[_wgslsmith_index_u32(0u, 9u)]), _wgslsmith_mod_vec2_i32(-(vec2<i32>(-2147483647i, u_input.c.x) & global3[_wgslsmith_index_u32(4294967295u, 9u)]), countOneBits(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, global4.d), vec3<u32>(1u, 0u, 9279u)), 9u)]))), u_input.c.x >> (firstLeadingBit(49013u) % 32u));
    let var_2 = vec4<u32>(60849u, ~4294967295u << (~var_0 % 32u), _wgslsmith_clamp_u32(~80367u, _wgslsmith_dot_vec3_u32(vec3<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.d, 9u)], 9u)], 0u, countOneBits(u_input.a)), vec3<u32>(u_input.b.x, ~17542u, ~global2.d)), 1u), _wgslsmith_div_u32(countOneBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global4.d, 9u)], 60666u), _wgslsmith_mult_u32(0u, u_input.b.x))), 4294967295u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0.yxz), _wgslsmith_f_op_vec3_f32(-global0.zxx))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2.x), ~vec4<u32>(32470u, global2.d, global4.d, 1u), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_1().c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) - _wgslsmith_f_op_f32(min(global2.c, -1423f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - global4.c))), global0.wyy);
}

