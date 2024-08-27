struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec4<i32>;

var<private> global2: array<i32, 31> = array<i32, 31>(-27356i, -6270i, 2147483647i, -7931i, -29909i, -54648i, 19666i, 1i, -16210i, 0i, i32(-2147483648), -1i, 0i, 1i, 1i, 41560i, 9996i, 12272i, 2147483647i, 35381i, 0i, 1367i, 35537i, 26892i, 0i, 0i, i32(-2147483648), -30668i, -30169i, 3527i, 69578i);

var<private> global3: Struct_2;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> u32 {
    global3 = Struct_2(arg_1.b.a, (abs(arg_1.b.d) | ~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(63985u, 14100u), 31u)]) >> (~(~(~global3.a.a)) % 32u), global4.c, _wgslsmith_clamp_i32(global1.x & firstTrailingBit(global1.x & 10398i), reverseBits(firstTrailingBit(reverseBits(arg_1.a.b))), -_wgslsmith_sub_i32(global4.d, -global1.x)));
    global3 = Struct_2(global4.a, global4.a.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-636f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * _wgslsmith_f_op_f32(select(2052f, arg_1.a.c, arg_0)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-889f, global3.c, false)), _wgslsmith_f_op_f32(-438f * -451f))), 876f)))), -1i);
    let var_0 = arg_1.a.c;
    var var_1 = true;
    global1 = min(vec4<i32>(global4.b | _wgslsmith_dot_vec4_i32(abs(global4.a.b), -arg_1.b.a.b), -14447i, ~_wgslsmith_mod_i32(global4.d, 58673i), max(-15003i, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(~arg_1.b.a.a, 31u)], ~global1.x, -global3.d))), global4.a.b);
    return countOneBits(1u);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>) -> i32 {
    let var_0 = global3.c;
    global4 = Struct_2(Struct_1(_wgslsmith_mult_u32(max(global4.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.a, 1u, 4294967295u, global4.a.a), vec4<u32>(u_input.a, global4.a.a, global4.a.a, 60349u))), global3.a.a), max(global3.a.b >> (max(vec4<u32>(77407u, 30194u, 0u, 0u), vec4<u32>(global3.a.a, global4.a.a, u_input.a, u_input.d)) % vec4<u32>(32u)), global3.a.b)), -(~(-1i)), global3.c, global3.b);
    var var_1 = Struct_2(global4.a, global4.b, -1195f, 1i);
    var var_2 = !(!(_wgslsmith_f_op_f32(-var_1.c) >= _wgslsmith_f_op_f32(trunc(var_1.c))) & true);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c, global4.c, global3.c, global4.c))))))));
    return 0i;
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = 1011f;
    var var_1 = arg_0;
    var var_2 = func_4(vec2<bool>(func_3(any(vec2<bool>(true, true)), Struct_3(arg_0, Struct_2(global3.a, 0i, -317f, global3.a.b.x), vec4<f32>(1025f, 305f, -1000f, -1629f))) <= 4294967295u, false), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, global1.x, ~(-1i)), min(vec3<i32>(~(-2147483647i), ~u_input.b.x, abs(0i)), -abs(vec3<i32>(global3.d, global4.a.b.x, -1i)))));
    var var_3 = Struct_1(11265u, vec4<i32>(-9902i, _wgslsmith_div_i32(reverseBits(-22732i), 64622i) << (_wgslsmith_clamp_u32(select(global3.a.a, 31187u, false), 4294967295u, ~4294967295u) % 32u), _wgslsmith_mod_i32(reverseBits(global3.d), firstTrailingBit(~(-2348i))), var_1.a.b.x & countOneBits(global1.x)));
    var var_4 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, max(291u, u_input.a) != ~u_input.a, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false);
    return _wgslsmith_mult_u32(var_3.a, 0u);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f), _wgslsmith_f_op_f32(abs(global4.c)));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, _wgslsmith_f_op_f32(exp2(global0.x))));
    global2 = array<i32, 31>();
    global3 = Struct_2(global4.a, -68755i, 1304f, global2[_wgslsmith_index_u32(func_2(Struct_2(global4.a, _wgslsmith_dot_vec3_i32(u_input.c, _wgslsmith_mod_vec3_i32(vec3<i32>(global4.b, global2[_wgslsmith_index_u32(91037u, 31u)], -2147483647i), u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(min(global0.x, 1000f))), 1i)), 31u)]);
    return ~global4.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(global3.a.a, vec4<i32>(0i, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(global3.a.a, 31u)], -23498i), 2147483647i ^ u_input.c.x, global1.x) ^ vec4<i32>(-2217i, -u_input.c.x, -23348i, ~global3.b)), 51257i, 596f, 2147483647i & _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c.x, global1.x) | global3.a.b.x, ~(-12678i)));
    global4 = Struct_2(Struct_1(0u, ~var_0.a.b), max(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.a.a, global3.a.a), 31u)] << (~(~u_input.e) % 32u), (1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.a, 55055u), vec2<u32>(57524u, global3.a.a)) % 32u)) ^ (_wgslsmith_dot_vec4_i32(var_0.a.b, var_0.a.b) | global2[_wgslsmith_index_u32(func_1(vec4<bool>(true, false, true, false), 1u), 31u)])), _wgslsmith_f_op_f32(abs(global4.c)), u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global4.c, global4.c))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global4.c)))));
    global3 = Struct_2(global4.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global4.a.b, vec4<i32>(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(var_0.a.a, 31u)], u_input.c.x), firstLeadingBit(-36765i), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(69790u, 31u)], -12092i), ~global1.x)), _wgslsmith_mult_i32(~_wgslsmith_sub_i32(var_0.b, -2147483647i), ~(-global2[_wgslsmith_index_u32(0u, 31u)])), i32(-1i) * -select(global4.a.b.x, 0i, true)), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_add_i32(42805i, ~global3.a.b.x << (firstTrailingBit(var_0.a.a) % 32u)));
    global3 = Struct_2(Struct_1(func_2(var_0), global4.a.b), i32(-1i) * -11914i, global4.c, i32(-1i) * -(i32(-1i) * -global2[_wgslsmith_index_u32(global4.a.a, 31u)]));
    let var_2 = vec4<u32>(~(~global4.a.a) | ~global3.a.a, global3.a.a, ~global4.a.a, ~((1u >> (global3.a.a % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global4.a.a, global4.a.a, global4.a.a), vec3<u32>(var_0.a.a, 51567u, 78205u)) % 32u))) ^ vec4<u32>(countOneBits(func_1(vec4<bool>(false, true, true, false), abs(global3.a.a))), ~1u, func_2(var_0), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.a, 0u, 0u), vec3<u32>(0u, 0u, u_input.d), vec3<u32>(u_input.e, 0u, u_input.e)), abs(vec3<u32>(35190u, u_input.d, 1u)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, u_input.e, global4.a.a), vec3<u32>(u_input.a, 23196u, global4.a.a)) % vec3<u32>(32u))));
    global2 = array<i32, 31>();
    global1 = global3.a.b;
    let var_3 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2, ~(~(vec4<u32>(var_0.a.a, 1u, var_3, 4294967295u) & vec4<u32>(0u, 11778u, u_input.d, 4294967295u)))), global2[_wgslsmith_index_u32(~77836u << (var_0.a.a % 32u), 31u)], select(var_2, select(var_2, vec4<u32>(56025u, global4.a.a, firstLeadingBit(var_0.a.a), _wgslsmith_mult_u32(u_input.d, u_input.e)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)));
}

