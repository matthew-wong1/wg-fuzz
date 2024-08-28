struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(485f, -383f, 2417f);

var<private> global1: array<Struct_3, 31>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2797f, 481f, global0.x) + vec3<f32>(global0.x, global0.x, 286f)))))), true, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b, u_input.a, ~firstTrailingBit(4294967295u), u_input.a), select(abs(vec4<u32>(1u, 20668u, 4294967295u, 103406u)), vec4<u32>(max(38591u, u_input.b), u_input.a, u_input.a ^ u_input.b, u_input.a ^ 54953u), all(vec3<bool>(true, true, true)))), Struct_1(select(~vec3<u32>(u_input.a, u_input.b, 4294967295u), countOneBits(vec3<u32>(u_input.b, 1u, u_input.a)), false && all(vec3<bool>(true, true, false)))), reverseBits(vec2<u32>(~u_input.a, countOneBits(_wgslsmith_add_u32(33920u, 17065u)))));
    var var_1 = min(_wgslsmith_mod_vec3_i32(-reverseBits(firstTrailingBit(vec3<i32>(-2147483647i, -1i, 2147483647i))), _wgslsmith_mult_vec3_i32(vec3<i32>(~2147483647i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1804i, -14226i), vec3<i32>(-2147483647i, -44646i, 0i))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 0i), vec3<i32>(-7242i, -13441i, -19727i), vec3<i32>(-2147483647i, -37055i, 1i)))), vec3<i32>(1i, 1i, abs(_wgslsmith_clamp_i32(firstTrailingBit(0i), _wgslsmith_add_i32(1i, 14660i), ~(-53118i)))));
    let var_2 = Struct_3(countOneBits(firstTrailingBit(vec3<i32>(20879i, var_1.x, ~(-2147483647i)))), var_0.d, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, global0.x, -371f), _wgslsmith_f_op_vec3_f32(-var_0.a)))), var_0.a.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + global0.x) - _wgslsmith_f_op_f32(abs(var_0.a.x))), ~(~_wgslsmith_dot_vec3_u32(var_0.d.a, var_0.d.a)), var_0.d, var_0.e), Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a), !all(vec2<bool>(var_0.b, var_0.b)), ~_wgslsmith_add_u32(~4294967295u, 1u), var_0.d, vec2<u32>(_wgslsmith_sub_u32(~var_0.d.a.x, ~1u), select(~var_0.c, ~u_input.b, any(vec3<bool>(var_0.b, false, false))))));
    let var_3 = false;
    var var_4 = vec4<bool>(true, true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 419f))), !var_2.c.b);
    return select(!vec4<bool>(var_0.b, false, !any(vec3<bool>(var_0.b, var_3, var_0.b)), var_0.b), !vec4<bool>(any(var_4.xw), !var_2.c.b, !(var_2.a.x >= var_1.x), any(vec2<bool>(false, var_4.x)) && !var_4.x), !select(!vec4<bool>(var_2.c.b, false, true, true), select(!vec4<bool>(var_3, false, var_4.x, false), vec4<bool>(true, true, false, var_2.c.b), select(vec4<bool>(false, false, var_2.d.b, true), vec4<bool>(true, true, var_3, var_0.b), vec4<bool>(false, var_3, var_2.c.b, true))), select(any(var_4.wyy), true, var_3)));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec3<f32> {
    var var_0 = vec2<bool>(_wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x, 1i, -1i), vec3<i32>(-2082i, 24370i, -2147483647i))), arg_1.zwx >> (vec3<u32>(u_input.a, u_input.b, 0u) % vec3<u32>(32u))) <= _wgslsmith_add_i32(arg_1.x ^ arg_1.x, 0i), !(~_wgslsmith_mult_u32(u_input.b, u_input.b) != _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(138f * _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -701f))), _wgslsmith_f_op_f32(global0.x - -229f), 1610f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1800f, -1062f) - vec4<f32>(global0.x, 1660f, 2659f, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 771f, global0.x, global0.x) + vec4<f32>(-1452f, global0.x, -590f, -396f)))))));
    var var_2 = _wgslsmith_mod_i32(firstLeadingBit(-(-arg_1.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 28270u), vec2<u32>(10235u, 44470u)) % 32u))), -53344i);
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(select(var_1.xxy, var_1.wxz, any(vec3<bool>(false, var_0.x | false, var_0.x)))), all(func_3()), ~(~1u), Struct_1(abs(abs(~vec3<u32>(u_input.a, 0u, 1u)))), ~countOneBits((vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.a, 1u)) ^ ~vec2<u32>(u_input.b, 0u)));
    global0 = _wgslsmith_f_op_vec3_f32(var_1.ywy + vec3<f32>(153f, _wgslsmith_f_op_f32(-var_3.a.x), var_1.x));
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a.x, 391f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(535f)))))), -1508f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(244f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.a.x + var_3.a.x))))))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<u32>) -> vec4<u32> {
    global1 = array<Struct_3, 31>();
    var var_0 = global1[_wgslsmith_index_u32(~(~4294967295u), 31u)];
    global1 = array<Struct_3, 31>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_2(true, -abs(vec4<i32>(1i, var_0.a.x, 0i, -1i)), !select(vec4<bool>(false, true, true, var_0.c.b), vec4<bool>(arg_1, var_0.d.b, arg_1, arg_1), vec4<bool>(arg_1, var_0.d.b, var_0.c.b, false)))))), arg_1, 23592u, Struct_1(~var_0.d.d.a), var_0.b.a.xy);
    var var_2 = Struct_3(~(-vec3<i32>(firstLeadingBit(1i), _wgslsmith_sub_i32(var_0.a.x, -6802i), _wgslsmith_mod_i32(-2147483647i, var_0.a.x))), var_1.d, var_1, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d.a.x, var_1.a.x, global0.x)))))), false, u_input.b, Struct_1(select(_wgslsmith_sub_vec3_u32(arg_2, var_0.d.d.a), vec3<u32>(4294967295u, arg_2.x, 75113u), !vec3<bool>(arg_1, true, arg_1))), ~vec2<u32>(var_0.c.c, arg_0) << (~select(vec2<u32>(var_1.e.x, var_1.e.x), vec2<u32>(var_1.e.x, 4294967295u), true) % vec2<u32>(32u))));
    return vec4<u32>(var_0.b.a.x, arg_2.x, firstTrailingBit(40118u), 16976u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<u32>(reverseBits(_wgslsmith_mod_u32(u_input.b, u_input.a)), u_input.a, ~(~u_input.b)));
    var var_1 = false;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1070f))), _wgslsmith_f_op_f32(sign(-778f)));
    var var_3 = select(max(vec4<u32>(var_0.a.x, ~(~1068u), max(~u_input.a, ~u_input.a), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 54589u, u_input.b, var_0.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(59312u, u_input.a, u_input.a, u_input.b), vec4<u32>(1206u, 15384u, u_input.b, 0u)))), reverseBits(func_1(0u, true, var_0.a)) >> ((max(vec4<u32>(68210u, u_input.a, 65674u, 39744u), vec4<u32>(11211u, 6264u, u_input.a, 1u)) | (vec4<u32>(1u, u_input.b, var_0.a.x, 4294967295u) ^ vec4<u32>(u_input.a, u_input.a, 88844u, 4294967295u))) % vec4<u32>(32u))), ~firstTrailingBit(~vec4<u32>(4294967295u, var_0.a.x, 1u, 0u)), true);
    var_1 = all(vec4<bool>(true, true || all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, false, false, false)), true)) == true;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(select(-2046f, var_2.x, false)), -1136f))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 430f, -1445f) - vec3<f32>(var_2.x, 612f, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(571f, -1000f, 229f))))));
    var var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, -11545i) >> (vec2<u32>(u_input.a, var_3.x) % vec2<u32>(32u))), i32(-1i) * -2147483647i, countOneBits(~1i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, 29934i) & -1i, ~countOneBits(17257i))), vec4<i32>(~(-11716i), abs(_wgslsmith_mult_i32(i32(-1i) * -7401i, ~(-7026i))), _wgslsmith_clamp_i32(select(1i, min(-15276i, 2147483647i), true), reverseBits(firstTrailingBit(-7388i)), -3464i >> (u_input.a % 32u)), -2147483647i));
    var var_5 = vec4<bool>(true, all(vec4<bool>(true, all(vec3<bool>(true, true, false)), !(global0.x <= 144f), true)), true, !(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, var_2.x)), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_2.x))))))), var_4.x);
}

