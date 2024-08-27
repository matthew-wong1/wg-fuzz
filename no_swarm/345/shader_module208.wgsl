struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = 320f;
    let var_1 = Struct_2(984f);
    let var_2 = vec2<bool>(select(any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), all(vec2<bool>(true, true)), all(global0[_wgslsmith_index_u32(arg_0.x, 19u)])), false);
    global0 = array<vec3<bool>, 19>();
    var var_3 = Struct_1(_wgslsmith_div_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 2979u), arg_0, arg_0), arg_0 << (u_input.b.yx % vec2<u32>(32u)), var_2.x), arg_0) >> ((vec2<u32>(firstLeadingBit(u_input.a), arg_0.x << (arg_0.x % 32u)) ^ u_input.c) % vec2<u32>(32u)), select(vec3<u32>(reverseBits(arg_0.x), 43687u >> (min(u_input.a, 19091u) % 32u), _wgslsmith_dot_vec3_u32(~u_input.b, ~vec3<u32>(0u, arg_0.x, 57898u))), u_input.b, true), true && (u_input.c.x > _wgslsmith_div_u32(u_input.a | arg_0.x, ~33964u)), select(select(select(!vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true), all(vec4<bool>(var_2.x, var_2.x, false, true))), vec4<bool>(!var_2.x, true, all(vec2<bool>(false, var_2.x)), !var_2.x), select(!vec4<bool>(false, false, var_2.x, var_2.x), !vec4<bool>(var_2.x, true, false, false), var_2.x)), !select(!vec4<bool>(var_2.x, false, var_2.x, var_2.x), select(vec4<bool>(false, var_2.x, false, true), vec4<bool>(var_2.x, var_2.x, var_2.x, true), true), vec4<bool>(var_2.x, var_2.x, false, true)), !select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(true, true, false, true), select(vec4<bool>(var_2.x, true, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(true, var_2.x, var_2.x, false)))));
    return all(select(vec4<bool>(false & (1614f < var_1.a), !all(vec2<bool>(true, false)), all(var_3.d.zw), var_3.c), var_3.d, var_2.x));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(u_input.c, vec3<u32>(~max(~4294967295u, ~1u), 4294967295u, firstLeadingBit(firstTrailingBit(_wgslsmith_sub_u32(78344u, u_input.a)))), (~(u_input.e & u_input.d) <= u_input.d) != !any(vec3<bool>(true, true, true)), !vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), func_3(max(u_input.c, u_input.b.yy)), false));
    let var_1 = (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-257f * -720f), 1000f)), 1f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(992f, 553f) + -483f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1267f)))))) && !all(var_0.d.zz);
    global0 = array<vec3<bool>, 19>();
    var_0 = Struct_1(firstLeadingBit(vec2<u32>(17234u, 7017u)), vec3<u32>(10941u, var_0.b.x, _wgslsmith_div_u32(1u, u_input.c.x)), all(vec2<bool>(true & var_1, var_1)), var_0.d);
    global0 = array<vec3<bool>, 19>();
    return _wgslsmith_f_op_f32(413f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1033f))))), -782f)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_1 {
    global0 = array<vec3<bool>, 19>();
    global0 = array<vec3<bool>, 19>();
    global0 = array<vec3<bool>, 19>();
    var var_0 = ((arg_3.x ^ arg_3.x) >> (min(_wgslsmith_dot_vec3_u32(select(u_input.b, vec3<u32>(4294967295u, u_input.b.x, u_input.a), vec3<bool>(arg_2.x, false, arg_2.x)), _wgslsmith_div_vec3_u32(vec3<u32>(76008u, u_input.b.x, 54806u), vec3<u32>(13311u, u_input.a, u_input.c.x))), reverseBits(~1u)) % 32u)) >= -2147483647i;
    global0 = array<vec3<bool>, 19>();
    return Struct_1(_wgslsmith_add_vec2_u32(~select(countOneBits(vec2<u32>(4294967295u, u_input.b.x)), ~vec2<u32>(u_input.a, 0u), select(arg_2.xy, vec2<bool>(true, arg_2.x), arg_2.x)), select(~(~u_input.b.xy), _wgslsmith_clamp_vec2_u32(~u_input.c, ~u_input.c, vec2<u32>(37211u, u_input.c.x) >> (u_input.b.yx % vec2<u32>(32u))), vec2<bool>(false && arg_2.x, arg_2.x))), u_input.b, func_3(firstTrailingBit(reverseBits(u_input.b.yx))), select(!select(vec4<bool>(arg_2.x, arg_2.x, false, false), select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, false, false, true), false), !vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), vec4<bool>(true, true | (arg_2.x & false), arg_2.x, func_3(vec2<u32>(2487u, u_input.c.x))), vec4<bool>(arg_2.x, arg_2.x, true, all(vec2<bool>(true, arg_2.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    global0 = array<vec3<bool>, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1152f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f)) * _wgslsmith_f_op_f32(trunc(arg_0.a))))));
    var var_1 = arg_0;
    var var_2 = func_4(_wgslsmith_div_vec4_i32(vec4<i32>(max(u_input.d, u_input.d) ^ u_input.e, _wgslsmith_div_i32(_wgslsmith_mod_i32(32029i, u_input.d), -1i & u_input.d), i32(-1i) * -48472i, u_input.e), vec4<i32>(-1i) * -(~vec4<i32>(u_input.e, u_input.e, 2147483647i, -28312i))), Struct_2(_wgslsmith_f_op_f32(func_2())), vec3<bool>(!any(vec3<bool>(true, true, false)) & true, false, true), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, ~(~(-12059i)), u_input.e & (-1i & u_input.d), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.e, 0i), 1i)), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.e, 2147483647i), vec4<i32>(u_input.e, u_input.e, u_input.d, u_input.e), vec4<i32>(-12922i, 0i, u_input.d, u_input.d)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, -28997i, 0i, -2147483647i), vec4<i32>(u_input.e, u_input.e, -9150i, u_input.d))), vec4<i32>(select(-2147483647i, u_input.d, false), -40591i, 3486i, u_input.e))));
    let var_3 = abs(max(_wgslsmith_mod_vec4_i32(vec4<i32>(-17204i, -26084i, _wgslsmith_div_i32(-2147483647i, 8862i), i32(-1i) * -1i), firstTrailingBit(-vec4<i32>(u_input.e, u_input.e, 21226i, u_input.d))), select(vec4<i32>(u_input.d, -21084i, -2147483647i, u_input.d), vec4<i32>(u_input.e, u_input.d, u_input.e, u_input.d), var_2.d) | ~(-vec4<i32>(u_input.e, -2147483647i, u_input.e, -1i))));
    return Struct_2(var_0.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = func_4(vec4<i32>(~_wgslsmith_mult_i32(_wgslsmith_div_i32(0i, -6383i), 0i), firstTrailingBit(_wgslsmith_div_i32(firstLeadingBit(u_input.e), abs(-2147483647i))), -26236i, -23434i), Struct_2(1000f), global0[_wgslsmith_index_u32(abs(~firstLeadingBit(~0u)), 19u)], _wgslsmith_mod_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 11238i, 5560i, u_input.d) | vec4<i32>(-43034i, 11306i, u_input.d, 17112i), abs(vec4<i32>(u_input.d, u_input.e, 2147483647i, -55849i)))), (_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, u_input.d, u_input.e, u_input.e), vec4<i32>(53928i, u_input.d, u_input.e, u_input.e)) | vec4<i32>(u_input.e, -36089i, 0i, -2147483647i)) >> (~max(vec4<u32>(u_input.a, 27571u, 39930u, 87651u), vec4<u32>(u_input.a, u_input.c.x, 0u, u_input.b.x)) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f)) - _wgslsmith_f_op_f32(-284f - _wgslsmith_f_op_f32(-332f * _wgslsmith_f_op_f32(-arg_1.a)))), -553f);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1141f));
    var_2 = func_1(func_1(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -723f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-483f, var_1)));
    let var_3 = var_0.a.x;
    return _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(65081u, var_0.b.x, u_input.b.x, u_input.a), vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.c.x)), reverseBits(var_0.b.x), 17125u) << ((u_input.c.x | (4294967295u >> (var_0.a.x % 32u))) % 32u), firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 1u, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, u_input.c.x, 1u), vec4<u32>(u_input.c.x, 47273u, u_input.c.x, 10114u), vec4<u32>(27116u, u_input.b.x, var_0.a.x, var_0.b.x)))), 12170u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 19>();
    let var_0 = Struct_1(u_input.b.xz, firstTrailingBit(~func_5(vec2<f32>(1f, 1f), func_1(Struct_2(622f), -796f))), !any(func_4(-vec4<i32>(-2476i, -2147483647i, 33205i, -2147483647i), Struct_2(2248f), !global0[_wgslsmith_index_u32(38517u, 19u)], vec4<i32>(u_input.d, 2147483647i, u_input.d, -1i) << (vec4<u32>(u_input.c.x, u_input.c.x, 56354u, u_input.a) % vec4<u32>(32u))).d), func_4(firstLeadingBit(~(-vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.d))), Struct_2(290f), vec3<bool>(all(vec2<bool>(false, true)) && false, -u_input.d == 0i, all(select(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], vec3<bool>(true, true, false), true))), (-vec4<i32>(51077i, 1i, u_input.e, u_input.e) | (vec4<i32>(u_input.d, 42273i, u_input.e, 0i) | vec4<i32>(u_input.d, -2147483647i, 2147483647i, u_input.e))) >> (abs(select(vec4<u32>(1u, 55747u, 0u, u_input.b.x), vec4<u32>(u_input.c.x, 0u, u_input.b.x, 34642u), true)) % vec4<u32>(32u))).d);
    var var_1 = var_0;
    var var_2 = vec2<i32>(-1i) * -min(_wgslsmith_div_vec2_i32(abs(vec2<i32>(46158i, u_input.d)), vec2<i32>(u_input.d, u_input.d)), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-28039i, 1i), vec2<i32>(u_input.d, u_input.e), vec2<i32>(-20753i, -2147483647i))));
    global0 = array<vec3<bool>, 19>();
    var var_3 = !vec3<bool>(true, true, select(any(var_0.d), var_1.c, true));
    global0 = array<vec3<bool>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 338f, 265f, -679f)), _wgslsmith_div_vec4_f32(vec4<f32>(331f, 925f, -228f, 913f), vec4<f32>(1156f, -885f, 488f, -1922f))))), ~vec2<u32>(~33423u >> (_wgslsmith_mult_u32(52875u, var_1.a.x) % 32u), min(firstTrailingBit(10791u), var_0.a.x >> (var_0.a.x % 32u))), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2.x, u_input.e), vec3<i32>(-1i, u_input.e, 0i)) & select(var_2.x, var_2.x, false), -38179i, -2199i, 1i), _wgslsmith_sub_i32(~countOneBits(_wgslsmith_clamp_i32(var_2.x, 5232i, var_2.x)), reverseBits(-u_input.e) << (20109u % 32u)));
}

