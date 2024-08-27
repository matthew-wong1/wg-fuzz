struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: array<vec4<bool>, 13>;

var<private> global2: Struct_3 = Struct_3(-348f);

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<u32>(8745u, 1u, 26062u)), Struct_1(vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec3<u32>(17861u, 13707u, 0u)), Struct_1(vec3<u32>(944u, 7607u, 0u)), Struct_1(vec3<u32>(4294967295u, 208u, 46146u)), Struct_1(vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec3<u32>(4294967295u, 15950u, 51602u)), Struct_1(vec3<u32>(15070u, 4294967295u, 62908u)), Struct_1(vec3<u32>(1u, 1u, 27667u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<u32>(21605u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(0u, 20006u, 4294967295u)), Struct_1(vec3<u32>(29270u, 0u, 4294967295u)), Struct_1(vec3<u32>(48813u, 4294967295u, 20259u)));

var<private> global4: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(0u, 26914u, 53264u)), Struct_1(vec3<u32>(0u, 71150u, 4294967295u)), Struct_1(vec3<u32>(9773u, 53177u, 84028u)), Struct_1(vec3<u32>(0u, 32146u, 1u)), Struct_1(vec3<u32>(123814u, 20104u, 29191u)), Struct_1(vec3<u32>(1u, 20055u, 0u)), Struct_1(vec3<u32>(6152u, 1u, 38194u)), Struct_1(vec3<u32>(12270u, 65122u, 4294967295u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a), global2.a))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(584f + 956f), _wgslsmith_f_op_f32(max(-394f, _wgslsmith_f_op_f32(exp2(global2.a))))))) - global2.a);
}

fn func_3() -> vec2<u32> {
    var var_0 = (min(select(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), false), reverseBits(~vec4<i32>(1i, u_input.a, 11672i, -1i))) | (vec4<i32>(-17402i, min(1582i, u_input.a), u_input.a & 10918i, u_input.a) | (~vec4<i32>(0i, u_input.a, -2147483647i, 13064i) << (~vec4<u32>(u_input.b, 18457u, 1u, u_input.b) % vec4<u32>(32u))))) << (~vec4<u32>(max(0u, 4294967295u), ~abs(18693u), max(_wgslsmith_add_u32(u_input.b, 0u), 1u), _wgslsmith_mod_u32(~u_input.b, u_input.b)) % vec4<u32>(32u));
    global3 = array<Struct_1, 14>();
    var var_1 = Struct_3(global2.a);
    var var_2 = !vec2<bool>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a, -58168i, -1i, var_0.x), vec4<i32>(0i, 7003i, 4819i, u_input.a)), ~vec4<i32>(var_0.x, var_0.x, 1i, u_input.a)) > _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-19594i, -2147483647i, u_input.a), var_0.wxy), firstTrailingBit(u_input.a)), true);
    let var_3 = _wgslsmith_add_vec3_u32(countOneBits(~(~vec3<u32>(4294967295u, u_input.b, 11927u))), ~vec3<u32>(~u_input.b, u_input.b, _wgslsmith_add_u32(_wgslsmith_mult_u32(54703u, u_input.b), ~u_input.b)));
    return _wgslsmith_div_vec2_u32(vec2<u32>(~35174u, 17020u), ~firstLeadingBit(select(var_3.yx, var_3.xy >> (var_3.yy % vec2<u32>(32u)), !vec2<bool>(false, var_2.x))));
}

fn func_2(arg_0: i32) -> i32 {
    global4 = array<Struct_1, 8>();
    global4 = array<Struct_1, 8>();
    let var_0 = true;
    var var_1 = 35430u;
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(~(_wgslsmith_mod_u32(30444u, u_input.b) & ~0u), _wgslsmith_div_u32(select(23241u, 1u, true), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(57528u, 83806u), vec2<u32>(0u, 4294967295u), vec2<u32>(42089u, u_input.b)), func_3())), ~reverseBits(u_input.b ^ u_input.b)), select(firstTrailingBit(~vec3<u32>(4294967295u, u_input.b, 4294967295u)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 10215u), vec3<u32>(7276u, 7805u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)) & vec3<u32>(u_input.b, u_input.b, 16133u)), !any(vec3<bool>(false, var_0, true))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !((true && (_wgslsmith_div_i32(u_input.a, u_input.a) >= ~(-13876i))) == true);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(!global1[_wgslsmith_index_u32(0u << (u_input.b % 32u), 13u)])) - -154f), vec2<u32>(reverseBits(u_input.b), u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(25544i, -63705i) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), -vec2<i32>(29555i, -10314i)) | _wgslsmith_sub_i32(64659i, _wgslsmith_sub_i32(u_input.a, func_2(16492i))));
    var var_2 = 1u;
    var var_3 = var_1;
    let var_4 = 1u;
    global1 = array<vec4<bool>, 13>();
    var var_5 = 35489u;
    let x = u_input.a;
    s_output = StorageBuffer(-37676i, var_3.a, vec2<f32>(-754f, var_1.a), vec3<i32>(_wgslsmith_clamp_i32(u_input.a, var_1.c, var_3.c) & (max(0i, var_1.c) << (firstTrailingBit(var_3.b.x) % 32u)), ~(-4012i), _wgslsmith_mult_i32(var_3.c, ~_wgslsmith_div_i32(var_3.c, u_input.a))));
}

