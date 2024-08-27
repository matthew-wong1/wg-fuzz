struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15>;

var<private> global1: f32 = -258f;

var<private> global2: array<i32, 30>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> i32 {
    global1 = arg_2;
    var var_0 = Struct_1(abs(~firstLeadingBit(1u)) << (((max(arg_1, arg_1) | 53611u) ^ 51126u) % 32u), 7963u, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(arg_1, 30u)], abs(50277i)), select(vec4<bool>(any(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true)), !all(vec3<bool>(true, true, false)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false))), vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true), vec4<bool>(all(vec4<bool>(true, false, false, true)), true, all(vec2<bool>(true, true)), true)));
    let var_1 = Struct_1(~(~_wgslsmith_mod_u32(~2478u, _wgslsmith_mult_u32(1u, var_0.a))), min(~_wgslsmith_add_u32(106596u, 1u), ~1u) << ((0u & ~(0u | var_0.b)) % 32u), 0i, select(vec4<bool>(!var_0.d.x, false, ~1u <= var_0.b, !var_0.d.x | !var_0.d.x), select(!select(var_0.d, vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true), vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x)), vec4<bool>(true, true, !var_0.d.x, false), !any(vec3<bool>(var_0.d.x, false, false))), var_0.d));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(706f, arg_2))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(704f, -217f), vec2<f32>(-746f, arg_2))), _wgslsmith_div_vec2_f32(vec2<f32>(231f, arg_2), vec2<f32>(arg_2, arg_2)), arg_2 == arg_2))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, 986f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -756f)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2))))));
    var var_3 = Struct_1(min(arg_1, 1u), abs(abs(~arg_1)), -5046i, var_1.d);
    return _wgslsmith_div_i32(-16476i, var_0.c);
}

fn func_2() -> vec3<bool> {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, select(global2[_wgslsmith_index_u32(~56118u, 30u)], global2[_wgslsmith_index_u32(~1u, 30u)], true), -u_input.a), -vec3<i32>(17017i, -16889i, reverseBits(-1i))), u_input.a, _wgslsmith_clamp_i32(8338i, global2[_wgslsmith_index_u32(4294967295u, 30u)], _wgslsmith_sub_i32(firstTrailingBit(func_3(vec2<i32>(8235i, u_input.a), 1720u, 1167f)), u_input.a >> (max(39179u, 4294967295u) % 32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1216f, -1528f, true))), -546f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(892f + -153f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(399f)) + _wgslsmith_div_f32(202f, 1000f))), 692f));
    let var_2 = !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true))));
    var_0 = (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(20308u, 1u), abs(vec2<u32>(0u, 4294967295u)), true), abs(vec2<u32>(14738u, 4294967295u))), 15u)] << (vec3<u32>(~0u, abs(~4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(17714u, 1u, 4294967295u, 1u), vec4<u32>(61556u, 7584u, 20197u, 39947u))) % vec3<u32>(32u))) >> (vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 1u), 1u)), ~(~82233u), countOneBits(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(39064u, 4294967295u, 43799u, 57422u), vec4<u32>(1u, 32785u, 74546u, 8382u))))) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(298f, var_1.x) * vec2<f32>(416f, -281f)), _wgslsmith_f_op_vec2_f32(var_1.wx * vec2<f32>(var_1.x, 534f))))), var_1.zw)));
    return select(var_2.yzx, !var_2.zww, var_2.yxy);
}

fn func_1() -> StorageBuffer {
    global0 = array<vec3<i32>, 15>();
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-433f + -151f), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(-347f, _wgslsmith_f_op_f32(f32(-1f) * -849f)))))), 238f);
    var var_0 = !(!func_2());
    var var_1 = Struct_1(1u, 1u, -56047i, select(vec4<bool>(false, true, !any(vec4<bool>(true, var_0.x, var_0.x, false)), true), select(vec4<bool>(var_0.x, var_0.x, any(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x | var_0.x), !(!vec4<bool>(false, true, var_0.x, false)), !all(vec3<bool>(var_0.x, var_0.x, false))), vec4<bool>(var_0.x, true, any(vec4<bool>(true, true, var_0.x, var_0.x)), true)));
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_sub_u32(var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_1.b), vec3<u32>(var_1.b, 126485u, var_1.b) | vec3<u32>(0u, 25064u, var_1.a)))), ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_1.a), vec2<u32>(var_1.b, var_1.b)), vec2<u32>(var_1.a, var_1.b) & vec2<u32>(var_1.b, var_1.a))), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 30u)]), select(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(33449u, 30u)]), vec2<i32>(global2[_wgslsmith_index_u32(var_1.a, 30u)], -4259i), var_0.x))), !(!vec4<bool>(any(vec2<bool>(var_0.x, true)), 47998i > u_input.a, var_0.x != var_1.d.x, var_1.d.x)));
    return StorageBuffer(select(max(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(19966u, var_2.a, 1u, var_1.b), vec4<u32>(0u, 1u, var_2.b, 39510u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, var_2.a, var_1.b, var_2.b), vec4<u32>(var_2.a, 86333u, 26910u, 1u))), ~(~vec4<u32>(4294967295u, var_2.a, var_1.b, var_1.b))), ~((vec4<u32>(1u, var_2.b, var_1.a, var_1.a) >> (vec4<u32>(var_1.a, 26u, 4294967295u, var_1.b) % vec4<u32>(32u))) | (vec4<u32>(var_1.a, 79969u, var_1.a, var_1.b) ^ vec4<u32>(1u, var_2.a, var_1.a, 4294967295u))), var_1.d.x), vec4<i32>(select(var_2.c << (var_2.a % 32u), 35089i, false), var_1.c, -(~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.a, 0u), 30u)]), var_1.c), countOneBits(~vec2<u32>(~var_1.b, var_2.a)), ~select(global0[_wgslsmith_index_u32(~abs(var_1.a), 15u)], reverseBits(-global0[_wgslsmith_index_u32(var_1.a, 15u)]), all(!var_1.d.wx)), -1127f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-411f, 716f, all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1065f + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-601f - -963f)))));
    let var_1 = vec3<u32>(1u, 1u, 1u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(786f, -305f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1101f))))), 1155f);
    let var_3 = var_2.x;
    global2 = array<i32, 30>();
    let x = u_input.a;
    s_output = func_1();
}

