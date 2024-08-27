struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(0u, 77625u, 72555u, 4294967295u), vec4<u32>(0u, 48653u, 70505u, 67471u), vec4<u32>(25703u, 69073u, 43678u, 0u), vec4<u32>(15208u, 0u, 74766u, 1u), vec4<u32>(139436u, 12996u, 78591u, 99928u), vec4<u32>(4294967295u, 4294967295u, 0u, 15715u), vec4<u32>(1u, 0u, 0u, 97462u), vec4<u32>(13168u, 105272u, 1u, 4294967295u), vec4<u32>(0u, 37538u, 0u, 97604u), vec4<u32>(1u, 4294967295u, 23995u, 5716u), vec4<u32>(47992u, 1u, 23916u, 1u), vec4<u32>(1u, 4294967295u, 1u, 55258u), vec4<u32>(0u, 2960u, 4294967295u, 1u), vec4<u32>(53326u, 1u, 219u, 1u), vec4<u32>(40901u, 49065u, 62347u, 4294967295u), vec4<u32>(0u, 62629u, 29564u, 32354u), vec4<u32>(64895u, 1u, 64355u, 1u), vec4<u32>(55270u, 1u, 39952u, 4294967295u), vec4<u32>(4294967295u, 9669u, 1u, 18903u), vec4<u32>(1u, 1u, 65391u, 42898u));

var<private> global1: array<i32, 28>;

var<private> global2: u32 = 82297u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<bool>) -> u32 {
    var var_0 = vec4<bool>(arg_3.x, !(!arg_3.x) | arg_3.x, true, all(vec2<bool>(arg_3.x, false)));
    var var_1 = global1[_wgslsmith_index_u32(u_input.d, 28u)];
    var var_2 = 1u;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1385f), _wgslsmith_f_op_f32(640f + 267f), -554f, _wgslsmith_f_op_f32(select(-1000f, 1000f, arg_3.x))))))));
    global2 = abs(u_input.d);
    return 4294967295u;
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    global1 = array<i32, 28>();
    let var_0 = vec4<i32>(-arg_1.x, 2147483647i & ~reverseBits(0i ^ u_input.c.x), 37767i, ~_wgslsmith_mult_i32(firstLeadingBit(~arg_1.x), -global1[_wgslsmith_index_u32(~1u, 28u)]));
    var var_1 = select(arg_0.d, !(!arg_2.zz), arg_3);
    var var_2 = arg_0.b.a.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b.a * vec4<f32>(-455f, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x))), !select(vec4<bool>(false, arg_0.d.x, arg_0.d.x, arg_3), arg_2, arg_0.d.x)))))));
    return var_3.x;
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = arg_1.a.zxw;
    var var_1 = vec2<i32>(u_input.c.x, global1[_wgslsmith_index_u32(~(~(~func_2(vec3<i32>(0i, 34281i, 0i), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)], 13929i), 1i, vec2<bool>(false, true)))), 28u)]);
    global0 = array<vec4<u32>, 20>();
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(var_0.xy))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(func_3(Struct_4(u_input.b, Struct_2(vec4<f32>(-2206f, -1000f, 376f, var_2.x)), global0[_wgslsmith_index_u32(u_input.d, 20u)], vec2<bool>(false, true)), -u_input.a.zxz, vec4<bool>(true, false, false, false), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-496f - 1152f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.a.wxx, _wgslsmith_f_op_vec3_f32(-arg_1.a.wxy), false))));
    return !select(vec2<bool>(select(true, any(vec3<bool>(true, false, false)), 377f >= var_0.x), true), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.x <= -453f));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> vec2<u32> {
    global0 = array<vec4<u32>, 20>();
    var var_0 = vec2<bool>(arg_1.d.x, arg_1.d.x);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1002f, -1000f, arg_1.b.a.x, arg_1.b.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a.x, -300f, arg_1.b.a.x, 787f))))));
    global1 = array<i32, 28>();
    global1 = array<i32, 28>();
    return _wgslsmith_clamp_vec2_u32(~arg_1.c.xx, ~vec2<u32>(arg_0 | arg_0, 31247u) & vec2<u32>(~arg_0, ~(~arg_0)), arg_1.c.xw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.d, Struct_4(firstTrailingBit(37628u | u_input.b), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(162f, 786f, -585f, -1221f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(740f, -602f, -1111f, 2201f))))), vec4<u32>(14640u, u_input.d, ~(~u_input.b), ~(~109606u)), select(vec2<bool>(true, true), !func_1(-11182i, Struct_3(vec4<f32>(-1000f, 365f, 206f, 973f))), true)));
    var var_1 = select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), true);
    global1 = array<i32, 28>();
    let var_2 = vec4<bool>(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x >> (22174u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.d, 28u)], u_input.c.x, u_input.c.x), vec3<i32>(21291i, u_input.c.x, 19749i)), u_input.a.x, firstLeadingBit(2147483647i)), abs(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_0.x, 28u)], 47990i, 812i))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(1000f * -166f), _wgslsmith_f_op_f32(-498f - 194f), -1079f, -971f))).x, true, func_1(firstLeadingBit(0i), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(floor(-520f)), 1f, -392f, _wgslsmith_f_op_f32(f32(-1f) * -1448f)))).x, false);
    var var_3 = -21063i;
    var var_4 = select(!vec4<bool>(!all(vec3<bool>(false, false, var_2.x)), true, all(vec3<bool>(false, false, true)), true), select(vec4<bool>(true, false, func_1(global1[_wgslsmith_index_u32(u_input.d, 28u)], Struct_3(vec4<f32>(-228f, 1000f, -159f, -811f))).x | true, all(!var_2)), select(select(vec4<bool>(false, var_2.x, var_1.x, var_2.x), !vec4<bool>(false, false, var_1.x, var_1.x), select(var_2, var_2, false)), vec4<bool>(var_1.x, var_2.x, all(vec3<bool>(true, var_1.x, var_2.x)), var_1.x), var_2), any(!vec4<bool>(false, true, true, var_1.x))), all(var_2.wxz));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1415f)))), _wgslsmith_f_op_f32(func_3(Struct_4(24943u, Struct_2(vec4<f32>(-1000f, -592f, -172f, 762f)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 18171u, var_0.x, 0u), vec4<u32>(41497u, u_input.b, 1u, var_0.x)), !var_1.xy), u_input.a.yxz, select(select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(var_4.x, true, var_1.x, var_1.x), false), !vec4<bool>(var_2.x, var_1.x, var_4.x, false), var_1.x), !any(var_2.zz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(32308u, Struct_2(vec4<f32>(-172f, 2940f, 1000f, 1631f)), vec4<u32>(u_input.d, 1033u, 1u, 4344u), vec2<bool>(var_1.x, true)), u_input.c, var_2, false)) + _wgslsmith_div_f32(949f, 273f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1681f + -1700f)))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 40235u, u_input.d) << (vec3<u32>(1u, u_input.d, u_input.d) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 4827u), vec3<u32>(1u, u_input.d, u_input.b)))), ~min(var_0.x, ~1u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~(-12202i), 0i, select(global1[_wgslsmith_index_u32(var_0.x, 28u)], global1[_wgslsmith_index_u32(u_input.b, 28u)], var_2.x)), vec4<i32>(1i, -1i, -1i << (u_input.d % 32u), global1[_wgslsmith_index_u32(u_input.d, 28u)])) | firstLeadingBit(u_input.a.x));
}

