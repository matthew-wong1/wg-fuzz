struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, false, false));

var<private> global1: Struct_2 = Struct_2(Struct_1(1u), vec2<bool>(false, true), Struct_1(61775u), Struct_1(36978u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32) -> Struct_2 {
    global1 = Struct_2(Struct_1(45184u), !global1.b, Struct_1(~1u), Struct_1(global1.a.a));
    let var_0 = Struct_1(~(_wgslsmith_mod_u32(1u, ~u_input.c) ^ abs(46947u)));
    var var_1 = global1.c;
    return Struct_2(Struct_1(~countOneBits(var_1.a) ^ _wgslsmith_mult_u32(327u, var_0.a)), global1.b, global1.a, Struct_1(_wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(41327u, var_0.a, 1u, 82097u)), vec4<u32>(global1.a.a, global1.d.a, global1.c.a, var_0.a), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, false)), vec4<u32>(~global1.c.a, 0u, abs(global1.c.a), countOneBits(51961u)))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 1u)];
    let var_1 = -33362i;
    global1 = func_2(_wgslsmith_f_op_f32(floor(667f)), -2147483647i, -18317i);
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1136f, -1622f)), _wgslsmith_div_f32(-883f, 734f))))), reverseBits(var_1), 1i).d;
    return abs(~(vec2<u32>(16598u, arg_0.a.a) >> (vec2<u32>(40899u, var_2.a) % vec2<u32>(32u))) >> (vec2<u32>(min(arg_0.a.a >> (arg_0.a.a % 32u), ~30933u), firstTrailingBit(arg_0.a.a)) % vec2<u32>(32u)));
}

fn func_1() -> f32 {
    var var_0 = global1.d;
    global1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 151f) * _wgslsmith_f_op_f32(f32(-1f) * -1444f)), _wgslsmith_f_op_f32(abs(-1000f))) + _wgslsmith_f_op_f32(-1186f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-664f + -1000f))))), 0i, u_input.a.x);
    var var_1 = ~(select(max(~vec2<u32>(57376u, 13194u), firstLeadingBit(vec2<u32>(global1.c.a, 1u))), vec2<u32>(15476u, select(87484u, var_0.a, false)), !global1.b) & _wgslsmith_add_vec2_u32(vec2<u32>(max(global1.d.a, var_0.a), global1.a.a), func_3(Struct_3(global1.c, 4294967295u, false), Struct_3(global1.a, u_input.b, global1.b.x))));
    var_1 = ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, ~59281u), func_3(Struct_3(global1.d, firstTrailingBit(66303u), global1.b.x), Struct_3(Struct_1(global1.c.a), var_1.x, false)));
    var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(19852u, u_input.c), vec2<u32>(global1.a.a, 26576u)), _wgslsmith_mod_u32(u_input.b, ~56065u)), _wgslsmith_mult_u32(firstTrailingBit(u_input.c), ~1u) & var_1.x));
    return _wgslsmith_f_op_f32(493f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1231f, 118f)), 1000f))), _wgslsmith_f_op_f32(sign(1071f)), any(func_2(-402f, -38841i, firstTrailingBit(-11407i)).b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(max(-u_input.a.x, u_input.a.x), -2147483647i), (i32(-1i) * -1i) & abs(u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)) ^ u_input.a;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())))))), -885f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(f32(-1f) * -879f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(597f)), _wgslsmith_f_op_f32(917f + -321f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1120f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(110f)))))));
    var_0 = vec3<i32>(var_0.x, var_0.x, max(1i, 2147483647i) << ((global1.c.a | ~global1.c.a) % 32u));
    var var_2 = true;
    var var_3 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_1.x))))))), ~2147483647i, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(u_input.a.x, ~2147483647i), var_1.x, var_1.wy, select(i32(-1i) * -12925i, ~(~(-2147483647i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, 4294967295u), vec3<u32>(2406u, 4294967295u, var_3.c.a)) % 32u)), !(var_1.x > _wgslsmith_f_op_f32(max(343f, var_1.x)))));
}

