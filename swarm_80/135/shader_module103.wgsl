struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<u32>(1592u, 0u, 47911u), Struct_1(-21216i), Struct_1(30438i), vec3<bool>(false, true, true), 0i), Struct_2(vec3<u32>(0u, 1u, 15452u), Struct_1(-21766i), Struct_1(-9078i), vec3<bool>(true, false, true), 20400i), Struct_2(vec3<u32>(43812u, 1u, 115328u), Struct_1(0i), Struct_1(1i), vec3<bool>(false, false, true), 21195i), Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(i32(-2147483648)), Struct_1(20474i), vec3<bool>(true, true, true), 0i), Struct_2(vec3<u32>(42273u, 12372u, 5623u), Struct_1(13823i), Struct_1(48566i), vec3<bool>(true, true, true), -1i), Struct_2(vec3<u32>(262u, 4294967295u, 1u), Struct_1(-1i), Struct_1(-19176i), vec3<bool>(false, true, true), 0i), Struct_2(vec3<u32>(84641u, 1u, 6460u), Struct_1(i32(-2147483648)), Struct_1(20489i), vec3<bool>(true, true, true), 2147483647i), Struct_2(vec3<u32>(72925u, 50633u, 4294967295u), Struct_1(-8103i), Struct_1(40847i), vec3<bool>(false, false, false), 0i), Struct_2(vec3<u32>(0u, 44662u, 52384u), Struct_1(-1i), Struct_1(1996i), vec3<bool>(true, true, true), 1i), Struct_2(vec3<u32>(11712u, 52302u, 0u), Struct_1(46491i), Struct_1(13725i), vec3<bool>(true, false, true), 2147483647i), Struct_2(vec3<u32>(7888u, 16888u, 0u), Struct_1(29715i), Struct_1(22761i), vec3<bool>(false, false, false), i32(-2147483648)), Struct_2(vec3<u32>(1595u, 4294967295u, 29886u), Struct_1(-33848i), Struct_1(i32(-2147483648)), vec3<bool>(true, false, false), -3610i), Struct_2(vec3<u32>(0u, 1u, 1u), Struct_1(1i), Struct_1(-38711i), vec3<bool>(true, false, false), 15277i), Struct_2(vec3<u32>(0u, 1u, 0u), Struct_1(9691i), Struct_1(1i), vec3<bool>(false, true, true), 2147483647i), Struct_2(vec3<u32>(2617u, 0u, 1u), Struct_1(-1i), Struct_1(-1i), vec3<bool>(false, false, false), 8354i), Struct_2(vec3<u32>(73270u, 1u, 4294967295u), Struct_1(-3499i), Struct_1(i32(-2147483648)), vec3<bool>(false, false, true), 0i), Struct_2(vec3<u32>(0u, 0u, 45727u), Struct_1(9641i), Struct_1(3610i), vec3<bool>(false, true, false), 2147483647i), Struct_2(vec3<u32>(33467u, 39900u, 19175u), Struct_1(11639i), Struct_1(12308i), vec3<bool>(true, false, false), -28826i), Struct_2(vec3<u32>(13069u, 1436u, 98582u), Struct_1(-25602i), Struct_1(37631i), vec3<bool>(false, false, false), 30252i), Struct_2(vec3<u32>(0u, 73399u, 4294967295u), Struct_1(-7842i), Struct_1(-2543i), vec3<bool>(true, false, true), 2147483647i), Struct_2(vec3<u32>(44067u, 22894u, 660u), Struct_1(89480i), Struct_1(-8793i), vec3<bool>(true, false, false), 26748i), Struct_2(vec3<u32>(1u, 47594u, 107177u), Struct_1(0i), Struct_1(2147483647i), vec3<bool>(false, true, false), -31089i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(arg_2.e);
    global0 = array<Struct_2, 22>();
    var var_1 = Struct_2(arg_1, var_0, Struct_1(arg_0.x), vec3<bool>(select(true & any(vec2<bool>(true, arg_2.d.x)), all(vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x)) & (true & arg_2.d.x), true != !arg_2.d.x), arg_2.d.x, true || any(!vec2<bool>(true, arg_2.d.x))), arg_0.x);
    let var_2 = -firstLeadingBit(-37554i);
    global0 = array<Struct_2, 22>();
    return _wgslsmith_f_op_f32(f32(-1f) * -213f);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0.d.x;
    let var_1 = arg_0;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-336f, 285f))))) + _wgslsmith_f_op_f32(-426f + _wgslsmith_f_op_f32(func_3(countOneBits(u_input.b), countOneBits(arg_0.a), Struct_2(u_input.c, arg_0.c, var_1.b, var_1.d, u_input.a))))), 1085f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(587f - -266f))))));
    global0 = array<Struct_2, 22>();
    let var_3 = ~firstLeadingBit(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, select(vec4<i32>(-2147483647i, arg_0.e, var_1.c.a, 30017i), vec4<i32>(arg_0.e, arg_0.c.a, arg_0.c.a, 2194i), vec4<bool>(true, var_1.d.x, arg_0.d.x, var_1.d.x)) ^ (vec4<i32>(arg_0.b.a, u_input.b.x, -25085i, var_1.b.a) & u_input.b)));
    return arg_0.c;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(684f, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-1612f - -746f), 1336f), vec2<bool>(true, false)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 1036f))))));
    return func_2(global0[_wgslsmith_index_u32(~(~(~u_input.c.x)), 22u)]);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> i32 {
    let var_0 = select(~(~reverseBits(countOneBits(u_input.c.xx))), abs(max(select(u_input.c.xz << (u_input.c.yx % vec2<u32>(32u)), firstLeadingBit(u_input.c.yx), !vec2<bool>(false, arg_1)), ~reverseBits(u_input.c.xy))), false);
    global0 = array<Struct_2, 22>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-180f, _wgslsmith_f_op_f32(789f * _wgslsmith_f_op_f32(-267f * _wgslsmith_f_op_f32(select(1633f, -455f, true))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1637f, -334f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-726f, -520f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(528f, 377f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(327f, -1187f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1169f, 534f)), arg_2)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-590f, -1774f) - vec2<f32>(188f, -803f))))), false)));
    let var_2 = global0[_wgslsmith_index_u32(5554u, 22u)];
    let var_3 = func_1(vec4<f32>(783f, 1157f, -179f, 634f), ~(-2147483647i), var_2.b);
    return -32180i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    var var_0 = true;
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    let var_1 = ~max(abs(u_input.c), u_input.c);
    var var_2 = -u_input.b.x | ~_wgslsmith_add_i32(3219i, func_4(func_1(vec4<f32>(1676f, -778f, -225f, -253f), u_input.b.x, Struct_1(-2147483647i)), true, true));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-447f, -879f, -662f, -590f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-207f, 674f, -1039f, -808f)))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-507f, 511f, -263f, -1952f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(528f, 1238f, _wgslsmith_f_op_f32(max(-1522f, -1280f)), -381f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1343f, -304f, 659f, -1000f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), -358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(var_3.x + -486f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.x, 170f, 257f, 114f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(var_3)), var_3))))), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(333f + var_3.x)))), 1475f, u_input.c);
}

