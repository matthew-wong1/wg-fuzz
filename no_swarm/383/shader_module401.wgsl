struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 46258u);

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<Struct_2, 22>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(123456u & ~select(global0.x ^ u_input.a.x, min(u_input.c.x, global0.x), true), 22u)], vec2<bool>(true, true), false);
    var_0 = Struct_3(var_0.a, var_0.b, select(var_0.c, var_0.a.b, true));
    let var_1 = var_0.a.a;
    global0 = u_input.c.xz;
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.a.a.c), vec2<u32>(~(~0u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 4294967295u, var_0.a.a.a) ^ vec4<u32>(var_1.a, var_1.a, 14160u, 83060u), ~vec4<u32>(var_0.a.a.a, global0.x, global0.x, 0u)), _wgslsmith_div_u32(u_input.a.x, u_input.a.x))));
    return 4294967295u;
}

fn func_2() -> u32 {
    let var_0 = Struct_3(Struct_2(Struct_1(select(4294967295u, global0.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), ~0u << (func_3() % 32u)), select(true, true, false)), vec2<bool>(true, true), !any(vec2<bool>(true, true)));
    global0 = countOneBits(u_input.c.yz);
    global0 = u_input.a.zx;
    let var_1 = Struct_1(var_0.a.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.a.b, _wgslsmith_f_op_f32(-839f - var_0.a.a.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.a.b)) * -1168f))), 8841u & min(u_input.a.x, countOneBits(var_0.a.a.c << (28410u % 32u))));
    global0 = ~((~min(u_input.a.zy, vec2<u32>(global0.x, var_1.a)) | vec2<u32>(~global0.x, var_0.a.a.a)) & ~(~(~u_input.c.zy)));
    return _wgslsmith_mod_u32(~(~(u_input.a.x | global0.x) << (((u_input.c.x << (var_0.a.a.a % 32u)) << (func_3() % 32u)) % 32u)), _wgslsmith_clamp_u32(0u << (u_input.a.x % 32u), 11669u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(38861u, u_input.c.x, var_1.a, 4294967295u) ^ vec4<u32>(14892u, 4294967295u, 10556u, u_input.a.x), ~vec4<u32>(0u, 42030u, 28867u, u_input.a.x)), select(vec4<u32>(1u, 0u, 0u, global0.x) << (vec4<u32>(0u, var_0.a.a.a, 4294967295u, global0.x) % vec4<u32>(32u)), ~vec4<u32>(20573u, 4294967295u, var_0.a.a.c, var_0.a.a.c), any(vec4<bool>(true, var_0.b.x, true, var_0.a.b))))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    global2 = array<Struct_1, 16>();
    let var_0 = any(select(arg_2.zx, !(!vec2<bool>(true, arg_2.x)), arg_2.xy));
    global2 = array<Struct_1, 16>();
    global0 = ~countOneBits(~_wgslsmith_mod_vec2_u32(~u_input.a.zx, vec2<u32>(4294967295u, 4119u)));
    global3 = array<Struct_2, 22>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(~(global0.x ^ 16280u) == u_input.a.x, !(!all(vec4<bool>(true, true, true, true))));
    let var_1 = vec4<u32>(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 0u, 15810u), abs(vec4<u32>(u_input.c.x, u_input.c.x, global0.x, 13870u))), func_1(-433f, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 75725u), 22u)], select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true)))), ~(func_2() | ~1u), firstTrailingBit(u_input.a.x), ~_wgslsmith_mod_u32(39770u, _wgslsmith_add_u32(u_input.a.x, 4294967295u))) | min(~(vec4<u32>(21347u, u_input.c.x, 9204u, u_input.c.x) ^ vec4<u32>(global0.x, u_input.c.x, global0.x, 40073u)) | vec4<u32>(0u, ~0u, abs(u_input.c.x), ~u_input.c.x), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0.x, u_input.c.x, 0u), vec4<u32>(global0.x, 96113u, global0.x, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, u_input.a.x, 1u, global0.x), vec4<u32>(4294967295u, u_input.a.x, 4281u, global0.x))), ~vec4<u32>(global0.x, 4294967295u, global0.x, 1u)));
    let var_2 = select(select(vec3<bool>(_wgslsmith_f_op_f32(step(270f, -469f)) >= _wgslsmith_f_op_f32(1000f + 1442f), 2147483647i != u_input.b.x, true), !select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, false)), !vec3<bool>(var_0.x | var_0.x, false, true)), select(!select(!vec3<bool>(false, false, var_0.x), select(vec3<bool>(true, true, false), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), false), vec3<bool>(true | var_0.x, var_0.x, all(var_0)), any(!(!vec3<bool>(false, var_0.x, false)))), true);
    let var_3 = _wgslsmith_mult_vec2_u32(min(~var_1.xw, var_1.xw), vec2<u32>(u_input.a.x, global0.x));
    let var_4 = u_input.b.wz;
    let var_5 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -558f), _wgslsmith_f_op_f32(select(-538f, -397f, !var_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1163f)))), _wgslsmith_f_op_f32(181f + 449f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2065f - -1419f))), _wgslsmith_f_op_f32(floor(-1633f)), _wgslsmith_f_op_f32(-156f - _wgslsmith_f_op_f32(f32(-1f) * -524f))) * vec3<f32>(1f, _wgslsmith_div_f32(-580f, 160f), _wgslsmith_f_op_f32(f32(-1f) * -416f))));
    global1 = array<Struct_1, 20>();
    var var_6 = -222f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-514f, _wgslsmith_f_op_f32(1178f - var_5.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -671f))), _wgslsmith_f_op_f32(-var_5.x), var_5.x)), firstTrailingBit(max(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, u_input.b.x))), (var_4.x & u_input.b.x) >> (u_input.a.x % 32u))), ~36654u, u_input.b.zzx);
}

