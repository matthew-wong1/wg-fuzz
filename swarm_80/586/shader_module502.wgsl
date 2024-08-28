struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: bool,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_3) -> u32 {
    var var_0 = true;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(253f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1687f)))), all(vec3<bool>(arg_0, arg_3.d.d.x, arg_2))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-444f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2190f * -2012f)) - -419f), 1f);
    var var_2 = (_wgslsmith_add_u32(~_wgslsmith_mult_u32(4294967295u, u_input.d), ~4294967295u) & _wgslsmith_add_u32(max(max(u_input.d, arg_3.b.a), _wgslsmith_mod_u32(13003u, u_input.d)), ~4294967295u)) < 76065u;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -1224f, 266f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366f * var_1.x) - _wgslsmith_div_f32(447f, 707f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x))))));
    return 47212u;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = Struct_3(~max(vec3<u32>(32571u, 0u, reverseBits(89311u)), vec3<u32>(_wgslsmith_clamp_u32(arg_0, 49431u, 3257u), ~2657u, min(1u, u_input.b.x))), Struct_2(select(arg_0, 17829u, all(vec3<bool>(false, false, true)))), ~1u, Struct_1(~arg_0, ~0u, arg_0, select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), all(vec3<bool>(false, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true)), arg_1.x & (arg_0 & ~u_input.d)));
    let var_1 = Struct_1(11644u, 1u, ~(~15806u), var_0.d.d, arg_1.x);
    var var_2 = Struct_4(Struct_2(4294967295u), var_0);
    var_2 = Struct_4(Struct_2(~1u), var_2.b);
    var_2 = Struct_4(Struct_2(var_1.b), var_2.b);
    return vec2<f32>(711f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(945f + _wgslsmith_f_op_f32(-664f - _wgslsmith_f_op_f32(max(-1000f, -1000f)))) + -1015f));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_2(u_input.d);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(783f, 453f), vec2<f32>(-2628f, 270f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_4(func_3(true, vec3<i32>(-1262i, -2147483647i, 2147483647i), arg_0.x, Struct_3(u_input.b.wxy, Struct_2(var_0.a), 1u, Struct_1(21789u, 55503u, 0u, arg_0, var_0.a))), _wgslsmith_mult_vec3_u32(u_input.b.zwy, u_input.b.wxx))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1910f, 378f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1801f, 207f) + vec2<f32>(1314f, -414f)), true))))));
    var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + 379f), var_1.x)));
    var_0 = Struct_2(0u);
    var_0 = Struct_2(u_input.b.x);
    return _wgslsmith_dot_vec2_i32(arg_1, -(reverseBits(arg_1) << (min(u_input.b.wx, vec2<u32>(var_0.a, u_input.d)) % vec2<u32>(32u)))) << (var_0.a % 32u);
}

fn func_1(arg_0: f32) -> vec4<f32> {
    var var_0 = min(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(41135i, u_input.a, 55655i)), vec3<i32>(u_input.c, -26866i ^ u_input.a, func_2(vec2<bool>(true, false), vec2<i32>(-42554i, u_input.c)))), select(countOneBits(-vec3<i32>(u_input.a, u_input.c, -29212i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.c, u_input.c, u_input.a), vec3<i32>(u_input.c, 2147483647i, u_input.c), select(vec3<i32>(-2147483647i, 34833i, u_input.a), vec3<i32>(-2147483647i, u_input.c, u_input.c), vec3<bool>(false, false, false))), !any(vec3<bool>(true, true, false)))) ^ vec3<i32>(-2147483647i, _wgslsmith_add_i32(~2147483647i | firstTrailingBit(u_input.c), u_input.a), u_input.a);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1472f), arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f - arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1050f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -935f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, 453f, -1000f, arg_0))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f * arg_0), 1354f, -1382f, _wgslsmith_f_op_f32(-1000f + -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(1408f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -405f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1000f) * vec2<f32>(264f, var_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 580f) * vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1241f))))));
    let var_2 = Struct_1(countOneBits(u_input.d), _wgslsmith_add_u32(u_input.d, 0u), 43324u, select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true)), true), !vec2<bool>(all(vec2<bool>(false, false)), true), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))), _wgslsmith_dot_vec2_u32(u_input.b.yw, vec2<u32>(reverseBits(_wgslsmith_clamp_u32(4294967295u, u_input.d, 4294967295u)), ~abs(u_input.b.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(475f, -166f), vec2<f32>(var_1.x, var_1.x), var_2.d.x))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_1(1349f));
    let var_4 = _wgslsmith_mult_vec2_u32(select(u_input.b.xz, u_input.b.wz, true) & vec2<u32>(24824u, ~abs(4294967295u)), ~vec2<u32>(var_2.e, var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-20703i, 1800i, 0i)), vec3<i32>(u_input.a, u_input.a, u_input.a)), select(countOneBits(vec3<i32>(28799i, u_input.c, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.a), vec3<i32>(-2147483647i, -2147483647i, 0i), vec3<i32>(u_input.a, 1i, 2147483647i)), vec3<bool>(false, true, var_2.d.x)), -(vec3<i32>(u_input.a, 37725i, u_input.a) >> (u_input.b.xzw % vec3<u32>(32u)))), vec3<i32>(u_input.c, -min(-8586i, u_input.c), _wgslsmith_mult_i32(reverseBits(2147483647i), _wgslsmith_sub_i32(-7860i, 0i))), vec3<i32>(_wgslsmith_sub_i32(1i, u_input.a), u_input.a, ~(~u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f)), -1149f, -1000f, var_0));
}

