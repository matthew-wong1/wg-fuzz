struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<f32, 27>;

var<private> global3: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global1 = array<Struct_1, 32>();
    global3 = u_input.b.x;
    global3 = 75439i;
    global0 = array<i32, 7>();
    let var_0 = vec3<bool>(!(!all(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), false, u_input.a.x >= ~98286u);
    return arg_1.a;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-618f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a.x, 27u)])))));
    var var_1 = firstTrailingBit(i32(-1i) * -abs(1988i)) <= select(func_3(Struct_1(global0[_wgslsmith_index_u32(13692u, 7u)]), Struct_1(~global0[_wgslsmith_index_u32(30603u, 7u)])), -16382i, all(vec4<bool>(any(vec4<bool>(true, true, true, false)), true, true, all(vec3<bool>(false, true, true)))));
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, firstTrailingBit(firstTrailingBit(33060u)))) >> (~54826u % 32u), 32u)];
    var var_3 = vec4<f32>(global2[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_f32(-862f * _wgslsmith_div_f32(1014f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_f_op_f32(select(-480f, var_0, false))))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 27u)]), 1000f);
    var var_4 = Struct_1(var_2.a);
    return reverseBits(~(~_wgslsmith_mod_u32(u_input.a.x | 1u, 38076u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = true;
    let var_1 = countOneBits(vec2<i32>(~(-global0[_wgslsmith_index_u32(u_input.a.x, 7u)] >> (~u_input.a.x % 32u)), 1i));
    global1 = array<Struct_1, 32>();
    var var_2 = false;
    var var_3 = _wgslsmith_mod_i32(i32(-1i) * -(~(-1i)), arg_1.a);
    return Struct_1(i32(-1i) * -(~(0i << (u_input.a.x % 32u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> vec4<bool> {
    let var_0 = arg_1;
    global1 = array<Struct_1, 32>();
    var var_1 = Struct_1(~(2147483647i << (_wgslsmith_add_u32(arg_2.x, 75172u) % 32u)));
    var_1 = Struct_1(_wgslsmith_mod_i32(-(select(-3203i, 39106i, false) << (u_input.a.x % 32u)), (min(var_1.a, arg_1.a) << (firstTrailingBit(1u) % 32u)) >> (~arg_3 % 32u)));
    var_1 = func_4(global1[_wgslsmith_index_u32(func_2(), 32u)], Struct_1(26422i));
    return !vec4<bool>(!(!all(vec2<bool>(false, true))), countOneBits(-arg_1.a) >= _wgslsmith_dot_vec2_i32(~vec2<i32>(-37689i, 0i), min(arg_0.zx, vec2<i32>(0i, arg_0.x))), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 32>();
    var var_0 = ~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 14863u), ~(~vec3<u32>(u_input.a.x, 0u, u_input.a.x))));
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(49741u), 32u)];
    var var_2 = vec3<bool>(all(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, true)), all(func_1(u_input.b, global1[_wgslsmith_index_u32(var_0.x, 32u)], vec4<u32>(var_0.x, u_input.a.x, 4294967295u, 4294967295u), 13257u)))), var_0.x != ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(41708u, 19792u)), true);
    let var_3 = 4294967295u;
    var var_4 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~var_0.x), var_3, ~u_input.a.x, 20729u), vec4<u32>(~(~0u), 1u, _wgslsmith_sub_u32(u_input.a.x, ~reverseBits(var_3)), var_0.x), vec4<u32>(var_0.x, _wgslsmith_mult_u32(0u, func_2() << (u_input.a.x % 32u)), _wgslsmith_dot_vec3_u32(~(vec3<u32>(30718u, 4294967295u, 4294967295u) | vec3<u32>(var_0.x, 12931u, var_3)), reverseBits(max(vec3<u32>(4294967295u, var_0.x, 1u), vec3<u32>(var_3, var_0.x, 0u)))), _wgslsmith_dot_vec2_u32(~firstTrailingBit(var_0.zy), abs(_wgslsmith_clamp_vec2_u32(var_0.yz, vec2<u32>(u_input.a.x, 0u), vec2<u32>(4294967295u, var_3))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-25284i, -3771i, -15607i, u_input.b.x), vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(7079u, 7u)], 2147483647i, var_1.a)), reverseBits(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 7u)], var_1.a, -2147483647i, -1i)))), ~var_4.xyz, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~1619u, 4294967295u, ~24065u, firstLeadingBit(var_4.x))), _wgslsmith_div_vec4_u32(max(vec4<u32>(var_3, 1u, u_input.a.x, 0u), vec4<u32>(var_4.x, 53569u, var_4.x, var_4.x)) & ~vec4<u32>(21132u, u_input.a.x, 10988u, 22114u), vec4<u32>(var_0.x, var_3, var_0.x, _wgslsmith_add_u32(u_input.a.x, 27692u)))), _wgslsmith_sub_vec2_i32(~u_input.b.xx, -(-vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]) ^ u_input.b.zz)));
}

