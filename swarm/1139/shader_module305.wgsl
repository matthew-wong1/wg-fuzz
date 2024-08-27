struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-7082i), Struct_1(38540i), Struct_1(-68601i), Struct_1(2528i), Struct_1(i32(-2147483648)), Struct_1(-53304i), Struct_1(2147483647i), Struct_1(54450i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 8>();
    let var_0 = all(vec2<bool>(!any(vec2<bool>(true, true)), select(true, true, select(all(vec4<bool>(true, true, false, false)), true, true))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-125f, _wgslsmith_f_op_f32(f32(-1f) * -1673f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-132f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1076f), -903f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(132f, 1185f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f - 1052f) + _wgslsmith_f_op_f32(ceil(838f)))))));
    var var_2 = !vec2<bool>(!var_0, _wgslsmith_f_op_f32(ceil(-399f)) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-443f, 300f)), -1792f, var_0)));
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1314f, 871f))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec4<bool> {
    let var_0 = select(vec2<bool>(false, 1u == max(arg_1, 68724u)), vec2<bool>(true, true), vec2<bool>(true & ((arg_1 == 126u) != true), 48495i > -firstLeadingBit(u_input.a.x)));
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    var var_1 = Struct_4(arg_0, vec3<f32>(_wgslsmith_f_op_f32(sign(-676f)), _wgslsmith_div_f32(798f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-257f, 1582f, var_0.x)), _wgslsmith_f_op_f32(select(-330f, 1000f, false))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f + 332f) + _wgslsmith_div_f32(335f, 2597f))))));
    let var_2 = !(all(vec3<bool>(var_0.x, var_0.x, var_0.x)) || all(select(vec2<bool>(var_0.x, var_0.x), var_0, var_0))) | false;
    return select(vec4<bool>(!((var_0.x && true) & true), var_2, var_2, true), select(vec4<bool>(false, !var_0.x, !any(vec3<bool>(false, var_2, var_0.x)), var_0.x), vec4<bool>(any(vec3<bool>(var_0.x, false, var_0.x)), var_0.x, true, !(var_0.x & var_0.x)), !(!vec4<bool>(true, false, var_2, true))), !(!(!var_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.e, firstTrailingBit(vec4<i32>(-108770i, arg_0.a, u_input.a.x, 0i))), -_wgslsmith_add_i32(u_input.d, arg_0.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1812f)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(round(arg_1.x)))) + _wgslsmith_f_op_vec2_f32(arg_1.xy + vec2<f32>(_wgslsmith_f_op_f32(438f * -637f), _wgslsmith_f_op_f32(arg_1.x * arg_1.x)))));
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(arg_1.x + -1515f) >= -803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-402f, -1097f)))) >= var_0.b.x, !(!select(true, any(vec2<bool>(false, true)), true)));
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    return -vec3<i32>(1i, -1i, select(var_0.a.a, ~(-34896i), all(vec2<bool>(true, var_1.x)))) >> (u_input.c % vec3<u32>(32u));
}

fn func_1(arg_0: vec4<f32>) -> Struct_5 {
    var var_0 = -1577f;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(2225f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(arg_0.x, 1267f))) - arg_0.x)) * vec4<f32>(532f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-223f + arg_0.x)))), arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, true))));
    let var_2 = max(~u_input.e.zzz, min(-(~vec3<i32>(u_input.d, u_input.a.x, u_input.e.x)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 12334u, 33391u), ~vec3<u32>(u_input.c.x, 4294967295u, u_input.b), ~u_input.c) % vec3<u32>(32u)), func_4(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c.x, 4294967295u), 8u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.yyz), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 708f, -252f) * var_1.yzx), true)), true, func_3(vec2<i32>(1i, -1i), _wgslsmith_add_u32(u_input.c.x, u_input.b)))));
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(13200u, 8u)], vec2<f32>(var_1.x, -116f));
    let var_4 = true;
    return Struct_5(!select(vec2<bool>(func_3(var_2.zy, u_input.c.x).x, !var_4), vec2<bool>(select(var_4, false, var_4), !var_4), vec2<bool>(all(vec3<bool>(true, false, false)), true)), true, ~u_input.e, var_4);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<f32>(1f, 1f, 1f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(0u, u_input.b))), 1u), ~vec2<u32>(36162u, 4294967295u) ^ u_input.c.zy, !(!all(var_0.a))), 1f, func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-622f, 778f, -464f, 1540f), vec4<f32>(-1063f, -1181f, -2491f, -619f))))))).c.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-395f, 443f, 869f) - vec3<f32>(-1370f, 589f, 251f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-358f, 1000f, 561f))), func_3(-var_0.c.zz, u_input.c.x).wwy)));
}

