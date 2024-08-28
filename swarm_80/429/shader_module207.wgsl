struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<i32, 20>;

var<private> global2: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(1u, 4111u, 11178u), vec3<u32>(60170u, 0u, 13665u), vec3<u32>(22884u, 9396u, 1u), vec3<u32>(0u, 1u, 41223u), vec3<u32>(4294967295u, 110910u, 12066u), vec3<u32>(29760u, 25806u, 68705u), vec3<u32>(0u, 4294967295u, 66845u), vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 0u, 32411u), vec3<u32>(8131u, 1u, 45740u), vec3<u32>(0u, 1u, 49825u), vec3<u32>(1u, 0u, 3429u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(arg_1.c, 20u)];
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-469f, -1794f, -442f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, 2434f)), _wgslsmith_div_vec3_f32(vec3<f32>(-265f, 948f, 835f), vec3<f32>(-689f, 2291f, 551f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-617f, 1315f, 936f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-515f, -591f, 2307f) + vec3<f32>(-387f, 578f, -128f))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x)));
    global1 = array<i32, 20>();
    var var_2 = select(max(arg_1, arg_0) == ~u_input.a, -690f >= var_0.x, any(vec2<bool>(select(true, false, true) || true, true)));
    var var_3 = global1[_wgslsmith_index_u32(7730u, 20u)];
    return func_2(vec4<bool>(true, true, !select(all(vec2<bool>(true, true)), true, all(vec2<bool>(true, true))), true), Struct_1(vec4<bool>(0u <= ~arg_1, any(vec4<bool>(true, true, true, true)), false, all(vec4<bool>(false, true, false, true))), _wgslsmith_mult_u32(arg_1, arg_0) > _wgslsmith_mult_u32(arg_2, arg_2), 0u), ~(~vec4<u32>(~1u, ~arg_2, ~0u, firstTrailingBit(u_input.a))));
}

fn func_3() -> vec2<f32> {
    global1 = array<i32, 20>();
    var var_0 = func_1(firstTrailingBit(1u ^ u_input.a) & ~_wgslsmith_add_u32(u_input.a, u_input.a ^ u_input.a), ~u_input.a, max(firstLeadingBit(~(u_input.a ^ u_input.a)), ~u_input.a));
    global0 = ~(~max(~func_1(var_0.c, u_input.a, var_0.c).c, 4294967295u));
    var var_1 = firstTrailingBit(~var_0.c);
    var var_2 = func_1(var_0.c, ~(u_input.a & ~(1u >> (1u % 32u))), 4294967295u);
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-220f, _wgslsmith_f_op_f32(391f - -286f))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<i32> {
    global0 = ~(select(u_input.a, ~(arg_1.x << (33376u % 32u)), -2147483647i != arg_0.x) & ~u_input.a);
    global1 = array<i32, 20>();
    return ~countOneBits(vec4<i32>(2147483647i, _wgslsmith_mod_i32(-1i, arg_0.x ^ global1[_wgslsmith_index_u32(4294967295u, 20u)]), select(max(arg_0.x, global1[_wgslsmith_index_u32(29916u, 20u)]), countOneBits(arg_0.x), false), global1[_wgslsmith_index_u32(4294967295u, 20u)] >> (~arg_1.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -406f);
    global1 = array<i32, 20>();
    let var_1 = func_1(u_input.a, u_input.a, ~1u >> (u_input.a % 32u));
    global0 = 15480u;
    let var_2 = var_1;
    let var_3 = func_2(vec4<bool>(all(func_2(select(vec4<bool>(var_1.a.x, true, false, var_1.a.x), vec4<bool>(false, true, var_1.b, true), var_2.a.x), Struct_1(var_1.a, var_1.b, 1u), min(vec4<u32>(61788u, var_2.c, 0u, 4568u), vec4<u32>(1u, 18239u, var_1.c, var_1.c))).a.zyz), false, true, false), var_2, select(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 36188u, 61883u, 13653u), ~vec4<u32>(14561u, 77519u, var_1.c, 4294967295u)), vec4<u32>(1u, 1u, _wgslsmith_div_u32(var_1.c, u_input.a), u_input.a)), ~(~vec4<u32>(u_input.a, 28264u, 0u, var_1.c) << ((vec4<u32>(var_1.c, 78187u, u_input.a, var_2.c) >> (vec4<u32>(var_2.c, var_1.c, 13061u, 13325u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<bool>(true, var_2.a.x, var_1.b | var_2.b, any(vec4<bool>(true, false, true, false)))));
    var var_4 = func_4(vec2<i32>(2147483647i, 47060i), ~(reverseBits(~vec2<u32>(u_input.a, u_input.a)) & _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(var_1.c, 22728u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.c, 4294967295u), vec2<u32>(26647u, 37113u), vec2<u32>(var_2.c, 7790u)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(func_3()))), var_1);
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_2.c, _wgslsmith_mod_u32(5692u, 1u), 85464u | var_3.c) ^ ~(~vec3<u32>(0u, var_3.c, var_3.c) >> ((global2[_wgslsmith_index_u32(var_2.c, 12u)] | global2[_wgslsmith_index_u32(var_2.c, 12u)]) % vec3<u32>(32u))), _wgslsmith_add_u32(var_1.c, 1u), ~0u);
}

