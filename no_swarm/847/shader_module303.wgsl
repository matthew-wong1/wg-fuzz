struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_div_i32(-firstTrailingBit(6988i), -2147483647i);
    var var_1 = select(arg_2.c.x, true, 1f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-arg_0)))));
    let var_2 = select(arg_2.c, arg_2.c, vec4<bool>(arg_3.x, true, !arg_3.x, select(all(arg_2.c.xxz), 2147483647i != global0.b.x, !(arg_0 >= arg_0))));
    let var_3 = global0.c.x >> (1u % 32u);
    global0 = Struct_4(arg_2.b.a.x, (arg_1.b ^ _wgslsmith_div_vec2_i32(arg_2.b.a.yw, reverseBits(arg_2.b.a.wx))) & _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.b.b | 2147483647i, abs(u_input.a.x)), -countOneBits(arg_2.b.a.ww)), ~arg_1.c);
    return abs(~(~abs(abs(u_input.d))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> vec3<f32> {
    global0 = Struct_4(global0.a, _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(arg_1.b.a.x, _wgslsmith_div_i32(arg_1.b.c, global0.a))), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-22677i, 1i, arg_1.b.a.x), select(vec3<i32>(arg_2.b.b, arg_2.b.a.x, 1i), vec3<i32>(arg_2.b.a.x, global0.a, 0i), arg_1.c.wxy)), -15259i)), ~u_input.e);
    return arg_2.d.ywx;
}

fn func_2() -> Struct_5 {
    global0 = Struct_4(2147483647i, -_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(47197i, -43607i), vec2<i32>(global0.a, global0.b.x) & -vec2<i32>(global0.b.x, u_input.a.x)), global0.c);
    global0 = Struct_4(-_wgslsmith_mod_i32(-2147483647i << (global0.c.x % 32u), -(i32(-1i) * -46622i)), vec2<i32>(u_input.b.x, i32(-1i) * -15881i), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.c)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 23621u, 13584u, u_input.e.x), global0.c) & u_input.e, vec4<u32>(1u, 13945u, ~0u, u_input.e.x)), _wgslsmith_div_vec4_u32(~(~u_input.e), ~_wgslsmith_add_vec4_u32(global0.c, vec4<u32>(0u, u_input.c, 14164u, 115354u)))));
    global0 = Struct_4((i32(-1i) * -1i) ^ u_input.a.x, u_input.a, vec4<u32>(global0.c.x, min(0u, global0.c.x), min(~83694u, u_input.e.x) | 1u, 4294967295u));
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1775f), Struct_3(_wgslsmith_f_op_f32(-1000f + -1394f), Struct_1(min(~vec4<i32>(u_input.a.x, -2147483647i, global0.a, 65836i), max(vec4<i32>(-747i, -1i, global0.b.x, global0.b.x), vec4<i32>(36912i, 2147483647i, u_input.a.x, global0.a))), u_input.b.x ^ u_input.d, 0i), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-191f, -116f, 957f, 269f), vec4<f32>(128f, 719f, 380f, -147f)))))), Struct_3(1f, Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, u_input.d, global0.b.x, -1i), vec4<i32>(-15447i, u_input.a.x, u_input.d, global0.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b.x, 31943i) >> (vec3<u32>(global0.c.x, global0.c.x, global0.c.x) % vec3<u32>(32u)), vec3<i32>(-2147483647i, global0.b.x, u_input.b.x)), func_3(-736f, Struct_4(u_input.b.x, vec2<i32>(2147483647i, u_input.d), global0.c), Struct_3(1638f, Struct_1(vec4<i32>(u_input.b.x, 1i, u_input.d, global0.a), global0.b.x, u_input.a.x), vec4<bool>(false, true, false, true), vec4<f32>(2494f, 659f, 1000f, -846f)), vec2<bool>(false, false))), select(vec4<bool>(true, true, true, any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), false), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(112f, 224f, 1287f, -2063f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -591f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1710f)))))));
    let var_1 = Struct_1(vec4<i32>(1i, 1i, 1i, 1i) & vec4<i32>(55930i, -global0.b.x, u_input.d, 0i), ~global0.b.x, global0.b.x);
    return Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), Struct_3(var_0.x, var_1, select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), any(vec4<bool>(false, false, false, false)) != (var_1.a.x <= 24578i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -542f, -231f, var_0.x) - vec4<f32>(-138f, var_0.x, var_0.x, var_0.x))))))), u_input.e.yw);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_5) -> u32 {
    var var_0 = arg_1.b;
    var var_1 = arg_1.b.b;
    var_1 = func_2().b.b;
    var var_2 = Struct_4(var_0.b.c, _wgslsmith_clamp_vec2_i32(~firstTrailingBit(vec2<i32>(49984i, arg_1.b.b.a.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(var_1.c, u_input.b.x)), ~var_0.b.c), vec2<i32>(var_1.a.x & var_1.c, 8855i) >> (((vec2<u32>(0u, arg_1.c.x) ^ arg_1.c) ^ (vec2<u32>(14039u, 4294967295u) << (arg_1.c % vec2<u32>(32u)))) % vec2<u32>(32u))), vec4<u32>(arg_0.x, arg_0.x, 16809u, abs(select(global0.c.x, u_input.c, any(vec2<bool>(false, true))))));
    let var_3 = u_input.e.xy;
    return 0u;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c.x, global0.c.x, 1u, u_input.e.x), vec4<u32>(global0.c.x, u_input.e.x, u_input.c, u_input.e.x)) & func_5(u_input.e.wzz, func_2()), _wgslsmith_add_u32(~select(11332u, 0u, false), global0.c.x), _wgslsmith_div_u32(80218u, u_input.c) << (4294967295u % 32u)));
    let var_1 = Struct_2(_wgslsmith_add_u32(1u, ~(~12001u)), arg_0, Struct_1(abs(vec4<i32>(global0.a, u_input.d, global0.b.x, -169i) >> (global0.c % vec4<u32>(32u))), ~(-global0.a), u_input.b.x));
    var_0 = _wgslsmith_mult_vec3_u32(~u_input.e.xyw, select(vec3<u32>(_wgslsmith_div_u32(~global0.c.x, 0u & global0.c.x), ~_wgslsmith_mult_u32(global0.c.x, var_0.x), ~40056u << (_wgslsmith_dot_vec3_u32(u_input.e.zwx, u_input.e.zxx) % 32u)), ~vec3<u32>(u_input.e.x >> (76094u % 32u), var_0.x, firstLeadingBit(4294967295u)), func_2().b.c.yyz));
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(func_5(vec3<u32>(var_1.a, global0.c.x, var_0.x) >> (~vec3<u32>(global0.c.x, 122817u, 0u) % vec3<u32>(32u)), func_2()), var_0.x, 0u), _wgslsmith_mult_vec3_u32(~(~(vec3<u32>(74699u, 4294967295u, u_input.e.x) ^ vec3<u32>(1u, var_0.x, 16873u))), select(~vec3<u32>(u_input.c, u_input.c, global0.c.x), _wgslsmith_sub_vec3_u32(~global0.c.wwz, vec3<u32>(6305u, 5016u, 27555u)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.xz) * arg_0.zx);
    return func_2().b.b;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> Struct_5 {
    let var_0 = reverseBits(~global0.c.x) ^ ~(~(~_wgslsmith_div_u32(51012u, u_input.c)));
    global0 = Struct_4(~(~(select(arg_1.b.c, 0i, true) >> (1u % 32u))), vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(36691i, ~arg_3 ^ ~arg_3)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u ^ global0.c.x, global0.c.x, u_input.c & var_0, 16722u) | reverseBits(~global0.c), global0.c));
    var var_1 = Struct_1(arg_1.b.a << (u_input.e % vec4<u32>(32u)), ~u_input.b.x, ~arg_1.b.b);
    let var_2 = vec3<bool>(arg_1.c.x, true, arg_1.c.x);
    var var_3 = Struct_1(-firstLeadingBit(func_1(vec3<f32>(-363f, 1237f, -563f)).a), var_1.b, 77149i);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1362f, -1000f))))), Struct_3(-540f, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-164f, -322f, 305f))))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1199f, 755f, -2132f, 733f), vec4<f32>(528f, -478f, 687f, 686f))))), Struct_3(1169f, func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-367f, 567f, -203f))))), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, -1402f, 1557f, 1275f))))), _wgslsmith_sub_i32(global0.a, -u_input.a.x));
    let var_1 = u_input.c;
    var_0 = Struct_5(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(680f, -2006f)))))), var_0.b, ~vec2<u32>(~(~68743u), ~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.b.b ^ global0.b.x, min(~(vec3<i32>(var_0.b.b.b, 0i, u_input.a.x) | vec3<i32>(2147483647i, -38440i, -21627i)), vec3<i32>(~countOneBits(u_input.d), ~(-global0.b.x), 35256i)), ~(~func_3(468f, Struct_4(-34872i, u_input.b, vec4<u32>(u_input.e.x, var_1, 67219u, 88018u)), var_0.b, func_6(var_0.b.d.yy, var_0.b, Struct_3(254f, Struct_1(var_0.b.b.a, 55231i, var_0.b.b.a.x), var_0.b.c, vec4<f32>(-622f, -776f, 1122f, 185f)), u_input.b.x).b.c.wx)));
}

