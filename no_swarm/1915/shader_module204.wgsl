struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(1u ^ (abs(28037u) & _wgslsmith_mult_u32(38530u, _wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.wx))), !all(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 20u)] >= 0u)));
    global0 = array<u32, 20>();
    let var_1 = !any(select(vec3<bool>(var_0.b & true, var_0.b, any(vec2<bool>(true, true))), vec3<bool>(true, var_0.b, false), false));
    var var_2 = ~min(0i, firstTrailingBit(select(2147483647i, 10236i, var_1)));
    let var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(select(select(vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(-2147483647i, -38225i, -2147483647i) >> (vec3<u32>(31734u, var_0.a, var_0.a) % vec3<u32>(32u)), select(vec3<bool>(false, var_0.b, false), vec3<bool>(false, var_0.b, false), vec3<bool>(var_1, true, var_1))), firstLeadingBit(firstLeadingBit(vec3<i32>(-32834i, 21595i, -3961i))), vec3<bool>(false, any(vec3<bool>(false, var_1, var_0.b)), false)), vec3<i32>(1i, 1i, 1i)), vec3<i32>(abs(~(~(-89504i))), reverseBits(-12012i), _wgslsmith_clamp_i32(countOneBits(i32(-1i) * -2147483647i), -1i, 52140i)));
    return _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, var_0.a));
}

fn func_2() -> i32 {
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    let var_0 = min(~firstLeadingBit(~(~u_input.a)), vec4<u32>(6204u, ~u_input.a.x, 1u, max(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a.x), vec4<u32>(850u, 29653u, 0u, 4294967295u)), ~global0[_wgslsmith_index_u32(0u, 20u)]), ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(15120u, u_input.a.x), 20u)])));
    let var_1 = Struct_1(func_3(), true);
    let var_2 = u_input.a.yz;
    return 0i;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    global0 = array<u32, 20>();
    var var_0 = reverseBits(_wgslsmith_add_vec4_i32(firstTrailingBit(firstTrailingBit(select(vec4<i32>(-1i, -30134i, 79476i, 17522i), vec4<i32>(91549i, -35645i, 1i, -2147483647i), false))), vec4<i32>(-1i, select(func_2(), ~1i, true), _wgslsmith_clamp_i32(firstTrailingBit(0i), func_2(), _wgslsmith_add_i32(-1i, -4926i)), max(~34769i, firstLeadingBit(-5924i)))));
    var var_1 = firstLeadingBit(40825u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(187f * _wgslsmith_f_op_f32(f32(-1f) * -1854f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -363f) - _wgslsmith_f_op_f32(2597f + -331f)), _wgslsmith_f_op_f32(abs(-1011f)), _wgslsmith_f_op_f32(trunc(-441f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-566f, -465f, 803f, 693f) + vec4<f32>(2195f, 1015f, -571f, -1056f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-888f, -1000f, 216f, 1152f) * vec4<f32>(-720f, -102f, 471f, -502f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(288f, -1190f, -1178f, -657f) + vec4<f32>(-1562f, -382f, -527f, 147f)))))) * vec4<f32>(1769f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-399f + _wgslsmith_f_op_f32(round(890f))), _wgslsmith_f_op_f32(277f - _wgslsmith_f_op_f32(522f + -957f)))), -1023f, _wgslsmith_f_op_f32(-346f * _wgslsmith_div_f32(-1595f, _wgslsmith_f_op_f32(f32(-1f) * -613f)))));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -153f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -727f)))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1103f, _wgslsmith_f_op_f32(1735f + 776f), func_1(vec2<bool>(true, true), Struct_1(1u, false)))), _wgslsmith_div_f32(-1679f, -1877f))))));
    var var_1 = u_input.a;
    global0 = array<u32, 20>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1690f, _wgslsmith_f_op_f32(step(1000f, -990f)), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(min(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(75819u, 20u)]), var_1.x, ~4294967295u) >> (min(min(vec3<u32>(global0[_wgslsmith_index_u32(80909u, 20u)], var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]) >> (vec3<u32>(var_1.x, 3172u, 1u) % vec3<u32>(32u)), vec3<u32>(36798u, 44968u, var_1.x)), vec3<u32>(abs(11513u), u_input.a.x, _wgslsmith_add_u32(57764u, global0[_wgslsmith_index_u32(1u, 20u)]))) % vec3<u32>(32u)), vec4<f32>(-937f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1163f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -731f), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 571f)))));
}

