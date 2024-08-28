struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(419f, vec4<i32>(1i, i32(-2147483648), 2147483647i, 1820i), true, vec4<i32>(-29021i, -19315i, 76100i, 1950i)));

var<private> global1: array<vec4<u32>, 26>;

var<private> global2: vec2<u32> = vec2<u32>(9167u, 0u);

var<private> global3: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(16150u, 54335u), vec2<u32>(4294967295u, 1u), vec2<u32>(43501u, 0u), vec2<u32>(39503u, 5997u), vec2<u32>(0u, 21490u), vec2<u32>(1u, 54513u), vec2<u32>(20949u, 4294967295u), vec2<u32>(91716u, 3755u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 7703u), vec2<u32>(64817u, 4631u), vec2<u32>(4294967295u, 80239u));

var<private> global4: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    global3 = array<vec2<u32>, 13>();
    let var_0 = 4163i;
    let var_1 = any(vec3<bool>(arg_3.c, true, true));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(595f, _wgslsmith_f_op_f32(trunc(-482f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 453f))) - arg_2));
    global4 = arg_3;
    return 1f;
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(global4.a, -935f), vec2<f32>(489f, -496f)), 1u, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global4.a, global4.a), vec2<f32>(global0.a.a, -210f))), Struct_1(1120f, vec4<i32>(82319i, u_input.e.x, u_input.d, 1i), global4.c, vec4<i32>(2147483647i, -2147483647i, global0.a.b.x, global4.d.x))))), global0.a.a < _wgslsmith_f_op_f32(825f * _wgslsmith_f_op_f32(-global4.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(-256f, global4.a), u_input.b, vec2<f32>(global4.a, global0.a.a), global0.a)) * 1000f))))));
    let var_1 = all(select(select(!select(vec2<bool>(false, false), vec2<bool>(global0.a.c, global4.c), vec2<bool>(global4.c, global0.a.c)), vec2<bool>(true, true), true), select(select(vec2<bool>(global0.a.c, global0.a.c), vec2<bool>(global4.c, global4.c), all(vec4<bool>(global4.c, global4.c, global0.a.c, false))), select(vec2<bool>(false, false), !vec2<bool>(global0.a.c, global4.c), global4.c), select(true, global4.c, false) | !global0.a.c), all(vec2<bool>(global4.c, global0.a.c))));
    var var_2 = Struct_1(1000f, reverseBits(-vec4<i32>(-12325i, abs(2147483647i), global4.d.x, _wgslsmith_dot_vec2_i32(global0.a.d.wx, global4.d.xz))), any(select(!select(vec3<bool>(false, global4.c, false), vec3<bool>(true, global0.a.c, var_1), vec3<bool>(global0.a.c, true, global0.a.c)), select(!vec3<bool>(true, true, global4.c), select(vec3<bool>(var_1, false, global4.c), vec3<bool>(var_1, false, false), global0.a.c), select(vec3<bool>(false, true, true), vec3<bool>(global4.c, var_1, false), true)), any(select(vec4<bool>(global0.a.c, false, true, global0.a.c), vec4<bool>(true, false, global4.c, true), vec4<bool>(false, true, global4.c, global4.c))))), firstLeadingBit(vec4<i32>(57217i, _wgslsmith_mod_i32(~global0.a.d.x, -26659i), global0.a.d.x, u_input.d)));
    let var_3 = -(~(-global0.a.b.x)) & -14350i;
    let var_4 = Struct_2(global0.a);
    return vec3<u32>(firstLeadingBit(15933u), _wgslsmith_mod_u32(global2.x, 4294967295u), 0u);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    global3 = array<vec2<u32>, 13>();
    let var_0 = ~((~(vec3<u32>(0u, u_input.c, u_input.c) ^ vec3<u32>(u_input.b, 81029u, 5057u)) & ~(~vec3<u32>(36531u, 0u, 17622u))) & _wgslsmith_div_vec3_u32(func_2(), vec3<u32>(6809u, select(1u, arg_2, global0.a.c), arg_2)));
    global1 = array<vec4<u32>, 26>();
    global3 = array<vec2<u32>, 13>();
    global1 = array<vec4<u32>, 26>();
    return -9137i;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-655f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.a, 1000f), global4.a)), global4.a, 996f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) * -2613f), _wgslsmith_f_op_f32(step(-1072f, _wgslsmith_f_op_f32(abs(534f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -948f))), _wgslsmith_f_op_f32(f32(-1f) * -178f)))));
    let var_1 = Struct_2(global0.a);
    let var_2 = Struct_2(global0.a);
    global4 = var_1.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-484f)) - _wgslsmith_f_op_f32(var_2.a.a + var_2.a.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_2.a, var_1.a.a))))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x;
    let var_1 = _wgslsmith_clamp_vec2_u32(global3[_wgslsmith_index_u32(u_input.c, 13u)], min(select(global3[_wgslsmith_index_u32(~(~u_input.c), 13u)], ~countOneBits(vec2<u32>(u_input.b, 54396u)), true), _wgslsmith_add_vec2_u32(~firstLeadingBit(global3[_wgslsmith_index_u32(1u, 13u)]), global3[_wgslsmith_index_u32(u_input.c >> (_wgslsmith_clamp_u32(u_input.c, 1u, u_input.c) % 32u), 13u)])), vec2<u32>(~global2.x, ~4745u | global2.x));
    let var_2 = 934f;
    var var_3 = u_input.c;
    let var_4 = _wgslsmith_f_op_vec4_f32(func_4(~abs(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(151f, -427f) + vec2<f32>(209f, var_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.a, 1440f) + vec2<f32>(global0.a.a, 118f)), ~0u)), ~vec2<u32>(26237u, ~17801u >> (countOneBits(0u) % 32u)), Struct_1(var_2, global0.a.b, true, select(global4.b, ~vec4<i32>(u_input.e.x, -12884i, 2147483647i, -2147483647i) | firstLeadingBit(vec4<i32>(2147483647i, 0i, 16618i, -1i)), all(select(vec3<bool>(global0.a.c, true, global0.a.c), vec3<bool>(global0.a.c, false, false), vec3<bool>(global0.a.c, global4.c, false)))))));
    let var_5 = global0.a.d;
    global1 = array<vec4<u32>, 26>();
    var var_6 = -28534i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), global0.a.d.x, var_4.x, 46839i, -1i);
}

