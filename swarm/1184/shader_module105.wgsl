struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(false, vec4<u32>(15727u, 56167u, 1u, 67091u), i32(-2147483648), vec2<bool>(false, true), Struct_1(false)), Struct_2(true, vec4<u32>(1168u, 7654u, 11629u, 80888u), -38823i, vec2<bool>(true, false), Struct_1(true)), Struct_2(true, vec4<u32>(4294967295u, 1u, 68023u, 1u), 31388i, vec2<bool>(true, false), Struct_1(true)), Struct_2(true, vec4<u32>(1u, 3318u, 0u, 1u), -59030i, vec2<bool>(false, true), Struct_1(true)));

var<private> global2: i32 = 37581i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec3<i32> {
    let var_0 = arg_1;
    let var_1 = Struct_1(!(_wgslsmith_mult_i32(1i, u_input.b) <= reverseBits(firstLeadingBit(u_input.a))));
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    var var_2 = ~firstTrailingBit(select(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 20057u), vec2<u32>(39830u, 64229u)), ~arg_0), 10719u, all(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], var_0.x, true))));
    return vec3<i32>(u_input.a, max(abs(firstTrailingBit(u_input.b)), 28827i) >> (_wgslsmith_mod_u32(arg_0, _wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_0, arg_0, 0u, arg_0), vec4<u32>(70731u, arg_0, arg_0, 1u)), ~vec4<u32>(arg_0, 0u, 1u, 346u))) % 32u), 1i);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1814f, -1074f, 1312f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(385f, -154f, -2176f), vec3<f32>(1000f, 133f, -1253f), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(568f, 306f, 2637f), vec3<f32>(1188f, -1323f, 858f))) - vec3<f32>(-800f, -1051f, -2696f)), !select(vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(arg_0.d.x, global0[_wgslsmith_index_u32(arg_2.x, 15u)], false), vec3<bool>(false, true, true))))));
    var var_1 = _wgslsmith_mod_u32(arg_0.b.x, 4294967295u);
    global0 = array<bool, 15>();
    var_1 = arg_2.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(737f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-664f - 338f)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1171f, _wgslsmith_f_op_f32(var_0.x + var_0.x))), 1608f));
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = vec2<bool>(!any(!vec4<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(12108u, 15u)], true)), arg_0.x);
    var var_1 = arg_1.b.x;
    global2 = countOneBits(u_input.b);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(905f))) - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-763f * arg_1.b.x) + 734f) + _wgslsmith_f_op_f32(f32(-1f) * -479f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(3213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * -547f) * arg_1.b.x))));
    var var_3 = select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4946u, 1u, 4294967295u), vec3<u32>(70074u, 4294967295u, 1u)), 15u)]), !arg_0, all(var_0));
    return u_input.b;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_add_vec3_i32(countOneBits(~(~func_2(arg_0.b.x, vec2<bool>(arg_1.a, global0[_wgslsmith_index_u32(arg_0.b.x, 15u)])))), abs(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_0.c, 2147483647i, 2147483647i), firstLeadingBit(vec3<i32>(arg_0.c, 25899i, 0i))) & -(vec3<i32>(2147483647i, u_input.b, arg_0.c) & vec3<i32>(2147483647i, -14686i, -1i))));
    let var_1 = Struct_3(-_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c, var_0.x, var_0.x) >> (arg_0.b.wzx % vec3<u32>(32u)), ~var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1762f, -269f, -476f, -1985f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-576f, 321f, 684f, 1500f))))))));
    global0 = array<bool, 15>();
    global2 = _wgslsmith_mult_i32(var_1.a.x ^ func_4(vec3<bool>(arg_0.e.a, func_3(arg_0, Struct_1(false), vec4<u32>(0u, 1u, 67466u, 0u)), var_1.b.x <= 518f), Struct_3(var_1.a, vec4<f32>(var_1.b.x, var_1.b.x, 458f, -1000f))), -(_wgslsmith_sub_i32(arg_0.c, max(arg_0.c, var_1.a.x)) << (42946u % 32u)));
    global0 = array<bool, 15>();
    return arg_0.b.xzz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~reverseBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 62061u), vec2<u32>(1u, 13266u))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)));
    var var_1 = Struct_1(!global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(func_1(global1[_wgslsmith_index_u32(var_0.x, 4u)], Struct_1(false)), ~vec3<u32>(4294967295u, 4294967295u, 17909u)), 15u)]);
    let var_2 = u_input.b;
    let var_3 = ~0u;
    let var_4 = var_3;
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(282f, 475f, var_1.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -381f))) >= _wgslsmith_f_op_f32(sign(-499f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, var_4, min(1u | ~var_0.x, _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, var_4), var_0.x))));
}

