struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 25>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> vec2<u32> {
    var var_0 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 * arg_1), arg_1))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1), arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x * -429f)) - _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(f32(-1f) * -300f))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(468f, _wgslsmith_f_op_f32(1386f - 644f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1735f - -1000f)))), Struct_3(min(max(firstLeadingBit(0i), -17736i), arg_0), arg_0, Struct_1(vec4<bool>(true, true, u_input.d > global1[_wgslsmith_index_u32(u_input.a, 25u)], all(vec4<bool>(true, true, true, false)))), Struct_2(1477f, true, !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true)), -30829i), global0.x & _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_0, -29283i, 0i, 37375i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(u_input.a, 25u)], -1i, u_input.d), vec4<i32>(global1[_wgslsmith_index_u32(1u, 25u)], 13834i, -2147483647i, u_input.d))), abs(~(-43307i)), -abs(u_input.c)));
    var var_1 = reverseBits(u_input.a);
    let var_2 = Struct_3(_wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(var_0.c.e, arg_0)), -min(arg_0, abs(_wgslsmith_add_i32(u_input.b, 1i))), var_0.c.c, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(158f, _wgslsmith_f_op_f32(f32(-1f) * -552f)))), var_0.b, !vec4<bool>(any(var_0.c.c.a.yz), false, true, any(vec3<bool>(true, var_0.b, true)))), global0.x);
    var_1 = min(0u, ~u_input.a);
    var_1 = reverseBits(u_input.a);
    return _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_sub_u32(abs(u_input.a), 70224u)) << (vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(59513u, u_input.a)), ~(~u_input.a)) % vec2<u32>(32u)), vec2<u32>(47646u, 0u));
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_sub_u32(u_input.a, u_input.a);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 37707u) >> (vec4<u32>(var_0, 1u, 0u, var_0) % vec4<u32>(32u)), select(vec4<u32>(18052u, 4294967295u, 0u, 145742u), vec4<u32>(var_0, 1u, 1u, var_0), false)), 42704u) >> (~(func_3(u_input.c, vec4<f32>(-811f, 1000f, 261f, -575f)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 5357u), vec2<u32>(46403u, 13976u), vec2<u32>(0u, u_input.a))) % vec2<u32>(32u)), countOneBits(vec2<u32>(~7728u, u_input.a)) ^ vec2<u32>(firstLeadingBit(var_0), 23064u));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_3) -> bool {
    var var_0 = Struct_1(!vec4<bool>(all(vec3<bool>(arg_2.d.b, arg_2.d.b, arg_2.d.c.x)), false, !any(vec2<bool>(false, arg_2.c.a.x)), arg_2.c.a.x));
    global0 = _wgslsmith_div_vec2_i32(abs(firstLeadingBit(vec2<i32>(arg_2.a, arg_2.a) ^ vec2<i32>(u_input.d, global0.x))) << (func_2() % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -arg_2.b), countOneBits(-vec2<i32>(arg_2.e, -1i))) | countOneBits(vec2<i32>(35401i, ~global0.x)));
    var_0 = Struct_1(vec4<bool>(any(!var_0.a.xxw), var_0.a.x, true, select(true, true, var_0.a.x | true)));
    global0 = reverseBits(select(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2.e, -2147483647i), vec3<i32>(global0.x, -1i, 0i)), -9490i), vec2<i32>(47944i, global0.x), 333f < _wgslsmith_f_op_f32(arg_2.d.a + -258f)));
    let var_1 = (_wgslsmith_f_op_f32(trunc(arg_2.d.a)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 719f)))) | arg_2.d.b;
    return _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(88954u, 50843u, arg_0), _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, u_input.a), abs(51368u), _wgslsmith_mod_u32(arg_1.x, arg_0)), 13487u), ~(~u_input.a)) < _wgslsmith_div_u32(arg_1.x, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-402f + _wgslsmith_f_op_f32(abs(-251f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f - -1864f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1033f))))), -544f, -515f), all(select(vec2<bool>(func_1(u_input.a, vec3<u32>(u_input.a, 1u, 0u), Struct_3(global0.x, u_input.c, Struct_1(vec4<bool>(false, false, true, false)), Struct_2(1000f, false, vec4<bool>(true, true, false, false)), 1i)), true), vec2<bool>(func_1(u_input.a, vec3<u32>(u_input.a, 44973u, u_input.a), Struct_3(global0.x, 1i, Struct_1(vec4<bool>(false, true, false, true)), Struct_2(640f, false, vec4<bool>(false, false, true, false)), -2147483647i)), true), select(vec2<bool>(false, false), vec2<bool>(false, false), true))), Struct_3(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b, 1i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(37324i, 1i), vec2<i32>(-9899i, 2147483647i)), global1[_wgslsmith_index_u32(1u, 25u)])), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(37418u, 25u)] >= u_input.c, true, true, true)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1100f, -963f)), true, vec4<bool>(true, true, all(vec2<bool>(false, true)), true)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 25u)], global0.x) & vec4<i32>(-20366i, u_input.b, u_input.c, u_input.b), ~vec4<i32>(u_input.b, 12277i, 0i, global1[_wgslsmith_index_u32(0u, 25u)]))), min(countOneBits(-5550i), 1i));
    var var_1 = ~u_input.a;
    var var_2 = var_0.c.c;
    let var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.c.d.a))), var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1260f - -828f)))), true, Struct_3(global0.x >> (u_input.a % 32u), -global0.x, var_0.c.c, var_0.c.d, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(2147483647i, 0i, var_0.c.a, u_input.c), ~vec4<i32>(2147483647i, 82959i, global1[_wgslsmith_index_u32(4294967295u, 25u)], 1i), vec4<bool>(var_2.a.x, var_2.a.x, false, var_0.c.d.c.x)), countOneBits(vec4<i32>(var_0.d, 4807i, u_input.c, 0i)))), 7372i);
    let var_4 = var_3.c;
    var var_5 = var_4.d.a;
    let var_6 = abs(2147483647i) > var_3.c.a;
    var var_7 = var_4.c;
    global1 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x + 2167f), _wgslsmith_f_op_f32(881f + -1000f))))), select(vec4<i32>(global1[_wgslsmith_index_u32(~2948u, 25u)], ~0i, -_wgslsmith_add_i32(var_3.d, u_input.d), _wgslsmith_sub_i32(i32(-1i) * -16846i, firstTrailingBit(-1i))), -abs(-vec4<i32>(u_input.d, -3022i, -28413i, -2147483647i)), var_4.c.a.x), 15063u, -1646f, (_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, 1u)) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(13108u, u_input.a), vec2<u32>(1u, 60439u)), vec2<u32>(u_input.a, 30104u)) % vec2<u32>(32u))) >> (~(select(vec2<u32>(1u, 120508u), vec2<u32>(u_input.a, 18398u), var_3.c.d.c.yw) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

