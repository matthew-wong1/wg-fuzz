struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 5> = array<bool, 5>(true, true, true, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: i32) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2141f, 117f) + vec2<f32>(332f, -874f))))))));
    let var_2 = ~abs(i32(-1i) * -1i);
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a) >> ((u_input.a ^ vec2<u32>(u_input.a.x, 11256u)) % vec2<u32>(32u)), ~(u_input.a & u_input.a)))), 5u)];
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_1.x - var_1.x), arg_0.x);
    return false;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec4<bool> {
    global1 = array<bool, 5>();
    let var_0 = Struct_1(arg_1.x, !func_3(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], true)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(0i, 17797i)), u_input.b));
    global1 = array<bool, 5>();
    var var_1 = var_0;
    return select(!vec4<bool>(!global1[_wgslsmith_index_u32(~0u, 5u)], true, true, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, ~u_input.a.x), 5u)]), !(!vec4<bool>(u_input.b >= 702i, true, var_1.b, u_input.a.x != u_input.a.x)), false);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_mult_vec2_u32(arg_2.zy, vec2<u32>(1u, ~0u)));
    var var_1 = -64329i;
    var var_2 = vec2<bool>(arg_3.b, -_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(15560i, 0i), vec2<i32>(32442i, -2147483647i))) == 0i);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-1242f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(595f * arg_3.a) + 342f)))), !(!(!arg_0)));
    var_1 = ~(-2147483647i) ^ u_input.b;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(208f, 455f))), !select(true, any(vec2<bool>(true, true)), true));
}

fn func_1() -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(70666u, _wgslsmith_dot_vec2_u32(~(~u_input.a), abs(u_input.a ^ u_input.a))), 5u)];
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(209f, 1000f))))));
    global0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-665f, 394f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -592f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1099f, 686f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -784f) + -453f)))));
    var var_2 = 50774u;
    return func_4(any(func_2(vec2<i32>(1i, -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(495f, -652f)))) & (any(!vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 5u)], true)) & global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), 5u)]), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(818f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(523f + 555f) - _wgslsmith_f_op_f32(select(-193f, 1440f, false)))), select(func_3(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], true, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), ~0i), _wgslsmith_div_u32(u_input.a.x, 26989u) == _wgslsmith_clamp_u32(0u, 0u, 1u), true || global1[_wgslsmith_index_u32(0u, 5u)])), max(_wgslsmith_div_vec4_u32(vec4<u32>(2656u, u_input.a.x, u_input.a.x, u_input.a.x), countOneBits(~vec4<u32>(u_input.a.x, 6758u, u_input.a.x, u_input.a.x))), vec4<u32>(1u, 4294967295u, abs(u_input.a.x), ~u_input.a.x) << (vec4<u32>(~1u, countOneBits(58719u), ~37093u, u_input.a.x) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), true));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = 1u;
    global1 = array<bool, 5>();
    let var_1 = !func_2(select(_wgslsmith_mult_vec2_i32(arg_0 | vec2<i32>(u_input.b, -12731i), vec2<i32>(-3205i, arg_0.x) ^ vec2<i32>(arg_0.x, u_input.b)), vec2<i32>(u_input.b, arg_0.x), (var_0 | 4294967295u) != ~u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(487f + -1848f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-525f + arg_1.a), -2236f))));
    global1 = array<bool, 5>();
    global1 = array<bool, 5>();
    return vec4<u32>(abs(~countOneBits(~11482u)), _wgslsmith_add_u32(67306u, select(var_0, var_0, all(select(vec4<bool>(global1[_wgslsmith_index_u32(15995u, 5u)], true, true, false), vec4<bool>(arg_1.b, arg_2.b, true, true), false)))), u_input.a.x, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 5>();
    var var_0 = max(_wgslsmith_sub_vec4_u32(~vec4<u32>(63792u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x | 6661u, u_input.a.x, u_input.a.x, ~67406u)) & func_5(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.b, u_input.b)), firstTrailingBit(vec2<i32>(u_input.b, u_input.b))), Struct_1(_wgslsmith_f_op_f32(round(-554f)), true), func_1()), _wgslsmith_add_vec4_u32(~(~(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 23144u, u_input.a.x) % vec4<u32>(32u)))), ~abs(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.a.x, 1081u), ~(var_0.wxx | var_0.yxz)), vec3<u32>(4294967295u, u_input.a.x >> ((109077u >> (u_input.a.x % 32u)) % 32u), u_input.a.x)), vec3<u32>(80498u, var_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 0u, var_0.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x)) >> (1u % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-593f, 1008f, -1328f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 943f, -277f)), select(vec3<bool>(global1[_wgslsmith_index_u32(76839u, 5u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(var_0.x, 5u)], true), false)))))), var_0.x, -43979i);
}

