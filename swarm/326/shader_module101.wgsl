struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true));

var<private> global1: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 20408i), vec2<i32>(1254i, 44959i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(-7351i, 42434i), vec2<i32>(-15887i, 1i), vec2<i32>(-17835i, 9624i), vec2<i32>(10i, i32(-2147483648)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = arg_0.b;
    var_0 = Struct_1(4294967295u, vec4<bool>(!all(!vec2<bool>(arg_1.x, var_0.b.x)), true, true, any(!(!vec4<bool>(true, arg_1.x, arg_0.b.b.x, true)))));
    global0 = array<vec3<bool>, 8>();
    var var_1 = arg_0.b;
    let var_2 = Struct_1(4294967295u, vec4<bool>(!var_0.b.x, any(select(arg_1.yz, arg_0.b.b.wx, arg_1.yz)) == false, true, true));
    return var_2;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32) -> vec2<bool> {
    var var_0 = select(arg_0.a >> (_wgslsmith_sub_vec4_u32(arg_0.a, vec4<u32>(24076u, u_input.a.x, 13581u, 34216u) | arg_0.a) % vec4<u32>(32u)), countOneBits(vec4<u32>(~(~u_input.a.x), arg_0.a.x, 94865u, arg_0.a.x)), !select(!arg_0.b.b, arg_0.b.b, any(arg_0.b.b)));
    return vec2<bool>(true, firstTrailingBit(~76361u & u_input.a.x) < 19343u);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = !any(!func_3(arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -510f, -373f, arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -881f)));
    global1 = array<vec2<i32>, 10>();
    global1 = array<vec2<i32>, 10>();
    global0 = array<vec3<bool>, 8>();
    global0 = array<vec3<bool>, 8>();
    return Struct_1(1u, arg_1.b.b);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    global0 = array<vec3<bool>, 8>();
    var var_0 = arg_0.b;
    let var_1 = firstTrailingBit(-2147483647i);
    var var_2 = arg_0.b;
    var var_3 = func_4(select(func_3(Struct_2(vec4<u32>(arg_1, 12323u, 4294967295u, 0u), func_2(arg_0, vec4<bool>(var_0.b.x, false, false, var_0.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-304f, -356f, -472f, 951f), vec4<f32>(-861f, 1471f, -463f, 108f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(796f, -181f, 1838f, 700f), vec4<f32>(-752f, -1219f, 244f, -1200f), vec4<bool>(false, false, var_0.b.x, var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f))), !var_0.b.wy, ~_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(arg_1, 10u)]) <= abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 8110i, var_1), vec3<i32>(var_1, 13787i, u_input.b)))), arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2449f, -707f)) * _wgslsmith_f_op_f32(413f - -3291f)), -256f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(322f, -285f), vec2<f32>(-1430f, 1000f))))))));
    return Struct_1(var_0.a, !func_2(arg_0, !(!var_3.b)).b);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global1 = array<vec2<i32>, 10>();
    global0 = array<vec3<bool>, 8>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(234f, -1704f, true)), _wgslsmith_f_op_f32(round(669f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -164f) - _wgslsmith_div_f32(-1083f, -313f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1786f + -2335f) - _wgslsmith_f_op_f32(-601f - 1180f))) - vec2<f32>(_wgslsmith_f_op_f32(min(433f, _wgslsmith_f_op_f32(sign(1656f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1786f))))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_mod_vec3_u32(~select(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, 39354u)), _wgslsmith_add_vec3_u32(arg_0.a.ywx, arg_0.a.yxw), ~u_input.a), vec3<u32>(_wgslsmith_div_u32(0u, 38491u), ~8136u, 1u), arg_0.b.b.x), arg_0.a.xzx);
    return Struct_1(~max(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(20778u, u_input.a.x)), countOneBits(u_input.a.xx)), var_2.x), !select(!vec4<bool>(true, arg_0.b.b.x, arg_0.b.b.x, true), !vec4<bool>(true, arg_0.b.b.x, true, arg_0.b.b.x), all(func_4(arg_0.b.b.zy, Struct_2(arg_0.a, arg_0.b), vec2<f32>(var_0.x, 1000f)).b.xw)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~u_input.a.x, vec4<bool>(true, !any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), true, true));
    var var_1 = _wgslsmith_f_op_f32(ceil(-1000f));
    var var_2 = var_0.b;
    global0 = array<vec3<bool>, 8>();
    let var_3 = Struct_1(var_0.a & ~countOneBits(~4294967295u), vec4<bool>(_wgslsmith_div_i32(u_input.b ^ u_input.b, _wgslsmith_div_i32(u_input.b, u_input.b)) > u_input.b, var_2.x, (_wgslsmith_f_op_f32(133f - -311f) > _wgslsmith_f_op_f32(select(340f, 703f, var_0.b.x))) | false, all(select(vec2<bool>(var_0.b.x, false), select(var_2.xy, vec2<bool>(true, var_0.b.x), vec2<bool>(false, true)), var_2.x))));
    var var_4 = func_5(Struct_2(firstLeadingBit(vec4<u32>(countOneBits(0u), 1u, ~var_0.a, ~u_input.a.x)), func_1(Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_3.a, 0u, 0u), vec4<u32>(var_3.a, var_0.a, 59400u, 47095u)), var_3), var_3.a)));
    var var_5 = Struct_2(~firstTrailingBit(vec4<u32>(50328u, 55894u | var_4.a, countOneBits(97798u), 1u)), Struct_1(_wgslsmith_add_u32(firstLeadingBit(~1u), ~6782u & (4294967295u ^ var_3.a)), var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -660f), -1863f, -738f))))));
}

