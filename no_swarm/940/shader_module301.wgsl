struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(Struct_2(max(vec4<i32>(u_input.c, 16543i, 1i, -27309i) | abs(vec4<i32>(2147483647i, 220i, u_input.c, u_input.c)), abs(-vec4<i32>(u_input.c, 25117i, -1i, u_input.c))), vec3<u32>(43461u, u_input.b, max(4294967295u, u_input.d.x)) << (reverseBits(max(vec3<u32>(30929u, 35612u, u_input.d.x), vec3<u32>(44607u, 1u, u_input.e.x))) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1520f)) - _wgslsmith_f_op_f32(-1000f + -1000f))), vec4<i32>(-18888i, -2147483647i, 1i, _wgslsmith_sub_i32(46726i, u_input.c) << ((u_input.b << (u_input.d.x % 32u)) % 32u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2893f), _wgslsmith_f_op_f32(sign(1622f))), 1504f)))));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))));
    var var_3 = Struct_1(var_0.c, ~vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(u_input.c), 2147483647i), -2147483647i, abs(21633i) ^ -u_input.c, ~_wgslsmith_mod_i32(var_0.a.a.x, u_input.c)));
    var var_4 = var_0.a.b.x;
    return 0i;
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = false;
    var var_1 = Struct_4(u_input.c);
    var_1 = Struct_4(_wgslsmith_div_i32(func_3(), u_input.c >> ((~u_input.a << (11934u % 32u)) % 32u)));
    var_1 = Struct_4(16923i);
    var var_2 = Struct_1(143f, -_wgslsmith_clamp_vec4_i32((vec4<i32>(-43885i, var_1.a, 0i, -7876i) | vec4<i32>(-2147483647i, var_1.a, u_input.c, var_1.a)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d.x, 17947u, u_input.e.x), vec4<u32>(38487u, u_input.a, 69723u, u_input.b)) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a, var_1.a, var_1.a, u_input.c), vec4<i32>(u_input.c, 9577i, 70488i, -324i)), firstLeadingBit(vec4<i32>(u_input.c, u_input.c, 2147483647i, 21966i)), !vec4<bool>(var_0, var_0, true, var_0)), firstLeadingBit(~vec4<i32>(u_input.c, u_input.c, var_1.a, 30017i))));
    return Struct_3(Struct_2(var_2.b, abs(abs(~vec3<u32>(u_input.b, 80119u, 4294967295u)))), Struct_1(_wgslsmith_div_f32(var_2.a, -1000f), vec4<i32>(min(var_1.a >> (36532u % 32u), 1i), ~1i, var_1.a, var_1.a)), 301f);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>) -> i32 {
    var var_0 = arg_1.a;
    let var_1 = func_2(arg_2.xw).a;
    let var_2 = arg_1.b;
    var var_3 = -vec2<i32>(var_2.b.x, _wgslsmith_add_i32(var_2.b.x, 22364i));
    let var_4 = var_0.a.zzz;
    return func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(floor(-1259f)))))).b.b.x;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec4<i32> {
    let var_0 = select(!select(arg_2.zw, vec2<bool>(arg_1.x, true), (u_input.c >= -2147483647i) | true), arg_2.xx, all(vec4<bool>(!all(vec4<bool>(arg_1.x, false, false, true)), !arg_1.x, true, any(arg_2.yxx))));
    return -_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -14568i, u_input.c, _wgslsmith_mult_i32(u_input.c, 16923i)), vec4<i32>(u_input.c, u_input.c | u_input.c, 1i, u_input.c)), vec4<i32>(u_input.c, u_input.c, 1i, func_4(-1159f, func_2(vec2<f32>(1365f, arg_0)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, arg_0, 1821f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c | -34931i, _wgslsmith_clamp_i32(-41273i, 27577i, u_input.c), -u_input.c, u_input.c), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c, -1i, u_input.c, 1i)), vec4<i32>(-25732i, u_input.c, u_input.c, 2147483647i), min(vec4<i32>(u_input.c, u_input.c, 16503i, u_input.c), vec4<i32>(11886i, 0i, 1i, u_input.c)))));
    var_0 = _wgslsmith_clamp_vec4_i32(reverseBits(min(max(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, u_input.c, u_input.c, u_input.c), vec4<i32>(-1i, 44102i, 1i, 1i)), vec4<i32>(44293i, 2147483647i, u_input.c, u_input.c)), func_1(-409f, vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)))), abs(-_wgslsmith_add_vec4_i32(vec4<i32>(37979i, var_0.x, u_input.c, 1i), vec4<i32>(u_input.c, 12924i, var_0.x, 2147483647i))) << (~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 0u, u_input.a, u_input.b), vec4<u32>(1u, u_input.b, 72519u, 4294967295u)), min(vec4<u32>(87818u, u_input.e.x, u_input.d.x, 65328u), vec4<u32>(u_input.a, u_input.e.x, 4294967295u, 71883u))) % vec4<u32>(32u)), func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-814f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-702f, -625f))))).b.b);
    var var_1 = Struct_4(var_0.x);
    let var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_0.x, 58263i, var_1.a), firstLeadingBit(u_input.c), var_0.x), vec3<i32>(u_input.c, _wgslsmith_clamp_i32(1i, -24080i, var_0.x), -1i)) | (~(-vec3<i32>(0i, -2147483647i, 1i)) | reverseBits(vec3<i32>(var_0.x, u_input.c, u_input.c))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.xw, vec2<i32>(-1i, -14913i)), firstTrailingBit(-var_0.x)), 2147483647i, _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(var_0.wwx, var_0.wzy)), _wgslsmith_clamp_vec3_i32(var_0.xyx, abs(var_0.yww), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 3127i, 2147483647i), var_0.zyw)))));
    var var_3 = ~min(~(~(u_input.b ^ 15241u)), _wgslsmith_mod_u32(u_input.e.x, firstLeadingBit(_wgslsmith_div_u32(1u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, _wgslsmith_sub_u32(3712u, _wgslsmith_mod_u32(4294967295u, u_input.e.x) << (~56942u % 32u)), u_input.d.x, 0u));
}

