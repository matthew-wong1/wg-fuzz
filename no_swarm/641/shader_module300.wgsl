struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 28> = array<bool, 28>(false, false, true, false, true, false, true, false, true, false, false, false, false, true, true, true, false, true, true, true, false, false, true, false, false, true, true, true);

var<private> global2: array<f32, 2>;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-395f, -1520f), vec2<f32>(-614f, 271f), 59694u, vec3<u32>(27296u, 1u, 4294967295u));

var<private> global4: vec4<f32> = vec4<f32>(-419f, -983f, 1188f, -1000f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = arg_1;
    global4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(26352u, 2u)])), _wgslsmith_f_op_f32(max(arg_1.b.x, global2[_wgslsmith_index_u32(43395u, 2u)]))), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(exp2(arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-991f, global3.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.x, global3.a.x, _wgslsmith_f_op_f32(sign(-379f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.d.x, 2u)])))), vec4<f32>(1000f, var_2.a.x, 1000f, global3.b.x)));
    let var_3 = ~countOneBits(~u_input.b);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1403f, 780f, arg_1.a.x, var_2.b.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1053f, global3.a.x, 502f, 789f) + vec4<f32>(global3.a.x, arg_1.b.x, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.x, -795f, -1680f, 1306f), vec4<f32>(var_1.a.x, global3.b.x, global4.x, -581f))), true)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(var_1.d.x, 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), global4.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-164f * 636f), _wgslsmith_f_op_f32(-arg_1.a.x))))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(u_input.a, arg_2)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-140f, 918f, 1108f, arg_2.a.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-224f, 662f, -1363f, global2[_wgslsmith_index_u32(u_input.b.x, 2u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, global4.x, 148f, global3.a.x) + vec4<f32>(-332f, -322f, -144f, arg_2.a.x))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f + -210f));
    let var_1 = firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(-reverseBits(-35686i), -2147483647i | min(u_input.c, -9902i)), abs(_wgslsmith_mult_i32(-2147483647i << (arg_1.x % 32u), -u_input.c)), 31833i));
    global1 = array<bool, 28>();
    var var_2 = Struct_1(vec2<f32>(arg_2.b.x, global2[_wgslsmith_index_u32(arg_2.c, 2u)]), vec2<f32>(global2[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(599f - global4.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_2.b.x, 1905f)))))), _wgslsmith_dot_vec3_u32(arg_2.d, min(global3.d, ~arg_1.yxx) ^ (_wgslsmith_mult_vec3_u32(arg_2.d, vec3<u32>(41819u, 26757u, 4294967295u)) & vec3<u32>(121436u, 0u, arg_1.x))), ~(~global3.d));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(-42127i, arg_2)).x, arg_2.a.x)) - _wgslsmith_f_op_f32(-744f + _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(-var_2.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, global4.x, global2[_wgslsmith_index_u32(1u, 2u)], 392f) - vec4<f32>(arg_0.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 1000f, -457f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1431f, global3.a.x, 1000f, global4.x))) + vec4<f32>(_wgslsmith_f_op_f32(-2070f - -405f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.c, 2u)] + -594f), global3.a.x, _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.b, Struct_1(vec2<f32>(-1173f, arg_0.b.x), global3.a, 0u, arg_0.d))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(103753u, 2u)], global4.x, -1185f, global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<f32>(global3.b.x, 2454f, -1402f, arg_0.a.x), false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1572f, global2[_wgslsmith_index_u32(28873u, 2u)], global3.a.x, global3.a.x), vec4<f32>(-1471f, global2[_wgslsmith_index_u32(arg_0.c, 2u)], 778f, 540f), vec4<bool>(true, global1[_wgslsmith_index_u32(global3.c, 28u)], false, global1[_wgslsmith_index_u32(arg_1, 28u)]))), !vec4<bool>(global1[_wgslsmith_index_u32(11857u, 28u)], true, false, global1[_wgslsmith_index_u32(global3.d.x, 28u)]))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, global3.b.x, arg_0.b.x, global3.a.x))))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), -1060f, -1129f, _wgslsmith_f_op_f32(max(586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f) - _wgslsmith_f_op_f32(global3.a.x * -172f))))));
    let var_0 = true;
    global3 = arg_0;
    var var_1 = ~(u_input.d << (vec2<u32>(_wgslsmith_mod_u32(1u, arg_0.c), 1u >> (abs(0u) % 32u)) % vec2<u32>(32u)));
    let var_2 = vec3<i32>(_wgslsmith_clamp_i32(abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.x, u_input.d.x), -48506i)), -u_input.a, u_input.c), countOneBits(-u_input.a), ~var_1.x);
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~(~(~global3.d)));
    var var_1 = vec2<i32>(2147483647i, ~u_input.d.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_1(global4.yz, _wgslsmith_f_op_vec2_f32(global4.wz + vec2<f32>(global3.a.x, -808f)), ~global3.d.x, ~u_input.b.ywz), 1u)), global4.x, !any(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 28u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(40889u, 28u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(global3.d.x, 28u)]))))), _wgslsmith_f_op_f32(f32(-1f) * -808f), 783f);
    var var_3 = Struct_1(vec2<f32>(346f, global3.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_2.xy, vec2<f32>(-431f, global4.x)), vec2<f32>(global2[_wgslsmith_index_u32(17938u, 2u)], _wgslsmith_f_op_vec4_f32(func_3(-2147483647i, Struct_1(global4.yy, global4.yy, 4294967295u, global3.d))).x)))), abs(~_wgslsmith_div_u32(70888u, 4294967295u)), u_input.b.ywz);
    let var_4 = _wgslsmith_f_op_vec2_f32(global4.xz - vec2<f32>(908f, -1266f));
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1u, 2u)], var_2.x) * vec2<f32>(1342f, var_3.a.x)), _wgslsmith_f_op_vec2_f32(-var_3.a)))))), _wgslsmith_f_op_vec2_f32(-global4.wy), ~(_wgslsmith_dot_vec4_u32(~u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(31727u, var_0.x, 734u, global3.c), vec4<u32>(global3.d.x, 4294967295u, var_0.x, u_input.b.x))) | ~var_0.x), vec3<u32>(min(~u_input.b.x >> (_wgslsmith_dot_vec2_u32(var_0.yy, var_0.xy) % 32u), ~(~5577u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_0.x), ~var_3.d.yy), ~(~var_3.d.x)), _wgslsmith_add_u32(~59272u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 7310u), var_0.zx))));
    global2 = array<f32, 2>();
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4 * var_4))), global4.yw, !select(!vec2<bool>(true, global1[_wgslsmith_index_u32(global3.d.x, 28u)]), vec2<bool>(true, true), all(vec3<bool>(global1[_wgslsmith_index_u32(48376u, 28u)], false, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.xy * var_5.b) * vec2<f32>(var_2.x, _wgslsmith_f_op_f32(373f + 527f))), var_5.d.x, var_3.d >> (~(~u_input.b.wwz ^ (vec3<u32>(var_3.c, 4294967295u, 14010u) ^ var_5.d)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f - _wgslsmith_div_f32(var_2.x, 808f)))), firstLeadingBit(firstTrailingBit(30658i)));
}

