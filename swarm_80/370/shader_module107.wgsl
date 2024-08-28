struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    let var_0 = ~vec3<u32>(~arg_1.x >> (arg_0.d.x % 32u), _wgslsmith_mult_u32(~1u, 0u), arg_0.d.x);
    var var_1 = 4294967295u & ~select(4294967295u, _wgslsmith_dot_vec2_u32(arg_0.d.wz, ~vec2<u32>(11713u, u_input.a)), arg_0.e.x);
    var var_2 = false;
    var_2 = !(_wgslsmith_div_u32(0u, _wgslsmith_add_u32(arg_1.x, u_input.a << (arg_1.x % 32u))) > _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, ~6082u, 0u), _wgslsmith_add_vec3_u32(~vec3<u32>(62308u, var_0.x, u_input.b.x), firstTrailingBit(u_input.b.wyz))));
    let var_3 = vec3<bool>(false, arg_0.e.x, any(vec4<bool>((arg_0.e.x | true) && arg_0.e.x, false, all(select(vec3<bool>(arg_0.e.x, arg_0.e.x, arg_0.e.x), vec3<bool>(false, arg_0.e.x, false), vec3<bool>(arg_0.e.x, true, false))), all(vec4<bool>(false, arg_0.e.x, true, arg_0.e.x)))));
    return var_3.x;
}

fn func_2() -> bool {
    var var_0 = Struct_3(true, select(select(vec2<bool>(true, select(true, true, true)), vec2<bool>(true, true), vec2<bool>(true, func_3(Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), 1393f, -795f, u_input.b, vec2<bool>(true, true)), vec2<u32>(u_input.a, 22980u)))), !vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(false, true)), u_input.b.zx, u_input.b.x);
    var var_1 = vec2<u32>(_wgslsmith_div_u32(~var_0.d, var_0.d), ~abs(~(~4294967295u)));
    var var_2 = ~u_input.b;
    var var_3 = var_0.b.x;
    var_2 = firstTrailingBit(~u_input.b) | u_input.b;
    return func_3(Struct_1(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) << (vec4<u32>(u_input.a, var_2.x, 4294967295u, var_1.x) % vec4<u32>(32u)), -vec4<i32>(u_input.c, -33455i, u_input.c, -75398i), !vec4<bool>(var_0.b.x, var_0.a, var_0.a, false)), firstLeadingBit(vec4<i32>(u_input.c, u_input.c, -1i, u_input.c)) ^ vec4<i32>(-4689i, u_input.c, 2147483647i, -22447i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-485f)), _wgslsmith_f_op_f32(344f - 2764f), var_0.b.x != var_0.b.x))), 1663f, _wgslsmith_mod_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, var_2.x, var_0.d, 1u), vec4<u32>(var_1.x, var_0.c.x, var_0.d, var_2.x)), vec4<u32>(var_2.x, var_2.x, 45649u, 6212u) >> (vec4<u32>(var_2.x, var_0.d, var_2.x, 3863u) % vec4<u32>(32u))), abs(vec4<u32>(0u, 4294967295u, var_2.x, 4294967295u) >> (u_input.b % vec4<u32>(32u)))), select(vec2<bool>(false, !var_0.b.x), var_0.b, !(!vec2<bool>(var_0.a, true)))), var_0.c);
}

fn func_4(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.c, 1i)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c), vec2<bool>(arg_0, false)), vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))), u_input.c < ~u_input.c), ~reverseBits(~vec2<i32>(u_input.c, u_input.c))), firstLeadingBit(-select(vec2<i32>(13361i, 1i) << (vec2<u32>(12131u, u_input.b.x) % vec2<u32>(32u)), vec2<i32>(u_input.c, u_input.c), false)));
    let var_1 = Struct_3(1i < _wgslsmith_mult_i32(-1i, abs(_wgslsmith_sub_i32(0i, u_input.c))), !select(vec2<bool>(true, !arg_0), vec2<bool>(true, true), false), abs(abs(vec2<u32>(min(80160u, u_input.a), _wgslsmith_mod_u32(u_input.a, 40372u)))), 6358u);
    var var_2 = all(vec4<bool>(arg_0, func_2(), !any(vec4<bool>(arg_0, var_1.b.x, arg_0, arg_0)), func_3(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-10308i, u_input.c, 1i, var_0.x), vec4<i32>(var_0.x, 1i, 1i, -2147483647i)), -1652f, _wgslsmith_f_op_f32(step(1787f, -1000f)), vec4<u32>(var_1.d, var_1.c.x, var_1.c.x, u_input.a), !var_1.b), min(~vec2<u32>(u_input.a, var_1.c.x), ~vec2<u32>(u_input.a, var_1.d)))));
    var var_3 = Struct_2(Struct_1(~vec4<i32>(-29672i, 1i, _wgslsmith_mult_i32(u_input.c, -1i), i32(-1i) * -36058i), _wgslsmith_f_op_f32(abs(-176f)), -292f, vec4<u32>(4294967295u, ~u_input.b.x, _wgslsmith_div_u32(4294967295u, 70471u & u_input.a), 4294967295u), !select(vec2<bool>(false, true), vec2<bool>(false, var_1.a), var_1.b)), Struct_1(-(~(-vec4<i32>(var_0.x, u_input.c, u_input.c, 2047i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1589f * 607f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-322f)))))), vec4<u32>(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.a, 41456u, var_1.c.x), vec2<bool>(10846u == (95764u & var_1.d), any(!vec3<bool>(arg_0, var_1.a, false)))));
    var_2 = true;
    return Struct_1(var_3.b.a, -204f, var_3.a.c, ~(~(~select(vec4<u32>(var_3.a.d.x, var_3.a.d.x, u_input.a, 0u), vec4<u32>(var_1.c.x, var_1.d, 0u, var_3.b.d.x), vec4<bool>(var_1.b.x, var_3.a.e.x, false, arg_0)))), !(!select(var_3.a.e, !var_3.b.e, all(var_3.b.e))));
}

fn func_1() -> Struct_2 {
    var var_0 = (false & all(vec3<bool>(any(vec3<bool>(true, false, false)), false, false))) && true;
    var_0 = true;
    var var_1 = _wgslsmith_add_vec4_i32((vec4<i32>(19045i, 1i, 0i, -12309i) ^ -(vec4<i32>(-27231i, 1i, u_input.c, u_input.c) ^ vec4<i32>(u_input.c, -1i, -49870i, -48644i))) & _wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, -45781i, u_input.c, -56496i) ^ max(vec4<i32>(11302i, -64947i, 1i, u_input.c), vec4<i32>(u_input.c, -1i, 2147483647i, -22597i)), _wgslsmith_mult_vec4_i32(vec4<i32>(2897i, -1i, 32400i, u_input.c), abs(vec4<i32>(-1i, 2147483647i, 61194i, 1472i)))), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c, abs(u_input.c), _wgslsmith_mult_i32(u_input.c, 41626i), u_input.c), max(vec4<i32>(abs(u_input.c), abs(1i), 1i << (1u % 32u), -u_input.c), reverseBits(min(vec4<i32>(u_input.c, 2147483647i, 25073i, u_input.c), vec4<i32>(2147483647i, u_input.c, 0i, 10975i))))));
    var_0 = true;
    let var_2 = var_1.yy;
    return Struct_2(func_4(func_2() | (var_1.x == 69158i)), func_4(true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!(all(vec2<bool>(true, true)) && all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))), vec2<bool>(true, false), u_input.b.xz, u_input.a);
    var var_1 = func_1();
    var_1 = func_1();
    var_1 = Struct_2(var_1.a, var_1.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.c, 320f, _wgslsmith_f_op_f32(floor(1196f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b.b, var_1.a.c, var_1.b.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c, -178f, 1904f))), !(!vec3<bool>(var_0.b.x, false, false)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.b, _wgslsmith_f_op_f32(-var_1.a.b), var_1.b.c)))), vec3<f32>(var_1.b.b, _wgslsmith_f_op_f32(-var_1.a.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.c, 301f) - 1f))));
    let var_3 = -_wgslsmith_mod_i32(-1i, var_1.b.a.x) << (~firstLeadingBit(u_input.b.x & func_4(var_0.a).d.x) % 32u);
    var var_4 = ~vec4<i32>(-(~var_3), ~_wgslsmith_div_i32(-1i, -2147483647i), countOneBits(var_3), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_1.b.a, -vec4<i32>(-16118i, u_input.c, var_3, 37055i)), ~var_3));
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(var_1.b.d.x, 74472u, 4294967295u, ~var_0.d | 4294967295u)), firstLeadingBit(u_input.b), var_2.xz);
}

