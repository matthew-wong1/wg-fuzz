struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<u32> {
    global0 = array<Struct_1, 14>();
    var var_0 = 4294967295u;
    let var_1 = all(vec4<bool>(false, !any(vec2<bool>(true, false)), true, true));
    return u_input.e.zxz;
}

fn func_2() -> vec3<i32> {
    var var_0 = u_input.e.x;
    var var_1 = Struct_1(global1.a << (~u_input.e % vec4<u32>(32u)), u_input.c, func_3(), vec3<i32>(1i, 1i, -global1.a.x));
    var var_2 = Struct_1(_wgslsmith_add_vec4_i32(min(global1.a, ~(var_1.a << (vec4<u32>(global1.c.x, global1.c.x, global1.c.x, u_input.e.x) % vec4<u32>(32u)))), firstTrailingBit(firstLeadingBit(~var_1.a))), _wgslsmith_dot_vec4_i32(max(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(global1.a, vec4<i32>(-6256i, var_1.d.x, global1.d.x, -17890i)), global1.a), var_1.a), countOneBits(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 25772i, 1i), vec4<i32>(74127i, global1.a.x, global1.b, var_1.b))))), firstTrailingBit(vec3<u32>(reverseBits(4294967295u), ~(~1536u), _wgslsmith_sub_u32(~4294967295u, var_1.c.x))), _wgslsmith_sub_vec3_i32(select(~(vec3<i32>(u_input.c, 36516i, u_input.d.x) ^ vec3<i32>(global1.b, global1.b, 39890i)), firstTrailingBit(vec3<i32>(var_1.a.x, 29253i, -7348i) & vec3<i32>(global1.d.x, global1.a.x, u_input.d.x)), (global1.c.x >> (6530u % 32u)) == u_input.b.x), firstLeadingBit(firstTrailingBit(var_1.a.wyy))));
    let var_3 = 33748u;
    let var_4 = _wgslsmith_add_i32(11364i, _wgslsmith_div_i32(~var_1.a.x, max(1i, -var_1.d.x)));
    return vec3<i32>(max(0i << (_wgslsmith_sub_u32(firstLeadingBit(var_3), _wgslsmith_dot_vec3_u32(var_1.c, var_2.c)) % 32u), _wgslsmith_div_i32(~min(-22863i, 13442i), -1i)), ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, ~23620i, _wgslsmith_sub_i32(-13616i, 0i)), var_4), -2147483647i);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(1i ^ global1.a.x, global1.b ^ 1i) | -1i, -global1.a.x, ~u_input.d.x, _wgslsmith_mult_i32(global1.b, reverseBits(-25546i)) << (u_input.e.x % 32u)), -1i, select(global1.c, vec3<u32>(arg_2.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.x, 0u), u_input.b.xz) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, global1.c), vec3<u32>(1u, 10406u, arg_2.x)), 0u), !vec3<bool>(true, all(vec3<bool>(false, false, false)), true)), ~func_2());
    let var_1 = Struct_2(Struct_1(vec4<i32>(var_0.a.x, 1760i, countOneBits(1i), u_input.c), var_0.a.x, u_input.e.yyw, abs((vec3<i32>(global1.a.x, 2147483647i, 0i) << (vec3<u32>(4294967295u, global1.c.x, 70074u) % vec3<u32>(32u))) | u_input.d)), u_input.d.x, true, select(_wgslsmith_add_vec3_i32(~vec3<i32>(var_0.d.x, u_input.c, var_0.b), u_input.d), -abs(vec3<i32>(global1.b, global1.b, -1i)), vec3<bool>(true, !all(vec3<bool>(false, false, true)), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_1.x, arg_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -142f, 1029f) + vec3<f32>(1188f, arg_0, arg_0)), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-945f, arg_0, arg_0) + vec3<f32>(arg_1.x, -689f, 529f)), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1122f - -330f), _wgslsmith_f_op_f32(arg_0 + arg_1.x), arg_0))));
    let var_2 = var_1;
    global0 = array<Struct_1, 14>();
    var var_3 = _wgslsmith_div_u32(min(~(arg_2.x >> (global1.c.x % 32u)) << (var_0.c.x % 32u), global1.c.x), countOneBits(var_2.a.c.x));
    return ~min(~countOneBits(_wgslsmith_mult_i32(17047i, var_1.d.x)), select(var_0.b, -2147483647i, var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(select(vec4<i32>(-1i, abs(-2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global1.a, global1.a, vec4<i32>(-2147483647i, -70862i, u_input.a, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global1.d.x, -2147483647i, 0i), vec4<i32>(u_input.a, -1i, global1.b, global1.b), global1.a)), ~(-4469i)), vec4<i32>(~(-1i) & global1.b, 23259i, global1.a.x, _wgslsmith_add_i32(func_1(696f, vec2<f32>(-447f, -670f), u_input.e), i32(-1i) * -34432i)), true), select(min(u_input.d.x, u_input.c & -65332i) & firstTrailingBit(func_1(512f, vec2<f32>(-880f, 1247f), vec4<u32>(26538u, 56903u, 4294967295u, u_input.b.x))), u_input.a, all(vec3<bool>(all(vec2<bool>(true, true)), false, true))), ~vec3<u32>(_wgslsmith_dot_vec2_u32(global1.c.yx, _wgslsmith_sub_vec2_u32(global1.c.xx, vec2<u32>(global1.c.x, 1u))), _wgslsmith_add_u32(41880u, global1.c.x) & 1u, global1.c.x), ~max(vec3<i32>(-1i) * -vec3<i32>(22299i, u_input.a, -46747i), global1.d));
    global1 = Struct_1(global1.a, global1.b, func_3(), firstLeadingBit(vec3<i32>(~u_input.a, -_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.a, -21929i, 2147483647i)), u_input.a)));
    var var_0 = vec3<bool>(all(vec3<bool>(true, !all(vec3<bool>(true, true, false)), all(vec2<bool>(true, true)))), ((u_input.d.x << (u_input.e.x % 32u)) ^ (firstTrailingBit(global1.a.x) & global1.a.x)) < (~global1.b >> (firstLeadingBit(18165u) % 32u)), !all(vec2<bool>(true, true)));
    var var_1 = Struct_2(Struct_1(vec4<i32>(-2147483647i, global1.a.x, select(func_2().x, max(u_input.a, global1.d.x), !var_0.x), -(~global1.d.x)), global1.d.x, abs(firstTrailingBit(firstLeadingBit(u_input.e.zxy))), ~u_input.d), global1.b, select(all(vec4<bool>(true, false, any(var_0.xz), all(vec4<bool>(true, var_0.x, var_0.x, true)))), var_0.x, var_0.x), global1.d, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1615f - 192f), 691f, _wgslsmith_f_op_f32(floor(-362f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(896f, 879f, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(238f, -1134f, 588f)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))))))));
    var_0 = select(select(select(vec3<bool>(true, var_1.e.x >= 358f, var_1.c), select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, var_0.x, true), true), all(vec2<bool>(var_1.c, false))), vec3<bool>(-282f >= _wgslsmith_f_op_f32(sign(var_1.e.x)), all(vec3<bool>(var_0.x, var_0.x, false)), 52485u != (global1.c.x | var_1.a.c.x)), !vec3<bool>(any(vec3<bool>(var_1.c, true, var_1.c)), false, var_0.x)), vec3<bool>(true, 1199f < _wgslsmith_f_op_f32(exp2(var_1.e.x)), true), true);
    var_0 = vec3<bool>(true, true, !((~1i >> (global1.c.x % 32u)) > global1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.c.zz, _wgslsmith_f_op_f32(-var_1.e.x), -u_input.c);
}

