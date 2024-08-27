struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: f32 = 667f;

var<private> global2: array<u32, 3> = array<u32, 3>(62679u, 0u, 1181u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = true;
    global0 = array<vec3<bool>, 31>();
    global1 = _wgslsmith_f_op_f32(321f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(226f))));
    var var_1 = abs(1u);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), -3778f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), arg_1.b, arg_1.a.x || all(vec4<bool>(true, var_0, true, false)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-567f, -1266f), 446f)) * _wgslsmith_f_op_f32(round(arg_1.b)))));
    return 15889i;
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_4) -> bool {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b.xzw, _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 78866u, global2[_wgslsmith_index_u32(4294967295u, 3u)]) >> (u_input.b.zxy % vec3<u32>(32u)), vec3<u32>(arg_0.x, arg_0.x, u_input.e) ^ u_input.b.wyy), vec3<u32>(arg_0.x, 0u, 0u) << (~vec3<u32>(arg_0.x, 35749u, global2[_wgslsmith_index_u32(arg_1, 3u)]) % vec3<u32>(32u)), ~u_input.b.yyw)), firstTrailingBit(u_input.e));
    let var_1 = !all(vec2<bool>(false, false));
    global1 = _wgslsmith_f_op_f32(1909f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(752f * _wgslsmith_f_op_f32(-arg_2.a)) + _wgslsmith_f_op_f32(floor(-3109f))));
    var var_2 = Struct_2(Struct_1(select(vec2<bool>(!var_1, !var_1), vec2<bool>(false, var_1), var_1 != true), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(-704f, -1556f)))));
    global1 = _wgslsmith_f_op_f32(sign(264f));
    return any(!vec3<bool>(any(var_2.a.a), var_1, !(arg_1 > 4294967295u)));
}

fn func_2() -> Struct_5 {
    return Struct_5(vec3<f32>(_wgslsmith_div_f32(-195f, 312f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-700f, -728f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(493f, -407f, true)) + _wgslsmith_f_op_f32(abs(-103f))))), select(_wgslsmith_add_vec2_i32(-min(vec2<i32>(-19434i, 0i), u_input.d), vec2<i32>(u_input.c, abs(1i))), u_input.d, vec2<bool>(func_3(u_input.b.zx, 1u, Struct_4(-348f, 409f, -344f)), false)), Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(523f)) - -614f))), vec4<u32>(_wgslsmith_dot_vec3_u32(select(u_input.b.wwy | u_input.b.ywx, ~vec3<u32>(global2[_wgslsmith_index_u32(89223u, 3u)], u_input.e, 78074u), true), vec3<u32>(4294967295u, u_input.e, u_input.e) >> (countOneBits(u_input.b.yxz) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(~77890u, 3u)], countOneBits(1u), u_input.e), all(vec2<bool>(true, true)));
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> vec3<f32> {
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), 223f))));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.b)), _wgslsmith_f_op_f32(round(arg_1.c.a.b)), _wgslsmith_f_op_f32(select(arg_1.c.a.b, _wgslsmith_f_op_f32(step(arg_1.c.a.b, 1f)), arg_1.c.a.a.x)), _wgslsmith_f_op_f32(step(608f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(652f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -1051f)), func_2().c.a.b), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_1.a.x, arg_0, 1244f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c.a.b, -736f, arg_0, arg_0), vec4<f32>(arg_1.c.a.b, arg_0, arg_0, -1306f))), any(vec2<bool>(arg_1.e, arg_1.c.a.a.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(859f, arg_0, arg_0, arg_1.a.x) + vec4<f32>(404f, -531f, 505f, arg_0)))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1380f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), 489f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(266f, var_0.x)), arg_1.c.a.b, !select(arg_1.e, false, false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.a.b), _wgslsmith_f_op_f32(-1421f + arg_1.c.a.b), arg_0, _wgslsmith_div_f32(1829f, 596f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, 1110f, arg_0, arg_0)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.a.b - 416f), 186f, _wgslsmith_f_op_f32(arg_1.a.x + var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-619f, -550f, -123f, 464f) - vec4<f32>(arg_0, -1000f, arg_0, -1048f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1450f, arg_1.c.a.b, 369f, arg_0) - vec4<f32>(var_0.x, arg_1.c.a.b, -1023f, var_0.x))))));
    let var_2 = 4294967295u;
    global1 = _wgslsmith_f_op_f32(round(-710f));
    return var_1.wyw;
}

fn func_5(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_3 {
    return Struct_3(~(~(~select(vec4<u32>(global2[_wgslsmith_index_u32(u_input.e, 3u)], 4294967295u, 61101u, 4294967295u), vec4<u32>(72105u, arg_1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51736u, 3u)], 3u)], u_input.e), vec4<bool>(arg_3.a.a.x, false, true, arg_0.e)))), reverseBits(~arg_1.x), 50955i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<i32>(-1i, ~(-1i), max(-706i, u_input.d.x) | u_input.a, _wgslsmith_div_i32(u_input.c, func_1(false, Struct_1(vec2<bool>(true, true), 410f)))) << (vec4<u32>(u_input.b.x & global2[_wgslsmith_index_u32(~68799u, 3u)], ~global2[_wgslsmith_index_u32(69014u, 3u)], 35184u, 0u) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_2 = func_5(Struct_5(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-404f, _wgslsmith_div_f32(988f, 1257f), _wgslsmith_f_op_f32(f32(-1f) * -1273f)), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(315f - -292f), func_2())))), vec2<i32>(1i, u_input.c >> (1u % 32u)), Struct_2(func_2().c.a), ~(~u_input.b), global2[_wgslsmith_index_u32(~1u, 3u)] == select(~global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(~26635u, 3u)], true)), abs(max(func_2().d, ~u_input.b)), var_0.yyy, func_2().c);
    let var_3 = Struct_1(vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), func_2().c.a.a.x), 293f);
    global2 = array<u32, 3>();
    var var_4 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1399f, -674f)) * _wgslsmith_f_op_f32(-var_3.b)), 308f, var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(38813u, _wgslsmith_clamp_i32(1i, -2147483647i, max(~2147483647i, -2147483647i)) << ((var_2.b | global2[_wgslsmith_index_u32(u_input.b.x, 3u)]) % 32u), _wgslsmith_f_op_f32(round(var_3.b)));
}

