struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<f32> = vec3<f32>(2658f, -2071f, 871f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = u_input.b.x;
    var var_1 = vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(~13851u, ~arg_1.b, 33001u & u_input.a), ~vec3<u32>(countOneBits(29969u), _wgslsmith_dot_vec2_u32(arg_2.wx, vec2<u32>(arg_1.a.a.c.x, 1u)), _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(30024u, 4294967295u, 71676u, 1u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.b, 4294967295u), ~arg_2.zx), ~12407u, abs(u_input.a)), arg_2.yxw));
    var var_2 = Struct_4(arg_1.a, 4294967295u >> (min(_wgslsmith_div_u32(7865u, _wgslsmith_mult_u32(arg_1.a.a.c.x, arg_2.x)), ~(~1u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(888f, _wgslsmith_f_op_f32(539f + -504f)) + 426f)), reverseBits(i32(-1i) * -1i));
    var_1 = vec3<u32>(1u, ~_wgslsmith_mult_u32(13409u >> (arg_2.x % 32u), arg_1.b) << (0u % 32u), arg_1.a.a.c.x);
    var var_3 = ~4193u;
    return vec3<i32>(((_wgslsmith_add_i32(29419i, var_2.a.a.b.x) >> (690u % 32u)) & ~(-24404i)) >> (arg_1.a.a.c.x % 32u), -1i, arg_1.d);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = !arg_3.d.x;
    let var_1 = vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~_wgslsmith_div_u32(arg_3.c.x, 0u), firstTrailingBit(~u_input.a), 1u), select(~(~vec4<u32>(0u, 71070u, arg_3.c.x, 3424u)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(65870u, arg_3.c.x, 4294967295u, u_input.a), vec4<u32>(u_input.a, arg_3.c.x, 0u, arg_3.c.x)), firstLeadingBit(vec4<u32>(9624u, 52563u, 263u, u_input.a))), any(!arg_3.d))), _wgslsmith_div_u32(reverseBits(101935u), _wgslsmith_mod_u32(~u_input.a | ~u_input.a, 4294967295u)), 0u ^ _wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, arg_3.c.x, arg_3.c.x), arg_3.c.x, 0u)));
    var var_2 = select(arg_3.d, !arg_3.d, arg_3.d);
    var var_3 = Struct_3(arg_3.d);
    var_3 = Struct_3(select(!arg_3.d, !arg_3.d, !(!(arg_1 > arg_3.a.x))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-360f)), -2063f, -1383f)))));
}

fn func_2() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(~func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-303f, global1.x)), Struct_4(Struct_2(Struct_1(vec2<f32>(-565f, -304f), vec2<i32>(-1i, u_input.b.x), vec2<u32>(u_input.a, 1u), vec4<bool>(true, true, false, false)), vec4<f32>(global1.x, -1112f, global1.x, 482f)), 1u, 698f, global0.x), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), Struct_3(vec4<bool>(false, false, false, true))), global1.x, global0.x, Struct_1(global1.zy, vec2<i32>(_wgslsmith_mult_i32(0i, u_input.b.x), _wgslsmith_mod_i32(global0.x, 2147483647i)), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(72447u, 147016u)), ~vec2<u32>(u_input.a, 1u)), vec4<bool>(true, true, all(vec4<bool>(true, false, false, false)), true)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2121f, global1.x, 135f), vec3<f32>(2179f, global1.x, global1.x), true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1318f, 695f, global1.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2154f, global1.x, -1758f) - vec3<f32>(global1.x, -763f, global1.x))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, 329f, global1.x)))))));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), vec3<f32>(global1.x, global1.x, 539f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1253f, -642f)), vec3<f32>(-2602f, global1.x, 575f)))));
    let var_0 = select(abs(~(vec3<u32>(35358u, u_input.a, u_input.a) ^ (vec3<u32>(u_input.a, 0u, u_input.a) | vec3<u32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_mult_vec3_u32(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u))), vec3<u32>(select(~25425u, 0u, all(vec3<bool>(false, true, false))), ~0u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, u_input.a), 1u, 0u))), any(vec2<bool>(true, any(vec2<bool>(false, false)))) || true);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-460f)) * global1.x)) - global1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1998f), global1.x, true)))));
    let var_1 = vec3<i32>(~firstLeadingBit(-(-6531i | global0.x)), ((_wgslsmith_add_i32(global0.x, 2147483647i) & _wgslsmith_add_i32(global0.x, arg_0.x)) << (1u % 32u)) << (~u_input.a % 32u), arg_0.x);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, -558f))) + vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -1737f, 3142f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1285f, global1.x, -2356f)), true)), select(false, true, all(vec2<bool>(true, false)))))));
    return ~abs(~_wgslsmith_mult_i32(1i, ~global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-262f - global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -698f)), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    let var_0 = vec4<u32>(~(~0u), 4294967295u, reverseBits(50126u), ~select(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(0u, u_input.a), true)) | select(vec4<u32>(0u >> (u_input.a % 32u), _wgslsmith_sub_u32(4294967295u, u_input.a), u_input.a, u_input.a) ^ select(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 31767u, u_input.a), global1.x == 319f), _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a, 1u, u_input.a, 9824u)), select(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u) >> (vec4<u32>(0u, 22023u, 42048u, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), select(true, true, true))), vec4<bool>(true, true, true, true));
    let var_1 = global1.zz;
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, -7728i, global0.x), vec4<i32>(u_input.b.x, 28198i, global0.x, u_input.b.x))) & global0.x, global0.x << (var_0.x % 32u), _wgslsmith_sub_i32(2147483647i, 13493i), 457i), _wgslsmith_sub_vec4_i32(-vec4<i32>(global0.x, 26832i, -global0.x, func_1(vec4<i32>(84098i, u_input.b.x, -1i, 14775i))), vec4<i32>(max(-global0.x, u_input.b.x & -46250i), max(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -2995i, -12931i), global0.zzz)), global0.x, 0i & max(global0.x, 1i))));
    var var_2 = !(!(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true)));
    let var_3 = true | var_2.x;
    let var_4 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_2()).yx, -select(u_input.b.yx, vec2<i32>(u_input.b.x, -6106i), var_2.yw), ~(~var_0.zy), vec4<bool>(select(var_3, var_3, var_3), 51086u <= u_input.a, true, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-861f))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + global1.x)), _wgslsmith_f_op_f32(-global1.x))), ~1u, -628f, global0.x >> (firstTrailingBit(57903u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(global1.yz, var_4.d, var_0.zy);
}

