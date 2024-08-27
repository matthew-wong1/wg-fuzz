struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-12777i, i32(-2147483648), 2133i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, 11955i, 0i), vec4<i32>(-38417i, -39024i, 24928i, i32(-2147483648)), vec4<i32>(7120i, 74006i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, -1i, -1i, 64224i));

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec3<f32>(-664f, 372f, -674f), vec3<bool>(false, false, false)), Struct_2(vec3<f32>(-659f, -1000f, 2059f), vec3<bool>(true, false, false)), Struct_2(vec3<f32>(333f, 1203f, 391f), vec3<bool>(false, false, false)), Struct_2(vec3<f32>(1114f, 810f, 774f), vec3<bool>(false, false, false)), Struct_2(vec3<f32>(512f, -1125f, 1142f), vec3<bool>(true, true, false)), Struct_2(vec3<f32>(-138f, 934f, 1237f), vec3<bool>(true, true, true)), Struct_2(vec3<f32>(276f, 806f, -665f), vec3<bool>(true, true, false)), Struct_2(vec3<f32>(-148f, -689f, 130f), vec3<bool>(true, true, true)));

var<private> global2: array<Struct_2, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 611f, 890f, arg_1.a.x) + vec4<f32>(arg_0.x, -927f, -1000f, 841f))))));
    global1 = array<Struct_2, 8>();
    global0 = array<vec4<i32>, 5>();
    global2 = array<Struct_2, 29>();
    global2 = array<Struct_2, 29>();
    return arg_1.a.x;
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = arg_0.b | u_input.c;
    let var_1 = global1[_wgslsmith_index_u32(arg_0.e.x, 8u)];
    var var_2 = arg_0;
    global0 = array<vec4<i32>, 5>();
    var_2 = arg_0;
    return vec3<f32>(875f, -1773f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(var_1.a.x, 548f), global2[_wgslsmith_index_u32(u_input.b.x, 29u)]))), 405f))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = all(!vec2<bool>(true, all(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, true), vec2<bool>(true, true)))));
    global1 = array<Struct_2, 8>();
    var var_1 = arg_2.x;
    var var_2 = 37383u;
    global0 = array<vec4<i32>, 5>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-270f, 625f, arg_3.x, arg_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, -744f, arg_2.x) + vec4<f32>(368f, 1543f, arg_3.x, arg_3.x)))))))), vec4<u32>(~u_input.c.x, firstLeadingBit(15054u), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 0u), u_input.b.x), (_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), 1i) <= arg_0) == var_0, !(!all(select(vec4<bool>(true, false, arg_1, true), vec4<bool>(false, arg_1, false, var_0), vec4<bool>(var_0, arg_1, false, true)))), vec4<u32>(_wgslsmith_add_u32(u_input.a, ~17043u), _wgslsmith_div_u32(4294967295u, ~u_input.e.x), 15346u, u_input.b.x >> (~u_input.b.x % 32u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 42691u;
    let var_1 = arg_2.a;
    global1 = array<Struct_2, 8>();
    var var_2 = vec2<bool>(!arg_1.c, _wgslsmith_clamp_i32(-1i, u_input.d.x, reverseBits(-u_input.d.x)) < max(~max(u_input.d.x, u_input.d.x), ~(i32(-1i) * -73633i)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2.a), _wgslsmith_f_op_vec4_f32(trunc(arg_2.a)), true)))), abs(abs(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 43865u, 0u), abs(var_0), ~4294967295u, _wgslsmith_dot_vec2_u32(arg_2.b.zz, vec2<u32>(35838u, 93520u))))), arg_2.d, !(any(vec2<bool>(arg_1.d, true)) || arg_1.d), vec4<u32>(82788u, _wgslsmith_div_u32(_wgslsmith_div_u32(arg_2.e.x & 4294967295u, _wgslsmith_mod_u32(0u, 21665u)), arg_1.e.x), reverseBits(_wgslsmith_mult_u32(arg_2.e.x, max(1u, u_input.c.x))), ~_wgslsmith_mod_u32(firstTrailingBit(42480u), arg_0.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> bool {
    global1 = array<Struct_2, 8>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-1019f * -548f), _wgslsmith_div_f32(arg_1, 225f)))), vec3<bool>(false, true, false));
    let var_1 = func_5(abs(firstTrailingBit(u_input.e) ^ _wgslsmith_div_vec3_u32(~u_input.c.zzy, vec3<u32>(u_input.a, u_input.b.x, u_input.e.x))), func_4(countOneBits(i32(-1i) * -arg_0.x), var_0.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1418f, arg_1, arg_1))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, arg_1, -962f), u_input.c, true, true, u_input.c))), vec3<f32>(var_0.a.x, 245f, -443f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1121f, 160f, 263f), _wgslsmith_f_op_vec3_f32(ceil(var_0.a)), !vec3<bool>(var_0.b.x, true, var_0.b.x))))), func_4(firstLeadingBit(u_input.d.x), !all(var_0.b.xy) && true, vec3<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(round(767f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec4<f32>(arg_1, var_0.a.x, -1800f, arg_1), u_input.c, false, true, u_input.c)))))));
    var var_2 = ~_wgslsmith_dot_vec2_i32(arg_0.xw, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~arg_0.yw, ~arg_0.yz), -_wgslsmith_sub_vec2_i32(u_input.d.xx, vec2<i32>(arg_0.x, -2147483647i))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.a.wwz + vec3<f32>(-334f, 998f, 1340f)), var_1.a.ywz)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2094f, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_1.a.x, -1462f))))), var_0.b);
    return !(!(select(-696f < var_3.a.x, !var_3.b.x, var_3.b.x && var_3.b.x) || true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-936f, 1639f, -610f), vec3<f32>(-1240f, 1037f, 416f), false)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-248f, 249f, -806f) - vec3<f32>(-352f, 190f, -626f)))), vec3<f32>(-908f, -135f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -635f))))), select(vec3<bool>(false, !all(vec3<bool>(false, true, true)), true), vec3<bool>(false, u_input.a >= ~u_input.b.x, (u_input.e.x < 4294967295u) | true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), any(vec2<bool>(true, false)))));
    var var_1 = u_input.a == ~0u;
    let var_2 = !(func_1(global0[_wgslsmith_index_u32(u_input.a, 5u)], var_0.a.x) && false);
    global1 = array<Struct_2, 8>();
    var_0 = global1[_wgslsmith_index_u32(5819u, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(359f, ~29589u, var_0.a.x, firstLeadingBit(u_input.e) << (u_input.c.zwy % vec3<u32>(32u)));
}

