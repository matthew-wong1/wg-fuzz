struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, true, true, false, false, false, true, true, true, false, true, false, true, false, true, false, true, true);

var<private> global1: Struct_1 = Struct_1(1221f, false, vec2<bool>(true, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = arg_0;
    let var_0 = ((((vec4<u32>(u_input.a.x, u_input.a.x, 15762u, u_input.a.x) << (vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ vec4<u32>(0u, u_input.a.x, 0u, 4294967295u)) << ((_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 74457u, 39681u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 38671u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (~(vec4<u32>(27684u, 4294967295u, 1u, u_input.a.x) & (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u) << (vec4<u32>(u_input.a.x, 7313u, 6330u, u_input.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 29862u) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) >> (select(vec4<u32>(51165u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a.x), true) % vec4<u32>(32u)), vec4<u32>(1u, ~1u, 4294967295u | u_input.a.x, firstTrailingBit(u_input.a.x))), ~_wgslsmith_sub_u32(u_input.a.x & u_input.a.x, ~u_input.a.x), 4294967295u, ~4294967295u & u_input.a.x) % vec4<u32>(32u));
    var var_1 = arg_1;
    var var_2 = 1137f;
    var var_3 = arg_0;
    return u_input.a.x << (((~(~32541u) & ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) & 29158u) % 32u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1777f * -209f), true, !vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(34398u, 18u)], true, false)), arg_0.c.x));
    global0 = array<bool, 18>();
    var var_1 = vec4<i32>(abs(u_input.b), firstLeadingBit(-1i), -u_input.b, u_input.b);
    global0 = array<bool, 18>();
    var var_2 = ~abs(vec3<u32>(42515u, _wgslsmith_sub_u32(1u, u_input.a.x), u_input.a.x)) & countOneBits(countOneBits(vec3<u32>(4294967295u | u_input.a.x, u_input.a.x, 1u | u_input.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-513f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f) * _wgslsmith_f_op_f32(trunc(-515f)))) * global1.a);
}

fn func_2() -> bool {
    global1 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -760f)), ~u_input.b == u_input.b, !global1.c), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(max(global1.a, 1000f))), any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(12391u, 18u)], global1.b)), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -561f), 342f, _wgslsmith_f_op_f32(abs(global1.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, global1.a) * vec3<f32>(241f, 812f, global1.a)))))), all(vec4<bool>(global0[_wgslsmith_index_u32(~u_input.a.x >> (u_input.a.x % 32u), 18u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 18u)], false)) & any(vec3<bool>(global0[_wgslsmith_index_u32(17451u, 18u)], false, global1.c.x)), (global1.b || true) | (global1.a > -249f), global1.b)), vec2<bool>(((u_input.a.x & 23449u) ^ ~0u) != u_input.a.x, true));
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global1.a)), -1772f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2040f, global1.a)))))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f), _wgslsmith_f_op_f32(-var_0.x)), all(vec2<bool>(true, true)), global1.c);
    let var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(global1.a + var_2.a), select(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -14125i, u_input.b, u_input.b), vec4<i32>(u_input.b, 1i, u_input.b, u_input.b)), ~_wgslsmith_mod_i32(u_input.b, u_input.b), global1.c.x) != ~_wgslsmith_add_i32(u_input.b, 0i), select(vec2<bool>(var_1.b, any(select(vec4<bool>(false, false, false, var_1.c.x), vec4<bool>(true, global1.c.x, false, false), global0[_wgslsmith_index_u32(4294967295u, 18u)]))), !global1.c, select(!var_2.c, var_2.c, !(!global1.c))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, select(global0[_wgslsmith_index_u32(func_1(Struct_1(-1569f, true, vec2<bool>(false, true)), Struct_1(-771f, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], vec2<bool>(global1.b, true))), 18u)] && true, func_2(), any(!global1.c) & !(u_input.b <= -1i)), !vec2<bool>(any(select(vec3<bool>(global0[_wgslsmith_index_u32(6210u, 18u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], false), vec3<bool>(global0[_wgslsmith_index_u32(30850u, 18u)], global1.b, global1.b))), _wgslsmith_add_i32(u_input.b, 57909i) <= 0i));
    global0 = array<bool, 18>();
    let var_0 = select(global1.b, !global0[_wgslsmith_index_u32(~1u, 18u)], !global0[_wgslsmith_index_u32(max(1u, u_input.a.x), 18u)]);
    let var_1 = ~min(vec2<u32>(~abs(u_input.a.x), _wgslsmith_mod_u32(~u_input.a.x, 0u)), vec2<u32>(u_input.a.x, u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(global1.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - global1.a), _wgslsmith_f_op_f32(-global1.a)));
    let var_3 = 1i;
    var var_4 = Struct_1(705f, func_2(), vec2<bool>(true, false));
    var var_5 = false | func_2();
    let var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, min(var_3, _wgslsmith_dot_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(var_3, var_3, 2147483647i, u_input.b))), countOneBits(vec4<i32>(u_input.b, u_input.b, var_3, var_3)) | countOneBits(vec4<i32>(u_input.b, var_3, -1i, u_input.b)))), select(firstLeadingBit(abs(firstTrailingBit(vec3<u32>(5424u, var_6.x, 5044u)))), min(~max(vec3<u32>(155u, var_1.x, var_6.x), vec3<u32>(39236u, 1u, 61588u)), ~vec3<u32>(u_input.a.x, var_1.x, var_6.x)), !(!(!vec3<bool>(var_0, false, true)))));
}

