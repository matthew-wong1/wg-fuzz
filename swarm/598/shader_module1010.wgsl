struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i);

var<private> global1: array<u32, 26>;

var<private> global2: vec4<bool>;

var<private> global3: vec2<u32>;

var<private> global4: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-24875i, -1i, -38979i, -86967i), vec4<i32>(-4031i, 33515i, i32(-2147483648), -1i), vec4<i32>(1i, -1365i, 2147483647i, 2147483647i), vec4<i32>(-1i, 10894i, i32(-2147483648), -24283i), vec4<i32>(-24173i, i32(-2147483648), i32(-2147483648), 70216i), vec4<i32>(2147483647i, 58906i, -10533i, 12108i), vec4<i32>(i32(-2147483648), -8538i, i32(-2147483648), -1i), vec4<i32>(26342i, -1i, -18860i, -1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(1i);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-488f, 1632f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(569f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(366f * 815f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1044f, 803f, global2.x)) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1766f, 1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-481f))), 1000f)));
    var_0 = Struct_1(-(~29709i));
    global4 = array<vec4<i32>, 8>();
    var var_2 = vec3<i32>(~_wgslsmith_div_i32(_wgslsmith_div_i32(19757i, _wgslsmith_mod_i32(global0.a, var_0.a)), var_0.a), -_wgslsmith_add_i32(-2147483647i, 1i), global0.a);
    return _wgslsmith_sub_u32(global3.x, u_input.a);
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = vec4<i32>(i32(-1i) * -2147483647i, min(firstLeadingBit(-2147483647i) << ((u_input.a >> (u_input.a % 32u)) % 32u), 11505i << (func_3() % 32u)), -6333i, arg_0.x ^ -13904i);
    global1 = array<u32, 26>();
    let var_1 = ~(-_wgslsmith_mod_vec3_i32(abs(var_0.xyz ^ var_0.yxx), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.wxx, var_0.yxz, var_0.yyy), select(vec3<i32>(arg_0.x, -2147483647i, u_input.b), var_0.yxw, global2.wxx))));
    global3 = firstTrailingBit(vec2<u32>(~abs(4294967295u), abs(~1u)) ^ (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(11013u, 26u)]), vec2<u32>(52434u, 4294967295u)) << (~min(vec2<u32>(1454u, 4294967295u), vec2<u32>(693u, 27930u)) % vec2<u32>(32u))));
    global4 = array<vec4<i32>, 8>();
    return !vec4<bool>(true, all(vec3<bool>(false, false, true)), false, !(3092u >= ~global1[_wgslsmith_index_u32(19800u, 26u)]));
}

fn func_1() -> u32 {
    global2 = func_2(abs(reverseBits(-vec2<i32>(-51846i, 2147483647i))));
    var var_0 = !any(select(vec4<bool>(true, false, any(vec2<bool>(global2.x, true)), !global2.x), select(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), select(vec4<bool>(true, false, global2.x, false), vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(true, false, false, false)), false), false));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(10434u, 4294967295u, 46861u)) << (vec3<u32>(abs(4294967295u), func_1(), global1[_wgslsmith_index_u32(u_input.a, 26u)] | 1u) % vec3<u32>(32u)), ~vec3<u32>(~4294967295u, select(20036u, 64982u, false), func_1()), vec3<u32>(20937u, select(global3.x, ~global1[_wgslsmith_index_u32(global3.x, 26u)], true), 47947u)));
    var var_1 = vec4<i32>(abs(4860i), _wgslsmith_div_i32(u_input.b, -2147483647i), u_input.c & -(~(2147483647i & global0.a)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, _wgslsmith_mod_i32(u_input.b, u_input.b)), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-66929i, global0.a), vec2<i32>(global0.a, 5027i))), global2.x), vec2<i32>(3593i, global0.a >> (1u % 32u)) << (vec2<u32>(69000u, var_0.x) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1623f, 124f))))) - -587f));
    let var_3 = 4294967295u;
    let var_4 = abs(global0.a);
    var var_5 = !(min(4294967295u, 4294967295u) > _wgslsmith_add_u32(global3.x, 4294967295u ^ global3.x)) || true;
    let var_6 = -22807i << ((global3.x | ~34383u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b | -47632i, _wgslsmith_add_i32(i32(-1i) * -17319i, var_1.x), _wgslsmith_dot_vec2_i32(~var_1.xw, ~vec2<i32>(var_1.x, var_4)) | ~(-22372i)), (((var_6 | -6384i) >> (func_1() % 32u)) << (u_input.a % 32u)) & 11211i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2)), -1196f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-403f, -2083f) + vec2<f32>(-149f, var_2)))))), vec4<f32>(-975f, -460f, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2)) * _wgslsmith_f_op_f32(trunc(var_2))))));
}

