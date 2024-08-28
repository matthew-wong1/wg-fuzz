struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false));

var<private> global3: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32) -> vec4<i32> {
    global3 = array<Struct_2, 16>();
    var var_0 = ~_wgslsmith_add_u32(1u, 75667u);
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(firstTrailingBit(arg_0), u_input.a.x), 12u)];
    let var_1 = true;
    let var_2 = ~1u;
    return -abs(vec4<i32>(-6887i, max(-38295i, 0i), i32(-1i) * -408i, u_input.b));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = vec2<bool>(arg_3.a, select(!(!arg_0.x), true, !select(false, arg_3.a, true)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(163f)), _wgslsmith_f_op_f32(f32(-1f) * -958f), _wgslsmith_f_op_f32(1202f + -1000f), _wgslsmith_f_op_f32(1735f + -675f)), vec4<f32>(_wgslsmith_div_f32(820f, -1243f), 2263f, -377f, 753f)))), ~vec3<u32>(u_input.a.x, ~arg_2.x, arg_2.x) >> (vec3<u32>(u_input.a.x, arg_2.x, ~max(u_input.a.x, 69938u)) % vec3<u32>(32u)), -2147483647i, vec3<bool>(all(!select(arg_0, arg_0, true)), firstLeadingBit(0u) <= arg_2.x, select(arg_0.x, arg_0.x, true)), Struct_3(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a & vec2<u32>(4294967295u, 18488u), arg_2), u_input.a.x), global1[_wgslsmith_index_u32(reverseBits(4294967295u), 12u)], -countOneBits(func_1(44304u).zx), Struct_1(arg_0.x & global0.a), -696f));
    var var_2 = vec4<bool>(!(!global0.a), !(!arg_3.a), false, arg_3.a);
    var var_3 = !(!(!(any(var_2.yx) | global0.a)));
    var_3 = !(true || ((countOneBits(arg_1) >= func_1(arg_2.x).x) || var_2.x));
    return 339f;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = !(!(!vec2<bool>(!global0.a, false)));
    global0 = global1[_wgslsmith_index_u32(0u, 12u)];
    let var_1 = Struct_1(var_0.x & ((false && select(false, false, true)) == any(vec3<bool>(var_0.x, var_0.x, false))));
    let var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0, -669f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -380f))), -342f, _wgslsmith_f_op_f32(-arg_0)), arg_1, -u_input.b, !select(!select(vec3<bool>(var_0.x, true, global0.a), vec3<bool>(global0.a, global0.a, true), vec3<bool>(var_1.a, false, true)), vec3<bool>(1i <= u_input.b, var_0.x, all(vec3<bool>(var_1.a, false, var_0.x))), !(arg_1.x < 0u)), Struct_3(firstTrailingBit(4294967295u), Struct_1(0i > u_input.b), vec2<i32>(u_input.b, u_input.b), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(global0.a, false, false), 2147483647i, vec2<u32>(24680u, 4294967295u), Struct_2(global0.a)))))));
    let var_3 = _wgslsmith_add_vec2_u32(select(u_input.a, arg_1.xy, true) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 26598u) ^ ~vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(~1u, 60584u & u_input.a.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.a.x, 96062u)), min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 1u), var_2.b.xy), ~vec2<u32>(u_input.a.x, 4294967295u))), abs(select(var_2.b.zy, firstTrailingBit(vec2<u32>(arg_1.x, 65450u)), vec2<bool>(var_0.x, false)))));
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(1i, -u_input.b, u_input.b, u_input.b);
    global3 = array<Struct_2, 16>();
    let var_1 = ~vec3<u32>(~u_input.a.x, ~121442u, u_input.a.x);
    var var_2 = ~func_1((~u_input.a.x & var_1.x) & u_input.a.x);
    var var_3 = vec4<bool>(false, true, true, select(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(342f + -334f))) <= _wgslsmith_f_op_f32(round(-1755f)), _wgslsmith_div_u32(abs(20991u), max(57462u, 12922u)) > countOneBits(u_input.a.x)));
    global0 = func_2(-1234f, vec3<u32>(var_1.x, (~0u & (78588u | var_1.x)) ^ _wgslsmith_sub_u32(var_1.x, var_1.x), ~u_input.a.x));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1695f, 1905f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -188f), -1340f))));
    var var_5 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1386f, var_4.x, var_4.x, var_4.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x)) * vec4<f32>(var_4.x, -993f, -592f, var_4.x)) * vec4<f32>(1f, 745f, _wgslsmith_f_op_f32(-170f - -452f), _wgslsmith_f_op_f32(select(-1670f, 172f, var_3.x))))), _wgslsmith_sub_vec3_u32(firstLeadingBit(var_1), abs(var_1)), var_0.x, var_3.xxw, Struct_3(~_wgslsmith_sub_u32(abs(var_1.x), _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(var_1.x, u_input.a.x, u_input.a.x))), func_2(_wgslsmith_f_op_f32(-var_4.x), ~var_1), vec2<i32>(_wgslsmith_clamp_i32(11971i, var_2.x, -var_0.x), ~1i), Struct_1(true), _wgslsmith_f_op_f32(-var_4.x)));
    var var_6 = ~_wgslsmith_add_u32(~var_5.e.a, ~(~(~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.yx, firstTrailingBit(-_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(var_0.x, 1i, 20074i, 2147483647i)), ~vec4<i32>(14561i, -17164i, u_input.b, 899i))), i32(-1i) * -49958i);
}

