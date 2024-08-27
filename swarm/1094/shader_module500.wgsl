struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, true, true, false, false, true, true, true);

var<private> global1: array<bool, 16> = array<bool, 16>(false, true, false, false, false, false, true, true, false, false, false, true, false, true, true, false);

var<private> global2: array<Struct_2, 16>;

var<private> global3: Struct_3;

var<private> global4: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    global1 = array<bool, 16>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-983f)), -222f), -403f, 1f))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global3.a.x, 21319u), 16u)];
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    var var_1 = Struct_3(~(~abs(u_input.a.yy)), global3.b, global2[_wgslsmith_index_u32(4294967295u, 16u)]);
    return Struct_3(abs(vec2<u32>(global3.a.x << ((global3.a.x | 15386u) % 32u), var_1.a.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_1.c.c) + _wgslsmith_f_op_vec3_f32(-global3.b)) * _wgslsmith_f_op_vec3_f32(-var_1.b)))), Struct_2(!(_wgslsmith_f_op_vec3_f32(func_3()).x == -322f), Struct_1(any(vec3<bool>(global3.c.b.a, false, global0[_wgslsmith_index_u32(8201u, 8u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c, 877f, true)) - _wgslsmith_f_op_f32(step(649f, var_0.c))))), global3.c.d));
}

fn func_1() -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.c))), global3.b.x, _wgslsmith_f_op_f32(select(global3.b.x, global3.b.x, (true & select(false, global4.x, true)) || global3.c.a)));
    let var_1 = func_2(select(any(select(vec4<bool>(true, false, false, false), !vec4<bool>(global1[_wgslsmith_index_u32(73743u, 16u)], global4.x, global4.x, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), false)), true, false));
    var var_2 = ~(select(select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, global3.a.x), vec4<u32>(41183u, 1u, var_1.a.x, u_input.a.x), global3.c.b.a) | (vec4<u32>(31858u, 31239u, var_1.a.x, 1u) >> (vec4<u32>(11305u, 0u, var_1.a.x, global3.a.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global3.a.x, var_1.a.x, var_1.a.x), vec4<u32>(0u, var_1.a.x, 15587u, global3.a.x)), vec4<u32>(var_1.a.x, 4294967295u, 1u, var_1.a.x)), vec4<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 8u)], var_1.c.a, true, !global0[_wgslsmith_index_u32(169u, 8u)])) >> (vec4<u32>(~(~global3.a.x), u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 15519u), firstTrailingBit(min(4294967295u, u_input.a.x))) % vec4<u32>(32u)));
    let var_3 = select(vec4<bool>(true, false, !(!all(global4.zx)), true), !select(vec4<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 16u)], false, true)), !global0[_wgslsmith_index_u32(var_2.x, 8u)], true), vec4<bool>(global4.x, global3.c.d.a, all(global4.xx), var_1.c.b.a), !select(true, var_1.c.a, global4.x)), true);
    let var_4 = vec2<bool>(true, !all(select(vec2<bool>(var_3.x, global1[_wgslsmith_index_u32(var_2.x, 16u)]), global4.zy, true)) != (global3.c.c <= -940f));
    return !any(var_3.xww);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(!select(!vec3<bool>(true, global3.c.a, false), !vec3<bool>(global3.c.d.a, false, global3.c.b.a), true)), true, all(vec3<bool>(func_1() & (global1[_wgslsmith_index_u32(8819u, 16u)] && global3.c.b.a), false, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-global3.b.zx);
    let var_2 = vec3<bool>(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-2160i, -6895i), vec2<i32>(6265i, -1i))), -vec2<i32>(1i, 1i)) == -9398i, !(!(!global1[_wgslsmith_index_u32(0u << (global3.a.x % 32u), 16u)])), false);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.c, var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, var_1.x)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(708f, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x))), !(16404u > (global3.a.x << (u_input.a.x % 32u))))));
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global3.b.x)))));
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(var_4 + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1477f, _wgslsmith_f_op_f32(var_1.x - var_1.x)))), 1794f);
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(809f, global3.c.c, var_5.x, -417f)))))));
    let var_7 = Struct_3(select(global3.a, max(firstLeadingBit(vec2<u32>(4294967295u, global3.a.x)), firstTrailingBit(global3.a)), select(vec2<bool>(global3.c.d.a, var_2.x), select(vec2<bool>(true, true), vec2<bool>(true, true), var_3), select(var_2.xx, vec2<bool>(var_3, global0[_wgslsmith_index_u32(global3.a.x, 8u)]), vec2<bool>(true, false)))) << (~vec2<u32>(abs(5410u), 4294967295u) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(var_1.x + var_4), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_2(true).b.x), var_6.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-330f)))), 1000f)), Struct_2(false, global3.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.c.c, 765f)))), Struct_1(false)));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, 1i)), vec2<i32>(-16696i, 2147483647i)) >> (vec2<u32>(25946u, global3.a.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-24796i, 19367i, 2147483647i, -17087i), vec4<i32>(-17175i, -49023i, -1i, 2147483647i)), ~(-2147483647i)), ~vec2<i32>(0i, 29598i))), var_7.a.x, var_4, _wgslsmith_f_op_f32(var_4 - -1759f));
}

