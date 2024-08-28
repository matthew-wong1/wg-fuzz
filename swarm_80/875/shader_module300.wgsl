struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global1: vec3<i32> = vec3<i32>(16388i, 2147483647i, 0i);

var<private> global2: vec4<i32>;

var<private> global3: array<vec4<i32>, 15>;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(51921i, 5030i, 66237i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    return -1000f;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> vec3<u32> {
    return vec3<u32>(u_input.e, ~15511u | ~(u_input.c << (4294967295u % 32u)), max(~arg_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_0.xyx, vec3<u32>(arg_0.x, u_input.e, arg_0.x)), 4294967295u))) & vec3<u32>(~(~u_input.e) & (arg_0.x << (u_input.c % 32u)), 71061u, 1u);
}

fn func_2(arg_0: Struct_3) -> u32 {
    global4 = Struct_1(select(~vec3<i32>(-1i, arg_0.a, i32(-1i) * -1i), global2.ywz, !(u_input.a == countOneBits(-42077i))));
    let var_0 = _wgslsmith_mod_vec3_u32(select(_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(u_input.c, 0u, 26077u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(7266u, 4294967295u, 58735u), vec3<u32>(arg_0.b.a, arg_0.b.a, 32903u) & vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(arg_0.b.a, arg_0.b.a, 25027u))), func_4(~(~vec4<u32>(u_input.e, arg_0.b.a, u_input.e, 74425u)), arg_0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(arg_0.a, global4.a.x, 1i)))) - _wgslsmith_f_op_f32(abs(812f)))), select(vec3<bool>(true, true, true), select(select(global0[_wgslsmith_index_u32(u_input.c, 10u)], vec3<bool>(true, true, false), false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(global0[_wgslsmith_index_u32(0u, 10u)], vec3<bool>(false, false, false), true)))), vec3<u32>(~(~(1u | arg_0.b.a)), _wgslsmith_div_u32(arg_0.b.a, arg_0.b.a), 0u));
    var var_1 = vec4<i32>(1i, 0i, firstLeadingBit(~global1.x), 10788i ^ _wgslsmith_div_i32(-u_input.a, abs(global4.a.x)));
    global3 = array<vec4<i32>, 15>();
    let var_2 = Struct_2(arg_0.b.a, vec2<f32>(arg_0.b.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1309f, _wgslsmith_f_op_f32(f32(-1f) * -145f))))));
    return max(abs(~(~u_input.e)), ~_wgslsmith_div_u32(1u, var_2.a));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool) -> u32 {
    let var_0 = select(~countOneBits(~vec4<u32>(0u, arg_0.a, 0u, arg_0.a)), vec4<u32>(~(u_input.c >> (arg_0.a % 32u)), u_input.e, 121888u, ~abs(64128u)), arg_1.x) | vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(48902u, firstTrailingBit(u_input.e)), ~firstTrailingBit(vec2<u32>(4294967295u, arg_0.a))), 42700u, select(~_wgslsmith_mod_u32(7659u, arg_0.a), 19399u, arg_2), _wgslsmith_div_u32(func_2(Struct_3(24992i, arg_0)), ~arg_0.a));
    var var_1 = true;
    var var_2 = Struct_1(global2.yxz);
    global3 = array<vec4<i32>, 15>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b))));
    return max(_wgslsmith_add_u32(~var_0.x, _wgslsmith_mult_u32(~(u_input.e << (u_input.c % 32u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.a, var_0.x), u_input.c << (4294967295u % 32u)))), 4365u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(~(~vec4<u32>(u_input.c, 16854u, u_input.e, u_input.e)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(44870u, u_input.e, 1u, u_input.c) ^ vec4<u32>(u_input.c, u_input.c, 77656u, u_input.e), max(vec4<u32>(u_input.e, u_input.e, u_input.c, 4294967295u), vec4<u32>(u_input.c, 76989u, 4294967295u, u_input.e))), vec4<u32>(u_input.c, abs(func_1(Struct_2(7353u, vec2<f32>(-796f, -684f)), vec3<bool>(true, true, true), true)), u_input.e, countOneBits(~80541u)), any(vec4<bool>(u_input.e == 4294967295u, true, true, false))), vec4<u32>(func_4(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e)), ~vec4<u32>(0u, 4294967295u, 45299u, 31970u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(98024u, u_input.c, 1u, u_input.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(2386f)))), _wgslsmith_f_op_f32(f32(-1f) * -534f)).x, ~22805u, ~84198u, u_input.e), true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1454f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~(~var_0.zyz), 2147483647i);
}

