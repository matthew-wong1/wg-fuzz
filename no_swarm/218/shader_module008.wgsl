struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~(~vec3<u32>(u_input.a.x, 1u, u_input.a.x))) >> (((~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) | select(firstLeadingBit(vec3<u32>(28401u, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), false)) & vec3<u32>(_wgslsmith_div_u32(~u_input.a.x, u_input.a.x), (u_input.a.x ^ 7973u) | u_input.a.x, 0u)) % vec3<u32>(32u));
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1723f)) * vec2<f32>(277f, -1209f));
    return _wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d.x, -2147483647i), vec2<i32>(arg_1.d.x, _wgslsmith_div_i32(1i, 2147483647i)))), -_wgslsmith_div_i32(-2147483647i, arg_1.d.x));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    var var_0 = min(arg_0.d.xw, vec2<i32>(-arg_0.d.x, -2147483647i));
    var var_1 = _wgslsmith_mult_vec4_i32(max(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(1837i, var_0.x, -30505i, var_0.x), vec4<i32>(-1i, 14098i, 11391i, arg_0.d.x), arg_0.b), vec4<i32>(arg_0.d.x, var_0.x, -48375i, var_0.x)), vec4<i32>(58265i, firstLeadingBit(-1i), ~8032i, _wgslsmith_mult_i32(var_0.x, 2221i)), min(-arg_0.d, arg_0.d)), -((arg_0.d ^ arg_0.d) & arg_0.d)), vec4<i32>(~(~41938i >> (select(arg_1, 0u, arg_0.b.x) % 32u)), var_0.x, 1406i >> ((_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_1, arg_1)) & _wgslsmith_mult_u32(arg_1, arg_1)) % 32u), arg_0.d.x));
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1056f)))), _wgslsmith_f_op_f32(arg_0.c.x - -1745f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.x)))));
}

fn func_2() -> Struct_1 {
    let var_0 = !vec4<bool>(true, u_input.a.x >= 11858u, !all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), (-15453i > func_1(vec4<f32>(-1525f, 336f, -1274f, 349f), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, true, false), vec3<f32>(-725f, 429f, -756f), vec4<i32>(50579i, -41642i, 1i, 1i)))) & true);
    global0 = array<Struct_3, 19>();
    var var_1 = global0[_wgslsmith_index_u32(~(u_input.a.x ^ 1u), 19u)];
    let var_2 = Struct_1(vec3<bool>(false, true, all(select(!var_0, var_0, any(vec3<bool>(false, true, var_0.x))))), !var_0, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(!(!vec3<bool>(var_0.x, var_0.x, true)), select(var_0, var_0, !vec4<bool>(true, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-345f, 301f, -183f)), -_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_1.a.x, var_1.a.x, -1i), var_1.a)), ~u_input.a.x)), countOneBits(var_1.a) & select(vec4<i32>(abs(var_1.a.x), 2147483647i, reverseBits(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, 80804i, 2147483647i, -2147483647i), var_1.a)), ~max(var_1.a, vec4<i32>(56321i, var_1.a.x, -25460i, var_1.a.x)), var_0));
    var var_3 = Struct_4(u_input.a | vec2<u32>(~u_input.a.x, 1u & ~u_input.a.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 19>();
    var var_0 = true;
    let var_1 = firstLeadingBit((_wgslsmith_dot_vec3_i32(vec3<i32>(-30260i, -4785i, 0i), countOneBits(vec3<i32>(-13533i, 15388i, 1i))) & 21066i) | reverseBits(-57110i ^ func_1(vec4<f32>(-926f, 500f, 1981f, -1266f), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, false, false, false), vec3<f32>(-158f, 1134f, -251f), vec4<i32>(-12221i, -20314i, -36525i, 22035i)))));
    let var_2 = func_2();
    var var_3 = Struct_4((~(u_input.a & vec2<u32>(u_input.a.x, 3236u)) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(0u, u_input.a.x)) % vec2<u32>(32u))) << (min(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(42193u, 0u), u_input.a >> (u_input.a % vec2<u32>(32u))), min(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)) ^ vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)));
    var_0 = var_2.a.x;
    var var_4 = !(!all(vec4<bool>(var_2.a.x, any(var_2.b.yzy), true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(~u_input.a.x))), _wgslsmith_f_op_vec3_f32(-var_2.c));
}

