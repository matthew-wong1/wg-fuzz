struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true)), vec4<bool>(false, false, true, false), Struct_2(vec2<bool>(false, false)), Struct_1(-652f, 55976u, 67942u, vec3<u32>(4294967295u, 0u, 20002u))), Struct_3(Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false)), vec4<bool>(true, false, false, false), Struct_2(vec2<bool>(true, true)), Struct_1(-2281f, 15906u, 11164u, vec3<u32>(0u, 3521u, 47461u))), Struct_3(Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false)), vec4<bool>(false, false, true, false), Struct_2(vec2<bool>(false, false)), Struct_1(658f, 4294967295u, 29192u, vec3<u32>(3120u, 4294967295u, 18236u))), Struct_3(Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true)), vec4<bool>(true, true, false, false), Struct_2(vec2<bool>(true, false)), Struct_1(1324f, 46293u, 4294967295u, vec3<u32>(1u, 0u, 2733u))), Struct_3(Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false)), vec4<bool>(true, false, true, false), Struct_2(vec2<bool>(true, true)), Struct_1(862f, 54234u, 12653u, vec3<u32>(4294967295u, 0u, 4294967295u))), Struct_3(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), vec4<bool>(true, false, true, true), Struct_2(vec2<bool>(true, true)), Struct_1(864f, 8661u, 85885u, vec3<u32>(4294967295u, 0u, 17799u))), Struct_3(Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false)), vec4<bool>(true, false, true, true), Struct_2(vec2<bool>(false, true)), Struct_1(-1473f, 27770u, 10179u, vec3<u32>(0u, 20274u, 19751u))), Struct_3(Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), vec4<bool>(true, true, false, false), Struct_2(vec2<bool>(false, true)), Struct_1(537f, 118579u, 22821u, vec3<u32>(0u, 0u, 4294967295u))), Struct_3(Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true)), vec4<bool>(true, false, false, true), Struct_2(vec2<bool>(false, true)), Struct_1(726f, 4294967295u, 47903u, vec3<u32>(13856u, 31057u, 53226u))), Struct_3(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), vec4<bool>(true, false, false, true), Struct_2(vec2<bool>(false, false)), Struct_1(-1571f, 0u, 4294967295u, vec3<u32>(35920u, 39341u, 0u))), Struct_3(Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true)), vec4<bool>(true, true, true, false), Struct_2(vec2<bool>(true, true)), Struct_1(1000f, 4294967295u, 1u, vec3<u32>(30837u, 0u, 80532u))), Struct_3(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), vec4<bool>(false, true, true, true), Struct_2(vec2<bool>(true, true)), Struct_1(-807f, 0u, 67209u, vec3<u32>(1u, 13153u, 1u))), Struct_3(Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false)), vec4<bool>(true, false, true, true), Struct_2(vec2<bool>(false, true)), Struct_1(-1167f, 63956u, 1u, vec3<u32>(0u, 7595u, 77u))), Struct_3(Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), vec4<bool>(false, false, false, true), Struct_2(vec2<bool>(false, false)), Struct_1(2158f, 7273u, 4294967295u, vec3<u32>(55130u, 7429u, 13752u))), Struct_3(Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), vec4<bool>(false, false, false, true), Struct_2(vec2<bool>(false, true)), Struct_1(304f, 0u, 1u, vec3<u32>(4294967295u, 5908u, 0u))), Struct_3(Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false)), vec4<bool>(false, false, true, true), Struct_2(vec2<bool>(false, true)), Struct_1(652f, 0u, 32990u, vec3<u32>(1u, 1u, 1u))), Struct_3(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), vec4<bool>(false, true, true, false), Struct_2(vec2<bool>(true, false)), Struct_1(1000f, 41129u, 24820u, vec3<u32>(43101u, 50952u, 4294967295u))), Struct_3(Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true)), vec4<bool>(true, true, true, false), Struct_2(vec2<bool>(false, false)), Struct_1(-1492f, 12670u, 38221u, vec3<u32>(22362u, 1u, 0u))), Struct_3(Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), vec4<bool>(true, true, true, true), Struct_2(vec2<bool>(true, false)), Struct_1(-163f, 17514u, 1489u, vec3<u32>(1u, 0u, 38957u))), Struct_3(Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), vec4<bool>(false, false, false, false), Struct_2(vec2<bool>(true, true)), Struct_1(1000f, 62582u, 1u, vec3<u32>(99905u, 4294967295u, 32861u))), Struct_3(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), vec4<bool>(true, false, false, true), Struct_2(vec2<bool>(true, false)), Struct_1(1694f, 4294967295u, 4294967295u, vec3<u32>(106194u, 4294967295u, 0u))), Struct_3(Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), vec4<bool>(true, false, false, false), Struct_2(vec2<bool>(true, false)), Struct_1(-713f, 1u, 1u, vec3<u32>(74973u, 4294967295u, 7915u))), Struct_3(Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), vec4<bool>(true, false, false, true), Struct_2(vec2<bool>(true, true)), Struct_1(1381f, 19857u, 2923u, vec3<u32>(1u, 1u, 4294967295u))));

var<private> global1: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    global1 = any(select(vec4<bool>((20472i | u_input.b) != u_input.b, !any(vec2<bool>(true, false)), true, true), vec4<bool>(true, true, true, true), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), all(vec4<bool>(false, true, true, false))))));
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1036f)))))));
    return all(select(vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true, true), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), true), true), false));
}

fn func_2() -> f32 {
    var var_0 = 8060i;
    global1 = func_3();
    let var_1 = vec2<u32>(~(~(~0u)), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(23662u, 29823u, 0u), vec3<u32>(66809u, 47383u, 4294967295u)), _wgslsmith_mult_u32(72589u, 48368u), select(4294967295u, 1u, false), 71955u), ~vec4<u32>(32358u, 0u, 69346u, 81550u))));
    let var_2 = (countOneBits(~abs(-18866i)) < u_input.a.x) || any(!vec4<bool>(func_3(), 6569u < var_1.x, true, true));
    var_0 = ~0i;
    return -267f;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = countOneBits(~(-vec4<i32>(firstTrailingBit(arg_0), -1i, arg_0, arg_0)));
    var var_1 = arg_2;
    var var_2 = !vec3<bool>(any(arg_3.a), false, arg_3.a.x);
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(false, u_input.b <= max(firstTrailingBit(u_input.a.x), 3914i)));
    var var_1 = u_input.a;
    global1 = any(var_0.a);
    var var_2 = ~_wgslsmith_div_i32(_wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(i32(-1i) * -1i, 0i)), 1i);
    var var_3 = 1034f;
    let x = u_input.a;
    s_output = func_1(-2542i, -529f, -1000f, Struct_2(!(!vec2<bool>(var_0.a.x, var_0.a.x))));
}

