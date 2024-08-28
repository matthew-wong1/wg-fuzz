struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(11616u, 18944u, 1u), vec3<u32>(25327u, 65983u, 4294967295u), vec3<u32>(1u, 89390u, 4777u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(47691u, 0u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 13594u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(31449u, 6055u, 51798u), vec3<u32>(10639u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 1u), vec3<u32>(101459u, 96901u, 19122u), vec3<u32>(40540u, 1u, 1u), vec3<u32>(0u, 1u, 4316u), vec3<u32>(1294u, 4294967295u, 44700u), vec3<u32>(1u, 1u, 0u));

var<private> global2: Struct_1;

var<private> global3: array<i32, 11> = array<i32, 11>(1i, -22393i, 12505i, -49116i, 6089i, 2147483647i, -17563i, -43955i, 2147483647i, -74268i, 34728i);

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    var var_0 = arg_0.xzx;
    global4 = Struct_1(!(!select(global2.a, global2.a, true)), u_input.a, _wgslsmith_f_op_f32(trunc(1f)), abs(var_0.x), -2147483647i);
    let var_1 = Struct_1(select(global2.a, global4.a, select(!select(vec3<bool>(true, false, true), vec3<bool>(true, global4.a.x, true), true), !global4.a, !select(global4.a, vec3<bool>(false, false, global2.a.x), global4.a.x))), global4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * global4.c) * _wgslsmith_f_op_f32(floor(591f))) + -1293f)), var_0.x, firstTrailingBit(global2.d ^ -18638i));
    global3 = array<i32, 11>();
    return _wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.e, var_1.e), global2.e);
}

fn func_4(arg_0: i32, arg_1: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_clamp_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 6174u), vec2<u32>(0u, 0u)), min(u_input.c, 1u), u_input.c), vec3<u32>(reverseBits(u_input.c), _wgslsmith_clamp_u32(u_input.c, u_input.c, 4294967295u), ~12261u)), ~(~global1[_wgslsmith_index_u32(0u, 19u)])), abs(vec3<u32>(_wgslsmith_add_u32(u_input.c, 4294967295u), u_input.c, ~u_input.c)) >> (~global1[_wgslsmith_index_u32(4351u, 19u)] % vec3<u32>(32u)), vec3<u32>(22214u, 67101u, _wgslsmith_mod_u32(1u, max(u_input.c, u_input.c))));
    global3 = array<i32, 11>();
    let var_1 = firstTrailingBit(countOneBits(u_input.a));
    var var_2 = Struct_1(!global4.a, global2.b, -566f, countOneBits((var_1.x & 0i) << (var_0.x % 32u)), i32(-1i) * -9403i);
    let var_3 = 856f;
    return vec3<i32>(firstTrailingBit(-select(0i, u_input.b, any(vec4<bool>(global4.a.x, true, false, global4.a.x)))), _wgslsmith_clamp_i32(var_2.d, _wgslsmith_sub_i32(var_1.x, abs(u_input.a.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-10503i, 1i, -13864i), select(vec3<i32>(9914i, arg_0, 10849i), vec3<i32>(24937i, var_2.e, -12720i), global2.a)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-48011i, 2147483647i, 77517i), vec3<i32>(var_1.x, arg_0, global4.e)))), -4581i);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: u32) -> vec2<i32> {
    global3 = array<i32, 11>();
    var var_0 = Struct_1(vec3<bool>(any(arg_0.xw), !(!(global2.b.x > -677i)), global4.a.x), ~(~(~(-global2.b))), _wgslsmith_f_op_f32(global2.c - global4.c), _wgslsmith_clamp_i32(global2.d, _wgslsmith_dot_vec2_i32((vec2<i32>(global3[_wgslsmith_index_u32(33303u, 11u)], -1i) >> (vec2<u32>(4294967295u, 10880u) % vec2<u32>(32u))) | global2.b, global2.b), select(41382i & _wgslsmith_dot_vec3_i32(vec3<i32>(-24295i, global3[_wgslsmith_index_u32(arg_2, 11u)], 0i), vec3<i32>(-13162i, u_input.b, global2.e)), u_input.a.x, false)), ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~global4.e, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(arg_2, 11u)], global4.d)), -18841i, global2.b.x));
    var var_1 = ~1u;
    let var_2 = select(-vec3<i32>(1i >> (arg_2 % 32u), -2147483647i << (arg_2 % 32u), _wgslsmith_mod_i32(u_input.a.x, var_0.e)) | (vec3<i32>(-1i) * -(vec3<i32>(-1i, -2044i, global2.d) << (vec3<u32>(u_input.c, u_input.c, 9446u) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_i32(~(-_wgslsmith_div_vec3_i32(vec3<i32>(-28329i, var_0.e, global3[_wgslsmith_index_u32(4294967295u, 11u)]), vec3<i32>(var_0.d, 15917i, -2147483647i))), func_4(func_3(vec4<i32>(9673i, global3[_wgslsmith_index_u32(arg_2, 11u)], u_input.a.x, global2.d) | vec4<i32>(4609i, global3[_wgslsmith_index_u32(u_input.c, 11u)], 0i, var_0.d)), _wgslsmith_f_op_f32(exp2(global4.c)))), var_0.a);
    var var_3 = vec3<i32>(global3[_wgslsmith_index_u32(0u, 11u)] << (arg_2 % 32u), 1i, 5556i);
    return var_0.b;
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = ~firstLeadingBit(func_2(!(!vec4<bool>(global2.a.x, false, true, global2.a.x)), !global2.a.x, 4294967295u));
    global3 = array<i32, 11>();
    let var_1 = Struct_1(vec3<bool>(!((global4.b.x >> (u_input.c % 32u)) == (i32(-1i) * -1i)), !any(select(global4.a.yy, vec2<bool>(false, global2.a.x), global2.a.x)), false), ~vec2<i32>(~_wgslsmith_div_i32(4730i, global4.e), var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.c * global2.c), _wgslsmith_f_op_f32(max(global4.c, global4.c))), _wgslsmith_f_op_f32(global4.c + _wgslsmith_f_op_f32(max(global2.c, 1956f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * global2.c) + _wgslsmith_f_op_f32(-389f - global2.c)), global4.c))), global3[_wgslsmith_index_u32(1u & u_input.c, 11u)] | arg_0, ~(-_wgslsmith_dot_vec3_i32(-vec3<i32>(28023i, 1i, arg_0), vec3<i32>(global4.d, global2.e, var_0.x) & vec3<i32>(var_0.x, 0i, -23247i))));
    var var_2 = u_input.c;
    let var_3 = 2147483647i;
    return vec4<bool>(!global4.a.x, global4.a.x, any(vec3<bool>(501f != _wgslsmith_f_op_f32(-global2.c), !all(var_1.a), any(select(vec2<bool>(global2.a.x, global2.a.x), vec2<bool>(false, var_1.a.x), var_1.a.x)))), var_1.a.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(!select(arg_2.a, !global4.a, !vec3<bool>(false, arg_0.x, true)), ~global4.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1098f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1604f, _wgslsmith_f_op_f32(-arg_2.c)))))), ~min(global2.e | (arg_2.d >> (u_input.c % 32u)), _wgslsmith_add_i32(u_input.b, -2147483647i)), -global4.e);
    var var_1 = func_4(select(-global3[_wgslsmith_index_u32(59545u, 11u)] | _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global2.b.x), global4.b), arg_2.b.x, (u_input.b != global3[_wgslsmith_index_u32(u_input.c, 11u)]) & true), -771f).yz << ((_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(4294967295u, u_input.c)), ~vec2<u32>(u_input.c, 8658u), countOneBits(vec2<u32>(u_input.c, u_input.c))), (vec2<u32>(16307u, u_input.c) | vec2<u32>(u_input.c, 1u)) | vec2<u32>(1u, 4294967295u)) >> (~(~countOneBits(vec2<u32>(7884u, u_input.c))) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = select(vec2<u32>(u_input.c, u_input.c), firstLeadingBit(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 1u), ~vec2<u32>(u_input.c, 0u), select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(23759u, 4294967295u), arg_2.a.x)), vec2<u32>(1u, 20416u << (1u % 32u)), u_input.b <= -17037i)), false);
    global0 = !var_0.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.c, 1069f), vec2<f32>(301f, arg_2.c))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c, 849f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, arg_2.c) + vec2<f32>(-762f, global2.c))), false))));
    return arg_2.a.x;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> StorageBuffer {
    let var_0 = vec2<u32>(~9621u, u_input.c);
    var var_1 = Struct_1(arg_2.a, _wgslsmith_div_vec2_i32(~vec2<i32>(-68119i, firstTrailingBit(0i)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(func_4(-1i, 1548f).xy, -vec2<i32>(arg_1.e, -16038i)), ~vec2<i32>(global3[_wgslsmith_index_u32(var_0.x, 11u)], u_input.b))), _wgslsmith_f_op_f32(sign(-2339f)), u_input.a.x, _wgslsmith_dot_vec2_i32(select(abs(global2.b), func_4(-2147483647i, 427f).zy & -vec2<i32>(-18547i, global4.b.x), false), firstTrailingBit(vec2<i32>(9539i, -3185i)) >> (_wgslsmith_sub_vec2_u32(var_0, vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))));
    return StorageBuffer(arg_1.b, 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c), -1339f)), _wgslsmith_f_op_f32(-global2.c)) - _wgslsmith_f_op_f32(-1748f * global4.c)), ~select(~(~vec4<u32>(var_0.x, 2324u, var_0.x, var_0.x)), vec4<u32>(abs(u_input.c), abs(4294967295u), var_0.x, u_input.c), !vec4<bool>(true, arg_2.a.x, false, var_1.a.x)), _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global4.d, 29400i, global2.d) ^ vec4<i32>(14600i, global4.e, global3[_wgslsmith_index_u32(1u, 11u)], 2147483647i), vec4<i32>(arg_3.x, global3[_wgslsmith_index_u32(6910u, 11u)], -2147483647i, arg_3.x)), max(~(~vec4<i32>(2147483647i, arg_2.d, -2147483647i, -1i)), (vec4<i32>(2147483647i, u_input.a.x, var_1.d, -1i) << (vec4<u32>(11231u, 49445u, u_input.c, u_input.c) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(var_0.x, 11u)], 19903i, 2147483647i, -1472i), vec4<i32>(arg_1.e, global2.d, global3[_wgslsmith_index_u32(4294967295u, 11u)], arg_1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global4.c + global4.c), global4.c))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.c))), -941f)));
    let x = u_input.a;
    s_output = func_6(select(select(vec2<bool>(true, global4.a.x), vec2<bool>(true, any(vec2<bool>(true, false))), true), vec2<bool>(func_5(func_1(global3[_wgslsmith_index_u32(u_input.c, 11u)]), vec2<bool>(global4.a.x, true), Struct_1(global4.a, u_input.a, 1364f, -41393i, global2.d)), false), global4.c != _wgslsmith_f_op_f32(f32(-1f) * -666f)), Struct_1(select(vec3<bool>(!global2.a.x, true, global4.c >= global4.c), !global4.a, !(!global4.a.x)), abs(func_2(select(vec4<bool>(global4.a.x, false, global2.a.x, false), vec4<bool>(false, global2.a.x, global2.a.x, true), vec4<bool>(true, false, global4.a.x, true)), func_1(global3[_wgslsmith_index_u32(u_input.c, 11u)]).x, u_input.c)), _wgslsmith_f_op_f32(sign(var_0.x)), -53618i, global4.b.x), Struct_1(!vec3<bool>(any(global2.a.yy), all(global2.a), global3[_wgslsmith_index_u32(u_input.c, 11u)] >= global4.d), ~_wgslsmith_sub_vec2_i32(-u_input.a, global4.b), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1143f, _wgslsmith_f_op_f32(min(349f, 1233f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(746f * var_0.x))), func_5(vec4<bool>(true, global2.a.x, global2.a.x, false), select(vec2<bool>(global4.a.x, global4.a.x), vec2<bool>(global4.a.x, global4.a.x), global2.a.xy), Struct_1(global4.a, vec2<i32>(global4.b.x, -60306i), 1191f, 82582i, -2147483647i)))), 1i, -1i), min(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, countOneBits(75337i)), vec2<i32>(-global4.e, ~global3[_wgslsmith_index_u32(67400u, 11u)])), min(vec2<i32>(2147483647i, global2.e) & u_input.a, ~global2.b)));
}

