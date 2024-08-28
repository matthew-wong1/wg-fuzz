struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(-45756i, -11674i, 41567i, 4548i, -17093i, -8436i, i32(-2147483648), 2147483647i, 11066i, 50878i, 0i, 65628i, -6753i, -1i, -29659i, 1i, 2147483647i, 1i, 25692i);

var<private> global1: array<bool, 22>;

var<private> global2: array<Struct_3, 29>;

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec3<u32>(4294967295u, 1428u, 17963u), 61503i, vec3<bool>(false, true, false)), Struct_2(vec3<u32>(1u, 0u, 1u), i32(-2147483648), vec3<bool>(true, true, false)), Struct_2(vec3<u32>(4294967295u, 36413u, 4294967295u), 2147483647i, vec3<bool>(true, false, true)), Struct_2(vec3<u32>(18270u, 0u, 51448u), 2147483647i, vec3<bool>(false, true, false)), Struct_2(vec3<u32>(4130u, 1u, 19051u), -1971i, vec3<bool>(true, true, true)), Struct_2(vec3<u32>(4294967295u, 10268u, 0u), 26267i, vec3<bool>(true, false, false)), Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), 29615i, vec3<bool>(false, false, false)), Struct_2(vec3<u32>(0u, 27468u, 4294967295u), i32(-2147483648), vec3<bool>(true, true, false)), Struct_2(vec3<u32>(20028u, 0u, 7454u), 2147483647i, vec3<bool>(true, false, false)), Struct_2(vec3<u32>(1u, 106182u, 49055u), 5560i, vec3<bool>(true, false, false)), Struct_2(vec3<u32>(4294967295u, 0u, 0u), -52678i, vec3<bool>(false, false, true)), Struct_2(vec3<u32>(0u, 0u, 1u), 44724i, vec3<bool>(false, true, true)), Struct_2(vec3<u32>(1u, 26867u, 33895u), 38653i, vec3<bool>(false, true, true)), Struct_2(vec3<u32>(9380u, 1u, 1u), -1i, vec3<bool>(false, true, false)), Struct_2(vec3<u32>(0u, 1617u, 65192u), 0i, vec3<bool>(false, false, false)));

var<private> global4: array<i32, 13> = array<i32, 13>(1i, 2147483647i, -26937i, 2147483647i, -1i, 13583i, -11231i, -61859i, 8252i, 15610i, 0i, -9626i, 1i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(max(-3554i, 2147483647i >> (~u_input.b % 32u)), 0i), 2147483647i, global0[_wgslsmith_index_u32(u_input.c >> (u_input.a % 32u), 19u)]);
    global2 = array<Struct_3, 29>();
    let var_1 = Struct_2(~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.a, 1u), vec3<u32>(u_input.c, 25825u, u_input.a)))), -2147483647i, select(select(vec3<bool>(var_0.x <= u_input.d.x, true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 1u, 4294967295u), vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u)), 22u)]), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], false), false), !vec3<bool>(global1[_wgslsmith_index_u32(1u << (0u % 32u), 22u)], 1u == u_input.c, global1[_wgslsmith_index_u32(~u_input.c, 22u)]), !vec3<bool>(true, global1[_wgslsmith_index_u32(~u_input.b, 22u)], true)));
    global0 = array<i32, 19>();
    global3 = array<Struct_2, 15>();
    return abs(~((_wgslsmith_mod_u32(u_input.c, 786u) ^ (u_input.b >> (18570u % 32u))) ^ var_1.a.x));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    let var_0 = reverseBits(~vec2<u32>(~_wgslsmith_sub_u32(4294967295u, 16644u), ~_wgslsmith_sub_u32(u_input.b, u_input.b)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -1087f)))), ~(vec3<u32>(_wgslsmith_clamp_u32(0u, var_0.x, var_0.x), 1u, u_input.b) << (min(~vec3<u32>(4294967295u, 1u, u_input.b), vec3<u32>(u_input.c, 17243u, var_0.x) | vec3<u32>(u_input.c, 36695u, u_input.b)) % vec3<u32>(32u))), global3[_wgslsmith_index_u32(4294967295u & (_wgslsmith_sub_u32(4294967295u, select(u_input.a, u_input.b, true)) & _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, u_input.b), vec4<u32>(10307u, 4294967295u, u_input.a, var_0.x)), vec4<u32>(0u, 1u, 74125u, 11114u))), 15u)], Struct_1(global1[_wgslsmith_index_u32(~var_0.x, 22u)], abs(vec3<u32>(1u, min(var_0.x, 1u), _wgslsmith_dot_vec2_u32(var_0, var_0))), vec4<u32>(~u_input.b, ~var_0.x, 1u, 24584u), all(!(!vec4<bool>(true, arg_0, arg_0, global1[_wgslsmith_index_u32(u_input.b, 22u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1251f)) * _wgslsmith_f_op_f32(f32(-1f) * -773f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1953f), _wgslsmith_f_op_f32(-1000f + 1064f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(519f, 1341f)))))));
    global2 = array<Struct_3, 29>();
    let var_2 = global1[_wgslsmith_index_u32(~u_input.b, 22u)];
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, reverseBits(19192u)), 19u)];
    return var_1.d.c;
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = arg_0.d;
    global1 = array<bool, 22>();
    var_0 = Struct_1(true && ((~u_input.c << (arg_0.b.x % 32u)) > _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 48004u), 44680u)), var_0.b, countOneBits(arg_0.d.c) | (_wgslsmith_mult_vec4_u32(arg_0.d.c, func_3(false)) >> (_wgslsmith_sub_vec4_u32(~arg_0.d.c, ~vec4<u32>(4294967295u, 27987u, 1u, var_0.b.x)) % vec4<u32>(32u))), select((arg_0.c.b | global0[_wgslsmith_index_u32(var_0.b.x, 19u)]) >= _wgslsmith_mod_i32(27279i, arg_0.c.b), !any(arg_0.c.c), !(arg_0.a <= arg_0.e.x)) || var_0.d);
    let var_1 = 64554u;
    global4 = array<i32, 13>();
    return vec4<u32>(~abs(_wgslsmith_mult_u32(var_0.b.x, 4294967295u)), ~arg_0.c.a.x, (countOneBits(u_input.c) & 61864u) & 0u, ~var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 22>();
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, u_input.c), vec4<u32>(1u, 1u, u_input.c, u_input.b)) << (~1u % 32u), func_1()), 29u)];
    global2 = array<Struct_3, 29>();
    var var_1 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 19116u, 0u, 52658u), vec4<u32>(0u, 4294967295u, 37661u, var_0.d.c.x)) | func_2(global2[_wgslsmith_index_u32(79819u, 29u)]), ~vec4<u32>(1u, var_0.b.x, var_0.d.c.x, 0u)), ~u_input.b);
    var_1 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~(var_0.b ^ var_0.d.c.xzw), var_0.d.c.xzx), 1u, var_0.b.x & 4294967295u);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.e.zz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, -118f))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(sign(var_0.a)))))) + _wgslsmith_f_op_vec2_f32(-var_0.e.xx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_0.e.x, 279f, var_0.a))))))), var_0.e);
}

