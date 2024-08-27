struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 28u)];
    var var_1 = var_0.a;
    var var_2 = !(!var_0.b.x);
    var var_3 = _wgslsmith_div_i32(arg_0.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-20722i, arg_0.x) ^ 21031i, 2325i)) >> (1u % 32u);
    let var_4 = _wgslsmith_sub_vec2_i32(~((arg_0 ^ ~vec2<i32>(-43368i, arg_0.x)) & ~_wgslsmith_mult_vec2_i32(arg_0, arg_0)), arg_0);
    return vec4<bool>(var_0.b.x, true, false, all(var_0.b.xz));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 1341f), vec2<bool>(true, all(func_3(countOneBits(vec2<i32>(-2147483647i, 18745i))))), Struct_1(~countOneBits(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 0u)) ^ countOneBits(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, max(4294967295u, 36321u), ~u_input.a.x, ~u_input.a.x), vec4<u32>(10307u, u_input.a.x, u_input.a.x, u_input.a.x) >> (countOneBits(vec4<u32>(1u, 4294967295u, 85351u, u_input.a.x)) % vec4<u32>(32u)))));
    global0 = array<Struct_3, 28>();
    let var_1 = Struct_2(var_0.a, var_0.b, Struct_1(var_0.c.a), Struct_1(vec4<u32>(~var_0.c.a.x, u_input.a.x & u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), u_input.a.x) << (vec4<u32>(11540u, abs(u_input.a.x), _wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_dot_vec4_u32(var_0.c.a, var_0.d.a)) % vec4<u32>(32u))));
    let var_2 = Struct_4(select(firstTrailingBit(-abs(vec2<i32>(1i, -16249i))), vec2<i32>(~_wgslsmith_mult_i32(-1i, 0i), _wgslsmith_mult_i32(abs(1i), 0i)), true));
    var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a + 182f))))))), vec2<bool>(true, !all(!var_0.b)), var_0.d, Struct_1(vec4<u32>(1u, _wgslsmith_div_u32(abs(var_1.c.a.x), ~28853u), 1u, var_1.c.a.x)));
    return Struct_1(var_1.c.a);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_2 {
    global0 = array<Struct_3, 28>();
    global0 = array<Struct_3, 28>();
    let var_0 = i32(-1i) * -arg_1.x;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(642f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-870f, -2766f, false)), -193f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<bool>(true, true), func_2(), Struct_1(~(~func_2().a)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -589f), select(!var_1.b, var_1.b, select(var_1.b.x, var_1.b.x, !(!var_1.b.x))), func_2(), func_2());
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(461f)))), _wgslsmith_f_op_f32(-var_1.a))), vec2<bool>(!all(vec2<bool>(true, var_1.b.x)) || (all(vec3<bool>(true, var_1.b.x, var_1.b.x)) && all(vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x))), all(vec3<bool>(false, var_1.b.x, all(vec2<bool>(var_1.b.x, var_1.b.x))))), func_2(), Struct_1(vec4<u32>(u_input.a.x, countOneBits(0u) | reverseBits(u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_1.c.a.x, 0u, var_1.d.a.x), 1u), u_input.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> u32 {
    let var_0 = arg_0;
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), func_1(Struct_4(arg_2.zw), arg_2.yw).a < _wgslsmith_f_op_f32(117f * arg_3))), -1209f, var_0.a));
    var_2 = vec3<f32>(arg_0.a, -384f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1, 1477f)), 712f));
    global0 = array<Struct_3, 28>();
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2699f))) * -511f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2004f, 575f)), 1530f))));
    var var_1 = reverseBits(_wgslsmith_mult_u32(21418u & _wgslsmith_dot_vec2_u32(u_input.a, reverseBits(vec2<u32>(0u, u_input.a.x))), _wgslsmith_clamp_u32(0u, ~36336u, func_4(func_1(Struct_4(vec2<i32>(1i, 1i)), vec2<i32>(2147483647i, 0i)), var_0.x, vec4<i32>(-2147483647i, 52622i, -29093i, -13018i), _wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = Struct_2(var_0.x, !func_1(Struct_4(vec2<i32>(1i, 1i)), _wgslsmith_sub_vec2_i32(~vec2<i32>(1i, -24937i), vec2<i32>(1i, 1i))).b, func_1(Struct_4(-firstTrailingBit(vec2<i32>(15788i, 0i))), vec2<i32>(1i, 1i)).d, Struct_1(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, 61353u, u_input.a.x), select(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), true)))));
    global0 = array<Struct_3, 28>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.a, 133f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1847f, var_0.x) - vec2<f32>(var_0.x, -1056f)), var_2.b.x)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.a, -206f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(ceil(147f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -198f))) - 1583f)));
    let var_4 = min(~var_2.c.a.x, max(~_wgslsmith_add_u32(1u, var_2.d.a.x), func_1(Struct_4(vec2<i32>(-32978i, -2147483647i)), vec2<i32>(6524i, 76210i)).d.a.x | 4294967295u));
    var var_5 = ((func_1(Struct_4(vec2<i32>(-1i, -2147483647i)), vec2<i32>(1i, 1i)).b.x && false) || true) && (_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(var_2.d.a, vec4<u32>(0u, var_2.c.a.x, var_2.c.a.x, var_4)), firstLeadingBit(var_2.c.a.x)) >= (4294967295u << (_wgslsmith_mult_u32(var_2.c.a.x ^ u_input.a.x, u_input.a.x) % 32u)));
    global0 = array<Struct_3, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.c.a, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.c.a.xwy, func_1(Struct_4(vec2<i32>(13945i, 30129i)), vec2<i32>(2147483647i, -37776i)).d.a.www), var_2.c.a.wzz | (var_2.d.a.wzx | var_2.c.a.xwz)), ~1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, 0u) << (vec3<u32>(65589u, 4294967295u, 6830u) % vec3<u32>(32u))), func_1(Struct_4(vec2<i32>(-1i, -24332i)), vec2<i32>(38365i, 34259i)).d.a.ywz)));
}

