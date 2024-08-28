struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(49695u, 19873u), vec2<u32>(36607u, 43021u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 71178u), vec2<u32>(22679u, 40954u), vec2<u32>(64859u, 8189u), vec2<u32>(67043u, 26992u), vec2<u32>(0u, 112043u), vec2<u32>(16092u, 0u), vec2<u32>(1u, 90313u), vec2<u32>(4294967295u, 93u), vec2<u32>(37479u, 62255u), vec2<u32>(58647u, 4303u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 44935u), vec2<u32>(0u, 20903u), vec2<u32>(23951u, 1u), vec2<u32>(36633u, 4294967295u), vec2<u32>(48676u, 1u), vec2<u32>(0u, 46589u), vec2<u32>(34765u, 12806u), vec2<u32>(85704u, 1u), vec2<u32>(49130u, 22021u));

var<private> global2: array<f32, 18>;

var<private> global3: array<Struct_1, 22>;

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    global3 = array<Struct_1, 22>();
    global3 = array<Struct_1, 22>();
    var var_0 = arg_1;
    global2 = array<f32, 18>();
    var var_1 = select(19320u, u_input.b.x, all(global0[_wgslsmith_index_u32(arg_0, 9u)])) & 2629u;
    return _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(~select(u_input.b.x, u_input.b.x, false), _wgslsmith_sub_u32(arg_0, u_input.b.x) >> (60729u % 32u), reverseBits(~65471u)), ~u_input.b.x);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> i32 {
    global4 = array<Struct_1, 18>();
    global1 = array<vec2<u32>, 29>();
    let var_0 = 33234i;
    global0 = array<vec2<bool>, 9>();
    var var_1 = u_input.a.zww;
    return -361i;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = ~(~(u_input.b.x >> (((u_input.b.x | u_input.b.x) | func_2(u_input.b.x, vec3<f32>(-842f, 1000f, 975f))) % 32u)));
    global2 = array<f32, 18>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, ~u_input.b.x), 18u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-668f)) * global2[_wgslsmith_index_u32(select(0u, 4294967295u, true), 18u)]))), ~(select(func_3(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], u_input.a.x, arg_1.c), false, Struct_3(vec3<bool>(false, false, false), global2[_wgslsmith_index_u32(36572u, 18u)], 435f)), 23910i, true) ^ _wgslsmith_add_i32(firstLeadingBit(arg_0), 1i)), vec3<f32>(_wgslsmith_div_f32(-2101f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-865f + arg_1.a)))), -178f, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(var_0), u_input.b.x), 18u)]));
    var var_2 = vec2<i32>(-1i, firstTrailingBit(u_input.a.x));
    let var_3 = Struct_3(select(!select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), true), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, all(vec4<bool>(false, true, false, true)), select(false, false, true)), true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), -875f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1.c.x)))));
    return StorageBuffer(var_1.c.x, vec2<i32>(~max(arg_0, 0i) & arg_0, u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.c.x, -1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(0i, 27504i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-43978i, 46060i, -32074i, 54887i), u_input.a, u_input.a), u_input.a & vec4<i32>(-7650i, -6088i, -2147483647i, 1i)) << ((0u ^ ~u_input.b.x) % 32u)) & (-1i ^ _wgslsmith_dot_vec2_i32(u_input.a.wz, select(vec2<i32>(u_input.a.x, u_input.a.x) | vec2<i32>(4258i, -2147483647i), vec2<i32>(0i, u_input.a.x) >> (u_input.b.yy % vec2<u32>(32u)), true)));
    global2 = array<f32, 18>();
    global4 = array<Struct_1, 18>();
    let var_1 = Struct_1(u_input.b, u_input.b.x, firstTrailingBit(abs(_wgslsmith_mod_u32(8448u >> (u_input.b.x % 32u), 59336u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(~u_input.b.x, 18u)]))), global2[_wgslsmith_index_u32(4294967295u << (u_input.b.x % 32u), 18u)], 736f));
    global4 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = func_1(2147483647i, Struct_2(_wgslsmith_f_op_f32(-599f * 662f), 2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.d.x - -1695f), var_1.d.x, _wgslsmith_f_op_f32(var_1.d.x - 304f)))));
}

