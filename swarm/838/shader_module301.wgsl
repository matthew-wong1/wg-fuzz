struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: array<vec2<u32>, 8>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(-654f, vec3<u32>(7797u, 1u, 4294967295u), -1i), true, 4294967295u, vec2<f32>(731f, 547f)), Struct_2(Struct_1(351f, vec3<u32>(24816u, 27869u, 116799u), -86633i), true, 0u, vec2<f32>(189f, 1977f)), Struct_2(Struct_1(-1268f, vec3<u32>(0u, 7740u, 68406u), 45279i), false, 1u, vec2<f32>(-166f, 396f)), Struct_2(Struct_1(-646f, vec3<u32>(29907u, 107591u, 39275u), 1i), true, 4294967295u, vec2<f32>(167f, -1000f)), Struct_2(Struct_1(1000f, vec3<u32>(4294967295u, 4294967295u, 4294967295u), -1i), true, 49491u, vec2<f32>(1125f, 841f)), Struct_2(Struct_1(1450f, vec3<u32>(49003u, 4294967295u, 99907u), -15456i), true, 1u, vec2<f32>(495f, 571f)), Struct_2(Struct_1(-1791f, vec3<u32>(75647u, 4294967295u, 0u), 21797i), true, 4294967295u, vec2<f32>(-764f, -953f)), Struct_2(Struct_1(-1408f, vec3<u32>(11725u, 19798u, 26383u), 2147483647i), false, 1u, vec2<f32>(-368f, 564f)), Struct_2(Struct_1(604f, vec3<u32>(57849u, 10837u, 68332u), -19884i), true, 1u, vec2<f32>(568f, -289f)), Struct_2(Struct_1(418f, vec3<u32>(4294967295u, 4294967295u, 54202u), -24069i), false, 13649u, vec2<f32>(112f, 1976f)), Struct_2(Struct_1(2227f, vec3<u32>(1u, 23992u, 42693u), i32(-2147483648)), true, 0u, vec2<f32>(-1184f, 1079f)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: u32, arg_3: u32) -> u32 {
    return arg_3;
}

fn func_2() -> bool {
    let var_0 = vec3<f32>(global2.a.a, -394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f * _wgslsmith_f_op_f32(1f * 255f))));
    global0 = vec4<bool>(!global2.b, false, false, all(select(select(!global0.wz, !vec2<bool>(global2.b, false), select(vec2<bool>(global2.b, global0.x), global0.yw, vec2<bool>(true, global2.b))), vec2<bool>(global0.x, false), !select(vec2<bool>(global0.x, true), vec2<bool>(false, global2.b), global0.x))));
    global2 = Struct_2(global2.a, true, _wgslsmith_clamp_u32(func_3(countOneBits(-vec2<i32>(-1i, -30736i)), global2.a.b.yx, _wgslsmith_mult_u32(u_input.b.x, 4294967295u ^ global2.a.b.x), ~2154u), ~select(21915u, global2.c >> (3984u % 32u), global2.a.c <= 24244i), ~4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global2.d.x)), global2.a.a)))), _wgslsmith_f_op_f32(f32(-1f) * -1570f)));
    let var_2 = Struct_2(global2.a, !global2.b, ~global2.a.b.x, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, -900f))))), _wgslsmith_f_op_f32(494f * 3025f)));
    return global2.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = vec3<bool>(global0.x, global2.b, !any(vec2<bool>(!global0.x, all(arg_0))));
    global2 = Struct_2(Struct_1(global2.d.x, global2.a.b, min(abs(_wgslsmith_div_i32(15348i, arg_2.c)), u_input.a.x)), func_2(), _wgslsmith_add_u32(~39328u, reverseBits(u_input.e)), vec2<f32>(global2.a.a, arg_2.a));
    let var_1 = select(arg_0.wxw, select(select(!select(global0.wwx, global0.zzx, true), var_0, !global0.x), select(vec3<bool>(arg_0.x, all(arg_0.xw), arg_0.x), var_0, select(select(vec3<bool>(global0.x, true, arg_0.x), vec3<bool>(false, true, false), true), !vec3<bool>(var_0.x, false, false), select(var_0, var_0, false))), vec3<bool>(any(arg_0.wwx) & (arg_2.b.x >= 4294967295u), true, false)), vec3<bool>(any(vec3<bool>(any(vec4<bool>(true, true, global2.b, true)), true, select(var_0.x, var_0.x, global0.x))), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + _wgslsmith_f_op_f32(-global2.d.x)) == -203f));
    var var_2 = arg_2;
    var_2 = Struct_1(arg_1, ~vec3<u32>(u_input.e, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.c, 0u), global1[_wgslsmith_index_u32(var_2.b.x, 8u)]), ~vec2<u32>(4294967295u, 0u)), 17414u), ~(-u_input.a.x));
    return vec4<bool>(min(-firstTrailingBit(0i), -u_input.c & 0i) <= -2147483647i, all(!vec3<bool>(true, arg_0.x, false)) | arg_0.x, true, var_1.x);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<u32>) -> vec3<u32> {
    var var_0 = global3[_wgslsmith_index_u32(1u, 11u)];
    var var_1 = !global0.x;
    global2 = Struct_2(Struct_1(-909f, _wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(var_0.a.b, arg_2), max(_wgslsmith_div_vec3_u32(global2.a.b, global2.a.b), arg_2)), 0i), any(func_4(vec4<bool>(false, select(global2.b, var_0.b, false), func_2(), false), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.x), -1040f)), Struct_1(global2.a.a, ~vec3<u32>(4294967295u, arg_2.x, 4294967295u), -24036i), max(vec4<u32>(1u, arg_2.x, var_0.a.b.x, 55070u), ~vec4<u32>(var_0.c, 0u, 1u, arg_2.x)))), ~28930u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.d.x)), -328f)));
    let var_2 = min(66106u, reverseBits(global2.a.b.x));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.d.x), u_input.b.zyz, u_input.a.x), any(!vec4<bool>(arg_2.x >= var_0.c, false, global2.b | global0.x, true)), ~4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global2.d, vec2<f32>(-123f, 1000f))) * _wgslsmith_f_op_vec2_f32(-var_0.d)));
    return ~global2.a.b | global2.a.b;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec2<i32>) -> bool {
    global3 = array<Struct_2, 11>();
    global0 = arg_2;
    var var_0 = global2.a.b;
    var var_1 = Struct_1(arg_1.x, abs(vec3<u32>(min(_wgslsmith_sub_u32(4294967295u, global2.c), _wgslsmith_div_u32(u_input.d, u_input.e)), select(arg_0.x << (4294967295u % 32u), _wgslsmith_div_u32(39604u, 2335u), arg_2.x), arg_0.x)), _wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, -2147483647i), ~countOneBits(firstTrailingBit(-2147483647i))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-131f))) + 1000f), ~(vec3<u32>(~global2.a.b.x, 33049u, countOneBits(arg_0.x)) | abs(~arg_0)), 34502i);
    return ~(~(~select(global2.c, global2.a.b.x, false))) >= (30611u & abs(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec4_i32(u_input.a, min(vec4<i32>(-1i, -43838i, 1i, abs(15977i)), u_input.a));
    let var_1 = Struct_2(global2.a, func_5(func_1(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(646f, 1256f)) + _wgslsmith_f_op_f32(-global2.d.x)), (global2.a.b >> (vec3<u32>(4294967295u, u_input.d, global2.c) % vec3<u32>(32u))) << (countOneBits(vec3<u32>(u_input.b.x, 0u, u_input.b.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1191f, 1907f, 822f, global2.d.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(391f, global2.d.x, 1078f, -376f), vec4<f32>(-1057f, global2.d.x, 112f, global2.a.a)))), vec4<bool>(!global0.x | true, any(!global0.wzy), all(func_4(vec4<bool>(global0.x, global0.x, global0.x, global0.x), -503f, Struct_1(global2.d.x, vec3<u32>(global2.c, global2.a.b.x, 55538u), global2.a.c), vec4<u32>(11142u, u_input.e, global2.c, u_input.b.x))), all(func_4(vec4<bool>(global2.b, false, global2.b, false), -1000f, Struct_1(1007f, vec3<u32>(u_input.e, 23451u, 5831u), -25180i), u_input.b).yy)), var_0.xx), ~(~max(u_input.e, global2.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, global2.d.x) + _wgslsmith_f_op_vec2_f32(max(global2.d, vec2<f32>(global2.d.x, -944f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-233f, global2.d.x) * global2.d) + vec2<f32>(global2.a.a, -964f)))));
    let var_2 = false;
    var var_3 = global0.x;
    let var_4 = u_input.b;
    var_0 = _wgslsmith_div_vec4_i32(-vec4<i32>(min(select(var_0.x, -9296i, var_2), ~2077i), var_0.x, min(var_1.a.c, -12353i) >> (_wgslsmith_add_u32(1u, 0u) % 32u), u_input.c ^ _wgslsmith_sub_i32(var_1.a.c, global2.a.c)), _wgslsmith_sub_vec4_i32(reverseBits(~(vec4<i32>(var_0.x, 33079i, u_input.c, -18089i) << (u_input.b % vec4<u32>(32u)))), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, firstTrailingBit(vec2<u32>(u_input.e, global2.a.b.x)));
}

