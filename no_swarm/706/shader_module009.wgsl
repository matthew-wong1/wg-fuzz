struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: Struct_1 = Struct_1(true, vec4<bool>(true, false, false, true), vec2<u32>(0u, 76996u), vec2<bool>(false, false));

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(false, vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 1u), vec2<bool>(false, false)), Struct_1(true, vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 1u), vec2<bool>(true, false)), Struct_1(false, vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 0u), vec2<bool>(false, true)), Struct_1(true, vec4<bool>(true, false, false, false), vec2<u32>(1247u, 0u), vec2<bool>(false, true)), Struct_1(false, vec4<bool>(true, false, false, false), vec2<u32>(20169u, 2731u), vec2<bool>(false, true)), Struct_1(true, vec4<bool>(true, false, true, true), vec2<u32>(0u, 1u), vec2<bool>(true, false)), Struct_1(false, vec4<bool>(true, true, false, false), vec2<u32>(0u, 80501u), vec2<bool>(true, true)), Struct_1(true, vec4<bool>(true, false, false, true), vec2<u32>(1u, 1u), vec2<bool>(false, true)), Struct_1(false, vec4<bool>(false, true, false, true), vec2<u32>(14050u, 0u), vec2<bool>(false, true)), Struct_1(true, vec4<bool>(false, true, false, false), vec2<u32>(0u, 4294967295u), vec2<bool>(true, true)), Struct_1(true, vec4<bool>(true, false, false, true), vec2<u32>(4294967295u, 1u), vec2<bool>(false, false)), Struct_1(true, vec4<bool>(false, false, true, false), vec2<u32>(27120u, 3506u), vec2<bool>(true, false)), Struct_1(true, vec4<bool>(false, true, false, true), vec2<u32>(0u, 7953u), vec2<bool>(false, false)), Struct_1(true, vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 29512u), vec2<bool>(true, true)), Struct_1(false, vec4<bool>(false, false, true, false), vec2<u32>(36552u, 43389u), vec2<bool>(false, true)), Struct_1(false, vec4<bool>(false, true, false, false), vec2<u32>(42902u, 32728u), vec2<bool>(true, true)), Struct_1(true, vec4<bool>(false, true, false, true), vec2<u32>(0u, 0u), vec2<bool>(true, false)), Struct_1(true, vec4<bool>(false, false, true, true), vec2<u32>(4594u, 2901u), vec2<bool>(false, false)), Struct_1(true, vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, false)), Struct_1(false, vec4<bool>(true, false, true, true), vec2<u32>(0u, 1u), vec2<bool>(false, true)), Struct_1(false, vec4<bool>(false, true, true, true), vec2<u32>(0u, 4294967295u), vec2<bool>(false, true)), Struct_1(false, vec4<bool>(false, false, false, true), vec2<u32>(0u, 4294967295u), vec2<bool>(true, false)), Struct_1(false, vec4<bool>(true, true, false, true), vec2<u32>(30575u, 29275u), vec2<bool>(false, true)), Struct_1(false, vec4<bool>(true, true, true, false), vec2<u32>(51352u, 4294967295u), vec2<bool>(false, false)), Struct_1(false, vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 1u), vec2<bool>(false, true)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global2.c.x, 0u, global2.c.x), vec4<u32>(arg_1.c.x, global2.c.x, global2.c.x, global2.c.x)), ~vec4<u32>(arg_1.c.x, arg_1.c.x, 79578u, 4294967295u), arg_1.d.x), ~(vec4<u32>(arg_1.c.x, global2.c.x, 44924u, global2.c.x) & vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, 1u))), vec4<u32>(firstTrailingBit(~global2.c.x), arg_1.c.x, arg_1.c.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.c.x, 18291u, arg_1.c.x)), vec3<u32>(global2.c.x, arg_1.c.x, 33258u) ^ vec3<u32>(1u, 0u, arg_1.c.x))), select(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(7300u, global2.c.x, global2.c.x, 4294967295u)), ~vec4<u32>(global2.c.x, 1u, global2.c.x, arg_1.c.x)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(19820u, arg_1.c.x, 4294967295u, 1u), vec4<u32>(7834u, 89590u, 4294967295u, 1u), vec4<u32>(global2.c.x, global2.c.x, global2.c.x, 0u))), select(vec4<bool>(true, arg_0.x, global2.d.x, arg_0.x), arg_0, !arg_1.b))), ~((~vec4<u32>(arg_1.c.x, global2.c.x, 0u, 49773u) << (vec4<u32>(arg_1.c.x, arg_1.c.x, 0u, 36900u) % vec4<u32>(32u))) << (~(~vec4<u32>(0u, arg_1.c.x, arg_1.c.x, 4294967295u)) % vec4<u32>(32u))), vec4<u32>(1u, global2.c.x, arg_1.c.x, abs(~4294967295u)));
    global2 = Struct_1(global2.b.x, arg_1.b, ~arg_1.c, vec2<bool>(true, true));
    global1 = array<vec2<bool>, 15>();
    let var_1 = 1000f;
    global3 = array<Struct_1, 25>();
    return (global2.c.x != var_0.x) | arg_1.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec3<f32> {
    var var_0 = vec4<u32>(global2.c.x, ~(~18172u) | _wgslsmith_mult_u32(~(~global2.c.x), global2.c.x), ~1u, ~_wgslsmith_div_u32(4294967295u, ~58610u));
    let var_1 = arg_0.x;
    var var_2 = func_3(global2.b, global3[_wgslsmith_index_u32(1u, 25u)]);
    let var_3 = Struct_1(u_input.a.x >= 2147483647i, !global2.b, var_0.wy, arg_0.xy);
    var var_4 = var_3;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-791f, -625f, 410f))) - vec3<f32>(_wgslsmith_f_op_f32(abs(369f)), 1315f, _wgslsmith_f_op_f32(222f - 1635f))))));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(!select(global2.b.wxy, !vec3<bool>(true, false, global2.d.x), true), reverseBits(u_input.a.xyw))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-469f, 523f, 287f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(197f, -1000f, 141f) + vec3<f32>(767f, 305f, -1000f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-683f, 1768f, -658f))))))));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(608f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-471f, var_0.x, -1274f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-837f, var_0.x, -491f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 903f, var_0.x), vec3<f32>(var_0.x, -1152f, 1002f), global2.a)) - vec3<f32>(var_0.x, 867f, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, -314f)))))), !global2.d.x))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, var_2.x))));
    let var_3 = !(!(!select(!vec3<bool>(true, global2.a, global2.a), !vec3<bool>(global2.d.x, false, true), global2.b.www)));
    return !global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1732f)))) + 1f);
    global2 = Struct_1(false, select(vec4<bool>(global2.a, global2.b.x, (global2.d.x || global2.d.x) == any(vec4<bool>(true, false, global2.a, true)), any(select(vec2<bool>(true, global2.d.x), vec2<bool>(false, global2.d.x), vec2<bool>(global2.d.x, global2.d.x)))), !func_1(~41003i), true), global2.c, !(!global1[_wgslsmith_index_u32(~25941u, 15u)]));
    var var_1 = select(global2.c.x >= countOneBits(countOneBits(1u)), global2.a, !(!(!(!global2.a))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -661f);
    var var_2 = select(select(global2.d, vec2<bool>(all(!global2.b.zxx), global2.a), !(!(!global1[_wgslsmith_index_u32(84439u, 15u)]))), vec2<bool>(abs(_wgslsmith_dot_vec2_u32(global2.c, vec2<u32>(22988u, 49141u))) != _wgslsmith_add_u32(~global2.c.x, global2.c.x | global2.c.x), all(global2.b)), !vec2<bool>(func_3(select(global2.b, global2.b, false), global3[_wgslsmith_index_u32(~2621u, 25u)]), !global2.b.x));
    var var_3 = Struct_1(false, vec4<bool>(all(select(func_1(u_input.a.x), !vec4<bool>(global2.a, false, var_2.x, true), true)), func_1(abs(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x))).x, all(select(vec2<bool>(true, var_2.x), global2.d, global2.b.wz)), false), ~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(global2.c.x, 0u)), global2.c), vec2<bool>(true != !(!global2.a), global2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_3.c.x, var_3.c.x), ~u_input.a.x);
}

