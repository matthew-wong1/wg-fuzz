struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<f32>(-255f, -487f), false), Struct_1(vec2<f32>(-600f, 1534f), false), Struct_1(vec2<f32>(-1769f, 1054f), true), Struct_1(vec2<f32>(225f, 345f), true), Struct_1(vec2<f32>(1139f, -803f), false), Struct_1(vec2<f32>(2543f, -696f), true), Struct_1(vec2<f32>(333f, 504f), false), Struct_1(vec2<f32>(421f, 712f), false), Struct_1(vec2<f32>(1297f, 751f), true), Struct_1(vec2<f32>(-800f, -504f), true), Struct_1(vec2<f32>(1725f, -1781f), false), Struct_1(vec2<f32>(1129f, 501f), true), Struct_1(vec2<f32>(179f, 246f), true));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_1 {
    var var_0 = ~1u;
    var_0 = 4294967295u;
    global1 = array<Struct_1, 13>();
    let var_1 = _wgslsmith_f_op_f32(-global2.a.x);
    var_0 = 4294967295u;
    return Struct_1(global2.a, !(!(u_input.b < u_input.b) == true));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = 0u;
    var var_1 = 5696i;
    var var_2 = Struct_2(Struct_1(arg_1.a, global2.b), !select(vec3<bool>(arg_1.b, u_input.b <= 19361i, u_input.b > 6051i), select(!vec3<bool>(arg_3, true, true), select(vec3<bool>(global2.b, true, false), vec3<bool>(global2.b, arg_0, arg_0), true), global2.b), vec3<bool>(!arg_1.b, any(vec2<bool>(arg_1.b, arg_3)), !arg_1.b)), -1282f, func_2());
    var_0 = ~1u;
    let var_3 = _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-167f, _wgslsmith_f_op_f32(-arg_1.a.x), var_2.d.b)))));
    return ~_wgslsmith_mod_u32(countOneBits(abs(1u)), 1u);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec3<bool>) -> vec2<bool> {
    global2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(global2.a.x)), _wgslsmith_f_op_f32(-global2.a.x)), arg_2.x);
    var var_0 = arg_0.d;
    global0 = u_input.a.x;
    var var_1 = !arg_0.b.x;
    var var_2 = reverseBits(abs(~reverseBits(vec3<u32>(0u, 0u, 1u)))) >> (_wgslsmith_sub_vec3_u32(~(vec3<u32>(148388u, arg_1, 1u) << (vec3<u32>(1u, 4294967295u, 17168u) % vec3<u32>(32u))), ~max(vec3<u32>(4294967295u, 20959u, 1u), countOneBits(vec3<u32>(4294967295u, 1u, arg_1)))) % vec3<u32>(32u));
    return vec2<bool>(_wgslsmith_f_op_f32(sign(var_0.a.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1981f) * func_2().a.x)), global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(0i, ~(-40124i));
    var var_0 = global2.a.x;
    var var_1 = ~(_wgslsmith_mult_u32(reverseBits(func_1(global2.b, global1[_wgslsmith_index_u32(85025u, 13u)], global2.a.x, global2.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(331u, 46116u), vec2<u32>(4294967295u, 0u))) ^ ~1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1260f, 985f, global2.a.x, -247f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -1953f, global2.a.x, global2.a.x)))) + vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(exp2(global2.a.x)), -2274f)))));
    var var_3 = !select(!(!vec2<bool>(global2.b, global2.b)), select(func_3(Struct_2(Struct_1(global2.a, global2.b), vec3<bool>(global2.b, global2.b, global2.b), var_2.x, Struct_1(var_2.xw, global2.b)), firstTrailingBit(1u), !vec3<bool>(true, false, global2.b)), func_3(Struct_2(global1[_wgslsmith_index_u32(17325u, 13u)], vec3<bool>(false, false, global2.b), var_2.x, Struct_1(vec2<f32>(-2131f, 314f), global2.b)), ~1u, !vec3<bool>(global2.b, global2.b, global2.b)), func_3(Struct_2(Struct_1(var_2.yy, false), vec3<bool>(global2.b, false, global2.b), 587f, global1[_wgslsmith_index_u32(31661u, 13u)]), ~4294967295u, !vec3<bool>(false, global2.b, global2.b))), false);
    let var_4 = global2.b;
    let var_5 = select(!(!vec3<bool>(var_2.x < var_2.x, global2.b, func_2().b)), vec3<bool>(false || any(select(vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(var_3.x, true, false), vec3<bool>(true, true, var_3.x))), var_3.x, var_3.x), vec3<bool>(any(vec3<bool>(true, true, true)), true, global2.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(32954u, ~_wgslsmith_div_u32(~13012u, ~7454u), 2563u, (1u & firstTrailingBit(4294967295u)) << (reverseBits(37382u) % 32u)), u_input.a, ~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 21277u, 22762u), vec4<u32>(86048u, 4294967295u, 1u, 44034u)), firstTrailingBit(1u >> (1u % 32u))));
}

