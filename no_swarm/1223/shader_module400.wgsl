struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 17805i, 55165i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = Struct_2(true, Struct_1(countOneBits(17731i), vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(u_input.a)), !vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), any(vec3<bool>(false, true, true)), true, false));
    var_0 = Struct_2(var_0.a, var_0.b, select(!select(var_0.c, select(var_0.c, vec4<bool>(false, var_0.a, true, false), vec4<bool>(var_0.c.x, false, var_0.c.x, true)), false), var_0.c, all(!var_0.c.xxy) | (var_0.c.x & true)));
    global0 = -_wgslsmith_clamp_vec3_i32(-(vec3<i32>(1i, var_0.b.c.x, u_input.a.x) << (var_0.b.b.wyy % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(var_0.b.c.wxx, var_0.b.c.wxy) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, var_0.b.a), vec3<i32>(40272i, -2147483647i, global0.x)), select(-u_input.a.zwz, min(u_input.a.zzz, var_0.b.c.wxw), var_0.c.xyz)) & -(-u_input.a.wzz & u_input.a.zzz);
    global0 = ~var_0.b.c.wyw;
    global0 = firstTrailingBit(u_input.a.yzz);
    return ~4294967295u;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> vec4<i32> {
    var var_0 = ~(~abs(~firstTrailingBit(arg_2)));
    var_0 = select(func_3(), arg_2, select(true, false, any(arg_0.yy)));
    var var_1 = arg_1.a.x;
    var var_2 = 1000f;
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-(-arg_1.b.x | -3928i), 4076i, abs(arg_1.e.c.x)), vec3<i32>(u_input.a.x, countOneBits(0i) & ~(-global0.x), arg_1.e.a), abs(arg_1.b.xzx));
    return _wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, var_3.x << (func_3() % 32u), _wgslsmith_dot_vec2_i32(global0.xx & vec2<i32>(global0.x, arg_1.d.b.a), ~u_input.a.zx), u_input.a.x), u_input.a);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32((~(~u_input.a) | (~vec4<i32>(33781i, global0.x, 52321i, 25586i) | func_2(vec3<bool>(false, true, false), Struct_3(vec2<bool>(true, false), vec4<i32>(42593i, global0.x, global0.x, -10284i), vec3<bool>(false, true, true), Struct_2(true, Struct_1(-32007i, vec4<u32>(0u, 4294967295u, 50190u, 6295u), u_input.a), vec4<bool>(true, false, false, false)), Struct_1(u_input.a.x, vec4<u32>(1u, 1u, 30687u, 21715u), vec4<i32>(-10046i, u_input.a.x, global0.x, 41590i))), 1u))) & vec4<i32>(-1i, -2147483647i, select(global0.x, -global0.x, true), _wgslsmith_mod_i32(-14215i, _wgslsmith_mult_i32(global0.x, 3069i))), u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1045f, -2896f, -1801f, 570f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 660f, 329f, -1038f), vec4<f32>(-1584f, 818f, -247f, -776f))))))));
    var var_2 = u_input.a;
    let var_3 = -(-(~(~var_2.wyw)) | vec3<i32>(-min(global0.x, -39640i), abs(firstTrailingBit(0i)), var_2.x));
    let var_4 = Struct_2(!all(vec4<bool>(true, true, true, true)), Struct_1(-2147483647i, _wgslsmith_mod_vec4_u32(max(vec4<u32>(4294967295u, 4294967295u, 0u, 7751u), vec4<u32>(21489u, 0u, 0u, 59u)), vec4<u32>(1u, 1u, 1u, 1u)), -(~vec4<i32>(5508i, var_3.x, var_3.x, 2147483647i))), vec4<bool>(false, all(vec3<bool>(false, select(false, true, true), true)), any(vec2<bool>(true, true)) && true, true));
    return ~var_3.x ^ countOneBits(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 140f;
    let var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(func_1(), _wgslsmith_mult_i32(59059i, -3251i ^ u_input.a.x)), ~(-2147483647i));
    let var_2 = ~abs(min(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(0u, 11342u)), ~vec2<u32>(67921u, 30367u))));
    var var_3 = _wgslsmith_f_op_f32(step(-354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(740f, 903f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-160f))))));
    let var_4 = true;
    let var_5 = _wgslsmith_mult_u32(2511u, select(var_2.x >> (0u % 32u), _wgslsmith_mult_u32(~var_2.x, ~var_2.x << (~11329u % 32u)), all(vec2<bool>(true, true)) || select(true, !var_4, var_4)));
    let var_6 = -(_wgslsmith_mod_vec3_i32(-abs(vec3<i32>(var_1, -2147483647i, global0.x)), u_input.a.zxz) >> (~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(69805u, 75480u, 4294967295u), vec3<u32>(var_2.x, var_5, 46040u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_5, 81636u), vec3<u32>(1u, 20728u, 28625u)), vec3<u32>(1u, 4294967295u, var_2.x)) % vec3<u32>(32u)));
    let var_7 = var_2;
    global0 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -u_input.a.zwx, abs(firstTrailingBit(u_input.a.wzz)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_7.x, var_5, var_2.x), vec4<u32>(var_5, var_2.x, var_2.x, var_7.x)), reverseBits(vec4<u32>(15668u, 4294967295u, 1u, 0u))), vec4<u32>(~145280u, var_5, 5544u, var_2.x))), vec4<u32>(var_5, ~var_7.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_7.x, var_5 ^ var_2.x, var_7.x, _wgslsmith_dot_vec2_u32(var_2, var_7)), vec4<u32>(var_7.x, ~var_7.x, 0u, 31998u)), ~abs(reverseBits(4294967295u))));
}

