struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
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

var<private> global0: array<vec2<f32>, 28>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(true, true), Struct_3(true, true), Struct_3(false, false), Struct_3(true, true), Struct_3(false, false), Struct_3(false, true), Struct_3(false, false), Struct_3(true, true), Struct_3(false, true), Struct_3(true, true), Struct_3(false, true), Struct_3(true, false), Struct_3(false, true), Struct_3(true, false), Struct_3(false, true), Struct_3(false, true));

var<private> global3: array<Struct_3, 32>;

var<private> global4: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = global1.a;
    let var_1 = ~(27174u >> (u_input.c % 32u));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-861f * -820f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-130f)) * -1622f)) * 1f), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(20794u, u_input.c, 11939u), firstLeadingBit(vec3<u32>(8333u, u_input.b.x, var_1)), vec3<u32>(var_1, 4294967295u, u_input.a.x) & u_input.a), countOneBits(u_input.a)), abs(_wgslsmith_dot_vec2_i32(select(vec2<i32>(15787i, 1i), vec2<i32>(2147483647i, 15311i), arg_0), ~vec2<i32>(11588i, -35292i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(776f, 817f, 273f) * vec3<f32>(1482f, -261f, 669f)))), vec3<f32>(_wgslsmith_f_op_f32(abs(-111f)), _wgslsmith_f_op_f32(-1928f * -504f), _wgslsmith_f_op_f32(sign(-412f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1146f, 1546f, -1182f))))));
    var var_3 = Struct_3(arg_0, any(select(select(!vec4<bool>(false, true, var_0.a, global1.b.b), vec4<bool>(true, var_0.b, true, false), !vec4<bool>(global1.b.a, true, global1.c.b, true)), select(select(vec4<bool>(var_0.b, global1.a.b, var_0.b, var_0.b), vec4<bool>(var_0.b, true, var_0.a, var_0.b), vec4<bool>(true, arg_0, var_0.b, false)), select(vec4<bool>(var_0.b, true, false, true), vec4<bool>(global1.c.b, false, arg_0, true), false), any(vec4<bool>(false, global1.a.a, var_0.a, true))), global1.a.b)));
    let var_4 = Struct_1(53189u, -5206i);
    return false;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> i32 {
    var var_0 = !func_3(!arg_2.x);
    var var_1 = select(countOneBits(~(-vec3<i32>(-21787i, 53327i, 19285i))) & vec3<i32>(min(2147483647i, 1i), ~1i << (_wgslsmith_add_u32(arg_0.x, arg_0.x) % 32u), 26276i), ~min(-(~vec3<i32>(-69137i, -10111i, -1i)), vec3<i32>(1i, _wgslsmith_clamp_i32(-15006i, -62273i, 2147483647i), countOneBits(43881i))), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, global1.c.a), arg_2.x), !select(vec3<bool>(false, true, true), vec3<bool>(arg_2.x, true, arg_1.x), vec3<bool>(false, true, arg_2.x)), false), select(select(vec3<bool>(arg_2.x, false, true), !vec3<bool>(arg_1.x, arg_2.x, global1.a.a), false), vec3<bool>(true, true, false), any(arg_1)), vec3<bool>(true, select(true, all(vec2<bool>(true, false)), func_3(false)), true)));
    var var_2 = -1000f;
    global3 = array<Struct_3, 32>();
    let var_3 = countOneBits(arg_0) << (abs(~vec3<u32>(arg_0.x >> (64370u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.x), vec2<u32>(0u, 1u)), 0u)) % vec3<u32>(32u));
    return 23297i;
}

fn func_1() -> Struct_4 {
    let var_0 = reverseBits(reverseBits(_wgslsmith_sub_i32(16870i, 36876i & func_2(vec3<u32>(u_input.c, 78713u, 4294967295u), vec2<bool>(true, true), vec2<bool>(false, global1.c.a)))));
    var var_1 = -169f;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(802f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(-683f))), -1418f, 245f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-983f, 218f, -1000f, -741f) - vec4<f32>(-468f, 671f, 478f, -1466f)))))) * vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1075f - _wgslsmith_f_op_f32(select(1397f, 676f, global1.c.b)))), 363f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-875f, _wgslsmith_f_op_f32(-1271f + 707f))))));
    let var_3 = 933f;
    let var_4 = global1.b.b | !all(select(select(vec4<bool>(global1.a.b, global1.c.a, global1.a.b, true), vec4<bool>(global1.a.b, global1.c.b, false, global1.a.a), vec4<bool>(true, global1.c.a, true, false)), vec4<bool>(true, false, global1.b.a, global1.c.a), vec4<bool>(false, global1.b.a, false, global1.c.b)));
    return Struct_4(global3[_wgslsmith_index_u32(~u_input.c, 32u)], Struct_3(global1.c.b, false), Struct_3(false, !any(vec3<bool>(global1.b.b, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<Struct_3, 16>();
    let var_1 = Struct_4(func_1().a, global3[_wgslsmith_index_u32(~(~24553u), 32u)], Struct_3(var_0.a.b, false));
    var var_2 = true || global1.b.a;
    global1 = func_1();
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1491f, 110f, true))), 1010f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(2426f, 284f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1508f) * _wgslsmith_f_op_f32(step(-2038f, 1803f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1058f, -713f, -1000f, -1107f), vec4<f32>(730f, -810f, 340f, -442f), vec4<bool>(true, true, var_1.c.a, var_1.b.b))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-753f, 1149f, -1395f, 287f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-566f, -426f, -1292f, 1439f), vec4<f32>(801f, -1439f, 815f, 2148f), false))))));
    let x = u_input.a;
    s_output = StorageBuffer(~57954u);
}

