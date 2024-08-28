struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 18>;

var<private> global2: i32 = 1i;

var<private> global3: Struct_1 = Struct_1(0u, 2147483647i, vec3<f32>(-784f, 1000f, 218f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.a.x ^ ~_wgslsmith_clamp_u32(reverseBits(26256u) ^ global3.a, firstLeadingBit(_wgslsmith_add_u32(1u, u_input.a.x)), global3.a);
    global3 = Struct_1(_wgslsmith_dot_vec3_u32(~(_wgslsmith_clamp_vec3_u32(u_input.c.wxw, u_input.c.wxz, u_input.c.xyw) | (u_input.c.xzw >> (vec3<u32>(global0.a, global3.a, 14624u) % vec3<u32>(32u)))), u_input.c.zyw), -19127i, vec3<f32>(1722f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(947f))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return global1[_wgslsmith_index_u32(4294967295u, 18u)];
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    global0 = arg_0;
    global1 = array<Struct_1, 18>();
    let var_1 = vec3<u32>(arg_0.a, ~(~(~_wgslsmith_dot_vec2_u32(u_input.c.zz, u_input.c.yw))), _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, ~(~u_input.c))));
    let var_2 = ~(~var_1.x) ^ arg_0.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1410f)), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-131f - -1265f) * _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_dot_vec3_u32(u_input.c.ywy, vec3<u32>(global0.a, 20244u, global0.a)), global0.b & 29870i, global0.c), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1078f, 132f) * vec2<f32>(999f, global3.c.x)))))));
    var var_2 = 58350u;
    var var_3 = global0.b;
    global1 = array<Struct_1, 18>();
    var var_4 = ~vec2<u32>(u_input.c.x << ((select(u_input.c.x, u_input.a.x, true) & global3.a) % 32u), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-((global0.b ^ 63418i) ^ _wgslsmith_sub_i32(u_input.d, countOneBits(u_input.d))), _wgslsmith_f_op_f32(abs(global3.c.x)), vec4<u32>(global0.a, ~countOneBits(global0.a), 77149u, ~(~(26469u << (u_input.c.x % 32u)))));
}

