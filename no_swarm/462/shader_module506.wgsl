struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32> = vec2<f32>(515f, 910f);

var<private> global2: array<f32, 17>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    return _wgslsmith_mult_u32(arg_1.a.x, ~countOneBits(var_0.a.x)) & 1u;
}

fn func_3(arg_0: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -294f)), 1283f), vec3<f32>(_wgslsmith_f_op_f32(min(321f, _wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(-1140f, _wgslsmith_f_op_f32(abs(-1000f)))))))));
    let var_1 = -vec2<i32>(min(_wgslsmith_add_i32(u_input.d.x, 1i) ^ -5159i, u_input.b.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yy));
    let var_2 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, !all(vec4<bool>(true, false, true, true))), !vec3<bool>(any(vec4<bool>(true, true, true, false)), false, true)));
    let var_3 = Struct_2(vec4<u32>(~abs(arg_0) >> (0u % 32u), ~abs(countOneBits(arg_0)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, arg_0), countOneBits(vec2<u32>(arg_0, arg_0))), 4294967295u), 4294967295u), Struct_1(vec4<u32>(arg_0, ~reverseBits(arg_0), ~1u, (arg_0 & arg_0) >> (~34429u % 32u)), -877f, 1i), var_0.xy, Struct_1(vec4<u32>(~arg_0, 0u, firstLeadingBit(4294967295u), 21136u >> (arg_0 % 32u)) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 4294967295u), vec4<u32>(0u, 3115u, 33118u, 50895u)), _wgslsmith_f_op_f32(trunc(-281f)), firstTrailingBit(-1i)), Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 12434u, arg_0, 103664u), vec4<u32>(arg_0, 0u, arg_0, arg_0)), ~vec4<u32>(arg_0, 55889u, 1u, arg_0)) >> ((~vec4<u32>(4294967295u, arg_0, arg_0, arg_0) ^ _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, arg_0), vec4<u32>(arg_0, 55931u, 3516u, 0u))) % vec4<u32>(32u)), 740f, var_1.x));
    let var_4 = var_2;
    return var_3.c;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    global2 = array<f32, 17>();
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(firstLeadingBit(37048u) | firstTrailingBit(func_2(false, Struct_1(vec4<u32>(51866u, 33510u, 83192u, 4294967295u), 490f, u_input.d.x))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x - 746f))) + arg_0.x), 749f));
    var var_0 = Struct_2(_wgslsmith_add_vec4_u32(reverseBits(~(~vec4<u32>(0u, 23138u, 78099u, 0u))), vec4<u32>(1u, 1u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 74279u, 22713u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 28268u, 40010u), vec3<u32>(69796u, 50652u, 1u)), 88275u))), Struct_1(vec4<u32>(4294967295u, firstTrailingBit(firstLeadingBit(4294967295u)), 4294967295u, 1u), global2[_wgslsmith_index_u32(select(~_wgslsmith_mod_u32(3891u, 73588u), ~1u, true), 17u)], _wgslsmith_mult_i32(u_input.a.x, ~max(19749i, u_input.d.x))), arg_2, Struct_1(abs(~vec4<u32>(0u, 9837u, 0u, 17457u)), 933f, arg_1.x), Struct_1(~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(ceil(arg_2.x)), arg_1.x));
    var var_1 = Struct_2(_wgslsmith_mod_vec4_u32(min(var_0.e.a, var_0.d.a), var_0.b.a) >> (min(~vec4<u32>(15617u, var_0.b.a.x, 48120u, var_0.d.a.x), var_0.d.a) % vec4<u32>(32u)), var_0.e, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 17u)]), 1f)), true && !arg_3)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-var_0.d.b))), _wgslsmith_f_op_f32(-arg_2.x)))), var_0.b, var_0.b);
    var var_2 = vec3<bool>(_wgslsmith_div_u32(abs(countOneBits(var_1.e.a.x)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.a.x, 77999u, var_1.e.a.x, 1u), vec4<u32>(var_1.e.a.x, 64483u, var_0.d.a.x, var_1.e.a.x)))) > max(_wgslsmith_clamp_u32(max(1u, var_0.a.x), var_1.b.a.x, ~4294967295u), var_1.d.a.x), true, false);
    return firstTrailingBit(_wgslsmith_div_u32(1u, ~(var_0.d.a.x & ~4457u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, ~(~4294967295u)), _wgslsmith_add_u32(73498u, ~86694u)), ~(~1u), _wgslsmith_div_u32(~(~0u), ~_wgslsmith_div_u32(func_1(vec3<f32>(652f, global1.x, -916f), vec2<i32>(2147483647i, u_input.c), vec2<f32>(581f, global1.x), false), _wgslsmith_clamp_u32(11573u, 64933u, 32956u)))), 17u)];
    let var_1 = abs(~1u);
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(46024u, var_1), ~(~57410u) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1, 19184u), vec3<u32>(43222u, 4294967295u, 1u)) % 32u), 1u, var_1), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1, 17u)])))), 1i);
    global0 = _wgslsmith_div_i32((-1i >> (_wgslsmith_div_u32(var_1, var_1) % 32u)) | u_input.c, 0i) | -select(-2147483647i, ~78947i, !(var_2.b >= -818f));
    global0 = firstTrailingBit(reverseBits(countOneBits(var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(max(vec4<i32>(53169i, u_input.a.x, 2147483647i, 9902i), countOneBits(vec4<i32>(2147483647i, u_input.b.x, -14367i, 2147483647i)))), vec4<i32>(var_2.c, var_2.c, _wgslsmith_mod_i32(u_input.d.x ^ u_input.b.x, abs(1i)), abs(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, -24145i, 1i, var_2.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(47961u, 17u)], -884f, -399f, 820f) - vec4<f32>(global2[_wgslsmith_index_u32(var_1, 17u)], 1246f, 1000f, global2[_wgslsmith_index_u32(0u, 17u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2010f, global1.x, -227f, global1.x), vec4<f32>(global1.x, 328f, global1.x, -2288f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_1, 17u)], 497f, var_2.b, global1.x) - vec4<f32>(-1070f, var_2.b, 1369f, 647f))))), select(~firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.d, vec2<i32>(0i, var_2.c), u_input.d)), ~u_input.b.yz, select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), vec2<bool>(any(vec4<bool>(false, true, false, true)), false), false)), var_2.c, u_input.b.yz);
}

