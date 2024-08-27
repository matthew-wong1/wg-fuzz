struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    var var_0 = Struct_1(arg_0.a, max(abs(vec2<i32>(arg_0.b.x & 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-26762i, 0i), arg_0.b))), ~max(vec2<i32>(arg_0.b.x, 0i), arg_0.b >> (u_input.a.xx % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(var_0.b.x, i32(-1i) * -23468i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(23134i, 58568i, -38889i), vec3<i32>(-12569i, var_0.b.x, arg_0.b.x))))), select(vec3<i32>(1i, _wgslsmith_mult_i32(-var_0.b.x, min(var_0.b.x, arg_0.b.x)), var_0.b.x), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b.x, -1i, var_0.b.x), abs(vec3<i32>(arg_0.b.x, arg_0.b.x, 16164i)), -vec3<i32>(var_0.b.x, arg_0.b.x, 0i))), global1[_wgslsmith_index_u32(0u, 12u)]));
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(23610u, u_input.a.x), 64835u, 1u), select(vec3<u32>(u_input.a.x, 4294967295u, ~arg_1), firstTrailingBit(~u_input.a), global1[_wgslsmith_index_u32(12209u, 12u)])) << (u_input.a % vec3<u32>(32u));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-893f, _wgslsmith_f_op_f32(round(199f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.a, vec2<f32>(arg_0.a.x, 1016f))) + var_0.a)))), (arg_0.b >> (~(~var_2.yx) % vec2<u32>(32u))) & -vec2<i32>(abs(20895i), -var_1.x));
    var var_4 = !select(vec2<bool>(all(global0.yw), global0.x), select(select(vec2<bool>(false, false), select(global0.xx, global0.yz, global0.x), global0.x), global0.ww, any(!global0.zw)), global0.xx);
    return vec4<bool>(global0.x, var_4.x, true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-686f)), var_0.a.x)) >= -946f);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = 1281f;
    global0 = !select(func_3(Struct_1(vec2<f32>(var_0, var_0), vec2<i32>(1i, 40652i)), u_input.a.x), vec4<bool>(var_0 <= var_0, all(global0.yy) || true, true, any(global0.wzz)), !(!(!vec4<bool>(global0.x, global0.x, true, arg_0))));
    global1 = array<vec3<bool>, 12>();
    let var_1 = vec4<bool>(true, arg_0, global0.x, false);
    var var_2 = select(!(!select(!var_1.wy, vec2<bool>(arg_0, false), var_1.wz)), !var_1.ww, true);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(max(1f, var_0)), var_0 >= -1884f)), _wgslsmith_f_op_f32(-var_0)), vec2<i32>(1i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(0i, 20688i, 21224i, 28333i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 86110u, 4294967295u) % vec4<u32>(32u))), select(vec4<i32>(-1i, 21799i, -1i, 2147483647i), vec4<i32>(-1i, 2147483647i, 4480i, 1i), var_1) | _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -36280i, -74651i, -14077i), vec4<i32>(-5358i, 1i, -1i, -1i), vec4<i32>(-2147483647i, -1i, 2147483647i, -2147483647i)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    let var_0 = func_2(true);
    var var_1 = ~_wgslsmith_mod_u32(~48922u, u_input.a.x);
    var var_2 = vec4<bool>(any(vec4<bool>(_wgslsmith_f_op_f32(var_0.a.x - arg_1.a.x) > var_0.a.x, true, true, arg_2)), false, global0.x, arg_2);
    let var_3 = func_2(all(select(select(vec3<bool>(true, arg_2, false), global0.xwy, true), !(!vec3<bool>(false, var_2.x, var_2.x)), select(select(global1[_wgslsmith_index_u32(80046u, 12u)], global0.xww, false), !vec3<bool>(var_2.x, false, false), global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 12u)]))));
    let var_4 = func_2(true);
    return var_4.a;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(~(-27516i), func_2(global0.x), all(vec4<bool>(true, true, true, true))))) + vec2<f32>(_wgslsmith_f_op_f32(floor(1557f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1145f - -201f) + 438f))), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(6920i, i32(-1i) * -2147483647i), select(_wgslsmith_add_vec2_i32(vec2<i32>(-63385i, -36391i), vec2<i32>(1i, -754i)), vec2<i32>(1i, -9199i), !global0.wx)), reverseBits(select(vec2<i32>(-7435i, 18902i), vec2<i32>(52910i, 49386i), true)) >> (vec2<u32>(abs(44091u), u_input.a.x) % vec2<u32>(32u))));
    global0 = select(select(select(func_3(func_2(false), ~u_input.a.x), vec4<bool>(false, false, false, true), global0.x), select(vec4<bool>(true, false, func_3(Struct_1(var_0.a, vec2<i32>(-2147483647i, var_0.b.x)), 0u).x, true), !vec4<bool>(global0.x, global0.x, false, false), (u_input.a.x << (4294967295u % 32u)) > 0u), select(vec4<bool>(true, true, global0.x, true), !func_3(Struct_1(vec2<f32>(-1508f, var_0.a.x), var_0.b), u_input.a.x), vec4<bool>(true, true, true, global0.x))), !(!func_3(func_2(true), 1192u)), !vec4<bool>(global0.x, any(vec3<bool>(false, global0.x, global0.x)), all(select(global0.zz, global0.xz, global0.yy)), global0.x));
    let var_1 = Struct_1(var_0.a, _wgslsmith_mult_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(var_0.b, var_0.b, vec2<i32>(var_0.b.x, -2147483647i))) | vec2<i32>(~var_0.b.x, func_2(true).b.x), vec2<i32>(min(var_0.b.x, 0i), _wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.b.x, var_0.b.x), -2147483647i))));
    let var_2 = var_1;
    global0 = select(vec4<bool>(true, (var_1.b.x == firstTrailingBit(var_0.b.x)) == global0.x, global0.x | !all(vec2<bool>(true, true)), any(select(func_3(var_2, u_input.a.x), vec4<bool>(true, true, true, true), true))), vec4<bool>(!((false || global0.x) || true), !(!(-16676i > var_2.b.x)), !(!(u_input.a.x >= u_input.a.x)), any(vec4<bool>(true, global0.x, true, false))), !select(vec4<bool>(!global0.x, global0.x & true, !global0.x, true), select(select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, false, global0.x, true), global0.x), select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x)), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), select(func_3(var_2, 54765u), vec4<bool>(true, true, false, global0.x), true)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -428f), 1438f)), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 12>();
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(36502u, u_input.a.x, u_input.a.x, u_input.a.x), abs(vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x)))), _wgslsmith_add_i32(var_0.b.x, firstTrailingBit(var_0.b.x | var_0.b.x) >> (select(max(u_input.a.x, u_input.a.x), ~u_input.a.x, true) % 32u)));
}

