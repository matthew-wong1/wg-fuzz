struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = arg_0;
    var var_1 = abs(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, ~arg_0, -1i & u_input.b.x), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b.x, var_0, arg_0), vec3<i32>(-13824i, u_input.c.x, -1i))), ~firstLeadingBit(vec3<i32>(var_0, arg_0, 268i))));
    let var_2 = !all(vec4<bool>(false, true, true || select(true, true, true), true));
    var_1 = -reverseBits(-vec3<i32>(51228i, arg_0, -1i) | vec3<i32>(43990i, -2147483647i, var_1.x)) << (vec3<u32>(u_input.a, firstLeadingBit(countOneBits(~1u)), _wgslsmith_sub_u32(47716u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(20674u, 4294967295u, 0u, 0u), vec4<u32>(108239u, u_input.d.x, 0u, u_input.d.x)), max(vec4<u32>(u_input.d.x, u_input.d.x, 701u, u_input.d.x), vec4<u32>(u_input.a, u_input.d.x, 0u, u_input.a))))) % vec3<u32>(32u));
    let var_3 = ~firstTrailingBit(~(-min(vec3<i32>(-42227i, -37505i, arg_0), vec3<i32>(arg_0, 5079i, 0i))));
    return 0u;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<f32>(-909f, 405f, -761f, _wgslsmith_f_op_f32(-1810f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1515f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1527f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1648f), var_0.x)))), var_0.yz));
    var var_2 = Struct_4(Struct_3(Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, false), select(true, true, true))), _wgslsmith_clamp_i32(min(-2147483647i, u_input.b.x), u_input.c.x, u_input.b.x) >> (~_wgslsmith_add_u32(u_input.d.x, 0u) % 32u), Struct_2(1u, vec2<u32>(4294967295u, u_input.d.x), firstTrailingBit(~vec3<i32>(-1i, u_input.c.x, 2147483647i))), Struct_2(52114u, vec2<u32>(0u, 4294967295u) << (u_input.d.xz % vec2<u32>(32u)), select(-vec3<i32>(u_input.e, -2147483647i, -2147483647i), vec3<i32>(30417i, u_input.c.x, u_input.b.x) | vec3<i32>(2147483647i, 19180i, u_input.b.x), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)))), Struct_2(~20851u, vec2<u32>(u_input.d.x, func_3(7175i)), -vec3<i32>(-22948i, _wgslsmith_clamp_i32(u_input.e, 2147483647i, 1i), ~u_input.e)), ~vec4<u32>(reverseBits(u_input.a) >> (u_input.a % 32u), ~(0u << (u_input.a % 32u)), u_input.a, u_input.a));
    var_2 = Struct_4(Struct_3(Struct_1(select(select(var_2.a.a.a, vec2<bool>(var_2.a.a.a.x, var_2.a.a.a.x), false), var_2.a.a.a, !var_2.a.a.a)), reverseBits(_wgslsmith_add_i32(abs(-28930i), max(u_input.e, -21817i))), var_2.a.c, Struct_2(_wgslsmith_mult_u32(~34689u, ~4294967295u), vec2<u32>(~u_input.d.x, var_2.a.c.b.x), abs(var_2.a.c.c))), Struct_2(10112u, vec2<u32>(0u, u_input.a), -_wgslsmith_mult_vec3_i32(vec3<i32>(4583i, u_input.e, 14553i), vec3<i32>(u_input.e, 1i, u_input.e))), _wgslsmith_clamp_vec4_u32(~abs(abs(vec4<u32>(0u, var_2.c.x, 0u, var_2.c.x))), abs(var_2.c), _wgslsmith_clamp_vec4_u32(~vec4<u32>(15379u, u_input.a, var_2.b.b.x, u_input.d.x), var_2.c, ~var_2.c) >> (var_2.c % vec4<u32>(32u))));
    var var_3 = Struct_3(var_2.a.a, -1i, var_2.b, var_2.a.d);
    return var_3.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_1 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -54779i;
    var_0 = ~u_input.b.x;
    let var_1 = Struct_3(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2501f, 1649f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1656f, -231f))), _wgslsmith_div_vec2_f32(vec2<f32>(-678f, 1901f), vec2<f32>(-877f, 787f)), vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-493f, -499f, -1854f), vec3<f32>(548f, -1000f, 1563f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2634f, -664f, -750f) * vec3<f32>(-327f, 2322f, 724f))), true)), u_input.d << (~vec3<u32>(u_input.d.x, u_input.d.x, u_input.a) % vec3<u32>(32u))), u_input.b.x, Struct_2(_wgslsmith_mult_u32(~func_3(u_input.b.x), ~4294967295u), vec2<u32>(select(1u, _wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(40333u, u_input.d.x)), true), u_input.a), vec3<i32>(u_input.e, 0i >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(8158i, u_input.c.x))) ^ select(~vec3<i32>(u_input.c.x, u_input.b.x, 2147483647i), -vec3<i32>(u_input.e, u_input.b.x, u_input.c.x), true)), Struct_2(_wgslsmith_add_u32(~u_input.a, 77204u) << (4294967295u % 32u), ~(~u_input.d.xz) & ~u_input.d.yz, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(3235i, 18056i, 0i) | vec3<i32>(-2709i, u_input.e, -2147483647i), -vec3<i32>(u_input.b.x, -41317i, -22201i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.e), u_input.c), ~(-u_input.c.x))));
    var var_2 = true;
    let var_3 = select(reverseBits(firstLeadingBit(vec2<u32>(u_input.d.x, 4294967295u)) | vec2<u32>(4294967295u, 0u)) << (u_input.d.yx % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(21490u, 10835u), var_1.c.a | u_input.d.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_1.d.b.x, 11802u), u_input.d.yy ^ var_1.d.b)), u_input.a), false);
    var var_4 = Struct_4(var_1, var_1.d, vec4<u32>(select(min(var_1.c.b.x, ~u_input.d.x), abs(var_1.c.b.x), var_1.a.a.x), _wgslsmith_mult_u32(reverseBits(var_3.x), ~0u), _wgslsmith_div_u32(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.yy, vec2<u32>(17140u, u_input.a)), abs(vec2<u32>(var_3.x, 13392u)))), min(8644u, min(reverseBits(u_input.a), var_1.d.b.x ^ 59482u))));
    var_0 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(firstTrailingBit(0i), -1i, -22020i), ~1i, vec2<u32>(48556u, var_3.x), vec2<u32>(~(~u_input.d.x), ~1u));
}

