struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(33706u, 8423u, 72352u, 48955u), vec4<u32>(1u, 1u, 34155u, 17117u), vec4<u32>(0u, 4294967295u, 54954u, 8220u), vec4<u32>(4294967295u, 33u, 23290u, 8056u), vec4<u32>(0u, 14393u, 2529u, 15639u), vec4<u32>(4294967295u, 4294967295u, 12722u, 1u), vec4<u32>(0u, 82239u, 79251u, 82836u), vec4<u32>(4294967295u, 4294967295u, 49731u, 4294967295u), vec4<u32>(4294967295u, 59034u, 43392u, 1u), vec4<u32>(4340u, 0u, 4294967295u, 0u), vec4<u32>(43488u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 16596u, 4294967295u), vec4<u32>(7989u, 58899u, 27137u, 4294967295u), vec4<u32>(4294967295u, 62361u, 4294967295u, 0u), vec4<u32>(82790u, 4294967295u, 36109u, 40867u), vec4<u32>(35887u, 11107u, 36135u, 6562u), vec4<u32>(0u, 25710u, 4294967295u, 1344u), vec4<u32>(3887u, 69965u, 0u, 1u), vec4<u32>(18643u, 1u, 41164u, 1u), vec4<u32>(4294967295u, 1u, 1u, 3499u), vec4<u32>(1u, 26293u, 45644u, 1u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global0 = array<vec4<u32>, 21>();
    global0 = array<vec4<u32>, 21>();
    global0 = array<vec4<u32>, 21>();
    let var_0 = _wgslsmith_div_u32(~abs(_wgslsmith_mult_u32(35038u, _wgslsmith_clamp_u32(1u, 8553u, 0u))), ~0u);
    global0 = array<vec4<u32>, 21>();
    return ~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, 0u) << (max(vec2<u32>(1u, var_0), vec2<u32>(var_0, 10994u)) % vec2<u32>(32u))), abs(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(var_0, var_0)), vec2<u32>(var_0, 14740u))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~(~18113u);
    global0 = array<vec4<u32>, 21>();
    let var_1 = func_3(true);
    global0 = array<vec4<u32>, 21>();
    return Struct_1(vec4<bool>(false, select(select(true, all(vec2<bool>(true, false)), true), true, true), any(vec3<bool>(true, true, any(vec4<bool>(false, false, false, false)))), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1112f - 886f)))))), var_1);
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = array<vec4<u32>, 21>();
    let var_0 = ~_wgslsmith_add_vec3_i32(-(~(~vec3<i32>(u_input.a.x, u_input.a.x, -1567i))), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, firstLeadingBit(u_input.a.x)), u_input.a.x, -59351i));
    global0 = array<vec4<u32>, 21>();
    global0 = array<vec4<u32>, 21>();
    let var_1 = vec2<bool>(!(~_wgslsmith_div_u32(46909u, 13382u) <= _wgslsmith_dot_vec4_u32(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 21u)]), select(global0[_wgslsmith_index_u32(0u, 21u)], vec4<u32>(1u, 67313u, 1u, 138u), vec4<bool>(true, true, false, false)))), _wgslsmith_sub_u32(select(1u, abs(1u), !arg_0), countOneBits(abs(21348u))) > 4294967295u);
    return Struct_2(func_2(), vec3<bool>(!var_1.x, arg_0 & !(!var_1.x), true), _wgslsmith_add_vec3_i32(countOneBits(~abs(var_0)), var_0), 1u >> (~(~(~4294967295u)) % 32u), Struct_1(vec4<bool>(var_1.x, arg_0, false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(823f - 1f)), _wgslsmith_clamp_vec2_u32(select(min(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 15379u)), vec2<u32>(1u, 1u), false), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 21>();
    global0 = array<vec4<u32>, 21>();
    let var_0 = countOneBits(vec4<i32>(u_input.a.x, -(i32(-1i) * -23496i), u_input.a.x, ~(-2147483647i)));
    global0 = array<vec4<u32>, 21>();
    var var_1 = var_0.x;
    let var_2 = Struct_3(true, !all(vec2<bool>(true, true)), func_1(true), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1820f, 129f, 267f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-466f, -290f, -1028f), vec3<f32>(-187f, -154f, -166f), true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -306f, -124f)) + vec3<f32>(-326f, _wgslsmith_f_op_f32(f32(-1f) * -595f), -553f)))), func_2().a.wx);
    global0 = array<vec4<u32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x, min(vec3<u32>(4294967295u, 12210u, var_2.c.d), vec3<u32>(var_2.c.d ^ func_3(true).x, ~var_2.c.e.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.c.e.c.x, 0u), var_2.c.a.c))), max(~vec3<u32>(~var_2.c.e.c.x, var_2.c.e.c.x, var_2.c.d), countOneBits(vec3<u32>(0u, 1u, 10106u))), -126f, var_2.c.c);
}

