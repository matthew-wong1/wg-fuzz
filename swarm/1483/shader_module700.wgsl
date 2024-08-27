struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: u32;

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(false, vec4<u32>(1u, 8751u, 20509u, 57655u), vec4<bool>(false, false, true, false), vec2<f32>(585f, 187f)), Struct_3(true, vec4<u32>(0u, 24949u, 0u, 4294967295u), vec4<bool>(false, true, true, true), vec2<f32>(134f, 567f)), Struct_3(false, vec4<u32>(54461u, 47197u, 100659u, 34056u), vec4<bool>(false, false, true, false), vec2<f32>(-484f, -130f)), Struct_3(false, vec4<u32>(26264u, 13450u, 4294967295u, 73805u), vec4<bool>(true, true, true, true), vec2<f32>(626f, 113f)), Struct_3(false, vec4<u32>(17456u, 24494u, 0u, 13934u), vec4<bool>(true, true, false, false), vec2<f32>(251f, -227f)), Struct_3(true, vec4<u32>(4294967295u, 103628u, 1u, 50615u), vec4<bool>(false, false, false, false), vec2<f32>(-530f, -936f)));

var<private> global3: Struct_3;

var<private> global4: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(-1121f, 315f, -552f), vec3<f32>(-1090f, 1000f, 1117f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(0u, 6u)];
    let var_1 = _wgslsmith_mult_i32(firstLeadingBit(1i), -_wgslsmith_mod_i32(-105760i, countOneBits(firstLeadingBit(-2147483647i))));
    let var_2 = global3.b.x << (0u % 32u);
    let var_3 = reverseBits(~_wgslsmith_sub_vec2_i32(-vec2<i32>(var_1, 0i) & vec2<i32>(-858i, var_1), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-2147483647i, -47052i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(-1i, 1i)), reverseBits(vec2<i32>(var_1, var_1)))));
    var var_4 = select(select(!(!select(var_0.c.wz, vec2<bool>(false, arg_0.a), false)), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), all(!vec3<bool>(var_0.c.x, arg_0.a, var_0.c.x))), select(all(!vec3<bool>(arg_0.a, var_0.c.x, true)), all(vec3<bool>(false, false, global3.c.x)), any(vec3<bool>(global3.a, global3.c.x, global3.a)) | true)), !arg_0.c.wz, vec2<bool>(false, true));
    return 4294967295u;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global3.b.x, _wgslsmith_mod_u32(~(u_input.a | u_input.b), ~func_3(Struct_3(global3.a, global3.b, global3.c, vec2<f32>(-236f, global3.d.x))))), 6u)];
    global0 = array<Struct_2, 6>();
    global2 = array<Struct_3, 6>();
    var var_0 = ~_wgslsmith_mult_vec2_u32(~firstLeadingBit(global3.b.wy), ~vec2<u32>(50240u, u_input.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.d.x)))), 942f) * _wgslsmith_f_op_vec2_f32(-global3.d));
    return Struct_1(~(-vec4<i32>(max(0i, -16051i), 57302i, _wgslsmith_clamp_i32(-1i, 18163i, -82045i), 29590i)));
}

fn func_1() -> Struct_2 {
    var var_0 = i32(-1i) * -33133i;
    let var_1 = Struct_2(Struct_1(max(vec4<i32>(-11757i, _wgslsmith_mod_i32(-61171i, 2147483647i), ~0i, 74393i), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -2147483647i, 2147483647i, -27046i), vec4<i32>(-23452i, -42522i, 2147483647i, 17476i)))), Struct_1(-min(~vec4<i32>(1i, 12488i, 2147483647i, 0i), select(vec4<i32>(-34646i, 5643i, 2147483647i, -63714i), vec4<i32>(-1i, 5219i, 2147483647i, -18209i), vec4<bool>(global3.c.x, true, false, true)))), 755f, func_2(firstLeadingBit(~vec3<u32>(u_input.a, u_input.a, u_input.b) << (vec3<u32>(4294967295u, 1u, 10579u) % vec3<u32>(32u)))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a, 6u)];
    var var_3 = firstTrailingBit(countOneBits(global3.b));
    var_2 = Struct_2(func_2(vec3<u32>(_wgslsmith_clamp_u32(max(4294967295u, 1u), _wgslsmith_clamp_u32(var_3.x, 1u, 6296u), ~var_3.x), 0u, 71326u)), Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(var_2.d.a, -vec4<i32>(-2147483647i, var_2.a.a.x, -4982i, 14735i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b.a.x, var_1.a.a.x, var_2.b.a.x, 16711i), vec4<i32>(37495i, var_2.a.a.x, var_1.b.a.x, var_1.b.a.x))), var_2.a.a)), _wgslsmith_f_op_f32(1013f - global3.d.x), var_1.a);
    return Struct_2(Struct_1(func_2(~global3.b.zzz).a), Struct_1(reverseBits(var_1.a.a)), var_2.c, func_2(_wgslsmith_div_vec3_u32(countOneBits(global3.b.zxz ^ global3.b.wyx), vec3<u32>(~var_3.x, max(35928u, 104676u), u_input.b | 50231u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = max(-max(countOneBits(arg_0.b.a.x), -_wgslsmith_mod_i32(arg_0.d.a.x, arg_1.a.x)), (arg_1.a.x << (firstTrailingBit(max(global3.b.x, global3.b.x)) % 32u)) << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, global3.b.x), min(0u, abs(0u))) % 32u));
    let var_1 = arg_0.a.a.zyy;
    let var_2 = true;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.b.x << (4294967295u % 32u), global3.b.x), 6u)];
    let var_4 = global3.c.x;
    return StorageBuffer(func_1().c, _wgslsmith_mod_vec3_u32(~(~(~global3.b.zxx)), var_3.b.wwx), vec2<i32>(11678i, 85593i) >> (vec2<u32>(45754u << (firstTrailingBit(u_input.b) % 32u), u_input.a) % vec2<u32>(32u)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), Struct_1(vec4<i32>(abs(-29271i), firstLeadingBit(0i), max(reverseBits(13714i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 11437i), vec2<i32>(-3568i, -1i))), _wgslsmith_add_i32(abs(1i), -2147483647i))));
}

