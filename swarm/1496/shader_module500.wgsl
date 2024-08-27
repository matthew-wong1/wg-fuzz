struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(false, -42540i, Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true), vec4<bool>(false, false, false, true), true, vec4<f32>(-1365f, -820f, 2469f, 223f))));

var<private> global1: array<vec3<i32>, 16>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_2) -> vec4<u32> {
    return firstTrailingBit(abs(reverseBits(firstTrailingBit(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.c)) | vec4<u32>(17454u, u_input.a, 36846u, 4294967295u))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_4(Struct_3(arg_1.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1814f - arg_2.b.x)), -703f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1796f + arg_2.d.e.x)), 708f), u_input.a, Struct_1(select(arg_2.d.c.wwz, select(vec3<bool>(false, arg_2.d.a.x, arg_2.d.b.x), vec3<bool>(true, arg_1.d, false), global2.a), false), vec2<bool>(global2.d == false, arg_1.d), vec4<bool>(arg_1.b.x && arg_1.d, false, global2.b.x, any(vec3<bool>(true, arg_1.a.x, global2.d))), (6306u == arg_0) & arg_1.c.x, arg_2.d.e), Struct_2(!(true || global2.b.x), ~(-17421i), Struct_1(vec3<bool>(false, arg_1.c.x, arg_2.e.a), select(vec2<bool>(arg_2.e.a, arg_2.d.b.x), arg_1.a.yz, false), !arg_1.c, arg_1.b.x, _wgslsmith_f_op_vec4_f32(sign(arg_2.b))))), Struct_3(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_2.d.e * vec4<f32>(1075f, 2183f, 1173f, 799f)), _wgslsmith_f_op_vec4_f32(-arg_1.e))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.x, 328f, global2.e.x, -235f)) + vec4<f32>(arg_2.e.c.e.x, -804f, 1012f, 1257f))), 4294967295u ^ arg_2.c, Struct_1(vec3<bool>(any(global2.c), select(true, global2.b.x, arg_1.b.x), arg_1.c.x), !select(vec2<bool>(true, arg_1.c.x), vec2<bool>(arg_2.d.b.x, arg_2.d.a.x), arg_2.d.a.yy), vec4<bool>(any(arg_1.c), arg_2.e.a != true, all(global2.b), arg_1.c.x), !(1i == u_input.b), _wgslsmith_f_op_vec4_f32(min(global2.e, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.e.x, -924f, 1445f, global2.e.x)))))), Struct_2(_wgslsmith_f_op_f32(-arg_2.b.x) > _wgslsmith_f_op_f32(step(global2.e.x, global2.e.x)), select(-36069i, -1i, true), arg_1)));
    var var_1 = var_0.a;
    var var_2 = 4294967295u;
    var var_3 = vec2<f32>(var_0.a.d.e.x, global2.e.x);
    let var_4 = arg_2;
    return 52939u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    global1 = array<vec3<i32>, 16>();
    let var_0 = !all(!(!(!vec4<bool>(true, false, global2.b.x, false))));
    global1 = array<vec3<i32>, 16>();
    global0 = array<Struct_2, 1>();
    let var_1 = _wgslsmith_add_i32(0i, -abs(~(~0i)));
    return Struct_3(global2.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.x * _wgslsmith_f_op_f32(global2.e.x + -796f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(190f * -894f)), _wgslsmith_f_op_f32(-717f * 1010f), 550f), ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(30657u, 0u), func_3(u_input.a, Struct_1(vec3<bool>(var_0, true, false), global2.c.xy, vec4<bool>(var_0, global2.a.x, global2.b.x, global2.d), true, vec4<f32>(global2.e.x, 656f, arg_0.x, arg_0.x)), Struct_3(true, vec4<f32>(arg_0.x, 983f, -439f, arg_0.x), u_input.c, Struct_1(global2.c.zyx, vec2<bool>(global2.d, global2.a.x), vec4<bool>(var_0, global2.b.x, var_0, true), true, vec4<f32>(global2.e.x, arg_0.x, 618f, 1000f)), Struct_2(global2.c.x, var_1, Struct_1(vec3<bool>(false, false, true), global2.b, global2.c, var_0, global2.e)))), firstTrailingBit(u_input.c)), ~vec3<u32>(u_input.c, u_input.a, 4294967295u) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.c), vec3<u32>(4294967295u, 42506u, 1u))), Struct_1(select(global2.c.zwy, !select(vec3<bool>(var_0, true, false), global2.a, global2.c.x), global2.c.xzx), !select(!global2.a.xy, select(vec2<bool>(true, true), global2.b, global2.a.zy), any(vec3<bool>(false, global2.a.x, false))), vec4<bool>(var_0, any(vec3<bool>(var_0, global2.b.x, false)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), false), any(global2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2143f, global2.e.x, global2.e.x, global2.e.x), global2.e), global2.e))), Struct_2(global2.d, -2147483647i, Struct_1(!vec3<bool>(global2.d, false, true), vec2<bool>(any(vec2<bool>(var_0, false)), global2.d), global2.c, global2.d, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1007f, 762f, arg_0.x, global2.e.x))))))));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_4(Struct_3(global2.b.x, global2.e, ~_wgslsmith_mod_u32(1u, ~arg_1), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.x, arg_0.b.b.x, arg_0.a.d.e.x)), _wgslsmith_f_op_vec3_f32(-global2.e.xwy))).e.c, arg_0.a.e), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.x, global2.e.x, -580f)))));
    var var_1 = _wgslsmith_clamp_u32(6881u, func_1(func_2(global2.e.www).e).x, func_1(var_0.b.e).x);
    let var_2 = _wgslsmith_f_op_f32(max(global2.e.x, global2.e.x));
    let var_3 = Struct_4(var_0.b, Struct_3(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2, -280f, var_0.b.d.e.x, -945f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, global2.e.x, var_2, global2.e.x) * _wgslsmith_f_op_vec4_f32(arg_0.b.e.c.e - arg_0.a.b))), ~(~arg_0.b.c), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.e.yzy))).d, func_2(global2.e.wzw).e));
    var var_4 = Struct_4(func_2(_wgslsmith_f_op_vec3_f32(var_0.a.b.zwy * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, 1180f, var_3.b.d.e.x), arg_0.a.e.c.e.wyw, var_0.b.e.c.c.wwz)) * var_3.a.b.ywz))), var_3.b);
    return Struct_1(var_3.b.e.c.a, !var_0.b.d.c.zw, func_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2, 370f, 2504f), vec3<f32>(470f, global2.e.x, 453f)))).d.e.yxw).d.c, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(422f, var_4.b.e.c.e.x, -735f, 982f))) * vec4<f32>(_wgslsmith_f_op_f32(-361f * -350f), _wgslsmith_f_op_f32(var_0.b.d.e.x - -2126f), -598f, _wgslsmith_f_op_f32(f32(-1f) * -714f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(min(arg_3, arg_3), 1u)];
    var var_1 = arg_1.yw;
    let var_2 = global2.b.x;
    global1 = array<vec3<i32>, 16>();
    global1 = array<vec3<i32>, 16>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 16>();
    global0 = array<Struct_2, 1>();
    global1 = array<vec3<i32>, 16>();
    let var_0 = func_5(vec3<f32>(global2.e.x, -886f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-101f + 2208f)))), max(select(~vec4<u32>(29607u, 12301u, u_input.c, u_input.c), vec4<u32>(33297u, u_input.a, u_input.c, 4294967295u) >> (vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u) % vec4<u32>(32u)), global2.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u) & vec4<u32>(u_input.a, 53898u, 0u, u_input.c), func_1(Struct_2(false, 0i, Struct_1(global2.a, vec2<bool>(false, true), global2.c, global2.a.x, global2.e))))) | vec4<u32>(countOneBits(~u_input.a), ~countOneBits(u_input.c), u_input.c, u_input.c), func_4(Struct_4(func_2(vec3<f32>(global2.e.x, global2.e.x, global2.e.x)), Struct_3(false, global2.e, ~29736u, func_2(global2.e.zyx).d, Struct_2(global2.b.x, 0i, Struct_1(vec3<bool>(global2.d, global2.b.x, global2.c.x), global2.a.xx, global2.c, global2.b.x, global2.e)))), firstLeadingBit(abs(~1u))), 26442u << (0u % 32u));
    global2 = Struct_1(global2.c.zyw, global2.c.yw, vec4<bool>(false, var_0.a.x, false, any(!global2.b)), !(-1382f >= _wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(global2.e.x - -1000f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global2.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(var_0.e, vec4<f32>(195f, global2.e.x, 231f, var_0.e.x), var_0.d)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(571f, var_0.e.x, 154f, -1056f)))))))));
    global0 = array<Struct_2, 1>();
    let var_1 = Struct_4(func_2(var_0.e.yxz), Struct_3(func_4(Struct_4(func_2(global2.e.wzy), Struct_3(var_0.a.x, vec4<f32>(1874f, -445f, -947f, global2.e.x), u_input.c, var_0, global0[_wgslsmith_index_u32(4294967295u, 1u)])), ~0u).b.x, global2.e, _wgslsmith_dot_vec2_u32(min(~vec2<u32>(u_input.c, 30848u), vec2<u32>(5816u, u_input.a) | vec2<u32>(u_input.a, 42214u)), ~(vec2<u32>(39062u, 1065u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))), Struct_1(select(select(var_0.a, vec3<bool>(global2.c.x, false, var_0.b.x), global2.a.x), vec3<bool>(false, true, var_0.d), global2.b.x), vec2<bool>(any(global2.c), all(var_0.c)), !select(vec4<bool>(global2.c.x, false, false, var_0.a.x), var_0.c, false), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(global2.e.x, 619f, var_0.e.x), global2.e.zzy)).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-297f, var_0.e.x, global2.e.x, -927f))), func_2(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.e.x, var_0.e.x)), _wgslsmith_f_op_f32(var_0.e.x + var_0.e.x), var_0.e.x)).e));
    var var_2 = _wgslsmith_mod_u32(~max(1u, 1u), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.e.c.e.x, func_2(vec3<f32>(351f, global2.e.x, -641f)).e.c.e.x, _wgslsmith_div_f32(-668f, _wgslsmith_f_op_f32(-var_1.b.d.e.x)), _wgslsmith_f_op_f32(-func_4(Struct_4(var_1.b, Struct_3(true, global2.e, var_1.b.c, Struct_1(vec3<bool>(false, var_0.b.x, var_0.b.x), global2.c.wy, vec4<bool>(false, false, var_0.d, global2.a.x), true, vec4<f32>(var_1.a.e.c.e.x, -1000f, var_0.e.x, 142f)), Struct_2(false, var_1.b.e.b, Struct_1(var_0.c.yxw, var_0.b, vec4<bool>(false, var_0.c.x, true, false), false, var_1.b.b)))), var_1.a.c).e.x))), var_1.a.e.c.e.x, select(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(var_1.b.c, var_1.b.c, u_input.c))), max(vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_1.a.c), 1u, reverseBits(4294967295u)), vec3<u32>(u_input.c, 48186u, ~var_1.a.c)), select(func_5(vec3<f32>(var_0.e.x, var_1.a.e.c.e.x, 1031f), func_1(var_1.a.e), var_0, _wgslsmith_mult_u32(u_input.c, u_input.c)).a, func_4(Struct_4(var_1.a, Struct_3(false, vec4<f32>(-1533f, -777f, -224f, 1247f), 71580u, Struct_1(var_0.c.wxw, var_0.b, vec4<bool>(global2.a.x, false, global2.b.x, var_1.b.e.c.a.x), global2.b.x, global2.e), Struct_2(var_0.b.x, -1i, Struct_1(global2.c.wwx, global2.c.zx, vec4<bool>(var_0.d, global2.b.x, false, false), global2.d, global2.e)))), reverseBits(4294967295u)).c.xwz, true)));
}

