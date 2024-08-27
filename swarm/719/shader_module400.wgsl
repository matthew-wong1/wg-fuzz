struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14>;

var<private> global1: bool;

var<private> global2: array<f32, 1> = array<f32, 1>(1121f);

var<private> global3: vec3<i32>;

var<private> global4: f32 = -412f;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec4<u32> {
    global0 = array<vec3<i32>, 14>();
    let var_0 = Struct_2(countOneBits(select(_wgslsmith_add_vec4_u32(~vec4<u32>(65739u, arg_2.x, 38685u, arg_2.x), ~vec4<u32>(40926u, 4294967295u, 0u, 0u)), vec4<u32>(0u, 0u, 4294967295u, 1u) >> (max(vec4<u32>(47007u, arg_2.x, arg_2.x, 113420u), vec4<u32>(arg_2.x, arg_2.x, 53179u, 4294967295u)) % vec4<u32>(32u)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)))), true, vec4<i32>(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global3.x, arg_0, 1i), vec4<i32>(arg_1.x, u_input.a, 2147483647i, 29309i)), vec4<i32>(global3.x, -1i, global3.x, global3.x))), i32(-1i) * -1i, abs(firstTrailingBit(abs(-1i))), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(global3.x, arg_0)), i32(-1i) * -2147483647i)), ~vec3<u32>(1u, select(arg_2.x | arg_2.x, arg_2.x, true), arg_2.x));
    var var_1 = i32(-1i) * -_wgslsmith_dot_vec2_i32(~arg_1, global3.zz);
    global2 = array<f32, 1>();
    var var_2 = !var_0.b;
    return ~((vec4<u32>(24123u, 4939u, arg_2.x, 4294967295u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_2.x, 1u, arg_2.x), var_0.a) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 114862u, arg_2.x), var_0.a | vec4<u32>(26846u, var_0.d.x, var_0.a.x, var_0.a.x))) << (~(~vec4<u32>(~1u, 46297u, var_0.a.x, ~var_0.d.x)) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mod_u32(1u, ~1u);
    let var_1 = Struct_2(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) >> (~func_3(-1i, global3.xx, ~vec2<u32>(12354u, 1u)) % vec4<u32>(32u)), all(select(!select(vec2<bool>(false, arg_1.d.x), arg_1.d.xw, arg_1.d.wx), !select(vec2<bool>(true, arg_1.d.x), vec2<bool>(false, arg_1.d.x), arg_1.d.x), any(vec2<bool>(arg_1.d.x, true)))), vec4<i32>(-1i, countOneBits(global3.x), firstTrailingBit(min(8027i, arg_0.x) >> (select(9902u, 24631u, false) % 32u)), i32(-1i) * -62744i), vec3<u32>(1u, 1u, ~(~1u)));
    var var_2 = Struct_1(arg_1.a, -688f, 1i, select(arg_1.d, select(select(arg_1.d, vec4<bool>(true, false, var_1.b, var_1.b), any(arg_1.d.wz)), vec4<bool>(!var_1.b, !var_1.b, arg_1.d.x, 79321u >= var_1.d.x), select(!arg_1.d, select(arg_1.d, vec4<bool>(arg_1.d.x, false, var_1.b, arg_1.d.x), false), select(vec4<bool>(arg_1.d.x, var_1.b, var_1.b, true), vec4<bool>(var_1.b, false, false, var_1.b), true))), arg_1.d.x));
    return ~_wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.x, 1u), var_1.a.wx), var_1.a.x), firstLeadingBit(75434u << (var_1.a.x % 32u)) & reverseBits(~var_1.d.x));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    global1 = false;
    let var_0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(min(-3969i, -u_input.a), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c, -51034i, arg_2.c, arg_2.c), vec4<i32>(6551i, arg_2.c, -2147483647i, 0i))), 40115i), global0[_wgslsmith_index_u32(func_2(vec2<i32>(~abs(arg_2.c), -36748i), arg_2), 14u)]);
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec3_i32(~global0[_wgslsmith_index_u32(~4294967295u, 14u)], global0[_wgslsmith_index_u32(9287u, 14u)]) >> (_wgslsmith_mult_u32(firstTrailingBit(27843u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4062u), vec2<u32>(0u, 15226u))) % 32u));
    let var_2 = select(true || any(!arg_1.zx), true, true);
    global0 = array<vec3<i32>, 14>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(true, select(!any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, func_1(true, vec3<bool>(false, true, false), Struct_1(vec4<f32>(-903f, 1000f, 1974f, -219f), global2[_wgslsmith_index_u32(4294967295u, 1u)], 0i, vec4<bool>(true, true, false, true))))), !(!select(true, true, true))), reverseBits(_wgslsmith_mult_u32(~4294967295u, func_3(global3.x, global3.xz, vec2<u32>(58665u, 0u)).x)) == 4294967295u);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(385f)))), 609f, global2[_wgslsmith_index_u32(22929u, 1u)]));
    global0 = array<vec3<i32>, 14>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-327f, var_0.x)))), vec2<f32>(_wgslsmith_div_f32(-1033f, 469f), global2[_wgslsmith_index_u32(~1u, 1u)]))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global2[_wgslsmith_index_u32(1u, 1u)]) - vec2<f32>(global2[_wgslsmith_index_u32(0u, 1u)], var_0.x))))))) - vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(~58636u), 1u)] * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(11805u, 1u)], 453f)), 1000f))), global2[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(1u)), 1u)]));
    let var_2 = -4436i;
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 1u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 816f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 1u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.x)))), -538f), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, ~1u), 1u)], 0i, !(!vec4<bool>(select(true, false, false), true, false, any(vec3<bool>(false, false, false)))));
    global3 = vec3<i32>(0i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-reverseBits(9795i), 1i), ~(-2147483647i)), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

