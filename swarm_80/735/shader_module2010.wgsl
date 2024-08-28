struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 400f;

var<private> global1: array<vec2<u32>, 27>;

var<private> global2: array<vec2<f32>, 14>;

var<private> global3: vec2<i32> = vec2<i32>(-18068i, 2147483647i);

var<private> global4: array<Struct_1, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> vec2<i32> {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(4294967295u, 14u)]);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x));
    let var_2 = var_0;
    global0 = -841f;
    var var_3 = countOneBits(select((vec4<i32>(-1i) * -vec4<i32>(-1i, 59193i, global3.x, global3.x)) << ((min(vec4<u32>(76427u, u_input.e, 1u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.e, u_input.a)) << (vec4<u32>(u_input.d, u_input.e, u_input.a, 13548u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~vec4<i32>(u_input.c, u_input.b, u_input.c, global3.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 16426u, 1u), vec4<u32>(u_input.e, u_input.e, 62563u, 91394u)) % vec4<u32>(32u))), vec4<bool>(false, select(true, true, u_input.b <= -1i), select(any(vec3<bool>(true, true, true)), global3.x > global3.x, false), true)));
    return vec2<i32>(2147483647i, ~2147483647i);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(abs(-470f));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(917f, -1913f)) * 701f)) * 517f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - -1000f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_1.a.x, 828f)))), _wgslsmith_f_op_f32(-arg_1.a.x)))));
    global3 = vec2<i32>(-_wgslsmith_mult_i32(u_input.b, ~(~(-29201i))), global3.x);
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x) - _wgslsmith_f_op_f32(trunc(arg_1.a.x)))), arg_1.a.x));
    let var_1 = firstTrailingBit(vec3<u32>(~_wgslsmith_dot_vec2_u32(min(global1[_wgslsmith_index_u32(1u, 27u)], arg_0.yz), ~global1[_wgslsmith_index_u32(u_input.a, 27u)]), ~28771u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a, 52752u) & arg_0.yy, arg_0.yy), ~vec2<u32>(7773u, arg_0.x))));
    return -286f;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(u_input.e, 14u)] * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1463f), vec2<f32>(-556f, 154f), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(17491u, 14u)])), vec2<bool>(u_input.b != 0i, any(vec4<bool>(true, false, true, false)))))));
    global0 = _wgslsmith_f_op_f32(1914f - -1000f);
    global0 = -375f;
    global1 = array<vec2<u32>, 27>();
    let var_1 = var_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.e, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(24268u, 4294967295u, u_input.e, 4077u), vec4<u32>(u_input.e, u_input.a, 60027u, 47688u)), u_input.a) >> (_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.d, u_input.e, 11479u, 11205u), vec4<u32>(9364u, 4294967295u, 4294967295u, 66065u), vec4<bool>(false, false, true, true)), vec4<u32>(u_input.a, 0u, u_input.d, 22208u) ^ vec4<u32>(u_input.d, 26405u, 13266u, 0u)) % vec4<u32>(32u)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~global1[_wgslsmith_index_u32(u_input.e, 27u)], vec2<u32>(u_input.d, 15238u)), ~global1[_wgslsmith_index_u32(u_input.e, 27u)] & (global1[_wgslsmith_index_u32(u_input.a, 27u)] ^ vec2<u32>(u_input.a, 87500u))), 20u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(~u_input.e, 14u)]);
    global3 = max(vec2<i32>(-select(_wgslsmith_mult_i32(global3.x, 36183i), u_input.c, any(vec2<bool>(true, true))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(27654i, -8647i, global3.x, -23936i)), (vec4<i32>(global3.x, -18407i, global3.x, u_input.c) & vec4<i32>(global3.x, 0i, 0i, -2147483647i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.x, u_input.b, global3.x, global3.x), vec4<i32>(1i, 87883i, 2147483647i, 28760i), vec4<i32>(-1i, -41915i, global3.x, global3.x)))), -select(func_1(), vec2<i32>(u_input.b, 0i) & ~vec2<i32>(-14645i, global3.x), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1146f), 569f, var_0.a.x))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, 496f, 738f), var_1, true))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(912f - 474f)), _wgslsmith_f_op_f32(func_2()), var_0.a.x))));
    let var_3 = global4[_wgslsmith_index_u32(u_input.a, 20u)];
    var var_4 = firstTrailingBit(~(_wgslsmith_clamp_vec3_u32(~vec3<u32>(16240u, u_input.e, u_input.a), vec3<u32>(u_input.a, u_input.d, 9661u) & vec3<u32>(0u, u_input.e, u_input.d), vec3<u32>(1u, 82717u, u_input.d)) & (~vec3<u32>(1u, u_input.d, 4294967295u) << ((vec3<u32>(0u, 10537u, u_input.a) & vec3<u32>(u_input.d, u_input.a, 29129u)) % vec3<u32>(32u)))));
    var_4 = countOneBits(((vec3<u32>(var_4.x, u_input.a, 0u) & max(vec3<u32>(4294967295u, var_4.x, 4294967295u), vec3<u32>(20348u, u_input.e, var_4.x))) >> (select(~vec3<u32>(0u, 44182u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_4.x, 35192u, var_4.x), vec3<u32>(var_4.x, 6427u, 18778u), vec3<u32>(4294967295u, u_input.d, var_4.x)), true) % vec3<u32>(32u))) << (abs(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, u_input.d, 0u), ~vec3<u32>(4294967295u, 1u, var_4.x))) % vec3<u32>(32u)));
    global2 = array<vec2<f32>, 14>();
    let var_5 = ~abs(select(_wgslsmith_mod_vec3_u32(vec3<u32>(57327u, u_input.d, u_input.e), vec3<u32>(27385u, u_input.d, u_input.d)), vec3<u32>(var_4.x, 1u, var_4.x) ^ vec3<u32>(1u, 23776u, 1u), vec3<bool>(true, true, true))) | ((_wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_4.x, var_4.x, 1u), vec3<u32>(0u, 17004u, 17585u)), select(vec3<u32>(1u, u_input.d, u_input.e), vec3<u32>(var_4.x, var_4.x, u_input.d), vec3<bool>(true, false, false)), vec3<u32>(var_4.x, var_4.x, 76940u)) >> (~vec3<u32>(var_4.x, 4294967295u, var_4.x) % vec3<u32>(32u))) & vec3<u32>(10537u, _wgslsmith_mod_u32(~66618u, ~0u), _wgslsmith_add_u32(var_4.x, var_4.x) & _wgslsmith_add_u32(var_4.x, u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(countOneBits(vec4<u32>(0u, 45988u, 21085u, 0u)) >> ((vec4<u32>(5170u, var_4.x, var_4.x, var_4.x) ^ vec4<u32>(28103u, var_5.x, var_4.x, var_5.x)) % vec4<u32>(32u)))), -vec3<i32>(_wgslsmith_mod_i32(-7961i, i32(-1i) * -1i), select(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global3.x, -2147483647i, u_input.c), vec4<i32>(u_input.c, 1i, 1i, global3.x)), true), -2147483647i));
}

