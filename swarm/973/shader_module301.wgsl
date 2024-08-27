struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, true), vec4<u32>(44689u, 99590u, 0u, 7544u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>) -> u32 {
    global0 = Struct_2(select(select(vec2<bool>(arg_0.x, select(false, false, global0.a.x)), !(!global0.a), !(!global0.a.x)), select(select(!vec2<bool>(arg_0.x, global0.a.x), !global0.a, !arg_0.yz), global0.a, !all(arg_0)), !vec2<bool>(global0.a.x, global0.a.x)), ~vec4<u32>(~arg_1.x, ~arg_1.x | ~u_input.b.x, 1u, _wgslsmith_add_u32(u_input.b.x, global0.b.x)));
    var var_0 = firstTrailingBit(global0.b.wz);
    global0 = Struct_2(select(vec2<bool>(!(!arg_0.x), any(vec2<bool>(global0.a.x, arg_0.x))), !arg_0.zy, true), vec4<u32>(~var_0.x, select(global0.b.x, 10865u, !arg_0.x), _wgslsmith_sub_u32((global0.b.x >> (1u % 32u)) ^ max(38618u, arg_1.x), ~(~4294967295u)), arg_1.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-901f - -2056f) - _wgslsmith_f_op_f32(sign(-847f))), _wgslsmith_f_op_f32(628f + _wgslsmith_f_op_f32(f32(-1f) * -425f)), _wgslsmith_f_op_f32(497f - _wgslsmith_f_op_f32(max(293f, 1092f))))), vec3<f32>(-312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f))), _wgslsmith_f_op_f32(998f + -1000f))));
    let var_2 = var_1.x;
    return global0.b.x << (u_input.c.x % 32u);
}

fn func_2() -> Struct_2 {
    var var_0 = global0.b.x;
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1843i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), -vec3<i32>(~u_input.a.x, ~0i, -u_input.a.x)), max(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(~u_input.a.x, 33634i), u_input.a.x), select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -712i), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 21315i, -57660i), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), false) | (min(vec3<i32>(-1i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)) << (~global0.b.wxx % vec3<u32>(32u)))));
    let var_2 = Struct_1(min(select(_wgslsmith_mod_u32(u_input.b.x << (129751u % 32u), u_input.c.x), global0.b.x, all(vec3<bool>(true, global0.a.x, true)) || false), _wgslsmith_sub_u32(global0.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, global0.b.x), vec2<u32>(global0.b.x, 4294967295u)), select(u_input.b.zy, global0.b.zz, false)))), _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, global0.b.x), vec2<u32>(u_input.c.x, 4294967295u)) >> (global0.b.wz % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 74044u, u_input.b.x, u_input.c.x), global0.b | vec4<u32>(4294967295u, 22168u, global0.b.x, u_input.b.x)), func_3(vec3<bool>(global0.a.x, global0.a.x, false), global0.b) ^ _wgslsmith_sub_u32(4294967295u, global0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -958f), max(abs((global0.b.xy << (u_input.c.yz % vec2<u32>(32u))) ^ ~u_input.c.zy), vec2<u32>(~countOneBits(global0.b.x), firstLeadingBit(51021u))), true);
    var var_3 = var_2;
    global0 = Struct_2(select(!select(global0.a, global0.a, global0.a), global0.a, var_3.e || global0.a.x), ~abs(global0.b));
    return Struct_2(global0.a, ~(global0.b << (vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, global0.b.x, 4294967295u), 50642u, max(4294967295u, 0u), func_3(vec3<bool>(global0.a.x, true, var_2.e), vec4<u32>(1u, var_3.d.x, u_input.b.x, var_3.b.x))) % vec4<u32>(32u))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = -600f;
    global0 = func_2();
    var var_1 = 1u;
    var_1 = _wgslsmith_mult_u32(abs(12313u), arg_0);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1019f + 500f)) * 244f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(717f + var_0), _wgslsmith_f_op_f32(var_0 - var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 572f) + var_0)))));
    return Struct_3(u_input.b.x, -13277i, Struct_1(~0u, u_input.b.zz >> (vec2<u32>(~0u, arg_0) % vec2<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x - var_2.x))), -587f)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(15098u, 0u), vec2<u32>(global0.b.x, 2514u)) << (abs(global0.b.x) % 32u), u_input.b.x), false), abs(u_input.b.x), !vec2<bool>(!all(vec2<bool>(global0.a.x, false)), true || global0.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> u32 {
    global0 = arg_0;
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-286f, -1227f, arg_1.c.c, arg_1.c.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, arg_1.c.c, arg_1.c.c, arg_2)))))))));
    global0 = arg_0;
    global0 = arg_0;
    global0 = func_2();
    return ~(~global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(!vec2<bool>(global0.a.x, global0.a.x), min(~vec4<u32>(42920u, u_input.b.x, ~global0.b.x, u_input.c.x), global0.b));
    let var_0 = u_input.b.x;
    global0 = Struct_2(vec2<bool>(true, true), vec4<u32>(~func_4(Struct_2(global0.a, vec4<u32>(var_0, var_0, 4294967295u, var_0)), func_1(1u), -332f), ~4294967295u ^ u_input.c.x, firstTrailingBit(_wgslsmith_div_u32(~var_0, ~global0.b.x)), ~u_input.b.x));
    global0 = func_2();
    global0 = Struct_2(select(select(select(vec2<bool>(global0.a.x, global0.a.x), !vec2<bool>(global0.a.x, global0.a.x), false), global0.a, true), select(func_2().a, func_1(1u).e, global0.a.x), !(!(!vec2<bool>(false, global0.a.x)))), abs(vec4<u32>(1u, func_1(~var_0).a, _wgslsmith_div_u32(~global0.b.x, ~18613u), global0.b.x)));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -322f, 1646f, 1851f) + vec4<f32>(376f, -1000f, 1137f, 175f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(683f, 258f, 627f, 1031f))), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u), abs(67153i | u_input.a.x), abs(min(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), ~(-40383i) & u_input.a.x)));
}

