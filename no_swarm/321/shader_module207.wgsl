struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -223f;

var<private> global1: array<Struct_1, 10>;

var<private> global2: u32 = 26619u;

var<private> global3: array<vec3<u32>, 9>;

var<private> global4: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = all(select(vec4<bool>(true, global4.b.x, false, global4.a.x), !select(!arg_0.b, global4.b, !vec4<bool>(arg_0.b.x, false, arg_0.a.x, global4.a.x)), vec4<bool>(!any(vec2<bool>(true, global4.b.x)), !(global4.a.x & true), !arg_0.a.x, true)));
    var var_1 = arg_0.b.ww;
    var var_2 = Struct_2(vec2<u32>(0u >> (select(firstLeadingBit(1u), 3364u, global4.b.x) % 32u), ~2271u), arg_0, global1[_wgslsmith_index_u32(countOneBits(~(4294967295u & _wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u))), 10u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1423f, 748f, -243f) - vec3<f32>(314f, -2062f, 504f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(803f, -315f, 724f)) * vec3<f32>(-632f, -1126f, 1651f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1648f, 1229f, 888f), vec3<f32>(649f, 1000f, 185f))) * vec3<f32>(-405f, -660f, 284f)))));
    var var_3 = Struct_2(var_2.a, Struct_1(vec3<bool>(var_2.c.a.x, all(vec3<bool>(arg_0.b.x, false, false)), !arg_0.b.x || (arg_0.a.x & true)), vec4<bool>(true, arg_0.c.x <= -var_2.b.c.x, false, true), ~reverseBits(arg_0.c)), var_2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1472f, 706f, 482f)) - _wgslsmith_f_op_vec3_f32(var_2.d - var_2.d))))));
    global0 = _wgslsmith_f_op_f32(var_2.d.x * _wgslsmith_f_op_f32(step(var_2.d.x, var_3.d.x)));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(select(vec4<u32>(var_2.a.x, 1u, var_3.a.x, var_2.a.x), vec4<u32>(var_2.a.x, 8798u, 4294967295u, 0u), vec4<bool>(arg_0.b.x, global4.a.x, var_1.x, true)) & ~vec4<u32>(var_3.a.x, var_3.a.x, 0u, 4294967295u)), vec4<u32>((var_2.a.x ^ 1u) ^ countOneBits(var_2.a.x), 1u, var_3.a.x, _wgslsmith_dot_vec2_u32(var_2.a >> (var_3.a % vec2<u32>(32u)), ~vec2<u32>(0u, 1u)))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.x, var_2.a.x, var_3.a.x, 35599u) >> (vec4<u32>(27396u, var_3.a.x, var_3.a.x, 1u) % vec4<u32>(32u)), vec4<u32>(var_3.a.x, 22989u, var_3.a.x, var_2.a.x))));
}

fn func_2() -> Struct_2 {
    global2 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(firstLeadingBit(0u), _wgslsmith_div_u32(0u, 7619u))), ~vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 1u))));
    var var_0 = 7790i;
    var_0 = reverseBits(u_input.a);
    return Struct_2(~select(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(10162u, 4294967295u), vec2<u32>(19814u, 4294967295u))), vec2<u32>(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(94732u, 9u)], vec3<u32>(21885u, 9968u, 30553u)), func_3(Struct_1(global4.a, global4.b, vec4<i32>(global4.c.x, -28890i, global4.c.x, u_input.a)))), vec2<bool>(true, all(vec2<bool>(global4.a.x, true)))), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~max(4294967295u, 0u), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, 1u), _wgslsmith_mult_u32(38007u, 11773u)), 4294967295u), 10u)], Struct_1(!(!(!global4.a)), global4.b, global4.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f) * 2081f), _wgslsmith_div_f32(-1052f, _wgslsmith_f_op_f32(trunc(-2268f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1546f, 1000f, global4.b.x)) - -827f))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(!arg_0.b.b.wzy, select(vec4<bool>(all(!arg_0.b.b), _wgslsmith_dot_vec2_u32(arg_0.a, vec2<u32>(arg_0.a.x, arg_1.a.x)) > _wgslsmith_mult_u32(arg_1.a.x, arg_1.a.x), true, (global4.c.x << (arg_0.a.x % 32u)) < -27852i), func_2().c.b, any(!select(vec2<bool>(true, true), vec2<bool>(global4.b.x, true), false))), arg_1.c.c);
    let var_1 = select(abs(firstLeadingBit(var_0.c.wx)), -abs(select(vec2<i32>(global4.c.x, -1i), vec2<i32>(31917i, 51019i) & arg_0.b.c.xy, true)), any(vec3<bool>(~0i < select(2147483647i, var_0.c.x, arg_1.c.b.x), -var_0.c.x < 1i, _wgslsmith_mult_u32(arg_1.a.x, arg_0.a.x) != ~arg_0.a.x)));
    global0 = func_2().d.x;
    global3 = array<vec3<u32>, 9>();
    global0 = -592f;
    return func_2().c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global4 = arg_1.b;
    global4 = func_2().b;
    var var_0 = 4294967295u;
    var var_1 = Struct_2(arg_1.a, arg_0, global1[_wgslsmith_index_u32(1u, 10u)], arg_1.d);
    var var_2 = max(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(29460u, 4294967295u, arg_1.a.x, arg_1.a.x), ~vec4<u32>(22529u, arg_1.a.x, var_1.a.x, 1u)), abs(~vec4<u32>(var_1.a.x, 1u, var_1.a.x, 35724u))) << (~var_1.a.x % 32u), 0u);
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<bool>) -> Struct_2 {
    global3 = array<vec3<u32>, 9>();
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(~arg_0, arg_0)), 10u)];
    global2 = (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, 34u, 77362u), vec4<u32>(48169u, 63050u, arg_0, 4294967295u)), vec4<u32>(arg_0, 75648u, arg_0, arg_0)), 4294967295u, 1u ^ ~arg_0) | ~4294967295u) & ~(~firstLeadingBit(arg_0));
    var var_1 = 505u;
    var var_2 = false;
    return func_5(func_4(func_2(), Struct_2(~vec2<u32>(arg_0, 0u) ^ ~vec2<u32>(0u, 109022u), global1[_wgslsmith_index_u32(abs(arg_0), 10u)], func_2().b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-604f, 1566f, -867f))))), Struct_2(vec2<u32>(arg_0, select(max(arg_0, 4294967295u), 25943u, global4.b.x)), Struct_1(global4.a, select(func_2().c.b, var_0.b, select(global4.b, global4.b, vec4<bool>(var_0.b.x, arg_2.x, false, false))), _wgslsmith_div_vec4_i32(vec4<i32>(587i, -1i, 18639i, 0i), vec4<i32>(7146i, -1i, arg_1.x, u_input.a))), func_2().b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1541f, 312f, -1382f) * vec3<f32>(1104f, -270f, 398f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1u, ~(~global4.c.zxw), select(!global4.b.yyx, select(vec3<bool>(select(global4.b.x, global4.b.x, false), true, global4.b.x), select(select(vec3<bool>(global4.a.x, global4.a.x, global4.a.x), global4.a, global4.b.x), vec3<bool>(true, true, true), false), global4.b.x), select(vec3<bool>(true, global4.a.x, true), global4.b.yyz, global4.b.x)));
    var var_1 = func_4(func_5(func_4(func_5(global1[_wgslsmith_index_u32(~103545u, 10u)], func_1(0u, global4.c.xww, global4.b.wyy)), Struct_2(var_0.a, func_1(var_0.a.x, vec3<i32>(var_0.c.c.x, var_0.b.c.x, 23156i), vec3<bool>(false, var_0.c.b.x, global4.a.x)).c, Struct_1(var_0.b.a, vec4<bool>(global4.b.x, true, true, global4.b.x), var_0.c.c), var_0.d)), Struct_2(~_wgslsmith_sub_vec2_u32(var_0.a, vec2<u32>(10985u, 3556u)), var_0.b, Struct_1(func_2().b.a, var_0.b.b, vec4<i32>(13664i, 23571i, -12774i, var_0.b.c.x)), vec3<f32>(1232f, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(var_0.d.x, 1490f)))), func_1(_wgslsmith_mod_u32(~(~var_0.a.x), ~(~var_0.a.x)), vec3<i32>(0i, -1i, u_input.a | ~u_input.a), var_0.c.a)).c.x;
    global1 = array<Struct_1, 10>();
    var_1 = -abs(-1i);
    global1 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(firstLeadingBit(~abs(vec4<u32>(33015u, var_0.a.x, var_0.a.x, 28220u))), vec4<u32>(~(~var_0.a.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.a.x, var_0.a.x), 0u), 0u, var_0.a.x), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.a.x, var_0.a.x, var_0.a.x) ^ vec4<u32>(var_0.a.x, var_0.a.x, 9401u, 1u), vec4<u32>(4294967295u, 5690u, 4294967295u, var_0.a.x) >> (vec4<u32>(4294967295u, var_0.a.x, 4294967295u, 0u) % vec4<u32>(32u))))), _wgslsmith_sub_u32(1u, reverseBits(var_0.a.x)), 58160u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d + var_0.d))))));
}

