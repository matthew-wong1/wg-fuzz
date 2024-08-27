struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: vec4<i32> = vec4<i32>(-17266i, 21003i, i32(-2147483648), -17233i);

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 0u, 29469u, 23853u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    global2 = select(~(~(~firstTrailingBit(vec4<u32>(1u, 0u, arg_1, arg_0.b)))), countOneBits(vec4<u32>(34750u, 1u, 1u, ~arg_1)), firstTrailingBit(arg_0.b) < ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_0.b, 21498u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(0u, 6u)], arg_1, 2765u, global2.x)), abs(vec4<u32>(global2.x, 5467u, 4294967295u, arg_1))));
    let var_0 = global1.x;
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    return _wgslsmith_mod_vec4_i32(vec4<i32>(abs(u_input.c) & arg_0.a.x, countOneBits(global1.x), abs(arg_0.a.x), 1i), vec4<i32>(~abs(_wgslsmith_dot_vec2_i32(global1.zy, arg_0.a)), _wgslsmith_add_i32(-2147483647i, global1.x), arg_0.a.x, 2595i));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = arg_2;
    global1 = -((_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -30532i, -1i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.a.x, 1i, u_input.c, arg_1.a.x), vec4<i32>(24418i, global1.x, u_input.c, -6233i), vec4<i32>(var_0.a.x, arg_1.a.x, -2147483647i, 2147483647i))) | func_3(var_0, abs(global0[_wgslsmith_index_u32(67265u, 6u)]))) | select(select(vec4<i32>(-1i, 0i, -1i, global1.x), vec4<i32>(arg_2.a.x, 15940i, -29046i, -45792i), false) << (firstTrailingBit(vec4<u32>(50247u, 4294967295u, arg_2.b, u_input.a)) % vec4<u32>(32u)), vec4<i32>(24375i, var_0.a.x ^ -33477i, -1996i << (arg_1.b % 32u), firstTrailingBit(var_0.a.x)), vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, u_input.a <= arg_2.b)));
    let var_1 = !vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true);
    let var_2 = arg_1;
    global2 = ~(select(abs(max(vec4<u32>(1u, global0[_wgslsmith_index_u32(arg_2.b, 6u)], arg_1.b, arg_2.b), vec4<u32>(53484u, 4294967295u, 0u, arg_2.b))), countOneBits(vec4<u32>(0u, 17036u, 1u, global2.x)), !(!vec4<bool>(true, var_1.x, var_1.x, var_1.x))) | countOneBits(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_2.b, 68682u, 1u, global2.x), vec4<u32>(1763u, 0u, arg_1.b, 0u) & vec4<u32>(4294967295u, arg_2.b, u_input.a, arg_1.b))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 162f, arg_0.x, arg_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(469f, 922f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, -2251f, -508f, arg_0.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1898f, arg_0.x, 141f)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 1020f, -410f, arg_0.x), vec4<f32>(arg_0.x, -654f, 347f, arg_0.x))))), vec4<bool>(var_1.x, true && var_1.x, (var_2.a.x >> (var_2.b % 32u)) > 41891i, true))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(294f, -2375f, arg_0.x, 1231f)))) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x)))))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-438f, arg_2.x, arg_2.x, -752f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(-1287f, arg_2.x, arg_2.x), arg_1, Struct_1(arg_1.a, 18099u))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(max(arg_2, vec3<f32>(arg_2.x, -460f, 213f))), arg_3, arg_3)))));
    global1 = ~max(firstTrailingBit(vec4<i32>(-arg_3.a.x, 50906i, -2147483647i << (u_input.a % 32u), -27960i << (arg_3.b % 32u))), abs(abs(vec4<i32>(0i, 1i, -1i, 1i))) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(0i, -2147483647i, arg_1.a.x, arg_3.a.x), vec4<i32>(global1.x, u_input.c, -2147483647i, global1.x)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(529f - 1209f), _wgslsmith_f_op_f32(f32(-1f) * -2393f)))), arg_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-778f * -1143f), all(vec3<bool>(false, true, false)))), arg_2.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -343f))));
    var var_1 = Struct_1(arg_3.a, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(arg_3.b, arg_1.b), vec2<u32>(global2.x, 0u), true), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.b, 1u) << (~vec2<u32>(u_input.a, global2.x) % vec2<u32>(32u)), global2.yw ^ _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(1u, global2.x)))));
    let var_2 = 393f;
    return ~(firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b, arg_3.b, 1u, 1u), vec4<u32>(1u, 0u, 4294967295u, global0[_wgslsmith_index_u32(8239u, 6u)])), abs(vec4<u32>(39308u, 31585u, 1249u, 1u)))) & vec4<u32>(16370u, _wgslsmith_add_u32(reverseBits(u_input.a), 5193u << (var_1.b % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global2.zxy, global2.zzy), global2.yxx << (global2.zyx % vec3<u32>(32u))), 1u));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global2 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, abs(arg_1.b), 1u, 43625u ^ u_input.a), ~(~vec4<u32>(global0[_wgslsmith_index_u32(3098u, 6u)], 22854u, arg_2.b, global2.x))));
    let var_0 = _wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1716f)) + -2959f));
    global2 = ~vec4<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, _wgslsmith_dot_vec2_u32(global2.wy, global2.xx)), ~vec2<u32>(44706u, 1814u) & global2.zy), arg_2.b, 4294967295u);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(var_0, var_0, 217f), Struct_1(arg_1.a, arg_2.b), Struct_1(arg_2.a, 0u))).x)))), _wgslsmith_f_op_f32(trunc(var_0)));
    global0 = array<u32, 6>();
    return vec4<bool>(any(vec4<bool>(var_0 <= -1000f, true, arg_2.b <= arg_2.b, _wgslsmith_f_op_f32(arg_0 - -895f) <= arg_0)), all(select(vec3<bool>(true, any(vec4<bool>(true, false, false, false)), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, false))))), arg_0 <= 623f, any(select(vec2<bool>(select(false, false, true), 486f < arg_0), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true))));
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = -global1.x & u_input.b;
    global0 = array<u32, 6>();
    let var_1 = Struct_1(global1.zy, global2.x);
    global1 = ~(~vec4<i32>(firstTrailingBit(2147483647i), min(-1i, 1i), u_input.b, 0i)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(15668u, var_1.b), vec2<u32>(~34841u, 15906u << (var_1.b % 32u))), 4294967295u, countOneBits(global0[_wgslsmith_index_u32(~1u, 6u)]), var_1.b) % vec4<u32>(32u));
    global2 = ~_wgslsmith_clamp_vec4_u32(~max(func_1(arg_0.x, Struct_1(var_1.a, 2226u), vec3<f32>(1145f, 1160f, -322f), var_1), vec4<u32>(3005u, 10059u, 1u, global2.x)), ~(~vec4<u32>(18869u, 1u, var_1.b, var_1.b)), ~(~abs(vec4<u32>(global2.x, global2.x, 14896u, global2.x))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~(u_input.c ^ -(~(-global1.x)));
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(select(global1.wy, vec2<i32>(u_input.b, 1i), _wgslsmith_sub_u32(u_input.a, u_input.a) > 66293u), ~countOneBits(global1.yx >> (global2.zz % vec2<u32>(32u))), vec2<i32>(~u_input.b, abs(1i))), 0u);
    global0 = array<u32, 6>();
    let var_3 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1480f), _wgslsmith_f_op_f32(sign(494f)), all(vec4<bool>(false, false, false, true))))), Struct_1(-var_2.a ^ vec2<i32>(-2728i, global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 4294967295u, 50422u, var_2.b), func_1(true, var_2, vec3<f32>(948f, 124f, -450f), Struct_1(vec2<i32>(global1.x, var_2.a.x), global0[_wgslsmith_index_u32(global2.x, 6u)])))), var_2));
    global1 = vec4<i32>(var_2.a.x, var_3.a.x, _wgslsmith_clamp_i32(~global1.x & ~_wgslsmith_add_i32(var_2.a.x, global1.x), -u_input.c, _wgslsmith_mult_i32(_wgslsmith_add_i32(~u_input.b, -global1.x), max(var_3.a.x | 0i, _wgslsmith_add_i32(global1.x, var_3.a.x)))), var_2.a.x);
    var var_4 = ~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, global1.x, -2147483647i) << ((global2.xzy >> (global2.yxw % vec3<u32>(32u))) % vec3<u32>(32u)), max(vec3<i32>(u_input.c, 2333i, var_2.a.x), vec3<i32>(var_2.a.x, var_2.a.x, 9285i))), reverseBits(-vec3<i32>(var_2.a.x, u_input.c, -1i) << (~global2.wxy % vec3<u32>(32u))));
    var var_5 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-111f + _wgslsmith_f_op_f32(-1000f + -1259f)), 538f, true == func_4(-1250f, Struct_1(var_2.a, global2.x), var_3).x)), _wgslsmith_f_op_f32(floor(-761f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(517f, -1000f, false))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1062f, 1994f)))), vec2<f32>(119f, _wgslsmith_f_op_f32(abs(-220f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(573f, 1000f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -1190f))))), 329f, 595f, _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.a.x, min(~var_4.x, _wgslsmith_dot_vec2_i32(var_4.zx, vec2<i32>(global1.x, 1i))), -2147483647i, -1i), vec4<i32>(_wgslsmith_div_i32(-10836i, u_input.b), -abs(-4393i), -1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(4100i, var_2.a.x, 21886i, var_3.a.x), -vec4<i32>(var_2.a.x, var_4.x, 34652i, 16642i)))));
}

