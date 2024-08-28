struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-300f, -1649f), vec2<f32>(798f, 2049f), vec2<f32>(232f, 441f), vec2<f32>(1837f, -910f), vec2<f32>(-797f, -544f), vec2<f32>(-326f, 692f), vec2<f32>(-1021f, 433f), vec2<f32>(-821f, -219f), vec2<f32>(474f, 986f), vec2<f32>(-1000f, -241f), vec2<f32>(-381f, -165f), vec2<f32>(800f, 612f), vec2<f32>(-926f, 1000f), vec2<f32>(1685f, 160f), vec2<f32>(295f, 635f), vec2<f32>(659f, -2198f), vec2<f32>(-213f, -246f), vec2<f32>(-222f, 810f), vec2<f32>(1477f, 315f), vec2<f32>(-969f, -1000f), vec2<f32>(640f, -1939f), vec2<f32>(-1265f, 246f), vec2<f32>(-2209f, 169f), vec2<f32>(-287f, 303f), vec2<f32>(476f, -926f), vec2<f32>(1000f, 149f), vec2<f32>(933f, 834f), vec2<f32>(450f, 471f), vec2<f32>(-490f, -143f), vec2<f32>(437f, -1524f));

var<private> global3: vec3<bool>;

var<private> global4: vec3<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<u32> {
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    let var_0 = vec4<i32>(-28207i, reverseBits(_wgslsmith_mult_i32(1i, -abs(u_input.a))), countOneBits(3712i), abs(u_input.a));
    var var_1 = global1[_wgslsmith_index_u32(1u, 10u)];
    var_1 = Struct_1(global0.x, true);
    return vec4<u32>(~var_1.a, max(global0.x, _wgslsmith_add_u32(15077u, ~var_1.a)), ~(_wgslsmith_clamp_u32(firstLeadingBit(1u), 4294967295u, firstTrailingBit(1u)) & 51882u), 93920u);
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 1u, 0u, 37787u), vec4<u32>(1u, 1u, 4294967295u, arg_0)), 0u) >> (_wgslsmith_div_u32(6617u & arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 33938u), vec3<u32>(arg_0, arg_0, 4555u))) % 32u)) < 74408u;
    global2 = array<vec2<f32>, 30>();
    global2 = array<vec2<f32>, 30>();
    var var_1 = select(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-58874i, 2147483647i, u_input.a, u_input.a) << (vec4<u32>(arg_0, 4294967295u, global0.x, 36327u) % vec4<u32>(32u)), vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.a)) << (~func_3(global3.x, global4.x) % vec4<u32>(32u)), vec4<i32>(1i, 29979i, u_input.a >> (arg_0 % 32u), ~1i)), vec4<i32>(-1i, _wgslsmith_add_i32(1i, ~(-u_input.a)), ~u_input.a, u_input.a), !(!select(select(vec4<bool>(global3.x, false, false, true), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, global3.x, true, global3.x)), select(vec4<bool>(global3.x, false, true, true), vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(false, global3.x, false, false)), arg_0 > global0.x)));
    var_0 = _wgslsmith_mult_i32(countOneBits(-2147483647i), -1i ^ (-2147483647i | u_input.a)) > -33964i;
    return abs(_wgslsmith_mod_u32((global0.x | ~9483u) << (global0.x % 32u), global0.x));
}

fn func_1() -> bool {
    var var_0 = select(vec2<u32>(global0.x, ~global0.x), select(~((vec2<u32>(1u, global0.x) & vec2<u32>(global0.x, global0.x)) & firstLeadingBit(vec2<u32>(29211u, 4294967295u))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x), vec2<u32>(4294967295u, global0.x)), vec2<u32>(4294967295u, global0.x) ^ vec2<u32>(global0.x, global0.x)), select(!global3.xz, global3.zz, global3.x)), !global3.x);
    global0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global0.x << (global0.x % 32u), var_0.x | var_0.x, _wgslsmith_mod_u32(global0.x, 60524u)), 1u), firstLeadingBit(~1u)), func_2(0u));
    var_0 = max(firstLeadingBit(abs(~vec2<u32>(global0.x, 87249u)) >> (abs(~vec2<u32>(global0.x, 0u)) % vec2<u32>(32u))), vec2<u32>(firstTrailingBit(var_0.x), firstTrailingBit(~var_0.x)) >> (abs(max(select(vec2<u32>(var_0.x, global0.x), vec2<u32>(var_0.x, global0.x), true), ~vec2<u32>(0u, 11887u))) % vec2<u32>(32u)));
    var var_1 = Struct_1(global0.x | countOneBits(3111u), true);
    global3 = !select(select(!select(vec3<bool>(global3.x, true, false), vec3<bool>(true, false, true), global3.x), select(!vec3<bool>(var_1.b, var_1.b, false), vec3<bool>(global3.x, false, global3.x), select(vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(var_1.b, true, true))), !select(vec3<bool>(true, false, var_1.b), vec3<bool>(true, false, false), true)), select(vec3<bool>(var_1.b, !var_1.b, all(vec3<bool>(false, global3.x, false))), vec3<bool>(true, true & var_1.b, false), !(!vec3<bool>(false, true, global3.x))), select(!(!vec3<bool>(global3.x, false, false)), vec3<bool>(all(vec4<bool>(var_1.b, global3.x, global3.x, true)), false, global3.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, global3.x, var_1.b), vec3<bool>(true, true, false), vec3<bool>(global3.x, false, true)), false)));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 30>();
    let var_0 = func_1();
    let var_1 = Struct_1(firstTrailingBit(~global0.x), var_0);
    global1 = array<Struct_1, 10>();
    var var_2 = Struct_1(var_1.a, all(!vec4<bool>(false, true, !global3.x, global3.x)));
    var var_3 = countOneBits(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(min(var_2.a, global0.x), _wgslsmith_mult_u32(var_1.a, var_1.a)), 109968u), 122402u >> (_wgslsmith_add_u32(global0.x, ~var_1.a) % 32u), ~abs(4294967295u) & global0.x, func_2(global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~vec4<u32>(0u, 4294967295u, 64770u, 16595u))), -11492i, 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1225f)))) - -1026f), global4.x);
}

