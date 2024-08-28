struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(4294967295u, vec3<i32>(1i, 19640i, 2147483647i)), Struct_1(0u, vec3<i32>(7287i, -33579i, 1450i)), Struct_1(10324u, vec3<i32>(1i, -51923i, 13630i)), Struct_1(4294967295u, vec3<i32>(19014i, 1i, 4967i)), Struct_1(1u, vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_1(4294967295u, vec3<i32>(23333i, -34079i, 2147483647i)), Struct_1(51003u, vec3<i32>(75i, 1i, -1i)), Struct_1(11419u, vec3<i32>(-36801i, 2147483647i, -40475i)), Struct_1(46212u, vec3<i32>(-1i, 2725i, -49526i)), Struct_1(1u, vec3<i32>(-13439i, 2147483647i, 3244i)), Struct_1(0u, vec3<i32>(21957i, 79833i, -20157i)), Struct_1(51946u, vec3<i32>(i32(-2147483648), -14083i, 0i)), Struct_1(44877u, vec3<i32>(-1i, -9332i, -1i)), Struct_1(4294967295u, vec3<i32>(17020i, 1i, 1i)), Struct_1(0u, vec3<i32>(-34750i, -1i, i32(-2147483648))), Struct_1(21130u, vec3<i32>(-43800i, 24437i, 1i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    global0 = array<Struct_1, 16>();
    var var_0 = vec2<i32>(countOneBits(_wgslsmith_div_i32(firstTrailingBit(4042i), 1i)), _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 27920i, -13544i, 2147483647i), vec4<i32>(u_input.c, 2147483647i, u_input.d, 21987i), vec4<i32>(u_input.e.x, -1i, u_input.a.x, -17352i)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.e.x & _wgslsmith_div_i32(u_input.e.x, -53430i), i32(-1i) * -2147483647i, u_input.a.x >> (15721u % 32u), -61413i)));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_1 = Struct_1(~4294967295u, firstLeadingBit(-u_input.a ^ firstLeadingBit(u_input.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
}

fn func_3() -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), vec2<f32>(-827f, -1149f), false))), 500f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(-816f + 156f), 325f), !all(vec3<bool>(false, false, true)))))));
    global0 = array<Struct_1, 16>();
    var var_1 = abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(31916u, ~1u, _wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_mod_u32(1u, 4294967295u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    global0 = array<Struct_1, 16>();
    var var_2 = global0[_wgslsmith_index_u32(1u, 16u)];
    return true;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: u32) -> vec4<i32> {
    global0 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1112f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -783f))), !arg_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(423f - 130f))), -430f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-771f, 805f) + _wgslsmith_f_op_f32(func_2(arg_0, vec2<f32>(-499f, 727f), true))), -711f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-461f, -1276f, arg_1.x))) - _wgslsmith_f_op_f32(max(-369f, _wgslsmith_f_op_f32(-1553f * -536f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(208f, -277f) + vec2<f32>(1075f, 1f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, 1561f), vec2<f32>(var_1.x, var_1.x), arg_1.xy)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1165f, var_1.x) + vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(866f, 227f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1902f, 391f) * vec2<f32>(var_1.x, var_1.x)))))));
    let var_2 = select(arg_2, arg_2 | arg_2, func_3()) >> (~(~1u) % 32u);
    return vec4<i32>(u_input.a.x, u_input.e.x, u_input.e.x, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.e.x, 21601i, i32(-1i) * -2147483647i), func_1(vec2<bool>(true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), 40568u)) ^ abs(vec4<i32>(1i, _wgslsmith_div_i32(-21025i, u_input.d), 1i, u_input.c ^ 2147483647i)), vec4<i32>(u_input.c, u_input.c, -(_wgslsmith_div_i32(u_input.d, u_input.d) & ~1i), ~u_input.d));
    var_0 = ~(-20165i);
    var var_1 = u_input.e;
    let var_2 = global0[_wgslsmith_index_u32(1u, 16u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(848f, -562f), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_div_f32(-281f, -840f), -695f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(228f, 709f, 1081f, 1618f) * vec4<f32>(1276f, 1000f, -1156f, 381f))))))));
    let var_4 = (var_2.b.yz >> (~vec2<u32>(var_2.a & 4863u, ~var_2.a) % vec2<u32>(32u))) << ((~max(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.a, var_2.a), vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(23968u, 21350u), vec2<u32>(var_2.a, var_2.a), vec2<u32>(72435u, var_2.a))) & _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, ~17969u), ~max(vec2<u32>(var_2.a, var_2.a), vec2<u32>(111035u, 41335u)))) % vec2<u32>(32u));
    var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(612f, 1584f, 141f, var_3.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, 190f, var_3.x, 271f), vec4<f32>(var_3.x, -1389f, -535f, var_3.x))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, var_3.x, 948f, var_3.x)))))))), vec4<f32>(933f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(254f, -758f))), all(vec3<bool>(true, true, true)))) * var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), 732f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-13459i >> (firstTrailingBit(~4294967295u) % 32u), firstTrailingBit(var_4.x), -var_4.x, -1i));
}

