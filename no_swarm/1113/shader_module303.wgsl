struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: array<Struct_5, 16>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: f32) -> i32 {
    global0 = array<Struct_3, 18>();
    global1 = array<Struct_5, 16>();
    var var_0 = global1[_wgslsmith_index_u32(31870u, 16u)];
    let var_1 = vec3<f32>(var_0.b.b, -1000f, _wgslsmith_f_op_f32(-arg_0));
    var var_2 = -275f;
    return -1i;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_3(vec4<bool>(false, false, any(select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, false, false), arg_2)), arg_2), ~(~(~arg_3)), Struct_1(all(vec2<bool>(!arg_1.a, arg_1.b <= -1858f)), _wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_div_f32(1012f, arg_1.b), vec4<bool>(arg_2, ~arg_0.x < ~arg_0.x, false, all(vec3<bool>(false, false, false)) && any(vec4<bool>(arg_1.a, false, false, arg_2))), max(~vec4<u32>(4294967295u, arg_3, 1u, 4294967295u), vec4<u32>(arg_3, 0u, arg_3, 0u) ^ vec4<u32>(arg_3, 1u, arg_3, 4294967295u)) ^ (~vec4<u32>(arg_3, arg_3, arg_3, 28295u) & abs(vec4<u32>(1u, arg_3, arg_3, arg_3)))), arg_1, vec2<i32>(~max(-17028i, arg_0.x | 2147483647i), _wgslsmith_sub_i32(func_3(_wgslsmith_f_op_f32(1000f - -797f), arg_1.b), ~(-arg_0.x))));
    global1 = array<Struct_5, 16>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(596f, 1217f, true))) * 1135f)), var_0.d.b));
    return Struct_3(vec4<bool>(true, arg_1.a, true, !all(select(vec4<bool>(var_0.a.x, false, true, arg_2), vec4<bool>(arg_1.a, var_0.c.a, var_0.c.d.x, true), vec4<bool>(var_0.c.a, arg_1.a, false, false)))), arg_3, var_0.c, var_0.d, vec2<i32>(0i, abs(~(~u_input.a))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_3, 18>();
    let var_0 = arg_0.a.wwy;
    let var_1 = arg_0.c.d;
    let var_2 = Struct_4(_wgslsmith_add_i32(u_input.a, u_input.b), Struct_2(all(func_2(abs(vec3<i32>(-12762i, u_input.b, -1i)), Struct_2(false, 396f), func_2(vec3<i32>(-56896i, 1i, u_input.b), Struct_2(true, 1202f), arg_0.a.x, 32672u).c.a, arg_0.b).c.d.wy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-876f, -435f)))), -_wgslsmith_add_i32(u_input.c, 1i), Struct_3(vec4<bool>(true, ~arg_0.c.e.x >= 33734u, arg_1, all(var_1.zxx) || true), 1u, func_2(~vec3<i32>(20484i, u_input.b, arg_0.e.x), Struct_2(-400f > arg_0.d.b, _wgslsmith_f_op_f32(round(134f))), _wgslsmith_add_u32(1u, arg_0.b) >= 1u, min(_wgslsmith_add_u32(arg_0.c.e.x, arg_0.c.e.x), _wgslsmith_dot_vec3_u32(arg_0.c.e.xzw, arg_0.c.e.wzz))).c, Struct_2(select(false, true, true), _wgslsmith_f_op_f32(-func_2(vec3<i32>(0i, -2147483647i, 24453i), Struct_2(arg_2, arg_0.d.b), arg_0.c.a, 13928u).c.c)), ~arg_0.e));
    var var_3 = _wgslsmith_div_i32(var_2.d.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(11096i, arg_0.e.x | _wgslsmith_clamp_i32(u_input.b, var_2.a, arg_0.e.x), func_3(var_2.d.d.b, -775f), -21865i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -20844i, 2147483647i) ^ vec4<i32>(var_2.d.e.x, u_input.c, u_input.a, 19571i), abs(vec4<i32>(9153i, -1i, var_2.a, -1i))), reverseBits(reverseBits(35812i)), ~(-1i), reverseBits(~arg_0.e.x))));
    return Struct_1(all(!vec2<bool>(var_1.x, any(var_2.d.c.d))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-202f, var_2.d.d.b) + _wgslsmith_f_op_f32(f32(-1f) * -117f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.c.b), _wgslsmith_f_op_f32(-1207f * var_2.d.d.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1557f * _wgslsmith_f_op_f32(step(1457f, -1256f))), 109f, all(arg_0.a.ww))))), select(!(!(!var_2.d.a)), var_2.d.c.d, var_1.x), arg_0.c.e);
}

fn func_1() -> vec2<u32> {
    var var_0 = Struct_3(vec4<bool>(true, true, true, true), 103104u, func_4(func_2(select(select(vec3<i32>(37238i, u_input.c, 0i), vec3<i32>(20929i, u_input.b, u_input.a), true), ~vec3<i32>(0i, u_input.b, u_input.a), true), Struct_2(true, _wgslsmith_f_op_f32(-1409f + 2068f)), any(vec3<bool>(false, false, false)), 1u), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), any(vec4<bool>(true, true, true, select(false, false, false)))), Struct_2(true, -645f), vec2<i32>(_wgslsmith_clamp_i32(u_input.c, ~u_input.a, _wgslsmith_div_i32(16018i, firstLeadingBit(u_input.b))), u_input.b & _wgslsmith_sub_i32(9374i, -1i)));
    var_0 = func_2(abs(_wgslsmith_mod_vec3_i32(select(min(vec3<i32>(34742i, var_0.e.x, 1i), vec3<i32>(2147483647i, var_0.e.x, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.e.x, 2147483647i, 21313i), vec3<i32>(-2147483647i, u_input.b, -1i)), !var_0.c.d.x), ~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.e.x, -4153i, -2147483647i), vec3<i32>(-9696i, u_input.c, -2147483647i)))), var_0.d, true, 4294967295u);
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(839f + var_0.c.c)) - -192f), func_4(func_2(vec3<i32>(u_input.a, var_0.e.x, var_0.e.x), var_0.d, var_0.c.a && var_0.a.x, firstTrailingBit(var_0.b)), true, var_0.c.a).b, _wgslsmith_f_op_f32(-107f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.c + var_0.d.b)))), vec3<f32>(1000f, _wgslsmith_f_op_f32(round(var_0.c.b)), 133f));
    global0 = array<Struct_3, 18>();
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(func_4(global0[_wgslsmith_index_u32(55518u, 18u)], var_0.d.a, any(!var_0.a.wwz)).e.yw, var_0.c.e.yy), 18u)];
    return var_2.c.e.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = reverseBits(func_1());
    global1 = array<Struct_5, 16>();
    var var_2 = 449f;
    global1 = array<Struct_5, 16>();
    var var_3 = 177f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(max(-830f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1244f), _wgslsmith_f_op_f32(f32(-1f) * -397f)))))), ~vec4<u32>(14856u, ~var_1.x, countOneBits(_wgslsmith_clamp_u32(1u, var_1.x, var_1.x)), var_1.x), ~(~(~var_1)));
}

