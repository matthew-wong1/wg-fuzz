struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 53653u), vec2<bool>(true, false), vec4<i32>(2147483647i, -41107i, 2147483647i, -1i)), Struct_1(vec4<u32>(95419u, 1u, 15093u, 1u), vec2<bool>(true, false), vec4<i32>(79574i, 28524i, 2147483647i, i32(-2147483648))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = all(vec4<bool>(((arg_2.c.x >> (66850u % 32u)) << (abs(34178u) % 32u)) != 47848i, true, arg_2.b.x, any(!(!vec4<bool>(arg_1.x, true, true, false)))));
    let var_1 = Struct_2(global1.a, Struct_1(global1.b.a, arg_2.b, global1.a.c));
    let var_2 = global0.a.yx;
    var var_3 = Struct_2(arg_2, global1.a);
    var var_4 = _wgslsmith_f_op_f32(sign(-418f));
    return -21909i;
}

fn func_2() -> Struct_1 {
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(441f, global0.a.x, global0.a.x, -1038f))))), ~(~countOneBits(global0.b)));
    let var_0 = vec4<bool>(true, all(!vec3<bool>(global1.a.a.x > 6059u, all(vec3<bool>(global1.b.b.x, true, false)), false)), 626f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + global0.a.x), true);
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2307f * global0.a.x)), -607f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1475f))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1664f, _wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_f_op_f32(-881f * 189f))))), vec2<i32>(~(-(~1i)), func_3(_wgslsmith_f_op_f32(307f * 1022f), var_0.xwx, Struct_1(global1.b.a, global1.b.b, max(vec4<i32>(global1.a.c.x, global0.b.x, global0.b.x, global0.b.x), vec4<i32>(global0.b.x, global0.b.x, -22202i, -2147483647i))))));
    var var_1 = global1.b;
    var var_2 = Struct_3(global0.a.wxy, global0.a.zww, vec3<i32>(-(i32(-1i) * -25146i), _wgslsmith_div_i32(-2147483647i, var_1.c.x | global0.b.x), abs(_wgslsmith_dot_vec2_i32(global1.b.c.xx, global1.a.c.xw))) ^ reverseBits((vec3<i32>(1i, 28979i, 0i) ^ var_1.c.yyy) << (vec3<u32>(u_input.a, 50119u, 2395u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-global0.a.x), Struct_2(global1.a, Struct_1(reverseBits(vec4<u32>(8880u, u_input.a, var_1.a.x, var_1.a.x)) ^ global1.b.a, !var_1.b, _wgslsmith_add_vec4_i32(~global1.b.c, -vec4<i32>(global1.a.c.x, 8665i, -15784i, global0.b.x)))));
    return Struct_1(min(vec4<u32>(~72553u, global1.b.a.x, _wgslsmith_dot_vec4_u32(global1.a.a, ~var_1.a), min(var_1.a.x & var_1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(9970u, global1.a.a.x), global1.a.a.xx))), var_1.a), !(!var_1.b), -(~(var_2.e.a.c ^ vec4<i32>(var_1.c.x, var_2.c.x, global1.b.c.x, var_1.c.x)) ^ global1.a.c));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<bool>) -> vec3<u32> {
    global1 = Struct_2(global1.b, func_2());
    let var_0 = false;
    let var_1 = Struct_2(global1.a, global1.b);
    global1 = var_1;
    return vec3<u32>(~(~(var_1.a.a.x << (0u % 32u))) ^ 0u, abs(reverseBits(_wgslsmith_div_u32(var_1.a.a.x, global1.a.a.x))) | (var_1.b.a.x | 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.b.a.yw, vec2<u32>(1u, 1u)), vec2<u32>(min(var_1.b.a.x, u_input.a), ~(~0u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: bool) -> Struct_4 {
    let var_0 = func_2();
    global1 = arg_1;
    let var_1 = ~(vec4<u32>(_wgslsmith_mod_u32(~1u, 3939u), abs(var_0.a.x), _wgslsmith_mod_u32(~var_0.a.x, _wgslsmith_mult_u32(0u, global1.a.a.x)), func_1(select(vec3<bool>(var_0.b.x, false, true), vec3<bool>(global1.a.b.x, true, true), true), arg_1.a.c.x, select(vec2<bool>(true, arg_1.a.b.x), vec2<bool>(global1.b.b.x, true), arg_1.a.b)).x) ^ var_0.a);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -180f, 348f)), vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -979f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.a.x, 766f)), 154f))), ~firstTrailingBit(-vec3<i32>(var_0.c.x, global1.a.c.x, var_0.c.x) ^ vec3<i32>(arg_2.x, -1545i, global1.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), arg_1);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -850f))))));
    return Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d, 482f, var_2.d, 907f) - vec4<f32>(var_2.a.x, 721f, 713f, -2368f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))), func_2().c.yw >> (var_1.wy % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_div_vec3_u32(global1.a.a.xzx, vec3<u32>(~4294967295u, _wgslsmith_add_u32(7088u, 27057u), 0u) & abs(func_1(vec3<bool>(global1.a.b.x, true, false), -37352i, vec2<bool>(global1.a.b.x, false)))), Struct_2(func_2(), Struct_1(vec4<u32>(global1.b.a.x, 0u, 17606u, global1.a.a.x) | vec4<u32>(u_input.a, 4294967295u, 0u, 13918u), vec2<bool>(true, global1.b.a.x > 12513u), -vec4<i32>(global1.a.c.x, -2147483647i, -14972i, 21415i))), select(~select(vec3<i32>(global1.a.c.x, global1.a.c.x, global0.b.x) & vec3<i32>(-1i, 2147483647i, -6738i), vec3<i32>(global1.a.c.x, global1.a.c.x, 54797i) | global1.a.c.xzz, true), global1.a.c.zxz, vec3<bool>(all(select(vec4<bool>(false, true, true, global1.b.b.x), vec4<bool>(global1.a.b.x, true, global1.a.b.x, false), vec4<bool>(global1.b.b.x, global1.a.b.x, global1.a.b.x, true))), !(!global1.b.b.x), global1.a.b.x)), any(vec3<bool>(_wgslsmith_f_op_f32(global0.a.x * global0.a.x) < -1678f, !any(vec2<bool>(global1.a.b.x, global1.b.b.x)), !all(global1.a.b))));
    global0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.x - -866f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-501f))))), global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)), -min(func_4(max(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(1u, 1u, 1u)), Struct_2(Struct_1(global1.a.a, global1.b.b, global1.a.c), Struct_1(vec4<u32>(4294967295u, global1.a.a.x, u_input.a, u_input.a), vec2<bool>(false, global1.a.b.x), vec4<i32>(global1.b.c.x, global1.a.c.x, global1.a.c.x, 15184i))), global1.b.c.wzw, false).b, vec2<i32>(global0.b.x, global0.b.x)));
    let var_0 = all(global1.b.b);
    global1 = Struct_2(global1.a, global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(-9182i), reverseBits(4909i), _wgslsmith_f_op_vec2_f32(global0.a.wy * _wgslsmith_f_op_vec2_f32(-global0.a.yy)), _wgslsmith_f_op_vec2_f32(trunc(global0.a.yw)));
}

