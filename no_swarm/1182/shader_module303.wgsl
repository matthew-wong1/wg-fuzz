struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(535f, Struct_2(vec4<u32>(4294967295u, 3899u, 76840u, 49174u)), 1029f), false, Struct_3(160f, Struct_2(vec4<u32>(15075u, 0u, 0u, 11140u)), -350f));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = -arg_3.x;
    return global0.c;
}

fn func_3() -> vec2<f32> {
    var var_0 = global2.yy;
    var_0 = vec2<bool>(true, !var_0.x);
    let var_1 = all(select(!(!vec3<bool>(global0.b, global1.x, var_0.x)), !vec3<bool>(true, global0.b, true), !(select(u_input.c.x, -40580i, global2.x) < u_input.c.x)));
    global3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.c.a * global3.x), _wgslsmith_f_op_f32(-global3.x))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.c.a, global3.x), vec2<f32>(-774f, global0.c.c)) + vec2<f32>(global0.a.a, 246f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(984f, global3.x))), vec2<f32>(_wgslsmith_f_op_f32(-global0.a.c), _wgslsmith_f_op_f32(select(1262f, _wgslsmith_f_op_f32(global0.a.c + global3.x), true))))), vec2<bool>(select(true, any(select(vec4<bool>(var_1, false, false, true), vec4<bool>(var_0.x, false, true, false), vec4<bool>(global2.x, false, var_1, global0.b))), global2.x), true)));
    global2 = !select(vec3<bool>(!global1.x, select(var_0.x && true, all(vec2<bool>(var_1, var_0.x)), u_input.c.x < u_input.c.x), all(vec2<bool>(true, true))), select(vec3<bool>(select(var_0.x, true, global2.x), global1.x, false || global1.x), vec3<bool>(global0.a.b.a.x < 42636u, true, var_1), var_0.x), vec3<bool>(true, all(vec3<bool>(true, true, true)), !any(vec3<bool>(true, false, true))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.x, global3.x), vec2<f32>(global0.c.c, -696f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(869f, global0.c.c) - vec2<f32>(global0.a.a, -1126f)))) * vec2<f32>(global3.x, 1255f)), vec2<f32>(_wgslsmith_f_op_f32(round(-582f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, -317f) * _wgslsmith_f_op_f32(f32(-1f) * -1692f)) * 2016f))));
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> i32 {
    global2 = vec3<bool>(true, any(vec3<bool>(true, global1.x, global1.x)), true);
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, global3.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-274f, global3.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()))));
    let var_0 = u_input.d.x;
    var var_1 = Struct_4(global0.c, !all(!global2.yx), Struct_3(arg_1, func_1(4294967295u, _wgslsmith_f_op_f32(-993f - -220f), (vec3<i32>(-1i, u_input.d.x, 103i) ^ vec3<i32>(21476i, u_input.d.x, u_input.c.x)) << (vec3<u32>(1u, 47178u, arg_0.c.b.a.x) % vec3<u32>(32u)), reverseBits(~vec2<i32>(-14246i, 1i))).b, global0.c.c));
    global2 = vec3<bool>(global0.b, all(!vec3<bool>(true || global1.x, all(vec2<bool>(true, global2.x)), global1.x)), _wgslsmith_f_op_f32(-143f * func_1(_wgslsmith_sub_u32(global0.c.b.a.x, 1u), global0.a.c, ~u_input.c.yyy, vec2<i32>(8747i, 61655i)).a) >= global3.x);
    return 15155i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec3<bool>(global2.x, global0.b, true), !vec3<bool>(true, any(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, global2.x, global1.x, true), vec4<bool>(global2.x, true, true, false), global1.x))), select(!vec3<bool>(global1.x, !global0.b, false || global1.x), vec3<bool>(any(select(vec3<bool>(global1.x, false, false), vec3<bool>(true, true, false), vec3<bool>(false, global1.x, global0.b))), 29296i == (u_input.d.x & -62797i), false), !(true && !global1.x)));
    let var_0 = firstLeadingBit(firstLeadingBit(_wgslsmith_sub_u32(1u, u_input.b & select(15976u, global0.c.b.a.x, global1.x))));
    var var_1 = Struct_1(global3.x, 79683u, func_2(Struct_4(global0.c, true, func_1(global0.a.b.a.x, _wgslsmith_f_op_f32(-1000f + global0.a.a), u_input.c.ywx, vec2<i32>(-1i, -9681i))), _wgslsmith_f_op_f32(trunc(global3.x))));
    let var_2 = select(select(vec4<bool>(!all(global1.zy), select(global1.x, global2.x, !global2.x), firstTrailingBit(0u) > global0.a.b.a.x, true & global2.x), !(!(!vec4<bool>(global2.x, global1.x, true, false))), !((u_input.a | 52591u) <= 37327u)), !(!select(vec4<bool>(global1.x, false, true, global1.x), !vec4<bool>(global2.x, true, true, false), !vec4<bool>(true, global0.b, true, true))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, ~u_input.c, u_input.c), -u_input.c) > _wgslsmith_sub_i32(-485i, var_1.c));
    let var_3 = global0.b;
    let var_4 = global0.a.b;
    let var_5 = var_1.c;
    let var_6 = ~(~_wgslsmith_sub_u32(4294967295u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(0u, 6789u));
}

