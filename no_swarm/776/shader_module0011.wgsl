struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(0u, 4294967295u, 4346u, 17237u, 20364u, 29027u, 1u, 1u, 67001u, 1u, 40116u, 49987u, 52642u, 0u, 64745u, 0u, 73592u, 0u, 1u, 22679u, 17408u, 3286u, 14403u, 22876u, 60212u);

var<private> global1: bool = false;

var<private> global2: array<vec2<f32>, 15>;

var<private> global3: array<f32, 26> = array<f32, 26>(-290f, -753f, 172f, 447f, -325f, 1101f, -1039f, 2320f, 886f, 652f, 1041f, 392f, 769f, -209f, 378f, -394f, -887f, -1000f, -143f, -537f, -179f, -145f, -1100f, -911f, -1000f, 1819f);

var<private> global4: u32 = 4709u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    global4 = global0[_wgslsmith_index_u32(u_input.b.x, 25u)];
    global4 = ~(~(arg_3.c & (_wgslsmith_dot_vec4_u32(arg_3.b, arg_3.b) << (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(arg_3.c, 25u)]) % 32u))));
    var var_0 = arg_2.x;
    let var_1 = arg_3.b.zx;
    let var_2 = 1i;
    return _wgslsmith_f_op_f32(floor(754f));
}

fn func_2() -> Struct_1 {
    global3 = array<f32, 26>();
    var var_0 = vec2<u32>(0u, 0u);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -558f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(-1367f, global3[_wgslsmith_index_u32(var_0.x, 26u)], global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(u_input.b.x, 26u)]), u_input.c, vec4<i32>(-1i, u_input.a.x, -1i, u_input.c), Struct_2(Struct_1(vec4<bool>(true, true, false, false), global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 22554u, true), vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(var_0.x, 25u)], 0u), 72553u))) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 26u)] + global3[_wgslsmith_index_u32(38184u, 26u)])) * 1019f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(1f)))));
    let var_1 = max(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(u_input.a, min(u_input.a, vec3<i32>(-1i, 3417i, -22239i)))), u_input.c, -2147483647i, -15151i), vec4<i32>(u_input.c, u_input.a.x, abs(firstTrailingBit(-u_input.a.x)), _wgslsmith_add_i32(min(-u_input.c, firstTrailingBit(0i)), u_input.a.x)));
    let var_2 = ~abs(_wgslsmith_sub_u32(~abs(u_input.b.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(2999u, 25u)]), ~u_input.b)));
    return Struct_1(select(vec4<bool>(false, !all(vec2<bool>(false, false)), true, true), vec4<bool>(!all(vec2<bool>(true, true)), true, true, true & any(vec2<bool>(false, true))), vec4<bool>(true, true, ~0i >= _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), var_1.wyx), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f * global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 25u)], 26u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 26u)]) - _wgslsmith_f_op_f32(f32(-1f) * -1158f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.x, 26u)] - global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 26u)])), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(33723u, var_0.x, 1u), 25u)], 25u)], 26u)])), max(~0u, countOneBits(1u)), true);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = Struct_2(func_2(), min(~(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 10789u, 44171u), vec4<u32>(4294967295u, 1u, 1u, arg_1.c)) | ~vec4<u32>(arg_2, 52423u, u_input.b.x, 1u)), ~(vec4<u32>(18123u, u_input.b.x, arg_2, arg_0.x) & vec4<u32>(22326u, 4294967295u, 4294967295u, 4294967295u))), global0[_wgslsmith_index_u32(~4294967295u, 25u)]);
    global0 = array<u32, 25>();
    global4 = arg_0.x;
    var var_1 = Struct_2(func_2(), vec4<u32>(4294967295u, 13132u, firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_u32(33747u, arg_1.c, 40222u))), var_0.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), countOneBits(63793u), arg_0.x, select(2789u, 4294967295u, var_0.a.d)), vec4<u32>(~0u, ~u_input.b.x, 4294967295u, _wgslsmith_mult_u32(arg_2, u_input.b.x))));
    let var_2 = !func_2().a.zyx;
    return _wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(var_0.a.c ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 0u, global0[_wgslsmith_index_u32(26358u, 25u)], 0u), var_0.b), 25113u), 56826u, 1u, _wgslsmith_div_u32(arg_1.c ^ _wgslsmith_sub_u32(63652u, global0[_wgslsmith_index_u32(48111u, 25u)]), var_1.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 15>();
    let var_0 = select(~u_input.b, u_input.b, !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), -2147483647i == u_input.a.x)));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(83729u, 26u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 26u)] + global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 26u)]) - -342f)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.b.x & 7027u, 25u)], ~func_1(vec3<u32>(4026u, var_0.x, global0[_wgslsmith_index_u32(var_0.x, 25u)]), Struct_1(vec4<bool>(true, false, true, true), global3[_wgslsmith_index_u32(1u, 26u)], var_0.x, true), var_0.x, 1051f)), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(396f, 332f, false))))), 1142f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(var_0.x, 26u)], -536f, global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec4<f32>(global3[_wgslsmith_index_u32(8412u, 26u)], 524f, -2243f, global3[_wgslsmith_index_u32(55674u, 26u)]))))))));
    global3 = array<f32, 26>();
    var var_2 = vec4<u32>(global0[_wgslsmith_index_u32(6376u, 25u)], 0u, _wgslsmith_div_u32(_wgslsmith_add_u32(var_0.x, 80986u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(18961u, global0[_wgslsmith_index_u32(4294967295u, 25u)])), ~abs(vec2<u32>(global0[_wgslsmith_index_u32(var_0.x, 25u)], 0u)))), 0u);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3[_wgslsmith_index_u32(25161u, 26u)], global3[_wgslsmith_index_u32(72065u, 26u)], global3[_wgslsmith_index_u32(1u, 26u)]), vec3<f32>(264f, -2266f, -743f))))) * var_1.xyz))));
    let var_4 = global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(59365u >> ((u_input.b.x ^ ~(41271u ^ var_2.x)) % 32u), 25u)], 26u)];
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(45623u, 26u)], -1725f)) * global3[_wgslsmith_index_u32(47131u, 26u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -617f) - _wgslsmith_f_op_f32(158f * -249f)))))), func_2().b);
    var var_5 = max(reverseBits(~vec4<u32>(var_2.x, _wgslsmith_sub_u32(var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), 50081u, 4294967295u)), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(var_2.zyz, Struct_1(vec4<bool>(true, true, true, true), 1013f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 25u)], 25u)], true), ~1u, _wgslsmith_f_op_f32(-105f * -759f)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, ~global0[_wgslsmith_index_u32(4294967295u, 25u)]), 25u)]), 25u)], func_1(vec3<u32>(~var_0.x, firstLeadingBit(var_2.x), ~65472u), Struct_1(vec4<bool>(true, false, false, true), _wgslsmith_f_op_f32(907f + -573f), countOneBits(global0[_wgslsmith_index_u32(var_2.x, 25u)]), true), ~4300u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 26u)]) * -486f)), ~0u, 94237u >> (~(1u ^ var_2.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~u_input.b.x), 72882u), var_3.x, vec2<i32>(-2147483647i, 0i), firstLeadingBit(u_input.a), abs(u_input.a));
}

