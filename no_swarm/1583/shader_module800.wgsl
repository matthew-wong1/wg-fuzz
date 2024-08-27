struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 6>;

var<private> global1: Struct_4 = Struct_4(Struct_1(true, vec3<bool>(false, true, true)), vec2<i32>(1i, i32(-2147483648)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    global1 = Struct_4(arg_0, global1.b);
    var var_0 = Struct_3(_wgslsmith_clamp_vec2_u32(arg_1.a, arg_1.b.b, vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, arg_1.b.b.x, u_input.a)), ~vec4<u32>(55011u, 0u, u_input.a, 17738u)), arg_1.b.b.x << (select(47020u, u_input.a, arg_0.b.x) % 32u))), Struct_2(arg_0, abs(vec2<u32>(firstLeadingBit(arg_1.a.x), ~1u)), !vec3<bool>(true, !arg_1.b.a.b.x, any(vec3<bool>(arg_0.b.x, true, true))), global1.a));
    var var_1 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(min(4294967295u, ~arg_1.b.b.x), 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 44428u, u_input.a), vec3<u32>(4294967295u, 1u, var_0.a.x)), _wgslsmith_clamp_u32(86646u, 1u, var_0.b.b.x)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(5011u, arg_1.a.x, 58614u, 39899u)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1716u, 15154u, arg_1.b.b.x, 0u), vec4<u32>(var_0.a.x, 4294967295u, arg_1.b.b.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(60010u, 4294967295u, arg_1.a.x, u_input.a), vec4<u32>(var_0.a.x, u_input.a, arg_1.a.x, u_input.a))))), ~(~vec4<u32>(~var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(arg_1.a.x, var_0.b.b.x, arg_1.a.x)), ~4294967295u, firstLeadingBit(u_input.a))));
    var var_2 = (10467i ^ global1.b.x) ^ 0i;
    let var_3 = Struct_2(Struct_1(!all(!vec4<bool>(arg_1.b.a.b.x, true, true, arg_0.b.x)), !select(select(vec3<bool>(false, arg_0.b.x, global1.a.a), vec3<bool>(false, global1.a.a, global1.a.b.x), vec3<bool>(var_0.b.d.a, var_0.b.c.x, true)), vec3<bool>(arg_0.a, false, true), global1.b.x == 1i)), arg_1.b.b ^ ~max(var_0.a, vec2<u32>(arg_1.b.b.x, arg_1.a.x) << (var_0.b.b % vec2<u32>(32u))), select(select(vec3<bool>(var_0.b.c.x, any(vec3<bool>(true, var_0.b.c.x, arg_1.b.a.a)), true), vec3<bool>(global1.a.a && arg_0.b.x, global1.a.a, true), global1.a.a), vec3<bool>(false & (global1.b.x == global1.b.x), any(arg_0.b.zz), any(var_0.b.a.b)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, arg_1.b.a.a, true), global1.a.b), select(vec3<bool>(global1.a.b.x, true, false), vec3<bool>(false, global1.a.b.x, false), var_0.b.a.b), !arg_1.b.d.b.x), var_0.b.a.b, vec3<bool>(false == global1.a.b.x, var_0.b.a.a, arg_1.b.d.a))), var_0.b.d);
    return all(!var_0.b.c);
}

fn func_2() -> Struct_2 {
    global1 = Struct_4(Struct_1(global1.a.b.x, !global1.a.b), ~global1.b);
    global0 = array<Struct_5, 6>();
    let var_0 = Struct_3(~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 4294967295u))) >> (~vec2<u32>(_wgslsmith_add_u32(u_input.a, 76455u), u_input.a) % vec2<u32>(32u)), Struct_2(global1.a, select(vec2<u32>(83832u, u_input.a << (u_input.a % 32u)), vec2<u32>(0u, _wgslsmith_sub_u32(u_input.a, u_input.a)), vec2<bool>(global1.a.b.x, true)), !(!select(global1.a.b, vec3<bool>(true, global1.a.a, global1.a.a), global1.a.b)), Struct_1(false, global1.a.b)));
    let var_1 = func_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_f32(1123f, 902f)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-146f, -1137f))), !vec3<bool>(!global1.a.b.x, false, global1.a.a)), var_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(367f)))), 518f, -511f, 859f) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1501f * 816f), -932f))), _wgslsmith_f_op_f32(2295f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1645f) + _wgslsmith_f_op_f32(f32(-1f) * -1573f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-410f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f))));
    return Struct_2(var_0.b.d, ~vec2<u32>(abs(72253u), ~firstTrailingBit(var_0.b.b.x)), vec3<bool>(true, all(global1.a.b), true), Struct_1(func_3(Struct_1(var_2.x < -1053f, vec3<bool>(true, var_1, true)), Struct_3(vec2<u32>(1u, 4294967295u), var_0.b)), !(!vec3<bool>(false, var_0.b.a.a, var_0.b.c.x))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4) -> Struct_3 {
    return Struct_3(vec2<u32>(~(~min(0u, u_input.a)), reverseBits(func_2().b.x)), func_2());
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_4 {
    let var_0 = -141f;
    let var_1 = !vec3<bool>(select(true, arg_0.b.a.b.x, true), all(!func_4(arg_0.b, arg_1.b.x, Struct_4(arg_1, global1.b)).b.c), -1i == (global1.b.x & global1.b.x));
    var var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~(~1u), ~(~u_input.a), u_input.a & 0u, ~_wgslsmith_dot_vec2_u32(arg_0.b.b, vec2<u32>(1u, arg_0.b.b.x))), ~select(vec4<u32>(arg_0.b.b.x, 4294967295u, 50624u, 0u), max(vec4<u32>(u_input.a, arg_0.b.b.x, 4294967295u, arg_0.b.b.x), vec4<u32>(0u, arg_0.a.x, arg_0.a.x, 4294967295u)), !vec4<bool>(global1.a.a, true, arg_1.a, true)));
    global0 = array<Struct_5, 6>();
    let var_3 = func_4(func_2(), func_4(Struct_2(Struct_1(false, vec3<bool>(var_1.x, var_1.x, global1.a.a)), vec2<u32>(84919u, 97465u), vec3<bool>(global1.a.a, arg_0.b.d.a, var_1.x), arg_1), true, Struct_4(func_4(arg_0.b, var_1.x, Struct_4(global1.a, vec2<i32>(1i, -8356i))).b.a, abs(global1.b))).a.x < firstLeadingBit(~arg_0.b.b.x ^ arg_0.a.x), Struct_4(Struct_1(true, vec3<bool>(false, -492f > var_0, u_input.a != u_input.a)), min(vec2<i32>(-2147483647i, global1.b.x), vec2<i32>(-1i, 33749i) >> ((arg_0.a << (vec2<u32>(var_2.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    return Struct_4(Struct_1(any(!(!vec4<bool>(true, false, var_1.x, true))), arg_1.b), global1.b);
}

fn func_1(arg_0: Struct_5) -> f32 {
    global0 = array<Struct_5, 6>();
    global0 = array<Struct_5, 6>();
    global0 = array<Struct_5, 6>();
    global1 = func_5(func_4(func_2(), false, Struct_4(Struct_1(global1.a.b.x, global1.a.b), -vec2<i32>(global1.b.x, global1.b.x))), Struct_1(global1.a.a, vec3<bool>(any(global1.a.b), global1.b.x == max(1i, -10442i), !global1.a.b.x)));
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1944f, -797f, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.a + arg_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, 1095f, arg_0.a) * vec4<f32>(-1459f, 463f, arg_0.a, arg_0.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-258f, 264f, -1652f, arg_0.a) - vec4<f32>(-1175f, arg_0.a, arg_0.a, -297f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(383f, 1501f, 1000f, -141f) - vec4<f32>(arg_0.a, -974f, arg_0.a, -898f))))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(508f, -1080f, arg_0.a, arg_0.a)))))), global1.a.b.x));
    return _wgslsmith_f_op_f32(abs(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), 6u)]))), ~vec3<u32>(48516u, u_input.a, func_4(Struct_2(global1.a, vec2<u32>(u_input.a, u_input.a), vec3<bool>(global1.a.b.x, global1.a.a, global1.a.b.x), global1.a), true, func_5(Struct_3(vec2<u32>(u_input.a, 1u), Struct_2(global1.a, vec2<u32>(46166u, 0u), vec3<bool>(false, true, global1.a.b.x), global1.a)), Struct_1(false, global1.a.b))).b.b.x));
    let var_1 = 1i;
    var var_2 = func_2().a.b.zz;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-126f, var_0.a, 435f, var_0.a) + vec4<f32>(var_0.a, -1416f, var_0.a, -1000f)) - vec4<f32>(-447f, var_0.a, var_0.a, var_0.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a, 852f, var_0.a, -142f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a))))))));
    let var_4 = 775f;
    var var_5 = 0u;
    var var_6 = func_4(func_4(func_2(), global1.a.b.x, Struct_4(global1.a, ~(~global1.b))).b, 4294967295u > u_input.a, Struct_4(func_2().d, ~global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-705f)) * -608f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, var_0.a))))));
}

