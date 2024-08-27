struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8>;

var<private> global1: Struct_3;

var<private> global2: u32 = 0u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<bool>, 8>();
    return global1.a.b;
}

fn func_3(arg_0: Struct_2) -> Struct_3 {
    global1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1022f + -1210f) + -1301f), true, global1.a.a.b, global1.a.a.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, global1.a.a.e, 0u, global1.a.b.e), countOneBits(vec4<u32>(global1.a.a.e, 4294967295u, global1.a.b.e, u_input.a.x)))), func_2()), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(u_input.c), firstTrailingBit(abs(u_input.c))), _wgslsmith_add_vec4_i32(vec4<i32>(global1.c, -18298i, ~25891i, abs(global1.c)), -_wgslsmith_sub_vec4_i32(vec4<i32>(global1.c, u_input.b.x, 17881i, global1.b.x), global1.b))), global1.c, !any(!(!global0[_wgslsmith_index_u32(arg_0.a.e, 8u)])), _wgslsmith_f_op_vec2_f32(-global1.e));
    let var_0 = abs(~u_input.b.xy);
    var var_1 = 68208u << (~global1.a.b.e % 32u);
    global0 = array<vec4<bool>, 8>();
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.b.a + global1.a.a.a), _wgslsmith_div_f32(2108f, _wgslsmith_f_op_f32(f32(-1f) * -2758f))));
    return Struct_3(Struct_2(arg_0.b, Struct_1(894f, any(global1.a.a.d) && false, true, global1.a.a.d, u_input.a.x)), u_input.c, ~_wgslsmith_dot_vec4_i32(global1.b, vec4<i32>(1i, global1.c, i32(-1i) * -52958i, _wgslsmith_clamp_i32(u_input.b.x, -10422i, u_input.c.x))), global1.d, global1.e);
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = func_3(Struct_2(Struct_1(global1.e.x, true, global1.d, vec2<bool>(true, false), (48317u & global1.a.b.e) ^ (global1.a.b.e >> (0u % 32u))), func_2()));
    global2 = _wgslsmith_sub_u32(firstTrailingBit(~1u & ~global1.a.b.e), 44005u);
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(470f))), var_0.d, true, vec2<bool>(global1.d, true), ~select(u_input.a.x, 1u, global1.a.b.d.x)), global1.a.b), u_input.c, 19764i, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.e)));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.a.a + global1.e.x), arg_0.x, _wgslsmith_f_op_f32(-1038f + _wgslsmith_f_op_f32(-global1.e.x)), var_0.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1112f, global1.e.x, 407f, var_1.a.b.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-603f, -719f, global1.a.a.a, arg_0.x)))))))));
    global2 = 35118u;
    return func_3(func_3(Struct_2(Struct_1(global1.e.x, any(vec3<bool>(false, global1.a.a.b, var_0.a.b.d.x)), var_0.d && true, global1.a.a.d, var_0.a.b.e), func_2())).a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.e, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1656f, -1407f)))))) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.e.x))), global1.a.b.a)));
    var var_0 = _wgslsmith_f_op_f32(-600f + -305f);
    global2 = min(_wgslsmith_clamp_u32(4294967295u, ~select(106327u, _wgslsmith_div_u32(0u, 1u), global1.d), ~_wgslsmith_div_u32(24508u, _wgslsmith_div_u32(global1.a.a.e, u_input.a.x))), u_input.a.x);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a.a, -1477f, 1771f) * vec3<f32>(1408f, -160f, global1.a.a.a)), vec3<f32>(707f, global1.a.b.a, global1.e.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.e.x, 924f, 2307f), vec3<f32>(global1.e.x, -1089f, 745f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(180f, global1.a.b.a, -1644f))))))), vec3<f32>(_wgslsmith_f_op_f32(sign(993f)), global1.e.x, global1.e.x));
    var var_2 = Struct_2(Struct_1(1082f, all(vec3<bool>(global1.a.b.d.x || global1.d, select(global1.d, global1.a.b.b, global1.a.a.c), true)), global1.d, global1.a.b.d, 0u), Struct_1(var_1.x, global1.d, true, select(func_2().d, vec2<bool>(false, global1.a.b.b), all(select(vec3<bool>(global1.a.b.d.x, global1.a.b.c, false), vec3<bool>(global1.d, true, true), false))), u_input.a.x));
    let var_3 = u_input.a.x;
    var var_4 = Struct_3(Struct_2(func_3(Struct_2(global1.a.a, Struct_1(var_2.a.a, global1.d, false, global1.a.b.d, u_input.a.x))).a.a, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_1.x)))), (2933i != global1.c) && (var_2.a.c || false), false, global1.a.b.d, ~(~u_input.a.x))), (-firstLeadingBit(global1.b) << (vec4<u32>(~0u, 1u, ~16752u, _wgslsmith_sub_u32(58173u, 26758u)) % vec4<u32>(32u))) & (_wgslsmith_clamp_vec4_i32(-vec4<i32>(global1.b.x, global1.c, -1i, u_input.c.x), vec4<i32>(u_input.b.x, u_input.b.x, 1i, 1i), func_1(vec2<f32>(var_2.b.a, -173f)).b) | firstLeadingBit(~u_input.c)), _wgslsmith_mod_i32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, var_2.b.a)) - _wgslsmith_f_op_vec2_f32(sign(global1.e)))).c, _wgslsmith_mod_i32(u_input.c.x ^ _wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(-1i, 22685i)), ~(-1i))), var_2.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.xy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2068f, var_2.b.a)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1844f, global1.e.x))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.a), var_1.x) * global1.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -841f), _wgslsmith_f_op_f32(-func_3(global1.a).a.a.a), select(-var_4.b.x, _wgslsmith_dot_vec4_i32(u_input.c, max(u_input.c, -u_input.c)), any(select(global0[_wgslsmith_index_u32(var_3, 8u)], !global0[_wgslsmith_index_u32(var_2.b.e, 8u)], vec4<bool>(true, false, false, false)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(640f, -1472f))) + 106f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().a)), _wgslsmith_f_op_f32(-var_4.e.x)), _wgslsmith_clamp_u32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -883f))).a.b.e, ~func_3(global1.a).a.b.e, 85055u) ^ countOneBits(~4294967295u));
}

