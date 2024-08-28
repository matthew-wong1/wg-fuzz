struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
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

var<private> global0: array<f32, 5> = array<f32, 5>(-366f, 231f, -1229f, -510f, 533f);

var<private> global1: array<bool, 21> = array<bool, 21>(true, false, false, true, true, false, false, true, true, true, false, true, false, false, true, false, true, true, false, true, true);

var<private> global2: vec4<f32> = vec4<f32>(802f, -1035f, -1186f, 1234f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    return u_input.d.x;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1229f), _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(f32(-1f) * -2032f))))));
    var var_1 = Struct_2(select(vec3<bool>(global1[_wgslsmith_index_u32(~1u, 21u)], !any(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], false)), all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], true))), select(vec3<bool>(true, -735f > var_0.x, true), vec3<bool>(global1[_wgslsmith_index_u32(~4245u, 21u)], true, all(vec3<bool>(true, global1[_wgslsmith_index_u32(arg_0, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]))), vec3<bool>(any(vec3<bool>(true, global1[_wgslsmith_index_u32(96348u, 21u)], false)), true, true)), global1[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_div_u32(36051u, func_3() >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0, arg_0), firstTrailingBit(u_input.a.x)) % 32u)));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(43597u, 5u)] + global2.x)) + global2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(137f * _wgslsmith_f_op_f32(round(-399f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, 1257f), _wgslsmith_div_f32(-1293f, var_0.x))))), 1f, _wgslsmith_f_op_f32(-1919f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))))));
    global0 = array<f32, 5>();
    var var_2 = firstLeadingBit(80874u);
    return Struct_1(~abs(u_input.a.x << (~1u % 32u)), ~arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), global0[_wgslsmith_index_u32(4294967295u, 5u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1262f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.b, 5u)]), -1493f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], 731f, -413f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global0[_wgslsmith_index_u32(arg_0.a, 5u)], 527f, global2.x) + vec4<f32>(global0[_wgslsmith_index_u32(1u, 5u)], global2.x, -205f, -516f)), !global1[_wgslsmith_index_u32(arg_0.a, 21u)])))))));
    global1 = array<bool, 21>();
    let var_1 = arg_1.a;
    var var_2 = arg_1;
    var_2 = arg_1;
    return var_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_2(!select(select(!vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b, 21u)], arg_1.x, true), !vec3<bool>(false, arg_1.x, true), u_input.b == -17172i), select(arg_0.a, !arg_1.wwy, global1[_wgslsmith_index_u32(arg_0.b >> (u_input.d.x % 32u), 21u)]), !vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b, 21u)], arg_0.a.x, global1[_wgslsmith_index_u32(u_input.d.x, 21u)])), reverseBits(1u));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 2726f, 187f, global2.x), vec4<f32>(global0[_wgslsmith_index_u32(1u, 5u)], -1309f, 700f, global0[_wgslsmith_index_u32(var_0.b, 5u)])))), vec4<f32>(1000f, 881f, _wgslsmith_f_op_f32(-global2.x), global2.x))));
    var var_1 = Struct_1(func_3(), ~arg_0.b);
    let var_2 = vec2<u32>(~(~1u), var_1.b);
    let var_3 = vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(arg_0.b) | ~54542u, 49162u), 5u)], _wgslsmith_f_op_f32(-global2.x), 1132f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(76430u), _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, var_0.b)), 5u)]))));
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = func_5(Struct_2(func_4(func_2(35319u, vec2<i32>(arg_2.x, arg_0) & vec2<i32>(u_input.e, 0i)), Struct_2(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, arg_1.x), ~u_input.a.x), Struct_1(33325u, ~u_input.a.x)), 4294967295u), !(!(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 21u)], arg_1.x, false), vec4<bool>(arg_1.x, false, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], true), vec4<bool>(true, false, true, true)))));
    let var_1 = -1i;
    var var_2 = func_5(func_5(func_5(func_5(Struct_2(var_0.a, 0u), select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, false, true, true), vec4<bool>(false, false, var_0.a.x, var_0.a.x))), !(!vec4<bool>(true, true, true, arg_1.x))), !vec4<bool>(true, all(vec2<bool>(false, var_0.a.x)), arg_1.x, true)), vec4<bool>(var_0.a.x || !any(var_0.a), func_4(Struct_1(~u_input.a.x, 1u & var_0.b), Struct_2(vec3<bool>(var_0.a.x, false, global1[_wgslsmith_index_u32(var_0.b, 21u)]), ~4294967295u), Struct_1(~74636u, 1u)).x, !(any(arg_1) || false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-318f, global2.x) + _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.d.x, 5u)]))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(693f * 1000f), -1886f)));
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_2.xyw, vec3<i32>(arg_0, u_input.e, var_1), arg_2.wyx) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_2.b, var_0.b, 4294967295u), vec3<u32>(1u, 15169u, 49731u)) % vec3<u32>(32u)), select(countOneBits(vec3<i32>(arg_0, u_input.c.x, 2147483647i)), ~arg_2.yyx, select(var_2.a.x, arg_1.x, false))), arg_0 & min(select(u_input.e, arg_0, global1[_wgslsmith_index_u32(var_2.b, 21u)]), _wgslsmith_dot_vec3_i32(arg_2.yyx, vec3<i32>(arg_2.x, u_input.e, var_1)))), arg_2.x, firstTrailingBit(arg_2.x) << (~u_input.d.x % 32u), ~47193i);
    global1 = array<bool, 21>();
    return Struct_2(vec3<bool>(var_2.a.x, global1[_wgslsmith_index_u32(~u_input.a.x, 21u)], any(!vec3<bool>(arg_1.x, global1[_wgslsmith_index_u32(6874u, 21u)], var_2.a.x))), u_input.d.x);
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = Struct_2(select(func_1(u_input.b, vec2<bool>(all(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(7922u, 21u)])), global1[_wgslsmith_index_u32(0u, 21u)]), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.e, -28998i, u_input.e), vec4<i32>(1i, 2147483647i, u_input.c.x, 32704i))).a, select(!vec3<bool>(false, global1[_wgslsmith_index_u32(16199u, 21u)], true), vec3<bool>(true, u_input.e != 34156i, !global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), global1[_wgslsmith_index_u32(func_5(Struct_2(vec3<bool>(true, true, false), u_input.a.x), vec4<bool>(true, arg_1.a.x, true, true)).b, 21u)]), _wgslsmith_f_op_f32(ceil(1526f)) >= _wgslsmith_div_f32(-1009f, _wgslsmith_f_op_f32(-2102f * arg_0))), 83992u);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(var_0.b, 5u)], 197f, global0[_wgslsmith_index_u32(1351u, 5u)]), vec4<f32>(-1435f, 961f, arg_0, -1482f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-155f, arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global2.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, global2.x, 1746f, global2.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 5u)], global2.x, -333f), vec4<f32>(-1155f, arg_0, 586f, 1177f))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 1000f, global2.x, -1616f))))));
    let var_2 = u_input.c.x;
    var var_3 = 1i;
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_1.x, arg_0, var_1.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-317f + _wgslsmith_f_op_f32(arg_0 + arg_0)), 220f, 1031f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)))), vec4<f32>(-105f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x + 997f), _wgslsmith_f_op_f32(global2.x * arg_0), select(var_0.a.x, var_0.a.x, var_0.a.x))) + var_1.x), global2.x, _wgslsmith_f_op_f32(-509f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0)), global0[_wgslsmith_index_u32(29077u, 5u)]))), vec4<bool>(!(global2.x <= 1000f), true, !(_wgslsmith_div_f32(global2.x, 300f) < _wgslsmith_f_op_f32(887f * global2.x)), global1[_wgslsmith_index_u32(~0u, 21u)])));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-177f, _wgslsmith_f_op_f32(max(arg_0, 281f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))) + -1184f), var_1.x));
}

fn func_7(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = 4294967295u;
    var var_1 = Struct_2(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 21u)] || true, global1[_wgslsmith_index_u32(~func_3(), 21u)]), ~_wgslsmith_dot_vec3_u32(vec3<u32>(abs(1u), 7178u, ~u_input.a.x), vec3<u32>(u_input.a.x, 141u, 12708u) >> (~u_input.a.xxy % vec3<u32>(32u))));
    var var_2 = _wgslsmith_add_vec2_i32(abs(~vec2<i32>(u_input.b, ~u_input.c.x)), _wgslsmith_sub_vec2_i32(firstLeadingBit(~(u_input.c.zz & u_input.c.zy)), _wgslsmith_sub_vec2_i32(u_input.c.xz, u_input.c.zy)));
    let var_3 = func_2(u_input.a.x, -u_input.c.yz);
    var var_4 = Struct_2(vec3<bool>(true, !var_1.a.x, false), _wgslsmith_clamp_u32(4294967295u, ~countOneBits(var_3.a) ^ ~(~var_3.a), u_input.a.x));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1173f + global2.x))), 1399f), _wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1143f))))), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(func_7(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global2.wzw - _wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), func_1(0i, vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec4<i32>(-361i, u_input.c.x, 2147483647i, u_input.e)))))))));
    let var_0 = func_5(Struct_2(!func_1(_wgslsmith_div_i32(5164i, u_input.e), func_4(Struct_1(u_input.d.x, 4294967295u), Struct_2(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), 21121u), Struct_1(u_input.a.x, 37666u)).yy, vec4<i32>(5028i, u_input.c.x, u_input.e, u_input.c.x)).a, 1138u), vec4<bool>(true, false, global1[_wgslsmith_index_u32(25584u, 21u)], global1[_wgslsmith_index_u32(6384u, 21u)]));
    global0 = array<f32, 5>();
    let var_1 = false;
    var var_2 = 19264u;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, global2.x, var_1)), _wgslsmith_f_op_vec3_f32(func_6(global2.x, Struct_2(var_0.a, 0u))).x, _wgslsmith_f_op_f32(1382f * global2.x), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(39561u, var_0.b), 5u)])), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], -1344f, global0[_wgslsmith_index_u32(var_0.b, 5u)], -212f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(517f, 215f, -510f, -697f), vec4<f32>(-1873f, global2.x, global2.x, 1684f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -890f, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 181f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-610f, global2.x, -567f, global0[_wgslsmith_index_u32(var_0.b, 5u)]), vec4<f32>(global2.x, global0[_wgslsmith_index_u32(0u, 5u)], global2.x, 400f)))), var_1)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1332f, global2.x, _wgslsmith_f_op_f32(f32(-1f) * -279f), global2.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global2.x - -481f), _wgslsmith_f_op_f32(f32(-1f) * -1109f), _wgslsmith_f_op_f32(global2.x - global0[_wgslsmith_index_u32(0u, 5u)]), 193f), vec4<f32>(global0[_wgslsmith_index_u32(func_3(), 5u)], global0[_wgslsmith_index_u32(1892u, 5u)], 416f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.b, 5u)])))))));
    var var_3 = func_5(var_0, !select(vec4<bool>(var_0.a.x | var_0.a.x, global0[_wgslsmith_index_u32(var_0.b, 5u)] <= global0[_wgslsmith_index_u32(1u, 5u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 21u)], any(var_0.a.zy), !var_1, true && var_1), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.b, 21u)], false, true, true), select(vec4<bool>(global1[_wgslsmith_index_u32(42289u, 21u)], false, var_0.a.x, false), vec4<bool>(true, false, true, true), var_1), !vec4<bool>(var_0.a.x, var_1, true, global1[_wgslsmith_index_u32(var_0.b, 21u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(select(_wgslsmith_mult_vec2_i32(u_input.c.yz, u_input.c.zz), u_input.c.yy, var_0.b >= var_0.b), -vec2<i32>(u_input.b, u_input.b)) & ((i32(-1i) * -2147483647i) | u_input.e));
}

