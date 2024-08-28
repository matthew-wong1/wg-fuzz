struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(1002f, 1085f), vec2<f32>(-223f, 722f));

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: vec4<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> i32 {
    let var_0 = arg_0.d.d.ywy;
    global1 = !arg_0.b.b;
    global0 = array<vec2<f32>, 2>();
    let var_1 = -411f;
    global2 = select(select(select(!vec4<bool>(true, false, arg_0.d.b.x, true), vec4<bool>(true || global1.x, true, arg_0.d.b.x, arg_0.b.b.x), any(select(vec3<bool>(true, true, true), vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, arg_0.c.x, arg_2)))), select(vec4<bool>(global2.x, global2.x, arg_2, arg_2 || global2.x), !vec4<bool>(global1.x, global2.x, arg_0.b.b.x, true), false), false), select(!(!vec4<bool>(true, arg_2, true, arg_0.b.b.x)), vec4<bool>(true, false, false, global1.x), select(vec4<bool>(arg_0.a.x < 2147483647i, !arg_0.d.b.x, true, true), vec4<bool>(false, !global1.x, select(true, true, global1.x), arg_0.d.b.x), all(global2.xxy))), vec4<bool>(global1.x, !any(vec4<bool>(false, true, arg_0.d.b.x, true)), all(select(vec2<bool>(true, false), select(global1.zx, global2.wx, global2.x), vec2<bool>(false, arg_0.d.b.x))), ~_wgslsmith_mod_u32(58041u, arg_0.b.c.x) < arg_0.d.d.x));
    return reverseBits(u_input.a);
}

fn func_2(arg_0: u32) -> vec4<bool> {
    global2 = vec4<bool>(global1.x, any(vec2<bool>(any(vec2<bool>(global2.x, false)) & global2.x, global2.x != true)), true, all(!vec4<bool>(true, any(vec3<bool>(global1.x, true, global2.x)), all(vec4<bool>(global2.x, global2.x, false, global2.x)), true)));
    let var_0 = any(vec2<bool>(true, true));
    let var_1 = !global2.zzx;
    let var_2 = u_input.b.x;
    global1 = !global2.zzx;
    return !vec4<bool>(select(true, true, (i32(-1i) * -1i) > func_3(Struct_2(u_input.b.xw, Struct_1(vec2<u32>(arg_0, arg_0), var_1, vec3<u32>(arg_0, arg_0, arg_0), vec4<u32>(arg_0, arg_0, 4741u, 1895u)), vec3<bool>(global1.x, var_0, true), Struct_1(vec2<u32>(arg_0, arg_0), vec3<bool>(global1.x, var_1.x, var_0), vec3<u32>(arg_0, 48084u, arg_0), vec4<u32>(arg_0, 45611u, 4294967295u, arg_0))), -993f, global2.x)), var_1.x, -2147483647i <= _wgslsmith_dot_vec4_i32(-u_input.b, select(u_input.b, vec4<i32>(var_2, var_2, -18476i, u_input.c.x), vec4<bool>(true, global1.x, global1.x, var_0))), all(global1.zx));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> u32 {
    global2 = func_2(arg_2.d.d.x);
    global1 = vec3<bool>(any(select(!(!arg_2.b.b), global2.xyx, false)), any(!(!vec3<bool>(arg_2.d.b.x, arg_2.b.b.x, true))), true);
    return countOneBits((arg_2.b.a.x & ~arg_1.d) ^ arg_2.b.a.x) ^ 1u;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<f32> {
    var var_0 = max(vec3<i32>(-u_input.c.x, u_input.a, u_input.c.x), u_input.b.zxz);
    let var_1 = _wgslsmith_f_op_f32(sign(-736f));
    var var_2 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(select(~arg_0.x, ~arg_0.x, global2.x), _wgslsmith_dot_vec2_u32(arg_0, ~arg_1.a), countOneBits(firstLeadingBit(arg_1.a.x)), 1u), arg_1.d));
    var var_3 = true;
    var var_4 = Struct_2(var_0.xx, arg_1, vec3<bool>(global1.x, !(arg_2.x || true), true || global1.x), arg_1);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, -1000f, var_1), vec3<f32>(var_1, 570f, var_1), global2.xww)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) - vec3<f32>(var_1, var_1, var_1)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(673f, var_1, var_1))), func_2(68635u).wyz)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!(!(!(!vec4<bool>(false, global1.x, false, true)))));
    var var_1 = vec2<i32>((u_input.b.x & 1i) ^ (i32(-1i) * -2147483647i), firstLeadingBit(abs(u_input.b.x)));
    var var_2 = global2.xyy;
    let var_3 = _wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(1u | func_1(Struct_3(vec4<i32>(-2147483647i, u_input.c.x, -60557i, var_1.x), u_input.b.x), Struct_4(u_input.a, var_2.x, vec2<f32>(-772f, 439f), 11055u, -189f), Struct_2(vec2<i32>(var_1.x, u_input.a), Struct_1(vec2<u32>(0u, 10972u), global2.zwy, vec3<u32>(4294967295u, 1u, 41023u), vec4<u32>(0u, 4294967295u, 4205u, 24467u)), global2.wyx, Struct_1(vec2<u32>(1u, 4294967295u), vec3<bool>(global2.x, true, true), vec3<u32>(31100u, 61614u, 0u), vec4<u32>(10566u, 0u, 1u, 1u)))), 1u, ~_wgslsmith_add_u32(17861u, 1u))), Struct_1(vec2<u32>(1u, 7976u ^ _wgslsmith_clamp_u32(1u, 15853u, 40689u)), select(func_2(~0u).wwx, !func_2(19989u).wwz, var_2.x), vec3<u32>(~(23178u << (1u % 32u)), reverseBits(99903u) >> (_wgslsmith_mod_u32(0u, 1u) % 32u), ~1u), _wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(58582u, 33008u, 74195u, 0u)), vec4<u32>(firstTrailingBit(0u), 1u, 0u, _wgslsmith_clamp_u32(40319u, 1u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(25125u, 41268u, 1u, 1u)))), global1.zx));
    var_2 = select(!(!vec3<bool>(true, false, all(global2.wxz))), !select(global2.wzw, vec3<bool>(false, var_2.x, true), global1.x), !(!func_2(~1824u).x));
    var_2 = vec3<bool>(global2.x, true, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec3_u32(firstLeadingBit(abs(vec3<u32>(0u, 69564u, 60291u))), ~vec3<u32>(1u, 1u, 0u)), ~vec3<u32>(12790u, 10335u >> (0u % 32u), 110695u), !(!func_2(1u).x)), _wgslsmith_mod_u32(38955u, _wgslsmith_div_u32(~15442u, 79443u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 38493u), vec2<u32>(1u, 1u)), ~u_input.b, ~(~14909u ^ _wgslsmith_add_u32(_wgslsmith_div_u32(0u, 111178u), _wgslsmith_clamp_u32(20077u, 0u, 0u))));
}

