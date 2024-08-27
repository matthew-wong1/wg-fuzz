struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 5>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<f32>(-870f, -678f, 1334f), 2147483647i, vec2<bool>(true, false), -725f), Struct_1(vec3<f32>(1000f, 1624f, 1644f), 15541i, vec2<bool>(false, true), 1000f), Struct_1(vec3<f32>(854f, 1131f, 742f), 2147483647i, vec2<bool>(false, false), 2196f), Struct_1(vec3<f32>(-933f, -438f, 836f), i32(-2147483648), vec2<bool>(true, true), -314f), Struct_1(vec3<f32>(-1000f, 873f, -538f), 1i, vec2<bool>(true, true), 459f), Struct_1(vec3<f32>(-553f, 745f, -3451f), 2147483647i, vec2<bool>(true, true), -687f), Struct_1(vec3<f32>(-623f, -436f, 619f), -1i, vec2<bool>(true, false), 773f), Struct_1(vec3<f32>(1000f, 3116f, 895f), -47215i, vec2<bool>(false, false), 1327f));

var<private> global3: array<i32, 12>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = select(!vec4<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), select(u_input.a >= 1u, true, true), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), 306f <= _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0))), vec4<bool>(true, arg_0 == _wgslsmith_div_f32(_wgslsmith_f_op_f32(127f + arg_0), -566f), select(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), false, any(vec2<bool>(true, true))), true));
    global3 = array<i32, 12>();
    global1 = array<i32, 5>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - -822f), _wgslsmith_f_op_f32(-arg_0), arg_0))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.e.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.a, 1u, 47136u), vec4<u32>(1u, 1u, u_input.c.x, u_input.c.x)), vec4<u32>(107653u, u_input.a, u_input.a, 4294967295u))), 5u)], var_0.wx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1402f))))));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, u_input.a), 9166u, u_input.a, u_input.a) & ~vec4<u32>(64322u, 3928u, 38329u, u_input.a), (vec4<u32>(10025u, u_input.e.x, u_input.c.x, u_input.e.x) | reverseBits(vec4<u32>(u_input.c.x, 71125u, 42263u, u_input.a))) << (~(vec4<u32>(874u, u_input.e.x, u_input.c.x, u_input.e.x) << (vec4<u32>(u_input.e.x, 44663u, u_input.c.x, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), 8u)];
    return 0u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>) -> bool {
    var var_0 = -global3[_wgslsmith_index_u32(~(~36791u), 12u)];
    let var_1 = global2[_wgslsmith_index_u32(~(~(~(~u_input.c.x))), 8u)];
    let var_2 = _wgslsmith_f_op_f32(trunc(var_1.a.x));
    global3 = array<i32, 12>();
    return !(4294967295u < func_3(_wgslsmith_f_op_f32(f32(-1f) * -2082f)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = (~(~(-vec3<i32>(global3[_wgslsmith_index_u32(8225u, 12u)], u_input.d, u_input.b))) << (~u_input.c % vec3<u32>(32u))) >> (u_input.c % vec3<u32>(32u));
    var var_1 = select(select(select(select(select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, arg_0, true, false), false), vec4<bool>(false, false, arg_0, false), !vec4<bool>(true, arg_0, arg_0, arg_0)), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), !arg_0), vec4<bool>(func_2(vec4<i32>(-9001i, u_input.b, global3[_wgslsmith_index_u32(u_input.c.x, 12u)], 41590i), vec2<bool>(arg_0, arg_0)), arg_0, select(false, arg_0, arg_0), all(vec3<bool>(true, false, false)))), select(vec4<bool>(arg_0 && arg_0, arg_0, all(vec3<bool>(arg_0, false, arg_0)), true), vec4<bool>(arg_0 & arg_0, true, true, var_0.x > 0i), select(!vec4<bool>(true, arg_0, true, arg_0), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, true), arg_0), true)), all(select(vec3<bool>(true, false, arg_0), select(vec3<bool>(true, true, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, true, arg_0)), any(vec4<bool>(true, arg_0, arg_0, false))))), select(select(select(!vec4<bool>(arg_0, arg_0, false, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(arg_0, arg_0, true, true)), arg_0), vec4<bool>(arg_0 | true, true, true, true), all(vec3<bool>(false, true, arg_0))), select(select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, true, true), arg_0), vec4<bool>(true, true, true, true), any(vec3<bool>(false, arg_0, arg_0))), vec4<bool>(true, any(vec3<bool>(arg_0, arg_0, arg_0)), select(false, true, arg_0), all(vec4<bool>(arg_0, false, true, arg_0))), vec4<bool>(all(vec2<bool>(false, true)), true, select(arg_0, false, false), u_input.c.x > 0u)), arg_0), select(select(!(!vec4<bool>(arg_0, arg_0, arg_0, false)), select(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, false, false, false)), vec4<bool>(true, arg_0, true, true), 33269i <= u_input.d), !(!vec4<bool>(arg_0, true, arg_0, true))), !(!(!vec4<bool>(true, arg_0, arg_0, arg_0))), vec4<bool>(arg_0, arg_0, all(!vec4<bool>(true, true, arg_0, false)), arg_0)));
    var var_2 = var_1.wx;
    var var_3 = global2[_wgslsmith_index_u32(~(~14952u), 8u)];
    var var_4 = 748f;
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_3.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.a, var_3.a)))), 50741i, !var_1.wz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) * -2211f), var_3.a.x)) - var_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -351f)));
    global2 = array<Struct_1, 8>();
    global3 = array<i32, 12>();
    global3 = array<i32, 12>();
    global3 = array<i32, 12>();
    let var_0 = func_1(true);
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.b, min(_wgslsmith_sub_i32(-2147483647i, global3[_wgslsmith_index_u32(~u_input.a, 12u)]), global1[_wgslsmith_index_u32(~u_input.e.x, 5u)])));
}

