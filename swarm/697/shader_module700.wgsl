struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: array<u32, 22>;

var<private> global2: u32 = 40965u;

var<private> global3: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(-1i, Struct_1(vec3<bool>(true, true, false), 4294967295u, 1000f), vec4<f32>(-453f, -131f, 175f, 1572f)), Struct_3(i32(-2147483648), Struct_1(vec3<bool>(false, false, true), 0u, -467f), vec4<f32>(515f, -1615f, 206f, -375f)));

var<private> global4: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(1i, -1i, -4705i, -34736i), vec4<i32>(i32(-2147483648), -37602i, -8563i, -5879i), vec4<i32>(20481i, 13643i, 1i, 44762i), vec4<i32>(2147483647i, -17629i, -32158i, -33016i), vec4<i32>(1i, -1i, -6588i, 38800i), vec4<i32>(0i, -1i, -42478i, 0i));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: u32) -> bool {
    var var_0 = Struct_1(!arg_0.zzw, 0u, -1034f);
    var var_1 = Struct_1(var_0.a, ~(~u_input.a), var_0.c);
    global1 = array<u32, 22>();
    var var_2 = global3[_wgslsmith_index_u32(1u, 2u)];
    return !var_2.b.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<u32>) -> vec2<f32> {
    let var_0 = Struct_1(select(select(vec3<bool>(false, true, all(vec4<bool>(true, true, false, true))), vec3<bool>(all(vec2<bool>(true, true)), u_input.b.x < u_input.b.x, all(vec2<bool>(false, true))), !func_3(vec4<bool>(false, true, true, false), 2147483647i, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 17u)], 17u)])), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), true), ~(~(~global1[_wgslsmith_index_u32(4294967295u, 22u)] >> (~44414u % 32u))), _wgslsmith_f_op_f32(-arg_0.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * 813f), _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-var_0.c)))));
    var var_2 = Struct_2(var_0.a.xz, var_0);
    let var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, ~abs(1u), var_0.b), ~(~firstLeadingBit(arg_2.zxx))), abs(1u));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 511f)))))));
    return var_1.zz;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1110f, 813f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.c, arg_3.b.c)), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b.c, -279f) * vec2<f32>(-313f, 1106f)), _wgslsmith_f_op_f32(arg_3.b.c - arg_3.b.c), vec4<u32>(0u, global1[_wgslsmith_index_u32(36384u, 22u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)]))), arg_3.a))));
    let var_1 = arg_0;
    var var_2 = global3[_wgslsmith_index_u32(arg_2 << (firstLeadingBit(arg_3.b.b) % 32u), 2u)];
    global4 = array<vec4<i32>, 6>();
    var_2 = Struct_3(7895i, Struct_1(!(!select(arg_3.b.a, vec3<bool>(false, true, arg_1), vec3<bool>(false, false, false))), arg_2, _wgslsmith_f_op_f32(sign(1557f))), var_2.c);
    return Struct_2(vec2<bool>(true, true), arg_3.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec4<f32> {
    global0 = array<u32, 17>();
    var var_0 = false;
    let var_1 = arg_1;
    let var_2 = u_input.b.xx;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-450f, arg_0.b.c, arg_0.b.c, -1212f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.c, 1000f, arg_1.c, -725f), vec4<f32>(-296f, -215f, 375f, var_1.c))), vec4<f32>(var_1.c, -210f, -101f, -1093f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(vec2<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1533u, 22u)], 17u)], 4294967295u), true, 11141u, Struct_2(vec2<bool>(true, true), Struct_1(vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(u_input.a, 22u)], 1503f))), Struct_1(vec3<bool>(false, false, true), 70497u, -1397f))))));
    let var_1 = ~(~(~(vec4<u32>(14530u, u_input.a, 4294967295u, global1[_wgslsmith_index_u32(0u, 22u)]) ^ vec4<u32>(global1[_wgslsmith_index_u32(48273u, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)], 6995u, global1[_wgslsmith_index_u32(0u, 22u)]))));
    var var_2 = func_1(countOneBits(countOneBits(min(vec2<u32>(1281u, u_input.a), firstTrailingBit(var_1.yz)))), false, global1[_wgslsmith_index_u32(~u_input.a, 22u)], Struct_2(vec2<bool>(true, global0[_wgslsmith_index_u32(~121286u, 17u)] == max(52310u, u_input.a)), func_1(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u) >> (var_1.zw % vec2<u32>(32u)), select(var_1.xy, vec2<u32>(var_1.x, global1[_wgslsmith_index_u32(27132u, 22u)]), true)), true, 73572u, Struct_2(vec2<bool>(true, true), Struct_1(vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(4294967295u, 22u)], var_0.x))).b)).b;
    global2 = _wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~var_1.yyy, vec3<u32>(53695u, var_1.x, global1[_wgslsmith_index_u32(u_input.a, 22u)])), 17u)], 0u);
    var var_3 = func_1(countOneBits(vec2<u32>(~1u, 0u)), any(vec2<bool>(true, true)), 4431u, func_1(~(~max(var_1.yw, vec2<u32>(var_2.b, 0u))), !(!func_3(vec4<bool>(false, var_2.a.x, var_2.a.x, false), 20428i, 33793u)), var_1.x, func_1(abs(~var_1.yy), select(true, all(vec4<bool>(true, true, var_2.a.x, var_2.a.x)), true), 1u, Struct_2(select(var_2.a.zz, vec2<bool>(true, var_2.a.x), vec2<bool>(false, true)), Struct_1(var_2.a, 2818u, -1103f))))).a;
    var var_4 = Struct_2(vec2<bool>(any(func_1(~var_1.zy, var_3.x, 0u & global1[_wgslsmith_index_u32(1041u, 22u)], func_1(vec2<u32>(var_2.b, global1[_wgslsmith_index_u32(u_input.a, 22u)]), true, var_2.b, Struct_2(vec2<bool>(var_2.a.x, var_2.a.x), Struct_1(var_2.a, global1[_wgslsmith_index_u32(1u, 22u)], 573f)))).b.a), select(true, true, true)), Struct_1(func_1(vec2<u32>(23921u, var_1.x) & _wgslsmith_clamp_vec2_u32(var_1.yz, vec2<u32>(104721u, global1[_wgslsmith_index_u32(var_1.x, 22u)]), vec2<u32>(60226u, global0[_wgslsmith_index_u32(u_input.a, 17u)])), !(!var_2.a.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(81106u, 22u)], 22u)], var_1.x, var_1.x), vec3<u32>(68571u, var_2.b, 1u)), 22u)], Struct_2(vec2<bool>(true, true), Struct_1(var_2.a, u_input.a, var_2.c))).b.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_1.xz, vec2<u32>(global0[_wgslsmith_index_u32(0u, 17u)], var_2.b)), var_1.yy << (vec2<u32>(1u, 14317u) % vec2<u32>(32u))), countOneBits(vec2<u32>(var_2.b, 1u))), var_2.c));
    var var_5 = var_0.xx;
    var var_6 = -_wgslsmith_mult_i32(u_input.b.x, u_input.b.x);
    let var_7 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.xy)), vec2<f32>(_wgslsmith_f_op_f32(-504f - _wgslsmith_f_op_f32(-3212f * _wgslsmith_f_op_vec4_f32(func_4(Struct_2(var_2.a.zz, var_4.b), var_4.b)).x)), var_4.b.c));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

