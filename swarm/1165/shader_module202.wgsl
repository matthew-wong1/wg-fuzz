struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    return u_input.a;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    var var_0 = 61247u;
    var_0 = 1u;
    var var_1 = Struct_1(vec4<bool>(_wgslsmith_mod_u32(1u, 4294967295u << (u_input.b % 32u)) > func_3(Struct_1(vec4<bool>(arg_0, arg_0, true, true), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -777f)), true, arg_0, arg_0), firstLeadingBit(-vec4<i32>(arg_1.x, -2147483647i, arg_1.x, arg_1.x) << (abs(~vec4<u32>(u_input.b, 0u, u_input.b, 0u)) % vec4<u32>(32u))), !(!any(!vec3<bool>(arg_0, arg_0, true))));
    var var_2 = _wgslsmith_clamp_vec4_i32(-max(min(~var_1.b, _wgslsmith_mod_vec4_i32(var_1.b, vec4<i32>(arg_1.x, -1i, arg_1.x, 1i))), abs(abs(vec4<i32>(40064i, 2147483647i, arg_1.x, var_1.b.x)))), select(~var_1.b, -var_1.b, select(vec4<bool>(true, false, all(vec4<bool>(true, false, false, false)), 28141u != u_input.a), select(var_1.a, select(vec4<bool>(false, false, arg_0, var_1.c), var_1.a, vec4<bool>(true, arg_0, false, true)), vec4<bool>(false, var_1.c, arg_0, arg_0)), countOneBits(27794i) > _wgslsmith_mult_i32(arg_1.x, arg_1.x))), _wgslsmith_add_vec4_i32(firstLeadingBit(~(~vec4<i32>(10102i, arg_1.x, 1i, 1i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(9604i, var_1.b.x, -18805i, var_1.b.x) >> (vec4<u32>(19411u, u_input.a, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(var_1.b.x, 2147483647i, -31554i, arg_1.x) | vec4<i32>(arg_1.x, arg_1.x, -16922i, 33505i), var_1.b & var_1.b) | var_1.b));
    var var_3 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(min(firstLeadingBit(vec2<u32>(0u, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(10316u, u_input.a), vec2<u32>(u_input.a, u_input.a))), vec2<u32>(u_input.b, 43156u) >> (firstLeadingBit(vec2<u32>(0u, 1077u)) % vec2<u32>(32u))) & reverseBits(~vec2<u32>(1u, 1u) >> ((vec2<u32>(u_input.b, u_input.a) & vec2<u32>(59631u, u_input.a)) % vec2<u32>(32u))), firstTrailingBit(~firstLeadingBit(vec2<u32>(u_input.a, 31088u))));
    return ~reverseBits(_wgslsmith_add_u32(u_input.a, var_3.x >> (100885u % 32u))) | (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 20229u, 1u) ^ vec4<u32>(var_3.x, u_input.a, 7528u, var_3.x), abs(vec4<u32>(30699u, 1498u, 39033u, 1u))), var_3.x) & _wgslsmith_add_u32(_wgslsmith_mod_u32(reverseBits(u_input.b), var_3.x), _wgslsmith_div_u32(var_3.x, var_3.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(~func_2(false, -vec2<i32>(-50094i, 31538i)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, ~u_input.b), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(82188u, 4294967295u, u_input.b)), ~vec3<u32>(u_input.b, u_input.a, u_input.a)))), abs(~vec2<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), _wgslsmith_add_u32(4294967295u, u_input.a))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -30942i, -1i, -42806i) >> (select(vec4<u32>(0u, 25949u, 4752u, u_input.a), vec4<u32>(11454u, 15325u, 4294967295u, 1u), vec4<bool>(false, false, false, false)) % vec4<u32>(32u)), vec4<i32>(-4036i, firstTrailingBit(-1i), 6670i, -18020i)), reverseBits(~vec4<i32>(1i, 1i, 1i, 1i))), -17505i);
    var var_2 = vec2<f32>(203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2100f))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -1843f)))), vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1115f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(920f, -1678f))))))));
    var var_3 = reverseBits(~91043u);
    return Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(_wgslsmith_div_i32(0i, _wgslsmith_add_i32(1i, var_1.x)) ^ 6856i, _wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.x, -10977i) >> (~1u % 32u), ~0i), ~max(_wgslsmith_add_i32(var_1.x, -12487i), -var_1.x), 4835i), _wgslsmith_mod_i32(abs(4413i) << (_wgslsmith_mult_u32(u_input.a, 4294967295u) % 32u), _wgslsmith_mod_i32(1i, var_1.x) << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u)) >= (-abs(var_1.x) & select(-1i, var_1.x, false)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !select(arg_0.a.zz, !arg_0.a.xy, !(!vec2<bool>(arg_0.a.x, arg_0.c)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-430f))), _wgslsmith_f_op_f32(sign(-560f))));
    var var_2 = 4294967295u;
    let var_3 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, ~(~u_input.b), abs(127128u)), firstTrailingBit(~reverseBits(vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b))), ~reverseBits(select(vec4<u32>(46550u, u_input.b, u_input.a, 4294967295u), vec4<u32>(13248u, u_input.a, u_input.b, u_input.a), false)));
    let var_4 = Struct_1(!(!arg_0.a), arg_0.b, true);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(firstLeadingBit(u_input.a), _wgslsmith_mod_u32(u_input.a, 4294967295u)), ~vec2<u32>(~1u, ~14306u), _wgslsmith_mult_vec2_u32(~vec2<u32>(103625u, 1u), vec2<u32>(_wgslsmith_mod_u32(u_input.b, 4294967295u), _wgslsmith_div_u32(4294967295u, u_input.a)))) | vec2<u32>(1u, 16765u);
    var var_1 = i32(-1i) * -23299i;
    var var_2 = func_4(func_1());
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1671f, 519f, 804f, -537f)) - vec4<f32>(-485f, -196f, 1000f, -1107f))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1319f))))), _wgslsmith_f_op_f32(max(-168f, _wgslsmith_f_op_f32(-1316f + _wgslsmith_f_op_f32(-126f - 1552f)))), _wgslsmith_f_op_f32(max(-300f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2610f))))), _wgslsmith_f_op_f32(1098f * _wgslsmith_f_op_f32(-1f)))));
    var var_4 = var_2.c;
    var_2 = func_4(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(var_0, reverseBits(~(var_0 ^ var_0))));
}

