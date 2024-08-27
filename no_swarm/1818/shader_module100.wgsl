struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<f32, 31>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> u32 {
    return 26049u;
}

fn func_3() -> vec3<bool> {
    let var_0 = u_input.b.x;
    return !vec3<bool>(true, true, 68735u > ((u_input.b.x | 61616u) >> ((u_input.b.x ^ u_input.b.x) % 32u)));
}

fn func_2() -> u32 {
    var var_0 = select(vec3<bool>(!(~u_input.b.x >= _wgslsmith_dot_vec2_u32(vec2<u32>(133910u, u_input.b.x), u_input.b.xy)), _wgslsmith_add_u32(~u_input.b.x, 60970u) >= (_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.xx) ^ func_1(u_input.b.yz, false, global1[_wgslsmith_index_u32(35278u, 31u)])), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(~vec2<u32>(u_input.b.x, u_input.b.x), select(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(38012u, 17u)], true), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(1u, 31u)]))), ~(~0u)), 17u)]), select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 17u)])), false, global0[_wgslsmith_index_u32(abs(u_input.b.x), 17u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.b.x), 17u)]), global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.b.x), 17u)]), !func_3()), global0[_wgslsmith_index_u32(48655u, 17u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, 803f), _wgslsmith_f_op_f32(floor(294f)), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 31u)]))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 31u)]), -1658f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(100004u, 31u)], -1764f)))), vec3<f32>(_wgslsmith_f_op_f32(1447f - _wgslsmith_f_op_f32(max(336f, -912f))), _wgslsmith_div_f32(743f, -1347f), _wgslsmith_f_op_f32(401f * global1[_wgslsmith_index_u32(u_input.b.x, 31u)])))));
    var var_2 = Struct_3(vec2<i32>(-4802i, i32(-1i) * -4834i), u_input.b.x, u_input.b.x);
    var_0 = select(!func_3(), select(vec3<bool>(any(var_0.yz), global0[_wgslsmith_index_u32(~u_input.b.x, 17u)], false || func_3().x), !select(vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(var_2.c, 17u)], true, global0[_wgslsmith_index_u32(var_2.c, 17u)]), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 17u)], false), vec3<bool>(true, var_0.x, false))), !(!var_0.x)), func_3());
    var_0 = !vec3<bool>(var_0.x, true, u_input.b.x > _wgslsmith_add_u32(~u_input.b.x, _wgslsmith_mult_u32(var_2.b, 55588u)));
    return ~(~(~5375u));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<f32>, arg_3: vec4<f32>) -> StorageBuffer {
    var var_0 = global0[_wgslsmith_index_u32(1u, 17u)];
    var var_1 = Struct_2(Struct_1(u_input.a.x << (u_input.b.x % 32u), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 31u)]), _wgslsmith_f_op_f32(f32(-1f) * -1060f), arg_3.x) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_3.ywy * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-361f, arg_0, 1475f))))))), arg_2.x, Struct_1(-2147483647i, true), ~(vec4<u32>(8982u, u_input.b.x, u_input.b.x ^ arg_1, u_input.b.x) << (vec4<u32>(59766u, u_input.b.x, 75390u, select(arg_1, 30899u, true)) % vec4<u32>(32u))));
    var var_2 = !func_3().xy;
    let var_3 = -1i & _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~(-u_input.a.yxz), vec3<i32>(0i, _wgslsmith_sub_i32(0i, var_1.d.a), ~(-40870i))), ~(~(-23229i >> (u_input.b.x % 32u))));
    let var_4 = Struct_4(Struct_3(vec2<i32>(abs(var_3), -66572i), _wgslsmith_dot_vec4_u32(var_1.e, (vec4<u32>(0u, arg_1, var_1.e.x, arg_1) & vec4<u32>(u_input.b.x, u_input.b.x, var_1.e.x, var_1.e.x)) >> (~vec4<u32>(u_input.b.x, var_1.e.x, var_1.e.x, var_1.e.x) % vec4<u32>(32u))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_1.e.xxz, vec3<u32>(60375u, u_input.b.x, 17323u)), 50264u)), vec3<bool>(var_1.d.b, func_3().x, !(!var_2.x || (global0[_wgslsmith_index_u32(arg_1, 17u)] & var_1.a.b))), vec4<i32>(countOneBits(firstTrailingBit(_wgslsmith_sub_i32(-1i, var_1.d.a))), -(u_input.a.x ^ reverseBits(var_3)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.a, var_1.d.a), ~vec2<i32>(-3127i, -1i)), 0i & -u_input.a.x, firstLeadingBit(countOneBits(u_input.a.x))), var_1.d.a));
    return StorageBuffer((min(~u_input.b.zx, var_1.e.xy) << (var_1.e.zw % vec2<u32>(32u))) | u_input.b.yy, 4294967295u, ~(~(~max(-20173i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(810f, 1321f)))))), min(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, func_1(vec2<u32>(u_input.b.x, 0u), true, -343f)), ~(u_input.b.x & u_input.b.x)), u_input.b.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -939f) - -232f), global1[_wgslsmith_index_u32(func_2() >> (~128394u % 32u), 31u)], 876f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(3575u, 31u)], 154f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(383f, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], -737f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(25841u, 31u)], 1000f, -1213f, global1[_wgslsmith_index_u32(u_input.b.x, 31u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], -547f, 120f, global1[_wgslsmith_index_u32(u_input.b.x, 31u)])))), vec4<f32>(1f, global1[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1097f + global1[_wgslsmith_index_u32(75822u, 31u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 31u)])), -275f)));
}

