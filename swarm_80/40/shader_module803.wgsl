struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_4,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<f32>(-1520f, 805f), vec2<u32>(1u, 19288u));

var<private> global1: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(15417u, 27305u), vec2<u32>(4294967295u, 36928u));

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: bool;

var<private> global4: vec3<u32> = vec3<u32>(33539u, 4294967295u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec4<f32>) -> vec3<f32> {
    var var_0 = Struct_2(~countOneBits(_wgslsmith_mod_u32(global4.x, u_input.c.x)), Struct_1(!all(vec2<bool>(false, true)) != (u_input.b > -43489i)), vec4<bool>(true, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a.x), u_input.c.xy) < _wgslsmith_sub_u32(abs(global4.x), ~63244u), abs(u_input.a.x) > ~109122u, all(vec2<bool>(!global2.x, !global2.x))), all(select(vec2<bool>(true || global2.x, select(global2.x, false, true)), vec2<bool>(global2.x, false), false)));
    global2 = vec4<bool>(select(all(var_0.c), var_0.b.a & true, true), !all(var_0.c), select(true, false, global2.x), any(select(vec4<bool>(any(vec3<bool>(true, true, global2.x)), any(vec2<bool>(var_0.d, global2.x)), true, any(vec2<bool>(false, false))), select(var_0.c, select(var_0.c, var_0.c, var_0.d), var_0.c), var_0.c)));
    let var_1 = var_0.c.yx;
    global1 = array<vec2<u32>, 2>();
    let var_2 = ~(global4.x | global4.x) & ~_wgslsmith_mod_u32(24832u, _wgslsmith_mult_u32(global0.b.x, arg_2) ^ _wgslsmith_mult_u32(1u, u_input.a.x));
    return arg_0.wyz;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = true;
    global1 = array<vec2<u32>, 2>();
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1843f, arg_0.x, 965f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(429f * 816f), -968f, _wgslsmith_f_op_f32(floor(global0.a.x))), max(global0.b.x << (u_input.a.x % 32u), u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-165f, -134f, -578f, 300f), vec4<f32>(global0.a.x, arg_0.x, -1251f, global0.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, global0.a.x))))))));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global0.a.x) * _wgslsmith_f_op_vec2_f32(-var_1.xy)) * vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-1000f + arg_0.x))))), arg_1);
    let var_2 = var_1.x;
    return select(select(!(!(!vec4<bool>(arg_2.x, var_0, true, true))), vec4<bool>(any(vec3<bool>(false, true, var_0)), all(arg_2), select(any(vec2<bool>(global2.x, false)), false, arg_2.x), var_0), !vec4<bool>(all(global2.zyw), true, arg_0.x == 632f, any(global2.zyx))), !select(select(vec4<bool>(global2.x, false, false, false), !vec4<bool>(arg_2.x, false, true, false), select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(true, global2.x, false, var_0), vec4<bool>(false, true, arg_2.x, var_0))), select(vec4<bool>(false, global2.x, global2.x, arg_2.x), select(vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, var_0, true, var_0), false), any(global2.wzy)), !(!vec4<bool>(false, global2.x, false, var_0))), select(vec4<bool>(var_0, true, any(arg_2), true), select(vec4<bool>(global2.x, global2.x, arg_0.x == 144f, false), select(!vec4<bool>(false, true, true, arg_2.x), vec4<bool>(var_0, var_0, false, false), var_1.x != global0.a.x), !(!vec4<bool>(var_0, true, true, var_0))), vec4<bool>(false, select(true, true, var_0), all(!vec4<bool>(arg_2.x, false, true, global2.x)), (i32(-1i) * -38850i) > u_input.b)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_5 {
    global2 = !(!select(select(func_2(vec3<f32>(-880f, -831f, global0.a.x), global0.b, vec2<bool>(arg_1.x, arg_1.x)), vec4<bool>(false, true, arg_1.x, true), all(vec2<bool>(arg_1.x, false))), select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, global2.x), vec4<bool>(false, arg_1.x, global2.x, true), false), func_2(vec3<f32>(global0.a.x, -1000f, 441f), u_input.a.xy, global2.yy)), select(global2.x, true, arg_1.x) & func_2(vec3<f32>(global0.a.x, global0.a.x, global0.a.x), u_input.c.yy, vec2<bool>(arg_1.x, global2.x)).x));
    let var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0.a.x, global0.a.x)), _wgslsmith_div_f32(-944f, global0.a.x))), 809f)), _wgslsmith_f_op_f32(-775f + global0.a.x)), vec2<u32>(15398u, countOneBits(global0.b.x)));
    global1 = array<vec2<u32>, 2>();
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1773f, -236f))))))), global4.xx);
    global1 = array<vec2<u32>, 2>();
    return Struct_5(true, Struct_3(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.a.x)), var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)) - var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x + global0.a.x))), var_0, Struct_3(vec3<f32>(-931f, var_0.a.x, global0.a.x)), 20075i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.b.x, vec2<bool>(global0.a.x < -1965f, true));
    let var_1 = ~(_wgslsmith_add_u32(~firstTrailingBit(global0.b.x), 13477u) | 68429u);
    let var_2 = global2.wzw;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(reverseBits(global0.b.x | var_1), global0.b.x), var_0.c.b.x, vec4<f32>(var_0.d.a.x, 1338f, -1661f, global0.a.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(~1i, _wgslsmith_clamp_i32(-var_0.e, ~var_0.e, _wgslsmith_clamp_i32(11872i, u_input.b, 1i))), vec2<i32>(func_1(28753u, vec2<bool>(global2.x, false)).e, var_0.e ^ -2147483647i) | ~abs(vec2<i32>(-9682i, -15471i)), vec2<i32>(1i, abs(u_input.b)) << (vec2<u32>(u_input.a.x, 30777u) % vec2<u32>(32u))), _wgslsmith_mod_u32(~(~(~global4.x)), _wgslsmith_clamp_u32(reverseBits(var_0.c.b.x >> (4294967295u % 32u)), 1u, _wgslsmith_div_u32(~0u, var_1))));
}

