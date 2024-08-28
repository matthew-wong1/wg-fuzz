struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 42447u);

var<private> global1: Struct_4;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a.a * _wgslsmith_f_op_f32(1145f * global1.c)))), -310f));
    global1 = Struct_4(global1.a, all(vec3<bool>(global1.d.d.d, global1.b, all(select(vec3<bool>(global1.d.c.d, global1.b, true), vec3<bool>(global1.d.c.d, global1.d.c.d, global1.d.d.d), global1.d.c.d)))), global1.a.a, Struct_2(_wgslsmith_mod_vec4_i32(-firstLeadingBit(vec4<i32>(global1.d.d.c, 0i, global1.a.b.d.c, global1.a.b.c.b)), abs(vec4<i32>(global1.a.b.c.c, 25341i, 0i, -15312i))), vec2<u32>(max(4294967295u, u_input.a), 11613u), Struct_1(vec3<f32>(_wgslsmith_div_f32(-668f, 627f), _wgslsmith_f_op_f32(var_0 + global1.d.c.a.x), _wgslsmith_div_f32(724f, global1.a.b.c.a.x)), _wgslsmith_mod_i32(_wgslsmith_add_i32(global1.d.a.x, global1.a.b.d.c), global1.d.a.x), ~1i, all(vec4<bool>(true, global1.d.c.d, false, true)) & select(true, global1.b, global1.b)), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 563f, -448f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, -210f, -148f), vec3<f32>(1000f, global1.c, -1134f), vec3<bool>(global1.b, true, global1.a.b.d.d))))), (i32(-1i) * -17383i) >> ((1u | global0.x) % 32u), reverseBits(global1.d.c.c & 83069i), global1.d.c.d)), u_input.a);
    let var_1 = Struct_4(global1.a, !(global0.x < ~40774u), -851f, Struct_2(countOneBits(~global1.a.b.a), _wgslsmith_add_vec2_u32(u_input.b.zz | ~u_input.b.xy, vec2<u32>(global1.d.b.x, 50550u)), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 206f, var_0) + global1.d.c.a))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(10061i, -2147483647i, 1i), global1.a.b.a.xzy), ~vec3<i32>(-1i, 1i, 28554i)), global1.a.b.a.x, true), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, -540f, var_0))), -global1.a.b.a.x, global1.d.a.x, any(select(vec3<bool>(true, false, false), vec3<bool>(global1.b, global1.a.b.c.d, global1.b), vec3<bool>(true, false, global1.d.c.d))))), u_input.b.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f) + _wgslsmith_div_f32(-2101f, 1158f)), 717f))) * _wgslsmith_f_op_f32(-var_0));
    global1 = var_1;
    return _wgslsmith_f_op_f32(sign(var_1.d.d.a.x));
}

fn func_2() -> u32 {
    let var_0 = Struct_4(global1.a, true || global1.b, _wgslsmith_div_f32(1928f, -2155f), global1.d, 1u);
    let var_1 = 17197u;
    var var_2 = global1.d;
    var_2 = Struct_2(abs(_wgslsmith_div_vec4_i32(var_2.a, ~var_0.d.a) & min(vec4<i32>(0i, var_0.d.d.b, var_2.c.c, -53766i), var_0.d.a)), var_2.b ^ (_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.xz, vec2<u32>(var_0.e, var_0.e)), var_0.d.b) >> (~vec2<u32>(var_2.b.x, var_1) % vec2<u32>(32u))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(f32(-1f) * -871f), _wgslsmith_f_op_f32(-624f + _wgslsmith_f_op_f32(961f + var_2.d.a.x))), _wgslsmith_clamp_i32(~var_2.c.c ^ ~2147483647i, var_0.a.b.a.x, 19758i & (global1.a.b.d.b ^ -1i)), ~(~13009i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, -839f) - _wgslsmith_f_op_f32(abs(103f))) == 1057f), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.c, -231f)), var_0.c, any(vec4<bool>(true, true, var_0.d.c.d, var_2.d.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(796f, var_0.d.d.a.x)) * _wgslsmith_f_op_f32(step(var_0.d.c.a.x, var_2.c.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a.x))), -50475i, 25594i, var_2.d.d));
    let var_3 = Struct_3(var_2.d.a.x, global1.a.b);
    return ~global1.d.b.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>) -> bool {
    var var_0 = abs(~(~global1.d.a >> (vec4<u32>(39038u, global0.x, 4294967295u, 2296u) % vec4<u32>(32u)))) >> (~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), vec4<u32>(_wgslsmith_div_u32(0u, global0.x), u_input.b.x, ~u_input.a, func_2())) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1840f)) - global1.c))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - -1211f);
    var var_3 = u_input.b;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(step(global1.d.d.a, global1.d.d.a)), countOneBits(~(-33477i)), ~(-(~abs(-62350i))), any(!(!select(vec4<bool>(global1.a.b.d.d, false, arg_1, true), vec4<bool>(global1.b, global1.a.b.c.d, true, arg_1), vec4<bool>(true, arg_1, false, arg_1)))));
    return all(select(!(!select(vec3<bool>(global1.a.b.c.d, false, var_4.d), vec3<bool>(global1.a.b.d.d, true, true), global1.b)), select(vec3<bool>(true, true, true && global1.a.b.c.d), !vec3<bool>(var_4.d, var_4.d, true), vec3<bool>(true, true, true)), !(!var_4.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_add_vec2_u32(u_input.b.yx, _wgslsmith_clamp_vec2_u32(max(global1.d.b, _wgslsmith_div_vec2_u32(vec2<u32>(10534u, u_input.a), global1.d.b)), select(vec2<u32>(global1.d.b.x, 0u) & vec2<u32>(u_input.a, 65107u), ~u_input.b.yy, !vec2<bool>(global1.a.b.c.d, global1.d.d.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 15753u), vec2<u32>(1u, global1.a.b.b.x))));
    let var_0 = global1.c;
    var var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, func_1(global1.d.c.a.yx, global1.d.d.d, vec2<f32>(-201f, -396f)), false), false), select(select(select(vec3<bool>(true, global1.d.d.d, true), vec3<bool>(false, global1.b, global1.a.b.c.d), global1.d.d.d), !vec3<bool>(global1.a.b.c.d, false, false), !vec3<bool>(global1.b, true, global1.b)), !vec3<bool>(false, false, global1.b), !(!vec3<bool>(true, global1.d.c.d, true))), vec3<bool>(false, !(global1.d.d.d & global1.b), all(select(vec4<bool>(global1.b, true, global1.b, global1.b), vec4<bool>(true, global1.d.d.d, global1.a.b.d.d, global1.a.b.c.d), vec4<bool>(false, global1.b, global1.d.d.d, false)))));
    global0 = firstTrailingBit(reverseBits(global1.d.b));
    let var_2 = select(!select(var_1.yy, select(select(var_1.xz, var_1.xx, var_1.yy), !vec2<bool>(global1.b, false), var_1.yx), vec2<bool>(global1.d.c.d, u_input.a >= 17124u)), var_1.xx, all(vec2<bool>(true, true)));
    var var_3 = -vec2<i32>(_wgslsmith_mod_i32(abs(global1.a.b.c.b << (12318u % 32u)), -_wgslsmith_sub_i32(-2147483647i, global1.a.b.a.x)), global1.d.d.b);
    var var_4 = select(global1.a.b.d.d, global1.a.b.d.d, false) | any(!select(!vec4<bool>(var_2.x, var_2.x, false, false), !vec4<bool>(global1.b, false, true, true), false));
    var_1 = vec3<bool>(true, any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, global1.a.b.c.d), vec3<bool>(true, false, var_1.x))) | select(!(var_1.x && global1.d.d.d), select(!global1.b, all(vec4<bool>(var_2.x, false, true, var_2.x)), var_2.x), any(vec2<bool>(false, false))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.d.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, 1337f))) * _wgslsmith_f_op_f32(select(global1.d.c.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.c, global1.d.c.a.x), global1.c)), global1.b))), select(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(0u, global1.e, 1u, 34925u)), ~abs(u_input.b)), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(37680u, global0.x, 11320u, global0.x), ~vec4<u32>(global0.x, global0.x, u_input.b.x, global0.x)), reverseBits(firstLeadingBit(32636u)), u_input.a | ~global0.x, global0.x), vec4<bool>(!var_1.x, var_2.x, global1.b & global1.b, false)), var_3.x);
}

