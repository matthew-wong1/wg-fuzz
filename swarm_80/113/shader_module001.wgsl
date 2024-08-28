struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
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

var<private> global0: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(69261i, i32(-2147483648)), vec2<i32>(-1i, -25961i), vec2<i32>(1i, -19702i), vec2<i32>(-1i, -75143i), vec2<i32>(1i, -1i), vec2<i32>(1i, -15628i), vec2<i32>(-1i, -2361i), vec2<i32>(-64547i, -1i), vec2<i32>(-7572i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(63073i, 2147483647i), vec2<i32>(2147483647i, 1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<u32>) -> u32 {
    let var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -107f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), arg_1)));
    global0 = array<vec2<i32>, 12>();
    let var_2 = select(vec4<bool>(all(!arg_0.a.c.wx), all(vec3<bool>(true, u_input.a.x <= -13120i, arg_0.b.c.x)), arg_0.b.c.x, arg_0.a.c.x), select(vec4<bool>(!all(arg_0.c.c.wxw), arg_0.a.c.x, arg_0.b.c.x && (1u != arg_0.a.a.x), true), arg_0.a.c, vec4<bool>((477f <= arg_1) != select(arg_0.c.c.x, arg_0.b.c.x, arg_0.a.c.x), false, arg_0.a.c.x, arg_3.x > ~4294967295u)), vec4<bool>(any(vec4<bool>(false, arg_0.a.d.x > arg_0.a.d.x, !arg_0.c.c.x, arg_0.c.c.x)), arg_0.c.c.x, arg_0.b.c.x, (_wgslsmith_mod_u32(4294967295u, 39456u) <= min(1u, arg_3.x)) && true));
    let var_3 = arg_0.b;
    return abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~1u, 23369u), arg_0.c.b)) | 1u;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> u32 {
    let var_0 = u_input.d;
    var var_1 = arg_0;
    global0 = array<vec2<i32>, 12>();
    let var_2 = arg_0;
    let var_3 = Struct_1(vec2<u32>(4294967295u, min(abs(select(u_input.c.x, var_2.a.x, arg_0.c.x)), var_1.b)), 4766u, arg_0.c, u_input.a);
    return u_input.c.x;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<vec2<i32>, 12>();
    var var_0 = _wgslsmith_mod_vec2_u32(firstTrailingBit(abs(countOneBits(vec2<u32>(u_input.c.x, 24437u) << (u_input.d.yx % vec2<u32>(32u))))), ~vec2<u32>(countOneBits(func_2(Struct_2(Struct_1(u_input.c.ww, u_input.d.x, vec4<bool>(false, false, false, false), vec2<i32>(u_input.b, 1i)), Struct_1(vec2<u32>(143578u, 31881u), u_input.c.x, vec4<bool>(true, false, false, true), vec2<i32>(26446i, 0i)), Struct_1(u_input.d.yz, 0u, vec4<bool>(false, true, true, true), global0[_wgslsmith_index_u32(770u, 12u)])), -169f, vec4<f32>(2003f, -465f, -691f, -110f), u_input.d.zy)), _wgslsmith_add_u32(~1u, _wgslsmith_add_u32(u_input.d.x, 26456u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1849f + 1616f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1518f * _wgslsmith_f_op_f32(-353f + -753f))), -652f));
    global0 = array<vec2<i32>, 12>();
    var var_2 = Struct_1(vec2<u32>(func_3(Struct_1(select(vec2<u32>(var_0.x, 849u), u_input.d.yy, false), var_0.x, select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), u_input.a), true, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), var_0.x), ~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), vec4<bool>(_wgslsmith_mult_u32(8844u, 71996u) >= u_input.d.x, any(vec3<bool>(true, true, var_1.x > var_1.x)), (_wgslsmith_f_op_f32(trunc(var_1.x)) <= 526f) || ((0i != arg_0.x) && true), false), abs(arg_0));
    return Struct_1(_wgslsmith_mod_vec2_u32(u_input.c.yz, var_2.a), var_2.a.x, vec4<bool>(any(select(var_2.c.yzw, vec3<bool>(true, true, true), false)) && true, all(select(!vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x), vec3<bool>(false, false, var_2.c.x), true)), all(vec3<bool>(all(var_2.c.yy), any(vec2<bool>(var_2.c.x, true)), all(vec4<bool>(var_2.c.x, var_2.c.x, false, var_2.c.x)))), all(select(var_2.c.yzz, var_2.c.xzx, select(vec3<bool>(var_2.c.x, var_2.c.x, false), vec3<bool>(true, var_2.c.x, var_2.c.x), var_2.c.xxy)))), _wgslsmith_add_vec2_i32(vec2<i32>(890i, var_2.d.x), ~(-vec2<i32>(-29572i, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 12>();
    let var_0 = func_1(~(-(~u_input.a) & abs(global0[_wgslsmith_index_u32(1122u, 12u)])));
    global0 = array<vec2<i32>, 12>();
    global0 = array<vec2<i32>, 12>();
    var var_1 = vec3<bool>(any(!var_0.c), (var_0.d.x >= var_0.d.x) | var_0.c.x, false);
    let var_2 = Struct_2(var_0, func_1(_wgslsmith_add_vec2_i32(func_1(select(u_input.a, u_input.a, var_0.c.x)).d, _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a.x, var_0.d.x), _wgslsmith_add_vec2_i32(vec2<i32>(-27775i, -58336i), global0[_wgslsmith_index_u32(4294967295u, 12u)])))), Struct_1(_wgslsmith_sub_vec2_u32(func_1(vec2<i32>(44380i, 40690i)).a, vec2<u32>(u_input.c.x, 41116u)) ^ select(var_0.a, vec2<u32>(49305u, u_input.d.x), var_0.c.wz), abs(max(u_input.d.x << (28671u % 32u), 0u)), select(vec4<bool>(false & var_1.x, var_0.c.x, true, true), vec4<bool>(true, var_1.x, all(var_1.xz), !var_1.x), select(!vec4<bool>(true, var_1.x, var_0.c.x, var_0.c.x), !vec4<bool>(var_0.c.x, true, false, true), !var_1.x)), ~vec2<i32>(reverseBits(u_input.a.x), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(countOneBits(~(~var_0.b)), var_0.a.x));
}

