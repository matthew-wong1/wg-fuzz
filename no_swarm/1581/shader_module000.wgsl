struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(true, false)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(true, false)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, true)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = 0i;
    var var_1 = vec4<i32>(reverseBits(u_input.b.x), arg_0.b.x, u_input.b.x, -36981i) << (~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(arg_2.x, arg_0.c.x, arg_0.a, arg_0.a), ~arg_2), countOneBits(vec4<u32>(arg_2.x, 4294967295u, 0u, arg_2.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, arg_0.c.x, arg_2.x, 27049u), arg_2)) % vec4<u32>(32u));
    let var_2 = Struct_2(-26364i);
    var var_3 = Struct_1(arg_0.c.x, var_1.yx >> (vec2<u32>(arg_2.x, arg_2.x) % vec2<u32>(32u)), vec3<u32>(select(arg_0.d, 51224u, true) >> (arg_2.x % 32u), arg_2.x, arg_2.x), select(abs(97054u), ~arg_0.a, !any(vec4<bool>(false, true, true, true)) | true));
    let var_4 = arg_0;
    return 71166u;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(1u), ~(~min(446u, 59353u) >> (1u % 32u))), 19u)];
    var var_1 = _wgslsmith_mod_u32(func_3(Struct_1(4294967295u, vec2<i32>(_wgslsmith_add_i32(-19677i, 10993i), u_input.b.x >> (4294967295u % 32u)), countOneBits(~vec3<u32>(1u, 0u, 68463u)), select(~78779u, _wgslsmith_mult_u32(7219u, 31427u), false)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(404f, 550f, global0.x, -1563f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(552f, 472f, 1293f, global0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, arg_0, -1549f))))), vec4<u32>(1u, 1u, 1u, 1u), global0.wzx), ~_wgslsmith_mod_u32(0u, ~abs(0u)));
    let var_2 = Struct_4(~reverseBits(reverseBits(vec4<u32>(677u, 1u, 1u, 20131u))), _wgslsmith_f_op_vec3_f32(-global0.xxx), vec4<u32>(~4294967295u, func_3(Struct_1(~37532u, select(u_input.a, vec2<i32>(3913i, -39216i), vec2<bool>(false, true)), vec3<u32>(1381u, 36713u, 4294967295u), 53073u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(286f, 336f, 211f, -575f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 0u, 0u), countOneBits(vec4<u32>(4294967295u, 70710u, 4294967295u, 33708u)), vec4<u32>(26611u, 20062u, 15235u, 81257u)), vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_div_f32(arg_0, arg_0), -465f)), 1u, _wgslsmith_mult_u32(6678u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), ~vec2<u32>(0u, 4294967295u)))), Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), var_0.a.x, vec2<u32>(9887u, ~(~1u))));
    let var_3 = abs(~reverseBits(vec2<i32>(u_input.b.x, 0i)));
    var var_4 = _wgslsmith_mult_vec4_u32(vec4<u32>(43120u, abs(8345u), 4294967295u, 21179u), ~vec4<u32>(var_2.c.x, 6886u, var_2.d.c.x, 12101u)) >> (~vec4<u32>(_wgslsmith_dot_vec3_u32(~var_2.c.wwx, var_2.a.yyy << (vec3<u32>(var_2.d.c.x, var_2.a.x, var_2.d.c.x) % vec3<u32>(32u))), firstLeadingBit(var_2.d.c.x), (var_2.c.x ^ 7845u) >> (~var_2.c.x % 32u), var_2.d.c.x) % vec4<u32>(32u));
    return var_2.d.a;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.zwy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.zzy), global0.yxy, vec3<bool>(true, true, true))))), global0.xwx);
    var var_1 = Struct_4(~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(10268u, 4294967295u, 16588u, 0u), countOneBits(vec4<u32>(1u, 1u, 4294967295u, 0u)), ~vec4<u32>(105511u, 0u, 20693u, 92816u))), global0.yzx, ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(37930u, 45179u, 23792u, 4294967295u), vec4<u32>(7663u, 46916u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u))) << (~(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), Struct_3(func_2(_wgslsmith_div_f32(-1147f, _wgslsmith_f_op_f32(527f + 451f))), !(~u_input.b.x <= u_input.a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(min(0u, 70730u), _wgslsmith_sub_u32(4294967295u, 60673u)), ~(~vec2<u32>(51681u, 1u)), vec2<u32>(_wgslsmith_mod_u32(48293u, 53505u), abs(22135u)))));
    var var_2 = min(~(~_wgslsmith_sub_u32(~5710u, ~var_1.d.c.x)), 30521u);
    let var_3 = global1[_wgslsmith_index_u32(var_1.d.c.x, 19u)];
    var_1 = Struct_4(vec4<u32>(abs(var_1.d.c.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.a.x, var_1.a.x)), ~var_1.d.c), 44688u), ~(~(~0u)), (351u & var_1.a.x) & abs(var_1.a.x >> (var_1.d.c.x % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.zzz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.yzw, vec3<f32>(-1294f, global0.x, global0.x)))))) * var_0), firstLeadingBit(abs(min(min(var_1.c, var_1.c), var_1.a))), var_1.d);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(271f)), 490f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(388f, global0.x) * -244f)), -293f, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(global0.x + global0.x)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -774f), -1528f))), global0.x, _wgslsmith_f_op_f32(-267f + _wgslsmith_f_op_f32(-global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1141f)), 502f)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(global0.x))) * _wgslsmith_f_op_f32(abs(-208f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -987f), global0.x, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -421f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1305f, global0.x, global0.x)) + vec4<f32>(1000f, -1358f, -482f, global0.x)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, global0.x, -3058f), vec4<f32>(1380f, global0.x, -220f, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(485f, 564f, global0.x, 189f) + vec4<f32>(global0.x, -2001f, global0.x, -1383f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + global0.x), global0.x, _wgslsmith_f_op_f32(select(-2226f, -1528f, true)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), 251f, _wgslsmith_f_op_f32(-448f * global0.x), _wgslsmith_f_op_f32(round(global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(431f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1375f + -760f), global0.x, -1245f, global0.x))) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, 1f)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(global0.x + 617f))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -786f) - 1136f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-1306f - global0.x), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, ~(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.a.x, u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.a.x, -1i), vec4<i32>(10506i, -2147483647i, u_input.a.x, -4939i))) | vec4<i32>(2147483647i, _wgslsmith_clamp_i32(-6126i, u_input.b.x, u_input.b.x), _wgslsmith_add_i32(u_input.b.x, 23954i), _wgslsmith_dot_vec4_i32(vec4<i32>(4786i, -49273i, u_input.b.x, 0i), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(218f)) + 254f), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(global0.x, -1038f)), true)), _wgslsmith_f_op_f32(-global0.x), -244f), vec2<u32>(_wgslsmith_mod_u32(76833u, 1u), select(119062u, 4294967295u, true) ^ ~1u));
}

