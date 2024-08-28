struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(336f, 330f, -151f), vec3<f32>(-875f, 1266f, -969f), vec3<f32>(-1013f, 1046f, -183f), vec3<f32>(-1128f, -548f, 833f), vec3<f32>(126f, 283f, 580f), vec3<f32>(921f, -554f, -248f), vec3<f32>(871f, 112f, -1267f), vec3<f32>(1248f, 1000f, -1218f), vec3<f32>(858f, -113f, -125f), vec3<f32>(-165f, -241f, -318f), vec3<f32>(612f, 849f, 167f), vec3<f32>(-1000f, -1328f, 524f), vec3<f32>(992f, 2611f, -528f), vec3<f32>(1988f, 231f, 1032f), vec3<f32>(1678f, -527f, 1215f), vec3<f32>(625f, -350f, -1438f));

var<private> global1: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = Struct_1(u_input.b);
    let var_1 = _wgslsmith_add_vec4_i32(~abs(u_input.a), vec4<i32>(-20519i, -(u_input.a.x & firstLeadingBit(51341i)), abs(select(u_input.c.x, 9914i, false)), ~18575i));
    let var_2 = Struct_1(i32(-1i) * -40932i);
    return vec2<u32>(_wgslsmith_div_u32((arg_1.x ^ arg_1.x) ^ arg_1.x, 4294967295u & ~arg_1.x) & abs(45714u), arg_1.x);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<i32>) -> bool {
    global0 = array<vec3<f32>, 16>();
    let var_0 = select(97109u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 27228u, 1u, arg_2.b.x), ~vec4<u32>(8255u, 1u, arg_2.e.x, arg_2.b.x)), arg_2.b.x) | (4294967295u << (_wgslsmith_add_u32(~1u, arg_2.e.x & arg_2.e.x) % 32u)), select(global1.x, !(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) < _wgslsmith_f_op_f32(-arg_1.x)), global1.x));
    var var_1 = Struct_2(~(-firstTrailingBit(-28193i & arg_3.x)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 8765u, var_0), vec3<u32>(arg_2.e.x, 4294967295u, arg_2.e.x)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, countOneBits(u_input.c.x), 1i, _wgslsmith_dot_vec3_i32(arg_0, arg_2.c.zzy)), -_wgslsmith_clamp_vec4_i32(arg_2.c, u_input.a, u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x + -571f), _wgslsmith_f_op_f32(trunc(-812f)))), _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1.x, -297f)))), _wgslsmith_div_vec2_u32(vec2<u32>(52114u, ~_wgslsmith_div_u32(17096u, var_0)), ~vec2<u32>(0u ^ arg_2.e.x, max(4294967295u, 0u))));
    var var_2 = !global1.zz;
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-119f)))))) < -1607f;
    return !(!(!(all(global1.yz) || any(vec4<bool>(arg_2.d, var_1.d, arg_2.d, var_3)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_div_i32(~select(u_input.a.x, u_input.c.x, any(vec4<bool>(true, global1.x, true, true))), _wgslsmith_clamp_i32(countOneBits(26579i), u_input.c.x, u_input.c.x)));
    var var_1 = vec4<i32>(-4325i, 2147483647i, _wgslsmith_mod_i32(-1i & _wgslsmith_add_i32(firstLeadingBit(34644i), -u_input.a.x), var_0.a), 858i);
    var_1 = max(~vec4<i32>(-var_1.x, _wgslsmith_div_i32(1i, 2147483647i), 8258i, _wgslsmith_mod_i32(-31436i, 2147483647i)), select(vec4<i32>(_wgslsmith_add_i32(var_0.a, 0i), _wgslsmith_div_i32(-6401i, var_1.x), abs(-2147483647i), var_0.a), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_0.a, 34724i, u_input.b), u_input.a), _wgslsmith_sub_i32(u_input.a.x, var_1.x) <= -694i)) & ~select(vec4<i32>(-1i, var_0.a, select(var_0.a, u_input.a.x, true), -1i), (vec4<i32>(13714i, var_1.x, var_0.a, var_0.a) & vec4<i32>(u_input.a.x, var_0.a, var_0.a, var_0.a)) & u_input.a, all(vec3<bool>(global1.x, true, global1.x)));
    global0 = array<vec3<f32>, 16>();
    let var_2 = Struct_1(-1i);
    return Struct_2(_wgslsmith_add_i32(~var_2.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.a, 1i, 60018i), vec3<i32>(-33170i, countOneBits(2147483647i), _wgslsmith_mod_i32(39611i, var_0.a)))), vec3<u32>(min(38356u, arg_0.x), abs(1u >> (1u % 32u)) >> (~arg_0.x % 32u), 1u), vec4<i32>(-1i) * -u_input.a, true, arg_0);
}

fn func_1() -> u32 {
    let var_0 = func_4(select(abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 5854u), select(vec2<u32>(0u, 11165u), vec2<u32>(75995u, 1u), false))), func_2(vec3<f32>(_wgslsmith_f_op_f32(min(-681f, -1466f)), 453f, _wgslsmith_f_op_f32(-564f + -741f)), vec2<u32>(~4294967295u, 1u)), !vec2<bool>(false, func_3(u_input.a.wzz, vec4<f32>(950f, 301f, 952f, -324f), Struct_2(21945i, vec3<u32>(23104u, 44470u, 1u), u_input.a, false, vec2<u32>(41528u, 1u)), vec3<i32>(u_input.b, u_input.c.x, 1i)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(256f, -1153f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-611f, -1414f), 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-475f - 1011f))))), _wgslsmith_div_f32(-1231f, -164f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(381f * -544f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1124f, _wgslsmith_div_f32(714f, 1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(963f))))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(false, false, global1.x), global1.yxw, global1.zxx)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(0u, 4294967295u, 4294967295u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 12415u, 22474u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u))));
    var var_1 = func_3(min(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, 0i), _wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(u_input.b, 0i, 32136i, -11651i)), _wgslsmith_mult_i32(u_input.a.x, -1i)), select(_wgslsmith_div_vec3_i32(vec3<i32>(-18949i, u_input.b, -33978i), vec3<i32>(-1i, 32774i, var_0.c.x)), vec3<i32>(-5086i, 53273i, u_input.b) & vec3<i32>(u_input.c.x, 2147483647i, var_0.c.x), true)), ~(var_0.c.xwy | var_0.c.zwz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(280f, -577f, -209f, -1045f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-574f, 282f, -1848f, 1418f) + vec4<f32>(964f, -1300f, 1000f, 809f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-514f, -988f, 548f, -591f)), vec4<f32>(-1117f, -1000f, -1000f, -1014f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(671f, 1337f, -1586f, -445f) + vec4<f32>(1000f, -223f, 1646f, 1159f)) + vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(287f, 1898f, -1000f, -1679f)))))), var_0, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, 1i, -var_0.c.x), u_input.a.wzw) | var_0.c.wzz);
    var var_2 = ~(-vec3<i32>(2147483647i, _wgslsmith_mod_i32(u_input.b, 0i << (var_0.e.x % 32u)), select(abs(-2147483647i), i32(-1i) * -19501i, 28014i < var_0.c.x)));
    return ~_wgslsmith_div_u32(max(var_0.b.x, 4294967295u), select(var_0.e.x, 22719u, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(570f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1151f)) + -227f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1444f))))));
    var var_1 = global1.yxz;
    global1 = vec4<bool>(!(14321i == (u_input.b >> (reverseBits(1u) % 32u))), all(vec4<bool>(true != all(vec2<bool>(var_1.x, true)), all(vec4<bool>(true, global1.x, true, global1.x)), true, false)), true, var_1.x);
    let var_2 = _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(1u, ~1u, min(1u, 0u), 1u)), vec4<u32>(23763u, func_1(), 1u, 63407u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~min(vec4<u32>(1u, 1u, 51457u, 867u), vec4<u32>(4294967295u, 26164u, 4294967295u, 1u)))) % vec4<u32>(32u));
    global1 = vec4<bool>(all(var_1.xx), all(vec2<bool>(any(vec3<bool>(false, var_1.x, global1.x)), false)), !(!global1.x), true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2871f, 1749f) * _wgslsmith_f_op_f32(trunc(-476f))))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(764f - var_3)), -1314f) - vec2<f32>(-235f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1472f + var_3) - _wgslsmith_f_op_f32(-var_3)))));
    var_1 = vec3<bool>(false, var_1.x, var_1.x);
    var var_5 = Struct_2(-1i, ~(~var_2.zww), vec4<i32>(firstLeadingBit(u_input.b) ^ u_input.a.x, 0i, 7527i << (func_2(global0[_wgslsmith_index_u32(4294967295u, 16u)], var_2.wx).x % 32u), u_input.c.x) | (firstTrailingBit(vec4<i32>(0i, -2147483647i, -1i, -2147483647i)) ^ -vec4<i32>(-30466i, 35565i, -1i, 43512i)), ~1i <= ~max(u_input.b, countOneBits(1i)), abs(vec2<u32>(var_2.x, _wgslsmith_clamp_u32(countOneBits(75198u), var_2.x, func_1()))));
    let x = u_input.a;
    s_output = StorageBuffer(-114f, max(~(~(~var_5.b)), ((vec3<u32>(var_5.b.x, var_2.x, 44160u) & var_2.xyx) << (select(vec3<u32>(var_2.x, 51472u, var_2.x), vec3<u32>(38779u, var_2.x, 74061u), vec3<bool>(false, var_1.x, global1.x)) % vec3<u32>(32u))) | ~(vec3<u32>(1u, var_2.x, 1u) & vec3<u32>(0u, 38862u, var_2.x))), var_2.wx, 58345i);
}

