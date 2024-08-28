struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(-9785i, 14406i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(-2537i, -4472i), vec2<i32>(105749i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(35270i, 0i), vec2<i32>(1i, 27607i));

var<private> global1: array<i32, 26>;

var<private> global2: array<Struct_3, 2>;

var<private> global3: Struct_2 = Struct_2(Struct_1(1137f, vec3<u32>(41641u, 119146u, 7625u), vec2<bool>(true, true), 3037u, vec2<bool>(true, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - arg_0.b.a);
    global0 = array<vec2<i32>, 8>();
    global2 = array<Struct_3, 2>();
    let var_1 = 1241f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, arg_0.b.a) * arg_0.c.zx))), _wgslsmith_f_op_vec2_f32(-arg_0.c.wx)), vec2<f32>(-210f, _wgslsmith_f_op_f32(-var_1))));
    return arg_0.b.d;
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = global3.a;
    global0 = array<vec2<i32>, 8>();
    let var_1 = global3.a;
    var_0 = global3.a;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1023f)) - 274f) * _wgslsmith_f_op_f32(floor(var_0.a)))), var_1.a, -1000f);
    return select(~select(reverseBits(u_input.a), firstTrailingBit(vec4<u32>(44862u, u_input.c.x, 4294967295u, 700u)), all(select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(true, arg_0, arg_0, false), true))), firstTrailingBit(vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.c.x, 1u, 37310u))), u_input.c.x >> (18066u % 32u), ~firstLeadingBit(var_1.d), _wgslsmith_add_u32(u_input.c.x, ~1u))), !vec4<bool>(var_1.e.x && any(vec2<bool>(var_0.e.x, var_0.e.x)), true, all(vec2<bool>(global3.a.c.x, false)), !var_0.e.x || arg_0));
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.a.a, -1121f), _wgslsmith_f_op_f32(floor(global3.a.a))) + global3.a.a)), vec4<bool>(true, !(!global3.a.c.x), !global3.a.c.x, global3.a.c.x), -1000f, countOneBits(1u));
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(abs(~0u)), var_0.d, u_input.c.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(54488u, var_0.d, 25887u, 6442u), u_input.a), ~17008u), var_0.d, func_2(global2[_wgslsmith_index_u32(~var_0.d, 2u)]))), ~(~vec4<u32>(reverseBits(6796u), ~global3.a.b.x, abs(4294967295u), var_0.d)), abs(~(func_3(global3.a.e.x) << (vec4<u32>(0u, global3.a.d, 1u, 50258u) % vec4<u32>(32u)))));
    var var_2 = global2[_wgslsmith_index_u32(var_1.x, 2u)];
    var var_3 = ~(-abs(vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.d.xxx, vec3<i32>(var_2.a.x, 4853i, global1[_wgslsmith_index_u32(var_1.x, 26u)])), var_2.d.x, _wgslsmith_sub_i32(var_2.a.x, var_2.a.x), -1i)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(1041f, _wgslsmith_f_op_f32(ceil(-333f))));
    let var_1 = _wgslsmith_add_i32(u_input.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)]);
    var var_2 = global3.a;
    global0 = array<vec2<i32>, 8>();
    let var_3 = 644f;
    let var_4 = func_1();
    global2 = array<Struct_3, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-850f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a)), _wgslsmith_f_op_f32(global3.a.a + _wgslsmith_div_f32(2565f, global3.a.a)), 1000f), firstTrailingBit(max(countOneBits(1u), ~35374u)));
}

