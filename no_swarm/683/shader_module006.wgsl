struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = arg_1.x;
    var var_1 = vec4<bool>(true, true, false, false);
    var var_2 = 40006u;
    let var_3 = var_1.yzz;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1, arg_1)));
    return 4294967295u;
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    var var_0 = (2147483647i << (func_2(_wgslsmith_sub_u32(arg_0, _wgslsmith_mod_u32(u_input.b, u_input.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1017f, -764f, -1136f, -227f), vec4<f32>(-1000f, 1000f, 1042f, 361f)), vec4<f32>(196f, -933f, -177f, -968f), !vec4<bool>(false, arg_1, arg_1, arg_1))), Struct_2(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), arg_1), u_input.a, Struct_1(false, vec2<bool>(true, false), vec2<i32>(1i, u_input.c), vec4<u32>(arg_0, 69067u, 1u, 4294967295u)))) % 32u)) ^ -((-u_input.c & (i32(-1i) * -1i)) << (~_wgslsmith_mult_u32(5672u, 0u) % 32u));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(-97068i & u_input.c, max(2147483647i, -1i)) & u_input.c, firstLeadingBit(reverseBits(_wgslsmith_mult_i32(0i, u_input.c))));
    let var_2 = Struct_4(abs(max(-vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), firstLeadingBit(vec4<i32>(u_input.c, u_input.c, -1504i, u_input.c)))) << (~_wgslsmith_div_vec4_u32(max(vec4<u32>(arg_0, u_input.a.x, arg_0, 99952u), vec4<u32>(4294967295u, 16306u, 47182u, arg_0)), vec4<u32>(4294967295u, 75791u, arg_0, 0u) & vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b)) % vec4<u32>(32u)));
    var var_3 = firstLeadingBit(~((u_input.c & (i32(-1i) * -1i)) >> (24387u % 32u)));
    let var_4 = ~_wgslsmith_dot_vec3_u32(~(u_input.a ^ vec3<u32>(1u, u_input.a.x, u_input.a.x)), abs(min(u_input.a, u_input.a)) & ~vec3<u32>(10753u, arg_0, arg_0));
    return 0u & _wgslsmith_mult_u32(_wgslsmith_mod_u32(~abs(63093u), _wgslsmith_div_u32(1u, firstLeadingBit(u_input.a.x))), abs(~43049u));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> Struct_4 {
    let var_0 = vec4<u32>(1280u, arg_0.d.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2.d.zww, _wgslsmith_sub_vec3_u32(~vec3<u32>(4750u, 1u, arg_2.d.x), u_input.a)), firstLeadingBit(select(~vec3<u32>(arg_2.d.x, arg_2.d.x, u_input.a.x), vec3<u32>(1u, 0u, arg_3.b), arg_2.a || false))), u_input.b);
    var var_1 = ~vec4<u32>(arg_0.d.x, ~max(1u, 1824u), 1u, ~firstTrailingBit(95545u));
    var_1 = vec4<u32>(func_2(arg_3.b, _wgslsmith_div_vec4_f32(vec4<f32>(551f, -1417f, -1403f, 1635f), vec4<f32>(-2818f, -1000f, -1421f, -448f)), Struct_2(vec2<bool>(arg_3.a.b.x, arg_2.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(420u, 4294967295u, arg_3.d), vec3<u32>(14278u, 17489u, 4294967295u), var_0.yyy), arg_3.a)), arg_0.d.x, _wgslsmith_clamp_u32(7112u, 4294967295u, 29259u), var_1.x) << (arg_3.a.d % vec4<u32>(32u));
    var_1 = countOneBits((~_wgslsmith_mult_vec4_u32(var_0, vec4<u32>(arg_2.d.x, 6783u, u_input.a.x, arg_2.d.x)) >> (firstLeadingBit(vec4<u32>(4294967295u, arg_0.d.x, 45821u, arg_0.d.x)) % vec4<u32>(32u))) & ~var_0);
    let var_2 = Struct_2(select(select(select(arg_3.a.b, !vec2<bool>(arg_0.b.x, arg_3.a.b.x), select(arg_0.b, vec2<bool>(true, arg_2.b.x), vec2<bool>(arg_0.a, arg_2.a))), !(!arg_2.b), !(!arg_0.b.x)), !(!vec2<bool>(arg_3.a.a, arg_2.a)), select(select(!vec2<bool>(true, arg_3.c), vec2<bool>(arg_0.b.x, arg_0.a), true), arg_2.b, !select(arg_2.b, arg_0.b, arg_1))), vec3<u32>(~var_0.x, ~1u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_0.d.x, 2886u, 4294967295u)), ~(~0u))), Struct_1(!(select(false, arg_3.c, arg_3.c) & any(vec2<bool>(arg_2.a, false))), !(!vec2<bool>(arg_1, false)), _wgslsmith_mod_vec2_i32(~_wgslsmith_clamp_vec2_i32(arg_3.a.c, vec2<i32>(arg_0.c.x, -33284i), vec2<i32>(-1i, -34503i)), ~max(vec2<i32>(arg_2.c.x, arg_0.c.x), vec2<i32>(-9309i, u_input.c))), var_0));
    return Struct_4(~vec4<i32>(arg_3.a.c.x, 11184i, max(2147483647i, 2147483647i), _wgslsmith_div_i32(arg_2.c.x, var_2.c.c.x)) & vec4<i32>(min(_wgslsmith_add_i32(2147483647i, var_2.c.c.x), -var_2.c.c.x), _wgslsmith_sub_i32(-var_2.c.c.x, arg_2.c.x), firstTrailingBit(_wgslsmith_mult_i32(28813i, arg_0.c.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, 11136i, arg_2.c.x, arg_3.a.c.x), vec4<i32>(var_2.c.c.x, u_input.c, -2147483647i, -2147483647i))));
}

fn func_1() -> Struct_4 {
    return func_4(Struct_1(true, select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), ~(~vec2<i32>(1i, 796i)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), ~vec2<i32>(u_input.c, u_input.c)), ~vec4<u32>(u_input.b ^ 43614u, ~6593u, firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(33182u, 83435u), u_input.a.zz))), (!select(false, false, false) || select(false, true, true)) | false, Struct_1(all(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true))), vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), any(vec3<bool>(true, true, true))), -(~(vec2<i32>(u_input.c, -2147483647i) ^ vec2<i32>(u_input.c, u_input.c))), firstTrailingBit(vec4<u32>(abs(4294967295u), ~44554u, func_2(26228u, vec4<f32>(1264f, -377f, 581f, -539f), Struct_2(vec2<bool>(false, false), u_input.a, Struct_1(false, vec2<bool>(true, true), vec2<i32>(32386i, 0i), vec4<u32>(19686u, u_input.a.x, 1u, u_input.a.x)))), ~7815u))), Struct_3(Struct_1(-505f == _wgslsmith_f_op_f32(select(879f, 2432f, false)), vec2<bool>(true, all(vec3<bool>(false, true, false))), firstLeadingBit(~vec2<i32>(-35425i, 2147483647i)), ~(~vec4<u32>(u_input.b, 1u, 1u, 4294967295u))), func_3(26078u | u_input.a.x, true), _wgslsmith_mult_i32(select(-79053i, u_input.c, false), u_input.c) != -31061i, 48151u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(firstLeadingBit(-u_input.c), _wgslsmith_add_i32(0i, u_input.c), _wgslsmith_div_i32(i32(-1i) * -1i, u_input.c)), 62304i);
    var_0 = -u_input.c;
    var var_1 = func_1();
    var_0 = u_input.c;
    var var_2 = -709f;
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -665f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(383f, 1198f), vec2<f32>(-2109f, -776f)))))))));
    let var_4 = _wgslsmith_f_op_f32(floor(-101f));
    let var_5 = Struct_1(true, vec2<bool>(true, true && (any(vec2<bool>(true, false)) && (178f != var_4))), vec2<i32>(~(~(~(-17340i))), _wgslsmith_sub_i32(reverseBits(7413i), func_4(Struct_1(true, vec2<bool>(false, false), vec2<i32>(var_1.a.x, 11388i), vec4<u32>(4294967295u, 41722u, u_input.b, 1u)), false, Struct_1(false, vec2<bool>(true, false), var_1.a.zz, vec4<u32>(1u, 1u, u_input.b, u_input.b)), Struct_3(Struct_1(true, vec2<bool>(true, false), var_1.a.xx, vec4<u32>(u_input.b, u_input.b, u_input.a.x, 61671u)), u_input.b, true, 4294967295u)).a.x) << (_wgslsmith_dot_vec2_u32(select(u_input.a.yx, u_input.a.yx, vec2<bool>(true, true)), vec2<u32>(8488u, 92662u)) % 32u)), _wgslsmith_add_vec4_u32(reverseBits(~(~vec4<u32>(11662u, 0u, 4294967295u, 1u))), ~vec4<u32>(u_input.a.x, reverseBits(u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(64047u, 2566u)), ~u_input.a.x)));
    var_1 = Struct_4(_wgslsmith_div_vec4_i32(var_1.a, vec4<i32>(u_input.c, _wgslsmith_add_i32(u_input.c | -8797i, -1i), abs(9572i), _wgslsmith_sub_i32(u_input.c ^ -11773i, max(13696i, -22246i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, _wgslsmith_div_u32(var_5.d.x, var_5.d.x), 3111u), var_5.d.yyw));
}

