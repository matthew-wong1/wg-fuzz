struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false, vec2<bool>(false, false), vec2<f32>(-187f, 1000f)), Struct_1(true, vec2<bool>(false, true), vec2<f32>(-2973f, -721f)), Struct_1(false, vec2<bool>(false, false), vec2<f32>(1748f, 518f)), Struct_1(true, vec2<bool>(true, true), vec2<f32>(147f, 771f)), Struct_1(false, vec2<bool>(false, false), vec2<f32>(-239f, -667f)), Struct_1(true, vec2<bool>(false, false), vec2<f32>(-358f, -1706f)), Struct_1(true, vec2<bool>(false, true), vec2<f32>(-320f, -1420f)), Struct_1(false, vec2<bool>(true, false), vec2<f32>(445f, -1070f)), Struct_1(false, vec2<bool>(false, true), vec2<f32>(-1351f, 746f)), Struct_1(false, vec2<bool>(true, false), vec2<f32>(1494f, 109f)), Struct_1(false, vec2<bool>(true, false), vec2<f32>(1808f, -254f)), Struct_1(false, vec2<bool>(false, false), vec2<f32>(-199f, -245f)), Struct_1(false, vec2<bool>(true, true), vec2<f32>(1915f, -870f)), Struct_1(false, vec2<bool>(false, false), vec2<f32>(220f, 245f)), Struct_1(false, vec2<bool>(false, false), vec2<f32>(1252f, 715f)), Struct_1(true, vec2<bool>(true, true), vec2<f32>(1305f, -642f)), Struct_1(true, vec2<bool>(false, false), vec2<f32>(308f, 390f)), Struct_1(false, vec2<bool>(false, true), vec2<f32>(216f, 230f)), Struct_1(false, vec2<bool>(true, false), vec2<f32>(226f, -245f)), Struct_1(true, vec2<bool>(false, true), vec2<f32>(421f, -1267f)), Struct_1(false, vec2<bool>(false, true), vec2<f32>(-343f, 372f)), Struct_1(false, vec2<bool>(false, false), vec2<f32>(515f, 331f)), Struct_1(true, vec2<bool>(true, false), vec2<f32>(-517f, -1000f)), Struct_1(false, vec2<bool>(false, false), vec2<f32>(364f, 719f)), Struct_1(false, vec2<bool>(true, true), vec2<f32>(1014f, -1529f)), Struct_1(false, vec2<bool>(true, true), vec2<f32>(-1193f, -1000f)));

var<private> global1: array<f32, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(arg_2.a, !vec2<bool>(true, all(!vec3<bool>(arg_3.a, true, true))), arg_2.c);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 27u)] + -1000f), _wgslsmith_f_op_f32(146f * 787f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.x, arg_3.c.x, -1000f, -955f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(816f, global1[_wgslsmith_index_u32(28880u, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_3.c.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(13378u, 27u)], arg_3.c.x, 1655f, arg_3.c.x) * vec4<f32>(arg_3.c.x, arg_3.c.x, arg_3.c.x, arg_3.c.x)) - vec4<f32>(arg_3.c.x, 286f, -1893f, 430f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(892f, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)], -302f) + vec4<f32>(-1369f, 1664f, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 1000f)))))));
    let var_1 = reverseBits(_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(-1i, arg_1.x, arg_1.x, u_input.a.x)), vec4<i32>(reverseBits(u_input.a.x), -u_input.a.x, arg_1.x, _wgslsmith_mult_i32(u_input.a.x, -25536i) ^ ~0i), vec4<i32>(arg_1.x, 1i, arg_1.x, arg_2.x)));
    var_0 = vec4<f32>(-210f, func_1(func_1(Struct_1(all(arg_0.yzx), vec2<bool>(true, arg_3.a), _wgslsmith_div_vec2_f32(vec2<f32>(1142f, 1542f), arg_3.c)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, firstLeadingBit(4294967295u), ~4294967295u), 26u)], global0[_wgslsmith_index_u32(19600u, 26u)], Struct_1(!arg_0.x, vec2<bool>(arg_3.a, arg_3.a), vec2<f32>(247f, -1254f))), Struct_1(all(vec4<bool>(true, arg_3.b.x, false, arg_0.x)), vec2<bool>(false, select(false, false, arg_0.x)), var_0.xy), global0[_wgslsmith_index_u32(~4294967295u, 26u)], func_1(func_1(Struct_1(arg_3.b.x, arg_0.zz, arg_3.c), arg_3, arg_3, Struct_1(arg_3.a, vec2<bool>(false, arg_3.b.x), vec2<f32>(var_0.x, arg_3.c.x))), arg_3, Struct_1(true, arg_0.zx, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(533f, var_0.x)))), global0[_wgslsmith_index_u32(~(81073u >> (u_input.c.x % 32u)), 26u)])).c.x, 1098f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.c.x, u_input.c.x)) >> (vec2<u32>(9070u, 104275u) % vec2<u32>(32u)), u_input.b.zz), 27u)]);
    var var_2 = 1u;
    var_2 = ~_wgslsmith_sub_u32(30426u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1156u), vec2<u32>(u_input.b.x, u_input.b.x))));
    return arg_3;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = func_1(Struct_1(true, vec2<bool>(!arg_0.a, true), _wgslsmith_f_op_vec2_f32(ceil(arg_0.c))), func_1(func_3(vec4<bool>(arg_0.b.x || arg_0.b.x, arg_0.a, arg_0.a, true), ~(-vec2<i32>(u_input.a.x, 2147483647i)), -u_input.a, Struct_1(any(arg_0.b), arg_0.b, vec2<f32>(1237f, -401f))), Struct_1(select(all(vec3<bool>(false, arg_0.b.x, arg_0.a)), true, false), vec2<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(arg_0.b.x, arg_0.b.x, false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2084f, -1000f))), func_1(func_3(!vec4<bool>(arg_0.a, arg_0.b.x, arg_0.b.x, true), vec2<i32>(u_input.a.x, -1i), u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), Struct_1(!arg_0.b.x, !vec2<bool>(arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_vec2_f32(-arg_0.c)), Struct_1(arg_0.a, !arg_0.b, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(359f, -1453f), vec2<f32>(arg_0.c.x, 234f)))), func_1(func_3(vec4<bool>(arg_0.a, arg_0.b.x, arg_0.b.x, arg_0.b.x), u_input.a.xy, vec3<i32>(u_input.a.x, 27539i, u_input.a.x), global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(70433u, 0u), 26u)], Struct_1(arg_0.a, vec2<bool>(false, true), arg_0.c), func_3(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.b.x), u_input.a.yx, vec3<i32>(47071i, -2147483647i, u_input.a.x), global0[_wgslsmith_index_u32(u_input.b.x, 26u)]))), global0[_wgslsmith_index_u32(0u | (u_input.b.x ^ ~9458u), 26u)]), arg_0, func_3(vec4<bool>(arg_0.c.x == global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.b.x), 27u)], arg_0.a, func_1(func_3(vec4<bool>(false, true, false, arg_0.a), u_input.a.xx, u_input.a, Struct_1(true, vec2<bool>(arg_0.b.x, false), vec2<f32>(112f, 362f))), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 26u)], Struct_1(arg_0.b.x, arg_0.b, vec2<f32>(arg_0.c.x, 304f)), Struct_1(arg_0.a, vec2<bool>(arg_0.a, arg_0.b.x), arg_0.c)).a, arg_0.b.x), abs(-min(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xz)), min(u_input.a, ~max(vec3<i32>(-12051i, u_input.a.x, -52088i), u_input.a)), Struct_1(arg_0.b.x, arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.c, arg_0.c) - _wgslsmith_div_vec2_f32(arg_0.c, vec2<f32>(652f, 1469f))))));
    global1 = array<f32, 27>();
    var var_1 = u_input.b.xx;
    global1 = array<f32, 27>();
    var_1 = u_input.b.wz;
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> StorageBuffer {
    global1 = array<f32, 27>();
    global1 = array<f32, 27>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(46896u, _wgslsmith_sub_u32(33061u, ~(~21068u) | firstTrailingBit(u_input.b.x))), 26u)];
    global1 = array<f32, 27>();
    var var_1 = arg_0;
    return StorageBuffer(vec3<u32>(_wgslsmith_add_u32((u_input.c.x | u_input.c.x) ^ 62312u, u_input.b.x), _wgslsmith_dot_vec4_u32(select(~u_input.b, u_input.b, select(vec4<bool>(var_1.b.x, var_1.a, true, false), vec4<bool>(true, false, false, false), var_1.a)), u_input.b), min(52018u, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!all(vec4<bool>(false, true, true, false)) || true), vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(667f + _wgslsmith_f_op_f32(abs(1446f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 21735u, 4294967295u), vec4<u32>(u_input.b.x, 4294967295u, u_input.c.x, 40388u)), 27u)])));
    global0 = array<Struct_1, 26>();
    global1 = array<f32, 27>();
    let var_1 = var_0;
    var var_2 = Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 73804u, u_input.b.x, 1u), u_input.b)) == abs(~abs(u_input.b.x)), vec2<bool>(any(select(select(vec4<bool>(false, false, true, var_0.a), vec4<bool>(var_1.a, var_1.a, var_0.a, true), vec4<bool>(true, var_0.a, true, var_1.b.x)), vec4<bool>(var_1.b.x, true, true, var_1.b.x), !vec4<bool>(var_1.b.x, true, var_0.b.x, true))), var_1.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(var_1.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], -605f), var_1.c)))))));
    global0 = array<Struct_1, 26>();
    var var_3 = u_input.b.xxw;
    var_3 = u_input.b.yxx;
    let x = u_input.a;
    s_output = func_4(Struct_1(true, !func_2(func_1(Struct_1(true, vec2<bool>(var_2.a, false), var_2.c), var_1, var_0, Struct_1(false, var_1.b, var_2.c))), vec2<f32>(func_1(global0[_wgslsmith_index_u32(var_3.x, 26u)], func_3(vec4<bool>(false, var_0.b.x, var_1.b.x, true), vec2<i32>(u_input.a.x, -29131i), u_input.a, Struct_1(var_2.a, var_1.b, var_1.c)), func_1(var_0, var_1, var_1, Struct_1(var_1.b.x, vec2<bool>(false, true), vec2<f32>(var_1.c.x, var_2.c.x))), global0[_wgslsmith_index_u32(~43317u, 26u)]).c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -944f))))), -u_input.a.x, global0[_wgslsmith_index_u32(min(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 105202u, 29311u), u_input.b) | u_input.b, abs(u_input.b))), 26u)]);
}

