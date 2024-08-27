struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-1i, -1i, 8796i, -1i, 1i, -31603i, 2147483647i, -18692i, -9729i, 2147483647i, -1i, i32(-2147483648), -19i, 1i, 1i, -3547i, i32(-2147483648), -892i, -3980i, 2147483647i, -11843i);

var<private> global1: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(35689u, 86129u, 4294967295u, 4549u), vec4<u32>(47220u, 25051u, 897u, 1358u), vec4<u32>(4294967295u, 4294967295u, 63567u, 100981u), vec4<u32>(20159u, 1u, 1u, 4294967295u), vec4<u32>(49471u, 10087u, 55964u, 4294967295u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = -(~(-46089i << (_wgslsmith_mod_u32(1u, u_input.a.x) % 32u)) << ((4294967295u ^ abs(u_input.a.x | u_input.a.x)) % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1198f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-120f, 141f)) * -1000f)));
    global1 = array<vec4<u32>, 5>();
    global0 = array<i32, 21>();
    var var_2 = vec4<u32>(firstTrailingBit(min(5612u, _wgslsmith_div_u32(~35885u, ~u_input.a.x))), firstLeadingBit(~5613u), reverseBits(~firstTrailingBit(u_input.a.x)), ~u_input.a.x);
    return _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, select(var_2.x << (u_input.a.x % 32u), 4294967295u, true)), var_2.x & min(u_input.a.x ^ 1u, _wgslsmith_mult_u32(var_2.x, var_2.x)), u_input.a.x), ~vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(var_2.wxz, var_2.zyz), 7393u) >> (reverseBits(abs(select(var_2.wxz, vec3<u32>(var_2.x, 74842u, 40574u), vec3<bool>(false, false, false)))) % vec3<u32>(32u)));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-421f + _wgslsmith_f_op_f32(trunc(-1470f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(852f, _wgslsmith_f_op_f32(845f - 581f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f)))));
    let var_1 = select(func_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 21u)]), _wgslsmith_clamp_vec3_u32(~vec3<u32>(~u_input.a.x, 19413u, 19371u), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, 0u)), vec3<u32>(u_input.a.x, reverseBits(u_input.a.x), 1u)), vec3<u32>(0u, u_input.a.x, ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 1u)))), select(select(vec3<bool>(all(vec2<bool>(true, false)), true, all(vec4<bool>(true, true, true, true))), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), true), select(vec3<bool>(true, false, all(vec2<bool>(false, false))), vec3<bool>(true, true, true), true), !(_wgslsmith_div_f32(var_0, var_0) > _wgslsmith_f_op_f32(939f + var_0))));
    var var_2 = vec4<u32>(~(~firstTrailingBit(1405u)), u_input.a.x, ~1u, var_1.x);
    global1 = array<vec4<u32>, 5>();
    global1 = array<vec4<u32>, 5>();
    return var_0 > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(488f, var_0), _wgslsmith_f_op_f32(1000f - var_0)) + -442f), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0)))));
}

fn func_1(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = !vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), false, func_2());
    var_0 = !(!select(select(vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), global0[_wgslsmith_index_u32(arg_0.x, 21u)] >= global0[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(all(vec3<bool>(true, false, true)), var_0.x, true), !(!vec3<bool>(false, false, var_0.x))));
    global1 = array<vec4<u32>, 5>();
    var var_1 = abs(-(~vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)])) >> (vec2<u32>(~arg_0.x, _wgslsmith_mod_u32(u_input.a.x, arg_0.x << (0u % 32u))) % vec2<u32>(32u)));
    var var_2 = true;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1217f, 189f, -502f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2066f, 946f, -948f))))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(-592f * -1603f), _wgslsmith_f_op_f32(sign(1099f)), _wgslsmith_f_op_f32(-322f - _wgslsmith_f_op_f32(min(1518f, 448f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>) -> bool {
    global0 = array<i32, 21>();
    let var_0 = _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(15775i, 0i), ~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 31978i))), vec2<i32>(countOneBits(-3040i), 1i)) < _wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(6061u, 1u), 21u)], -min(global0[_wgslsmith_index_u32(766u, 21u)] >> (u_input.a.x % 32u), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]));
    var var_1 = vec2<u32>(firstLeadingBit(23604u), u_input.a.x) ^ vec2<u32>(abs(61571u), _wgslsmith_sub_u32(u_input.a.x, ~abs(u_input.a.x)));
    var var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.x, ~firstTrailingBit(u_input.a.x)), ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(17536u, 12123u, u_input.a.x, 4294967295u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 10227u))));
    let var_3 = Struct_1(0u);
    return false;
}

fn func_5(arg_0: vec3<u32>) -> i32 {
    global1 = array<vec4<u32>, 5>();
    let var_0 = Struct_1(max(_wgslsmith_clamp_u32(u_input.a.x, 709u, u_input.a.x) | ~arg_0.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(67560u, 4294967295u), vec2<u32>(0u, arg_0.x))) << (~_wgslsmith_mult_u32(u_input.a.x, 646u) % 32u));
    let var_1 = var_0;
    global1 = array<vec4<u32>, 5>();
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, var_0.a)), vec2<u32>(_wgslsmith_clamp_u32(countOneBits(4294967295u), _wgslsmith_add_u32(u_input.a.x, var_1.a), 1u), var_1.a)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 5>();
    var var_0 = Struct_1(_wgslsmith_div_u32(countOneBits(_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x)), 1u));
    var var_1 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-859f, -1145f)), _wgslsmith_div_f32(-1033f, 1000f)) >= _wgslsmith_f_op_f32(ceil(-448f)));
    let var_2 = func_5(select(vec3<u32>(u_input.a.x, ~(~0u), firstTrailingBit(_wgslsmith_div_u32(var_0.a, 0u))), vec3<u32>(var_0.a, 5924u, _wgslsmith_mult_u32(4294967295u, firstTrailingBit(41280u))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1030f, 1309f), vec2<f32>(-337f, 2006f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 299f, 1527f) + _wgslsmith_f_op_vec3_f32(func_1(vec3<u32>(1u, u_input.a.x, 1u)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_sub_vec3_u32(func_3(-2147483647i), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, var_0.a << (4294967295u % 32u), var_0.a), ~_wgslsmith_add_vec3_u32(vec3<u32>(69559u, 7830u, var_0.a), vec3<u32>(58806u, 0u, u_input.a.x)))))).x;
    var var_4 = 0i;
    let var_5 = Struct_1(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(var_0.a, 32105u, u_input.a.x) >> (abs(vec3<u32>(var_0.a, 4294967295u, u_input.a.x)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(123194u, 4294967295u, 19826u), vec3<u32>(~1u, select(38359u, 92199u, false), _wgslsmith_clamp_u32(4294967295u, 1u, u_input.a.x)))));
    var var_6 = -31330i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

