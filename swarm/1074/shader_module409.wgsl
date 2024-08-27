struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 30052u, vec4<i32>(-1i, 1i, 38980i, 1i), vec2<bool>(true, true), 642f);

var<private> global1: array<i32, 13>;

var<private> global2: array<Struct_3, 10>;

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<u32>) -> vec3<i32> {
    global2 = array<Struct_3, 10>();
    var var_0 = arg_0.yy;
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - var_0.x))), -677f)), -1666f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 154f)), global0.e)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1623f, 467f, 1887f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, 272f)), _wgslsmith_div_vec3_f32(arg_0.yyy, _wgslsmith_f_op_vec3_f32(vec3<f32>(1608f, var_0.x, var_0.x) * vec3<f32>(var_0.x, -589f, var_0.x))), all(arg_1.a.yyy)))));
    global0 = Struct_1(abs(u_input.b.x) <= ~4294967295u, u_input.a, -global0.c, !vec2<bool>(!(arg_1.b.a.x != global0.c.x), !(var_1.x < -2481f)), 1478f);
    global0 = global3[_wgslsmith_index_u32(arg_2.x, 10u)];
    return vec3<i32>(global0.c.x, -9994i, ~(abs(~0i) ^ _wgslsmith_mod_i32(~global0.c.x, u_input.d)));
}

fn func_2() -> vec2<bool> {
    let var_0 = global0.a && true;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.e, -534f, global0.e), vec3<f32>(-1093f, global0.e, -254f))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 346f, -1388f), vec3<f32>(176f, global0.e, -339f))))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-580f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e * global0.e)), -581f))));
    global3 = array<Struct_1, 10>();
    let var_2 = func_3(vec4<f32>(_wgslsmith_f_op_f32(floor(207f)), -230f, global0.e, global0.e), global2[_wgslsmith_index_u32(4294967295u | _wgslsmith_mod_u32(u_input.e.x, ~(global0.b << (u_input.e.x % 32u))), 10u)], u_input.b.zz);
    global0 = Struct_1(!(u_input.e.x != u_input.b.x), _wgslsmith_sub_u32(global0.b, 1u), -(vec4<i32>(firstLeadingBit(global0.c.x), -2147483647i, 4006i, _wgslsmith_sub_i32(u_input.d, -10634i)) ^ global0.c), !global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2033f + -197f)))) + global0.e));
    return vec2<bool>(true, any(select(vec4<bool>(any(vec2<bool>(false, global0.d.x)), var_1.x > 1841f, var_0, true), select(vec4<bool>(var_0, var_0, global0.a, false), vec4<bool>(var_0, false, var_0, true), true), vec4<bool>(true, global0.c.x <= -1i, global0.b > 4294967295u, true))));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> i32 {
    let var_0 = all(!func_2());
    global0 = Struct_1(!select(true, any(!vec3<bool>(var_0, global0.a, false)), var_0), firstLeadingBit(~global0.b), vec4<i32>(countOneBits(max(~global1[_wgslsmith_index_u32(27065u, 13u)], abs(-21930i))), firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.wxy, ~vec3<u32>(global0.b, global0.b, 29580u)), 13u)]), -1i << (u_input.a % 32u), global0.c.x), global0.d, arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(global0.e - -1623f), global0.d.x));
    global0 = Struct_1(all(select(vec3<bool>(any(vec2<bool>(true, false)), true, !global0.a), vec3<bool>(true, var_0, all(global0.d)), !select(vec3<bool>(global0.a, var_0, global0.d.x), vec3<bool>(true, true, true), false))), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(u_input.b.x), reverseBits(global0.b)), ~u_input.e.x), vec4<i32>(-1i) * -countOneBits(vec4<i32>(-2147483647i, u_input.d, global1[_wgslsmith_index_u32(u_input.a, 13u)], global0.c.x)), !global0.d, _wgslsmith_f_op_f32(trunc(-200f)));
    var var_2 = Struct_2(abs(global0.c), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 1310f), _wgslsmith_f_op_f32(-var_1), -188f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-256f * 1000f))), _wgslsmith_f_op_f32(1144f - _wgslsmith_f_op_f32(-arg_1))))), arg_0, vec3<f32>(836f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1421f)))), _wgslsmith_f_op_f32(floor(var_1))));
    return global1[_wgslsmith_index_u32(10777u, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c;
    var var_1 = (-func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e, global0.e) * vec2<f32>(383f, 1508f)), _wgslsmith_f_op_f32(min(-1955f, global0.e))) ^ ~u_input.d) << (firstTrailingBit(~_wgslsmith_mod_u32(u_input.e.x, global0.b)) % 32u);
    let var_2 = Struct_3(select(!(!(!vec4<bool>(false, global0.d.x, global0.d.x, global0.a))), select(vec4<bool>(true, func_2().x, any(vec3<bool>(false, true, global0.d.x)), false), select(select(vec4<bool>(global0.a, global0.d.x, global0.d.x, global0.a), vec4<bool>(global0.d.x, false, global0.a, false), vec4<bool>(true, global0.d.x, false, true)), select(vec4<bool>(false, global0.d.x, false, global0.a), vec4<bool>(true, global0.a, global0.d.x, global0.a), global0.a), true), any(vec2<bool>(global0.a, false))), !global0.d.x), Struct_2(countOneBits(global0.c), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global0.e)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-global0.e)), -1181f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1592f)), global0.e))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(712f - 688f), _wgslsmith_f_op_f32(step(global0.e, global0.e))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-430f, global0.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(668f, -297f)), global0.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.e, global0.e, 337f), vec3<f32>(1000f, 744f, global0.e)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1382f, -1000f, global0.e) * vec3<f32>(global0.e, global0.e, 1000f)))))), var_0.xw, -2147483647i);
    global3 = array<Struct_1, 10>();
    var var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~_wgslsmith_dot_vec3_u32(u_input.b.xxz, u_input.b.ywy)), reverseBits(8706u) & _wgslsmith_mod_u32(1u, u_input.e.x), 105647u), ~1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_3.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_2.b.c)) * vec2<f32>(172f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_2.b.c)))), vec2<i32>(~31884i, global1[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_f_op_f32(1f + var_2.b.d.x));
}

