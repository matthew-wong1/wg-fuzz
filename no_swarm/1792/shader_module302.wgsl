struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<bool> {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_clamp_vec4_u32(countOneBits(firstTrailingBit(~(~vec4<u32>(0u, u_input.b, 4294967295u, u_input.b)))), ~(~(vec4<u32>(1u, u_input.a, u_input.b, u_input.d.x) >> (vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b) % vec4<u32>(32u)))), reverseBits(~(~(vec4<u32>(1u, 32327u, 4294967295u, 1u) & vec4<u32>(1u, 39578u, 2535u, u_input.d.x)))));
    let var_2 = min(abs(firstTrailingBit(abs(vec3<u32>(u_input.d.x, 31838u, 48425u) << (vec3<u32>(4294967295u, 70512u, 36221u) % vec3<u32>(32u))))), (var_1.zzz | ~(~var_1.ywy)) | _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, 8837u, 2979u), vec3<u32>(u_input.b, u_input.a, 21368u), firstTrailingBit(vec3<u32>(5356u, u_input.d.x, 68615u))), ~var_1.yyx));
    let var_3 = Struct_2(true, ~(~0u), Struct_1(vec3<i32>(-1i, _wgslsmith_sub_i32(select(u_input.e, 2147483647i, false), var_0.x), 10205i), -(i32(-1i) * -var_0.x), vec4<f32>(_wgslsmith_f_op_f32(max(-721f, _wgslsmith_f_op_f32(floor(1268f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1171f * 738f), -1399f)), 340f, _wgslsmith_f_op_f32(580f + 758f)), _wgslsmith_div_vec2_f32(vec2<f32>(-296f, _wgslsmith_f_op_f32(845f + 509f)), vec2<f32>(-168f, _wgslsmith_f_op_f32(f32(-1f) * -2833f)))));
    var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.wxy, vec3<u32>(~1u, var_2.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_1.x, 0u, u_input.d.x), var_1.x | 4294967295u))), 1u, var_2.x, firstLeadingBit(_wgslsmith_mod_u32(u_input.d.x, 83942u)));
    return vec4<bool>(var_3.a, !all(select(vec3<bool>(false, var_3.a, true), select(vec3<bool>(true, true, false), vec3<bool>(var_3.a, false, var_3.a), var_3.a), !var_3.a)), var_3.c.c.x < var_3.c.d.x, -var_0.x < _wgslsmith_mult_i32((global0[_wgslsmith_index_u32(var_2.x, 3u)] | 1190i) & 1i, reverseBits(-1i)));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = false;
    global0 = array<i32, 3>();
    var var_1 = select(!(!select(!vec4<bool>(var_0, false, var_0, true), !vec4<bool>(var_0, var_0, var_0, var_0), select(false, true, false))), !func_3(), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x) * 1830f))) >= _wgslsmith_f_op_f32(-arg_0.d.x));
    var var_2 = reverseBits(~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.b, u_input.a, 4294967295u)), vec3<u32>(_wgslsmith_mod_u32(u_input.b, 63159u), _wgslsmith_mod_u32(1u, u_input.d.x), u_input.b)));
    let var_3 = u_input.c.x;
    return func_3().x || true;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_3(~1u, firstLeadingBit(0u), arg_0.e, Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(0u, 3u)], -(~global0[_wgslsmith_index_u32(36600u, 3u)]), 1i), 0i, arg_0.e.c.c, _wgslsmith_f_op_vec2_f32(arg_0.d.c.wy + arg_0.d.c.wz)), arg_0.c);
    global0 = array<i32, 3>();
    var var_1 = arg_0.c.c.d.x;
    let var_2 = Struct_2(!select(arg_0.c.a || true, !var_0.c.a | !var_0.c.a, var_0.c.a), 4294967295u, arg_0.e.c);
    global0 = array<i32, 3>();
    return var_2.c;
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(289f, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) - 327f)))), -241f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1369f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1635f * 1000f)))))));
    var var_1 = Struct_3(u_input.a, 56343u, Struct_2(any(vec4<bool>(true, true, true, true)), _wgslsmith_div_u32(u_input.a, u_input.d.x) | ~u_input.d.x, Struct_1(u_input.c.zyx, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(1u, 3u)] ^ u_input.c.x, global0[_wgslsmith_index_u32(abs(u_input.d.x), 3u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2048f, 1117f, var_0.x, -1000f) + var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yy + vec2<f32>(162f, var_0.x))))), func_4(Struct_3(0u, ~u_input.a ^ u_input.a, Struct_2(func_2(Struct_1(vec3<i32>(8312i, u_input.c.x, -6439i), u_input.c.x, vec4<f32>(1357f, var_0.x, var_0.x, -696f), var_0.ww)), min(0u, 0u), Struct_1(u_input.c.ywy, global0[_wgslsmith_index_u32(0u, 3u)], var_0, vec2<f32>(var_0.x, var_0.x))), Struct_1(max(vec3<i32>(u_input.c.x, u_input.e, -11603i), vec3<i32>(u_input.c.x, 30729i, -56394i)), _wgslsmith_sub_i32(22935i, 25907i), _wgslsmith_f_op_vec4_f32(var_0 + vec4<f32>(-706f, -1000f, var_0.x, var_0.x)), var_0.yx), Struct_2(any(vec2<bool>(false, false)), 0u, Struct_1(vec3<i32>(-36247i, u_input.e, u_input.c.x), 2147483647i, vec4<f32>(var_0.x, 1350f, var_0.x, var_0.x), var_0.xw)))), Struct_2(all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)), min(1u, _wgslsmith_div_u32(_wgslsmith_add_u32(53048u, 27632u), firstLeadingBit(1u))), func_4(Struct_3(firstTrailingBit(u_input.d.x), u_input.a, Struct_2(true, 61515u, Struct_1(vec3<i32>(1i, -1i, global0[_wgslsmith_index_u32(u_input.b, 3u)]), global0[_wgslsmith_index_u32(4294967295u, 3u)], var_0, var_0.wy)), Struct_1(u_input.c.zyw, global0[_wgslsmith_index_u32(4294967295u, 3u)], vec4<f32>(var_0.x, var_0.x, -1022f, 1000f), vec2<f32>(var_0.x, var_0.x)), Struct_2(false, u_input.a, Struct_1(u_input.c.wzw, u_input.e, var_0, vec2<f32>(-104f, 1019f)))))));
    var_1 = Struct_3(firstLeadingBit(4294967295u) >> (var_1.c.b % 32u), _wgslsmith_mod_u32(~(var_1.c.b | ~u_input.a), 27026u), Struct_2(var_0.x == _wgslsmith_f_op_f32(var_0.x - func_4(Struct_3(4294967295u, var_1.c.b, var_1.c, Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 12294i, -2147483647i), 82774i, var_1.c.c.c, vec2<f32>(var_1.e.c.d.x, var_1.c.c.c.x)), var_1.c)).c.x), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, 4294967295u, var_1.b)), ~min(vec3<u32>(u_input.d.x, u_input.a, var_1.b), vec3<u32>(45944u, u_input.b, 40972u))), Struct_1(~(~u_input.c.yxx), _wgslsmith_dot_vec4_i32(vec4<i32>(-3896i, var_1.e.c.a.x, 58368i, 0i), vec4<i32>(u_input.e, u_input.e, 1i, global0[_wgslsmith_index_u32(var_1.a, 3u)])), vec4<f32>(_wgslsmith_f_op_f32(step(-1064f, var_1.c.c.d.x)), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(abs(2203f)), _wgslsmith_f_op_f32(-795f + var_1.e.c.d.x)), vec2<f32>(_wgslsmith_f_op_f32(step(var_0.x, -759f)), var_0.x))), func_4(Struct_3(var_1.b, abs(31055u), var_1.c, func_4(Struct_3(var_1.a, u_input.d.x, var_1.e, var_1.d, var_1.c)), Struct_2(any(vec3<bool>(var_1.c.a, var_1.e.a, var_1.e.a)), u_input.b, func_4(Struct_3(72319u, u_input.b, var_1.e, Struct_1(u_input.c.yzy, var_1.c.c.a.x, var_1.d.c, vec2<f32>(1034f, 1542f)), var_1.c))))), var_1.c);
    var_1 = Struct_3(abs(u_input.b), 1u, Struct_2(var_1.e.a, 1578u, Struct_1(reverseBits(vec3<i32>(-31892i, 46501i, -26i)), ~max(1i, -4493i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.d.c), vec4<f32>(var_1.d.d.x, 266f, 1227f, var_0.x), vec4<bool>(var_1.e.a, true, false, true))), func_4(Struct_3(36747u, u_input.a, Struct_2(var_1.c.a, u_input.b, Struct_1(vec3<i32>(var_1.e.c.b, 27624i, 2147483647i), global0[_wgslsmith_index_u32(19327u, 3u)], var_1.d.c, vec2<f32>(var_1.c.c.d.x, -1222f))), Struct_1(var_1.d.a, var_1.e.c.a.x, var_1.e.c.c, vec2<f32>(var_1.d.d.x, var_0.x)), Struct_2(var_1.e.a, 4294967295u, var_1.d))).d)), Struct_1(vec3<i32>(-54501i, _wgslsmith_sub_i32(-42091i, 0i), ~2147483647i), -18404i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, var_1.b, 29655u) << (vec4<u32>(18035u, 1u, 3185u, 7273u) % vec4<u32>(32u)), ~vec4<u32>(0u, 4294967295u, 4294967295u, 3168u)) % 32u), var_0, _wgslsmith_f_op_vec2_f32(var_1.c.c.d * vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -473f)))), Struct_2(all(select(vec3<bool>(true, false, false), !vec3<bool>(true, true, var_1.e.a), var_1.c.a)), u_input.d.x, var_1.d));
    var_1 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mult_u32(var_1.e.b, var_1.c.b) << (~0u % 32u), ~(~25091u), firstTrailingBit(firstLeadingBit(62803u))), reverseBits(min(firstLeadingBit(vec4<u32>(30671u, var_1.e.b, var_1.a, 19280u)), reverseBits(vec4<u32>(u_input.a, u_input.a, 83636u, u_input.b))))), ~4235u, Struct_2(-764i >= u_input.c.x, _wgslsmith_div_u32(43819u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, 4500u) & vec4<u32>(4294967295u, 0u, var_1.e.b, 32158u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, var_1.a, u_input.d.x, 69952u), vec4<u32>(u_input.d.x, u_input.b, var_1.c.b, u_input.d.x)))), var_1.d), Struct_1(var_1.d.a, max(countOneBits(func_4(Struct_3(836u, 58021u, var_1.e, Struct_1(var_1.d.a, u_input.c.x, var_1.c.c.c, vec2<f32>(-591f, var_1.e.c.d.x)), var_1.e)).b), abs(abs(var_1.e.c.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0, var_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.c.c.d.x, var_0.x, 1143f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.c.c.d.x, _wgslsmith_f_op_f32(ceil(var_1.e.c.d.x)))))), var_1.e);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    let var_0 = u_input.e;
    var var_1 = firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(-u_input.e, u_input.e, ~global0[_wgslsmith_index_u32(u_input.d.x, 3u)]) >> (_wgslsmith_sub_u32(~u_input.d.x, u_input.a) % 32u), 24707i, ~1i));
    var var_2 = func_1();
    let var_3 = func_1();
    var var_4 = func_2(var_3.c);
    var var_5 = vec4<i32>(-21228i, var_1.x, _wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_clamp_vec4_i32(-select(vec4<i32>(14211i, global0[_wgslsmith_index_u32(var_2.b, 3u)], -1i, var_1.x), vec4<i32>(var_0, -31294i, var_1.x, global0[_wgslsmith_index_u32(var_2.b, 3u)]), true), vec4<i32>(u_input.c.x, ~17807i, var_1.x, -global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec4<i32>(abs(var_3.c.a.x), ~var_2.c.b, u_input.e >> (u_input.a % 32u), 3762i))), global0[_wgslsmith_index_u32(reverseBits(4294967295u), 3u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(u_input.b, firstLeadingBit(_wgslsmith_div_u32(var_3.b, var_3.b))), select(countOneBits(u_input.c.zx), _wgslsmith_mod_vec2_i32(-u_input.c.xz, vec2<i32>(u_input.e, var_3.c.b) << (vec2<u32>(var_2.b, 41138u) % vec2<u32>(32u))), vec2<bool>(any(select(vec2<bool>(false, var_3.a), vec2<bool>(true, var_2.a), vec2<bool>(false, var_2.a))), func_3().x)), ~(~(~var_2.b)), ~(~vec2<u32>(~u_input.d.x, var_3.b ^ 5701u)));
}

