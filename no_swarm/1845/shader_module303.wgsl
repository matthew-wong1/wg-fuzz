struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(134f, 41323i, vec3<f32>(-533f, -1687f, -901f))), Struct_2(Struct_1(406f, -71836i, vec3<f32>(361f, -615f, -1368f))), Struct_2(Struct_1(-395f, 1i, vec3<f32>(-435f, -2663f, 745f))), Struct_2(Struct_1(633f, 2147483647i, vec3<f32>(1000f, -501f, 1386f))), Struct_2(Struct_1(-1563f, -71753i, vec3<f32>(1707f, 531f, 384f))), Struct_2(Struct_1(111f, 0i, vec3<f32>(-840f, 971f, 383f))), Struct_2(Struct_1(1171f, -1i, vec3<f32>(1000f, 866f, -1220f))), Struct_2(Struct_1(-724f, -4814i, vec3<f32>(894f, 1875f, -799f))), Struct_2(Struct_1(1000f, -25765i, vec3<f32>(1000f, 333f, -657f))), Struct_2(Struct_1(-262f, 2147483647i, vec3<f32>(375f, -434f, 220f))), Struct_2(Struct_1(1002f, -39780i, vec3<f32>(734f, -458f, 890f))), Struct_2(Struct_1(-390f, 5076i, vec3<f32>(-492f, 902f, -813f))), Struct_2(Struct_1(571f, -12531i, vec3<f32>(890f, -568f, -2065f))), Struct_2(Struct_1(1417f, -1i, vec3<f32>(136f, 652f, 1121f))), Struct_2(Struct_1(1000f, 63045i, vec3<f32>(900f, -608f, -258f))), Struct_2(Struct_1(270f, 0i, vec3<f32>(437f, 139f, -688f))), Struct_2(Struct_1(2182f, 2147483647i, vec3<f32>(-1441f, -1000f, -1274f))), Struct_2(Struct_1(-1692f, 0i, vec3<f32>(335f, -699f, -1797f))));

var<private> global2: array<i32, 5>;

var<private> global3: array<vec3<bool>, 22>;

var<private> global4: array<vec4<i32>, 17>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = all(!select(select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a), 22u)], vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), global3[_wgslsmith_index_u32(u_input.a, 22u)], false)), select(vec3<bool>(true, false, false), global3[_wgslsmith_index_u32(abs(u_input.a), 22u)], global3[_wgslsmith_index_u32(~0u, 22u)]), true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * 2057f) - _wgslsmith_f_op_f32(-global0.a))) * -363f), global2[_wgslsmith_index_u32(u_input.a, 5u)], _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1395f, global0.a, _wgslsmith_f_op_f32(global0.c.x * global0.a)))))));
    var var_2 = _wgslsmith_mod_vec4_u32(select(abs((vec4<u32>(0u, 4294967295u, 0u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) >> (~vec4<u32>(171020u, 1u, 1u, 106192u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(19854u, u_input.a & u_input.a), _wgslsmith_div_u32(u_input.a, u_input.a) | ~u_input.a, ~(647u >> (u_input.a % 32u)), 1u), -17348i <= global0.b), abs(_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 1u, u_input.a, 2281u)) | vec4<u32>(u_input.a, u_input.a, 0u, 36166u), vec4<u32>(~u_input.a, abs(73309u), 1u, 4294967295u))));
    let var_3 = abs(vec4<i32>(~max(u_input.b, 52052i), -global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 0u), 5u)], 13001i, ~countOneBits(-5078i)) ^ vec4<i32>(~4403i >> (1u % 32u), u_input.b, u_input.b, select(~1i, -global0.b, var_0)));
    let var_4 = var_2.x | u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(-var_1.a), var_0))) + 612f) * _wgslsmith_f_op_f32(1315f * _wgslsmith_f_op_f32(1526f - _wgslsmith_f_op_f32(trunc(global0.a)))));
}

fn func_2() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32((firstTrailingBit(u_input.a) << (u_input.a % 32u)) ^ _wgslsmith_mult_u32(u_input.a, 13646u), 18u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.c) * _wgslsmith_f_op_vec3_f32(vec3<f32>(529f, -1134f, 438f) + vec3<f32>(var_0.a.c.x, 1050f, 680f))), var_0.a.c, global3[_wgslsmith_index_u32(85030u, 22u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c) * vec3<f32>(-865f, 972f, var_0.a.a)))))));
    global3 = array<vec3<bool>, 22>();
    let var_2 = var_0.a;
    global2 = array<i32, 5>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - 1250f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
}

fn func_1() -> bool {
    let var_0 = vec4<f32>(-241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(abs(global0.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(670f, _wgslsmith_f_op_f32(-global0.a)) * 1f)), _wgslsmith_f_op_f32(864f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.c.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    let var_1 = u_input.b;
    var var_2 = countOneBits(0i) | (-(~(-var_1)) & global2[_wgslsmith_index_u32(u_input.a, 5u)]);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))) * -1009f)), 22088i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.yxy))));
    global2 = array<i32, 5>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 29242i), vec2<i32>(u_input.b, -56566i)), u_input.b), countOneBits(~vec2<i32>(global0.b, 2147483647i)), all(select(global3[_wgslsmith_index_u32(u_input.a, 22u)], vec3<bool>(false, true, true), vec3<bool>(true, false, true)))));
    let var_1 = global0.c.x;
    var var_2 = func_1();
    global0 = Struct_1(-1039f, _wgslsmith_mult_i32(var_0.x, ~21925i << (reverseBits(u_input.a) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.c, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, -1000f, global0.c.x), vec3<f32>(-1130f, global0.a, 2690f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-264f, 1858f, -551f)))), !global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(29982u, u_input.a), 22u)]))));
    global4 = array<vec4<i32>, 17>();
    var var_3 = Struct_1(global0.a, -(select(0i, 66644i, any(vec4<bool>(true, true, true, true))) & _wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(22962u, 5u)], 12668i, var_0.x, global2[_wgslsmith_index_u32(u_input.a, 5u)]), global4[_wgslsmith_index_u32(0u, 17u)]))), global0.c);
    var var_4 = _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(abs(min(~(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-9079i, 760i), vec2<i32>(var_3.b, global0.b)))), countOneBits(min(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, -36614i, -10362i, 11849i), global4[_wgslsmith_index_u32(u_input.a, 17u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(-var_0.x) >> (~54391u % 32u)));
}

