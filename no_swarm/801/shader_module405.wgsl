struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: Struct_1;

var<private> global2: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(global2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))));
    global1 = global2.a.e;
    global2 = Struct_4(global2.a, Struct_1(global0[_wgslsmith_index_u32(5094u, 22u)], global1.b), Struct_1(1000f, abs(global1.b)));
    let var_1 = _wgslsmith_sub_u32(~(~(~6546u) ^ u_input.b), arg_3.x);
    let var_2 = global2.a.c;
    return global2.a.c;
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global2.a.e.a, -629f)))), global2.a.b.a, 999f) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(596f, 382f, global1.a) * vec3<f32>(2412f, arg_0, global0[_wgslsmith_index_u32(52769u, 22u)])), vec3<f32>(global1.a, -507f, global1.a), vec3<bool>(true, arg_1.a.x, arg_1.a.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2123f, -970f, global1.a) * vec3<f32>(global2.c.a, global2.c.a, -1751f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(915f, -346f, 904f), vec3<f32>(-194f, global0[_wgslsmith_index_u32(0u, 22u)], -812f), arg_1.a.zzz))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -787f, global2.c.a)), vec3<f32>(-927f, arg_0, global2.c.a)))) * vec3<f32>(143f, _wgslsmith_f_op_f32(abs(arg_0)), global0[_wgslsmith_index_u32(global2.a.c.b, 22u)])), select(!vec3<bool>(all(vec4<bool>(false, true, global2.a.c.a.x, false)), any(vec4<bool>(true, arg_1.a.x, true, global2.a.c.a.x)), true), vec3<bool>(false, global2.a.c.a.x && true, false), !vec3<bool>(true, true, false | global2.a.c.a.x))));
    let var_1 = -1i;
    let var_2 = Struct_2(!(!(!global2.a.c.a)), arg_1.b);
    let var_3 = 25958u;
    global0 = array<f32, 22>();
    return Struct_4(global2.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(957f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.a.c.b, 22u)] + global2.a.b.a))), ~select(select(-2147483647i, 35837i, false), ~31823i, global2.a.c.a.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_0)), countOneBits(-2147483647i)));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = global2.a.a;
    global2 = func_3(_wgslsmith_f_op_f32(-arg_2), func_2(arg_1.a.x, any(select(arg_1.a.yw, vec2<bool>(false, true), false && global2.a.c.a.x)), vec4<bool>(false, !global2.a.c.a.x | all(global2.a.c.a.ww), 523f <= _wgslsmith_f_op_f32(global2.b.a - arg_0), arg_1.a.x), ~vec2<u32>(0u, firstLeadingBit(arg_1.b))));
    let var_1 = !all(global2.a.c.a.xwz);
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(495f - -1874f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(step(arg_0, global1.a)))))), -2147483647i);
    global0 = array<f32, 22>();
    return func_3(arg_0, global2.a.c).c;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: Struct_3) -> vec2<u32> {
    return abs(select(vec2<u32>(_wgslsmith_mult_u32(~u_input.a, 18728u), 0u), arg_1, arg_3.c.a.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -821f;
    var var_1 = reverseBits(~func_4(true, abs(vec2<u32>(9553u, global2.a.c.b)) ^ ~vec2<u32>(1348u, 18827u), vec2<bool>(true, global2.a.c.a.x), Struct_3(-global2.a.a, func_1(530f, global2.a.c, 1000f), global2.a.c, global1.a, global2.c)));
    let var_2 = _wgslsmith_f_op_f32(-380f - _wgslsmith_f_op_f32(-global2.c.a));
    let var_3 = ~(1u << (_wgslsmith_sub_u32(~global2.a.c.b | func_2(true, global2.a.c.a.x, vec4<bool>(global2.a.c.a.x, true, global2.a.c.a.x, global2.a.c.a.x), vec2<u32>(u_input.b, 58908u)).b, global2.a.c.b) % 32u));
    var_0 = _wgslsmith_f_op_f32(max(global2.b.a, _wgslsmith_f_op_f32(trunc(-726f))));
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1395f, -521f, -215f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(5118u, 22u)], var_2, -1290f)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_2, 1577f, global0[_wgslsmith_index_u32(global2.a.c.b, 22u)]), vec3<f32>(886f, -474f, -1840f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-880f, 454f, 968f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -379f, global0[_wgslsmith_index_u32(1u, 22u)])))))), true));
    var var_5 = vec2<u32>(_wgslsmith_div_u32(var_3 | 4294967295u, _wgslsmith_add_u32(~var_1.x, (u_input.a & var_1.x) >> (1u % 32u))), _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(~abs(23452u), _wgslsmith_div_u32(var_3, var_1.x) << (global2.a.c.b % 32u))));
    var var_6 = vec2<i32>((~u_input.c << (u_input.b % 32u)) & firstLeadingBit(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(34879i, -14737i), global2.a.b.b & global2.a.b.b), -2147483647i), ~vec3<i32>(2147483647i, global2.a.b.b, 1i) & vec3<i32>(~u_input.c, -29797i, func_1(global1.a, Struct_2(global2.a.c.a, u_input.b), var_4.x).b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-global2.a.b.b, 18144i), max(5388u, var_5.x), vec4<u32>(~u_input.a, firstLeadingBit(4294967295u) ^ (~var_5.x & ~var_3), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4294967295u), max(vec2<u32>(34877u, u_input.b), vec2<u32>(global2.a.c.b, u_input.a))), min(~vec2<u32>(5039u, 0u), abs(vec2<u32>(var_3, var_1.x)))), ~(~firstLeadingBit(var_5.x))), 2083u);
}

