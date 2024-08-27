struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: array<i32, 20> = array<i32, 20>(-1939i, -31763i, i32(-2147483648), 1i, 2147483647i, 16492i, i32(-2147483648), 50818i, 1i, 3955i, 34082i, 22065i, -8492i, 1i, 62852i, 35479i, -15729i, i32(-2147483648), -7999i, -1i);

var<private> global2: f32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(vec4<f32>(-592f, _wgslsmith_f_op_f32(abs(-127f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f - -232f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-563f, -281f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -486f)), true)), -100f), vec2<f32>(1f, 1f), Struct_2(vec2<u32>(27844u, 1u << (u_input.a.x % 32u)), Struct_1(~vec2<u32>(17693u, 1u), _wgslsmith_add_u32(u_input.a.x, 0u) >= _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(29224u, 14466u))), Struct_1(select(u_input.a.xy, _wgslsmith_sub_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, 16689u)), vec2<bool>(true, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-331f + -1293f), -186f)))), u_input.a.x);
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(var_0.a))))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, -580f, 469f, _wgslsmith_f_op_f32(floor(var_0.b.x)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(929f, var_0.a.x)))) + _wgslsmith_f_op_vec2_f32(-var_0.b)))), Struct_2(~abs(var_0.c.a), Struct_1(_wgslsmith_div_vec2_u32(u_input.a.yx, vec2<u32>(var_0.c.a.x, 25322u)) << (var_0.c.c.a % vec2<u32>(32u)), var_0.c.b.b), Struct_1(var_0.c.a, firstTrailingBit(global1[_wgslsmith_index_u32(14167u, 20u)]) == 5395i)), -173f, _wgslsmith_mod_u32((~var_0.c.b.a.x << (var_0.c.b.a.x % 32u)) ^ (u_input.a.x << (max(u_input.a.x, u_input.a.x) % 32u)), 0u >> (0u % 32u)));
    global1 = array<i32, 20>();
    let var_1 = global0[_wgslsmith_index_u32(max(abs(_wgslsmith_add_u32(69591u >> (u_input.a.x % 32u), ~u_input.a.x)) | var_0.c.b.a.x, _wgslsmith_div_u32(max(abs(u_input.a.x), 21075u), 35785u)), 26u)];
    var var_2 = Struct_2(countOneBits(var_0.c.a), Struct_1(u_input.a.zy, var_0.c.b.b), Struct_1(var_0.c.a, -max(global1[_wgslsmith_index_u32(68873u, 20u)], -1i) > 0i));
    return abs(_wgslsmith_dot_vec3_u32(max(u_input.a, select(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.a, true)), ~firstTrailingBit(vec3<u32>(30956u, 5494u, var_0.c.b.a.x))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1743f)), 110f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2455f)) * 801f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1080f, 365f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, -1954f)))))), Struct_2(abs(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x))), Struct_1(vec2<u32>(~1u, ~u_input.a.x), true), Struct_1(u_input.a.xx, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1329f * -1703f) + _wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(f32(-1f) * -152f))))), ~select(4294967295u & ~u_input.a.x, 0u, false));
    global1 = array<i32, 20>();
    let var_1 = vec4<f32>(var_0.d, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d - 2136f), -1787f), _wgslsmith_f_op_f32(-var_0.d)))), _wgslsmith_f_op_f32(max(-134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), -2780f)) + 709f))));
    return Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1112f, 412f)))))), Struct_2(var_0.c.a, var_0.c.c, var_0.c.c), -791f, func_3());
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    global1 = array<i32, 20>();
    let var_1 = false;
    let var_2 = func_2();
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, 360f, 1014f, var_0.b.x)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.b.x, -422f, var_2.d, var_2.a.x)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(839f, -705f, 2131f, var_2.d)), vec4<f32>(1053f, 1159f, 1643f, -1000f)), var_0.a, select(vec4<bool>(var_0.c.c.b, var_2.c.c.b, var_1, var_1), select(vec4<bool>(true, var_0.c.b.b, var_1, true), vec4<bool>(var_2.c.b.b, var_1, true, true), vec4<bool>(var_1, var_1, var_2.c.c.b, var_0.c.b.b)), !var_1)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(var_2.a.xz, var_0.b)))), Struct_2(var_0.c.b.a, Struct_1(vec2<u32>(~u_input.a.x, var_0.e >> (var_0.e % 32u)), false), Struct_1(var_0.c.c.a, var_2.c.b.b)), 1141f, ~1u >> (u_input.a.x % 32u));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_1 {
    global0 = array<vec2<bool>, 26>();
    let var_0 = firstLeadingBit(4294967295u);
    var var_1 = func_1().c;
    global2 = 487f;
    global1 = array<i32, 20>();
    return var_1.b;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    global0 = array<vec2<bool>, 26>();
    let var_0 = !arg_0.x;
    let var_1 = vec2<f32>(func_2().d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-540f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 996f) * _wgslsmith_f_op_f32(abs(-2242f)))));
    var var_3 = 75601u;
    return -arg_1.x;
}

fn func_6(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(405f, 1000f, 1335f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(600f, -109f, -667f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-966f, 463f, 666f), vec3<f32>(186f, -1609f, 1259f))))) - vec3<f32>(1f, 1f, 1f));
    let var_1 = min(func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false))), func_1()).a.x, firstTrailingBit(1u));
    let var_2 = vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x), 1000f);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_2.x, all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(373f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))))), var_2.x);
    global0 = array<vec2<bool>, 26>();
    return func_1().c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 20>();
    global1 = array<i32, 20>();
    let var_0 = reverseBits(u_input.a.x);
    global2 = 114f;
    let var_1 = func_6(func_5(vec2<bool>(true, true), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -20297i) >> (vec2<u32>(u_input.a.x, 60567u) % vec2<u32>(32u)), vec2<i32>(global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)] >> (46738u % 32u))), func_4(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, true), true), func_1()), vec2<bool>((6349u << (u_input.a.x % 32u)) <= 1u, true)));
    var var_2 = var_1.b;
    var_2 = func_2().c.b;
    var var_3 = func_1();
    var var_4 = Struct_2(_wgslsmith_div_vec2_u32(var_3.c.b.a, reverseBits(var_1.a)), func_4(vec4<bool>(false, true, false, all(select(vec3<bool>(var_3.c.c.b, false, var_1.b.b), vec3<bool>(var_3.c.b.b, var_2.b, var_1.b.b), var_1.c.b))), func_1()), Struct_1(~var_2.a, func_4(vec4<bool>(var_1.b.b && true, var_2.b, var_2.b, false), Struct_3(_wgslsmith_div_vec4_f32(var_3.a, var_3.a), _wgslsmith_f_op_vec2_f32(sign(var_3.b)), var_3.c, _wgslsmith_f_op_f32(-var_3.d), _wgslsmith_mult_u32(0u, u_input.a.x))).b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.b.x + var_3.a.x), var_3.d, var_4.c.b)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-603f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x - var_3.b.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.a.x + var_3.b.x)))), 339f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.b.x - -833f), _wgslsmith_f_op_f32(sign(-2487f)))) * var_3.d)), vec3<i32>(_wgslsmith_div_i32(max(1i & global1[_wgslsmith_index_u32(4294967295u, 20u)], select(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], false)), _wgslsmith_add_i32(~global1[_wgslsmith_index_u32(4294967295u, 20u)], ~global1[_wgslsmith_index_u32(50714u, 20u)])), min(~global1[_wgslsmith_index_u32(3916u, 20u)], firstTrailingBit(global1[_wgslsmith_index_u32(62259u, 20u)]) | global1[_wgslsmith_index_u32(1u, 20u)]), 25877i));
}

