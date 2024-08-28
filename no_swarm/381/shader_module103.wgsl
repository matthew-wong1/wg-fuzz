struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<i32>(3388i, 0i, 18226i, -1i), true, 157f, vec3<i32>(18333i, i32(-2147483648), 65738i)), Struct_1(vec4<i32>(38955i, -1i, -47236i, -1i), true, -1262f, vec3<i32>(40212i, -47760i, -14231i)), Struct_1(vec4<i32>(19960i, 2147483647i, -6926i, 18508i), false, -333f, vec3<i32>(-8296i, 2147483647i, -18417i)), Struct_1(vec4<i32>(-23130i, 45014i, 2147483647i, 1i), false, 247f, vec3<i32>(-1i, 0i, 2147483647i)), Struct_1(vec4<i32>(1i, 22358i, 22144i, 0i), false, 1537f, vec3<i32>(1i, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(-5582i, 47801i, -13354i, -11320i), true, -155f, vec3<i32>(-24122i, 908i, 0i)), Struct_1(vec4<i32>(49789i, -8275i, -8014i, -12975i), true, 1124f, vec3<i32>(1i, -12380i, -40210i)), Struct_1(vec4<i32>(-44375i, 14296i, -19036i, 0i), true, -453f, vec3<i32>(-1i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(20234i, -39815i, 0i, -1i), true, 1118f, vec3<i32>(0i, -13258i, i32(-2147483648))), Struct_1(vec4<i32>(1i, 4772i, 8501i, -16802i), false, -543f, vec3<i32>(13927i, -82166i, -34313i)), Struct_1(vec4<i32>(0i, 14231i, 1i, 39140i), true, -662f, vec3<i32>(i32(-2147483648), -40192i, -14271i)), Struct_1(vec4<i32>(10390i, -30703i, -1913i, -15839i), false, -323f, vec3<i32>(2147483647i, 12012i, 1i)), Struct_1(vec4<i32>(-1i, 1i, 1i, -4419i), true, 907f, vec3<i32>(-20605i, 4448i, 62538i)));

var<private> global2: array<vec3<f32>, 18>;

var<private> global3: array<vec3<f32>, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<u32> {
    let var_0 = u_input.b;
    let var_1 = arg_0;
    global1 = array<Struct_1, 13>();
    global0 = u_input.b.x;
    global3 = array<vec3<f32>, 24>();
    return u_input.b.wx;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>) -> bool {
    global1 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(min(select(~vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x), any(vec4<bool>(arg_0.x, arg_0.x, arg_1.x, true))), ~(u_input.b.yz << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))), vec2<u32>(abs(u_input.b.x), 59594u << (1u % 32u))), min(u_input.b.wy, _wgslsmith_clamp_vec2_u32(u_input.b.wy, u_input.b.xx, u_input.b.yx) ^ ~vec2<u32>(u_input.b.x, u_input.b.x)), countOneBits(~(select(vec2<u32>(594u, u_input.b.x), vec2<u32>(45737u, 0u), true) ^ func_3(global1[_wgslsmith_index_u32(0u, 13u)], u_input.b))));
    var_0 = ~u_input.b.wz;
    var_0 = vec2<u32>(26860u, var_0.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(965f, _wgslsmith_f_op_f32(1000f + 1533f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f - _wgslsmith_f_op_f32(f32(-1f) * -1200f))))));
    return all(!select(vec2<bool>(!arg_0.x, arg_0.x), arg_0, !(!arg_1.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(-1i, u_input.a);
    var var_1 = !vec2<bool>(func_2(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false)))), func_2(vec2<bool>(true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true))));
    let var_2 = _wgslsmith_mult_u32(min(u_input.b.x, 46423u), ~reverseBits(_wgslsmith_add_u32(u_input.b.x >> (u_input.b.x % 32u), u_input.b.x)));
    global2 = array<vec3<f32>, 18>();
    let var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 13u)];
    return global1[_wgslsmith_index_u32(~min(4294967295u, u_input.b.x ^ 4294967295u), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(~countOneBits(32718u), ~(~u_input.b.x)), 1u), 13u)];
    let var_2 = -1i;
    global0 = _wgslsmith_sub_u32(u_input.b.x | (~u_input.b.x >> (0u % 32u)), _wgslsmith_add_u32(min(~_wgslsmith_mult_u32(4294967295u, 1u), ~_wgslsmith_mod_u32(1u, u_input.b.x)), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.b.x)));
    global0 = 0u;
    var_0 = 1u >= u_input.b.x;
    let var_3 = -9930i;
    var var_4 = countOneBits(u_input.b.x);
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -323f, var_1.c, var_1.c))) * vec4<f32>(var_1.c, var_5.c, var_1.c, var_5.c))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(var_5.c, -905f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(361f + -216f) * 140f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.c))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1896f)))))), 4294967295u);
}

