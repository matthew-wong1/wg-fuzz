struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 25>;

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec4<u32>(13391u, 0u, 4294967295u, 43747u), Struct_1(false, vec4<bool>(false, false, true, true)), Struct_1(true, vec4<bool>(true, false, true, true))), Struct_2(vec4<u32>(0u, 0u, 1u, 4294967295u), Struct_1(false, vec4<bool>(true, true, false, false)), Struct_1(false, vec4<bool>(true, false, false, true))), Struct_2(vec4<u32>(11440u, 0u, 4294967295u, 34031u), Struct_1(false, vec4<bool>(true, false, true, true)), Struct_1(true, vec4<bool>(false, true, false, false))), Struct_2(vec4<u32>(4294967295u, 87906u, 1u, 4294967295u), Struct_1(false, vec4<bool>(false, false, false, true)), Struct_1(true, vec4<bool>(false, true, false, true))), Struct_2(vec4<u32>(25388u, 124656u, 1u, 1u), Struct_1(true, vec4<bool>(false, true, false, true)), Struct_1(false, vec4<bool>(true, false, true, true))), Struct_2(vec4<u32>(73185u, 42372u, 13348u, 20525u), Struct_1(false, vec4<bool>(false, false, true, true)), Struct_1(true, vec4<bool>(true, false, false, false))), Struct_2(vec4<u32>(95333u, 43454u, 32360u, 0u), Struct_1(false, vec4<bool>(false, true, true, false)), Struct_1(false, vec4<bool>(false, true, true, true))), Struct_2(vec4<u32>(1u, 44069u, 64529u, 86679u), Struct_1(false, vec4<bool>(false, false, false, false)), Struct_1(true, vec4<bool>(true, false, false, false))), Struct_2(vec4<u32>(93744u, 1u, 45735u, 0u), Struct_1(true, vec4<bool>(true, false, true, true)), Struct_1(false, vec4<bool>(true, false, true, false))), Struct_2(vec4<u32>(2178u, 0u, 4294967295u, 0u), Struct_1(false, vec4<bool>(true, true, true, false)), Struct_1(false, vec4<bool>(false, false, true, false))), Struct_2(vec4<u32>(4294967295u, 21833u, 77525u, 11786u), Struct_1(false, vec4<bool>(false, false, true, true)), Struct_1(false, vec4<bool>(true, false, false, false))));

var<private> global3: array<bool, 8> = array<bool, 8>(true, true, false, true, true, false, false, true);

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 59923u, 27054u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(103161u >> (select(1u, 1u, false) % 32u), 4294967295u), 25u)], vec4<bool>(!all(select(global0.c.b, global0.b.b, false)), false, !all(!global0.c.b.ywz), false));
    global3 = array<bool, 8>();
    let var_1 = Struct_1((_wgslsmith_mult_i32(~u_input.c, -22716i) > -(~u_input.c)) == (true & all(select(vec3<bool>(false, arg_0.c.a, global1[_wgslsmith_index_u32(u_input.d.x, 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(global0.a.x, 25u)], false, global3[_wgslsmith_index_u32(917u, 8u)]), vec3<bool>(true, var_0.a, true)))), !var_0.b);
    let var_2 = 1019f;
    global1 = array<bool, 25>();
    return ~(u_input.d.x | global4.x);
}

fn func_1() -> Struct_2 {
    global4 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, global0.a.x, global0.a.x) >> (global0.a.www % vec3<u32>(32u)), reverseBits(vec3<u32>(global4.x, u_input.a, global0.a.x) << (global0.a.wzx % vec3<u32>(32u)))), vec3<u32>(global4.x, ~(~u_input.a), ~global0.a.x) << (global0.a.zwy % vec3<u32>(32u)));
    let var_0 = select(reverseBits(global0.a.zxw), ~vec3<u32>(4294967295u, func_2(Struct_2(vec4<u32>(global0.a.x, 26371u, global0.a.x, global0.a.x), global0.c, global0.b)), global4.x), true);
    var var_1 = firstTrailingBit(~var_0.x);
    let var_2 = vec3<i32>(u_input.b, u_input.c, -u_input.c);
    global0 = global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, global4.x), vec2<u32>(0u, 2053u), vec2<u32>(6968u, u_input.d.x)), ~u_input.d)), 11u)];
    return Struct_2(firstTrailingBit(~_wgslsmith_clamp_vec4_u32(global0.a >> (vec4<u32>(global4.x, global4.x, 1u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(79048u, var_0.x, 8285u, 55890u), global0.a)), Struct_1(true, global0.c.b), global0.c);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    var var_0 = arg_1.b;
    var var_1 = arg_1.b.a;
    var var_2 = ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, u_input.b), u_input.c), 46185i, ~select(-16881i, -7485i, arg_0.b.b.x)), vec3<i32>(_wgslsmith_div_i32(-4979i << (0u % 32u), u_input.c), u_input.c, ~6581i));
    let var_3 = arg_0;
    var_0 = global0.b;
    return !var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1333f + 390f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1427f, 251f, true)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(413f, 934f, -549f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-806f, -814f, 937f) * vec3<f32>(-263f, 1360f, -1812f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1366f, 915f, -491f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1366f, -1591f, -705f), vec3<f32>(1128f, 783f, 503f)))), func_1().b.b.zxy)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-195f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -481f))));
    var var_3 = Struct_3(vec2<bool>(true, !(!func_3(Struct_3(global0.c.b.yw, var_0.b), Struct_2(global0.a, Struct_1(global0.b.b.x, vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 8u)], global0.c.b.x, false)), Struct_1(global1[_wgslsmith_index_u32(global4.x, 25u)], vec4<bool>(global1[_wgslsmith_index_u32(24903u, 25u)], global1[_wgslsmith_index_u32(global4.x, 25u)], var_0.b.a, var_0.b.b.x)))))), Struct_1(global0.b.a, func_1().c.b));
    let var_4 = true;
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1112f, 944f, 115f, 163f), vec4<f32>(2656f, 1080f, var_2.x, 319f))))) + _wgslsmith_div_vec4_f32(vec4<f32>(485f, _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(step(604f, var_2.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-903f, 1000f, var_2.x, var_2.x))))));
    var var_6 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(-firstLeadingBit(~vec2<i32>(u_input.c, u_input.c))), _wgslsmith_mod_vec4_u32(vec4<u32>(12905u, 91065u, select(global0.a.x, u_input.d.x, global0.c.a), global4.x), vec4<u32>(1u, ~global4.x, ~global4.x, 0u)) | vec4<u32>(~4294967295u, ~global4.x, ~(~var_0.a.x), ~(u_input.a >> (1u % 32u))), var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * -1106f), var_5.x)), var_2.x));
}

