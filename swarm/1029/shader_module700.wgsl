struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-278f), Struct_1(678f), Struct_1(-1507f), Struct_1(571f), Struct_1(-558f), Struct_1(1000f), Struct_1(-274f), Struct_1(551f));

var<private> global2: array<bool, 3> = array<bool, 3>(false, true, false);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(623f)), arg_1.x) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-400f, arg_1.x), _wgslsmith_f_op_f32(arg_1.x + -1000f), arg_0)))), arg_1.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -165f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(690f)));
    let var_2 = u_input.a.x;
    let var_3 = ~u_input.b.x;
    return var_3;
}

fn func_2() -> u32 {
    let var_0 = func_3(any(!vec4<bool>(true, true, false, false || global2[_wgslsmith_index_u32(u_input.c.x, 3u)])), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(921f, -1363f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1694f, 292f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-163f, 1618f), vec2<f32>(1009f, 1571f), global2[_wgslsmith_index_u32(u_input.c.x, 3u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(1433f, -308f) + vec2<f32>(-1000f, 201f))))))), Struct_1(_wgslsmith_f_op_f32(round(-331f))));
    var var_1 = 735f;
    var var_2 = Struct_3(vec3<i32>(var_0, var_0, 0i & u_input.b.x) & abs(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(25111i, 1i, -1i), vec3<i32>(53421i, 1428i, -15546i), vec3<i32>(u_input.b.x, 1i, u_input.b.x)), firstTrailingBit(vec3<i32>(var_0, 2147483647i, var_0)))), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(~56226u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.c.x))), 8u)], -369f, vec3<i32>(-_wgslsmith_mod_i32(select(-2147483647i, -1i, global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), -97156i), -2147483647i, var_0), 2071f);
    global2 = array<bool, 3>();
    let var_3 = Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(1i, ~_wgslsmith_sub_i32(var_0, 1i), -u_input.b.x), var_2.d), Struct_2(u_input.a, ~_wgslsmith_mod_vec4_u32(var_2.b.b, vec4<u32>(446u, 39068u, 4294967295u, var_2.b.a.x)), _wgslsmith_f_op_vec4_f32(sign(var_2.b.c))), -396f, -vec3<i32>(1i, -64199i, -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -305f));
    return _wgslsmith_div_u32(~max(~(~0u), _wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), abs(var_2.b.a.x))), u_input.c.x);
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_2, 8>();
    var var_0 = vec3<bool>(all(!(!(!vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(1u, 3u)])))), (1u << (func_2() % 32u)) == ~min(~1u, ~0u), select(false, 34441u > select(max(u_input.c.x, u_input.a.x), ~4294967295u, u_input.b.x > 2147483647i), select(global2[_wgslsmith_index_u32(u_input.c.x, 3u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)], false) | all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], true, global2[_wgslsmith_index_u32(u_input.c.x, 3u)]))));
    let var_1 = u_input.b.x;
    var_0 = vec3<bool>(true, any(vec2<bool>(true, !(var_0.x == global2[_wgslsmith_index_u32(u_input.a.x, 3u)]))), _wgslsmith_div_u32((u_input.c.x ^ 24117u) << (4294967295u % 32u), u_input.a.x) <= select(max(44949u, ~1u), ~u_input.a.x << (~15116u % 32u), true));
    global1 = array<Struct_1, 8>();
    return -779f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-201f, 675f, 2122f, -970f) - vec4<f32>(-513f, 449f, 1000f, 786f)))) - vec4<f32>(_wgslsmith_f_op_f32(max(-136f, 142f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(939f)))), _wgslsmith_f_op_f32(round(-2547f)), _wgslsmith_f_op_f32(min(-189f, -1740f))))));
    var var_1 = 32075u;
    var var_2 = ~(~(u_input.a.x ^ _wgslsmith_sub_u32(firstLeadingBit(0u), 1u)));
    var var_3 = u_input.a | vec3<u32>(1u, u_input.a.x, 4294967295u ^ firstTrailingBit(u_input.a.x));
    var var_4 = Struct_3(~abs((vec3<i32>(u_input.b.x, 1i, u_input.b.x) << (vec3<u32>(var_3.x, u_input.a.x, u_input.c.x) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-50115i, 2147483647i, u_input.b.x), vec3<i32>(-14240i, u_input.b.x, u_input.b.x))), Struct_2(vec3<u32>(~(~u_input.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(55964u, 4294967295u, 48242u, var_3.x), vec4<u32>(var_3.x, 24427u, 1u, var_3.x)), vec4<u32>(4294967295u, 4294967295u, var_3.x, 1u) >> (vec4<u32>(var_3.x, var_3.x, u_input.c.x, 56582u) % vec4<u32>(32u))), 5931u), vec4<u32>(~9710u, 4294967295u, var_3.x, _wgslsmith_clamp_u32(var_3.x, 29406u, 4294967295u)) << (vec4<u32>(func_2(), u_input.a.x, u_input.c.x, abs(var_3.x)) % vec4<u32>(32u)), var_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - 1409f))), countOneBits(vec3<i32>(-1i, u_input.b.x ^ _wgslsmith_add_i32(u_input.b.x, u_input.b.x), -abs(-2147483647i))), var_0.x);
    var_1 = var_3.x;
    global1 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-2147483647i), countOneBits(~vec3<i32>(2147483647i, -4184i, u_input.b.x)) ^ (vec3<i32>(-u_input.b.x, firstTrailingBit(-2147483647i), var_4.a.x) >> (abs(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)) % vec3<u32>(32u))), 217f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -900f) - 499f) + 513f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)));
}

