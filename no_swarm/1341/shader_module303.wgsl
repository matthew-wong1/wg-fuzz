struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(vec4<bool>(true, true, false, false)), Struct_4(vec4<bool>(false, false, true, true)), Struct_4(vec4<bool>(false, true, true, true)), Struct_4(vec4<bool>(false, true, true, true)), Struct_4(vec4<bool>(true, true, true, true)), Struct_4(vec4<bool>(true, false, false, true)), Struct_4(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(true, false, true, true)), Struct_4(vec4<bool>(true, false, true, false)), Struct_4(vec4<bool>(false, true, false, false)), Struct_4(vec4<bool>(true, true, false, false)), Struct_4(vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(false, true, false, false)), Struct_4(vec4<bool>(true, false, true, false)), Struct_4(vec4<bool>(false, true, true, true)), Struct_4(vec4<bool>(false, false, true, true)), Struct_4(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(true, false, true, true)), Struct_4(vec4<bool>(true, true, false, true)), Struct_4(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(true, true, true, false)), Struct_4(vec4<bool>(true, true, false, true)), Struct_4(vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(true, false, true, false)), Struct_4(vec4<bool>(true, false, false, true)), Struct_4(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(true, true, true, false)), Struct_4(vec4<bool>(false, false, true, true)));

var<private> global2: Struct_4 = Struct_4(vec4<bool>(false, true, true, false));

var<private> global3: array<Struct_5, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_4, arg_3: vec2<i32>) -> bool {
    let var_0 = ~(-arg_3.x);
    let var_1 = vec4<i32>(_wgslsmith_add_i32(arg_3.x, -25319i), ~(-2147483647i), -1i, global0.x);
    let var_2 = abs(vec3<i32>(-1i) * -min(~vec3<i32>(38924i, global0.x, global0.x), select(var_1.zzw, var_1.wxw, arg_2.a.x)));
    var var_3 = ~0u;
    global1 = array<Struct_4, 28>();
    return global2.a.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    global0 = ~arg_1.d.zwx;
    var var_0 = arg_1;
    var var_1 = vec4<bool>(true, func_2(vec3<f32>(879f, _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(513f - -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b.x))) + arg_0.x), global1[_wgslsmith_index_u32(arg_1.a.x, 28u)], var_0.d.zw), true, 70380u != ~arg_1.a.x);
    let var_2 = global1[_wgslsmith_index_u32(~4294967295u, 28u)];
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.b.xy + _wgslsmith_f_op_vec2_f32(exp2(arg_0.xz))), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-162f + arg_1.b.x) - 655f)));
    return -347f;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = all(global2.a);
    var var_1 = global2.a.x;
    let var_2 = global3[_wgslsmith_index_u32(0u, 1u)];
    let var_3 = _wgslsmith_f_op_f32(func_1(arg_0.b, arg_2.b));
    global0 = _wgslsmith_mult_vec3_i32(var_2.a.d.xwz, ~vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a), var_2.a.d.zz, arg_2.b.d.zz), var_2.a.d.yz | arg_2.b.d.xx), _wgslsmith_clamp_i32(arg_2.a | -61948i, abs(global0.x), _wgslsmith_dot_vec3_i32(var_2.a.d.zxx, vec3<i32>(-2147483647i, 1i, arg_2.a))), -max(var_2.a.d.x, u_input.b)));
    return var_2.a;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_3(-(~_wgslsmith_mult_i32(~u_input.a, ~u_input.b)), arg_2);
    return countOneBits(countOneBits(abs(0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_5, 1>();
    let var_0 = Struct_4(global2.a);
    global3 = array<Struct_5, 1>();
    var var_1 = _wgslsmith_clamp_i32(global0.x, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(750f, 153f) - _wgslsmith_f_op_f32(abs(145f)))), ~max(vec4<i32>(global0.x, u_input.a, global0.x, u_input.b), vec4<i32>(-2147483647i, u_input.a, u_input.b, u_input.a)) >> (vec4<u32>(~1565u, max(0u, 6581u), _wgslsmith_sub_u32(54862u, 0u), 0u << (0u % 32u)) % vec4<u32>(32u)), func_3(Struct_1(_wgslsmith_f_op_f32(func_1(vec3<f32>(-359f, 274f, -1517f), Struct_2(vec2<u32>(79866u, 15583u), vec2<f32>(-1055f, 580f), Struct_1(912f, vec3<f32>(-1461f, 315f, -482f), 667f), vec4<i32>(global0.x, -1i, u_input.b, global0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1499f, -417f, 1540f) - vec3<f32>(-467f, -406f, -1772f)), _wgslsmith_f_op_f32(max(-657f, 1148f))), abs(-global0.x), Struct_3(global0.x, Struct_2(vec2<u32>(0u, 46085u), vec2<f32>(742f, -1324f), Struct_1(507f, vec3<f32>(308f, 641f, 583f), 516f), vec4<i32>(2147483647i, -1067i, u_input.a, global0.x))))), firstTrailingBit(0i));
    global2 = var_0;
    var_1 = ~1i;
    global2 = Struct_4(select(global2.a, global2.a, true | var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(80436u, 36495u, 37223u, 54676u)) & vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(109862u, 0u, 62521u)), 4294967295u, ~32967u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(10275u, 1u, 28940u, 24681u), vec4<u32>(1u, 66411u, 5969u, 106334u)), 4294967295u, ~0u, ~0u)), ~vec4<u32>(reverseBits(11447u), abs(43304u), 58694u, ~40584u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(42410u, 3267u, 4294967295u, 17959u), max(vec4<u32>(16157u, 0u, 4294967295u, 20870u), vec4<u32>(62872u, 0u, 4294967295u, 782u)), firstTrailingBit(vec4<u32>(0u, 4294967295u, 0u, 4294967295u))), vec4<u32>(56627u, 78782u, 1u, 4294967295u) | select(vec4<u32>(0u, 4294967295u, 40553u, 4294967295u), vec4<u32>(4294967295u, 57990u, 0u, 0u), true)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(35602u, 0u, 12468u), vec3<u32>(18398u, 0u, 4294967295u)), 0u), _wgslsmith_mod_u32(1u, reverseBits(_wgslsmith_mod_u32(1u, 4294967295u)))), _wgslsmith_f_op_f32(f32(-1f) * -448f));
}

