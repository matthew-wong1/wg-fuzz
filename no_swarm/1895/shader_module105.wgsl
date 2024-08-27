struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_3,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: array<f32, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = all(vec4<bool>(false, any(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(false, true, true, global0.x), vec4<bool>(true, true, global0.x, global0.x))) & (1f > global1[_wgslsmith_index_u32(u_input.e >> (u_input.e % 32u), 10u)]), global0.x, false));
    let var_1 = Struct_5(54663u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2315f + -647f))) * global1[_wgslsmith_index_u32(~26979u >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 37700u, u_input.b), vec3<u32>(u_input.c.x, 1u, u_input.b))) % 32u), 10u)]), Struct_3(Struct_2(global0.x, Struct_1(select(global0.xzz, global0.xxx, global0.x)), Struct_1(vec3<bool>(global0.x, global0.x, global0.x)), 0i), vec2<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], _wgslsmith_f_op_f32(ceil(-696f)))), -975f), Struct_1(global0.wyy)), _wgslsmith_dot_vec4_u32(vec4<u32>(min(u_input.e, u_input.b), u_input.e, 8014u, ~13704u & ~u_input.c.x), min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 28001u) << (vec4<u32>(u_input.e, 4294967295u, 46236u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(35865u, 4294967295u, 1u, u_input.a.x)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 0u, 38787u, u_input.e), vec4<u32>(0u, u_input.e, u_input.b, 66868u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1658u, u_input.e, u_input.b, 10839u), vec4<u32>(u_input.c.x, u_input.e, 25276u, u_input.a.x))))), ~abs(_wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(u_input.a.x, u_input.c.x, 0u))));
    let var_2 = var_1;
    return 866f;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    global1 = array<f32, 10>();
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3())))))));
    return Struct_1(global0.xwy);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    return func_2(firstTrailingBit(countOneBits(firstTrailingBit(vec2<i32>(11872i, u_input.d.x)))), select(_wgslsmith_mod_i32(-(1i & u_input.d.x), -u_input.d.x), countOneBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -5795i, u_input.d.x, 0i), vec4<i32>(-20189i, 0i, -2147483647i, u_input.d.x))), ~firstTrailingBit(u_input.e) < _wgslsmith_clamp_u32(27204u, 46322u, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1447f;
    var_0 = -1565f;
    global1 = array<f32, 10>();
    var var_1 = vec4<f32>(277f, _wgslsmith_f_op_f32(ceil(741f)), -1213f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]);
    var var_2 = vec2<bool>(global0.x, select(!(!global0.x), _wgslsmith_mod_u32(57587u, u_input.c.x) != 1u, all(!vec4<bool>(global0.x, global0.x, false, global0.x))) && false);
    global1 = array<f32, 10>();
    let var_3 = Struct_5(~0u, _wgslsmith_f_op_f32(-395f * 987f), Struct_3(Struct_2(true, func_1(select(global0.xz, global0.yy, true)), func_2(u_input.d.yz, firstTrailingBit(u_input.d.x)), u_input.d.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1101f, 294f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.a.x, 10u)])), global1[_wgslsmith_index_u32(u_input.e, 10u)]), !global0.yz)), Struct_1(select(!global0.yyw, !vec3<bool>(var_2.x, var_2.x, true), all(vec2<bool>(global0.x, false))))), u_input.c.x, _wgslsmith_add_u32((4294967295u | u_input.a.x) >> (74730u % 32u), _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.b, 69999u, u_input.e) & u_input.c) | reverseBits(vec3<u32>(u_input.a.x, 0u, 4294967295u)), u_input.c)));
    global0 = !(!select(select(vec4<bool>(var_2.x, true, var_2.x, false), select(vec4<bool>(true, false, var_2.x, global0.x), vec4<bool>(false, var_2.x, true, false), false), global0.x), !select(vec4<bool>(false, var_3.c.a.c.a.x, var_3.c.c.a.x, var_3.c.c.a.x), vec4<bool>(false, global0.x, false, var_2.x), vec4<bool>(false, var_3.c.c.a.x, var_2.x, false)), vec4<bool>(global0.x, true, all(vec2<bool>(var_2.x, var_2.x)), var_2.x | true)));
    let var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yy, ~(~(countOneBits(vec2<u32>(var_3.d, 2391u)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.a.x), u_input.a) % vec2<u32>(32u)))), firstLeadingBit(u_input.c), countOneBits(vec3<i32>(17069i, 0i ^ var_3.c.a.d, ~(-1i)) >> ((vec3<u32>(var_3.d, u_input.b, 0u) ^ u_input.c) % vec3<u32>(32u))));
}

