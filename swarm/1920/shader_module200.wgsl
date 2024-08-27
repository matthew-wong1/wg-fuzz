struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(23151u, 0u, 4294967295u, 36056u));

var<private> global1: array<vec3<i32>, 16>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2242f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + -149f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1288f))) * _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(abs(-1587f))));
    var var_1 = ~vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(~global1[_wgslsmith_index_u32(1447u, 16u)]), vec3<i32>(1i, _wgslsmith_mod_i32(58778i, -2147483647i), _wgslsmith_sub_i32(0i, -16179i))), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -10572i, -493i), ~vec4<i32>(7255i, 2507i, 2550i, -5397i))), i32(-1i) * -19239i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 1242f) * vec3<f32>(-937f, var_0, var_0)), vec3<f32>(629f, var_0, var_0), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-781f, 1000f, 1183f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-773f, var_0, -440f) - vec3<f32>(822f, 691f, 1460f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, var_0, var_0))))), vec3<bool>(true, true, true))));
    global0 = Struct_1(max(vec4<u32>(~(~u_input.c.x), global0.a.x, abs(~33828u), 4294967295u), ~abs(~global0.a)));
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(10182i, -select(1i, var_1.x, true)), _wgslsmith_sub_i32(_wgslsmith_add_i32(firstTrailingBit(11548i), firstLeadingBit(1i)), -_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1.x, 0i, var_1.x), global1[_wgslsmith_index_u32(10945u, 16u)], vec3<bool>(true, false, false)), select(global1[_wgslsmith_index_u32(1u, 16u)], vec3<i32>(var_1.x, var_1.x, -15354i), false))));
    return vec4<u32>(_wgslsmith_dot_vec2_u32(~(~abs(vec2<u32>(global0.a.x, global0.a.x))), global0.a.zy), reverseBits(1u), 4294967295u, global0.a.x);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(global0.a);
    var_0 = Struct_1(_wgslsmith_add_vec4_u32(global0.a, func_3() >> (vec4<u32>(u_input.b << (4294967295u % 32u), 0u, u_input.b, abs(global0.a.x)) % vec4<u32>(32u))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -691f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(524f)), _wgslsmith_f_op_f32(f32(-1f) * -596f)) * 244f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1402f))) - 316f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(834f, -313f)))))));
    global1 = array<vec3<i32>, 16>();
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x);
    return firstTrailingBit(~1i);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    let var_0 = 57293u;
    var var_1 = Struct_1(global0.a);
    var var_2 = _wgslsmith_mod_i32(-5239i, _wgslsmith_sub_i32(-_wgslsmith_mult_i32(~54557i, max(0i, 1i)), (~2147483647i | func_2()) << (~44423u % 32u)));
    let var_3 = u_input.b;
    let var_4 = max(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(min(firstLeadingBit(reverseBits(vec4<i32>(-2147483647i, 0i, -1i, 13568i))), vec4<i32>(1i, ~37619i, 33039i, _wgslsmith_sub_i32(27669i, 63790i))), vec4<i32>(~select(9621i, 2147483647i, true), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), global1[_wgslsmith_index_u32(53510u, 16u)])), -abs(8392i), ~(~(-40807i)))));
    return (var_0 | _wgslsmith_div_u32(~global0.a.x, _wgslsmith_dot_vec4_u32(global0.a, global0.a) ^ ~0u)) & (var_1.a.x | (_wgslsmith_mult_u32(1u, 4294967295u) & var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec4<u32>(~(~global0.a.x), select(1326u, ~func_1(vec4<bool>(false, true, true, true), 2131f), reverseBits(global0.a.x) >= 5831u), ~u_input.c.x, 11135u));
    global0 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_u32(global0.a, global0.a) | ~(~global0.a)));
    let var_0 = Struct_1(vec4<u32>(~(~(~u_input.c.x)), ~(~(~26741u)), 1u, ~(u_input.b ^ max(1u, 4294967295u))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2032f);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(346f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(294f + -1800f), _wgslsmith_f_op_f32(f32(-1f) * -2312f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)), ~13934u < func_1(vec4<bool>(true, false, false, false), 1211f))))));
    var var_3 = !select(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(all(vec4<bool>(false, true, false, false)), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, !any(vec4<bool>(true, true, false, true))), all(vec2<bool>(all(vec2<bool>(true, false)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1697f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1002f + 2131f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1847f)))), global0.a.xzx, vec4<f32>(-3327f, 162f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1808f - 2021f) + -2529f) * -121f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -470f), -1000f))), countOneBits(~352i), -1038f);
}

