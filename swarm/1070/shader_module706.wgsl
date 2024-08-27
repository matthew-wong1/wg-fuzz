struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true));

var<private> global1: array<vec3<i32>, 12>;

var<private> global2: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = global2.b.zy;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-523f, arg_1));
    var var_2 = 4294967295u;
    let var_3 = ~arg_2.xxw;
    let var_4 = ~var_3.x ^ (10853u >> (var_3.x % 32u));
    return Struct_1(~global2.a, global2.b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: u32) -> u32 {
    var var_0 = arg_1.b;
    var var_1 = global2.b;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u)), vec4<u32>(select(arg_2, 4294967295u, true) | ~arg_2, 38699u, 33993u, ~arg_2)) ^ ~_wgslsmith_mult_u32(firstLeadingBit(firstLeadingBit(31293u)), ~arg_2 >> ((41840u ^ arg_2) % 32u)), 12u)];
    var var_3 = true;
    var var_4 = min(global2.a.zy, firstLeadingBit(arg_1.a.a.zy << (_wgslsmith_div_vec2_u32(max(vec2<u32>(arg_2, arg_2), vec2<u32>(4294967295u, 1u)), ~vec2<u32>(1u, arg_2)) % vec2<u32>(32u))));
    return arg_2 & ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 0u)) & select(vec2<u32>(arg_2, arg_2), vec2<u32>(83299u, 22335u), vec2<bool>(false, var_1.x)), _wgslsmith_sub_vec2_u32(~vec2<u32>(33087u, arg_2), min(vec2<u32>(26848u, 17407u), vec2<u32>(arg_2, 4294967295u))));
}

fn func_1() -> vec3<u32> {
    global1 = array<vec3<i32>, 12>();
    let var_0 = Struct_4(func_2(firstLeadingBit(firstTrailingBit(1610u)) >> (1u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1571f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(25186u, 0u), 1u, ~25043u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(37275u, 1u, 4294967295u, 6036u), vec4<u32>(4294967295u, 28023u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 69728u, 1u)) << (firstLeadingBit(vec4<u32>(4294967295u, 61303u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))), 2147483647i);
    var var_1 = func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(~58301u), _wgslsmith_mult_u32(53350u, 59216u) | func_3(var_0.b, Struct_4(Struct_1(global2.a, vec3<bool>(true, global2.b.x, false)), var_0.b, 55178i), 1u), 1u), select(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 35709u, 91098u), vec3<u32>(25237u, 4294967295u, 0u), vec3<u32>(6237u, 0u, 20093u)), !var_0.a.b.x & func_2(38518u, var_0.b.x, vec4<u32>(0u, 0u, 17736u, 85260u)).b.x)), var_0.b.x, ~vec4<u32>(_wgslsmith_div_u32(~1u, 1u), 4294967295u, 0u, reverseBits(1u)));
    let var_2 = vec4<bool>(var_0.b.x <= _wgslsmith_f_op_f32(round(var_0.b.x)), true, false, global2.b.x);
    return vec3<u32>(0u, _wgslsmith_sub_u32(15198u, func_3(_wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(-177f, var_0.b.x)), var_0, ~1u)), 4294967295u) | ~reverseBits(~reverseBits(vec3<u32>(19004u, 0u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~(~(~(~vec3<u32>(26915u, 4294967295u, 49067u)))), func_1());
    let var_1 = -978f;
    let x = u_input.a;
    s_output = StorageBuffer(1317f, 0u);
}

