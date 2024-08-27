struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec4<f32>(-2600f, 260f, 1334f, -2272f), 1u, false, -936f));

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<u32>(37575u, 29330u, 4294967295u), Struct_1(-282f, 143f, 6882u), -67488i), Struct_2(vec3<u32>(25363u, 0u, 4294967295u), Struct_1(-981f, 2669f, 82798u), -1i), Struct_2(vec3<u32>(16015u, 4294967295u, 1u), Struct_1(565f, 261f, 4783u), 1i), Struct_2(vec3<u32>(82471u, 1u, 4294967295u), Struct_1(283f, 1876f, 12380u), 2147483647i), Struct_2(vec3<u32>(67602u, 4655u, 40219u), Struct_1(713f, 520f, 4294967295u), 89155i), Struct_2(vec3<u32>(1u, 4294967295u, 20966u), Struct_1(-991f, 422f, 7678u), i32(-2147483648)), Struct_2(vec3<u32>(1u, 72177u, 47119u), Struct_1(1615f, -1000f, 4294967295u), 38051i), Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(337f, 711f, 27220u), -1i), Struct_2(vec3<u32>(26749u, 4294967295u, 5782u), Struct_1(-2377f, -660f, 2175u), 1i), Struct_2(vec3<u32>(28925u, 4294967295u, 126385u), Struct_1(2243f, -1000f, 0u), 10707i), Struct_2(vec3<u32>(56849u, 61493u, 6353u), Struct_1(-1000f, 124f, 50314u), -17676i), Struct_2(vec3<u32>(0u, 21281u, 64841u), Struct_1(1000f, 449f, 1u), -6028i), Struct_2(vec3<u32>(0u, 27550u, 18886u), Struct_1(919f, 948f, 1u), i32(-2147483648)), Struct_2(vec3<u32>(40874u, 0u, 0u), Struct_1(435f, -579f, 63609u), i32(-2147483648)), Struct_2(vec3<u32>(4294967295u, 1659u, 71630u), Struct_1(-121f, 1000f, 12970u), -3294i), Struct_2(vec3<u32>(5975u, 26631u, 8781u), Struct_1(775f, 1000f, 4294967295u), 3032i), Struct_2(vec3<u32>(4294967295u, 1u, 1u), Struct_1(-1051f, 178f, 4294967295u), -39129i), Struct_2(vec3<u32>(0u, 37431u, 1u), Struct_1(932f, 1000f, 4294967295u), 9431i), Struct_2(vec3<u32>(10298u, 45232u, 9734u), Struct_1(1000f, -785f, 1u), 877i), Struct_2(vec3<u32>(8934u, 34401u, 55946u), Struct_1(-1088f, 431f, 37548u), 0i));

var<private> global3: Struct_3;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32) -> i32 {
    global2 = array<Struct_2, 20>();
    var var_0 = global1.wyz;
    global0 = array<Struct_3, 1>();
    var var_1 = -arg_1;
    global3 = global0[_wgslsmith_index_u32(18028u, 1u)];
    return 9969i;
}

fn func_3() -> vec2<u32> {
    let var_0 = global3.c;
    let var_1 = global3.a.wz;
    global0 = array<Struct_3, 1>();
    var var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1254f - -381f) + var_1.x)))), global3.a.xw));
    let var_3 = ~(64416u ^ _wgslsmith_div_u32(~14274u, u_input.a.x));
    return vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(50563u, _wgslsmith_add_u32(0u, 3457u), 17316u), ~vec3<u32>(var_3, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), var_3)), 4294967295u);
}

fn func_1() -> u32 {
    global0 = array<Struct_3, 1>();
    let var_0 = false;
    global3 = Struct_3(_wgslsmith_f_op_vec4_f32(-global3.a), countOneBits(abs(_wgslsmith_dot_vec3_u32(~u_input.a.xzz, u_input.a.xzz))), (_wgslsmith_clamp_i32(min(-2147483647i, -30406i), ~8288i, func_2(u_input.b.x, -1i, -2147483647i)) >> (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(5992u, 60029u)), func_3()) % 32u)) == 0i, -802f);
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-global3.a);
    let var_1 = Struct_1(global3.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(-1630f, 551f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -149f))))), _wgslsmith_clamp_u32(abs(func_1()), func_1(), ~u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_div_f32(global3.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1552f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2210f * 627f), _wgslsmith_f_op_f32(-982f * var_0.x), global3.c))))));
}

