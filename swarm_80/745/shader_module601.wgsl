struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.d.x), 1308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 1511f)))));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    var var_0 = !((select(any(vec4<bool>(true, true, false, true)), true, true) || false) || (select(arg_0, firstTrailingBit(4294967295u), all(vec4<bool>(true, false, true, false))) < _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, u_input.a.x) << (vec2<u32>(arg_0, 0u) % vec2<u32>(32u)))));
    global0 = array<Struct_2, 31>();
    var_0 = !(!(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-166f, -640f, true)))) != _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2745f, 540f), 688f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(641f - -165f) - _wgslsmith_f_op_f32(ceil(-456f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1941f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-777f, 1385f)))))) + 486f);
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = !(!(!vec3<bool>(true, true, all(vec2<bool>(true, true)))));
    let var_1 = vec2<u32>(u_input.a.x, 36213u);
    var var_2 = Struct_3(true, global0[_wgslsmith_index_u32(var_1.x << (select(~_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_mult_u32(var_1.x, 4294967295u & var_1.x), false) % 32u), 31u)], 135f, var_1);
    var var_3 = vec4<u32>(~var_1.x, min(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(1u, 113162u)) << ((_wgslsmith_add_u32(var_1.x, 6538u) & ~var_2.d.x) % 32u), ~(4158u ^ ~var_2.d.x)), 0u, 114701u);
    var var_4 = vec2<bool>(true, _wgslsmith_f_op_f32(step(var_2.c, var_2.c)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.c)), var_2.b.a.d.x));
    return Struct_3(false, var_2.b, _wgslsmith_f_op_f32(func_3(var_3.x)), _wgslsmith_mult_vec2_u32(~(var_2.d << (abs(vec2<u32>(var_2.d.x, var_2.b.b.x)) % vec2<u32>(32u))), ~vec2<u32>(abs(1u), ~8881u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    global0 = array<Struct_2, 31>();
    let var_0 = Struct_2(Struct_1(vec4<bool>(!(true | arg_0.a), all(vec4<bool>(true, true, arg_0.a, false)) | arg_0.b.a.b, arg_0.a || (u_input.a.x >= 0u), arg_0.a | !arg_0.b.d.a.x), _wgslsmith_dot_vec4_i32(u_input.b, ~vec4<i32>(2147483647i, -2147483647i, arg_0.b.a.c.x, u_input.b.x)) < 5367i, _wgslsmith_div_vec3_i32(~arg_0.b.d.c, func_2(-9768i).b.d.c) << ((u_input.a.zxx << (~vec3<u32>(4294967295u, 36516u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), arg_0.b.d.d, arg_0.b.d.e), _wgslsmith_sub_vec2_u32(min(arg_0.d, min(u_input.a.yz ^ vec2<u32>(63810u, arg_1.x), ~vec2<u32>(85192u, 118997u))), (vec2<u32>(u_input.a.x, 4294967295u) << (max(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u))) << (vec2<u32>(37189u, ~arg_1.x) % vec2<u32>(32u))), arg_0.b.d.d.wxx, arg_0.b.d);
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    return global0[_wgslsmith_index_u32(abs(arg_1.x), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x & firstTrailingBit(-u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1017f, -2021f, _wgslsmith_f_op_f32(-257f * -1180f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec3<u32>(67527u, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(1u, 31u)], -369f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(635f, 874f, 403f) + vec3<f32>(537f, -871f, -1000f)))))));
    global0 = array<Struct_2, 31>();
    let var_2 = Struct_3(any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true)), func_4(func_2(-2147483647i), vec4<u32>(select(u_input.a.x, 0u, true), _wgslsmith_sub_u32(firstLeadingBit(1u), u_input.a.x), 1u, _wgslsmith_add_u32(1u, _wgslsmith_div_u32(46145u, u_input.a.x))), 237f), 588f, ~vec2<u32>(~_wgslsmith_add_u32(u_input.a.x, 13056u), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

