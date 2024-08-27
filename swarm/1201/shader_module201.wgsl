struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(4294967295u, vec3<f32>(-1353f, -1256f, 787f)), Struct_1(1u, vec3<f32>(-330f, 435f, 1037f)), Struct_1(1u, vec3<f32>(1951f, 1000f, 168f)), Struct_1(0u, vec3<f32>(-1005f, -1000f, 626f)), Struct_1(63241u, vec3<f32>(438f, -274f, 375f)));

var<private> global3: array<Struct_2, 21>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global1 = _wgslsmith_f_op_f32(trunc(-837f));
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-701f)), _wgslsmith_f_op_f32(907f * -1690f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(791f, -879f, false))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-583f, _wgslsmith_f_op_f32(ceil(-255f))) * 1179f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1000f, 595f))))))));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(1u, 5u)], !(true && arg_0.x), global2[_wgslsmith_index_u32(abs(u_input.c), 5u)], u_input.a.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-248f, 1444f, -866f, _wgslsmith_div_f32(var_0, _wgslsmith_div_f32(-1989f, var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(215f, var_0, 2420f, 575f)), vec4<f32>(316f, var_0, 373f, -2141f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-452f, var_0, 1522f, 578f) * vec4<f32>(var_0, var_0, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1672f, var_0, 992f, var_0)))))));
    global2 = array<Struct_1, 5>();
    global1 = 1275f;
    return firstTrailingBit(~0u);
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(u_input.c, 5u)], true, Struct_1(~func_3(!vec2<bool>(global0[_wgslsmith_index_u32(54530u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)])), vec3<f32>(-902f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(586f))), 1262f)), _wgslsmith_sub_i32(-50397i, u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-805f, 1452f, -300f, arg_0), vec4<f32>(arg_0, arg_0, arg_0, -1314f)) - vec4<f32>(286f, -338f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-886f)), _wgslsmith_f_op_f32(exp2(arg_0)), 115f, -1192f))));
    let var_1 = Struct_3(Struct_1(~4294967295u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(var_0.a.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1281f, var_0.e.x, arg_0))) * _wgslsmith_f_op_vec3_f32(-var_0.e.zzw))))), any(vec2<bool>(var_0.b, var_0.b)), var_0.c, 51487i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -448f), arg_0, 712f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 803f)))));
    let var_2 = var_0.a.a;
    global3 = array<Struct_2, 21>();
    var_0 = Struct_3(Struct_1(_wgslsmith_add_u32(var_1.c.a, firstLeadingBit(121018u) | (u_input.b.x & 16946u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c.b.x, -225f, 324f)))))))), true, Struct_1(max(var_1.a.a, 25587u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b.x, arg_0, var_1.c.b.x) - vec3<f32>(arg_0, -222f, -285f)), vec3<f32>(-939f, 940f, 353f)))))), var_1.d, var_0.e);
    return Struct_3(var_1.a, any(!(!(!vec2<bool>(var_0.b, false)))), var_1.c, -59633i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.x, 420f) - -552f), var_0.c.b.x, 1f, var_0.a.b.x));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = !(!select(vec3<bool>(true, 576f < arg_0.e.x, global0[_wgslsmith_index_u32(arg_0.c.a, 29u)]), vec3<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(39412u, 29u)], arg_0.b, true, false)), true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.b, select(u_input.b, vec4<u32>(4294967295u, u_input.c, 44485u, arg_0.c.a), vec4<bool>(true, true, false, arg_0.b))), 29u)]));
    let var_1 = Struct_3(arg_0.c, !arg_0.b, func_2(arg_0.c.b.x).c, 2147483647i, vec4<f32>(2234f, 443f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.c.b.x))), arg_0.e.x));
    global0 = array<bool, 29>();
    global2 = array<Struct_1, 5>();
    var var_2 = func_2(arg_0.c.b.x).a;
    return Struct_2(vec4<f32>(var_2.b.x, -1902f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b.x * -1600f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)))), 27689u);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: i32) -> Struct_1 {
    global3 = array<Struct_2, 21>();
    let var_0 = _wgslsmith_clamp_vec3_i32(abs(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_3, u_input.a.x), vec3<i32>(-14704i, 1i, arg_3) >> (u_input.b.zxz % vec3<u32>(32u))))), vec3<i32>(max(select(arg_3, 2147483647i, true) | 6822i, arg_3), -2147483647i, ~(i32(-1i) * -5799i)), ~min(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, arg_3, u_input.a.x), vec3<i32>(0i, -2147483647i, u_input.a.x))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a.x, -24290i), vec3<i32>(-65729i, -10168i, u_input.a.x), vec3<i32>(arg_3, 34985i, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, -17650i, 0i)), arg_1)));
    var var_1 = var_0;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(round(arg_0.a.x))) - _wgslsmith_f_op_f32(trunc(arg_0.a.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(-arg_0.a.x)));
    var var_2 = func_4(Struct_3(func_2(arg_0.a.x).a, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(-205f + arg_0.a.x))).b, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, arg_2), 5u)], -var_0.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-125f, 205f, _wgslsmith_f_op_f32(arg_0.a.x * 1000f), _wgslsmith_f_op_f32(-arg_0.a.x))))));
    return func_2(var_2.a.x).c;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = !(~select(_wgslsmith_dot_vec3_u32(u_input.b.ywy, u_input.b.yxw), min(u_input.b.x, 4294967295u), all(vec2<bool>(false, global0[_wgslsmith_index_u32(39963u, 29u)]))) < 4294967295u);
    let var_1 = vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_1.a | ~1u, ~_wgslsmith_mult_u32(~arg_1.a, ~10872u)), 29u)], true, true);
    let var_2 = func_5(func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f) + arg_1.b.x))), var_1.x, select(_wgslsmith_clamp_u32(4294967295u, 1u, countOneBits(func_2(arg_1.b.x).c.a)), 0u, var_1.x), _wgslsmith_dot_vec2_i32(u_input.a | vec2<i32>(select(1i, -3477i, false), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), ~(-(vec2<i32>(-7839i, -1i) ^ u_input.a))));
    var var_3 = func_5(Struct_2(vec4<f32>(-1169f, 1699f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-758f, 535f))), var_2.b.x), _wgslsmith_mod_u32((arg_1.a >> (var_2.a % 32u)) << (firstTrailingBit(45269u) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(52361u, 1u, 1u, 1u), ~u_input.b))), !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u | u_input.b.x, u_input.b.x), 29u)], u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(-(vec2<i32>(u_input.a.x, -4259i) | vec2<i32>(48573i, 2147483647i)), -(~vec2<i32>(14600i, u_input.a.x)))));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_3.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1265f)) - _wgslsmith_f_op_f32(abs(195f))), 164f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.b + arg_1.b) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<f32>(384f, 118f, var_2.b.x)))) + _wgslsmith_f_op_vec3_f32(func_4(Struct_3(Struct_1(0u, arg_1.b), true, arg_1, u_input.a.x, vec4<f32>(-393f, 1455f, var_2.b.x, -614f))).a.wwx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(313f, arg_1.b.x, -2591f)))))));
    return func_2(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(-u_input.a.x ^ ~0i);
    global2 = array<Struct_1, 5>();
    let var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1242f), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~u_input.b.x >> (u_input.b.x % 32u), 112805u, _wgslsmith_clamp_u32(u_input.b.x, 35829u, u_input.b.x)), countOneBits(~min(u_input.b.x, 63237u))), 5u)]);
    global0 = array<bool, 29>();
    global2 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a, ~u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.b.x, var_1.e.x)), 1i);
}

