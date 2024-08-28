struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: array<u32, 8>;

var<private> global2: array<i32, 27> = array<i32, 27>(42029i, -18939i, 0i, 2147483647i, -13262i, 466i, 2147483647i, 0i, 10803i, i32(-2147483648), 14523i, -1i, 12635i, -45217i, i32(-2147483648), 2147483647i, -12414i, i32(-2147483648), -7605i, 4746i, -1i, -17739i, 9404i, 56759i, -9741i, -6871i, 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = array<vec4<bool>, 31>();
    let var_0 = firstLeadingBit(~u_input.b);
    let var_1 = vec2<i32>(_wgslsmith_div_i32(1i, -firstLeadingBit(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9399u, 8u)], 8u)], 27u)])), 2147483647i) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.b.x, 0u, var_0.x, 1u), vec4<u32>(var_0.x, u_input.b.x, 46937u, 36478u) | vec4<u32>(1u, var_0.x, 53622u, 52601u)), firstLeadingBit(~vec4<u32>(0u, 51718u, 12245u, 0u))), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_0.x, 11536u), vec3<u32>(11585u, var_0.x, 0u)), _wgslsmith_mult_u32(u_input.b.x, var_0.x))) % vec2<u32>(32u));
    let var_2 = Struct_1(~vec4<u32>(~(~u_input.b.x), ~4294967295u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27453u, 8u)], 8u)], 8u)] & var_0.x, var_0.x), 1u), 839i >= _wgslsmith_dot_vec3_i32(-vec3<i32>(-34534i, var_1.x, -26370i), vec3<i32>(1i, -1i, abs(var_1.x))));
    global0 = array<vec4<bool>, 31>();
    return 720f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(559f, 2450f)))), Struct_1(vec4<u32>(0u, arg_3, 31957u, _wgslsmith_mod_u32(~35204u, 490u)), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(796f, -1212f, 1383f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1153f, 243f, -412f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1325f, -873f, 250f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(713f, -215f, -223f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -601f, 917f))), false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)))));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_0.c);
    var var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - var_2.x), -1188f), var_0.b, vec3<f32>(_wgslsmith_f_op_f32(812f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1297f), _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(731f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -241f)))), -1000f));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-var_3.a), var_0.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -524f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + var_2.x)), _wgslsmith_f_op_vec3_f32(abs(var_3.c)))));
    return var_3.b;
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2118f), func_2(vec3<u32>(select(firstLeadingBit(21984u), 329u >> (0u % 32u), u_input.a.x < -1i), 15335u, arg_0.a.x), vec3<u32>(0u, 22342u, arg_0.a.x), vec4<u32>(~_wgslsmith_sub_u32(0u, 0u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 79499u), 8u)] ^ 4294967295u, ~(global1[_wgslsmith_index_u32(6531u, 8u)] & 21345u), 0u), 37354u), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(416f + 857f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1820f) + _wgslsmith_f_op_f32(floor(389f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -788f) + -1319f), 537f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.c), var_0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 1000f, _wgslsmith_f_op_f32(-1243f - var_0.a)))), vec3<bool>(var_0.b.b, arg_0.b, true)));
    var var_2 = _wgslsmith_f_op_f32(433f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.c.x, -749f)), _wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = vec2<i32>(~_wgslsmith_add_i32(firstTrailingBit(1i), 1i) | ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, -2147483647i) >> (vec3<u32>(arg_0.a.x, global1[_wgslsmith_index_u32(var_0.b.a.x, 8u)], 0u) % vec3<u32>(32u)), ~vec3<i32>(-674i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 27u)], u_input.a.x)), u_input.a.x);
    var_3 = -_wgslsmith_mod_vec2_i32(select(u_input.a.yx, u_input.a.xy, true), -(~(-vec2<i32>(u_input.a.x, var_3.x))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-2689f + var_1.x))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c.yy), _wgslsmith_f_op_vec2_f32(var_1.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(997f, var_1.x))))), func_2(arg_0.a.xzy, vec3<u32>(arg_0.a.x, u_input.b.x, 1u), abs(firstLeadingBit(arg_0.a)), 0u).b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 27>();
    global1 = array<u32, 8>();
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(!(-1i > (u_input.a.x | u_input.a.x)), any(vec2<bool>(select(false, false, false), any(vec4<bool>(false, true, false, false))))), true);
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_1(Struct_1(~firstLeadingBit(~vec4<u32>(52436u, 58651u, u_input.b.x, 18523u)), any(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false))))));
    let var_3 = firstTrailingBit(max(vec4<u32>(reverseBits(u_input.b.x) >> (u_input.b.x % 32u), select(countOneBits(u_input.b.x), _wgslsmith_add_u32(0u, u_input.b.x), var_0.x), ~8122u >> (~4294967295u % 32u), ~firstTrailingBit(33093u)), ~_wgslsmith_mod_vec4_u32(func_2(vec3<u32>(56481u, 55871u, u_input.b.x), vec3<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)]), vec4<u32>(51377u, global1[_wgslsmith_index_u32(43773u, 8u)], 4294967295u, 0u), 0u).a, ~vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.b.x, 15118u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.xxz, vec3<i32>(8776i, 0i, u_input.a.x)), select(~abs(u_input.a.xzw), vec3<i32>(-1i) * -vec3<i32>(1i, -1i, 37251i), any(vec2<bool>(true, true)))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -593f)))), vec4<f32>(-646f, var_2.x, -1027f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * -209f))));
}

