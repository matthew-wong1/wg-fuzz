struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, false)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: i32) -> f32 {
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = select(all(vec4<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(true, true, false, true)), any(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, false)))) && true, true != !any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false)), true);
    var var_1 = Struct_1(_wgslsmith_mod_u32(arg_0, _wgslsmith_dot_vec3_u32(~u_input.c.yyz, vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), 10484u, abs(u_input.c.x)))), -1i, -vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, -1i), -74170i, 0i), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_sub_i32(1i, -30042i), ~1i)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1003f, -255f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1861f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-858f, 720f)))), var_1.a);
    var_1 = Struct_1(_wgslsmith_mod_u32(~u_input.d, _wgslsmith_sub_u32(u_input.a & abs(var_2.b), ~(4294967295u >> (arg_0 % 32u)))), i32(-1i) * -19574i, var_1.c);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(firstLeadingBit(var_2.b), ~_wgslsmith_div_u32(~0u, ~32806u))), 14u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(110f - -1168f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_dot_vec4_i32(-(((vec4<i32>(0i, arg_2, -201i, -11439i) >> (u_input.c % vec4<u32>(32u))) & firstLeadingBit(vec4<i32>(arg_2, arg_2, -2147483647i, 22371i))) >> (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, 5372u, var_0.b), vec4<u32>(5198u, 4294967295u, 1u, 38036u)), u_input.c) % vec4<u32>(32u))), vec4<i32>(~3476i, arg_2, arg_2, arg_2));
    var var_2 = true;
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    return arg_0.b;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-979f * -721f) - _wgslsmith_f_op_f32(func_3(max(5408u, 0u)))), ~abs(u_input.c.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(arg_0.x, vec3<f32>(-1003f, 1132f, 509f), vec4<f32>(338f, -380f, -755f, 946f), 819i)), _wgslsmith_f_op_f32(abs(-1034f)))), -303f, _wgslsmith_f_op_f32(-807f - 2708f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1745f, -127f, -113f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-865f, -2208f, 1000f)))))), -32056i), 14u)];
    let var_1 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(1f)));
    global0 = array<Struct_2, 14>();
    var var_2 = Struct_4(vec3<bool>((_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(u_input.c.x, 0u)) < u_input.b) & true, any(select(arg_1.yxy, vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(true, var_0.a.x, true))), var_0.a.x), 1040f);
    let var_3 = Struct_4(arg_1.wyw, var_1);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(true, vec3<f32>(685f, -1435f, 828f), vec4<f32>(-1635f, 1081f, -1395f, 301f), 12928i)), 1f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -772f), _wgslsmith_f_op_f32(trunc(1307f)))))));
    global0 = array<Struct_2, 14>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    let var_2 = Struct_2(select(vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), select(false, any(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, true, true, true))), 1u <= ~u_input.c.x), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), vec3<bool>(true, true, select(select(false, true, true), 152663u >= u_input.c.x, select(true, true, true)))));
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    var var_3 = select(select(select(!vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(false, !var_2.a.x, var_2.a.x & false, true | var_2.a.x), all(select(var_2.a.zz, var_2.a.xz, var_2.a.x))), !vec4<bool>(func_2(var_2.a, vec4<bool>(false, false, var_2.a.x, true)), var_2.a.x != false, !var_2.a.x, false), vec4<bool>(var_2.a.x, var_2.a.x, (var_1 > var_1) == (u_input.b >= u_input.c.x), var_2.a.x)), select(select(select(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, false), vec4<bool>(var_2.a.x, false, var_2.a.x, var_2.a.x), select(vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x), vec4<bool>(var_2.a.x, true, false, var_2.a.x), vec4<bool>(false, var_2.a.x, false, false))), vec4<bool>(false, true, true, true), vec4<bool>(true, all(vec3<bool>(var_2.a.x, false, var_2.a.x)), all(vec4<bool>(false, true, var_2.a.x, var_2.a.x)), var_2.a.x)), !vec4<bool>(all(vec3<bool>(false, var_2.a.x, var_2.a.x)), var_2.a.x, var_2.a.x, -1688f <= var_0), select(select(vec4<bool>(true, var_2.a.x, true, var_2.a.x), !vec4<bool>(var_2.a.x, true, var_2.a.x, false), vec4<bool>(true, var_2.a.x, false, true)), vec4<bool>(any(vec4<bool>(false, var_2.a.x, var_2.a.x, true)), true, !var_2.a.x, select(false, true, true)), !vec4<bool>(var_2.a.x, var_2.a.x, true, var_2.a.x))), var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~firstLeadingBit(u_input.c)), vec4<u32>(~u_input.b, u_input.d, _wgslsmith_dot_vec3_u32(u_input.c.wyw, u_input.c.ywz), _wgslsmith_dot_vec2_u32(vec2<u32>(68334u, 1u), vec2<u32>(u_input.b, 4294967295u))) & (vec4<u32>(u_input.a, 1u, u_input.d, 55553u) & firstTrailingBit(u_input.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -357f) * _wgslsmith_f_op_f32(-1418f * var_1)))));
}

