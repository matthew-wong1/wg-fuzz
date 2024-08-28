struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 32>;

var<private> global2: array<f32, 23>;

var<private> global3: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(16478u, 0u, 0u, 0u), vec4<u32>(4294967295u, 0u, 59142u, 6991u), vec4<u32>(0u, 4294967295u, 18320u, 0u), vec4<u32>(5337u, 33811u, 84300u, 183u), vec4<u32>(0u, 1u, 1u, 23083u), vec4<u32>(1u, 10906u, 31460u, 4703u), vec4<u32>(33276u, 43006u, 0u, 65996u), vec4<u32>(5961u, 1u, 73296u, 13371u), vec4<u32>(3938u, 36031u, 4294967295u, 29860u), vec4<u32>(31006u, 40972u, 0u, 61518u), vec4<u32>(0u, 36985u, 1u, 0u), vec4<u32>(29223u, 4294967295u, 1u, 0u), vec4<u32>(32918u, 0u, 1u, 92472u), vec4<u32>(21553u, 0u, 18818u, 1u), vec4<u32>(1u, 117926u, 77869u, 51028u), vec4<u32>(81681u, 4294967295u, 8625u, 1u), vec4<u32>(0u, 13475u, 4294967295u, 1u), vec4<u32>(21399u, 0u, 4294967295u, 1u), vec4<u32>(72046u, 4294967295u, 0u, 0u), vec4<u32>(39100u, 49922u, 68699u, 11645u), vec4<u32>(2796u, 36475u, 4294967295u, 32575u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 7578u, 49946u, 0u), vec4<u32>(11157u, 39609u, 0u, 0u), vec4<u32>(33529u, 19968u, 1u, 4294967295u), vec4<u32>(0u, 57973u, 30097u, 30809u), vec4<u32>(62522u, 0u, 16210u, 2950u), vec4<u32>(29204u, 16966u, 4294967295u, 1u), vec4<u32>(48977u, 61011u, 1u, 1u), vec4<u32>(0u, 536u, 31976u, 12972u));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 32u)])))) - _wgslsmith_f_op_f32(f32(-1f) * -227f)), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~1u, 32u)])), true));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -551f);
    var var_2 = Struct_1(countOneBits(abs(-vec2<i32>(u_input.a, -38491i))));
    let var_3 = Struct_1(_wgslsmith_sub_vec2_i32(-min(vec2<i32>(-12453i, 1i), min(var_2.a, var_2.a)), var_2.a));
    var var_4 = any(global0.zz) == global0.x;
    return _wgslsmith_clamp_i32(u_input.a, (-var_3.a.x << (1u % 32u)) ^ (-u_input.a & -var_3.a.x), -14907i) >= -firstTrailingBit(_wgslsmith_add_i32(u_input.a, var_3.a.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = arg_1;
    let var_1 = !(!vec4<bool>(!select(global0.x, global0.x, false), !any(vec4<bool>(global0.x, false, true, false)), true, _wgslsmith_f_op_f32(-arg_1.x) >= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 23u)])));
    let var_2 = vec4<bool>(global0.x, func_3(), false & global0.x, true);
    global2 = array<f32, 23>();
    global0 = select(vec3<bool>(38940u >= u_input.c, !(!(var_2.x | var_1.x)), select(var_1.x | false, all(vec2<bool>(var_2.x, false)), var_1.x)), !(!select(vec3<bool>(false, true, var_1.x), select(var_1.xwx, vec3<bool>(global0.x, false, var_2.x), vec3<bool>(true, true, var_1.x)), var_1.xxw)), select(!var_2.yxw, var_1.zzy, var_2.wyw));
    return 11800u;
}

fn func_1() -> vec2<i32> {
    let var_0 = max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 80509u, 21230u >> (u_input.d.x % 32u)), vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), countOneBits(u_input.d.x), ~35289u)) << (vec3<u32>(func_2(Struct_1(vec2<i32>(1i, -10767i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1349f, global1[_wgslsmith_index_u32(u_input.d.x, 32u)])), vec2<i32>(u_input.a, u_input.a) << (u_input.b.xx % vec2<u32>(32u))), ~98229u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(u_input.d, firstTrailingBit(~(~vec3<u32>(63456u, 24936u, 4294967295u)))));
    global2 = array<f32, 23>();
    var var_1 = _wgslsmith_div_i32(50527i, -(-2147483647i ^ u_input.a));
    let var_2 = ~(-(vec2<i32>(0i >> (var_0.x % 32u), max(-1i, u_input.a)) >> (var_0.zy % vec2<u32>(32u))));
    global3 = array<vec4<u32>, 30>();
    return _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, var_2.x, -37924i), vec3<i32>(u_input.a, 4430i, u_input.a)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-52048i, -1i), var_2), -1i, -12287i >> (u_input.d.x % 32u))), 0i << (var_0.x % 32u)), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a ^ -67927i;
    var var_1 = Struct_1(~select(func_1() << ((vec2<u32>(u_input.d.x, 4294967295u) | vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), -(~vec2<i32>(2147483647i, u_input.a)), false));
    global2 = array<f32, 23>();
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), -95641i, -646i);
    let var_3 = Struct_1(vec2<i32>(var_2, u_input.a));
    let var_4 = ~firstLeadingBit(vec4<i32>(var_2, -16442i, u_input.a, 29788i) | (vec4<i32>(u_input.a, 23241i, var_2, var_2) >> (~vec4<u32>(62763u, u_input.c, 4294967295u, 4294967295u) % vec4<u32>(32u))));
    global2 = array<f32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-436f, _wgslsmith_f_op_f32(abs(-1850f)), global1[_wgslsmith_index_u32(0u | u_input.c, 32u)])) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 32u)], global2[_wgslsmith_index_u32(35484u, 23u)], 246f)) + vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(3730u, 23u)]), -101f, _wgslsmith_f_op_f32(max(-874f, global1[_wgslsmith_index_u32(17355u, 32u)]))))));
}

