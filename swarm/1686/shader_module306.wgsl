struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 2>;

var<private> global2: Struct_2;

var<private> global3: u32;

var<private> global4: array<u32, 26>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 44803u)) | global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], 2u)], 2u)], 28390u), ~1u), 2u)], 2u)], ~_wgslsmith_mult_u32(~9155u, ~global4[_wgslsmith_index_u32(u_input.b.x, 26u)]), ~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1643f - global2.a.x))), -1299f) + global2.c.b), u_input.b.x, _wgslsmith_div_i32(countOneBits(abs(42206i)), _wgslsmith_dot_vec3_i32(select(select(vec3<i32>(u_input.a.x, global2.c.d, global2.c.d), u_input.a, global0.yyy), vec3<i32>(global2.b, 0i, -4154i), all(global0.yyx)), u_input.a)), any(vec4<bool>(false, (global2.b >= 16768i) && any(vec2<bool>(global2.c.e, false)), true, false)));
    let var_1 = ~u_input.a.x;
    global3 = countOneBits(firstTrailingBit(~_wgslsmith_div_u32(_wgslsmith_mod_u32(42150u, 4294967295u), ~1u)));
    let var_2 = Struct_1(abs(_wgslsmith_sub_vec3_u32(~(vec3<u32>(global4[_wgslsmith_index_u32(u_input.c.x, 26u)], 43493u, global2.c.c) >> (u_input.c % vec3<u32>(32u))), abs(vec3<u32>(1u, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 26u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33575u, 2u)], 2u)])))), global2.a.x, 0u, _wgslsmith_clamp_i32(~var_1, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(global2.b, 1i), -global2.b, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 21694i), u_input.a.zz)), reverseBits(u_input.a.x)) & _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-2147483647i, var_0.d, var_0.d)), countOneBits(select(u_input.a, vec3<i32>(-8001i, 20337i, u_input.a.x), global0.yzw))), true);
    var var_3 = u_input.c;
    return u_input.a.x;
}

fn func_2() -> Struct_2 {
    global0 = select(vec4<bool>(global2.c.e, all(vec2<bool>(true, true)), u_input.a.x <= func_3(_wgslsmith_f_op_f32(-global2.c.b)), global2.c.e), select(!select(vec4<bool>(true, true, global0.x, true), vec4<bool>(global2.c.e, global0.x, true, false), !vec4<bool>(global0.x, false, true, global0.x)), vec4<bool>(!global0.x, true, global0.x, true), true), global0.x);
    global0 = !select(!select(select(vec4<bool>(true, global0.x, false, true), vec4<bool>(global2.c.e, true, false, true), vec4<bool>(global0.x, false, global0.x, true)), vec4<bool>(global0.x, false, true, true), true), select(vec4<bool>(false || global2.c.e, true, true, global2.c.d < u_input.a.x), select(!vec4<bool>(true, global0.x, true, false), !vec4<bool>(true, global0.x, global0.x, true), select(vec4<bool>(global2.c.e, false, global2.c.e, global2.c.e), vec4<bool>(false, false, global0.x, true), vec4<bool>(true, true, global2.c.e, global2.c.e))), vec4<bool>(true, global2.c.c > global2.c.a.x, true, true | global2.c.e)), any(!select(vec4<bool>(true, false, global0.x, true), vec4<bool>(global2.c.e, true, global2.c.e, global2.c.e), global0.x)));
    global4 = array<u32, 26>();
    global0 = !vec4<bool>(!(global0.x != true), global2.c.e, all(vec3<bool>(true, false, false)), global0.x & any(select(vec4<bool>(global2.c.e, global2.c.e, global2.c.e, global0.x), vec4<bool>(global0.x, true, false, true), vec4<bool>(global2.c.e, false, false, global0.x))));
    var var_0 = u_input.a.zz;
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.a.x, global2.c.b), global2.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1788f, 2300f))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.a.x, -788f)))), -13297i, Struct_1(min(abs(u_input.c), global2.c.a), 127f, global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global2.c.c, 2u)], 26u)], u_input.a.x, global2.c.e));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> bool {
    return true;
}

fn func_1() -> f32 {
    var var_0 = func_4(func_2(), 0i, global2.c.b);
    let var_1 = func_2().c;
    var var_2 = firstLeadingBit(countOneBits(min(~vec4<u32>(1u, global1[_wgslsmith_index_u32(global2.c.a.x, 2u)], 10214u, 34403u), vec4<u32>(5826u, u_input.c.x, 1u, 4294967295u) ^ vec4<u32>(global2.c.a.x, var_1.c, 36054u, global1[_wgslsmith_index_u32(4294967295u, 2u)]))) ^ ~vec4<u32>(0u, global4[_wgslsmith_index_u32(global2.c.a.x | 0u, 26u)], 4294967295u, ~global1[_wgslsmith_index_u32(93876u, 2u)]));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-987f)), _wgslsmith_f_op_f32(step(-127f, global2.a.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.b)) - global2.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-global2.c.b)))), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(func_2().b, -1i), vec2<i32>(global2.b | u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.d, u_input.a.x, u_input.a.x), vec3<i32>(global2.b, var_1.d, var_1.d))))), Struct_1(var_2.yyw, _wgslsmith_f_op_f32(-global2.a.x), (var_2.x >> (firstTrailingBit(var_1.c) % 32u)) >> (u_input.c.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, -1i, -2147483647i, global2.c.d) << (~vec4<u32>(69642u, global4[_wgslsmith_index_u32(5191u, 26u)], var_1.c, global4[_wgslsmith_index_u32(30189u, 26u)]) % vec4<u32>(32u)), vec4<i32>(global2.c.d, var_1.d, -13111i, 23981i & u_input.a.x)), var_1.e));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -773f) - 523f);
    return 135f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -470f))))), ~_wgslsmith_div_i32(global2.c.d, -2147483647i), global2.c);
    var var_1 = vec4<bool>(true, global2.c.d == _wgslsmith_mod_i32(-global2.b, _wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(-2147483647i, u_input.a.x, var_0.b))), true, func_2().c.e);
    let var_2 = ~_wgslsmith_sub_vec2_u32((vec2<u32>(global2.c.a.x, 13334u) | _wgslsmith_mod_vec2_u32(global2.c.a.yy, vec2<u32>(global2.c.c, global2.c.a.x))) >> ((~u_input.b << (~u_input.c.xz % vec2<u32>(32u))) % vec2<u32>(32u)), global2.c.a.xx);
    var var_3 = u_input.a;
    var var_4 = Struct_1(vec3<u32>(~(~1u | ~global2.c.c), 54087u, global4[_wgslsmith_index_u32(~min(~global1[_wgslsmith_index_u32(49844u, 2u)], u_input.b.x), 26u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.c.b))), global4[_wgslsmith_index_u32(func_2().c.c, 26u)], ~var_0.b, false);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(464f, -2135f))));
    var_4 = func_2().c;
    let var_6 = firstLeadingBit(-19371i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -298f), 2065f), firstLeadingBit(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 2u)], ~0u)), ~global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, var_0.c.a.x), 26u)], min(~_wgslsmith_dot_vec4_u32(vec4<u32>(51051u, 4294967295u, global4[_wgslsmith_index_u32(var_2.x, 26u)], 4294967295u), vec4<u32>(u_input.c.x, 10169u, global2.c.c, global2.c.a.x)), ~var_0.c.c));
}

