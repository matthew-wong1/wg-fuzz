struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = true;
    var_0 = !(!(any(vec4<bool>(true, true, true, true)) || (true || all(vec2<bool>(false, true)))));
    var_0 = true;
    var var_1 = select(0u, 4294967295u, true);
    var_0 = true;
    return vec2<u32>(4950u, ~u_input.b);
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(arg_0.b.xx ^ func_3(arg_0), reverseBits(arg_0.b.zz)), ~_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(19465u, arg_0.d, var_0.b.x) | vec3<u32>(var_0.e, 72044u, 5804u)), var_0.e), ~firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(35501u, u_input.b), 1u, arg_0.e | var_0.e, firstLeadingBit(4294967295u))));
    let var_2 = -1i;
    var var_3 = !vec3<bool>(any(vec3<bool>(true, true, true)), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), true);
    let var_4 = var_1.yzw ^ ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.e, 0u, u_input.b)), vec3<u32>(2295u, 4294967295u, 0u)), arg_0.a);
    return u_input.a.x | _wgslsmith_sub_i32(~var_2, u_input.a.x << (~firstTrailingBit(4294967295u) % 32u));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(vec3<u32>(22721u, u_input.b, abs(_wgslsmith_mult_u32(31496u, u_input.b)) >> (u_input.b % 32u)), ~select(~vec3<u32>(u_input.b, u_input.b, 37020u), ~vec3<u32>(4294967295u, 4294967295u, 60381u), true) >> (vec3<u32>(1u, u_input.b, u_input.b) % vec3<u32>(32u)), max(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), abs(vec4<i32>(-20649i, u_input.a.x, u_input.a.x, 2147483647i))), vec4<i32>(func_2(Struct_1(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(1u, u_input.b, 1u), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), 14543u, u_input.b)), -u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -2147483647i)), firstLeadingBit(vec4<i32>(0i << (u_input.b % 32u), 10093i, 0i, u_input.a.x))), ~u_input.b, 47223u);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 2047f) - arg_0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))))));
    var_0 = Struct_1(~(~min(var_0.a, ~vec3<u32>(0u, 34596u, var_0.b.x))), vec3<u32>(~var_0.a.x, max(~_wgslsmith_mult_u32(43609u, u_input.b), 69459u), 1u), max(~(~var_0.c), vec4<i32>(-17488i, 1i, var_0.c.x, _wgslsmith_add_i32(func_2(Struct_1(vec3<u32>(27698u, u_input.b, u_input.b), var_0.b, var_0.c, var_0.d, 30285u)), _wgslsmith_div_i32(-16213i, var_0.c.x)))), ~firstLeadingBit(abs(_wgslsmith_sub_u32(u_input.b, u_input.b))), u_input.b);
    var_0 = Struct_1(var_0.a, vec3<u32>(_wgslsmith_div_u32(var_0.e, 1u), 0u, 5215u), _wgslsmith_div_vec4_i32(firstTrailingBit(var_0.c ^ _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -5378i, 0i, 25147i), var_0.c)), select(select(min(vec4<i32>(u_input.a.x, 37425i, 0i, -20526i), vec4<i32>(var_0.c.x, 1i, u_input.a.x, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(-9346i, 8922i, 7781i, var_0.c.x), var_0.c), true), select(vec4<i32>(u_input.a.x, u_input.a.x, var_0.c.x, var_0.c.x), abs(var_0.c), true), vec4<bool>(true, true, false, true))), ~var_0.d, ~var_0.a.x);
    var var_2 = Struct_2(true, Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_0.b, ~var_0.b), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(31545u, 11851u, u_input.b), var_0.b, vec3<u32>(4294967295u, 25415u, 10292u)), var_0.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 19198u), var_0.a, var_0.a))), min(var_0.b, abs(min(vec3<u32>(30689u, u_input.b, 4294967295u), vec3<u32>(u_input.b, 74006u, u_input.b)))), abs(vec4<i32>(1700i << (0u % 32u), u_input.a.x, 6665i, select(var_0.c.x, -32704i, false))), _wgslsmith_sub_u32(~(~var_0.d), var_0.e), u_input.b), Struct_1(vec3<u32>(26388u, 1u, u_input.b) | (_wgslsmith_mult_vec3_u32(vec3<u32>(25258u, 33958u, 5634u), vec3<u32>(1u, u_input.b, var_0.d)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_0.e, u_input.b, 10308u), vec3<u32>(26895u, 0u, 45052u))), vec3<u32>(~_wgslsmith_mult_u32(39218u, var_0.e), 13123u, ~var_0.d), -var_0.c, ~abs(~12331u), select(~1u, countOneBits(12020u), true)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x), -1406f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -106f) + _wgslsmith_f_op_f32(select(1249f, arg_0.x, true))) - -835f), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1253f + 1313f))));
    return Struct_2(true, var_2.b, var_2.c, _wgslsmith_f_op_vec4_f32(var_2.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1276f, 823f), vec2<f32>(656f, 970f))))));
    var var_1 = vec3<bool>(var_0.a, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -471f)) >= -784f);
    let var_2 = i32(-1i) * -4257i;
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(round(var_0.d.xx))).c;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), -1137f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(sign(var_0.d.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, 20114u, ~(((vec4<u32>(1u, var_3.b.x, var_0.c.b.x, 17708u) ^ vec4<u32>(0u, 4294967295u, 4294967295u, var_0.b.d)) | vec4<u32>(var_0.c.d, u_input.b, var_3.d, 3214u)) | ~(vec4<u32>(4294967295u, 58521u, var_0.b.a.x, var_0.b.e) ^ vec4<u32>(u_input.b, var_0.b.b.x, 13910u, var_3.d))), ~func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.d.zz)))).c.b.x, func_1(var_0.d.wz).c.b);
}

