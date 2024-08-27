struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(810f, 776f, 1649f);

var<private> global1: vec3<u32>;

var<private> global2: array<u32, 17> = array<u32, 17>(1u, 45294u, 0u, 62654u, 11798u, 14922u, 1u, 67660u, 0u, 10932u, 12217u, 0u, 1u, 57778u, 0u, 4294967295u, 131951u);

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<i32>(0i, 2147483647i), vec3<f32>(-1417f, 1146f, -1017f)), Struct_2(vec2<i32>(33749i, -1i), vec3<f32>(1409f, -191f, 1539f)), Struct_2(vec2<i32>(-2318i, 55666i), vec3<f32>(145f, -959f, 1217f)), Struct_2(vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(-1191f, 993f, -1936f)), Struct_2(vec2<i32>(-1i, -14546i), vec3<f32>(763f, 241f, 919f)), Struct_2(vec2<i32>(26432i, 2147483647i), vec3<f32>(-2155f, -972f, 1386f)), Struct_2(vec2<i32>(-9326i, -22957i), vec3<f32>(308f, 870f, 374f)));

var<private> global4: array<vec2<bool>, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.e, ~(-2147483647i)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(159f + -1893f)))))), global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.x, global0.x), 1737f, false)));
    let var_1 = ~23038u;
    return ~(~(~((arg_1 << (arg_1 % 32u)) | 1u)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    global3 = array<Struct_2, 7>();
    var var_0 = _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + -1023f), -1588f)));
    let var_1 = ~_wgslsmith_sub_u32(~countOneBits(903u), global1.x | _wgslsmith_clamp_u32(u_input.b.x, select(15859u, 1u, true), ~u_input.b.x));
    var var_2 = func_3(vec2<u32>(arg_2.x, ~firstLeadingBit(var_1) & firstLeadingBit(104762u)), ~0u);
    let var_3 = Struct_1(arg_0 | -14505i, select(vec4<bool>(true, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], var_1) <= var_1, all(vec3<bool>(true, true, true)), ~global2[_wgslsmith_index_u32(u_input.a.x, 17u)] <= global2[_wgslsmith_index_u32(~1u, 17u)]), vec4<bool>(true, true, true, true), !all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(671f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(global0.x, 1402f)), _wgslsmith_div_f32(arg_1, 283f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1250f, -460f, arg_1, arg_1) - vec4<f32>(2253f, -611f, arg_1, arg_1)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, 894f, 537f, 798f), vec4<f32>(-2342f, arg_1, 627f, global0.x))))))), select(select(vec4<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(false, true, true)), true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false))), vec4<bool>(var_1 != func_3(u_input.b.wx, 10365u), true, true, any(select(vec2<bool>(false, true), global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], vec2<bool>(true, true)))), false), global0.yy);
    return 75159u;
}

fn func_4(arg_0: f32, arg_1: u32) -> f32 {
    global4 = array<vec2<bool>, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-782f, global0.x, global0.x, global0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, arg_0, 280f, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 145f, global0.x, 311f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 612f, 859f, _wgslsmith_f_op_f32(global0.x - -1639f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(485f, 327f, arg_0, global0.x)))), all(vec2<bool>(true, false))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -678f, 726f, -1816f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_0, arg_0, 1321f) - vec4<f32>(-807f, arg_0, global0.x, -310f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -793f), global0.x, _wgslsmith_div_f32(-570f, 1136f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 887f, -408f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 648f, arg_0, 1000f)))))));
    global4 = array<vec2<bool>, 17>();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, ~select(global2[_wgslsmith_index_u32(arg_1, 17u)], 4294967295u, false) | 1u, ~global2[_wgslsmith_index_u32(~min(global1.x, 1270u), 17u)]), firstTrailingBit(firstLeadingBit(vec3<u32>(6114u, ~global1.x, u_input.b.x)))), 7u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.x, -123f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-831f - 309f) * 1000f)) + _wgslsmith_f_op_f32(exp2(arg_0))));
}

fn func_1(arg_0: bool) -> bool {
    return (all(vec4<bool>(true, !arg_0, arg_0, arg_0)) || true) & (_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.x)), global0.x) < _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - 395f))), func_2(2147483647i, global0.x, u_input.b) | _wgslsmith_div_u32(10190u, global2[_wgslsmith_index_u32(17982u, 17u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 7>();
    global2 = array<u32, 17>();
    var var_0 = Struct_1(_wgslsmith_div_i32(~u_input.d.x, _wgslsmith_sub_i32(min(~u_input.e, 9245i), u_input.c.x)), !vec4<bool>(func_1(all(vec3<bool>(false, true, false))), !any(vec4<bool>(true, true, false, false)), func_1(all(vec4<bool>(false, true, true, true))), any(!global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 17u)], 17u)])), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 156f, 1181f, -550f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 1393f, 161f, global0.x), vec4<f32>(402f, global0.x, -510f, global0.x), true)), u_input.c.x == u_input.d.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, -816f, global0.x))))))), !select(vec4<bool>(true, true, u_input.e > u_input.d.x, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true)), select(true, -1000f < global0.x, true)), _wgslsmith_f_op_vec2_f32(global0.xx + _wgslsmith_f_op_vec2_f32(global0.xx * _wgslsmith_f_op_vec2_f32(trunc(global0.yx)))));
    global4 = array<vec2<bool>, 17>();
    let var_1 = func_3(vec2<u32>(~0u, _wgslsmith_sub_u32(global1.x, 31594u)), u_input.b.x);
    var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-var_0.a, var_0.a), ~(u_input.c << (select(vec2<u32>(1u, global2[_wgslsmith_index_u32(var_1, 17u)]), global1.xz, var_0.b.x) % vec2<u32>(32u)))), vec4<bool>(~_wgslsmith_sub_i32(u_input.c.x, 1i) != _wgslsmith_sub_i32(-2147483647i, select(u_input.d.x, 1655i, var_0.d.x)), var_0.d.x, all(select(vec2<bool>(true, false), !var_0.d.zx, true)), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-248f, var_0.e.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -896f, var_0.e.x, var_0.e.x)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -931f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(abs(global0.x)), -673f)), select(vec4<bool>(true, var_0.b.x | true, true, true), select(select(var_0.b, var_0.b, var_0.b.x), select(!var_0.b, vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.d.x), true), !var_0.b), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(var_0.c.x, 511f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(~(~(vec3<u32>(global2[_wgslsmith_index_u32(0u, 17u)], 91101u, global2[_wgslsmith_index_u32(38566u, 17u)]) ^ vec3<u32>(global1.x, 12634u, global1.x))), ~(~u_input.b.xyx), u_input.b.xww), 15845i);
}

