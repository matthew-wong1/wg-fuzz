struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-316f, -382f, -177f, -1084f), vec3<bool>(true, true, true), vec2<bool>(true, false), 4294967295u);

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<f32>, 2>;

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-1256f * -419f);
    let var_1 = arg_1;
    let var_2 = 36359i;
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(global0.a.x)), -489f, var_0, var_0), select(vec3<bool>(global0.c.x || true, true, !global0.b.x), vec3<bool>(global1.x, var_1.c.x, true), !vec3<bool>(true, all(vec2<bool>(false, true)), false)), !arg_1.c, global0.d | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.ww));
    let var_3 = arg_1.d;
    return any(select(!(!vec3<bool>(global0.b.x, arg_0, global1.x)), arg_1.b, true));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2272f - -751f)));
    var var_1 = abs(vec3<i32>(abs(~1i), 18898i << (~(~arg_1.d) % 32u), abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -10145i), vec2<i32>(-2147483647i, -20438i)))));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-938f, arg_1.a.x, -1117f, global3.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -478f, 1170f, 1219f)))))), arg_2.xwz, !(!(!select(global3.c, vec2<bool>(arg_2.x, global1.x), vec2<bool>(false, false)))), global0.d);
    global3 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(arg_1.a.x - 2074f));
    return !any(!global0.b);
}

fn func_2(arg_0: bool) -> bool {
    global1 = !vec2<bool>(arg_0 || global3.c.x, true);
    var var_0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(i32(-1i) * -1i, i32(-1i) * -11914i), reverseBits(vec2<i32>(~1i, -2147483647i)) >> (u_input.a.wz % vec2<u32>(32u)));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.a * vec4<f32>(-773f, global0.a.x, global0.a.x, global0.a.x)) - vec4<f32>(1077f, _wgslsmith_f_op_f32(select(231f, global3.a.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1275f), _wgslsmith_f_op_f32(-3055f + global3.a.x)))), !global0.b, !select(vec2<bool>(func_3(vec4<u32>(u_input.a.x, 1u, 0u, 0u), Struct_1(global0.a, global0.b, vec2<bool>(global0.c.x, false), global0.d), vec4<bool>(arg_0, true, true, global1.x), global3.d), all(global0.b)), vec2<bool>(global0.c.x, true), global0.b.x), ~4294967295u ^ abs(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(4294967295u, 31464u, 0u, 33923u) | vec4<u32>(global3.d, 52690u, u_input.a.x, global0.d))));
    global1 = select(vec2<bool>(false, !any(select(vec4<bool>(arg_0, true, global1.x, false), vec4<bool>(global1.x, false, true, false), global1.x))), !vec2<bool>(global0.b.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(123f)) - _wgslsmith_f_op_f32(-298f + global3.a.x)) - _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(global0.a.x * 743f)))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - 794f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + global0.a.x), global3.a.x))));
    let var_1 = Struct_1(global3.a, !(!vec3<bool>(any(vec4<bool>(global0.c.x, false, true, global1.x)), func_3(u_input.a, Struct_1(global3.a, vec3<bool>(true, true, false), global3.c, 84665u), vec4<bool>(global1.x, true, false, global1.x), u_input.a.x), global1.x)), select(vec2<bool>(76100u > _wgslsmith_add_u32(7623u, global0.d), true), select(vec2<bool>(arg_0 || arg_0, func_1(global1.x, Struct_1(global3.a, global0.b, vec2<bool>(false, global3.b.x), 39245u))), global3.c, vec2<bool>(true, arg_0)), 1u <= ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~60921u);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(!all(!vec4<bool>(false, global3.c.x, true, global0.c.x)) & (func_1(false, Struct_1(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 1210f), global3.b, global3.c, u_input.a.x)) && (firstTrailingBit(global0.d) <= 72092u)), false);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(abs(global3.a.x)), global0.a.x, global0.a.x)), select(vec3<bool>(!func_2(global0.c.x), any(vec4<bool>(global3.b.x, false, false, global1.x)), !global1.x), vec3<bool>(false, global0.c.x, false), select(vec3<bool>(true, true, true), select(global0.b, global0.b, vec3<bool>(false, global3.c.x, global0.b.x)), global0.c.x)), global3.b.yx, 37102u);
    let var_1 = true | global0.b.x;
    var var_2 = 1u;
    var_2 = select(4294967295u, abs(min(~firstLeadingBit(global0.d), ~_wgslsmith_clamp_u32(var_0.d, global3.d, 39594u))), false);
    global1 = select(select(vec2<bool>(global0.c.x, true), var_0.b.yz, all(select(vec2<bool>(true, true), select(global3.b.zx, vec2<bool>(global1.x, var_1), vec2<bool>(var_1, var_0.c.x)), vec2<bool>(true, false)))), !vec2<bool>(var_0.c.x, global0.b.x), global3.c.x);
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(24521i, _wgslsmith_div_i32(~abs(-46278i), 1i)), 14732i);
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(18317i, select(2147483647i, var_3, var_0.c.x), 0i) >> (vec3<u32>(u_input.a.x & var_0.d, var_0.d, global0.d & 7975u) % vec3<u32>(32u))) & (vec3<i32>(-1i, var_3 & var_3, -var_3) << ((u_input.a.zzx >> (u_input.a.wxx % vec3<u32>(32u))) % vec3<u32>(32u))), var_3);
}

