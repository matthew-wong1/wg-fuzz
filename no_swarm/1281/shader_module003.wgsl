struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1658f))))));
    var var_1 = 2147483647i > u_input.b.x;
    return Struct_2(Struct_1(global0.a), vec2<bool>(9085u < (_wgslsmith_mod_u32(arg_0, 62495u) ^ arg_0), true), vec2<bool>(global0.a, global0.a));
}

fn func_3() -> vec3<bool> {
    global1 = array<vec3<f32>, 3>();
    var var_0 = !(!vec2<bool>(any(vec4<bool>(global0.a, true, true, false)), true));
    var var_1 = func_1(_wgslsmith_mod_u32(u_input.a, ~firstTrailingBit(4294967295u))).a;
    var var_2 = _wgslsmith_dot_vec4_u32(~(~reverseBits(vec4<u32>(u_input.a, u_input.a, 62938u, 60227u) << (vec4<u32>(u_input.a, 64596u, u_input.c, u_input.c) % vec4<u32>(32u)))), countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.c, 20319u, u_input.c), ~vec4<u32>(u_input.a, 18214u, 1u, 59282u)), ~vec4<u32>(u_input.a, 48055u, 9313u, u_input.c))));
    global0 = func_1(~(~54670u)).a;
    return vec3<bool>(any(!select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), var_1.a), !vec2<bool>(var_0.x, var_1.a), true && var_1.a)), global0.a, select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1504f), _wgslsmith_f_op_f32(min(663f, 1596f)))) < _wgslsmith_f_op_f32(abs(1f)), var_1.a, all(!func_1(u_input.a).b)));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_4(vec2<bool>(any(select(!vec3<bool>(global0.a, global0.a, true), vec3<bool>(true, true, true), func_3())), global0.a), func_1(u_input.c));
    let var_1 = var_0.b.a.a;
    let var_2 = true;
    global0 = func_1(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, 0u), 4294967295u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.a, 22532u))))).a;
    let var_3 = func_3();
    return select(select(vec4<bool>(func_3().x, all(select(vec4<bool>(true, true, var_2, var_2), vec4<bool>(false, true, true, var_3.x), true)), all(!vec3<bool>(global0.a, true, var_0.a.x)), var_0.a.x), !select(!vec4<bool>(true, global0.a, false, global0.a), vec4<bool>(global0.a, false, true, var_3.x), true), true), select(vec4<bool>(true, true, true, any(!vec4<bool>(true, true, global0.a, var_3.x))), !(!(!vec4<bool>(var_2, false, var_0.b.b.x, global0.a))), global0.a), !(!(!select(vec4<bool>(var_0.b.b.x, var_0.b.a.a, var_1, var_3.x), vec4<bool>(true, var_0.b.c.x, var_2, true), vec4<bool>(var_3.x, global0.a, global0.a, var_0.b.a.a)))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<bool>) -> vec3<f32> {
    var var_0 = global1[_wgslsmith_index_u32(arg_1, 3u)];
    let var_1 = abs(u_input.b);
    var var_2 = 1i;
    var_0 = global1[_wgslsmith_index_u32(4294967295u, 3u)];
    var var_3 = var_0.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1f), var_0.x, _wgslsmith_f_op_f32(-1104f - 1000f)))) + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(reverseBits(4294967295u), 51184u, 4294967295u, u_input.c), abs(_wgslsmith_mod_vec4_u32(select(vec4<u32>(30360u, arg_1, arg_1, u_input.c), vec4<u32>(arg_1, u_input.c, 4294967295u, u_input.a), true), vec4<u32>(30128u, 4294967295u, arg_1, 64506u)))), 3u)]);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = select(~u_input.b.xw, vec2<i32>(-14341i, firstLeadingBit(i32(-1i) * -2147483647i)), arg_0.a);
    global1 = array<vec3<f32>, 3>();
    var var_1 = Struct_3(u_input.b.zxy);
    var var_2 = arg_3.x;
    let var_3 = func_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_2.xwx, arg_2.zzw), countOneBits(arg_2.xxz))).c;
    return arg_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(true);
    global0 = func_5(Struct_4(vec2<bool>(true, true), func_1(countOneBits(reverseBits(68232u)))), ~(~(~vec2<u32>(26597u, 82436u))), vec4<u32>(u_input.c, u_input.c, u_input.a, ~(~u_input.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_3(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), ~u_input.c, func_2()))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1528f + 569f)), 1940f, -903f)));
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(708f * _wgslsmith_f_op_f32(1480f - 646f)) + _wgslsmith_f_op_f32(max(-179f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_3(u_input.b.xxw), u_input.c, vec4<bool>(false, global0.a, global0.a, true))).x))))));
    var var_1 = select(!func_2().x, _wgslsmith_add_u32(abs(~u_input.a), ~1u) <= ~_wgslsmith_mod_u32(u_input.a, min(0u, 4294967295u)), true | any(!(!vec3<bool>(true, global0.a, false))));
    var var_2 = func_1(_wgslsmith_dot_vec3_u32(~(select(vec3<u32>(u_input.a, 26664u, u_input.a), vec3<u32>(25932u, u_input.c, u_input.c), vec3<bool>(true, global0.a, global0.a)) ^ abs(vec3<u32>(68844u, u_input.c, 40052u))), _wgslsmith_clamp_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.c, 23441u, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(40477u, u_input.c, u_input.a) & vec3<u32>(4294967295u, u_input.c, u_input.c), ~vec3<u32>(u_input.c, u_input.a, u_input.c)), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(5356u, u_input.a, u_input.c))))));
    global1 = array<vec3<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(-vec4<i32>(-1i, abs(u_input.b.x), ~u_input.b.x, ~u_input.b.x)));
}

