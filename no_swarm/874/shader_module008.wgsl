struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 4294967295u, 17827u));

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<u32>(4294967295u, 15099u, 64052u, 13722u)), Struct_1(vec4<u32>(0u, 90459u, 19459u, 1u)), Struct_1(vec4<u32>(122762u, 32865u, 1u, 29223u)), Struct_1(vec4<u32>(37774u, 36371u, 0u, 4294967295u)), Struct_1(vec4<u32>(114233u, 2111u, 32395u, 49050u)), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 0u)), Struct_1(vec4<u32>(1u, 0u, 100244u, 1u)), Struct_1(vec4<u32>(7595u, 30148u, 21113u, 54184u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 32184u)), Struct_1(vec4<u32>(0u, 4294967295u, 25104u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 36772u, 0u, 54616u)), Struct_1(vec4<u32>(19050u, 18236u, 65490u, 40633u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 714u, 26101u)), Struct_1(vec4<u32>(18229u, 0u, 1u, 4294967295u)), Struct_1(vec4<u32>(16937u, 1u, 1u, 4294967295u)), Struct_1(vec4<u32>(17689u, 0u, 4294967295u, 17056u)), Struct_1(vec4<u32>(1u, 0u, 2479u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 52751u, 7982u)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(38872u, 0u, 0u, 15034u)), Struct_1(vec4<u32>(788u, 58981u, 0u, 3139u)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_1(arg_0);
    let var_1 = Struct_2(-1131f, Struct_1(global0.a >> (abs(firstTrailingBit(global0.a)) % vec4<u32>(32u))), reverseBits(firstTrailingBit(var_0.a.x)), Struct_1(reverseBits(firstLeadingBit(select(arg_0, arg_0, vec4<bool>(false, true, true, true))))));
    let var_2 = vec3<bool>(any(!select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), true)), (countOneBits(var_0.a.x | 16703u) > max(_wgslsmith_div_u32(49328u, var_0.a.x), ~u_input.b.x)) && true, (arg_0.x < 4294967295u) && false);
    let var_3 = vec3<bool>(all(select(var_2.zx, var_2.yy, var_2.yz)), !(_wgslsmith_dot_vec2_u32(~var_1.d.a.xz, var_1.b.a.yx << (var_0.a.xy % vec2<u32>(32u))) < _wgslsmith_dot_vec2_u32(global0.a.zx, vec2<u32>(1u, 1u))), any(!var_2.xz));
    global1 = array<Struct_1, 21>();
    return abs(2147483647i);
}

fn func_2() -> vec3<i32> {
    global0 = Struct_1(_wgslsmith_clamp_vec4_u32(global0.a, countOneBits(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, 1u, global0.a.x, 44898u)), _wgslsmith_sub_vec4_u32(vec4<u32>(78403u, global0.a.x, u_input.b.x, global0.a.x), global0.a))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(global0.a, vec4<u32>(global0.a.x, 90595u, global0.a.x, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, 15621u, u_input.b.x), global0.a))));
    return vec3<i32>(-2147483647i, u_input.a.x ^ u_input.c.x, _wgslsmith_mod_i32(func_3(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.a.x, 0u, global0.a.x), vec4<u32>(u_input.b.x, global0.a.x, 51946u, global0.a.x)), ~vec4<u32>(global0.a.x, u_input.b.x, 95529u, 0u))), abs(max(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 19268i)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(func_2(), _wgslsmith_sub_vec3_i32(func_2(), vec3<i32>(1i, min(arg_1, arg_1), 1i))), vec3<i32>(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), u_input.c) | ~(-1i)), ~u_input.a.x, -_wgslsmith_clamp_i32(u_input.a.x & 6757i, 1i, 37294i)));
    global1 = array<Struct_1, 21>();
    var var_1 = max(vec2<u32>(global0.a.x ^ 27159u, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 15911u, 4294967295u, global0.a.x), vec4<u32>(arg_0.a.x, 1u, 1u, 1u)), global0.a)), vec2<u32>(_wgslsmith_mult_u32(abs(4294967295u) ^ global0.a.x, ~(~54121u)), global0.a.x));
    var var_2 = firstLeadingBit(-vec3<i32>(-u_input.c.x, -49513i, func_3(arg_0.a & global0.a)));
    let var_3 = vec4<u32>(3426u, var_1.x, global0.a.x, 0u);
    return ~min(var_2.x, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x & 1i, select(abs(u_input.c.x), func_1(global1[_wgslsmith_index_u32(global0.a.x, 21u)], u_input.c.x), true), u_input.a.x << ((global0.a.x | 15760u) % 32u)), func_2()), vec3<i32>(u_input.a.x, min(u_input.c.x, countOneBits(28365i)), -1i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-717f, 1536f, 583f) + vec3<f32>(458f, 251f, -1048f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1145f, -2865f, -1497f))))), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(699f, 1907f, -873f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1242f, -496f, 259f))))))));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(906f + var_1.x)), _wgslsmith_f_op_f32(trunc(var_1.x))) + vec3<f32>(-1061f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1717f))), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-140f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(502f - var_1.x)), _wgslsmith_f_op_f32(-var_1.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 852f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-126f))))), global1[_wgslsmith_index_u32(10556u, 21u)], abs(4294967295u), Struct_1(~(global0.a << (~global0.a % vec4<u32>(32u)))));
    var var_3 = any(vec3<bool>(!(!all(vec2<bool>(true, true))), true, true));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(exp2(var_2.a)), global1[_wgslsmith_index_u32(u_input.b.x, 21u)], var_2.c, var_2.d);
    global0 = global1[_wgslsmith_index_u32(var_2.b.a.x, 21u)];
    global0 = var_2.b;
    var var_5 = vec2<i32>(var_0.x, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(17572i);
}

