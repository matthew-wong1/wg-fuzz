struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 23>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-375f)))));
    global0 = array<vec4<u32>, 32>();
    let var_1 = ~max(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-52554i, -70375i, u_input.d.x, -1579i)), vec4<i32>(-2147483647i, -8681i, -33003i, u_input.d.x) >> (global0[_wgslsmith_index_u32(1u, 32u)] % vec4<u32>(32u))) & u_input.e.x, 6967i);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1475f + -200f))));
    let var_3 = _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 1i, 24139i, var_1), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, var_1, var_1, -12584i), vec4<i32>(29233i, u_input.d.x, 46735i, 60020i))), i32(-1i) * -1i)), -(u_input.d.x ^ _wgslsmith_dot_vec4_i32(-vec4<i32>(-53982i, u_input.d.x, 32654i, 18542i), -vec4<i32>(-2147483647i, 1i, 43963i, var_1))));
    return vec2<u32>(~select(reverseBits(~u_input.c.x), 4294967295u, any(!vec3<bool>(global3.x, global3.x, global3.x))), 22589u);
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<i32>(-1i, u_input.e.x, ~u_input.d.x, u_input.d.x);
    var var_1 = Struct_3(abs(u_input.a.zy) << (func_3() % vec2<u32>(32u)), ~46725u, false);
    global1 = true;
    var_1 = Struct_3(_wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(var_1.a, vec2<u32>(u_input.c.x, u_input.b.x)), countOneBits(u_input.c.zx)), abs(select(u_input.c.yz, u_input.b, global4[_wgslsmith_index_u32(59289u, 30u)])) << (~u_input.c.zz % vec2<u32>(32u))), u_input.a.x, var_1.c);
    global1 = true;
    return Struct_2(u_input.a, ~vec4<i32>(select(_wgslsmith_div_i32(u_input.d.x, var_0.x), firstTrailingBit(var_0.x), var_1.c), -1i, ~min(-2147483647i, -4831i), _wgslsmith_clamp_i32(-16263i, -u_input.d.x, _wgslsmith_clamp_i32(var_0.x, u_input.e.x, u_input.d.x))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    global4 = array<vec2<bool>, 30>();
    var var_0 = func_2();
    global1 = all(!vec4<bool>(true, select(true, global3.x, true), !all(vec3<bool>(true, false, global3.x)), global3.x));
    let var_1 = Struct_2(vec3<u32>(arg_2.a.x, var_0.a.x, ~(~(1u >> (var_0.a.x % 32u)))), firstTrailingBit(~(-var_0.b)));
    let var_2 = Struct_3(select(~(~select(var_0.a.yy, vec2<u32>(arg_2.a.x, 0u), true)), countOneBits(~var_0.a.xx), select(!(!vec2<bool>(global3.x, true)), !vec2<bool>(global3.x, false), !select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), arg_0))), _wgslsmith_dot_vec2_u32(abs(arg_2.a.yy), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 39720u), _wgslsmith_mult_vec2_u32(u_input.a.yy, var_0.a.zx))) & 19229u, true);
    return Struct_3(u_input.c.zx, 2204u, true);
}

fn func_1() -> f32 {
    global2 = array<Struct_2, 23>();
    global3 = vec2<bool>(global3.x, global3.x);
    global3 = vec2<bool>(false, global3.x);
    let var_0 = func_4(global3.x, 147f, func_2());
    global3 = global4[_wgslsmith_index_u32(firstTrailingBit(reverseBits(0u ^ ~var_0.b)), 30u)];
    return _wgslsmith_f_op_f32(-566f - _wgslsmith_f_op_f32(floor(-439f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-735f, -306f, 274f, -727f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1554f, -455f, 1000f, -1419f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(f32(-1f) * -2274f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(517f, 1026f, global3.x)) - _wgslsmith_f_op_f32(step(-115f, -1885f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1057f * 1529f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f * _wgslsmith_f_op_f32(step(1493f, -775f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1000f)), 633f))))));
    global1 = false;
    let var_1 = Struct_1(-u_input.e.x, min(_wgslsmith_sub_vec3_u32(u_input.c, abs(vec3<u32>(0u, u_input.a.x, 922u))), firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 49518u, 4294967295u)), ~u_input.c))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-989f + _wgslsmith_f_op_f32(f32(-1f) * -1263f))))), reverseBits(((vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, u_input.d.x) >> (global0[_wgslsmith_index_u32(u_input.b.x, 32u)] % vec4<u32>(32u))) | select(vec4<i32>(1i, u_input.e.x, -20263i, 54403i), vec4<i32>(u_input.e.x, u_input.d.x, 1i, 59526i), global3.x)) | abs(vec4<i32>(u_input.e.x, -14500i, 0i, u_input.e.x))));
    let var_2 = func_2();
    global0 = array<vec4<u32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<u32>(var_1.b.x, 38958u, 19658u, 0u) >> (global0[_wgslsmith_index_u32(0u, 32u)] % vec4<u32>(32u))), 1u), vec2<i32>(13639i, -var_1.d.x), vec4<i32>(var_1.a, -7058i, -1i, 40432i));
}

