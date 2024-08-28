struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
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

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 18>;

var<private> global2: Struct_3 = Struct_3(true, Struct_2(true));

var<private> global3: Struct_2 = Struct_2(true);

var<private> global4: array<f32, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = abs(-u_input.b);
    let var_1 = ~(~vec4<i32>(abs(1i), u_input.b, _wgslsmith_mod_i32(_wgslsmith_add_i32(27639i, var_0), var_0 >> (16450u % 32u)), -10987i));
    global0 = Struct_3(select(global3.a, arg_0.a, true), global0.b);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1124f, arg_1) * _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(0u, 19u)], arg_1))))), _wgslsmith_f_op_f32(f32(-1f) * -926f)));
    var_2 = Struct_1(1145f);
    return 1204f;
}

fn func_2(arg_0: u32) -> bool {
    global4 = array<f32, 19>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f - _wgslsmith_f_op_f32(f32(-1f) * -1952f))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f - _wgslsmith_f_op_f32(func_3(global2.b, _wgslsmith_f_op_f32(select(var_0.a, -1000f, global3.a)), min(u_input.a.x, 4294967295u)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0, 19u)])))), 1694f));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(global0.b.a), global4[_wgslsmith_index_u32(arg_0, 19u)], 4294967295u)) * _wgslsmith_div_f32(var_0.a, var_1)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(495f, _wgslsmith_f_op_f32(var_0.a - 1862f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-357f, -914f)))))));
    var var_3 = Struct_3(true, global0.b);
    return -40847i < -max(10190i, -33827i & u_input.b);
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> Struct_2 {
    global3 = global2.b;
    global2 = global1[_wgslsmith_index_u32(0u, 18u)];
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_1, arg_1, 0u), 19u)];
    global2 = Struct_3(any(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, global0.b.a, global2.b.a)), global0.a), select(select(vec3<bool>(global0.b.a, global2.a, global0.a), vec3<bool>(global2.b.a, global3.a, global0.b.a), vec3<bool>(false, false, global0.a)), select(vec3<bool>(global2.b.a, global0.b.a, true), vec3<bool>(global0.b.a, global2.b.a, global0.a), global2.a), true))), global0.b);
    var var_1 = Struct_3(false, global0.b);
    return Struct_2(true);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-430f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-140f - 1041f), _wgslsmith_f_op_f32(arg_2.a + -947f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_f_op_f32(-arg_2.a)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-147f, 501f)))), any(vec2<bool>(any(vec4<bool>(true, global0.a, arg_1, global0.a)), func_2(u_input.a.x))))), 228u);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a), 734f));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = all(select(select(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 19u)] <= global4[_wgslsmith_index_u32(u_input.a.x, 19u)], !global0.a, true), select(!vec4<bool>(true, global3.a, global2.b.a, false), !vec4<bool>(global0.a, true, true, global3.a), select(false, global3.a, true)), all(!vec2<bool>(global0.b.a, global0.a))), !vec4<bool>(false, any(vec3<bool>(global3.a, false, global0.a)), global2.a, global0.a), vec4<bool>(25494u == u_input.a.x, func_4(_wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(22333u, 19u)], arg_2), vec2<f32>(-1206f, -736f)), ~u_input.a.x).a, global3.a, global0.b.a)));
    var var_2 = !select(!vec3<bool>(func_2(u_input.a.x), all(vec3<bool>(global0.a, global2.a, global2.b.a)), false), !(!vec3<bool>(global0.b.a, global3.a, global2.a)), !any(!vec2<bool>(false, global3.a)));
    var var_3 = vec3<bool>(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_1)) + vec2<f32>(arg_1, 1000f))), 4294967295u).a, global3.a, !global2.a != global0.a);
    global3 = func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-967f, global4[_wgslsmith_index_u32(~15090u, 19u)]), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(972f, 693f)))))), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-577f, -134f), vec2<f32>(arg_2, arg_2))), vec2<f32>(296f, global4[_wgslsmith_index_u32(u_input.a.x, 19u)])), ~(~u_input.a.x)).a)), ~(~17640u) >> (abs(~(~u_input.a.x)) % 32u));
    return Struct_1(arg_2);
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<bool> {
    global0 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 18u)];
    global0 = Struct_3(true, func_4(vec2<f32>(-629f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(global2.b.a, global0.b), global2.a, arg_1)))), select(~u_input.a.x, 34950u, !global0.a)));
    global3 = Struct_2(select(func_2(4294967295u), global3.a, 10140i < u_input.b) || true);
    let var_0 = arg_2;
    var var_1 = true;
    return vec4<bool>(func_2(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(35359u, 52982u))), any(vec2<bool>(true, false)), !(true | (u_input.a.x < u_input.a.x)) | (true || (any(vec2<bool>(global2.a, false)) && true)), true || (((u_input.a.x <= u_input.a.x) | global3.a) && !select(false, false, true)));
}

fn func_7(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 18u)];
    var_0 = global1[_wgslsmith_index_u32(~1u, 18u)];
    global4 = array<f32, 19>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(u_input.a.x, 19u)], global4[_wgslsmith_index_u32(u_input.a.x, 19u)])), _wgslsmith_f_op_f32(max(-560f, global4[_wgslsmith_index_u32(u_input.a.x, 19u)])), -997f < arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-720f, global4[_wgslsmith_index_u32(u_input.a.x, 19u)]))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-765f))));
    global1 = array<Struct_3, 18>();
    return Struct_2(true);
}

fn func_8(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(850f + global4[_wgslsmith_index_u32(reverseBits(u_input.a.x), 19u)]));
    global3 = Struct_2(~(~64043u | u_input.a.x) > 1u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global4[_wgslsmith_index_u32(max(u_input.a.x, ~u_input.a.x), 19u)]);
    var var_1 = func_8(_wgslsmith_clamp_i32(-13787i, 1033i | firstLeadingBit(_wgslsmith_sub_i32(43590i, u_input.b)), -u_input.b), func_7(func_6(_wgslsmith_div_i32(-21339i, ~2147483647i), func_5(_wgslsmith_mult_i32(-2147483647i, u_input.b), _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(u_input.a.x, 19u)])), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true, Struct_1(var_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, global4[_wgslsmith_index_u32(u_input.a.x, 19u)], var_0.a, 375f), vec4<f32>(-211f, -242f, global4[_wgslsmith_index_u32(4294967295u, 19u)], var_0.a)))), -12000i, global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a.x, 35276u), vec2<u32>(u_input.a.x, u_input.a.x)), ~vec2<u32>(u_input.a.x, 3230u)), 19u)]), vec3<bool>(true, true, func_7(!(!vec4<bool>(false, global3.a, global0.b.a, global3.a)), u_input.b, _wgslsmith_f_op_f32(func_1(Struct_3(global3.a, global0.b), false, func_5(u_input.b, var_0.a, global4[_wgslsmith_index_u32(u_input.a.x, 19u)])))).a), Struct_2(true));
    global2 = global1[_wgslsmith_index_u32(u_input.a.x >> ((u_input.a.x | ~(select(u_input.a.x, u_input.a.x, global2.b.a) & 4294967295u)) % 32u), 18u)];
    global4 = array<f32, 19>();
    global0 = Struct_3(all(func_6(0i, func_8(u_input.b, func_7(vec4<bool>(global0.b.a, true, global0.a, global3.a), -1i, var_0.a), vec3<bool>(global0.b.a, global0.a, true), Struct_2(global3.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a, -887f, var_0.a, var_0.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, 1106f, 601f, var_0.a) - vec4<f32>(var_1.a, -1655f, var_1.a, var_0.a)))).wxy), func_4(vec2<f32>(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(~u_input.a.x, 19u)], var_0.a), var_1.a), _wgslsmith_dot_vec4_u32(vec4<u32>(58766u, 1u, 0u, ~1u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), reverseBits(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 27160u))))));
    global0 = Struct_3(false, Struct_2(false));
    var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(func_4(vec2<f32>(var_1.a, -203f), max(3027u, 31316u)), var_0.a, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -167f)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_add_i32(~u_input.b, ~(-35071i)), _wgslsmith_mod_i32(u_input.b ^ u_input.b, ~u_input.b), u_input.b, u_input.b));
}

