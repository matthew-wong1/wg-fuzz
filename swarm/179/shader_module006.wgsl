struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13>;

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(4984u, vec2<u32>(426u, 1u)), Struct_3(4294967295u, vec2<u32>(40302u, 1u)), Struct_3(72561u, vec2<u32>(87439u, 17716u)), Struct_3(0u, vec2<u32>(21444u, 5501u)), Struct_3(0u, vec2<u32>(792u, 4294967295u)), Struct_3(1u, vec2<u32>(1u, 1u)), Struct_3(77939u, vec2<u32>(16499u, 42546u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, 41892u, 1u, u_input.b)), ~firstLeadingBit(global0[_wgslsmith_index_u32(0u, 13u)]), countOneBits(global0[_wgslsmith_index_u32(u_input.b, 13u)] | vec4<u32>(4868u, u_input.b, u_input.b, 2125u)))), ~reverseBits(vec3<i32>(-1i, -51276i, firstTrailingBit(21802i))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, ~(~u_input.b) >> (~firstLeadingBit(var_0.a.a.x) % 32u)), firstLeadingBit(u_input.b)), 7u)];
    global0 = array<vec4<u32>, 13>();
    var var_2 = var_0.a;
    global1 = array<Struct_3, 7>();
    return var_2.a;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1099f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(987f, 675f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(749f * _wgslsmith_f_op_f32(f32(-1f) * -1529f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(249f, -713f))))));
    global0 = array<vec4<u32>, 13>();
    let var_1 = Struct_2(Struct_1(~global0[_wgslsmith_index_u32(1u, 13u)]), Struct_1(func_3(vec4<f32>(_wgslsmith_f_op_f32(-587f + var_0), _wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(-var_0), -2186f))), vec3<bool>(true, false && any(vec3<bool>(true, false, false)), !(-u_input.a.x == 2147483647i)), vec4<bool>(false, !(_wgslsmith_f_op_f32(sign(-408f)) < _wgslsmith_f_op_f32(ceil(var_0))), _wgslsmith_f_op_f32(exp2(var_0)) > _wgslsmith_f_op_f32(-var_0), any(vec2<bool>(true, true)) | false), _wgslsmith_div_u32(0u, u_input.b));
    global0 = array<vec4<u32>, 13>();
    var var_2 = false;
    return ~min(_wgslsmith_mult_u32(~4294967295u, arg_0.a.x) ^ _wgslsmith_mult_u32(firstLeadingBit(15130u), abs(var_1.a.a.x)), _wgslsmith_add_u32(abs(42329u), ~(~u_input.b)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_clamp_i32(~(~firstLeadingBit(-1333i)), u_input.c, arg_2.x);
    global0 = array<vec4<u32>, 13>();
    var var_1 = Struct_4(arg_0.b, arg_2.yzz);
    var var_2 = abs(countOneBits(~u_input.a.x));
    var var_3 = select(firstTrailingBit(arg_2.yxz), -vec3<i32>(-63075i | var_1.b.x, var_1.b.x, 1i), !vec3<bool>(true, _wgslsmith_f_op_f32(ceil(1323f)) < _wgslsmith_f_op_f32(1648f - -802f), all(select(vec4<bool>(false, false, arg_0.d.x, false), vec4<bool>(false, arg_0.d.x, true, true), false))));
    return any(arg_0.d) && (~var_1.a.a.x <= ~reverseBits(_wgslsmith_add_u32(arg_1.b.x, arg_0.b.a.x)));
}

fn func_1() -> StorageBuffer {
    let var_0 = select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), ~0u >= (u_input.b ^ 110223u)), select(any(vec3<bool>(true, false, false)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), func_4(Struct_2(Struct_1(vec4<u32>(46120u, 1u, 18906u, u_input.b)), Struct_1(vec4<u32>(7294u, 0u, 1u, u_input.b)), vec3<bool>(false, true, true), vec4<bool>(true, true, false, false), u_input.b), global1[_wgslsmith_index_u32(func_2(Struct_1(global0[_wgslsmith_index_u32(u_input.b, 13u)])), 7u)], vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), vec2<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true)), select(all(vec4<bool>(true, true, true, true)), false || any(vec4<bool>(true, false, true, false)), true)), vec2<bool>(false, u_input.c == u_input.a.x));
    var var_1 = Struct_4(Struct_1(reverseBits(_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), global0[_wgslsmith_index_u32(u_input.b, 13u)] | global0[_wgslsmith_index_u32(79717u, 13u)]))), vec3<i32>(-(~0i), select(~(u_input.a.x << (u_input.b % 32u)), u_input.c, any(!vec4<bool>(var_0.x, var_0.x, var_0.x, true))), _wgslsmith_add_i32(i32(-1i) * -u_input.a.x, select(u_input.c, u_input.a.x, true) | -u_input.c)));
    global1 = array<Struct_3, 7>();
    global0 = array<vec4<u32>, 13>();
    let var_2 = vec4<u32>(~var_1.a.a.x, var_1.a.a.x, 27699u, var_1.a.a.x);
    return StorageBuffer(_wgslsmith_clamp_vec2_i32(u_input.a ^ -vec2<i32>(u_input.c, u_input.c), select(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a.x, -44562i), var_1.b.zz), min(~vec2<i32>(-2147483647i, 44336i), firstTrailingBit(var_1.b.zz)), all(!vec4<bool>(false, var_0.x, true, var_0.x))), vec2<i32>(u_input.a.x ^ u_input.a.x, _wgslsmith_add_i32(u_input.c, var_1.b.x)) ^ _wgslsmith_mult_vec2_i32(u_input.a, select(vec2<i32>(-2147483647i, 1i), u_input.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

