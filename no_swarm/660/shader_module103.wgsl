struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(4294967295u, 56825u, 97u, 4294967295u, 1u, 1u, 15247u, 23527u, 11595u, 4294967295u, 9204u, 1u, 1u, 30360u, 21284u, 1u, 28010u, 1u, 1u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(~(~(-u_input.b)), arg_3, arg_2.x), 1084i, 2147483647i, 2147483647i << (~_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 42316u), select(504u, 4294967295u, arg_1.x)) % 32u));
    let var_2 = -184f;
    global0 = array<u32, 19>();
    return arg_3;
}

fn func_2() -> Struct_1 {
    let var_0 = func_3(Struct_1(1u, -159f, select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), vec2<bool>(true, true), ~vec4<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), countOneBits(0i), 1i | u_input.b, 1i) << (firstLeadingBit(select(firstLeadingBit(vec4<u32>(21714u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60958u, 19u)], 19u)], 1u, global0[_wgslsmith_index_u32(1u, 19u)])), ~vec4<u32>(global0[_wgslsmith_index_u32(104955u, 19u)], 0u, 0u, global0[_wgslsmith_index_u32(4423u, 19u)]), any(vec4<bool>(false, false, false, true)))) % vec4<u32>(32u)), _wgslsmith_add_i32(-countOneBits(u_input.b) << (~global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(991u, 19u)], 19u)], 19u)], 19u)], 19u)]), 19u)] % 32u), 0i));
    global0 = array<u32, 19>();
    let var_1 = Struct_1(26589u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-834f, _wgslsmith_f_op_f32(max(217f, -354f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(461f)))), any(vec3<bool>(false, false, true))))), vec4<bool>(true, true, select(~u_input.a >= (var_0 ^ u_input.b), _wgslsmith_add_i32(10107i, -28629i) != (-41816i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44163u, 19u)], 19u)] % 32u)), global0[_wgslsmith_index_u32(1u, 19u)] >= 1u), true));
    var var_2 = ~_wgslsmith_clamp_u32(105809u, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(53979u, global0[_wgslsmith_index_u32(var_1.a, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)]), _wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a, 19u)], 19u)])), global0[_wgslsmith_index_u32(65355u, 19u)]);
    var var_3 = -u_input.b;
    return Struct_1(countOneBits(~(~(~var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-952f, -1106f)), var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<u32, 19>();
    let var_0 = arg_2;
    global0 = array<u32, 19>();
    let var_1 = func_2();
    let var_2 = arg_2.a;
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_1 {
    return func_4(func_2(), _wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(13603u, 19u)], global0[_wgslsmith_index_u32(10648u, 19u)]), vec2<u32>(34880u, 4294967295u))), _wgslsmith_mod_vec2_u32(vec2<u32>(33726u, 81374u), ~vec2<u32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3050u, 19u)], 19u)])), !func_2().c.yz), firstTrailingBit(max(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5240u, 19u)], 19u)], 19u)]) >> (vec2<u32>(49099u, global0[_wgslsmith_index_u32(11938u, 19u)]) % vec2<u32>(32u)), vec2<u32>(global0[_wgslsmith_index_u32(77007u, 19u)], global0[_wgslsmith_index_u32(30572u, 19u)])))), func_2());
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~abs(firstLeadingBit(vec4<u32>(~1u, global0[_wgslsmith_index_u32(1u, 19u)], abs(arg_0.a), arg_0.a ^ 33353u)));
    let var_1 = func_2();
    var var_2 = -1156f;
    global0 = array<u32, 19>();
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -671f);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-min(u_input.a, -61925i), -u_input.b), _wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.a, 30757i)), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -34349i), vec2<i32>(-2147483647i, u_input.a) | vec2<i32>(u_input.b, 0i))), -_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(1i, u_input.a))), firstLeadingBit(select(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -231i), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.b, u_input.a)) | abs(vec2<i32>(u_input.a, -1i)), vec2<bool>(true, true))), vec2<bool>(true, true));
    global0 = array<u32, 19>();
    var var_1 = func_5(func_1(_wgslsmith_div_f32(-756f, _wgslsmith_f_op_f32(1250f + 839f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1220f * 823f))), vec3<f32>(_wgslsmith_f_op_f32(round(-947f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-386f, 583f, true))), -2147f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-199f, -162f) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, 1031f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1807f, -1748f))))))));
    var_1 = func_1(500f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b, 1517f), vec2<f32>(var_1.b, var_1.b))))), vec2<f32>(_wgslsmith_div_f32(var_1.b, var_1.b), _wgslsmith_f_op_f32(-var_1.b))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-609f, -580f, var_1.b) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-878f, -1230f, -1116f) + vec3<f32>(var_1.b, 353f, var_1.b)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1416f, var_1.b, var_1.b))))))), vec2<f32>(1f, 1f));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2416f, var_1.b, -817f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b, var_1.b, 1818f), vec3<f32>(var_1.b, -189f, var_1.b))), !var_1.c.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1005f, var_1.b, -419f), vec3<f32>(164f, 530f, var_1.b)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b, var_1.b, 1000f)))))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(var_1.b, 1549f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * func_2().b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1281f, var_1.b)) + _wgslsmith_f_op_f32(-1908f - var_1.b)))))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_2.x + 1110f), -3065f, _wgslsmith_f_op_f32(-var_2.x));
    var var_3 = var_1.b;
    var_1 = func_2();
    var_3 = 490f;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(0u), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_div_f32(893f, _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_div_f32(func_4(Struct_1(var_1.a, var_2.x, var_1.c), 21994u, func_5(Struct_1(var_1.a, -1000f, var_1.c))).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1669f + -2127f), _wgslsmith_f_op_f32(-var_2.x))), var_1.b), ~var_1.a, global0[_wgslsmith_index_u32(67867u, 19u)], vec3<u32>(_wgslsmith_sub_u32(var_1.a, global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(var_1.a, var_1.a)), 19u)]), firstLeadingBit(~abs(4294967295u)), var_1.a));
}

