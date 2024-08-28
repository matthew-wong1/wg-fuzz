struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(-28024i, vec3<bool>(false, true, false), Struct_1(false, true), Struct_1(false, true), vec3<i32>(-20983i, 34102i, -9764i)), Struct_2(-49367i, vec3<bool>(true, true, false), Struct_1(false, true), Struct_1(true, false), vec3<i32>(13840i, 2147483647i, -70605i)), Struct_2(-1i, vec3<bool>(false, false, false), Struct_1(true, true), Struct_1(false, false), vec3<i32>(i32(-2147483648), 2147483647i, 1i)), Struct_2(-1i, vec3<bool>(true, true, true), Struct_1(true, false), Struct_1(false, false), vec3<i32>(58388i, 2147483647i, 73922i)), Struct_2(-25526i, vec3<bool>(false, false, false), Struct_1(false, true), Struct_1(true, true), vec3<i32>(1i, 1i, 1i)), Struct_2(4797i, vec3<bool>(false, true, true), Struct_1(true, true), Struct_1(true, true), vec3<i32>(41821i, 131i, -6248i)), Struct_2(1i, vec3<bool>(false, true, false), Struct_1(false, true), Struct_1(true, false), vec3<i32>(-1417i, 1i, i32(-2147483648))), Struct_2(25421i, vec3<bool>(true, true, false), Struct_1(false, true), Struct_1(true, false), vec3<i32>(-38345i, i32(-2147483648), -24819i)), Struct_2(i32(-2147483648), vec3<bool>(false, false, false), Struct_1(false, false), Struct_1(true, false), vec3<i32>(-1i, 12683i, 27641i)), Struct_2(19444i, vec3<bool>(true, true, true), Struct_1(true, false), Struct_1(false, true), vec3<i32>(i32(-2147483648), -22773i, -1i)), Struct_2(1i, vec3<bool>(true, true, true), Struct_1(true, true), Struct_1(true, true), vec3<i32>(-1i, -10834i, 0i)), Struct_2(2147483647i, vec3<bool>(false, false, true), Struct_1(true, false), Struct_1(true, true), vec3<i32>(2147483647i, -25592i, 9176i)), Struct_2(13587i, vec3<bool>(true, true, true), Struct_1(true, false), Struct_1(true, true), vec3<i32>(-45422i, 34865i, 66941i)), Struct_2(-8631i, vec3<bool>(true, true, true), Struct_1(false, true), Struct_1(false, false), vec3<i32>(32929i, 0i, -35614i)), Struct_2(2147483647i, vec3<bool>(false, false, false), Struct_1(false, false), Struct_1(true, true), vec3<i32>(1i, -4315i, -21399i)), Struct_2(1i, vec3<bool>(true, true, true), Struct_1(true, true), Struct_1(true, false), vec3<i32>(-19293i, -1i, 24579i)), Struct_2(-38923i, vec3<bool>(false, false, false), Struct_1(true, true), Struct_1(true, false), vec3<i32>(1i, -1i, 37707i)), Struct_2(0i, vec3<bool>(false, false, true), Struct_1(false, false), Struct_1(true, false), vec3<i32>(1083i, 0i, 4999i)), Struct_2(-9695i, vec3<bool>(true, false, true), Struct_1(true, false), Struct_1(false, true), vec3<i32>(9982i, -25185i, 61468i)), Struct_2(0i, vec3<bool>(false, false, false), Struct_1(true, true), Struct_1(true, false), vec3<i32>(i32(-2147483648), 1i, 0i)), Struct_2(19471i, vec3<bool>(false, true, false), Struct_1(true, false), Struct_1(false, true), vec3<i32>(1i, -61259i, i32(-2147483648))), Struct_2(1i, vec3<bool>(true, false, false), Struct_1(true, true), Struct_1(true, false), vec3<i32>(1i, 0i, 23067i)), Struct_2(-35934i, vec3<bool>(false, true, false), Struct_1(false, true), Struct_1(false, false), vec3<i32>(-44641i, i32(-2147483648), -9325i)), Struct_2(-26637i, vec3<bool>(false, false, false), Struct_1(false, false), Struct_1(true, false), vec3<i32>(-22497i, 2147483647i, -1086i)), Struct_2(-1i, vec3<bool>(false, true, false), Struct_1(true, false), Struct_1(true, true), vec3<i32>(2147483647i, 1i, 2147483647i)), Struct_2(63642i, vec3<bool>(true, false, false), Struct_1(true, true), Struct_1(true, true), vec3<i32>(-34323i, 11065i, 1i)), Struct_2(64349i, vec3<bool>(true, false, true), Struct_1(false, false), Struct_1(false, true), vec3<i32>(-44832i, 2147483647i, 8049i)), Struct_2(2147483647i, vec3<bool>(false, false, true), Struct_1(true, true), Struct_1(false, false), vec3<i32>(-24301i, 21765i, 7501i)), Struct_2(-1i, vec3<bool>(true, false, false), Struct_1(false, true), Struct_1(true, false), vec3<i32>(46741i, 20925i, 2147483647i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    return _wgslsmith_mod_u32(4294967295u, u_input.c);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1.b.xy;
    var var_1 = Struct_3(1i, arg_0.c, arg_1.b.zz);
    var var_2 = arg_1;
    var var_3 = Struct_5(_wgslsmith_f_op_f32(sign(arg_0.c)), -var_2.e.x, Struct_4(var_2.b, arg_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.b, -874f)))), !arg_1.b.x);
    let var_4 = firstTrailingBit(~vec2<u32>(abs(~u_input.a.x), ~6880u));
    return firstLeadingBit(min(u_input.a.x, 4294967295u)) ^ ~u_input.a.x;
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> i32 {
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 29>();
    global0 = _wgslsmith_dot_vec2_u32(select(u_input.a, vec2<u32>(~(40u & u_input.a.x), ~(~u_input.c)), vec2<bool>(func_1(Struct_2(1i, vec3<bool>(true, true, false), Struct_1(false, false), Struct_1(false, false), vec3<i32>(0i, u_input.b, u_input.b))) <= func_1(Struct_2(u_input.b, vec3<bool>(false, true, true), Struct_1(true, false), Struct_1(false, false), vec3<i32>(2147483647i, u_input.b, 0i))), true)), _wgslsmith_mult_vec2_u32(u_input.a, u_input.a));
    var var_0 = vec3<bool>(!(true | (all(vec3<bool>(false, true, false)) & true)), func_2(Struct_4(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), Struct_1(true, false), 1f), global1[_wgslsmith_index_u32(u_input.c, 29u)]) >= 4294967295u, true);
    var var_1 = func_3(!(!var_0.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-278f)), 1834f))));
    var var_2 = global1[_wgslsmith_index_u32(23177u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~u_input.c | 71366u, u_input.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(277f - -1287f))), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-3805i, u_input.b, var_2.a), vec3<i32>(u_input.b, 1i, 57977i) ^ var_2.e), _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(var_2.e, var_2.e), vec3<i32>(~20730i, ~(-57447i), u_input.b))));
}

