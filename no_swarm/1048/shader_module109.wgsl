struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: vec3<f32> = vec3<f32>(-2276f, -1070f, 765f);

var<private> global2: array<vec4<f32>, 21>;

var<private> global3: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(global1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(652f - 300f)))));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-797f, 954f, 1913f), vec3<f32>(global1.x, var_0.a, global3.a.b.x)))), false))), vec3<f32>(1535f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-491f)) + global1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(789f)), 1000f))))), select(vec3<bool>(all(vec2<bool>(false, false)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false)), any(vec4<bool>(true, true, true, true))), vec3<bool>(false, false, true), vec3<bool>(!any(vec2<bool>(false, false)), true, !all(vec3<bool>(true, false, false))))));
    global3 = Struct_2(global0[_wgslsmith_index_u32(min(abs(firstTrailingBit(_wgslsmith_add_u32(u_input.c, 6608u))), ~65206u), 2u)]);
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_div_f32(-1624f, -1268f), var_0.a)) + _wgslsmith_f_op_vec3_f32(global3.a.b + vec3<f32>(_wgslsmith_f_op_f32(sign(2140f)), global3.a.b.x, _wgslsmith_f_op_f32(-1000f + -911f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(global3.a.a, var_0.b.x), _wgslsmith_div_f32(1249f, 116f), global1.x))), _wgslsmith_f_op_vec3_f32(-global3.a.b), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), false)))));
    let var_1 = vec3<bool>(!(!all(vec4<bool>(true, true, false, true))), true, true);
    return ~_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-26396i, _wgslsmith_mod_i32(31431i, -1985i)), -_wgslsmith_add_i32(2147483647i, -52187i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(41629i, 13903i, -43747i)), vec3<i32>(firstLeadingBit(-2147483647i), 60770i, _wgslsmith_dot_vec4_i32(vec4<i32>(4050i, 1i, -1i, -2147483647i), vec4<i32>(1i, 0i, 5443i, 1i)))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<bool>) -> i32 {
    var var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.a.a, 558f, global3.a.a), vec3<f32>(global1.x, 1000f, arg_0.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(109f, arg_0.a, global3.a.b.x) * vec3<f32>(1941f, global3.a.a, -153f)))));
    var var_2 = _wgslsmith_mod_i32(-arg_2.x, _wgslsmith_mod_i32(~(-(~47221i)), 68925i));
    var var_3 = func_3();
    return 0i;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_sub_i32(i32(-1i) * -33848i, i32(-1i) * -1i), 1i)), 18402i, firstLeadingBit(~func_2(global3.a, min(1u, 1u), vec3<i32>(11228i, -2147483647i, -43237i), vec2<bool>(false, false))), 12019i);
    var var_1 = Struct_3(abs(vec2<u32>(firstTrailingBit(~62100u), abs(arg_1))));
    let var_2 = var_0.x;
    var var_3 = Struct_2(Struct_1(-233f, vec3<f32>(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(global1.x, -282f), all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.a.a, global1.x))), 1507f)));
    let var_4 = Struct_1(-820f, vec3<f32>(504f, _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(ceil(arg_0.a.a))))), arg_2.a.a));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(0i, -20146i)), vec2<i32>(1i, ~(-17598i)), vec2<i32>(-1i, 1i))), -countOneBits(~0i) | select(1i, ~_wgslsmith_sub_i32(-31407i, -12379i), true));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.a - -1478f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-124f)), 356f), _wgslsmith_f_op_f32(sign(587f)))));
    global1 = arg_1.a.b;
    let var_1 = _wgslsmith_f_op_f32(round(-1926f));
    let var_2 = 0i ^ (~13428i & _wgslsmith_add_i32(~(i32(-1i) * -4521i), 1i & _wgslsmith_add_i32(-20282i, var_0.x)));
    return ~(var_0.x | var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global3.a.b * global3.a.b), _wgslsmith_f_op_vec3_f32(min(global3.a.b, global3.a.b)))), _wgslsmith_f_op_vec3_f32(abs(global3.a.b)), (u_input.c | 17261u) <= (u_input.b.x | u_input.a.x)))))));
    let var_0 = vec4<bool>(false, true, !(0u == u_input.a.x) | all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false)), true);
    var var_1 = ~((_wgslsmith_mult_vec4_u32(~vec4<u32>(54515u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(u_input.c, 1u, u_input.d, 18011u) | vec4<u32>(20975u, 21228u, u_input.b.x, u_input.b.x)) >> (firstTrailingBit(vec4<u32>(9433u, u_input.a.x, u_input.a.x, u_input.d) >> (vec4<u32>(u_input.a.x, 1u, 1u, 20630u) % vec4<u32>(32u))) % vec4<u32>(32u))) & max(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 6079u, u_input.c, 2258u)), ~vec4<u32>(0u, u_input.a.x, 31847u, u_input.c) | (vec4<u32>(4294967295u, 20131u, 1u, 4294967295u) >> (vec4<u32>(u_input.d, 31827u, u_input.d, 64313u) % vec4<u32>(32u)))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1218f, -905f, 1235f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f)), _wgslsmith_f_op_f32(select(global3.a.a, _wgslsmith_f_op_f32(step(-506f, global1.x)), all(vec4<bool>(var_0.x, true, false, true)) || var_0.x)), -1398f));
    var var_2 = countOneBits(vec4<u32>(~abs(_wgslsmith_div_u32(u_input.d, var_1.x)), ~1u, ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_1.x, u_input.c, var_1.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, 7309u, u_input.d), vec4<u32>(4294967295u, u_input.c, var_1.x, 104843u))), ~(~(u_input.c >> (u_input.b.x % 32u)))));
    var var_3 = vec4<i32>(firstLeadingBit(-1i), _wgslsmith_mod_i32(-abs(1i), -1i), select(1i, i32(-1i) * -4194i, select(1i, -670i, any(var_0.zx)) == firstTrailingBit(~1i)), _wgslsmith_mod_i32(-2147483647i, func_4(func_1(Struct_2(global3.a), max(u_input.c, 1u), Struct_2(Struct_1(326f, global3.a.b))), func_1(func_1(Struct_2(Struct_1(-602f, global3.a.b)), 10565u, Struct_2(global3.a)), _wgslsmith_div_u32(var_1.x, var_1.x), Struct_2(global3.a)), func_1(func_1(Struct_2(Struct_1(global1.x, global3.a.b)), var_1.x, Struct_2(global0[_wgslsmith_index_u32(u_input.d, 2u)])), 1u, func_1(Struct_2(global3.a), var_1.x, Struct_2(global0[_wgslsmith_index_u32(var_1.x, 2u)]))), true)));
    var_2 = ~vec4<u32>((var_2.x ^ select(5518u, u_input.b.x, true)) ^ select(25835u, max(47829u, 41710u), false || var_0.x), 1u, u_input.c, _wgslsmith_mod_u32(var_2.x, _wgslsmith_div_u32(_wgslsmith_add_u32(8017u, u_input.d), ~var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_3.x, var_3.x, ~var_3.x), var_3.xyz), _wgslsmith_clamp_u32(_wgslsmith_add_u32(~var_2.x, var_2.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 2084u), vec2<u32>(90544u, u_input.a.x)) ^ _wgslsmith_clamp_u32(~var_1.x, 15404u, min(var_2.x, var_1.x)), countOneBits(firstTrailingBit(22264u << (var_2.x % 32u)))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~86080u >> (countOneBits(1u) % 32u), ~u_input.c), 2u)], _wgslsmith_add_u32(1u, 1u), -vec3<i32>(-2147483647i, var_3.x, -var_3.x), select(vec2<bool>(var_3.x < var_3.x, all(vec3<bool>(false, var_0.x, var_0.x))), select(!vec2<bool>(false, var_0.x), !var_0.xw, vec2<bool>(true, var_0.x)), any(vec2<bool>(false, var_0.x)))));
}

