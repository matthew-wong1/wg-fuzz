struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = Struct_1(vec3<bool>(false, arg_0 > arg_1, true));
    var var_1 = 0u;
    var_0 = Struct_1(var_0.a);
    let var_2 = Struct_3(reverseBits(u_input.a.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1656f, -1546f, var_0.a.x))), 1633f), _wgslsmith_f_op_f32(step(-1000f, 1f)), _wgslsmith_f_op_f32(sign(496f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f))), var_0.a, _wgslsmith_mult_u32(0u, arg_0), vec2<u32>(abs(~(~arg_0)), 0u));
    let var_3 = 2147483647i;
    return ~_wgslsmith_add_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(4294967295u, 4294967295u, 1u))), 66158u);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(func_3(9905u, ~63541u), 1u, 11571u, ~1u)), -1i);
    var_0 = Struct_2(var_0.a, var_0.b);
    let var_1 = abs(~(~(~vec3<u32>(var_0.a.x, 1u, var_0.a.x))));
    let var_2 = ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) > u_input.a.x;
    let var_3 = Struct_2(~(~(~var_0.a)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.b), ~vec2<i32>(2147483647i, 3728i)) >> (var_1.x % 32u)));
    return 1000f;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(true, true, true));
    var var_1 = Struct_2(vec4<u32>(~(~66471u), 13026u, 4477u, 1u), abs(max(u_input.b.x, abs(min(u_input.b.x, -1i)))));
    var var_2 = ~_wgslsmith_mod_vec4_u32(var_1.a, ~var_1.a);
    var var_3 = Struct_2(select(~vec4<u32>(var_1.a.x, _wgslsmith_mult_u32(8237u, var_1.a.x), ~var_2.x, var_1.a.x), ~(~_wgslsmith_add_vec4_u32(var_1.a, vec4<u32>(4294967295u, 18545u, 60379u, var_1.a.x))), select(var_0.a.x, var_0.a.x, var_0.a.x)), 0i);
    var_1 = Struct_2(~((var_3.a | (var_3.a & vec4<u32>(56842u, var_1.a.x, 5185u, 2893u))) ^ min(~var_1.a, vec4<u32>(var_3.a.x, 0u, var_1.a.x, var_1.a.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.b, u_input.a.x), vec2<i32>(-1i, -39004i))), ~5761i, ~2147483647i, countOneBits(u_input.a.x)), _wgslsmith_clamp_vec4_i32(select(u_input.b, firstTrailingBit(vec4<i32>(-2147483647i, -1i, var_3.b, var_1.b)), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)), u_input.b, firstTrailingBit(u_input.b << (var_3.a % vec4<u32>(32u))))));
    return var_0;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<i32> {
    let var_0 = func_4(1021f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), true), 806f)), _wgslsmith_f_op_f32(round(arg_0))));
    let var_1 = func_4(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f) - _wgslsmith_f_op_f32(f32(-1f) * -2889f))), 564f, 1121f).a.x;
    let var_2 = arg_1.a;
    let var_3 = -select(arg_1.b, (arg_1.b | arg_1.b) >> (_wgslsmith_mult_u32(var_2.x, arg_1.a.x) % 32u), true) < _wgslsmith_div_i32(u_input.a.x, ~5701i);
    var var_4 = vec2<i32>(1i, -21844i);
    return -vec3<i32>(24311i, 1i, -16507i);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_2(abs(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4992u, 51526u), vec4<u32>(arg_0.x, 0u, arg_0.x, 25761u)) ^ (vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x) << (vec4<u32>(0u, 30974u, 4294967295u, arg_0.x) % vec4<u32>(32u))), vec4<u32>(7185u, arg_0.x, arg_0.x, arg_0.x) >> (vec4<u32>(81734u, arg_0.x, 1u, arg_0.x) % vec4<u32>(32u)))), _wgslsmith_mult_i32(-25868i, select(_wgslsmith_mult_i32(arg_2.x, -arg_2.x), _wgslsmith_clamp_i32(0i, arg_2.x, -2147483647i), any(vec4<bool>(true, true, true, true)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(675f)) * _wgslsmith_f_op_f32(trunc(-711f)))))), -756f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(251f - -1083f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), -824f)), _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), 914f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) - _wgslsmith_f_op_f32(623f - _wgslsmith_div_f32(619f, 2194f))));
    var var_2 = firstLeadingBit(firstTrailingBit(u_input.b));
    let var_3 = vec4<u32>(max(reverseBits(_wgslsmith_div_u32(var_0.a.x, select(var_0.a.x, 71272u, false))), firstTrailingBit(~var_0.a.x)), 26910u, ~0u, ~_wgslsmith_mult_u32(var_0.a.x, 70541u));
    let var_4 = ~(~var_0.a.x);
    return Struct_2(vec4<u32>(~var_4 & (_wgslsmith_dot_vec4_u32(var_3, var_3) & 1u), _wgslsmith_add_u32(var_3.x, reverseBits(firstLeadingBit(24721u))), _wgslsmith_dot_vec2_u32(~arg_0.xy, vec2<u32>(50991u, 0u) | var_3.xy) ^ ~func_3(arg_0.x, 4294967295u), var_4), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<u32>(~_wgslsmith_add_u32(1u, ~67340u), 1u, min(abs(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 74179u)), min(~1u, 1u))), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(func_1(-126f, Struct_2(vec4<u32>(1u, 88110u, 0u, 0u), u_input.a.x), reverseBits(u_input.b)), max(select(vec3<i32>(u_input.a.x, -1i, u_input.b.x), u_input.b.zzz, vec3<bool>(false, true, false)), vec3<i32>(u_input.b.x, 2147483647i, 25933i))), u_input.b.wxx), -min(vec3<i32>(-42022i, 1i, u_input.a.x), countOneBits(u_input.b.yww)) << ((vec3<u32>(reverseBits(4294967295u), ~1u, firstTrailingBit(102793u)) | ~countOneBits(vec3<u32>(10730u, 1u, 1567u))) % vec3<u32>(32u)));
    var var_1 = Struct_3(-u_input.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-683f, -1288f, 174f, 230f) - vec4<f32>(201f, -275f, -321f, 146f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1320f, -320f, -594f, -1000f)))), vec3<bool>(all(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), false)), true, !select(true, true, all(vec3<bool>(false, true, true)))), var_0.a.x, vec2<u32>(~4294967295u, ~106245u));
    var_1 = Struct_3(0i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1186f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_1.b.x)), 741f)), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x))), !vec3<bool>(true, var_1.b.x >= _wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)), firstTrailingBit(0u) >= _wgslsmith_add_u32(0u, 0u)), _wgslsmith_clamp_u32(~1u, ~var_1.e.x, var_1.e.x), ~(~abs(func_5(vec3<u32>(var_0.a.x, 80356u, 1u), vec3<i32>(var_0.b, var_0.b, -42970i), u_input.b.wzx).a.zw)));
    var_0 = func_5(var_0.a.zxz, u_input.b.wzz, firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.yyy, vec3<i32>(var_1.a, 2147483647i, var_0.b)), vec3<i32>(u_input.a.x, -2147483647i, var_0.b)) | select(firstTrailingBit(u_input.b.www), vec3<i32>(2147483647i, u_input.b.x, var_0.b) ^ u_input.b.wzw, vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.e.x, -43344i, vec2<f32>(var_1.b.x, var_1.b.x), -vec2<i32>(8692i, 1i));
}

