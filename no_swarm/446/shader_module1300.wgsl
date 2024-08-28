struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-37010i, 1u, vec3<u32>(5176u, 1u, 1u));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(-88105i, 4294967295u, vec3<u32>(18894u, 80306u, 4294967295u)), Struct_1(-20402i, 21948u, vec3<u32>(12091u, 4294967295u, 4294967295u)), Struct_1(-1i, 28735u, vec3<u32>(4294967295u, 0u, 404u)), Struct_1(1i, 1u, vec3<u32>(74201u, 0u, 1153u)), Struct_1(-1i, 0u, vec3<u32>(62992u, 49377u, 20614u)), Struct_1(-17305i, 13967u, vec3<u32>(66255u, 31207u, 18369u)), Struct_1(-22531i, 4294967295u, vec3<u32>(0u, 4294967295u, 0u)), Struct_1(31259i, 0u, vec3<u32>(65487u, 4294967295u, 39241u)), Struct_1(-19341i, 19118u, vec3<u32>(4294967295u, 35412u, 69279u)), Struct_1(-10652i, 47026u, vec3<u32>(1u, 17147u, 21795u)), Struct_1(1i, 68618u, vec3<u32>(1u, 9466u, 13413u)), Struct_1(-80828i, 4294967295u, vec3<u32>(0u, 0u, 4294967295u)), Struct_1(i32(-2147483648), 34894u, vec3<u32>(0u, 1u, 4294967295u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    var var_0 = Struct_1(global0.a, ~(~0u), ~countOneBits(global0.c) << (arg_0.c % vec3<u32>(32u)));
    global1 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(419f, 177f, true)) * 967f), 233f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f)), _wgslsmith_f_op_f32(max(-364f, -941f)))));
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = arg_0;
    global0 = Struct_1(-1i, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(21973u, var_0.c.x, arg_0.c.x, 1655u) & vec4<u32>(arg_0.c.x, arg_0.b, 44953u, 4294967295u)), ~vec4<u32>(43263u, 30225u, arg_0.c.x, 4294967295u)), ~1u >> (reverseBits(~var_0.b) % 32u), _wgslsmith_clamp_u32(func_2(Struct_1(u_input.a.x, arg_0.c.x, arg_0.c)).c.x >> (~global0.c.x % 32u), ~4294967295u, global0.b)), vec3<u32>(abs(abs(1u)), select(~20079u, arg_0.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 56106u), vec2<u32>(arg_0.c.x, var_0.c.x)) % 32u), true), 3915u));
    var var_1 = arg_0;
    var var_2 = (_wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(39784i, var_0.a), u_input.a), _wgslsmith_dot_vec4_i32(~arg_1, ~arg_1)) | 5845i) | arg_0.a;
    var_2 = ~abs(-2147483647i);
    return !vec4<bool>(true, all(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, false)), true);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) * arg_2.x)), arg_2.x))));
    let var_1 = global0.c.zz;
    return global1[_wgslsmith_index_u32(abs(var_1.x) | func_2(global1[_wgslsmith_index_u32(~4294967295u, 13u)]).c.x, 13u)];
}

fn func_1(arg_0: f32) -> vec2<f32> {
    global0 = func_2(global1[_wgslsmith_index_u32(~(~1041u), 13u)]);
    global1 = array<Struct_1, 13>();
    global0 = global1[_wgslsmith_index_u32(23913u, 13u)];
    var var_0 = global0.c.x;
    var var_1 = func_4(all(select(vec4<bool>(true, 29715u >= global0.b, false, all(vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true), func_3(global1[_wgslsmith_index_u32(0u, 13u)], countOneBits(vec4<i32>(u_input.a.x, -2147483647i, -1i, global0.a))))), any(vec2<bool>(arg_0 == _wgslsmith_f_op_f32(-arg_0), (global0.b <= global0.b) && func_3(global1[_wgslsmith_index_u32(global0.c.x, 13u)], vec4<i32>(u_input.a.x, 13414i, u_input.a.x, -1i)).x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -1167f) - vec3<f32>(-203f, 1464f, arg_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))))));
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1206f + _wgslsmith_div_f32(965f, _wgslsmith_f_op_f32(f32(-1f) * -1351f))), -210f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1165f, 366f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1588f, arg_0) - vec2<f32>(arg_0, arg_0))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, false))));
    var var_1 = Struct_1(min(1i, -1i), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.b, _wgslsmith_sub_u32(16987u, global0.b), ~59095u), global0.c), global0.c), global0.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1255f, _wgslsmith_f_op_f32(-1251f + -1171f)) - 693f)));
    var var_3 = global1[_wgslsmith_index_u32((~(~(~4294967295u)) & _wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(15768u, global0.b)), ~1u, _wgslsmith_dot_vec2_u32(global0.c.yy, vec2<u32>(33081u, var_1.c.x) & global0.c.yy))) ^ ~(~global0.c.x << ((~52845u ^ max(var_1.b, var_1.b)) % 32u)), 13u)];
    var var_4 = ~(vec2<i32>(_wgslsmith_clamp_i32(global0.a, var_1.a | 33443i, global0.a ^ 2147483647i), -3356i) | vec2<i32>(-global0.a ^ var_1.a, 2147483647i));
    var_3 = Struct_1(-2147483647i, ~global0.b, vec3<u32>(global0.c.x, 0u, global0.b));
    let var_5 = 69346u;
    let var_6 = !func_3(func_2(Struct_1(~var_1.a, 5980u, reverseBits(var_1.c))), select(abs(vec4<i32>(0i, var_3.a, var_1.a, 39504i)), max(vec4<i32>(var_1.a, -4687i, 1i, var_4.x) & vec4<i32>(-36433i, var_3.a, 2147483647i, 16098i), -vec4<i32>(global0.a, var_1.a, -20333i, u_input.a.x)), true)).x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(17592u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(402f, var_2.x, var_2.x, -195f), vec4<f32>(-1094f, var_2.x, 251f, -728f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, var_2.x, -626f, var_2.x))))), !select(!vec4<bool>(var_0.x, false, var_0.x, false), select(vec4<bool>(false, var_6, var_0.x, false), vec4<bool>(true, var_0.x, var_6, true), false), !vec4<bool>(var_0.x, var_6, true, var_0.x)))), _wgslsmith_f_op_f32(var_2.x * var_2.x));
}

