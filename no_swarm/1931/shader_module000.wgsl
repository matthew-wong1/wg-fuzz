struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec2<bool>(true, true), 23375u, 0u);

var<private> global1: array<Struct_1, 30>;

var<private> global2: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    global1 = array<Struct_1, 30>();
    return global0.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<bool> {
    global0 = global1[_wgslsmith_index_u32(37848u, 30u)];
    var var_0 = Struct_1(false, !(!vec2<bool>(true == arg_0.a, global0.b.x & arg_0.a)), func_3(~global0.c), arg_0.d);
    let var_1 = global1[_wgslsmith_index_u32(max(arg_0.d, _wgslsmith_mod_u32(~4294967295u, select(var_0.d | 4294967295u, ~var_0.c, !var_0.a))) & var_0.c, 30u)];
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -666f)));
    var var_3 = arg_0;
    return vec3<bool>(var_1.b.x, arg_0.b.x, all(!select(vec3<bool>(true, var_1.b.x, var_3.a), !vec3<bool>(var_1.a, global0.b.x, true), !vec3<bool>(var_0.b.x, false, false))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = select(select(!vec3<bool>(!global0.b.x, u_input.b >= 12728i, arg_1.x), select(func_2(Struct_1(true, vec2<bool>(arg_1.x, true), 1u, global0.d), global0.b), func_2(Struct_1(arg_3.a, vec2<bool>(arg_1.x, arg_3.a), global0.c, arg_2.c), vec2<bool>(true, true)), true), !(!(!vec3<bool>(true, global0.b.x, arg_2.a)))), func_2(arg_3, arg_1), vec3<bool>(true, true, false));
    var var_1 = -abs(u_input.c);
    var var_2 = -450f;
    var var_3 = arg_2;
    return 226f;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = select(vec4<u32>(min(~(~68225u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.d, 20011u) << (vec2<u32>(global0.d, 0u) % vec2<u32>(32u)), ~arg_0)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0, min(arg_0, vec2<u32>(arg_0.x, 42260u))), 4294967295u), ~max(global0.c, func_3(global0.d)), _wgslsmith_sub_u32(arg_1.d, arg_1.d)), vec4<u32>(min(110770u, ~46632u), ~1u, 75661u, global0.d), true);
    let var_1 = global1[_wgslsmith_index_u32(~(~arg_0.x), 30u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(159f, arg_2, 1672f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -293f, arg_2)) + vec3<f32>(arg_2, arg_2, -2039f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, arg_2, arg_2)))))))));
    var var_3 = var_0.zzz;
    var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -518f, arg_2) * vec3<f32>(_wgslsmith_f_op_f32(1185f * -761f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(var_2.x)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, arg_2, arg_2)))))))));
    return Struct_1(all(select(!select(vec2<bool>(true, var_1.b.x), vec2<bool>(arg_1.b.x, global0.b.x), vec2<bool>(arg_1.b.x, false)), vec2<bool>(true, !var_1.a), vec2<bool>(false, true))), !vec2<bool>(true, func_2(Struct_1(true, global0.b, 0u, 0u), select(vec2<bool>(true, false), vec2<bool>(false, global0.a), vec2<bool>(global0.b.x, arg_1.b.x))).x), global0.d, global0.d);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 324f)), vec4<f32>(arg_0, arg_0, arg_0, -769f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(309f, arg_0, -617f, -1519f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f * -358f)), 1585f)));
    let var_1 = select(!(!vec4<bool>(true, func_4(vec2<u32>(global0.d, global0.c), global1[_wgslsmith_index_u32(global0.c, 30u)], arg_0).b.x, arg_1.a, true)), select(vec4<bool>(select(false, true, true) && all(vec4<bool>(arg_1.b.x, false, arg_1.b.x, arg_1.a)), false, any(vec3<bool>(true, true, true)), !global0.b.x), !vec4<bool>(false, any(vec4<bool>(false, true, global0.a, arg_1.b.x)), any(vec4<bool>(true, global0.b.x, global0.a, global0.a)), true), vec4<bool>(func_4(arg_2, Struct_1(true, vec2<bool>(global0.b.x, false), 0u, arg_2.x), _wgslsmith_f_op_f32(-arg_0)).b.x, arg_2.x >= 132501u, true, u_input.c.x < u_input.d)), !(abs(97847u) > global0.d));
    let var_2 = var_0.wzz;
    let var_3 = func_4(arg_2, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1972f), var_2.x))))));
    var var_4 = global0.b;
    return _wgslsmith_mod_i32(select(_wgslsmith_mod_i32(max(u_input.c.x, -14236i), _wgslsmith_add_i32(1i, 35705i)), 1i, var_1.x), ~_wgslsmith_sub_i32(min(-1i, u_input.b), ~(-1i))) ^ u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-697f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))) * 1149f));
    var var_0 = ~(~vec2<u32>(4294967295u, 0u));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -378f);
    var var_1 = func_5(-1384f, func_4(~(vec2<u32>(var_0.x, 70796u) << (vec2<u32>(global0.d, 60312u) % vec2<u32>(32u))), Struct_1(false, vec2<bool>(false, true), ~global0.d, var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(23381i, global0.b, Struct_1(false, vec2<bool>(true, global0.b.x), var_0.x, 4294967295u), Struct_1(global0.a, vec2<bool>(global0.b.x, true), 1u, 37176u)))))), ~min(vec2<u32>(57318u, 0u) ^ vec2<u32>(1u, global0.d), firstTrailingBit(vec2<u32>(global0.c, global0.d)))) <= _wgslsmith_mod_i32(23415i, -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, 83107i), vec3<i32>(18143i, -34729i, 1i)), select(2147483647i, u_input.c.x, global0.a)));
    var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(~0u, reverseBits(global0.c)) & firstTrailingBit(vec2<u32>(1u, 10740u)), ~(~vec2<u32>(var_0.x, 33616u) ^ (vec2<u32>(var_0.x, global0.d) >> (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_5(-536f, Struct_1(global0.b.x && global0.a, vec2<bool>(true, true), _wgslsmith_sub_u32(var_0.x, 0u), ~0u), abs(vec2<u32>(4294967295u, var_0.x))), ~firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, u_input.a))), u_input.a, _wgslsmith_sub_i32(u_input.d, 26946i)));
}

