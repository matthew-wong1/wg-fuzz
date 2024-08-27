struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(25551i), Struct_1(22578i), Struct_1(21366i), Struct_1(-59770i), Struct_1(-1i), Struct_1(20893i), Struct_1(-1i), Struct_1(0i), Struct_1(1i), Struct_1(-32338i), Struct_1(-8171i), Struct_1(i32(-2147483648)), Struct_1(-39261i), Struct_1(19256i), Struct_1(1i), Struct_1(-16341i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(-22228i), Struct_1(-1i), Struct_1(3797i), Struct_1(-30257i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<bool>) -> bool {
    return any(arg_2);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    global0 = array<Struct_1, 22>();
    var var_0 = ~vec4<u32>(1u, ~4294967295u, 8207u, arg_1.c) << ((min((arg_1.b >> (vec4<u32>(21290u, 1u, u_input.a, 30614u) % vec4<u32>(32u))) << (select(arg_1.b, vec4<u32>(arg_1.a, 86364u, u_input.a, u_input.a), vec4<bool>(true, arg_3, false, arg_2.x)) % vec4<u32>(32u)), vec4<u32>(u_input.a, 0u, 4294967295u, reverseBits(18921u))) ^ ~(~arg_1.b)) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.xz)) * arg_0.xz)))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x);
    var var_2 = _wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(firstTrailingBit(~var_0.x), firstLeadingBit(_wgslsmith_clamp_u32(0u, arg_1.a, 48565u)), 1u, ~reverseBits(var_0.x)) << (abs(~firstTrailingBit(vec4<u32>(arg_1.a, 4294967295u, 30296u, 7134u))) % vec4<u32>(32u)));
    return ~_wgslsmith_add_u32(1873u, select(u_input.a, var_0.x >> (1u % 32u), true)) & ~(~75223u);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, (u_input.a << (func_3(vec3<f32>(arg_0.x, -1061f, arg_0.x), arg_2, vec4<bool>(false, false, false, false), false) % 32u)) | _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_2.b.yz, vec2<u32>(0u, 48420u)), arg_2.c)), 22u)], Struct_2(~_wgslsmith_clamp_u32(19226u, abs(u_input.a), arg_2.c), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_2.b.wyw, vec3<u32>(0u, arg_2.b.x, u_input.a)), u_input.a), max(countOneBits(arg_2.a), arg_2.a >> (19550u % 32u)), ~0u, reverseBits(~42082u)), u_input.a), vec3<bool>(true, true, true));
    global0 = array<Struct_1, 22>();
    var var_1 = select(4431i, -arg_3.x, (var_0.c.x && var_0.c.x) || any(vec2<bool>(var_0.c.x, false))) << (10268u % 32u);
    var_1 = -2147483647i;
    var var_2 = -14944i;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), select(vec2<bool>(true, all(vec4<bool>(true, true, true, false))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), func_1(u_input.a, -2147483647i, vec3<bool>(true, true, false))), vec2<bool>(select(true, false, true), u_input.a > u_input.a)), vec2<bool>(select(false, false, false), !all(vec3<bool>(false, true, true)))));
    global0 = array<Struct_1, 22>();
    var var_1 = vec2<bool>(func_1(_wgslsmith_add_u32(u_input.a, 4294967295u >> (u_input.a % 32u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(-7849i, 16705i))), vec3<bool>(!any(vec2<bool>(true, false)), func_2(vec3<f32>(209f, 1683f, 370f), vec2<i32>(-1i, 38889i), Struct_2(u_input.a, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.a), vec3<i32>(-1i, 229i, 0i)) & select(true, false, false), true)), all(vec2<bool>(true, !any(vec2<bool>(false, true)))));
    var var_2 = true;
    let var_3 = Struct_2(u_input.a, vec4<u32>(~104093u, ~u_input.a, 4294967295u, ~(~4294967295u)), u_input.a);
    var var_4 = all(vec4<bool>(true, true, true, true));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-797f, -449f, -393f) + vec3<f32>(-426f, 867f, 647f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1141f, 1000f, 185f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(689f, 312f, 1026f) + vec3<f32>(-230f, 1699f, 226f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2201f, 133f, var_5.x, var_5.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, 241f, -1050f, var_5.x))))), 25227u, abs(~vec4<u32>(u_input.a, var_3.c, select(30870u, 4294967295u, var_1.x), u_input.a)), var_5.zy, -46412i);
}

