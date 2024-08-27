struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<i32>, 28>;

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<f32>(-272f, -705f, -451f), vec4<i32>(-1i, 1i, 27527i, 1i), vec4<bool>(false, false, false, false), 4294967295u, vec2<u32>(18151u, 78102u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = select(!vec4<bool>(!select(global1.x, global1.x, global1.x), true, true, false), vec4<bool>(global1.x, !all(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, false), true)), (false && all(global1.xy)) | global1.x, !global1.x & false), !all(select(!vec3<bool>(global1.x, global1.x, true), !vec3<bool>(global1.x, true, global1.x), global1.x)));
    var var_1 = 0i;
    let var_2 = true;
    var_0 = !(!select(vec4<bool>(false, all(vec4<bool>(global1.x, var_2, true, false)), any(vec2<bool>(global1.x, false)), true), vec4<bool>(select(true, var_2, true), !var_0.x, true, var_0.x), global1.x));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(726f, 309f)), -1415f, var_2)) - -1057f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1355f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-713f)) * _wgslsmith_f_op_f32(step(223f, 1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1290f + -667f))) - _wgslsmith_f_op_f32(f32(-1f) * -829f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f * -393f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(476f - 982f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(765f)) * _wgslsmith_f_op_f32(floor(-718f))), -503f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(554f, _wgslsmith_f_op_f32(floor(726f))))));
    return 252f;
}

fn func_2(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + 1823f), _wgslsmith_f_op_f32(func_3(56944i)), arg_0.x), vec4<i32>(u_input.c, 36778i << (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(1u, u_input.e)) % 32u), -_wgslsmith_mult_i32(_wgslsmith_add_i32(16598i, 28408i), 1i), -5958i), select(vec4<bool>(!all(vec3<bool>(global1.x, false, true)), !(!global1.x), true == (global1.x || global1.x), true), !select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(false, true, global1.x, true), vec4<bool>(global1.x, global1.x, false, global1.x)), select(vec4<bool>(true, true, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), false)), ((0i <= u_input.c) & global1.x) | !all(vec4<bool>(false, true, false, false))), u_input.d, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.d, ~4294967295u), select(vec3<u32>(0u, u_input.d, u_input.e), reverseBits(vec3<u32>(46848u, u_input.d, u_input.d)), vec3<bool>(true, false, global1.x))), ~1u));
    global1 = !select(vec3<bool>(var_0.c.x, true, -2147483647i == select(var_0.b.x, var_0.b.x, false)), vec3<bool>(true, global1.x, true), global1.x);
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global3 = array<Struct_1, 1>();
    return !vec3<bool>(var_0.c.x, -658f > _wgslsmith_f_op_f32(step(arg_0.x, 578f)), var_0.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = arg_0.a.x;
    let var_1 = arg_2.b.x;
    global1 = !(!select(func_2(vec4<f32>(arg_0.a.x, arg_0.a.x, var_0, 807f)), select(!arg_1.xww, arg_1.zzw, arg_0.c.yzw), select(vec3<bool>(false, true, false), !arg_0.c.yzx, vec3<bool>(arg_0.c.x, true, false))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, -1318f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_2.a * arg_0.a))), vec3<bool>(!arg_0.c.x, global1.x, func_2(vec4<f32>(arg_0.a.x, -372f, 711f, 1989f)).x))), arg_2.c.ywz)), global2[_wgslsmith_index_u32(65978u, 28u)], !(!vec4<bool>(func_2(vec4<f32>(arg_0.a.x, arg_0.a.x, 1101f, arg_2.a.x)).x, arg_1.x && false, false, true)), 41351u, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(25898u, arg_0.e.x), reverseBits(vec2<u32>(arg_2.e.x, 59798u))), ~_wgslsmith_add_u32(arg_2.e.x, u_input.e)) << (vec2<u32>(_wgslsmith_add_u32(40972u, ~arg_0.d), arg_0.e.x) % vec2<u32>(32u)));
    global3 = array<Struct_1, 1>();
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 28>();
    let var_0 = global3[_wgslsmith_index_u32(~(~u_input.d), 1u)];
    var var_1 = select(vec2<i32>(i32(-1i) * -(~global0[_wgslsmith_index_u32(27567u, 23u)]), global0[_wgslsmith_index_u32(~u_input.d, 23u)]), (~u_input.a.xz | var_0.b.yz) >> (max(~var_0.e, ~vec2<u32>(65312u, u_input.d) >> (vec2<u32>(u_input.e, 16177u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<bool>(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-414f * var_0.a.x))) <= var_0.a.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, var_0.a.x, 763f), var_0.a)), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_0.d, ~func_1(Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.b, vec4<bool>(false, true, var_0.c.x, false), u_input.d, var_0.e), vec4<bool>(global1.x, var_0.c.x, global1.x, var_0.c.x), Struct_1(vec3<f32>(-292f, var_0.a.x, var_0.a.x), var_0.b, var_0.c, var_0.e.x, var_0.e))), 28u)], vec4<bool>(all(func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2087f, var_0.a.x, var_0.a.x, var_0.a.x)))).yx), global1.x, !(global1.x || !global1.x), !var_0.c.x), ~var_0.e.x, firstLeadingBit(~var_0.e));
    var var_3 = vec3<f32>(var_0.a.x, var_2.a.x, _wgslsmith_f_op_f32(1264f - _wgslsmith_f_op_f32(func_3(i32(-1i) * -1i))));
    var_1 = firstLeadingBit(firstLeadingBit(~(vec2<i32>(var_2.b.x, 39448i) | var_2.b.xz)) ^ vec2<i32>(1i, ~global0[_wgslsmith_index_u32(3605u, 23u)] | reverseBits(u_input.a.x)));
    global0 = array<i32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(min(var_0.b, ~(-global2[_wgslsmith_index_u32(u_input.e, 28u)])), ~global2[_wgslsmith_index_u32(var_0.d, 28u)]), vec4<f32>(1f, 1096f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f * -625f)), _wgslsmith_f_op_f32(-659f * var_3.x)), _wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-925f, 899f, var_3.x))), select(vec3<bool>(var_3.x >= var_0.a.x, global1.x, func_2(vec4<f32>(var_2.a.x, 993f, 375f, 697f)).x), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -2016f, 158f, var_0.a.x) + vec4<f32>(964f, -111f, -1328f, 521f))), vec3<bool>(any(var_0.c), true, true)))));
}

