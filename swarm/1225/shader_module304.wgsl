struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: array<Struct_4, 4>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = Struct_1(_wgslsmith_mod_vec4_u32(global0.a, vec4<u32>(~global0.c.x, u_input.d.x, abs(12347u), ~29814u)) >> (global0.a % vec4<u32>(32u)), global0.b, select(_wgslsmith_sub_vec2_u32(select(~u_input.d.xy, vec2<u32>(global0.a.x, 0u), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), ~(~vec2<u32>(global0.c.x, u_input.b))), u_input.d.yy, select(vec2<bool>(true, true), vec2<bool>(true, true), true)), global0.d);
    let var_0 = ~(~78249u);
    global2 = array<Struct_4, 4>();
    var var_1 = Struct_2(true, vec4<i32>(arg_0.a, 1i, 2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(global0.d.zwx), vec3<i32>(global0.d.x, arg_0.a, global0.d.x)), vec3<i32>(min(arg_0.a, 18684i), arg_0.a, abs(global0.d.x)))), arg_0.b);
    let var_2 = ((u_input.a ^ firstTrailingBit(u_input.a)) <= (_wgslsmith_dot_vec2_i32(vec2<i32>(88532i, 2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b.x, 2147483647i), var_1.b.wx, var_1.b.yw)) ^ -1i)) || false;
    return 4294967295u >> (u_input.c % 32u);
}

fn func_2() -> f32 {
    var var_0 = max(~func_3(Struct_3(_wgslsmith_sub_i32(1753i, 0i), vec4<f32>(-287f, global0.b, global0.b, 1997f))), ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, 21005u), global0.c), ~u_input.d.yy));
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(u_input.a, global0.d.x)), i32(-1i) * -1393i, firstLeadingBit(u_input.a) | ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.x, global0.d.x, -6627i), vec3<i32>(58205i, -12808i, global0.d.x)), 35840i), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(19421i, -15808i, 9622i, min(-1i, -1i)), abs(-vec4<i32>(u_input.a, 2147483647i, 1i, global0.d.x))), vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(global0.d), global0.d), -27081i, 1i, 13095i)));
    var var_2 = Struct_3(firstTrailingBit(0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(global0.b)), _wgslsmith_f_op_f32(min(920f, -1395f)), global0.b, -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, -1367f, global0.b, global0.b) - vec4<f32>(global0.b, -962f, global0.b, global0.b)))))));
    let var_3 = global0.d.wyz;
    global2 = array<Struct_4, 4>();
    return -739f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_2(arg_0.d.x < ~countOneBits(2147483647i), -arg_0.d, vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), true && (51030u < u_input.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(func_2()))), 1000f));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))), -1002f, all(!select(vec3<bool>(false, true, var_0.a), vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, true))))), 768f, global0.b);
    let var_2 = !var_0.a | !(-_wgslsmith_sub_i32(0i, var_0.b.x) < _wgslsmith_div_i32(~2147483647i, _wgslsmith_sub_i32(u_input.a, global0.d.x)));
    global0 = Struct_1(vec4<u32>(u_input.b | _wgslsmith_dot_vec4_u32(arg_0.a, min(vec4<u32>(100173u, 1u, 35863u, u_input.b), vec4<u32>(arg_0.c.x, u_input.b, arg_0.a.x, 28391u))), abs(~global0.c.x), ~(~(~global0.a.x)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, arg_0.a.x, ~0u), countOneBits(~arg_0.c.x), ~(~u_input.d.x))), global0.b, _wgslsmith_div_vec2_u32(~vec2<u32>(arg_0.c.x, arg_0.a.x >> (4294967295u % 32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, ~arg_0.a.x), reverseBits(global0.c) | vec2<u32>(global0.c.x, 19882u))), global0.d);
    global1 = !(!(u_input.a < _wgslsmith_mod_i32(_wgslsmith_add_i32(13111i, var_0.b.x), 1i & arg_0.d.x)));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_mod_vec4_u32(global0.a, vec4<u32>(u_input.b, 1u, 83374u, u_input.b)), -1680f, u_input.d.xz, ~global0.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(946f, global0.b, 693f, 1570f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, global0.b, 1518f))))) - 1129f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(766f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.b, 753f)), -137f)))))));
    var var_1 = false;
    var var_2 = Struct_2(select(all(vec2<bool>(true, select(true, false, false))), false, true && any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), global0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1306f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - 1196f) * _wgslsmith_f_op_f32(1795f + global0.b)), _wgslsmith_f_op_f32(644f - global0.b), _wgslsmith_f_op_f32(-global0.b))));
    global1 = false;
    let var_3 = 1323f;
    var var_4 = vec2<u32>(4294967295u, u_input.c | u_input.b);
    var_1 = false | var_2.a;
    let var_5 = global2[_wgslsmith_index_u32(u_input.b, 4u)];
    var var_6 = vec2<u32>(~select(global0.a.x, min(var_5.b.a.x, 0u) & global0.c.x, any(!vec2<bool>(var_2.a, var_2.a))), ~24439u);
    let x = u_input.a;
    s_output = StorageBuffer(max(~(vec2<i32>(-1i) * -vec2<i32>(492i, global0.d.x)), ~vec2<i32>(2147483647i & u_input.a, select(-10874i, var_2.b.x, var_2.a))), var_3);
}

