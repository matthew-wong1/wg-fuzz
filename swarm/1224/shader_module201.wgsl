struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(43754i, 4590i, -21861i, -10139i, 1i, 4807i, -69030i, 1i, i32(-2147483648), -30623i, i32(-2147483648), -37185i, -3089i, 81428i, 0i, 46646i, 1i, -30501i, 3308i);

var<private> global1: array<i32, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<f32> {
    global0 = array<i32, 19>();
    global1 = array<i32, 16>();
    let var_0 = ~u_input.c;
    var var_1 = all(select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(!all(vec3<bool>(false, false, true)), false), false));
    global1 = array<i32, 16>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(547f, -1910f) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1327f, 756f))))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), Struct_1(~vec4<u32>(arg_1.a.a.x, ~arg_0.a.x, countOneBits(4621u), ~arg_3), global0[_wgslsmith_index_u32(arg_0.a.x, 19u)]));
    global1 = array<i32, 16>();
    global1 = array<i32, 16>();
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(var_0.a)), Struct_1((~vec4<u32>(arg_3, u_input.b, 4294967295u, 16198u) ^ vec4<u32>(1u, 46358u, 1u, arg_0.a.x)) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(81198u, 61289u, arg_1.a.a.x, arg_3), var_0.b.a, vec4<u32>(33282u, arg_3, 27806u, u_input.d.x)), abs(arg_0.a)), ~(-707i) ^ ~reverseBits(global0[_wgslsmith_index_u32(arg_0.a.x, 19u)])));
    var var_2 = Struct_3(54490u, any(vec4<bool>(true, true, true, true)) && true, -vec4<i32>(~u_input.a, reverseBits(21331i), -30285i, select(var_0.b.b, 2147483647i, true)) >> (_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(6784u, arg_3, 4294967295u, arg_3) >> (var_1.b.a % vec4<u32>(32u))), ~countOneBits(vec4<u32>(arg_3, arg_1.a.a.x, var_0.b.a.x, 1677u))) % vec4<u32>(32u)), ~(~(~arg_1.a.a.yx) ^ var_0.b.a.zy));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1182f, var_1.a.x)), 302f)), -663f)));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-179f)), _wgslsmith_f_op_f32(f32(-1f) * -247f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-771f + -548f))), -1807f);
    let var_1 = arg_0.a.x;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1041f, var_0.x))) - vec2<f32>(-1240f, 1327f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-104f, 1588f))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-424f, 301f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(104f, 512f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-724f, var_0.x) + vec2<f32>(1219f, -907f))), true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x * -498f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1233f, var_0.x))) + 2274f) - _wgslsmith_f_op_f32(func_2(Struct_1(arg_0.a, -1i), Struct_2(arg_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(493f, var_0.x)))), arg_0.a.x))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 1210f), _wgslsmith_f_op_f32(var_0.x - var_0.x)), 2105f) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x))) + vec2<f32>(-413f, var_0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 331f)), _wgslsmith_f_op_vec2_f32(func_3()), vec2<bool>(true, true)))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(-389f))))));
    return vec4<u32>(abs(~_wgslsmith_dot_vec2_u32(u_input.d.xx & u_input.d.yy, vec2<u32>(1u, 37855u))), countOneBits(_wgslsmith_mod_u32(~u_input.b, ~var_1 >> ((u_input.b >> (1u % 32u)) % 32u))), min(_wgslsmith_dot_vec4_u32(vec4<u32>(4182u << (1u % 32u), _wgslsmith_div_u32(13869u, 37081u), 0u, 38211u), vec4<u32>(~4294967295u, arg_0.a.x, var_1 >> (var_1 % 32u), var_1)), 112112u), var_1 ^ _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, arg_0.a.x), vec2<u32>(4294967295u, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(~(~max(func_1(Struct_1(vec4<u32>(u_input.b, u_input.c, u_input.d.x, u_input.d.x), 0i)), _wgslsmith_mod_vec4_u32(vec4<u32>(36521u, 12825u, u_input.d.x, u_input.c), vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.d.x)))), select(select(firstTrailingBit(func_1(Struct_1(vec4<u32>(23291u, u_input.c, 45989u, u_input.b), u_input.a))), ~(vec4<u32>(u_input.d.x, 22982u, 1u, u_input.c) >> (vec4<u32>(61354u, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u))), false), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 1u), max(vec4<u32>(u_input.c, 0u, 51774u, 4294967295u), vec4<u32>(u_input.c, 1u, 5248u, 48154u)), false), (vec4<u32>(u_input.d.x, 1348u, 4294967295u, 9412u) | vec4<u32>(30316u, 45971u, u_input.b, u_input.c)) << (~vec4<u32>(u_input.d.x, 59178u, 4294967295u, u_input.c) % vec4<u32>(32u))), select(false, !all(vec2<bool>(false, false)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))))));
    global1 = array<i32, 16>();
    var var_1 = vec2<u32>(~u_input.b, ~(~15765u));
    var_1 = vec2<u32>(firstLeadingBit(91686u), ~var_1.x);
    var var_2 = ~_wgslsmith_mult_vec3_i32(~_wgslsmith_clamp_vec3_i32(select(vec3<i32>(30269i, 0i, -8166i), vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(var_0.x, 16u)], global1[_wgslsmith_index_u32(u_input.d.x, 16u)]), false), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(9809u, 19u)], -38256i), -vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 7835i, global1[_wgslsmith_index_u32(var_1.x, 16u)])), vec3<i32>(-7039i, _wgslsmith_dot_vec4_i32(~vec4<i32>(24352i, global0[_wgslsmith_index_u32(15117u, 19u)], 2147483647i, 7629i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], -20957i, global0[_wgslsmith_index_u32(1u, 19u)], -2147483647i)), -u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(154f, 883f, 491f) + vec3<f32>(-207f, -1197f, 943f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1245f, -1429f, -1000f) - vec3<f32>(-1711f, -1000f, -1463f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(329f, -1342f, 2000f) + vec3<f32>(755f, -898f, -747f)))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))))), u_input.d.zy);
}

