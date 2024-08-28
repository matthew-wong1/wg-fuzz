struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<bool, 17> = array<bool, 17>(false, true, true, false, false, false, true, false, true, true, true, true, true, true, false, false, true);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, vec4<bool>(false, true, true, false)), Struct_1(false, vec4<bool>(false, true, true, false)), Struct_1(false, vec4<bool>(false, true, true, true)), Struct_1(false, vec4<bool>(true, true, false, false)), Struct_1(false, vec4<bool>(false, false, true, false)), Struct_1(false, vec4<bool>(false, false, true, true)), Struct_1(false, vec4<bool>(true, true, false, true)), Struct_1(false, vec4<bool>(true, false, true, true)), Struct_1(false, vec4<bool>(true, true, false, true)), Struct_1(true, vec4<bool>(true, true, false, false)), Struct_1(true, vec4<bool>(false, true, false, true)), Struct_1(false, vec4<bool>(true, true, false, true)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> f32 {
    var var_0 = max(vec4<u32>(_wgslsmith_mult_u32(arg_0.x, arg_2), 4294967295u, 77105u, ~arg_0.x) << (select(vec4<u32>(arg_0.x, 4294967295u, 1u, 40458u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, arg_1.d, 790u, 3351u), vec4<u32>(arg_1.d, 4294967295u, u_input.a.x, u_input.a.x)), !global0[_wgslsmith_index_u32(arg_0.x, 17u)]) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a << (u_input.a % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(8908u, arg_1.b, 4294967295u))), reverseBits(arg_1.d), arg_1.b, _wgslsmith_add_u32(firstLeadingBit(arg_1.d), max(arg_0.x, 6366u)))) >> (select(vec4<u32>(arg_0.x, ~u_input.a.x ^ u_input.a.x, arg_2, countOneBits(_wgslsmith_dot_vec2_u32(arg_0.xx, arg_0.zy))), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_1.b) << (vec4<u32>(arg_0.x, arg_1.b, u_input.a.x, 16182u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 64856u, arg_1.b))), all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 17u)], arg_3.b.x), arg_1.e.b.yx, arg_1.c.a), select(arg_1.e.b.yw, vec2<bool>(false, arg_3.b.x), arg_1.e.b.wz), all(arg_3.b.yxx)))) % vec4<u32>(32u));
    let var_1 = Struct_4(Struct_3(true, !(!vec4<bool>(arg_1.c.b.x, global0[_wgslsmith_index_u32(26193u, 17u)], false, false))), ~firstLeadingBit(u_input.a.zx), arg_1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x), -909f, arg_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-arg_1.a.x))))), _wgslsmith_f_op_f32(953f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-736f * _wgslsmith_div_f32(-455f, -936f)))));
    var var_2 = max(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(abs(7035u), ~arg_2), reverseBits(~17017u)), 0u, _wgslsmith_div_u32(var_1.b.x >> (_wgslsmith_add_u32(arg_0.x, 18935u) % 32u), _wgslsmith_sub_u32(reverseBits(0u), 0u)), _wgslsmith_dot_vec3_u32(arg_0, ~_wgslsmith_add_vec3_u32(u_input.a, var_0.zxx))), vec4<u32>(~select(79607u, 92352u, false) | arg_2, 19528u, firstTrailingBit(~arg_1.d), 0u));
    var var_3 = _wgslsmith_sub_u32(0u, var_0.x);
    let var_4 = vec4<i32>(-5521i, abs(-(~_wgslsmith_mult_i32(0i, 0i))), firstLeadingBit(-max(1i, -1110i) >> (_wgslsmith_sub_u32(~arg_0.x, firstTrailingBit(4294967295u)) % 32u)), min(1i << (1u % 32u), 1i));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(trunc(var_1.d))));
}

fn func_4(arg_0: f32) -> f32 {
    global0 = array<bool, 17>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec3_u32(u_input.a, reverseBits(u_input.a), _wgslsmith_mult_vec3_u32(u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(734f, arg_0, arg_0)))), ~31815u, Struct_1(all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], false, global0[_wgslsmith_index_u32(26605u, 17u)], global0[_wgslsmith_index_u32(91002u, 17u)])), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), u_input.a.x, Struct_1(arg_0 < arg_0, select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], false, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(43073u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(false, true, true, true)))), ~13983u, Struct_3(true, !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)])))));
    var var_1 = arg_0;
    global1 = array<Struct_1, 12>();
    var_0 = -566f;
    return arg_0;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(true, vec4<bool>(true, true, false, all(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true)), select(vec2<bool>(false, global0[_wgslsmith_index_u32(27891u, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(56368u, 17u)]), vec2<bool>(false, false)), any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true, false))))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(u_input.a | min(u_input.a, u_input.a), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 2799f, -541f) - vec3<f32>(375f, -201f, 334f)), ~u_input.a.x, Struct_1(false, var_0.b), ~12383u, global1[_wgslsmith_index_u32(1u, 12u)]), ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x), Struct_3(true, var_0.b)))))));
    global0 = array<bool, 17>();
    let var_2 = 110680u;
    let var_3 = var_1;
    return Struct_4(Struct_3(true, var_0.b), select(u_input.a.yz, select(vec2<u32>(var_2, u_input.a.x) & u_input.a.yx, vec2<u32>(u_input.a.x ^ var_2, ~u_input.a.x), vec2<bool>(any(var_0.b.yyy), !global0[_wgslsmith_index_u32(var_2, 17u)])), var_0.b.zx), 789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))), var_1);
}

fn func_1(arg_0: u32) -> vec3<f32> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, 1320f, -304f, 306f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-760f, 1380f, 1000f, -524f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1314f) - _wgslsmith_f_op_f32(580f - 1142f)), -549f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1768f, -152f))))));
    global0 = array<bool, 17>();
    global1 = array<Struct_1, 12>();
    global0 = array<bool, 17>();
    let var_1 = func_2();
    return var_0.a.xxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f - _wgslsmith_f_op_f32(f32(-1f) * -1430f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(924f - -1035f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(916f)) + -495f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-2117f)), _wgslsmith_f_op_f32(394f * -778f), true)), _wgslsmith_div_f32(-768f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(159f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-946f * 1033f), 1044f, _wgslsmith_f_op_f32(f32(-1f) * -182f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1334f, 1270f, -613f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_1(u_input.a.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(476f, -824f, -1000f), vec3<f32>(2311f, -287f, -464f), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]))))))));
    let var_2 = -4504i;
    var var_3 = func_2();
    let var_4 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-var_2, select(var_2, 1i, false)), -2697i), firstLeadingBit(vec2<i32>(28931i, -22812i) << (_wgslsmith_sub_vec2_u32(var_3.b, u_input.a.zz) % vec2<u32>(32u)))), ~abs(vec2<i32>(var_2 ^ 1i, 11585i)));
    global0 = array<bool, 17>();
    var var_5 = Struct_4(var_3.a, vec2<u32>((u_input.a.x ^ ~1u) & func_2().b.x, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(2140u, 72814u), var_3.b.x)), var_3.d, _wgslsmith_div_f32(var_1.x, -419f), _wgslsmith_f_op_f32(-var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(_wgslsmith_add_i32(var_2 & 8545i, 0i)));
}

