struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 4>;

var<private> global2: f32 = 314f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = 18781u;
    let var_1 = _wgslsmith_mult_vec2_i32(max(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(-7380i, abs(-4580i)), min(vec2<i32>(1i, 1i), -vec2<i32>(-3509i, -15811i)))), vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(select(vec2<i32>(45960i, 7595i), vec2<i32>(-2147483647i, 1i), vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(arg_0.x, 4u)])), select(vec2<i32>(46849i, -2147483647i), vec2<i32>(45306i, 55034i), global1[_wgslsmith_index_u32(arg_0.x, 4u)]), vec2<i32>(0i, -44096i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(359f, 637f)) * -632f);
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(800f, _wgslsmith_f_op_f32(sign(-673f)))))));
    global1 = array<bool, 4>();
    return all(vec2<bool>(all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)])), global1[_wgslsmith_index_u32(u_input.a.x, 4u)])) || true;
}

fn func_2() -> bool {
    global0 = -12157i;
    global0 = abs(-1i);
    global0 = _wgslsmith_mod_i32(min(_wgslsmith_div_i32(0i, _wgslsmith_clamp_i32(2147483647i, -28316i, 0i)) << (30993u % 32u), -3189i), ~34899i);
    let var_0 = Struct_2(u_input.a.zx, !(!func_3(vec2<u32>(u_input.a.x, 1u)) || true), !vec2<bool>(global1[_wgslsmith_index_u32((73596u & u_input.a.x) >> (firstTrailingBit(64863u) % 32u), 4u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x | u_input.a.x), 4u)]));
    var var_1 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(-49747i, select(1i, ~(-25170i), func_3(vec2<u32>(u_input.a.x, 0u))), -1i), firstTrailingBit(_wgslsmith_sub_vec3_i32(~(-vec3<i32>(-6362i, -1i, -14534i)), -(vec3<i32>(-25571i, -14754i, -25004i) << (u_input.a.yxy % vec3<u32>(32u))))), ~vec3<i32>(28124i, -56322i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(31163i, -32586i, -13764i), vec3<i32>(38383i, 35429i, 39069i)), -vec3<i32>(-1i, 0i, 1i))));
    return true;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> vec3<f32> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f))));
    let var_0 = _wgslsmith_sub_i32(~(firstTrailingBit(_wgslsmith_mult_i32(1i, -1i)) >> (1u % 32u)), abs(~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, -2973i), abs(2147483647i), abs(-60135i))));
    global2 = 2576f;
    let var_1 = select(max(~vec4<i32>(-var_0, var_0 & var_0, 1i << (arg_1.x % 32u), var_0), vec4<i32>(var_0, 2147483647i, 33653i, ~_wgslsmith_mult_i32(-1010i, 1i))), vec4<i32>(2147483647i, ~reverseBits(-var_0), 65066i, 559i), func_2());
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-779f, 461f, 1627f, -1000f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1384f, 2750f, 1000f, 1094f) - vec4<f32>(-455f, -1321f, -517f, 829f)))), global1[_wgslsmith_index_u32(firstLeadingBit(~46719u), 4u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    return vec3<f32>(var_2.x, -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2758f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(-var_2.x))))), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(true & global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), global1[_wgslsmith_index_u32(u_input.a.x, 4u)]);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f), -1064f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f)), _wgslsmith_f_op_f32(max(992f, -337f))) * _wgslsmith_f_op_vec3_f32(func_1(41620u, u_input.a << (u_input.a % vec4<u32>(32u))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x), var_1.a, vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], var_0.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(var_1.a - var_1.a))));
    global0 = i32(-1i) * -(0i >> (0u % 32u));
    let var_3 = ~(-_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(0i, -93196i, 6768i, -1i), vec4<i32>(-2147483647i, -2147483647i, 8035i, -2147483647i), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 4u)], var_0.x, var_0.x)), vec4<i32>(64837i, 0i, 2147483647i, -2147483647i)), vec4<i32>(1i, i32(-1i) * -34879i, _wgslsmith_mod_i32(0i, 1184i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -51296i, -2147483647i, 2147483647i), vec4<i32>(1i, 26361i, 2147483647i, 15720i)))));
    var var_4 = Struct_2(abs(~u_input.a.xy), _wgslsmith_f_op_f32(-582f * _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(713f * var_1.a.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x))), select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)] && var_0.x, false), !vec2<bool>(var_0.x, var_0.x), false), select(!select(vec2<bool>(true, false), vec2<bool>(var_0.x, false), vec2<bool>(false, true)), select(vec2<bool>(true, var_0.x), vec2<bool>(true, true), 4682u < u_input.a.x), true), vec2<bool>(!any(vec3<bool>(false, true, true)), func_3(u_input.a.zz))));
    let var_5 = Struct_2(~vec2<u32>(1u, 7301u), !var_4.c.x, var_4.c);
    var var_6 = vec4<i32>(_wgslsmith_div_i32(var_3, -22278i) | 2147483647i, -32753i, 12616i, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(-389f, ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_6.x, var_3, -72149i, var_3), ~vec4<i32>(0i, 2147483647i, 0i, var_6.x)) | vec4<i32>(_wgslsmith_div_i32(0i, var_3) & firstLeadingBit(var_3), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3, 0i, -2147483647i, var_6.x), vec4<i32>(-1i, -6587i, var_3, 49935i)), _wgslsmith_mod_i32(27368i, -23399i)), ~var_6.x, var_3), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_6.x, 1i) & var_6.wy, -vec2<i32>(var_6.x, -1i)), var_6.yx), 3907i & var_6.x, var_3, 24714i), u_input.a.zxz, _wgslsmith_clamp_u32(u_input.a.x, var_4.a.x, abs(0u)) >> (74023u % 32u));
}

