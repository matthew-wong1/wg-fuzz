struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1682f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, arg_3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f))))));
    var var_1 = Struct_3(1u);
    var var_2 = vec2<u32>(0u, 43727u);
    var_1 = Struct_3(_wgslsmith_add_u32(_wgslsmith_add_u32(var_2.x, ~min(arg_2.a.x, var_2.x)), var_1.a));
    var var_3 = min(vec2<u32>(4294967295u << (_wgslsmith_add_u32(0u, var_2.x) % 32u), 936u), vec2<u32>(4294967295u >> (arg_2.a.x % 32u), u_input.a.x));
    return var_3.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(arg_2.a.a, _wgslsmith_f_op_f32(-arg_3.a.b), arg_0.xy), ~abs(39419u));
    let var_1 = _wgslsmith_clamp_i32(arg_2.a.c.x, _wgslsmith_add_i32(abs(var_0.a.c.x | arg_3.a.c.x), reverseBits(firstLeadingBit(arg_2.a.c.x))), _wgslsmith_mult_i32(i32(-1i) * -arg_0.x, 28564i & _wgslsmith_dot_vec4_i32(vec4<i32>(2511i, -2147483647i, arg_0.x, arg_0.x) << (vec4<u32>(arg_2.a.a.x, 4294967295u, 69624u, var_0.b) % vec4<u32>(32u)), -vec4<i32>(-55819i, arg_0.x, 31024i, var_0.a.c.x))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(27047u, u_input.a.x, 4947u, 33787u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_2.b, arg_2.b, arg_3.a.a.x) << (vec4<u32>(arg_2.a.a.x, arg_3.a.a.x, arg_2.b, 67941u) % vec4<u32>(32u)), ~arg_3.a.a), var_0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -697f), -countOneBits(arg_2.a.c ^ u_input.d)), _wgslsmith_div_u32(~1u, firstLeadingBit(select(arg_2.a.a.x, arg_3.b & arg_3.b, any(vec2<bool>(false, false))))));
    var_0 = Struct_2(arg_3.a, ~56256u);
    let var_3 = arg_2.a.c.x;
    return vec2<u32>(_wgslsmith_mult_u32(1602u, 0u), min(reverseBits(countOneBits(44355u)) & ~_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(var_2.a.a.x, 1u)), func_3(vec4<i32>(countOneBits(-10068i), countOneBits(arg_3.a.c.x), 1i, arg_0.x), select(vec2<bool>(false, false), vec2<bool>(true, true), false), Struct_1(vec4<u32>(arg_2.a.a.x, var_0.b, var_0.b, var_2.b), _wgslsmith_f_op_f32(-var_0.a.b), -var_0.a.c), vec3<f32>(_wgslsmith_f_op_f32(select(arg_3.a.b, arg_2.a.b, true)), _wgslsmith_f_op_f32(min(var_2.a.b, arg_2.a.b)), _wgslsmith_f_op_f32(-var_0.a.b)))));
}

fn func_2() -> vec3<bool> {
    let var_0 = func_4(_wgslsmith_sub_vec3_i32(countOneBits(~(-vec3<i32>(0i, -19350i, 15114i))), ~max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -38644i), vec3<i32>(u_input.b.x, u_input.d.x, u_input.b.x)), firstTrailingBit(vec3<i32>(u_input.c, 1484i, 0i)))), i32(-1i) * -(i32(-1i) * -81235i), Struct_2(Struct_1(~vec4<u32>(u_input.a.x, 1u, 8006u, u_input.e.x), -149f, firstLeadingBit(-vec2<i32>(-2147483647i, -2147483647i))), ~func_3(-vec4<i32>(u_input.d.x, 39981i, u_input.b.x, -695i), vec2<bool>(true, true), Struct_1(vec4<u32>(0u, u_input.e.x, u_input.e.x, 4294967295u), 484f, vec2<i32>(u_input.d.x, 0i)), _wgslsmith_div_vec3_f32(vec3<f32>(439f, 238f, 1000f), vec3<f32>(-120f, -814f, -1169f)))), Struct_2(Struct_1(~vec4<u32>(u_input.a.x, 11399u, u_input.e.x, 33606u), 476f, abs(u_input.d | vec2<i32>(-8700i, -4593i))), _wgslsmith_add_u32(26962u, ~firstTrailingBit(u_input.e.x))));
    var var_1 = vec2<i32>(select(_wgslsmith_add_i32(-10747i, ~u_input.c), u_input.b.x, false), _wgslsmith_div_i32(_wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, 17334i)), u_input.b.x), 5289i));
    var_1 = ~(-vec2<i32>((2147483647i & u_input.c) & var_1.x, 37085i));
    var_1 = u_input.b;
    let var_2 = any(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))) & !(true && any(vec2<bool>(false, true)));
    return select(vec3<bool>(!all(!vec3<bool>(true, var_2, false)), true, !(all(vec2<bool>(var_2, var_2)) && var_2)), vec3<bool>(((i32(-1i) * -1i) & var_1.x) < var_1.x, true, !select(var_2, false, true | var_2)), !(!select(vec3<bool>(false, var_2, false), !vec3<bool>(var_2, true, true), true)));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -388f), 299f, any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), func_2()))));
    var var_1 = func_2().xz;
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(reverseBits(max(vec4<u32>(u_input.a.x, u_input.e.x, 4294967295u, u_input.e.x), vec4<u32>(17380u, u_input.a.x, 68701u, 0u))), countOneBits(~vec4<u32>(1u, 4294967295u, u_input.a.x, 1u))), -723f, u_input.b), _wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.e.x), func_4(vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x), -8938i, Struct_2(Struct_1(vec4<u32>(56507u, u_input.a.x, u_input.e.x, u_input.a.x), -1000f, vec2<i32>(52880i, u_input.d.x)), u_input.e.x), Struct_2(Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 58236u), 894f, u_input.b), 40329u)).x, u_input.a.x)));
    var_2 = Struct_2(Struct_1(var_2.a.a, var_2.a.b, -(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, -1i), var_2.a.c, vec2<i32>(u_input.d.x, var_2.a.c.x)) >> (~var_2.a.a.yw % vec2<u32>(32u)))), u_input.e.x);
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_2.a.c.x, u_input.d.x, abs(u_input.c), -var_2.a.c.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-var_2.a.c.x, -5990i, 1i, var_2.a.c.x), select(vec4<i32>(7710i, var_2.a.c.x, var_2.a.c.x, var_2.a.c.x), firstTrailingBit(vec4<i32>(1i, u_input.d.x, u_input.c, -10216i)), all(vec2<bool>(var_1.x, false))))), firstLeadingBit(min(countOneBits(~(-2147483647i)), _wgslsmith_mult_i32(0i, -var_2.a.c.x))));
    return !select(vec4<bool>(false, var_1.x, 2147483647i == select(var_2.a.c.x, u_input.c, var_1.x), var_1.x), select(vec4<bool>(all(vec3<bool>(var_1.x, true, var_1.x)), false, var_1.x, var_1.x), select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), 32203i < var_2.a.c.x), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, var_1.x, var_1.x, var_1.x), all(vec4<bool>(var_1.x, true, true, false)))), true);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-539f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + arg_0.b)))));
    var var_1 = arg_2;
    let var_2 = Struct_3(1u);
    var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-277f, _wgslsmith_div_f32(var_0.x, -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_0.x) + 2219f)), -601f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -294f), _wgslsmith_f_op_f32(-arg_0.b)))), -2236f), false));
    let var_3 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(~19283u, _wgslsmith_mod_u32(84697u, 1u), u_input.e.x), ~firstTrailingBit(vec3<u32>(3038u, u_input.a.x, 0u))));
    return ~arg_0.a ^ reverseBits(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(~vec4<u32>(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 46811u, _wgslsmith_clamp_u32(u_input.a.x, 12425u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-639f)) - 1141f)), u_input.d), abs(~u_input.a.x));
    var var_1 = -vec2<i32>(countOneBits(-1i), var_0.a.c.x);
    var var_2 = var_0.a.a;
    var_2 = func_5(var_0.a, false, select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), func_1(), func_1().x), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(false, false, true, true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true))));
    var_2 = vec4<u32>(u_input.e.x, 72186u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e.x, 4294967295u) & ~var_2.yzz, vec3<u32>(var_2.x, var_0.a.a.x, u_input.a.x))), 75443u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b);
}

