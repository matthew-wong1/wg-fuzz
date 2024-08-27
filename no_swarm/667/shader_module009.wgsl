struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(i32(-2147483648), 1i, 0i, 28239i), vec4<i32>(-46458i, 40524i, 17111i, 2147483647i), vec4<i32>(6415i, -1i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1i, -5368i, -12694i), vec4<i32>(-1i, -19706i, i32(-2147483648), i32(-2147483648)), vec4<i32>(33017i, -5505i, 0i, -34986i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = Struct_2(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1050f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - -111f))))), Struct_1(vec2<f32>(1f, 1f)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-571f, -505f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2033f, 2200f)))))));
    var var_1 = Struct_5(firstLeadingBit(select(~abs(vec3<u32>(u_input.b, 45549u, u_input.b)), reverseBits(vec3<u32>(u_input.b, 0u, 20646u)), (global1.x || false) | true)), Struct_2(~global0.xzw, 347f, Struct_1(_wgslsmith_f_op_vec2_f32(var_0.d.a + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a.x, 1605f)))), var_0.c), abs(_wgslsmith_add_i32(63012i, ~u_input.c)));
    var var_2 = Struct_3(var_1.b.d, global0.xwy, _wgslsmith_div_u32(_wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(~1u, 45246u)), var_1.a.x), ~_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(var_1.a.x, 23885u, u_input.b, u_input.b)), vec4<u32>(~116973u, _wgslsmith_div_u32(u_input.b, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 45170u, u_input.b, 64195u), vec4<u32>(var_1.a.x, u_input.b, var_1.a.x, var_1.a.x)), 69951u), ~vec4<u32>(109009u, var_1.a.x, 1u, 76541u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(25564u, var_1.a.x >> (var_1.a.x % 32u), 4339u, ~u_input.b)), vec4<u32>(~34139u, u_input.b >> (reverseBits(10959u) % 32u), ~0u >> (u_input.b % 32u), var_1.a.x)));
    let var_3 = var_0.d.a.x;
    var var_4 = ~vec2<u32>(0u, u_input.b);
    return vec3<i32>(countOneBits(_wgslsmith_dot_vec4_i32(min(abs(vec4<i32>(-40543i, 2147483647i, var_1.c, 48315i)), _wgslsmith_add_vec4_i32(global2[_wgslsmith_index_u32(8468u, 6u)], global2[_wgslsmith_index_u32(var_1.a.x, 6u)])), vec4<i32>(var_0.a.x, -21034i, countOneBits(var_2.b.x), _wgslsmith_mod_i32(-1028i, -16033i)))), global0.x, 46383i);
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    var var_0 = ~(i32(-1i) * -29995i);
    global1 = vec2<bool>(-reverseBits(~global0.x) > global0.x, global1.x);
    let var_1 = -select(select(_wgslsmith_mult_vec4_i32(vec4<i32>(20206i, global0.x, 22862i, -23749i) | vec4<i32>(0i, 28869i, -32636i, 44477i), global2[_wgslsmith_index_u32(u_input.b << (1u % 32u), 6u)]), ~global2[_wgslsmith_index_u32(14016u, 6u)], vec4<bool>(false, false, true, true)), global2[_wgslsmith_index_u32(abs(u_input.b), 6u)], !(!vec4<bool>(global1.x, global1.x, false, false)));
    var var_2 = ~func_3(Struct_4(true));
    global1 = vec2<bool>(global1.x, var_2.x <= -2147483647i);
    return arg_0.x;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5, arg_2: f32) -> i32 {
    let var_0 = arg_1.b.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<f32>(1116f, -1067f, arg_1.b.c.a.x, arg_1.b.d.a.x))), _wgslsmith_f_op_f32(-arg_1.b.d.a.x), _wgslsmith_f_op_f32(f32(-1f) * -572f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.b, arg_1.b.c.a.x, arg_1.b.c.a.x) * vec3<f32>(arg_1.b.c.a.x, arg_1.b.c.a.x, 104f)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.x, -1000f, arg_2))))))));
    var var_2 = ~arg_1.a.zz;
    var_2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, arg_1.a.x, 30963u), ~0u, var_2.x ^ 1u)), arg_1.a.yy, firstTrailingBit(vec2<u32>(~var_2.x, 2357u)));
    let var_3 = firstTrailingBit(global0.zxz);
    return 31719i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 6>();
    global1 = vec2<bool>(global1.x, true);
    global0 = _wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(0u, 6u)] | -vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 2873i), _wgslsmith_mod_i32(1i, u_input.a.x), _wgslsmith_mod_i32(global0.x, global0.x), global0.x), _wgslsmith_clamp_vec4_i32(~(~max(global2[_wgslsmith_index_u32(1u, 6u)], vec4<i32>(-2147483647i, u_input.c, 1i, u_input.a.x))), vec4<i32>(select(-2147483647i, 1i, true), 2147483647i, u_input.a.x, -17586i & func_1(Struct_4(true), Struct_5(vec3<u32>(7084u, 4294967295u, 42727u), Struct_2(u_input.a, 2775f, Struct_1(vec2<f32>(-416f, 790f)), Struct_1(vec2<f32>(-1762f, 274f))), u_input.a.x), 1088f)), vec4<i32>(1i, _wgslsmith_mult_i32(6728i, u_input.a.x), global0.x << (85831u % 32u), 0i) << (((vec4<u32>(31597u, u_input.b, 0u, 12008u) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, u_input.b), vec4<u32>(24235u, 30057u, u_input.b, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_0 = Struct_2(vec3<i32>(abs(_wgslsmith_add_i32(_wgslsmith_add_i32(global0.x, u_input.c), select(u_input.c, u_input.a.x, global1.x))), global0.x, ~_wgslsmith_clamp_i32(u_input.a.x, firstTrailingBit(-1i), countOneBits(-1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1202f * 611f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -884f) * _wgslsmith_f_op_f32(f32(-1f) * -857f)))), Struct_1(vec2<f32>(508f, _wgslsmith_f_op_f32(f32(-1f) * -879f))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-332f, -1000f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1140f), _wgslsmith_f_op_f32(floor(1461f))))));
    let var_1 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(661f)), var_0.b)), vec3<i32>(_wgslsmith_dot_vec3_i32(abs(var_0.a), -vec3<i32>(2147483647i, global0.x, 0i)) >> (~_wgslsmith_sub_u32(30985u, u_input.b) % 32u), 1i, -u_input.c), 60421u, vec4<u32>(~(~u_input.b), _wgslsmith_add_u32(~u_input.b, 4294967295u), firstTrailingBit(1u), reverseBits(u_input.b) << (u_input.b % 32u)) << ((~countOneBits(vec4<u32>(63581u, u_input.b, u_input.b, u_input.b)) | vec4<u32>(~90263u, countOneBits(0u), 1u, 4294967295u >> (0u % 32u))) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, ~u_input.b, 1u, firstLeadingBit(min(66950u, 1u))));
    global2 = array<vec4<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(229f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a.x + 327f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(510f))))), global0.xz, vec4<u32>(var_1.d.x, ~var_1.c, _wgslsmith_mod_u32(var_1.e.x, ~(~50962u)), u_input.b), _wgslsmith_f_op_f32(min(var_0.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(192f)))))), ~(~_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.b, 0u, var_1.e.x, 1u)), vec4<u32>(94848u, 0u, 4294967295u, var_1.d.x), countOneBits(var_1.d))));
}

