struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: vec3<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_3(Struct_1(true, arg_1.b ^ ~_wgslsmith_add_vec4_u32(arg_1.b, arg_1.b), _wgslsmith_f_op_f32(arg_1.c + arg_1.c)), u_input.c.zy, -(~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-33136i, arg_0.x, arg_0.x), arg_0.xww), arg_0.yzy << (u_input.c % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -711f)));
    var_0 = Struct_3(arg_1, ~((vec2<u32>(63991u, 1u) ^ vec2<u32>(arg_1.b.x, u_input.b)) ^ u_input.c.zy), vec3<i32>(var_0.c.x, -19351i, _wgslsmith_div_i32(arg_0.x, abs(~0i))));
    let var_2 = Struct_3(Struct_1(arg_1.a, vec4<u32>(var_0.a.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(55602u, 36337u, 4294967295u) | vec3<u32>(arg_1.b.x, 9657u, 4294967295u), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(var_0.a.b.x, u_input.a, 4970u))), ~arg_1.b.x, _wgslsmith_clamp_u32(arg_1.b.x >> (48107u % 32u), countOneBits(u_input.c.x), firstTrailingBit(var_0.b.x))), 2436f), countOneBits(var_0.b), firstTrailingBit(-arg_0.xwx));
    let var_3 = firstLeadingBit(0i);
    return true;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_4) -> u32 {
    var var_0 = arg_2;
    var_0 = Struct_4(all(vec2<bool>(false, func_3(vec4<i32>(-2147483647i, var_0.e.c.x, -1i, 65677i), Struct_1(false, vec4<u32>(53122u, u_input.b, u_input.a, 4294967295u), 736f)))), firstLeadingBit(~vec2<u32>(min(var_0.b.x, var_0.b.x), ~6879u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(-arg_2.c)))), var_0.d, arg_2.e);
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-9164i & var_0.e.c.x, ~1i, 28106i << (u_input.c.x % 32u), var_0.e.c.x << (0u % 32u)), max(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-5173i, -2147483647i, var_0.e.c.x, var_0.e.c.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.e.c.x, -21676i, -2147483647i, var_0.e.c.x), vec4<i32>(2147483647i, var_0.e.c.x, -1i, 7267i), vec4<i32>(32174i, -2147483647i, 25186i, -2147483647i))), -(vec4<i32>(-46592i, var_0.e.c.x, 36736i, var_0.e.c.x) >> (var_0.e.a.b % vec4<u32>(32u))))), abs(vec4<i32>(2147483647i, _wgslsmith_div_i32(22933i, arg_2.e.c.x), -9102i, i32(-1i) * -8056i)) ^ _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(-9437i, arg_2.e.c.x, 1i, 2147483647i), vec4<i32>(0i, -2147483647i, arg_2.e.c.x, 1i), true), vec4<i32>(33631i, 17724i, var_0.e.c.x, var_0.e.c.x)), reverseBits(~vec4<i32>(0i, 1i, -22047i, 46366i))));
    var var_2 = firstTrailingBit(var_0.e.a.b.wzy);
    let var_3 = select(select(vec3<i32>(35977i, -3652i, arg_2.e.c.x) | (var_0.e.c | arg_2.e.c), max(arg_2.e.c, vec3<i32>(var_0.e.c.x, 44401i, arg_2.e.c.x)) | vec3<i32>(var_0.e.c.x, var_0.e.c.x, var_0.e.c.x), !vec3<bool>(arg_0, arg_0, true)), -max(countOneBits(arg_2.e.c), ~var_0.e.c), true) & vec3<i32>(select(-4076i, arg_2.e.c.x, arg_2.e.a.a), _wgslsmith_clamp_i32(arg_2.e.c.x >> (u_input.a % 32u), var_0.e.c.x, 20213i) >> (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(13505u, u_input.a, arg_1, 0u), vec4<u32>(57504u, var_2.x, var_2.x, 0u))) % 32u), abs(_wgslsmith_sub_i32(arg_2.e.c.x, var_0.e.c.x) | arg_2.e.c.x));
    return ~(~(arg_1 >> (select(min(arg_1, u_input.c.x), 4294967295u, false) % 32u)));
}

fn func_1() -> Struct_4 {
    let var_0 = 1209f;
    let var_1 = ~vec3<u32>(firstTrailingBit(128883u), u_input.a, func_2(select(false, false, true), ~u_input.a, Struct_4(true, u_input.c.xx, var_0, vec3<bool>(true, true, false), Struct_3(Struct_1(false, vec4<u32>(u_input.a, 0u, u_input.c.x, 44275u), var_0), vec2<u32>(u_input.a, u_input.c.x), vec3<i32>(2056i, 1i, -32236i))))) << (~u_input.c % vec3<u32>(32u));
    var var_2 = vec2<u32>(~98493u, max(20664u, _wgslsmith_add_u32(51153u, u_input.b)));
    var_2 = u_input.c.zy << (max(min(min(var_1.yz, abs(vec2<u32>(var_1.x, 121929u))), ~u_input.c.zx << (var_1.xx % vec2<u32>(32u))), select(var_1.zx, vec2<u32>(var_1.x, var_1.x) << (var_1.zx % vec2<u32>(32u)), vec2<bool>(true, true)) ^ countOneBits(vec2<u32>(var_2.x, var_2.x))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) - 394f);
    return Struct_4(all(select(vec3<bool>(false, any(vec4<bool>(true, true, false, true)), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), u_input.c.xz, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2172f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3, -802f, false)), var_3)) - 742f), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), Struct_3(Struct_1(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true)), max(vec4<u32>(0u, 1u, u_input.b, u_input.c.x), vec4<u32>(u_input.b, 4294967295u, var_2.x, 1u)) & vec4<u32>(7869u, 0u, 41303u, u_input.b), _wgslsmith_f_op_f32(floor(956f))), vec2<u32>((var_2.x & 1u) >> (_wgslsmith_sub_u32(u_input.b, 42088u) % 32u), min(58814u, var_1.x ^ var_2.x)), vec3<i32>(-1i) * -(~vec3<i32>(70139i, -2147483647i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 6340u;
    let var_1 = func_1();
    let var_2 = countOneBits(select(abs(~abs(vec4<u32>(var_1.b.x, var_1.e.b.x, 0u, 4294967295u))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, u_input.b), ~0u), _wgslsmith_mod_u32(4294967295u, var_0) & 1u, countOneBits(abs(1u)), _wgslsmith_mult_u32(var_0, 1u)), vec4<bool>(var_1.e.a.a, true, false, true)));
    let var_3 = var_1.e.c;
    var var_4 = Struct_2(~var_1.b.x, select(select(!select(vec4<bool>(true, var_1.e.a.a, true, false), vec4<bool>(false, var_1.e.a.a, var_1.e.a.a, var_1.d.x), var_1.d.x), !(!vec4<bool>(var_1.a, var_1.a, var_1.d.x, var_1.a)), !(!var_1.a)), !vec4<bool>(false, var_1.d.x, select(false, var_1.a, var_1.a), var_1.e.c.x >= var_1.e.c.x), select(!vec4<bool>(var_1.a, false, true, var_1.e.a.a), select(select(vec4<bool>(false, false, var_1.a, var_1.a), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), !vec4<bool>(var_1.e.a.a, true, var_1.e.a.a, var_1.a), func_3(vec4<i32>(var_1.e.c.x, var_1.e.c.x, var_1.e.c.x, 1i), var_1.e.a)), !vec4<bool>(var_1.a, var_1.e.a.a, true, false))), u_input.c.zx);
    var var_5 = Struct_4(any(vec3<bool>(any(vec3<bool>(var_4.b.x, true, var_1.d.x)), true, !(!var_4.b.x))), select(var_2.zx, vec2<u32>(var_4.a, var_2.x), select(select(vec2<bool>(var_4.b.x, var_1.d.x), var_4.b.wz, !vec2<bool>(var_4.b.x, false)), !func_1().d.yy, !var_1.a && var_1.a)), _wgslsmith_f_op_f32(-var_1.c), !(!select(vec3<bool>(false, false, var_4.b.x), !vec3<bool>(var_1.e.a.a, true, var_1.d.x), vec3<bool>(var_1.d.x, var_1.e.a.a, false))), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(~max(func_1().b.x, ~min(var_4.c.x, var_4.c.x)), _wgslsmith_f_op_f32(-var_1.c));
}

