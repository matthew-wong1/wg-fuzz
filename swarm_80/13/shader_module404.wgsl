struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(42696u, 18817u, 91388u), vec3<u32>(31113u, 976u, 33263u), vec3<u32>(0u, 1387u, 1u), vec3<u32>(0u, 87623u, 30914u), vec3<u32>(48790u, 8477u, 15558u), vec3<u32>(3850u, 43701u, 7199u), vec3<u32>(0u, 2219u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 14318u, 9851u), vec3<u32>(1u, 15818u, 4294967295u), vec3<u32>(4294967295u, 32225u, 0u), vec3<u32>(43090u, 134196u, 2657u), vec3<u32>(7603u, 11335u, 76457u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 49829u, 58248u), vec3<u32>(4294967295u, 4294967295u, 35373u), vec3<u32>(4294967295u, 0u, 7490u), vec3<u32>(26169u, 0u, 5268u));

var<private> global1: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec3<u32> {
    return global0[_wgslsmith_index_u32(4294967295u, 18u)];
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_i32(~u_input.c.xzz, -vec3<i32>(1498i, reverseBits(-67620i), _wgslsmith_add_i32(u_input.c.x, global1.x)) >> ((~reverseBits(vec3<u32>(71216u, u_input.a.x, 17814u)) << ((select(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, false, true)) ^ global0[_wgslsmith_index_u32(u_input.a.x, 18u)]) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_0 = ((select(u_input.c.wzw, u_input.c.yyy, false) ^ -(~vec3<i32>(-6959i, -2147483647i, u_input.b))) & vec3<i32>(-2147483647i << (_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 32220u)) % 32u), global1.x, _wgslsmith_add_i32(global1.x, 1i))) << ((_wgslsmith_mult_vec3_u32(~global0[_wgslsmith_index_u32(1u, 18u)], firstTrailingBit(func_2())) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), abs(vec3<u32>(0u, u_input.a.x, u_input.a.x))), u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = array<vec3<u32>, 18>();
    return ~(~44580u);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(!(true || ((u_input.c.x | 2147483647i) >= u_input.c.x)), u_input.a.x > ~(~(u_input.a.x ^ u_input.a.x)));
    let var_1 = Struct_3(-1003f, _wgslsmith_clamp_vec4_u32(vec4<u32>(func_1(-623f), select(u_input.a.x, 94188u, 2347u == u_input.a.x), ~(13375u << (u_input.a.x % 32u)), u_input.a.x), abs(vec4<u32>(firstLeadingBit(u_input.a.x), ~u_input.a.x, _wgslsmith_add_u32(9009u, u_input.a.x), 1u)), firstLeadingBit(vec4<u32>(u_input.a.x, func_1(-600f), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 31268u, 25939u, 17655u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), 11684u))));
    var var_2 = vec2<u32>(~(~70879u), _wgslsmith_add_u32(var_1.b.x, u_input.a.x >> (abs(1u) % 32u)));
    var var_3 = false;
    let var_4 = var_1.a;
    return 186f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zy;
    var var_1 = var_0.x;
    var var_2 = Struct_1(func_1(_wgslsmith_f_op_f32(473f * -1000f)) <= ~u_input.a.x, false);
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-584f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-845f)) + _wgslsmith_f_op_f32(f32(-1f) * -1156f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))));
    var var_4 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1710f * 948f), var_3.x, var_2.b)))), vec4<u32>(u_input.a.x, var_0.x, 46436u, 11685u));
    global0 = array<vec3<u32>, 18>();
    var_1 = ~14607u;
    var_4 = Struct_3(761f, _wgslsmith_div_vec4_u32(~firstTrailingBit(~vec4<u32>(u_input.a.x, 103369u, 4294967295u, var_4.b.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(var_4.b.zzx, vec3<u32>(u_input.a.x, 112721u, 0u)), u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_4.b.x, 0u), _wgslsmith_div_u32(1u, var_0.x)), var_4.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.a))), vec4<i32>(-2147483647i, _wgslsmith_sub_i32(global1.x, 1i), 1705i, _wgslsmith_dot_vec2_i32(abs(u_input.c.wz), u_input.c.wz) & u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, var_4.a)))) + var_3.x));
}

