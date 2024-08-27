struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), -19340i, -663i, -9020i);

var<private> global2: array<bool, 8>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    return 924f;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(521f + 1000f), 711f, true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global1.wz, -u_input.d, arg_0)), 1f))) * -356f);
    global0 = arg_0;
    let var_2 = Struct_2(select(select(arg_0.a, vec4<bool>(false, -487f > var_1, true, !arg_0.a.x), (arg_0.a.x | global0.a.x) | true), select(vec4<bool>(any(arg_0.a.zy), true, all(vec2<bool>(false, arg_0.a.x)), all(global0.a.xz)), !select(arg_0.a, arg_0.a, true), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 8u)], false, false), global0.a, true)), !(!global2[_wgslsmith_index_u32(~0u, 8u)])));
    var var_3 = Struct_2(select(vec4<bool>(any(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(8153u, 8u)], global0.a.x, arg_0.a.x)), 2147483647i == arg_1, !global0.a.x, global0.a.x), var_2.a, false));
    return -6528i;
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: u32) -> f32 {
    global2 = array<bool, 8>();
    global1 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.e, -19643i), u_input.b) | _wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, u_input.b, -16759i), ~(-21271i)), -arg_1), 1i, _wgslsmith_sub_i32(710i, -_wgslsmith_div_i32(-arg_1, _wgslsmith_add_i32(u_input.e, u_input.c))), 2147483647i);
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1516f, 765f, 1743f)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-578f, -673f, 2554f), vec3<f32>(1019f, -2184f, -1000f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(302f, 1658f, -1144f)))), vec3<bool>(any(arg_0), all(vec2<bool>(arg_0.x, global2[_wgslsmith_index_u32(arg_2, 8u)])), !global0.a.x)))))));
    var var_1 = Struct_1(var_0.x, ~u_input.a.x);
    let var_2 = Struct_2(vec4<bool>(global1.x < arg_1, !(!global2[_wgslsmith_index_u32(~1732u, 8u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2, var_1.b, 46823u, var_1.b), ~vec4<u32>(u_input.a.x, u_input.a.x, var_1.b, u_input.a.x)), 8u)] | true, var_0.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1723f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.yx, max(u_input.d, vec2<i32>(global1.x, -46916i)), Struct_2(vec4<bool>(var_2.a.x, global2[_wgslsmith_index_u32(1926u, 8u)], false, false))))))) - -1569f);
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = Struct_1(-855f, ~(~(~u_input.a.x & ~arg_0.x)));
    let var_1 = 487f;
    let var_2 = -878f;
    var var_3 = firstLeadingBit(4216u) & _wgslsmith_mult_u32(~var_0.b, firstTrailingBit(~46433u));
    var var_4 = Struct_2(global0.a);
    return _wgslsmith_f_op_f32(f32(-1f) * -968f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(~func_1(Struct_2(global0.a), -_wgslsmith_dot_vec2_i32(u_input.d, u_input.d), false), _wgslsmith_sub_i32(reverseBits(global1.x ^ 80578i), _wgslsmith_mult_i32(~(-1i), 2147483647i)) & global1.x, i32(-1i) * -1i, 7485i);
    var var_0 = select(!global0.a, global0.a, !select(select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], global0.a.x, false, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec4<bool>(global2[_wgslsmith_index_u32(27213u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], global0.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 8u)], global0.a.x, false)), !(!global0.a), !vec4<bool>(global2[_wgslsmith_index_u32(60444u, 8u)], false, global0.a.x, true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~(~vec2<u32>(1u, 1u)), !select(select(false, true, true), var_0.x, any(global0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_0.yxx, ~(-1i), abs(u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(601f, -535f))))));
    var_0 = vec4<bool>(_wgslsmith_f_op_f32(sign(-308f)) >= _wgslsmith_f_op_f32(func_2(vec2<i32>(~(-1i), global1.x), vec2<i32>(50613i, _wgslsmith_add_i32(global1.x, u_input.e)), Struct_2(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], var_0.x, true, false), vec4<bool>(global0.a.x, false, false, false), global0.a)))), false, true, !(!(!all(vec3<bool>(global0.a.x, true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)])))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1)))))), ~(1u ^ u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b ^ ~56279u, 12992u, ~u_input.a.x), vec3<u32>(min(3481u, u_input.a.x), var_2.b, firstLeadingBit(4294967295u)) ^ abs(u_input.a)), -2501f, global1.x, ~vec4<u32>(79824u, 30151u, abs(1u), var_2.b), u_input.d);
}

