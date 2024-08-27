struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(1i, -28279i, -4465i), vec3<i32>(100136i, 30598i, i32(-2147483648)), vec3<i32>(2147483647i, 62309i, -1i), vec3<i32>(15299i, -37534i, 2147483647i), vec3<i32>(31629i, 3544i, -1249i), vec3<i32>(2147483647i, -1i, 4196i), vec3<i32>(2598i, -6026i, -1i), vec3<i32>(0i, 3187i, 0i), vec3<i32>(18487i, 0i, 0i), vec3<i32>(42836i, -21541i, -10527i), vec3<i32>(-30635i, 27622i, -4122i), vec3<i32>(2147483647i, 1i, -13103i), vec3<i32>(-1i, -9578i, 0i), vec3<i32>(-16546i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, -15208i, 39674i), vec3<i32>(17927i, -1219i, i32(-2147483648)), vec3<i32>(49406i, 2147483647i, -52371i), vec3<i32>(1i, -68610i, -10516i), vec3<i32>(8475i, 1i, -24071i), vec3<i32>(0i, -51741i, -63801i), vec3<i32>(-36712i, 28150i, 18730i), vec3<i32>(i32(-2147483648), -15320i, 0i), vec3<i32>(1i, -27141i, 2147483647i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_sub_vec4_i32(reverseBits(-_wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(u_input.b, u_input.a.x, -2147483647i, -14024i) << (arg_1.b % vec4<u32>(32u)))), select(~reverseBits(reverseBits(vec4<i32>(u_input.a.x, arg_0.x, -18968i, 2147483647i))), arg_0, false));
    let var_1 = vec4<bool>(!any(vec2<bool>(true, select(false, false, arg_1.a))), all(select(vec3<bool>(true, !arg_2.x, var_0.x > u_input.b), !(!arg_2.wxy), vec3<bool>(true, arg_2.x, false))), arg_2.x | any(!vec3<bool>(false, true, arg_2.x)), select(arg_1.a, true, arg_1.a));
    global0 = array<u32, 22>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(518f, 299f, -2085f))))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2429f, -550f, 466f), vec3<f32>(1017f, -540f, -1304f))))), true != any(select(arg_2, arg_2, var_1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1575f, 1000f, 102f), vec3<f32>(-1697f, -281f, 801f), var_1.wwy))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-944f, -154f, -1871f) + vec3<f32>(var_2.x, -135f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.x, -2283f)))))));
    return u_input.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: f32) -> Struct_2 {
    let var_0 = 1u;
    var var_1 = Struct_2(vec2<i32>(u_input.a.x, firstLeadingBit(func_3(vec4<i32>(2147483647i, -19125i, 32565i, 32090i), Struct_1(false, vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 22u)], arg_1.x, 4294967295u)), vec4<bool>(false, true, true, true)))), reverseBits(vec3<u32>(~arg_1.x, ~arg_1.x, 4294967295u)), 17465u, true);
    var var_2 = Struct_1(var_1.d, vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 22408u, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]) >> (vec4<u32>(arg_1.x, arg_1.x, arg_0.x, 80555u) % vec4<u32>(32u)), vec4<u32>(global0[_wgslsmith_index_u32(arg_0.x, 22u)], 1u, arg_0.x, 33543u)), global0[_wgslsmith_index_u32(arg_1.x, 22u)], ~(~4294967295u)));
    var var_3 = _wgslsmith_sub_vec3_u32(countOneBits(~reverseBits(vec3<u32>(arg_0.x, 4294967295u, 4294967295u))), ~var_1.b);
    var_3 = _wgslsmith_mult_vec3_u32(~min(max(vec3<u32>(4294967295u, arg_1.x, var_2.b.x), _wgslsmith_mult_vec3_u32(arg_0, var_1.b)), ~min(vec3<u32>(33051u, global0[_wgslsmith_index_u32(1u, 22u)], 25639u), vec3<u32>(4294967295u, var_1.b.x, 0u))), ~firstLeadingBit(firstTrailingBit(vec3<u32>(129227u, 50573u, arg_0.x))));
    return Struct_2(var_1.a, vec3<u32>(arg_1.x, _wgslsmith_sub_u32(var_2.b.x, _wgslsmith_mod_u32(48582u, var_1.c)), abs(var_2.b.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(38039u, min(1u, 43088u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.x, var_3.x), var_3.yz)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(arg_1, firstLeadingBit(vec2<u32>(var_2.b.x, var_2.b.x))), ~firstLeadingBit(vec2<u32>(var_2.b.x, var_1.b.x)), vec2<u32>(global0[_wgslsmith_index_u32(1u, 22u)], 2661u) ^ vec2<u32>(0u, 47823u))), false | all(select(vec4<bool>(true, false, var_2.a, var_2.a), select(vec4<bool>(false, var_1.d, false, true), vec4<bool>(var_1.d, var_2.a, var_2.a, var_1.d), var_1.d), select(vec4<bool>(true, var_2.a, true, var_1.d), vec4<bool>(false, false, var_2.a, false), vec4<bool>(true, var_2.a, var_2.a, var_1.d)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_1 {
    global0 = array<u32, 22>();
    let var_0 = arg_1.a.x;
    var var_1 = 359f;
    var var_2 = _wgslsmith_clamp_vec2_u32(~(vec2<u32>(arg_1.c, 29961u) >> (select(firstTrailingBit(vec2<u32>(arg_1.c, arg_0.x)), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21164u, 22u)], 22u)], arg_1.c), true) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(firstLeadingBit(~vec2<u32>(15371u, arg_1.c)), arg_0), vec2<u32>(_wgslsmith_mod_u32(30244u, firstTrailingBit(arg_1.b.x) >> (arg_0.x % 32u)), 1u));
    var var_3 = -24249i;
    return Struct_1(all(select(select(!vec2<bool>(true, arg_1.d), !vec2<bool>(true, arg_1.d), !arg_1.d), select(!vec2<bool>(false, arg_1.d), vec2<bool>(true, arg_1.d), arg_1.d), select(vec2<bool>(arg_1.d, arg_1.d), !vec2<bool>(arg_1.d, arg_1.d), true))), vec4<u32>((4294967295u ^ ~arg_1.b.x) >> (arg_1.c % 32u), 30930u, ~(~(~arg_1.c)), select(~_wgslsmith_mod_u32(0u, arg_1.c), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.x, 18743u), arg_1.b.xx << (arg_0 % vec2<u32>(32u))), 22u)], any(vec2<bool>(true, true)))));
}

fn func_1() -> StorageBuffer {
    var var_0 = func_4(~(~(~(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38877u, 22u)], 22u)], 4294967295u) & vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], 4294967295u)))), func_2(~vec3<u32>(_wgslsmith_mult_u32(13381u, 27771u), ~56029u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], 22u)]), ~((vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 22u)]) >> (vec2<u32>(global0[_wgslsmith_index_u32(58614u, 22u)], 0u) % vec2<u32>(32u))) & (vec2<u32>(19860u, global0[_wgslsmith_index_u32(67176u, 22u)]) | vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 22u)]))), _wgslsmith_f_op_f32(f32(-1f) * -3096f)), vec3<i32>(-1i, u_input.b, min(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6958u, 22u)], 22u)], 22u)], 22u)], 23u)] << (vec3<u32>(0u, global0[_wgslsmith_index_u32(0u, 22u)], 31266u) % vec3<u32>(32u)), -u_input.a), firstLeadingBit(0i))));
    global1 = array<vec3<i32>, 23>();
    global0 = array<u32, 22>();
    global1 = array<vec3<i32>, 23>();
    var var_1 = func_4(vec2<u32>(~1u, _wgslsmith_clamp_u32(abs(20452u), ~73368u, _wgslsmith_add_u32(var_0.b.x, 4294967295u)) & (~global0[_wgslsmith_index_u32(var_0.b.x, 22u)] << ((var_0.b.x & 40922u) % 32u))), Struct_2(firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.a.x, 89290i), ~31408i)), vec3<u32>(var_0.b.x, _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(1u, var_0.b.x), select(var_0.b.x, 4294967295u, false)), 1u), ~(~4294967295u), true), vec3<i32>(u_input.a.x, ~(reverseBits(0i) & _wgslsmith_div_i32(u_input.a.x, -2147483647i)), u_input.b));
    return StorageBuffer(77801i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4362u, 22u)], 22u)]), 22u)]);
    let x = u_input.a;
    s_output = func_1();
}

