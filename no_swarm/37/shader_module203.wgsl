struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
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

var<private> global0: array<bool, 3>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<i32, 11>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32) -> i32 {
    global0 = array<bool, 3>();
    global3 = array<i32, 11>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global2 = array<Struct_1, 24>();
    return global3[_wgslsmith_index_u32(u_input.c.x, 11u)];
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, global1.b, global1.b)) * vec4<f32>(global1.b, global1.b, 783f, global1.b)) + vec4<f32>(_wgslsmith_f_op_f32(global1.b * global1.b), -1797f, _wgslsmith_f_op_f32(-613f * -304f), _wgslsmith_f_op_f32(-global1.b))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2033f, global1.b, -1108f, global1.b))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b, 1170f, 1236f, global1.b))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, global1.b, global1.b, global1.b) - vec4<f32>(-1000f, 1000f, global1.b, -321f))), true)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -908f)), global1.b, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(trunc(global1.b)))));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(global3[_wgslsmith_index_u32(min(arg_0.x, u_input.c.x), 11u)] >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 43198u), vec2<u32>(u_input.c.x, 16137u)) % 32u)), arg_2 << (abs(~u_input.c.x) % 32u), -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global3[_wgslsmith_index_u32(16422u, 11u)], -2147483647i, -2147483647i), vec4<i32>(0i, arg_2, u_input.b.x, arg_2)), -37947i)), vec3<i32>(~_wgslsmith_sub_i32(-u_input.a, arg_2), -17789i, -2147483647i));
    let var_2 = countOneBits(countOneBits(_wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 3376i, 2147483647i), vec4<i32>(1800i, -72380i, global3[_wgslsmith_index_u32(47910u, 11u)], u_input.a)) | ~global3[_wgslsmith_index_u32(20290u, 11u)])));
    var var_3 = Struct_3(_wgslsmith_div_u32(14065u, 1u) > (0u & countOneBits(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x))), 113f);
    let var_4 = min(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, arg_0.x), u_input.c.xww), ~(~26863u)), 50679u, 85866u, u_input.c.x), u_input.c);
    return var_1;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = -firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(func_3(u_input.c.yzw, Struct_4(arg_2), arg_1), ~vec3<i32>(-8674i, 112i, u_input.b.x)), u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_1, u_input.a, 1i), max(-6023i, arg_1))));
    var var_1 = Struct_1(vec4<f32>(global1.b, _wgslsmith_f_op_f32(trunc(1000f)), global1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.b)), -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))), arg_2.x);
    var var_2 = Struct_4(arg_2);
    global1 = Struct_3(!global0[_wgslsmith_index_u32(~4294967295u, 3u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global1.b, 1f)), global1.b, var_2.a.x)));
    let var_3 = var_2.a.x;
    return Struct_1(var_1.a, all(select(vec4<bool>(false, true, var_1.b, false), vec4<bool>(!global1.a, !global0[_wgslsmith_index_u32(arg_0.x, 3u)], arg_2.x, true), true)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> Struct_2 {
    global0 = array<bool, 3>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(step(arg_1.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1.c.a))))), func_2(~(u_input.c >> (u_input.c % vec4<u32>(32u))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -334f)) & -arg_0, !select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], true, false), vec3<bool>(false, global1.a, true), global1.a), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], global1.a, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.e.x, 3u)], false, arg_1.c.b), global1.a), arg_3 > 2147483647i)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.c.a), false), global0[_wgslsmith_index_u32(77829u, 3u)], vec3<u32>(61195u, 4294967295u, _wgslsmith_sub_u32(~(~u_input.c.x), 2497u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(min(u_input.b.x, func_1(-1419f)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b, global1.b, global1.b, 342f), vec4<f32>(global1.b, -807f, -291f, 440f), select(vec4<bool>(global1.a, true, false, global0[_wgslsmith_index_u32(38519u, 3u)]), vec4<bool>(global1.a, global1.a, true, global0[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(87092u, 3u)], true, global0[_wgslsmith_index_u32(0u, 3u)], false))))), global2[_wgslsmith_index_u32(abs(23901u), 24u)], func_2(~(~u_input.c), global3[_wgslsmith_index_u32(60771u, 11u)], !vec3<bool>(global1.a, false, global0[_wgslsmith_index_u32(u_input.c.x, 3u)])), func_2(u_input.c, 26466i, vec3<bool>(global0[_wgslsmith_index_u32(~63321u, 3u)], any(vec2<bool>(true, true)), false)).b, vec3<u32>(u_input.c.x, ~_wgslsmith_add_u32(4294967295u, u_input.c.x), 108430u)), -_wgslsmith_mod_i32(func_3(firstTrailingBit(u_input.c.xzz), Struct_4(vec3<bool>(global1.a, true, global1.a)), 17840i).x, global3[_wgslsmith_index_u32(~3112u, 11u)] << (u_input.c.x % 32u)), firstTrailingBit(i32(-1i) * -18490i));
    let var_1 = var_0;
    global0 = array<bool, 3>();
    global2 = array<Struct_1, 24>();
    var var_2 = max(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.x, var_1.e.x), var_0.e.zx >> (vec2<u32>(12713u, 5826u) % vec2<u32>(32u))), _wgslsmith_mod_u32(3116u, var_0.e.x), 4294967295u)), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(-firstLeadingBit(u_input.b.x), 1i)));
}

