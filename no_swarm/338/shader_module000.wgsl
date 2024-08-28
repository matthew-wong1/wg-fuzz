struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: array<bool, 12>;

var<private> global2: array<Struct_2, 2>;

var<private> global3: u32 = 3353u;

var<private> global4: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<u32>) -> vec3<u32> {
    global3 = _wgslsmith_add_u32(arg_3.x, 1u);
    var var_0 = vec4<i32>(-max(firstTrailingBit(~arg_2.x), _wgslsmith_sub_i32(1193i & u_input.b, u_input.b)), 1i, 1i, min(_wgslsmith_div_i32(~_wgslsmith_add_i32(-54538i, arg_2.x), arg_2.x), _wgslsmith_add_i32(~arg_2.x, countOneBits(arg_2.x))));
    global3 = 4294967295u;
    let var_1 = ~0u;
    let var_2 = arg_2;
    return vec3<u32>(arg_3.x, 51052u, _wgslsmith_clamp_u32(u_input.a, (arg_3.x ^ ~33787u) >> (_wgslsmith_clamp_u32(reverseBits(22293u), ~88769u, ~1u) % 32u), (~1u >> (arg_1 % 32u)) >> (_wgslsmith_div_u32(abs(arg_3.x), 90193u) % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> vec2<f32> {
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-258f, arg_0.b.x)));
    var var_1 = !select(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], true, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(arg_0.c, 12u)])), !(!select(vec4<bool>(arg_3, false, arg_3, arg_3), vec4<bool>(true, false, arg_3, global1[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(arg_1.x, 12u)], true, arg_3))), select(!(!vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 12u)], false, arg_3, false)), vec4<bool>(true, u_input.c.x >= arg_1.x, arg_3, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.c, arg_1.x), 12u)]), vec4<bool>(!arg_3, global1[_wgslsmith_index_u32(arg_0.c, 12u)], !arg_3, arg_3 | false)));
    var var_2 = vec2<bool>(true, all(vec3<bool>(arg_0.d.b > arg_0.a.c, all(vec4<bool>(true, arg_3, arg_3, false)) & true, !arg_3)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1026f - arg_0.d.a.x) + 1496f)))), -1568f);
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(150f, -1081f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1009f, 322f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(0i, u_input.b) ^ (vec2<i32>(2147483647i, u_input.b) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), u_input.b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(global0[_wgslsmith_index_u32(~u_input.c.x, 17u)], vec2<f32>(-619f, 651f), u_input.a, Struct_2(vec2<f32>(1797f, 1000f), u_input.b, -32900i)), ~func_3(-769f, 0u, vec2<i32>(-1i, -5013i), u_input.c.wy), Struct_1(u_input.b << (28579u % 32u)), all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(34225u, 12u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(31177u, 12u)]))))))), u_input.c.x, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-224f, -542f), vec2<f32>(-767f, 900f), false))), u_input.b, ~1i));
    var var_1 = var_0;
    global4 = var_0.c;
    global2 = array<Struct_2, 2>();
    global0 = array<Struct_2, 17>();
    return -(-vec3<i32>(-u_input.b, -17844i, _wgslsmith_mult_i32(var_1.d.b, u_input.b)) & vec3<i32>(abs(countOneBits(var_0.d.c)), 2147483647i, u_input.b));
}

fn func_5(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(354f, arg_1)), vec2<f32>(-618f, -1092f), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 12u)])))), func_2().x, -(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, u_input.b), vec2<i32>(2147483647i, u_input.b)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 67811u), u_input.c.wx) % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, arg_1), vec2<f32>(-621f, 1049f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1033f, -423f)))))) + _wgslsmith_f_op_vec2_f32(func_4(Struct_3(Struct_2(vec2<f32>(arg_1, 1370f), u_input.b, -61267i), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(-1000f, 963f)), u_input.a, Struct_2(vec2<f32>(1028f, arg_1), -31060i, u_input.b)), u_input.c.ywx, Struct_1(~u_input.b), global1[_wgslsmith_index_u32(~55855u, 12u)]))), ~(~min(38607u, u_input.c.x)), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, arg_1))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(107f, arg_1), vec2<f32>(-1891f, -1652f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(813f, 1672f)))), func_2().x, select(-2147483647i, reverseBits(-arg_0), !global1[_wgslsmith_index_u32(u_input.c.x, 12u)] & global1[_wgslsmith_index_u32(80948u, 12u)])));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(-1000f, arg_1)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, var_0.b.x), var_0.b, vec2<bool>(true, false))))), -1i, ~(-1i)), var_0.a.a, 28212u, var_0.d);
    var var_2 = var_0;
    let var_3 = -2147483647i;
    let var_4 = reverseBits(arg_0) ^ ~(~(~(-1099i)));
    return var_1.d.c;
}

fn func_6(arg_0: i32, arg_1: vec3<bool>, arg_2: bool) -> vec3<i32> {
    var var_0 = -1974f;
    let var_1 = Struct_1(reverseBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, -6117i), max(vec2<i32>(-36401i, 34004i), vec2<i32>(12004i, u_input.b)) ^ vec2<i32>(arg_0, arg_0))));
    var var_2 = 1u;
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-201f, -1718f, false)), _wgslsmith_f_op_f32(select(152f, -1049f, true))) + vec2<f32>(_wgslsmith_f_op_f32(-478f * -914f), _wgslsmith_f_op_f32(f32(-1f) * -1372f))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(18233i, var_1.a, 12846i, arg_0), vec4<i32>(-20736i, 38565i, u_input.b, arg_0)), ~vec4<i32>(0i, arg_0, 34673i, var_1.a)), arg_0), arg_0), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1715f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -178f) - -248f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-720f))))), ~_wgslsmith_div_u32(~u_input.a, u_input.c.x), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1988f, -1000f) - vec2<f32>(602f, -1158f)))), var_1.a, var_1.a));
    var var_4 = vec4<bool>(!(~0u >= ~(~u_input.c.x)), true | (global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 12u)] && (global1[_wgslsmith_index_u32(abs(58608u), 12u)] == (arg_2 & global1[_wgslsmith_index_u32(22619u, 12u)]))), arg_2, u_input.a > func_3(var_3.d.a.x, 1u, _wgslsmith_sub_vec2_i32(max(vec2<i32>(var_1.a, 56805i), vec2<i32>(var_1.a, var_3.d.c)), reverseBits(vec2<i32>(u_input.b, -1i))), u_input.c.zx).x);
    return _wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(~(vec3<i32>(var_1.a, var_3.a.c, var_3.d.c) >> (vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u))), firstTrailingBit(~vec3<i32>(29774i, arg_0, u_input.b)))), ~abs(-vec3<i32>(var_1.a, var_1.a, -87557i)) & ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, -1i, -2147483647i, 6729i), vec4<i32>(var_1.a, 50096i, -26524i, var_3.d.b)), _wgslsmith_div_i32(-2147483647i, 4429i), func_5(u_input.b, 561f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = u_input.c.yx;
    let var_1 = arg_0;
    global4 = ~(~u_input.a);
    let var_2 = func_6(func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, -1i, i32(-1i) * -2147483647i), func_2()), _wgslsmith_f_op_f32(-arg_1.a.x)), select(select(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], false, global1[_wgslsmith_index_u32(1u, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], true), global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec3<bool>(select(false, global1[_wgslsmith_index_u32(var_0.x, 12u)], true), false, false || global1[_wgslsmith_index_u32(1u, 12u)]), vec3<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(var_0.x, 12u)])), false, !global1[_wgslsmith_index_u32(u_input.a, 12u)])), vec3<bool>(arg_1.a.x == arg_1.a.x, false, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 12u)], true)), vec3<bool>(true, false, false), true)), all(vec4<bool>(_wgslsmith_f_op_f32(select(-2672f, -2633f, false)) <= _wgslsmith_div_f32(215f, arg_1.a.x), _wgslsmith_div_i32(arg_0.a, arg_0.a) != (arg_1.c | var_1.a), true, !(0i == arg_1.c))));
    var var_3 = all(vec4<bool>(all(vec2<bool>(true, global1[_wgslsmith_index_u32(~0u, 12u)])), global1[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 12u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(1u, var_0.x), ~(~var_0.x)), 12u)], all(!(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 12u)])))));
    return var_1;
}

fn func_7(arg_0: Struct_1) -> f32 {
    global4 = ~func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -1567f)) - _wgslsmith_f_op_f32(f32(-1f) * -1103f)) - -1000f), _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, 1u), ~58429u)), vec2<i32>(-func_2().x, 2147483647i), reverseBits(_wgslsmith_add_vec2_u32(u_input.c.zy, vec2<u32>(0u, 4294967295u)))).x;
    let var_0 = select(select(select(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)])), select(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]), false), !vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], true, false)), false), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), !select(all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)])), u_input.a <= u_input.c.x, 36127u <= u_input.a)), !select(vec3<bool>(global1[_wgslsmith_index_u32(69334u, 12u)], all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(54183u, 12u)], false)), false), vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 12u)]), all(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 12u)]))), u_input.c.x > func_3(1991f, ~1u, ~(-vec2<i32>(u_input.b, u_input.b)), reverseBits(_wgslsmith_div_vec2_u32(u_input.c.yw, vec2<u32>(4294967295u, 4294967295u)))).x);
    let var_1 = var_0.x;
    global0 = array<Struct_2, 17>();
    let var_2 = 46266u ^ func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-225f + -710f)), 1u, ~(~(-vec2<i32>(-96955i, u_input.b))), ~vec2<u32>(5922u, 0u)).x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-233f, -1574f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(195f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(474f - 1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(func_7(func_1(Struct_1(u_input.b), global0[_wgslsmith_index_u32(u_input.c.x, 17u)]))) > _wgslsmith_f_op_f32(1822f + -817f), true);
    global1 = array<bool, 12>();
    var var_1 = !(!(!any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], true, false, true))));
    global0 = array<Struct_2, 17>();
    global1 = array<bool, 12>();
    let var_2 = u_input.c.ww;
    let var_3 = min(select(select((vec3<u32>(2806u, 29583u, var_2.x) ^ vec3<u32>(0u, var_2.x, 0u)) >> (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u)), ~u_input.c.zyx, !(!var_0.x)), ~(~u_input.c.xyw), all(select(select(var_0, var_0, var_0.x), !var_0, var_0))), u_input.c.wyz);
    let var_4 = Struct_1(min(~1i, 63128i));
    var var_5 = vec3<bool>(true, !(!(!global1[_wgslsmith_index_u32(var_3.x, 12u)]) | (var_0.x & !var_0.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1420f, 910f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -504f))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, u_input.c.x, u_input.a, var_2.x), u_input.c) >> (u_input.c % vec4<u32>(32u))), 4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(299f, -227f, 323f, 347f)))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-519f, -494f, 1033f, -228f))))), ~vec3<u32>(~var_2.x, max(32297u, 1u), ~768u) ^ var_3);
}

