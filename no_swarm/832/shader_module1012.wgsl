struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(4294967295u, 1u, 1u, 4294967295u, 7327u, 12323u, 4294967295u, 64359u, 0u, 35366u, 1u, 2925u, 57907u, 56385u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec2<bool>(true, true);
    global0 = array<u32, 14>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-501f, _wgslsmith_div_f32(-1330f, -231f), -693f, _wgslsmith_f_op_f32(2176f * -1256f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(793f, 1589f, -1231f, 1272f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-960f, 1476f, 282f, -715f) * vec4<f32>(1000f, -1013f, -964f, 1007f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, 1144f, -1036f, -1396f))))))), Struct_1(u_input.a.xy, -vec2<i32>(u_input.a.x, 32538i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-817f, -1000f))), Struct_1(vec2<i32>(-1i) * -(u_input.a.yy | vec2<i32>(46236i, 0i)), vec2<i32>(18518i, _wgslsmith_dot_vec2_i32(abs(u_input.a.zx), vec2<i32>(17741i, u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-407f, 185f) + vec2<f32>(-191f, 1815f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1182f, 845f), vec2<f32>(-1981f, 176f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1432f, 243f) + vec2<f32>(-269f, -1096f)))))), Struct_1(vec2<i32>(0i, u_input.a.x), ~(~vec2<i32>(74051i, u_input.a.x)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 1u) | vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34514u, 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(0u, 14u)]), ~vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 2057f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1351f, 1330f), vec2<f32>(478f, 197f))), true)))), vec2<f32>(474f, 497f));
    var var_2 = global0[_wgslsmith_index_u32(48767u, 14u)];
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1.a, vec4<f32>(191f, 230f, var_1.b.c.x, var_1.a.x)))))))), Struct_1(-(vec2<i32>(u_input.a.x, var_1.c.a.x) << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26732u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 4294967295u) % vec2<u32>(32u))), ~(vec2<i32>(-630i, var_1.b.a.x) & vec2<i32>(var_1.d.a.x, -1i)) | vec2<i32>(_wgslsmith_mult_i32(16684i, 27533i), _wgslsmith_sub_i32(var_1.b.b.x, -2147483647i)), var_1.a.xw), Struct_1(u_input.a.xx, var_1.b.b, vec2<f32>(var_1.e.x, -1754f)), Struct_1(-firstTrailingBit(vec2<i32>(u_input.a.x, var_1.d.a.x)), abs(vec2<i32>(~u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.c.x, -269f) * _wgslsmith_f_op_vec2_f32(trunc(var_1.c.c))) - var_1.c.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.c.c.x, 1420f))), _wgslsmith_f_op_vec2_f32(-var_1.e)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.a.zw)) + var_1.e))));
    return vec2<bool>(global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1196u, 14u)], 1u)), 14u)]), 14u)] == firstLeadingBit(abs(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)]))), 2147483647i == var_1.c.a.x);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = 140544u;
    var var_1 = abs(min(arg_2.d.b, _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(arg_2.c.b, arg_2.d.a), vec2<i32>(-14305i, -39853i), u_input.a.zy) >> (~vec2<u32>(1u, 25204u) % vec2<u32>(32u))));
    global0 = array<u32, 14>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-488f * -419f))) * _wgslsmith_f_op_f32(-arg_2.d.c.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.b.c.x))));
    var var_3 = Struct_3(true, select(vec3<bool>(!(global0[_wgslsmith_index_u32(arg_0, 14u)] > 0u), false, select(arg_2.d.c.x < arg_2.b.c.x, all(vec2<bool>(arg_1.x, false)), false)), vec3<bool>(true, true, false), any(!select(vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, false)))), ~(-16046i << ((reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 14u)], 14u)]) | reverseBits(4294967295u)) % 32u)));
    return vec3<f32>(_wgslsmith_f_op_f32(1553f + _wgslsmith_f_op_f32(ceil(1006f))), 2655f, arg_2.a.x);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> vec2<bool> {
    global0 = array<u32, 14>();
    let var_0 = 0i;
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(~7896i, -8222i, var_0 >> (~global0[_wgslsmith_index_u32(1u, 14u)] % 32u), u_input.a.x), vec4<i32>(var_0, var_0, u_input.a.x, var_0)), abs(-firstTrailingBit(vec4<i32>(1i, u_input.a.x, -1i, 27761i)) & (firstLeadingBit(vec4<i32>(var_0, var_0, -1i, var_0)) & (vec4<i32>(u_input.a.x, var_0, 2147483647i, u_input.a.x) & vec4<i32>(-2921i, var_0, u_input.a.x, -1i)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(func_4(11932u, func_3(), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(198f - 1977f), -555f, _wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(971f * 829f)), vec4<f32>(-2070f, 1f, _wgslsmith_f_op_f32(1993f - 160f), _wgslsmith_f_op_f32(sign(593f)))), Struct_1(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, -37795i)), u_input.a.xz | var_1.xw), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, u_input.a.x) & vec2<i32>(var_0, 14975i), u_input.a.xx), vec2<f32>(_wgslsmith_f_op_f32(-448f - 708f), _wgslsmith_f_op_f32(-537f + -414f))), Struct_1(vec2<i32>(~u_input.a.x, -u_input.a.x), vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.yz, vec2<i32>(29679i, var_1.x)), -57431i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, 178f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-244f, -917f)))), Struct_1(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, 2147483647i), 80561i), var_1.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-106f, 860f) * _wgslsmith_div_vec2_f32(vec2<f32>(-1195f, -687f), vec2<f32>(-301f, 2237f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(637f, -311f) + vec2<f32>(-1061f, 186f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2059f), 1f))))));
    var_1 = (vec4<i32>(~(-u_input.a.x), var_0, ~(i32(-1i) * -10970i), 2147483647i) | vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_sub_i32(~(-51942i), var_1.x), var_1.x)) | abs(-abs(abs(vec4<i32>(2147483647i, 76997i, -1i, -2147483647i))));
    return vec2<bool>(false, arg_0);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: i32) -> Struct_2 {
    var var_0 = -firstTrailingBit(-(arg_1.xx >> (~vec2<u32>(42303u, 0u) % vec2<u32>(32u))));
    var_0 = -_wgslsmith_clamp_vec2_i32(-select(-vec2<i32>(u_input.a.x, -43182i), vec2<i32>(arg_2, 0i), !arg_0), vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(var_0.x ^ 14120i, -2147483647i, _wgslsmith_dot_vec3_i32(u_input.a, arg_1))), vec2<i32>(_wgslsmith_div_i32(countOneBits(u_input.a.x), countOneBits(1i)), 1i));
    let var_1 = Struct_3(arg_0.x, vec3<bool>(any(vec4<bool>(func_3().x, false, true, arg_0.x)), true, true), arg_1.x);
    global0 = array<u32, 14>();
    let var_2 = arg_0;
    return Struct_2(vec4<f32>(-1230f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(794f + -438f)) - 1000f), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -169f))) - -1947f)), Struct_1(select(vec2<i32>(var_0.x, var_0.x) & abs(vec2<i32>(var_0.x, u_input.a.x)), select(abs(arg_1.yy), u_input.a.zy, select(true, true, arg_0.x)), true), firstLeadingBit(vec2<i32>(1i, 1i)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-339f, 375f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1296f)))), Struct_1(vec2<i32>(-(~(-10176i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a.xy) >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)] % 32u)), ~abs(u_input.a.zx), vec2<f32>(-527f, -349f)), Struct_1(_wgslsmith_clamp_vec2_i32(~u_input.a.yz, arg_1.xx ^ arg_1.zx, _wgslsmith_add_vec2_i32(arg_1.yy, arg_1.zz)) & u_input.a.yx, vec2<i32>(arg_1.x, var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(165f, -369f), vec2<f32>(-574f, 1225f), var_2)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-585f, -1109f), vec2<f32>(-174f, -127f), vec2<bool>(true, true))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_4(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], var_1.b.yy, Struct_2(vec4<f32>(-1568f, -1182f, -396f, -1162f), Struct_1(arg_1.yy, u_input.a.xy, vec2<f32>(280f, -1000f)), Struct_1(vec2<i32>(-2147483647i, arg_2), u_input.a.yx, vec2<f32>(-412f, 949f)), Struct_1(u_input.a.yz, u_input.a.zx, vec2<f32>(-1000f, -1230f)), vec2<f32>(1009f, 930f)))).yx)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2156f, 497f), vec2<f32>(2251f, -667f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-996f, 311f)))), _wgslsmith_f_op_vec3_f32(func_4(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55627u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], !arg_0, Struct_2(vec4<f32>(1000f, 178f, 463f, 456f), Struct_1(u_input.a.xy, vec2<i32>(26235i, var_0.x), vec2<f32>(1000f, -1000f)), Struct_1(u_input.a.yx, vec2<i32>(-17286i, 22982i), vec2<f32>(-2240f, -355f)), Struct_1(vec2<i32>(10535i, 2147483647i), u_input.a.zz, vec2<f32>(845f, -1773f)), vec2<f32>(-1083f, -674f)))).zz)));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1529f, -769f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f)), 549f)));
    var var_1 = Struct_4(func_5(func_2(true, ~firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37888u, 14u)], 14u)], arg_0.x, 1u, 10590u))), ~u_input.a, _wgslsmith_mult_i32(1i, u_input.a.x)));
    var_1 = Struct_4(func_5(vec2<bool>(_wgslsmith_div_u32(17847u, global0[_wgslsmith_index_u32(40859u, 14u)]) >= abs(0u), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true))), u_input.a, u_input.a.x));
    return 67148u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32((vec4<u32>(_wgslsmith_mult_u32(66466u, global0[_wgslsmith_index_u32(0u, 14u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(123913u, 14u)], 14u)], 14u)], 14u)], 14u)], 1u), 14u)], 1u, _wgslsmith_mod_u32(41341u, global0[_wgslsmith_index_u32(54919u, 14u)])) << (((vec4<u32>(1u, 48627u, 20470u, global0[_wgslsmith_index_u32(14072u, 14u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18583u, 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(12186u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)])) | vec4<u32>(11585u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(98011u, 14u)], 14u)], global0[_wgslsmith_index_u32(51091u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)])) % vec4<u32>(32u))) ^ ~(~(~vec4<u32>(53460u, global0[_wgslsmith_index_u32(4294967295u, 14u)], 39736u, 1u))), _wgslsmith_add_vec4_u32(firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(37232u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10779u, 14u)], 14u)], 20393u, global0[_wgslsmith_index_u32(4294967295u, 14u)], 65804u)))), ~vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(41383u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7491u, 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(307u, 14u)], 14u)], 115002u, global0[_wgslsmith_index_u32(0u, 14u)], 36432u)), 14u)], func_1(vec2<u32>(8555u, 7037u)), ~1u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39520u, 14u)], 14u)], 14u)], 14u)], 4294967295u), 14u)])));
    global0 = array<u32, 14>();
    let var_1 = 3348u;
    global0 = array<u32, 14>();
    let var_2 = _wgslsmith_add_vec3_u32(countOneBits(var_0.wxy), abs(var_0.zwy));
    let var_3 = Struct_1(u_input.a.zy ^ u_input.a.yx, _wgslsmith_add_vec2_i32(-reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)), max(countOneBits(u_input.a.xz), u_input.a.zx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(746f, -688f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec3_f32(func_4(global0[_wgslsmith_index_u32(var_0.x, 14u)], vec2<bool>(false, true), Struct_2(vec4<f32>(754f, 780f, 1768f, 1218f), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, -39238i), vec2<f32>(1788f, -1979f)), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec2<f32>(898f, 169f)), Struct_1(u_input.a.xz, u_input.a.zz, vec2<f32>(-1712f, -1710f)), vec2<f32>(-717f, 433f)))).xx, _wgslsmith_div_vec2_f32(vec2<f32>(-480f, 1636f), vec2<f32>(-325f, -996f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(758f, -992f), vec2<f32>(-1017f, 195f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-942f, 142f))))));
    var var_4 = select(min(var_0.zw, ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4559u), firstLeadingBit(vec2<u32>(var_0.x, var_1)))), var_2.xz, !all(vec2<bool>(all(vec4<bool>(true, true, false, false)), true)));
    var_4 = var_0.zw;
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec3<i32>(1i, _wgslsmith_mult_i32(-2147483647i, var_3.b.x), min(-42872i, u_input.a.x)), u_input.a, select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(222f != var_3.c.x, true, u_input.a.x != u_input.a.x), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, false, true), select(true, false, false)))), _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.x - 513f)), 447f, var_3.c.x)), var_0.wy, vec4<u32>(var_1, 0u, countOneBits(13921u & (var_1 | var_2.x)), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(32449u, 14u)], 20302u)));
}

