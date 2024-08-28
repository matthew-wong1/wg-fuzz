struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(-45768i), Struct_2(2147483647i), Struct_2(-1i), Struct_2(-1i), Struct_2(0i), Struct_2(-6960i), Struct_2(40129i), Struct_2(-31692i), Struct_2(24500i), Struct_2(-33912i), Struct_2(20716i), Struct_2(-11643i), Struct_2(9822i), Struct_2(1i), Struct_2(1092i), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(0i), Struct_2(1i), Struct_2(2147483647i), Struct_2(5449i));

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(Struct_3(-35506i)), Struct_4(Struct_3(-21656i)), Struct_4(Struct_3(40441i)), Struct_4(Struct_3(-28226i)), Struct_4(Struct_3(-5444i)), Struct_4(Struct_3(0i)), Struct_4(Struct_3(23417i)), Struct_4(Struct_3(3677i)), Struct_4(Struct_3(29283i)), Struct_4(Struct_3(22784i)), Struct_4(Struct_3(13684i)), Struct_4(Struct_3(-3865i)), Struct_4(Struct_3(0i)));

var<private> global4: Struct_4;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_2(0i);
    global3 = array<Struct_4, 13>();
    global4 = Struct_4(global4.a);
    let var_1 = _wgslsmith_sub_u32(u_input.d.x, (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(36103u, u_input.d.x, 1u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 73427u)), vec4<u32>(u_input.d.x, 0u, 1u, 4294967295u)) | reverseBits(30393u << (u_input.d.x % 32u))) | 4294967295u);
    var var_2 = u_input.d.x >> (~(0u << ((var_1 >> (u_input.d.x % 32u)) % 32u)) % 32u);
    return 0u;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_1 {
    global4 = Struct_4(Struct_3(_wgslsmith_add_i32(_wgslsmith_mult_i32(-38548i, global4.a.a) & _wgslsmith_sub_i32(global4.a.a, global4.a.a), global2.x)));
    return Struct_1(global4.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-114f + 769f) + 1422f), _wgslsmith_f_op_f32(f32(-1f) * -441f))), ~37203u);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(1u, reverseBits(~u_input.d.x), ~(~4294967295u))), ~(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)), ~vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u)) | 0u), u_input.d.x, 1u);
    let var_1 = global3[_wgslsmith_index_u32(1u, 13u)];
    var var_2 = vec2<i32>(~11483i, 1i) | (vec2<i32>(0i, var_1.a.a) & ~(-(u_input.b.xz ^ u_input.a.yx)));
    global1 = array<Struct_2, 21>();
    let var_3 = Struct_3(~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) | ~0i);
    return func_3(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), true), vec4<u32>(0u, _wgslsmith_mod_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(32837u, var_0.x, u_input.d.x, 86414u) | vec4<u32>(u_input.d.x, 74692u, var_0.x, u_input.d.x), _wgslsmith_sub_vec4_u32(var_0, vec4<u32>(6536u, u_input.d.x, u_input.d.x, 4294967295u)))), (4294967295u & var_0.x) >> (func_2(~global4.a.a) % 32u), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(i32(-1i) * -3385i);
    global2 = u_input.b ^ firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(~0i, 1i), 1i, -1i & _wgslsmith_clamp_i32(global4.a.a, -67000i, u_input.a.x), _wgslsmith_mult_i32(var_0.a, _wgslsmith_mult_i32(u_input.c.x, 56438i))));
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_f32(180f * 793f);
    global3 = array<Struct_4, 13>();
    var var_3 = -abs(var_1);
    var var_4 = global1[_wgslsmith_index_u32(func_1(global2.x).c, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(global2.ww, u_input.a, 0i ^ _wgslsmith_dot_vec3_i32(max(var_1.zwz, vec3<i32>(var_3.x, global2.x, -2147483647i) & global2.zxz), vec3<i32>(-2147483647i, select(-42565i, -2147483647i, false), countOneBits(-62700i))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), 1f));
}

