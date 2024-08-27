struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22>;

var<private> global1: array<i32, 19>;

var<private> global2: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(10570i, -28864i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), 1i, -36375i, -41408i), vec4<i32>(-29135i, 2147483647i, -31016i, 1i), vec4<i32>(2147483647i, -9279i, 922i, 0i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec3<i32>(-2147483647i, -_wgslsmith_div_i32(-u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(33735u, 1u), vec2<u32>(1u, 54868u)), 19u)]), -_wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(77526u, 19u)], u_input.b.x, u_input.b.x))), false, vec4<bool>(false, true, true, true));
    global1 = array<i32, 19>();
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(-1154f)), _wgslsmith_f_op_f32(f32(-1f) * -216f)), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1073f, 1426f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-834f, 1113f) - vec2<f32>(453f, -958f))))), !var_0.c.xy))));
    var var_2 = Struct_1(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, ~u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(80171u, 0u), 19u)]), _wgslsmith_div_vec3_i32(var_0.a, -vec3<i32>(u_input.a, var_0.a.x, -75724i)), ~vec3<i32>(-1i, global1[_wgslsmith_index_u32(1u, 19u)], 0i)), var_0.c.x, !var_0.c);
    let var_3 = Struct_1(var_0.a, false, select(!vec4<bool>(true, true, select(true, true, var_2.b), true), select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(50852u), ~25171u), 22u)], select(select(vec4<bool>(true, var_0.c.x, true, var_2.c.x), var_2.c, var_2.c), !vec4<bool>(var_2.b, var_0.c.x, false, true), all(vec4<bool>(var_2.b, var_0.b, true, var_2.c.x))), select(!var_0.c, var_2.c, vec4<bool>(false, true, true, true))), false));
    return select(_wgslsmith_clamp_u32(~30110u, 42912u, 8873u), _wgslsmith_div_u32(max(reverseBits(~26800u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 136031u, 1u), ~39115u)), ~1u), var_0.b);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = array<vec4<bool>, 22>();
    global0 = array<vec4<bool>, 22>();
    var var_0 = ~firstLeadingBit(countOneBits(func_3()));
    var var_1 = ~select(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4621u, 31589u, 1u), vec4<u32>(34741u, 1u, 14504u, 4294967295u)))), 1u, arg_3);
    let var_2 = true;
    return arg_0;
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, select(0u, 4294967295u, false)), 19u)], -7291i, i32(-1i) * -global1[_wgslsmith_index_u32(2818u, 19u)]), true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(62606u, ~4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(12574u, 4294967295u), vec2<u32>(1u, 0u))), 22u)]), u_input.b.wx, Struct_1(u_input.b.zwz, true, vec4<bool>(true, true, true, true)), false);
    global1 = array<i32, 19>();
    let var_1 = -(~vec3<i32>(-6661i, _wgslsmith_mod_i32(~1i, ~2147483647i), u_input.b.x));
    var var_2 = Struct_1(func_2(func_2(func_2(func_2(Struct_1(vec3<i32>(1i, -2147483647i, var_1.x), true, vec4<bool>(false, var_0.b, var_0.b, var_0.b)), var_1.xx, Struct_1(vec3<i32>(13745i, u_input.a, 2147483647i), false, var_0.c), true), reverseBits(vec2<i32>(-44173i, -2388i)), func_2(Struct_1(u_input.b.yzx, false, vec4<bool>(var_0.c.x, false, true, true)), var_0.a.yx, Struct_1(vec3<i32>(-2147483647i, -14920i, 0i), var_0.b, vec4<bool>(var_0.c.x, var_0.b, var_0.c.x, false)), false), false), ~var_1.xx, Struct_1(vec3<i32>(var_0.a.x, u_input.a, global1[_wgslsmith_index_u32(0u, 19u)]), !var_0.c.x, global0[_wgslsmith_index_u32(4294967295u, 22u)]), var_0.b), u_input.b.xx, func_2(Struct_1(_wgslsmith_mult_vec3_i32(var_0.a, var_1), func_2(Struct_1(vec3<i32>(-9497i, -1i, var_0.a.x), false, vec4<bool>(var_0.b, false, var_0.b, var_0.b)), vec2<i32>(var_1.x, global1[_wgslsmith_index_u32(0u, 19u)]), Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(0u, 19u)], -36431i, u_input.b.x), true, vec4<bool>(var_0.c.x, true, false, false)), true).b, vec4<bool>(var_0.c.x, false, var_0.c.x, false)), ~_wgslsmith_mult_vec2_i32(var_1.xy, u_input.b.zz), Struct_1(max(vec3<i32>(57574i, var_0.a.x, -2147483647i), vec3<i32>(1i, 1i, -9909i)), true, select(vec4<bool>(false, false, var_0.c.x, true), var_0.c, false)), true), false).a, var_0.c.x, vec4<bool>(var_0.b != false, !var_0.b, var_0.c.x, all(var_0.c.zyx)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1029f, -272f, -479f, -2227f) + vec4<f32>(-379f, -781f, 836f, -415f))))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), 294f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-403f - -540f)))), _wgslsmith_f_op_f32(-627f + _wgslsmith_f_op_f32(round(-1000f)))));
    return !(!var_2.c.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), false), vec2<bool>(any(vec2<bool>(false, true)), true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), !vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), any(func_1())), vec2<bool>(true, true));
    var var_1 = u_input.b.x;
    let var_2 = func_2(Struct_1(abs(vec3<i32>(u_input.a, 24947i, 44578i)), true, vec4<bool>(!(!var_0.x), any(!vec3<bool>(var_0.x, true, var_0.x)), var_0.x, var_0.x)), u_input.b.wx, Struct_1(~u_input.b.zzy, !var_0.x, vec4<bool>((-1i >= u_input.b.x) == true, !(!var_0.x), true, u_input.a != _wgslsmith_clamp_i32(-48558i, 17368i, global1[_wgslsmith_index_u32(1u, 19u)]))), true);
    var var_3 = any(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(7095u, 4294967295u), vec2<u32>(40551u, 20863u)), _wgslsmith_dot_vec2_u32(vec2<u32>(455u, 11786u), vec2<u32>(4294967295u, 2239u)) & ~countOneBits(0u)), 22u)]);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(113f * -1000f)) * -120f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, 1f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1000f, 381f)), -1000f, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(~1u), func_3()), abs(60888u), abs(~(38738u << (1u % 32u))), ~(~abs(4294967295u))), 28403i);
}

