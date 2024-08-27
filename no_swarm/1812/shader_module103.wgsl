struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<bool, 23> = array<bool, 23>(true, true, true, true, false, false, true, false, true, true, false, true, true, false, false, true, true, true, true, true, false, true, true);

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = arg_1.x;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-global0.x), arg_0, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c.x, 4294967295u) & _wgslsmith_clamp_vec2_u32(u_input.c.xx | u_input.c.yz, min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.c.x, u_input.c.x)), reverseBits(vec2<u32>(14685u, u_input.c.x))), vec2<u32>(u_input.a, u_input.d)), 24u)], ~vec3<u32>(0u >> (u_input.b % 32u), reverseBits(min(4294967295u, u_input.c.x)), u_input.a));
    var var_2 = var_1.c;
    let var_3 = var_1;
    global3 = !((global0.x != global0.x) && false);
    return !select(!vec2<bool>(var_2.a | var_2.a, any(vec2<bool>(true, var_3.c.a))), vec2<bool>(var_3.b.x || (true & var_1.c.a), true), all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_3.d.yy, u_input.c.xy), 23u)])));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    global2 = array<Struct_1, 24>();
    var var_0 = 4294967295u;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x), global0.x))), select(select(vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 23u)], true), all(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(arg_0, 23u)]))), vec2<bool>(all(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], false, false, global1[_wgslsmith_index_u32(arg_0, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(14214u, 23u)], global1[_wgslsmith_index_u32(69042u, 23u)], global1[_wgslsmith_index_u32(arg_0, 23u)], global1[_wgslsmith_index_u32(arg_0, 23u)]), true)), global1[_wgslsmith_index_u32(~(~u_input.d), 23u)]), func_3(select(vec2<bool>(true, true), select(vec2<bool>(global1[_wgslsmith_index_u32(13250u, 23u)], global1[_wgslsmith_index_u32(25585u, 23u)]), vec2<bool>(global1[_wgslsmith_index_u32(10911u, 23u)], global1[_wgslsmith_index_u32(arg_0, 23u)]), global1[_wgslsmith_index_u32(arg_0, 23u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 23u)])), _wgslsmith_sub_vec2_i32(~vec2<i32>(arg_1, arg_1), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(39829i, arg_1))))), global2[_wgslsmith_index_u32(62425u, 24u)], firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(arg_0, _wgslsmith_clamp_u32(1u, 1u, 20202u)), ~min(arg_0, u_input.b), 0u)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(1688f * _wgslsmith_f_op_f32(select(143f, var_1.a, false))))), var_1.b, Struct_1(true), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 0u, 135567u), u_input.c & vec3<u32>(var_1.d.x, 33425u, 39242u)) >> (vec3<u32>(arg_0 ^ var_1.d.x, ~var_1.d.x, ~12672u) % vec3<u32>(32u))));
    global3 = true;
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.a)))), vec2<bool>(false, var_1.c.a), var_2.c, u_input.c);
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<f32>(global0.x, -294f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1097f))))))));
    let var_1 = vec3<i32>(~(-2147483647i), reverseBits(38115i), -(2147483647i << (~abs(u_input.d) % 32u)));
    global1 = array<bool, 23>();
    var var_2 = func_2(u_input.c.x, -_wgslsmith_add_i32(var_1.x >> (_wgslsmith_mult_u32(5029u, u_input.b) % 32u), ~var_1.x));
    var var_3 = ~((~vec4<u32>(4294967295u, 50558u, 4294967295u, u_input.d) << (~firstTrailingBit(vec4<u32>(var_2.d.x, u_input.d, 24075u, var_2.d.x)) % vec4<u32>(32u))) & countOneBits(~vec4<u32>(0u, 0u, u_input.c.x, var_2.d.x)));
    return func_2(abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b, u_input.a), ~var_2.d.x)), i32(-1i) * -8803i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = vec2<f32>(866f, 124f);
    var var_1 = ~var_0.d.x;
    var var_2 = var_0.c;
    var_2 = Struct_1(func_1().a >= global0.x);
    global2 = array<Struct_1, 24>();
    let var_3 = func_2(43280u, countOneBits(min(max(36623i, ~(-38244i)), countOneBits(1i >> (u_input.b % 32u))))).b;
    global3 = all(!vec3<bool>(global1[_wgslsmith_index_u32(~50214u, 23u)], true, var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, -16874i), _wgslsmith_div_i32(1i, -2147483647i), firstTrailingBit(-1i), _wgslsmith_div_i32(1i, 2147483647i)), -abs(vec4<i32>(-1i, 1i, -21781i, 2147483647i))), -abs(_wgslsmith_sub_i32(-2147483647i, -1i))), vec4<f32>(1000f, _wgslsmith_f_op_f32(select(2191f, _wgslsmith_f_op_f32(-global0.x), var_2.a | var_2.a)), _wgslsmith_div_f32(1010f, var_0.a), _wgslsmith_f_op_f32(max(1515f, var_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(1557f, _wgslsmith_f_op_f32(-1729f + global0.x), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-448f + -2392f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-757f)))))), 49468i);
}

