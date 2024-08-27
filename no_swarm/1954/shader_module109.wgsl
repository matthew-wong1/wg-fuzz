struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<u32, 32>;

var<private> global2: bool;

var<private> global3: f32 = -1427f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<i32> {
    global1 = array<u32, 32>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(step(-227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -527f) - 981f))))) + -128f);
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-714f, -1280f, -567f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(187f + 198f) * _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-297f, global0.x)) - _wgslsmith_f_op_vec2_f32(ceil(global0.wz))), vec2<f32>(_wgslsmith_f_op_f32(sign(-335f)), global0.x))) * vec2<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(148f + global0.x))))), ~vec2<u32>(global1[_wgslsmith_index_u32(~(~4294967295u), 32u)], 4294967295u), vec3<f32>(_wgslsmith_f_op_f32(step(-357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-161f, global0.x, any(vec2<bool>(true, false)))) * 1056f), global0.x));
    global0 = _wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.b.x, -1181f, 1207f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.b.x, var_0.d.x, global0.x))))), true));
    global1 = array<u32, 32>();
    return select(firstLeadingBit(-vec2<i32>(1i, 1i)), ~(-max(firstTrailingBit(vec2<i32>(-1i, -2147483647i)), firstLeadingBit(vec2<i32>(21253i, 14629i)))), false);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = select(-_wgslsmith_div_vec2_i32(-abs(vec2<i32>(16438i, -1i)), countOneBits(-vec2<i32>(arg_1.d, arg_1.d))), vec2<i32>(-1i) * -func_3(), select(select(select(arg_1.a.yy, !arg_1.a.yy, -2147483647i <= arg_1.d), vec2<bool>(all(vec3<bool>(false, arg_1.a.x, arg_1.a.x)), arg_1.b == arg_1.a.x), select(!vec2<bool>(true, arg_1.a.x), !vec2<bool>(arg_1.a.x, false), false)), select(vec2<bool>(63794u <= u_input.b, arg_1.a.x), arg_1.a.yz, select(!arg_1.a.zx, !arg_1.a.xy, arg_1.a.x)), true));
    var var_1 = !select(select(select(select(vec4<bool>(false, arg_1.b, false, true), vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b), arg_1.a.x), select(vec4<bool>(arg_1.b, false, arg_1.a.x, false), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, false), vec4<bool>(false, arg_1.b, arg_1.a.x, arg_1.a.x)), arg_1.b), !select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.b, false, false, false), vec4<bool>(arg_1.a.x, arg_1.a.x, false, false)), _wgslsmith_f_op_f32(sign(286f)) != _wgslsmith_f_op_f32(1902f * -1188f)), vec4<bool>(true, false | arg_1.a.x, arg_1.b, true), true);
    var_1 = !vec4<bool>(all(vec3<bool>(true, any(vec4<bool>(false, false, false, arg_1.a.x)), arg_1.b)), arg_1.b, true, !var_1.x);
    let var_2 = -abs(_wgslsmith_div_i32(arg_0, abs(-2147483647i)));
    global2 = select(true, false, !(-628f >= global0.x));
    return global1[_wgslsmith_index_u32(~4294967295u, 32u)];
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = reverseBits(vec4<u32>(1u, ~_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(0u, 32u)], func_2(2147483647i, Struct_1(vec3<bool>(true, false, false), false, vec4<f32>(-1000f, -1929f, -419f, -1926f), -2147483647i, 0i))), 1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, 45290u)), firstTrailingBit(vec2<u32>(1u, 0u))) ^ global1[_wgslsmith_index_u32(func_2(abs(-37773i), Struct_1(vec3<bool>(false, true, true), true, vec4<f32>(global0.x, arg_0.x, arg_0.x, arg_0.x), 0i, -25244i)), 32u)]));
    let var_1 = countOneBits(~select(select(countOneBits(vec4<i32>(-4964i, 23895i, 0i, 42292i)), vec4<i32>(7615i, -2147483647i, -1i, 29801i), true), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(true, true, true, true)));
    var var_2 = Struct_1(select(vec3<bool>(select(-875f > arg_0.x, any(vec3<bool>(true, true, false)), false), false, all(vec4<bool>(true, true, true, true))), vec3<bool>(any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), true), vec3<bool>(true, true, true)), false, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(720f, -490f, global0.x, arg_0.x) + vec4<f32>(-1427f, -557f, -257f, -517f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 675f, arg_0.x, -1234f))))))), _wgslsmith_clamp_i32(0i, ~_wgslsmith_mod_i32(abs(-2147483647i), reverseBits(-2963i)), -var_1.x), max(countOneBits(-38889i) | ~(-var_1.x), max(var_1.x ^ (-1i << (u_input.b % 32u)), _wgslsmith_mod_i32(-var_1.x, -1i))));
    let var_3 = Struct_1(select(select(select(!vec3<bool>(true, true, var_2.b), var_2.a, vec3<bool>(var_2.b, var_2.a.x, false)), vec3<bool>(var_2.a.x, all(vec4<bool>(true, false, true, true)), all(var_2.a)), any(select(vec4<bool>(false, false, var_2.a.x, var_2.b), vec4<bool>(var_2.b, true, var_2.b, true), vec4<bool>(false, false, true, var_2.a.x)))), var_2.a, select(var_2.a, !select(var_2.a, var_2.a, true), select(select(vec3<bool>(var_2.b, true, false), var_2.a, var_2.a), !var_2.a, !vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)))), false, vec4<f32>(_wgslsmith_f_op_f32(ceil(-1640f)), _wgslsmith_f_op_f32(select(-1988f, var_2.c.x, true)), _wgslsmith_f_op_f32(select(-1488f, -357f, var_2.a.x)), var_2.c.x), -func_3().x, -max(var_1.x, -1i));
    let var_4 = u_input.b;
    return Struct_2(~var_1.yw, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_2.c.x, _wgslsmith_f_op_f32(-arg_0.x))), -343f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + 412f), _wgslsmith_div_f32(var_3.c.x, _wgslsmith_f_op_f32(round(283f)))), 492f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 32>();
    let var_0 = func_1(global0.yxw);
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    let var_1 = 1699f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_0.a.x), reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 32u)] << (global1[_wgslsmith_index_u32(107694u, 32u)] % 32u), global1[_wgslsmith_index_u32(1u, 32u)], ~4294967295u, abs(64922u))) & _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 14807u, 11940u, 4294967295u), ~vec4<u32>(4294967295u, 19132u, u_input.b, u_input.b), vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(u_input.b, 32u)], u_input.a) << (vec4<u32>(u_input.b, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42763u, 32u)], 32u)], 32u)], 39449u) % vec4<u32>(32u))), ~vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(95863u, 32u)], u_input.a, global1[_wgslsmith_index_u32(u_input.a, 32u)])));
}

