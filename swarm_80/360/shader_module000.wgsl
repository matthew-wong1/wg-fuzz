struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> bool {
    return false;
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(-703f));
    var var_1 = any(!vec4<bool>(all(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)], true)), true, true, any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 32u)]))));
    global0 = array<bool, 32>();
    var_1 = false;
    var_1 = false || global0[_wgslsmith_index_u32(~0u, 32u)];
    return global0[_wgslsmith_index_u32(58131u, 32u)];
}

fn func_1() -> Struct_1 {
    let var_0 = abs(u_input.a ^ (~u_input.a | _wgslsmith_sub_u32(73201u | u_input.d.x, countOneBits(2736u))));
    let var_1 = vec4<bool>(global0[_wgslsmith_index_u32(var_0, 32u)], false, func_2() & !func_3(u_input.c), !(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), u_input.d), max(1u, u_input.d.x)) <= 1u));
    global0 = array<bool, 32>();
    var var_2 = Struct_3(Struct_1(select(u_input.e.xxx, u_input.e.yxz ^ firstLeadingBit(vec3<u32>(u_input.a, 0u, 42766u)), select(vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(var_0, 32u)]), all(var_1.wyw))), vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec2_u32(u_input.d, _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(var_0, var_0)), u_input.d)), true, !select(vec4<bool>(false, false, var_1.x, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], true, global0[_wgslsmith_index_u32(u_input.e.x, 32u)], false), all(vec3<bool>(var_1.x, var_1.x, false)))), select(vec4<bool>(false, !(!var_1.x), -518f == _wgslsmith_f_op_f32(select(-1753f, -581f, false)), true), var_1, false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-764f, -449f) - vec2<f32>(1385f, -604f)))), vec2<f32>(1f, 1f)), u_input.d.x);
    return Struct_1(_wgslsmith_sub_vec3_u32(~u_input.e.zzz, abs(var_2.a.a)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -826f), 1000f, 1f), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x | var_2.d, ~var_2.a.a.x), vec2<u32>(countOneBits(var_2.d), ~1u), vec2<u32>(min(20663u, var_2.a.a.x), var_2.d)) & _wgslsmith_mod_vec2_u32(~(vec2<u32>(u_input.a, 0u) << (u_input.d % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.d, var_2.d) | vec2<u32>(var_2.d, var_0), var_2.a.c)), true, var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(~u_input.d.x, 23857u, countOneBits(15340u)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 9595u, 78334u), u_input.e.wzw), var_0.a << (u_input.e.zzy % vec3<u32>(32u)))), ~(~reverseBits(var_0.a)), vec3<u32>(var_0.c.x, func_1().c.x, ~1u ^ var_0.c.x)));
    var_1 = var_0.a;
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-814f * var_0.b.x)))) + var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -902f), _wgslsmith_f_op_f32(round(-942f)));
    var var_3 = u_input.d;
    let var_4 = Struct_3(Struct_1(~(u_input.e.zzx << (vec3<u32>(1u, u_input.e.x, var_0.c.x) % vec3<u32>(32u))), var_0.b, countOneBits(vec2<u32>(2973u, var_3.x)) << (~vec2<u32>(51146u, 1u) % vec2<u32>(32u)), true, vec4<bool>(!var_0.d, !select(false, false, false), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.a.x, var_0.c.x >> (42920u % 32u)), 32u)], !var_0.d | global0[_wgslsmith_index_u32(countOneBits(var_1.x), 32u)])), var_0.e, vec2<f32>(_wgslsmith_f_op_f32(sign(111f)), var_2.x), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(u_input.d.x)), firstTrailingBit(u_input.c), var_1.x, abs(reverseBits(-(~u_input.c))), 2147483647i);
}

