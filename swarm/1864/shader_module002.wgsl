struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = select(reverseBits(select(-vec4<i32>(10694i, -11863i, 49364i, -25314i), vec4<i32>(-594i, 1i, 2147483647i, 70769i) >> (vec4<u32>(0u, u_input.a.x, 17174u, u_input.c) % vec4<u32>(32u)), all(vec2<bool>(true, true))) & -vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(select(-2147483647i, abs(-1i), true), 603i, 1i, abs(-2147483647i)), true);
    var_0 = -min(firstTrailingBit(vec4<i32>(var_0.x, 37035i, -var_0.x, ~var_0.x)), max(vec4<i32>(-2147483647i, 45989i, 1i, -918i), ~reverseBits(vec4<i32>(var_0.x, -1i, var_0.x, -8870i))));
    var_0 = abs(vec4<i32>(min(var_0.x, firstTrailingBit(_wgslsmith_mult_i32(var_0.x, var_0.x))), var_0.x, i32(-1i) * -1i, 1i));
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.wyx, var_0.wwy) << (firstLeadingBit(4294967295u) % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, 2147483647i)), -2147483647i)) ^ ~(-var_0.xz), ~u_input.a.xx, firstLeadingBit(firstTrailingBit(firstTrailingBit(firstLeadingBit(vec4<i32>(2147483647i, var_0.x, -70546i, var_0.x))))), vec2<i32>((var_0.x >> (abs(10692u) % 32u)) & var_0.x, ~_wgslsmith_div_i32(var_0.x, var_0.x)));
    var_1 = Struct_1(select(max(vec2<i32>(1i, var_0.x), vec2<i32>(23156i, 19250i)), var_1.a ^ vec2<i32>(-1i, -1i), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) | firstLeadingBit(firstLeadingBit(var_1.a)), var_1.b << (vec2<u32>(var_1.b.x, var_1.b.x) % vec2<u32>(32u)), -var_1.c, var_0.ww);
    return 1i;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(vec2<i32>(2147483647i, min(max(_wgslsmith_add_i32(arg_1.x, arg_1.x), func_3(vec2<f32>(arg_2, -1020f))), ~(arg_1.x << (0u % 32u)))), vec2<u32>(arg_3.b.x, arg_3.b.x), min(_wgslsmith_sub_vec4_i32(arg_1, select(_wgslsmith_add_vec4_i32(arg_1, vec4<i32>(arg_1.x, arg_1.x, -40863i, arg_3.c.x)), -vec4<i32>(28454i, arg_1.x, arg_0.x, arg_1.x), any(vec2<bool>(true, false)))), -arg_3.c), vec2<i32>(arg_3.d.x, abs(~arg_1.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2) - vec3<f32>(arg_2, 1636f, arg_2))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -863f, -775f)), vec3<f32>(arg_2, -1288f, arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, -1000f, -587f)))))))));
    var var_2 = 49899u;
    var var_3 = var_0;
    var_3 = arg_3;
    return true;
}

fn func_1() -> i32 {
    let var_0 = all(!vec2<bool>(true, func_2(-vec3<i32>(14399i, 0i, 0i), vec4<i32>(13090i, 1i, 0i, 0i) >> (vec4<u32>(1u, 64412u, 0u, u_input.c) % vec4<u32>(32u)), _wgslsmith_div_f32(-944f, 978f), Struct_1(vec2<i32>(-2147483647i, 23470i), vec2<u32>(34404u, 1u), vec4<i32>(-2147483647i, 1i, -1i, -1i), vec2<i32>(-11047i, -2147483647i)))));
    let var_1 = (((~u_input.b ^ u_input.c) ^ 48891u) & 58264u) < 27351u;
    var var_2 = any(!(!(!vec3<bool>(var_0, var_0, var_0))));
    let var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), ~(~vec2<i32>(func_3(vec2<f32>(1515f, 119f)), -1i)));
    var var_4 = Struct_2(Struct_1(~(abs(vec2<i32>(var_3.x, var_3.x)) | _wgslsmith_sub_vec2_i32(var_3, vec2<i32>(var_3.x, 7324i))), vec2<u32>(_wgslsmith_add_u32(~81067u, select(u_input.b, 15851u, var_1)), u_input.c), _wgslsmith_sub_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_3.x, 10665i), vec4<i32>(-2147483647i, -1i, var_3.x, -1i)), vec4<i32>(min(-23922i, var_3.x), var_3.x, 0i, 2147483647i)), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -69488i), vec2<i32>(39103i, 9377i)))), func_2(_wgslsmith_mult_vec3_i32(firstTrailingBit(~vec3<i32>(-35910i, 0i, 1i)), max(vec3<i32>(var_3.x, 60376i, -35823i), _wgslsmith_add_vec3_i32(vec3<i32>(-56234i, 0i, var_3.x), vec3<i32>(15462i, 15423i, 2147483647i)))), vec4<i32>(~var_3.x, var_3.x, _wgslsmith_add_i32(0i, -2147483647i), var_3.x) & ~(-vec4<i32>(-20718i, var_3.x, var_3.x, 6205i)), -306f, Struct_1(var_3, _wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.a.x, 1u)), u_input.a.zx), -vec4<i32>(-42867i, var_3.x, -29969i, var_3.x) | _wgslsmith_sub_vec4_i32(vec4<i32>(-10868i, 1i, var_3.x, var_3.x), vec4<i32>(0i, 2147483647i, -1i, -30903i)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.x, var_3.x), vec2<i32>(var_3.x, -1i)))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(abs(23012u), u_input.b, ~u_input.c);
    var var_1 = true;
    var_1 = true;
    var_1 = 1i == abs(~_wgslsmith_sub_i32(func_1(), ~(-1i)));
    var_1 = !(((_wgslsmith_mult_u32(u_input.c, u_input.a.x) >> (u_input.b % 32u)) >> (~31939u % 32u)) >= _wgslsmith_mult_u32(abs(abs(var_0)), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.zy), vec2<u32>(30615u, u_input.a.x))));
    let var_2 = var_0;
    var_1 = all(select(vec4<bool>(true, true, true & all(vec3<bool>(false, true, true)), false), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !(true | func_2(vec3<i32>(1i, 36442i, -17000i), vec4<i32>(23622i, -147i, -14674i, -1i), -1065f, Struct_1(vec2<i32>(0i, 18937i), u_input.a.yy, vec4<i32>(2147483647i, -2147483647i, -1i, -11230i), vec2<i32>(-13141i, -2147483647i))))));
    let var_3 = -abs(_wgslsmith_add_vec3_i32(~vec3<i32>(13582i, -2147483647i, -2147483647i), select(vec3<i32>(-19363i, -1i, 10125i), vec3<i32>(-12497i, 0i, 15974i), vec3<bool>(true, true, false)))) >> (max(((u_input.a << (u_input.a % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(33227u, 122223u, 4294967295u)) % vec3<u32>(32u))) ^ vec3<u32>(4294967295u, var_0, 1u), u_input.a) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(1u, var_0), 25995u, _wgslsmith_clamp_u32(var_0, var_2, var_0), u_input.a.x), vec4<u32>(~(~0u), var_2, _wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 25496u, var_2), vec3<u32>(u_input.a.x, 1u, 1u)), _wgslsmith_sub_u32(var_0, 1u)), 1u)), u_input.c, 2147483647i, u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1315f, 440f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 548f) + _wgslsmith_div_f32(-1000f, 2279f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(433f, -1870f, true))))));
}

