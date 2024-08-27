struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(424f), Struct_1(1149f), Struct_1(825f), Struct_1(-272f), Struct_1(1412f), Struct_1(1665f), Struct_1(-229f), Struct_1(-879f), Struct_1(1100f), Struct_1(760f), Struct_1(-2726f), Struct_1(1102f), Struct_1(889f), Struct_1(665f), Struct_1(-1120f), Struct_1(835f), Struct_1(241f), Struct_1(-379f), Struct_1(1477f));

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~1u, u_input.b, 4294967295u), u_input.d.wyy);
    let var_1 = u_input.a.x;
    let var_2 = var_0;
    global1 = array<Struct_1, 1>();
    var var_3 = min(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~var_0, vec3<u32>(var_2.x, 1u, u_input.d.x) | u_input.d.wxy), var_2, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 79166u), reverseBits(var_0), _wgslsmith_mult_vec3_u32(vec3<u32>(66811u, arg_0.b.x, 1u), vec3<u32>(var_0.x, var_0.x, 0u)))) >> (select(var_0, arg_0.b, true) % vec3<u32>(32u)), ~var_0);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(min(-1000f, -632f)), arg_0.e.a) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2123f, -380f, arg_2, -447f), vec4<f32>(arg_1.a, arg_0.e.a, -912f, 526f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-468f, -740f, arg_1.a, -753f)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.a, arg_1.a, arg_0.e.a, 167f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.e.a, arg_1.a, 980f, 367f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.e.a, 533f, arg_1.a, arg_0.e.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_2, arg_2, -1952f)))), vec4<f32>(-710f, -110f, arg_1.a, _wgslsmith_f_op_f32(-arg_1.a))))))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(u_input.c, u_input.d.zxz, true, -10744i, Struct_1(214f)), Struct_3(-266f, u_input.d.xz), -1446f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(247f, -1000f, 1141f, -1351f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(-1i, u_input.d.wyx, false, arg_1.x, Struct_1(1129f)), Struct_3(820f, vec2<u32>(0u, 12494u)), 634f)), vec4<f32>(-1153f, 1525f, -895f, -187f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-111f + -124f), _wgslsmith_f_op_f32(round(116f)), 520f, _wgslsmith_f_op_f32(round(549f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1339f, 360f, -2185f, 327f) - vec4<f32>(994f, -308f, -1507f, 305f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1132f, -1000f, -1912f, -1932f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -524f, -439f, -1696f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(775f, 667f, 468f, 386f) * vec4<f32>(455f, -707f, 1608f, -1286f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1806f, 744f, 314f, -138f))))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, false))))));
    let var_1 = Struct_2(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, -1i), u_input.a), vec3<u32>(30497u, 15451u, ~(~u_input.d.x)) | _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x | arg_0, max(u_input.b, 1u), 35768u), abs(vec3<u32>(arg_0, arg_0, 14286u) & vec3<u32>(1u, u_input.d.x, u_input.b))), any(vec2<bool>(true, all(vec2<bool>(true, true)))), arg_1.x >> (u_input.d.x % 32u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = Struct_2(0i >> (u_input.d.x % 32u), _wgslsmith_sub_vec3_u32(reverseBits(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, arg_0, 33812u), var_1.b, var_1.b), u_input.d.wxy, true)), ~countOneBits(vec3<u32>(var_1.b.x, 23764u, u_input.d.x))), select(true, var_1.c, all(vec4<bool>(true, var_1.c, false, all(vec2<bool>(var_1.c, false))))), _wgslsmith_clamp_i32(~24406i, var_1.d, min(abs(-var_1.a), -(i32(-1i) * -1i))), var_1.e);
    global1 = array<Struct_1, 1>();
    let var_3 = !var_2.c;
    return Struct_3(-719f, _wgslsmith_clamp_vec2_u32(u_input.d.zy, vec2<u32>(1u, 1u), vec2<u32>(arg_0, u_input.b)));
}

fn func_1() -> Struct_2 {
    let var_0 = -_wgslsmith_mult_vec3_i32(u_input.a, -vec3<i32>(2147483647i, 17602i, 2147483647i) << (vec3<u32>(62722u, 0u, u_input.d.x) % vec3<u32>(32u))) ^ u_input.a;
    global1 = array<Struct_1, 1>();
    var var_1 = func_2(~(~4294967295u), vec4<i32>(22025i, -1i, -42466i, 22141i));
    global0 = array<Struct_1, 19>();
    var var_2 = !select(vec4<bool>(true, true, any(vec2<bool>(false, true)) || any(vec4<bool>(false, false, true, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true), true), vec4<bool>(false, false, any(vec2<bool>(true, true)), false)), !vec4<bool>(true, all(vec3<bool>(true, false, true)), any(vec2<bool>(true, false)), false));
    return Struct_2(48157i, _wgslsmith_clamp_vec3_u32(~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 0u, 0u), u_input.d.xxx) & ~vec3<u32>(28310u, u_input.b, 28795u)), ~_wgslsmith_sub_vec3_u32(u_input.d.yxy & vec3<u32>(var_1.b.x, var_1.b.x, u_input.d.x), vec3<u32>(1u, 5668u, u_input.d.x) << (u_input.d.wxw % vec3<u32>(32u))), abs(~(u_input.d.xwy ^ u_input.d.wzy))), var_2.x, abs(-_wgslsmith_dot_vec2_i32(u_input.a.zy >> (vec2<u32>(var_1.b.x, 45397u) % vec2<u32>(32u)), ~vec2<i32>(-1i, u_input.a.x))), global0[_wgslsmith_index_u32(u_input.b, 19u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(5472i, vec3<u32>(~(~_wgslsmith_mod_u32(u_input.b, 1u)), u_input.b, u_input.d.x << ((29916u >> (1u % 32u)) % 32u)), true, -9527i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(u_input.d.wwx >> (vec3<u32>(4294967295u, u_input.d.x, 0u) % vec3<u32>(32u)))), u_input.d.ywz), 19u)]);
    var_0 = func_1();
    let var_1 = -35393i;
    global1 = array<Struct_1, 1>();
    var var_2 = 910f;
    let var_3 = countOneBits(countOneBits(~vec3<i32>(select(var_1, -36347i, true), u_input.c, i32(-1i) * -2147483647i)));
    var var_4 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(2086f, _wgslsmith_dot_vec2_i32(u_input.a.yz, var_3.zy), vec2<u32>(~u_input.d.x, ~u_input.d.x));
}

