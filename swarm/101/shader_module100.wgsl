struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = Struct_1(-firstLeadingBit(min(vec2<i32>(u_input.c, 10216i), vec2<i32>(u_input.c, 50476i))) & vec2<i32>(u_input.a, 31376i), -min(-(~(-41187i)), max(~134i, -2147483647i >> (arg_0.x % 32u))), _wgslsmith_f_op_vec2_f32(-global0.zx), 1u, 25847u);
    let var_2 = ~(~abs(vec3<u32>(3248u, 4294967295u, ~4294967295u)));
    var_1 = Struct_1(select(vec2<i32>(-1i, var_1.a.x), _wgslsmith_add_vec2_i32(var_1.a, vec2<i32>(-3385i, 1i) | var_1.a), var_0.yz), 34316i, _wgslsmith_f_op_vec2_f32(-global0.yy), ~arg_0.x, arg_0.x << (min(~_wgslsmith_sub_u32(1u, u_input.b.x), var_2.x) % 32u));
    let var_3 = all(vec4<bool>(all(select(vec2<bool>(var_0.x, var_0.x), var_0.yx, var_0.zx)), select(!var_0.x, all(vec3<bool>(true, false, var_0.x)), any(var_0)), var_0.x, false)) | true;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(874f * var_1.c.x)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-525f - global0.x))))));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_1(abs(~(~(-vec2<i32>(u_input.c, -37114i)))), -_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(-8198i), u_input.c, _wgslsmith_sub_i32(u_input.c, u_input.c), 0i), abs(~vec4<i32>(u_input.a, u_input.a, -12503i, -10992i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(107f, -1264f), global0.yy)))), 4611u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.b.x, 32091u, u_input.b.x) ^ vec3<u32>(2362u, 1u, 1u)) & ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~(~vec3<u32>(u_input.b.x, 1u, u_input.b.x))));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-888f, var_0.c.x, global0.x), _wgslsmith_div_vec3_f32(vec3<f32>(441f, 630f, 134f), vec3<f32>(global0.x, -1645f, 975f)))), vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b))), _wgslsmith_f_op_f32(-3877f + var_0.c.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1050f, 1325f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, var_0.c.x, var_0.c.x), vec3<f32>(-687f, var_0.c.x, global0.x), vec3<bool>(false, false, false)))))))), !vec3<bool>(true, true, any(vec2<bool>(true, false)))));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, var_0.c.x, -786f) - vec3<f32>(250f, -2164f, -1626f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(740f, global0.x, 340f)) * vec3<f32>(-176f, var_0.c.x, _wgslsmith_f_op_f32(exp2(var_0.c.x))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-102f, 594f, global0.x)), vec3<f32>(global0.x, var_0.c.x, var_0.c.x)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c.x, -1176f, _wgslsmith_f_op_f32(-539f + global0.x)))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(875f, global0.x, -939f) * vec3<f32>(-1375f, global0.x, -600f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -118f, -2072f) + vec3<f32>(global0.x, var_0.c.x, 298f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1743f)), _wgslsmith_f_op_f32(-1161f * global0.x), _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1442f, global0.x, 1030f)))) - vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x * global0.x), 796f, _wgslsmith_f_op_f32(f32(-1f) * -856f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-937f * _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.x))))), vec3<f32>(_wgslsmith_f_op_f32(func_3(vec2<u32>(20382u, 58436u))), var_0.c.x, _wgslsmith_f_op_f32(min(-431f, _wgslsmith_f_op_f32(ceil(1426f)))))));
    return vec2<i32>((i32(-1i) * -57603i) & abs(_wgslsmith_mod_i32(var_0.b, 2147483647i) ^ reverseBits(var_0.b)), 0i);
}

fn func_1() -> Struct_1 {
    var var_0 = -firstLeadingBit(func_2());
    let var_1 = Struct_2(~u_input.b.x);
    var var_2 = _wgslsmith_mult_vec2_i32(~(vec2<i32>(_wgslsmith_clamp_i32(-14617i, 2147483647i, 1i), var_0.x) << (abs(vec2<u32>(u_input.b.x, 43674u)) % vec2<u32>(32u))), -vec2<i32>(var_0.x, var_0.x));
    var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, i32(-1i) * -42311i), -vec2<i32>(~countOneBits(var_2.x), 14638i));
    let var_3 = true;
    return Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(reverseBits(0i), firstTrailingBit(1i)), -func_2() & select(-vec2<i32>(var_0.x, 78104i), -vec2<i32>(var_0.x, u_input.c), false)), _wgslsmith_mult_i32(_wgslsmith_add_i32(abs(var_2.x) >> (min(var_1.a, var_1.a) % 32u), (-7856i & var_2.x) << (_wgslsmith_mod_u32(var_1.a, 15384u) % 32u)), _wgslsmith_div_i32(var_0.x, _wgslsmith_sub_i32(u_input.c, select(var_2.x, u_input.c, var_3)))), global0.xz, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(5970u, 1u, 0u, 12601u), vec4<u32>(var_1.a, u_input.b.x, 97229u, 25975u)), u_input.b.x, 60308u, var_1.a), _wgslsmith_mod_vec4_u32(vec4<u32>(49459u, 0u, u_input.b.x, 1u) & vec4<u32>(0u, var_1.a, 11482u, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 34078u, u_input.b.x, var_1.a), vec4<u32>(u_input.b.x, 0u, 27099u, 0u)))) & u_input.b.x);
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_3 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1213f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-941f, _wgslsmith_f_op_f32(max(400f, arg_2.a.c.x)), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_2.a.c.x, _wgslsmith_div_f32(global0.x, -508f), arg_2.a.b >= 1i)))), _wgslsmith_f_op_f32(-1048f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_2.a.c.x, -619f, false)))))));
    let var_0 = true;
    var var_1 = u_input.b.x;
    var_1 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.b, min(arg_2.c.xz, arg_2.c.xz)) | abs(func_1().e), ~5283u);
    var var_2 = _wgslsmith_dot_vec3_i32(~(~max(-vec3<i32>(-61552i, 2147483647i, -2147483647i), vec3<i32>(-1i, 45565i, 40875i))), abs(vec3<i32>(max(u_input.a, u_input.a), -arg_2.a.b, -22510i)) >> (~vec3<u32>(_wgslsmith_div_u32(arg_2.b.a, u_input.b.x), arg_2.b.a, ~85758u) % vec3<u32>(32u)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(i32(-1i) * -2147483647i);
    let var_1 = func_4(var_0, ~vec2<i32>(var_0, _wgslsmith_mult_i32(1i, -1i)), Struct_3(func_1(), Struct_2(u_input.b.x), firstLeadingBit(~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1697f, global0.x)), vec3<f32>(global0.x, -869f, 615f), select(true, false, true))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.c.x), 637f, global0.x), false)), vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1432f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.x))))) - vec3<f32>(316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2489f * global0.x), 740f))), global0.x));
    var var_2 = select(_wgslsmith_div_vec4_i32(~vec4<i32>(var_1.a.b, _wgslsmith_mod_i32(2147483647i, u_input.a), -2147483647i, select(var_1.a.a.x, 0i, true)), vec4<i32>(1i, 3562i, 0i << (var_1.b.a % 32u), 10429i) & _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, var_0, -6103i, u_input.a), vec4<i32>(0i, var_0, -2147483647i, -2147483647i)), max(vec4<i32>(37050i, u_input.a, -42522i, 33003i), vec4<i32>(2147483647i, u_input.c, -42618i, -2147483647i)))), ~(~(~(~vec4<i32>(var_1.a.b, -2147483647i, -25222i, 2147483647i)))), !vec4<bool>(!all(vec4<bool>(true, true, true, false)), true, all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(629f - 1269f), -701f), var_1.a.c.x), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.c.x * 1119f), 409f, all(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(73419u, var_1.c.x))) + _wgslsmith_f_op_f32(round(var_1.a.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-622f, -1119f, -1457f)))) - vec3<f32>(_wgslsmith_f_op_f32(1091f + global0.x), _wgslsmith_f_op_f32(f32(-1f) * -161f), global0.x))));
}

