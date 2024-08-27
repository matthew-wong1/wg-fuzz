struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<i32, 5>;

var<private> global2: u32 = 1u;

var<private> global3: vec3<bool>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = vec3<u32>(1u, arg_2, ~1u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1480f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(arg_0.x + 617f)))));
    global3 = vec3<bool>(true, any(!vec2<bool>(any(vec3<bool>(false, arg_3.c.x, true)), arg_3.c.x)), any(!(!vec4<bool>(arg_3.c.x, arg_3.c.x, false, global3.x))) || !global3.x);
    global1 = array<i32, 5>();
    var_0 = min(_wgslsmith_mult_vec3_u32(u_input.e.ywz, ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(50851u, arg_2, var_0.x), u_input.e.www, vec3<u32>(u_input.e.x, 0u, 3185u)) ^ u_input.e.xwx)), u_input.e.zzx);
    return global3.zy;
}

fn func_3() -> vec2<u32> {
    let var_0 = 783f;
    global3 = vec3<bool>(global3.x, !(global3.x | true), all(!select(select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(false, global3.x, global3.x), true), !vec3<bool>(global3.x, global3.x, global3.x), true)));
    let var_1 = vec3<f32>(-292f, var_0, _wgslsmith_f_op_f32(trunc(-135f)));
    let var_2 = (global1[_wgslsmith_index_u32(~(~1u), 5u)] << (75044u % 32u)) ^ global1[_wgslsmith_index_u32(~0u, 5u)];
    var var_3 = _wgslsmith_clamp_vec2_u32(select(~u_input.e.yy, ~select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 0u), u_input.c), ~u_input.e.yy, !global3.yz), !all(vec3<bool>(false, false, false))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.e.wz, vec2<u32>(u_input.e.x, u_input.d)) & u_input.e.x, u_input.a & u_input.a), u_input.e.yz, ~(u_input.c << (select(u_input.c, u_input.e.yx, vec2<bool>(global3.x, true)) % vec2<u32>(32u)))), firstTrailingBit(select(select(u_input.c | vec2<u32>(52421u, 71832u), vec2<u32>(u_input.e.x, 31337u) | vec2<u32>(21818u, 41634u), global3.zx), max(~u_input.c, u_input.e.yz), true)));
    return u_input.e.wy;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global2 = u_input.d;
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(func_3(), select(u_input.c, vec2<u32>(4294967295u, 2905u), false))), 5u)], max(abs(1u), 39301u), vec2<bool>(global3.x, global3.x), 4294967295u);
    let var_1 = var_0.a;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_dot_vec3_u32(u_input.e.zwz, abs(vec3<u32>(countOneBits(4294967295u), ~var_0.b, reverseBits(u_input.a)) >> (~select(vec3<u32>(u_input.a, 14905u, var_0.b), u_input.e.zyz, vec3<bool>(global3.x, true, false)) % vec3<u32>(32u))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(abs(~u_input.e.x), 5u)], u_input.a, func_1(vec2<f32>(-432f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-466f, -1000f)) - -389f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), 0u, Struct_1(~(~(-5915i)), u_input.e.x, vec2<bool>(false, false && global3.x), 1u)), firstLeadingBit(max(~18118u, ~_wgslsmith_mod_u32(27183u, 4294967295u))));
    global2 = _wgslsmith_dot_vec3_u32(u_input.e.yzz & _wgslsmith_div_vec3_u32(vec3<u32>(1u, ~17286u, min(85573u, 15965u)), vec3<u32>(var_0.d, func_2(vec2<i32>(global1[_wgslsmith_index_u32(7420u, 5u)], 31449i)), 49098u)), vec3<u32>(u_input.e.x, ~abs(max(0u, u_input.e.x)), var_0.b));
    let var_1 = var_0;
    global0 = i32(-1i) * -global1[_wgslsmith_index_u32(u_input.d, 5u)];
    let var_2 = Struct_2(Struct_1(reverseBits(var_1.a), var_0.d, vec2<bool>(select(func_1(vec2<f32>(852f, 1074f), vec2<f32>(-1607f, -296f), var_0.b, var_1).x, global3.x, all(vec3<bool>(var_1.c.x, global3.x, false))), true), 0u), var_0.c.x, vec4<u32>(_wgslsmith_dot_vec4_u32(select(u_input.e, u_input.e & u_input.e, var_0.c.x), u_input.e >> (~vec4<u32>(var_0.d, 0u, 32279u, 19724u) % vec4<u32>(32u))), 1u, abs(_wgslsmith_mod_u32(1u, ~0u)), 40266u));
    global0 = -16593i;
    var var_3 = var_0;
    global2 = select(func_3().x, 18850u, u_input.b < _wgslsmith_dot_vec3_u32(var_2.c.xzz, u_input.e.wzz));
    global1 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-421f, -2330f), i32(-1i) * -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -590f)));
}

