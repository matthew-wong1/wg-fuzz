struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(1u, 56822u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(56612u, 29014u), vec2<u32>(4294967295u, 12103u), vec2<u32>(0u, 39982u), vec2<u32>(51283u, 688u), vec2<u32>(0u, 6406u), vec2<u32>(1u, 6133u), vec2<u32>(26760u, 1u), vec2<u32>(88892u, 4294967295u), vec2<u32>(42329u, 1u), vec2<u32>(25351u, 27393u), vec2<u32>(39208u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 22388u), vec2<u32>(0u, 0u), vec2<u32>(5453u, 33919u), vec2<u32>(1u, 25149u), vec2<u32>(9703u, 1u), vec2<u32>(1u, 40276u));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<bool>(true, true), vec3<u32>(65162u, 62966u, 63917u), 17945u), Struct_1(vec2<bool>(true, true), vec3<u32>(88671u, 0u, 51765u), 1u), Struct_1(vec2<bool>(false, true), vec3<u32>(37264u, 0u, 1u), 1u), Struct_1(vec2<bool>(true, true), vec3<u32>(110184u, 1u, 4294967295u), 102910u), Struct_1(vec2<bool>(false, false), vec3<u32>(7545u, 0u, 67732u), 4294967295u), Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 1u, 6928u), 0u), Struct_1(vec2<bool>(false, false), vec3<u32>(4004u, 0u, 4294967295u), 17733u), Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 4294967295u, 59727u), 6577u), Struct_1(vec2<bool>(false, false), vec3<u32>(33640u, 0u, 0u), 4294967295u), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 30679u, 4294967295u), 0u), Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 32272u, 17181u), 0u), Struct_1(vec2<bool>(false, true), vec3<u32>(48116u, 18246u, 0u), 76385u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = global2.b;
    var var_1 = _wgslsmith_div_f32(615f, -1981f);
    var var_2 = Struct_1(global0.a, abs(select(~_wgslsmith_div_vec3_u32(global2.b, global2.b), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 11700u, u_input.a), vec3<u32>(0u, 0u, var_0.x)), vec3<u32>(global0.b.x, 0u, 19323u)), global0.a.x)), _wgslsmith_add_u32(4294967295u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(5084u, var_0.x, global0.b.x, global2.c), vec4<u32>(0u, u_input.a, 1u, global0.b.x)), vec4<u32>(12188u, 1u, 66531u, global0.c) ^ vec4<u32>(0u, var_0.x, 0u, var_0.x))));
    let var_3 = abs(min(vec4<u32>(var_2.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, var_2.b.x, var_0.x), vec3<u32>(u_input.a, global0.c, 22287u)), min(global0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, global0.c, 0u, 0u), vec4<u32>(128021u, 79827u, var_2.b.x, var_0.x))), global0.b.x), vec4<u32>(firstTrailingBit(29130u), 14688u, ~u_input.a, reverseBits(21972u)) >> (firstTrailingBit(vec4<u32>(var_2.c, global2.c, 0u, 1u)) % vec4<u32>(32u))));
    let var_4 = global3[_wgslsmith_index_u32(abs(abs(0u)), 12u)];
    return global0.b.x;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    global0 = Struct_1(global2.a, ~_wgslsmith_div_vec3_u32(global0.b, firstTrailingBit(vec3<u32>(19465u, 1u, global2.b.x))), ~(1u >> (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.c, u_input.a), func_3(), firstLeadingBit(119637u)) % 32u)));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -917f), arg_1.x, -1500f);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -2169f), _wgslsmith_f_op_f32(-669f + -272f)), arg_1)) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1267f - _wgslsmith_f_op_f32(select(var_0.x, arg_1.x, global2.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1522f * var_0.x)), arg_1.x, arg_0 <= (i32(-1i) * -13252i))), arg_1.x));
    global0 = global3[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(0u, global2.c, ~(~(~18650u)))), 12u)];
    let var_2 = firstTrailingBit(u_input.b);
    return global3[_wgslsmith_index_u32(global0.c, 12u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = Struct_2(max(firstLeadingBit(~arg_2.b.yx ^ (arg_2.b.xz | vec2<u32>(1u, 4294967295u))), ~func_2(22511i, vec3<f32>(1164f, 1000f, -1212f)).b.yz << ((vec2<u32>(global2.b.x, arg_1.c) & arg_2.b.xx) % vec2<u32>(32u))), reverseBits(~(vec4<u32>(arg_2.b.x, 0u, 4294967295u, u_input.a) | vec4<u32>(global0.b.x, u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(323f, _wgslsmith_f_op_f32(min(-542f, -443f))))))), global1[_wgslsmith_index_u32(global2.b.x, 20u)]);
    var var_1 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(abs(abs(19675u)), func_3()), var_0.d), var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -172f), select(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.c, u_input.a), func_2(-2147483647i, vec3<f32>(782f, var_0.c, -1000f)).b.zz) << (global2.b.xz % vec2<u32>(32u)), vec2<u32>(~_wgslsmith_mod_u32(23146u, var_0.d.x), ~func_2(1i, vec3<f32>(var_0.c, 843f, var_0.c)).b.x), vec2<bool>(arg_1.a.x, global2.a.x)));
    var var_2 = arg_1.a.x;
    let var_3 = func_2(-11453i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, 858f) * vec3<f32>(var_1.c, var_1.c, 299f)), _wgslsmith_div_vec3_f32(vec3<f32>(-837f, var_1.c, 549f), vec3<f32>(-778f, var_1.c, var_1.c))))))));
    var var_4 = -20819i;
    return any(!(!select(vec4<bool>(false, global2.a.x, false, arg_2.a.x), !vec4<bool>(true, false, var_3.a.x, arg_2.a.x), func_2(0i, vec3<f32>(var_1.c, -1220f, var_1.c)).a.x)));
}

fn func_1() -> vec3<bool> {
    var var_0 = 520f;
    global3 = array<Struct_1, 12>();
    let var_1 = ~vec3<u32>(global0.c, ~global0.c, global0.b.x);
    let var_2 = 0i;
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-878f, 659f, 998f, -1026f), vec4<f32>(324f, -366f, -2458f, -1369f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-410f, -793f, 170f, 1208f)))), vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, -1308f, true)), _wgslsmith_f_op_f32(282f * -1000f), _wgslsmith_f_op_f32(floor(-1088f)), -375f)))));
    return vec3<bool>(true, func_4(u_input.b | vec4<i32>(-u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, 7031i), _wgslsmith_clamp_i32(var_2, 41236i, u_input.b.x), var_2), func_2(var_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1667f, var_3.x, -594f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-192f, var_3.x, var_3.x)))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global2.b, abs(var_1)) | 1u, 12u)]), global2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 12>();
    let var_0 = Struct_1(global2.a, ~global0.b, 0u);
    let var_1 = 1u;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, var_1 ^ firstTrailingBit(u_input.a)), 12u)];
    let var_3 = !(!(!select(func_1(), select(vec3<bool>(var_0.a.x, global0.a.x, false), vec3<bool>(false, var_0.a.x, var_2.a.x), true), select(vec3<bool>(true, global2.a.x, false), vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(global0.a.x, false, global2.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.a, u_input.a >> (u_input.a % 32u)), 21947u), ~func_2(max(1i, 5844i), vec3<f32>(1877f, 603f, 825f)).b.x), 4294967295u, _wgslsmith_sub_u32(var_0.c, ~func_2(_wgslsmith_mod_i32(1i, u_input.b.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-515f, -1447f, -577f), vec3<f32>(2623f, 241f, -378f)))).b.x), ~u_input.b.x);
}

