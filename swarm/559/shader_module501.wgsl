struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 11> = array<f32, 11>(1346f, 457f, 911f, -700f, 1156f, -160f, 487f, 910f, -382f, 1078f, 1862f);

var<private> global2: f32;

var<private> global3: array<vec4<i32>, 11>;

var<private> global4: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-42737i, i32(-2147483648), 2147483647i), vec3<i32>(-16964i, 21197i, 1i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(-40352i, 18515i, 2147483647i), vec3<i32>(-24407i, -19999i, i32(-2147483648)), vec3<i32>(19942i, i32(-2147483648), -6420i), vec3<i32>(i32(-2147483648), -1i, 88517i), vec3<i32>(-5844i, 2147483647i, 0i), vec3<i32>(-12781i, 0i, 47959i), vec3<i32>(37054i, 0i, 27065i), vec3<i32>(-17725i, 2147483647i, -45856i), vec3<i32>(0i, 30694i, -53671i), vec3<i32>(-1i, -27170i, 8940i), vec3<i32>(-17914i, 6712i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 24190i), vec3<i32>(39307i, 37994i, -60420i), vec3<i32>(-1i, -33773i, -20919i), vec3<i32>(i32(-2147483648), -21616i, 0i), vec3<i32>(0i, 0i, 12005i), vec3<i32>(-1i, -20946i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, 18996i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<f32> {
    var var_0 = vec2<f32>(global1[_wgslsmith_index_u32(firstTrailingBit(~(~select(41584u, u_input.c, true))), 11u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.d, u_input.e, u_input.e), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.d, u_input.c, u_input.c), vec4<u32>(u_input.d, 90910u, u_input.a, u_input.e))), 11u)]))));
    global3 = array<vec4<i32>, 11>();
    global3 = array<vec4<i32>, 11>();
    global2 = 540f;
    global2 = _wgslsmith_f_op_f32(-var_0.x);
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-460f, _wgslsmith_f_op_f32(var_0.x - 777f), _wgslsmith_f_op_f32(step(var_0.x, 1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -577f, -1347f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(38196u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], -1101f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-631f, var_0.x, 616f) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.e, 11u)], -177f, global1[_wgslsmith_index_u32(17926u, 11u)]))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.e, 11u)], -373f, global1[_wgslsmith_index_u32(0u, 11u)]))))), ((u_input.b.x << (u_input.d % 32u)) ^ _wgslsmith_sub_i32(u_input.b.x, -1i)) != _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 9914i, 1i, 2147483647i) >> (vec4<u32>(0u, 1u, 47267u, 1u) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(18223u, 11u)], -1214f, 274f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-233f, 309f, 326f) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.d, 11u)], 2145f, -1000f)))))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(542f + 2894f), _wgslsmith_f_op_f32(var_0.x * 1000f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(exp2(var_0.x))))));
}

fn func_2() -> vec3<u32> {
    global1 = array<f32, 11>();
    let var_0 = Struct_2(u_input.b.x, u_input.a);
    global3 = array<vec4<i32>, 11>();
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3()))) + vec3<f32>(1172f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.b << (u_input.c % 32u), 11u)] - _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_0.b, 11u)], -1520f)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~select(4294967295u, u_input.d, true), 11u)] + _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(firstLeadingBit(var_0.b), 11u)], _wgslsmith_div_f32(-865f, global1[_wgslsmith_index_u32(var_0.b, 11u)]))))));
    return abs(_wgslsmith_div_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 16968u, u_input.d), vec3<u32>(u_input.d, 4294967295u, var_0.b))), vec3<u32>(abs(_wgslsmith_mult_u32(u_input.d, var_0.b)), 1u, ~1u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = arg_0.c;
    var var_1 = ~arg_1.b.a;
    global3 = array<vec4<i32>, 11>();
    global3 = array<vec4<i32>, 11>();
    return 20298i;
}

fn func_1() -> f32 {
    var var_0 = -vec2<i32>(func_4(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 11u)] >= global1[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(11127u, 11u)]), vec2<f32>(-836f, -301f))), global1[_wgslsmith_index_u32(u_input.a, 11u)], _wgslsmith_add_i32(u_input.b.x, 1i), func_2()), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 11u)], 919f, global1[_wgslsmith_index_u32(0u, 11u)], -196f) * vec4<f32>(1000f, global1[_wgslsmith_index_u32(u_input.d, 11u)], global1[_wgslsmith_index_u32(u_input.c, 11u)], -477f)), Struct_2(-7536i, u_input.e), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), select(u_input.b.xy, u_input.b.zy, vec2<bool>(false, false)))), u_input.b.x);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1797f, global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], -1953f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.e, 11u)], global1[_wgslsmith_index_u32(u_input.e, 11u)], 879f) + vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(u_input.d, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]))))), Struct_2(var_0.x, _wgslsmith_mod_u32(5504u, u_input.c)), vec3<bool>(any(vec4<bool>(all(vec4<bool>(true, true, false, false)), any(vec4<bool>(true, false, true, true)), all(vec2<bool>(true, true)), true)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), true)), ~firstTrailingBit(u_input.c) != 1u), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-70676i, 43161i, var_0.x, -1i), u_input.b << (vec4<u32>(34123u, 0u, u_input.a, u_input.c) % vec4<u32>(32u))), func_4(Struct_1(false, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 603f), global1[_wgslsmith_index_u32(u_input.d, 11u)], 23829i, vec3<u32>(u_input.e, 7913u, u_input.d)), Struct_3(vec4<f32>(global1[_wgslsmith_index_u32(u_input.e, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(u_input.d, 11u)]), Struct_2(-2147483647i, 1u), vec3<bool>(true, true, false), u_input.b.ww))), vec2<i32>(-var_0.x, ~var_0.x)));
    global3 = array<vec4<i32>, 11>();
    var_0 = ~var_1.d;
    let var_2 = select(~firstTrailingBit((vec3<u32>(var_1.b.b, 8810u, u_input.e) ^ vec3<u32>(u_input.d, 22415u, var_1.b.b)) | (vec3<u32>(78755u, 31778u, var_1.b.b) & vec3<u32>(79890u, 55816u, var_1.b.b))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e & 64612u, _wgslsmith_div_u32(var_1.b.b, 0u >> (var_1.b.b % 32u)), 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, reverseBits(var_1.b.b), ~0u), countOneBits(vec3<u32>(u_input.d, u_input.e, u_input.d)))), var_1.c);
    return -589f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2140f, 1043f, true)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 11u)])), 1392f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 32792u), vec3<u32>(83837u, u_input.a, 4294967295u)), 11u)]))));
    let var_2 = Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(sign(-236f)), _wgslsmith_f_op_f32(1218f * 1000f)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(_wgslsmith_clamp_u32(min(18604u, 0u), u_input.c, func_2().x), ~u_input.d), 1u), 11u)], ~_wgslsmith_div_i32(_wgslsmith_mult_i32(22785i, u_input.b.x ^ -14584i), -1i), vec3<u32>(abs(8105u), u_input.d, ~(~(~u_input.a))));
    global0 = var_2.e.x;
    global2 = 1f;
    var var_3 = Struct_2(_wgslsmith_mult_i32(1i, countOneBits(-22354i)), var_2.e.x);
    global4 = array<vec3<i32>, 22>();
    let var_4 = u_input.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global1[_wgslsmith_index_u32(var_2.e.x, 11u)], _wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(1026f - -900f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(793f)) * _wgslsmith_div_f32(var_2.c, var_2.b.x)) + _wgslsmith_f_op_f32(var_2.b.x - -1202f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(904f, var_2.b.x, var_2.c)))), vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x + 796f), _wgslsmith_f_op_f32(func_1()), global1[_wgslsmith_index_u32(~4671u, 11u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, var_1, var_2.c)))) * vec3<f32>(_wgslsmith_f_op_f32(select(324f, -1783f, var_2.a)), _wgslsmith_f_op_f32(var_2.b.x * global1[_wgslsmith_index_u32(u_input.d, 11u)]), 1247f)), false)), _wgslsmith_div_f32(var_1, global1[_wgslsmith_index_u32(8104u, 11u)]));
}

