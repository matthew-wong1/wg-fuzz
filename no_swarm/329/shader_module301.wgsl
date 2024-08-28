struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = -min(vec3<i32>(arg_0.c, -31569i, _wgslsmith_sub_i32(arg_0.c, select(arg_0.c, arg_0.c, true))), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-7462i, 1i, arg_0.c) >> (vec3<u32>(1u, arg_0.b, 4294967295u) % vec3<u32>(32u))), select(-vec3<i32>(-40593i, arg_0.c, 0i), vec3<i32>(-2766i, -8004i, -10675i) >> (vec3<u32>(21961u, arg_0.b, 69068u) % vec3<u32>(32u)), true), -vec3<i32>(41854i, 0i, 0i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1866f, 250f, _wgslsmith_f_op_f32(round(-289f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1414f, _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(607f + -1500f), -1325f), -1000f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, -1343f, 805f, 1786f)), vec4<f32>(439f, -218f, 1657f, 1273f)))))));
    var var_2 = _wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 21437u), vec2<u32>(max(44241u, arg_0.b), ~47123u))), _wgslsmith_sub_vec2_u32(arg_0.d.zy & u_input.a, select(min(vec2<u32>(68366u, arg_0.a), vec2<u32>(arg_0.d.x, arg_0.d.x)), vec2<u32>(1u, 0u), any(vec2<bool>(false, true)))) | arg_0.d.zz);
    let var_3 = Struct_1(vec4<u32>(~(var_2.x << (var_2.x % 32u)) ^ ~(~50958u), var_2.x, arg_0.d.x, 5010u));
    var var_4 = !all(!vec3<bool>(var_1.x == -2764f, arg_0.b <= var_3.a.x, false));
    return _wgslsmith_mod_u32(0u >> ((~_wgslsmith_dot_vec4_u32(vec4<u32>(94650u, var_3.a.x, 18925u, var_2.x), var_3.a) & var_3.a.x) % 32u), var_3.a.x);
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(ceil(-159f))))));
    let var_1 = -(countOneBits(1i) >> (_wgslsmith_div_u32(~_wgslsmith_add_u32(14519u, 0u), countOneBits(func_3(Struct_3(arg_1, 13524u, 8892i, vec3<u32>(1u, 4294967295u, 0u))))) % 32u));
    var var_2 = _wgslsmith_add_vec2_u32(u_input.a, u_input.a);
    let var_3 = 4294967295u | var_2.x;
    var_2 = u_input.a;
    return Struct_1(~vec4<u32>(_wgslsmith_sub_u32(arg_1 ^ u_input.a.x, 1u), _wgslsmith_add_u32(arg_1, var_3), arg_1, 1u));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = -718f;
    var_0 = -1341f;
    let var_1 = Struct_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-546f)) * 806f), ~((4294967295u & u_input.a.x) ^ _wgslsmith_mult_u32(0u, u_input.a.x))));
    let var_2 = Struct_5(Struct_1(var_1.a.a));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -717f), -731f)))) * -229f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(ceil(454f)), true))))));
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: f32) -> StorageBuffer {
    var var_0 = Struct_4(-230f, 2147483647i, -arg_0);
    let var_1 = Struct_5(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1664f + 1667f)))), arg_2.a.a.x));
    var_0 = Struct_4(186f, ~_wgslsmith_mult_i32(30547i, ~var_0.b), 38858i);
    var_0 = Struct_4(-1504f, func_1(-(1i & min(-23809i, var_0.b))), var_0.c);
    let var_2 = 0u;
    return StorageBuffer(abs(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let x = u_input.a;
    s_output = func_4(countOneBits(1i | _wgslsmith_mult_i32(func_1(-13666i), 1i)), _wgslsmith_sub_vec3_u32(vec3<u32>(func_3(Struct_3(0u, u_input.a.x, -5144i, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), max(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 0u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(41882u, 4294967295u, u_input.a.x)))), Struct_2(Struct_1(vec4<u32>(0u, ~5497u, 1u, u_input.a.x)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f)), 1u)), 1f);
}

