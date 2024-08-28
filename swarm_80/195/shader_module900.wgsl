struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = -819f;
    var_0 = arg_0.a.b.x;
    var var_1 = 4294967295u;
    let var_2 = vec2<bool>(true | select(any(vec2<bool>(true, false)), false, true), true);
    var_0 = arg_0.a.b.x;
    return ~arg_0.c;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_1 = ~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, ~56990u), ~u_input.a.x);
    var var_2 = !vec4<bool>(select(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), !(!any(vec2<bool>(true, true))), !all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), all(vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, true)));
    var var_3 = var_2.x;
    let var_4 = vec4<i32>(-reverseBits(_wgslsmith_add_i32(-2147483647i, 1i)), ~0i, -2147483647i, ~_wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-2147483647i, -1i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-1i, -9580i)), vec2<i32>(1i, 1i))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.x, -1273f)), _wgslsmith_f_op_f32(max(145f, -559f)))))))) + -868f);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec3_i32(firstTrailingBit(min(-vec3<i32>(-2147483647i, arg_1, arg_1), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(24530i, 0i, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1, arg_1, 1576i), vec3<i32>(27856i, 1i, arg_1))))), firstLeadingBit(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, arg_1, -2147483647i), vec3<i32>(arg_1, 2147483647i, arg_1), vec3<i32>(arg_1, -2147483647i, 2147483647i)) ^ abs(vec3<i32>(-2952i, -36294i, 1i)))));
    let var_1 = Struct_3(~(~1311u), true, vec3<i32>(_wgslsmith_clamp_i32(11989i, ~(var_0.x >> (u_input.a.x % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, arg_1, var_0.x, -46996i), vec4<i32>(arg_1, arg_1, arg_1, -1i)), max(vec4<i32>(arg_1, 0i, arg_1, arg_1), vec4<i32>(2147483647i, -1i, arg_1, arg_1)))), -1i ^ _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(38039i, 2147483647i, arg_1, 2147483647i), vec4<i32>(var_0.x, var_0.x, arg_1, 1i), vec4<i32>(var_0.x, 2147483647i, var_0.x, arg_1)), reverseBits(vec4<i32>(var_0.x, arg_1, var_0.x, var_0.x))), arg_1));
    var var_2 = Struct_3(_wgslsmith_mult_u32(4294967295u, 0u), !(!var_1.b), var_0);
    var_2 = var_1;
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, 34184u, 1u) << (u_input.a.zxw % vec3<u32>(32u)), u_input.a.yyz)), 1u);
    return Struct_2(Struct_1(vec2<u32>(func_1(Struct_2(Struct_1(vec2<u32>(4294967295u, 1231u), vec3<f32>(-359f, 1000f, arg_2), vec4<i32>(-1i, -2147483647i, -2147483647i, -11435i), var_2.c.x), vec2<i32>(17597i, var_2.c.x), 99424u, Struct_1(vec2<u32>(40215u, 4294967295u), vec3<f32>(-1010f, 1000f, arg_2), vec4<i32>(var_2.c.x, 2147483647i, var_2.c.x, -27454i), -39574i), arg_2), min(-21651i, var_1.c.x)), ~_wgslsmith_add_u32(15499u, arg_0)), vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1075f, arg_2)) * _wgslsmith_f_op_f32(round(-488f))), -321f), vec4<i32>(-45524i, 40563i & arg_1, -var_1.c.x, _wgslsmith_dot_vec2_i32(var_2.c.zz, vec2<i32>(var_1.c.x, var_1.c.x))) ^ firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.x, var_2.c.x, -21325i, 2147483647i), vec4<i32>(-2147483647i, arg_1, var_1.c.x, var_1.c.x))), _wgslsmith_dot_vec2_i32(-var_0.zy, var_1.c.xz)), vec2<i32>(_wgslsmith_clamp_i32(-var_1.c.x, -8483i, -52120i), -(-var_0.x & 47897i)), 1u, Struct_1(~_wgslsmith_mult_vec2_u32(u_input.a.yy, vec2<u32>(4294967295u, u_input.a.x)) >> (u_input.a.zz % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, -445f, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 966f, 1193f))))), (vec4<i32>(-1i) * -vec4<i32>(-1i, -1i, var_2.c.x, var_0.x)) << (u_input.a % vec4<u32>(32u)), -10825i), -1028f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -25865i), vec2<i32>(-2147483647i, 1i)), vec2<i32>(2073i, ~(-3569i))), vec2<i32>(_wgslsmith_div_i32(25534i, 52802i) >> (_wgslsmith_sub_u32(u_input.a.x, 27473u) % 32u), abs(41205i)));
    let var_1 = func_2(_wgslsmith_div_u32(0u, func_1(Struct_2(Struct_1(u_input.a.xy, vec3<f32>(308f, -1941f, 800f), vec4<i32>(18245i, 8154i, 32832i, 0i), -51876i), -vec2<i32>(-1i, -2147483647i), 0u, Struct_1(u_input.a.wz, vec3<f32>(-1929f, -1000f, -1895f), vec4<i32>(-1i, -9314i, -8769i, 2147483647i), 2147483647i), -377f), 1i)), -5440i, 287f);
    var var_2 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), all(vec3<bool>(true, false, true))), !select(false, true, false))));
    var_2 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true))) && (~(~countOneBits(var_1.c)) < u_input.a.x);
    var_2 = false;
    var var_3 = abs(4294967295u);
    let var_4 = any(!select(vec4<bool>(select(true, false, false), all(vec3<bool>(false, false, true)), true, var_1.a.d <= var_1.d.d), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), true), !any(vec2<bool>(true, true))));
    let var_5 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.b.x), var_5.b.x, 416f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_5.b)), func_2(var_1.d.a.x, 2147483647i, var_5.b.x).d.b))), firstTrailingBit(vec3<i32>(var_5.c.x, firstLeadingBit(~var_5.d), -18047i)), -1081f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b.x)), 0i);
}

