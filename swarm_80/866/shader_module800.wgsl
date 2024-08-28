struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true)));

var<private> global1: vec3<f32>;

var<private> global2: f32;

var<private> global3: array<f32, 17> = array<f32, 17>(-351f, 281f, 1587f, 176f, 251f, -634f, 1712f, 787f, -230f, -193f, 474f, -1164f, -720f, -417f, 215f, -1069f, -800f);

var<private> global4: vec4<f32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global2 = _wgslsmith_f_op_f32(global4.x + 622f);
    let var_0 = Struct_1(vec3<bool>(true, all(!arg_0), !(u_input.b == u_input.b) & false));
    var var_1 = global0[_wgslsmith_index_u32(~(~(~(~u_input.a)) >> (12524u % 32u)), 32u)];
    global1 = global4.xxw;
    let var_2 = -746f;
    return u_input.a;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = ~(~vec3<u32>(0u, u_input.a, 1u) ^ ~vec3<u32>(func_3(arg_0.a.d.a), 9333u, ~4294967295u));
    let var_1 = !arg_1;
    global4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, global3[_wgslsmith_index_u32(4294967295u, 17u)], -138f, global1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-575f, arg_2, 1045f, 672f) + vec4<f32>(-465f, -971f, arg_3, 626f)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(abs(-1335f))), global4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(139f, arg_2)), _wgslsmith_div_f32(-366f, global3[_wgslsmith_index_u32(arg_0.a.e, 17u)])), global4.x)))));
    var var_2 = arg_0.a.d.a.x;
    global3 = array<f32, 17>();
    return arg_0.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> vec3<f32> {
    var var_0 = Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.a.c, arg_0.a.c), -_wgslsmith_clamp_i32(1i, firstLeadingBit(arg_0.a.a.x), 0i), ~(min(u_input.b, arg_1.a.c.x) ^ (i32(-1i) * -51853i)), -1i), -(~(u_input.b << (50924u % 32u)) & arg_1.a.a.x), arg_1.a.a.yzy, Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(arg_1.a.e, 17u)] == _wgslsmith_f_op_f32(-global1.x), arg_0.a.d.a.x, arg_2 & false)), _wgslsmith_dot_vec3_u32(~(min(vec3<u32>(34926u, 1u, 0u), vec3<u32>(1u, arg_1.a.e, u_input.a)) << ((vec3<u32>(u_input.a, u_input.a, 1u) >> (vec3<u32>(1u, u_input.a, 16906u) % vec3<u32>(32u))) % vec3<u32>(32u))), ~(~vec3<u32>(arg_0.a.e, arg_0.a.e, arg_0.a.e))));
    var var_1 = select(countOneBits(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, arg_0.a.b ^ u_input.b), i32(-1i) * -2147483647i, _wgslsmith_mod_i32(arg_0.a.c.x, -19553i | var_0.a.x))), arg_0.a.c.x, true);
    let var_2 = Struct_2(~arg_0.a.a, i32(-1i) * -2147483647i, arg_0.a.c & -var_0.a.zxz, func_2(arg_1, false, _wgslsmith_f_op_f32(-1544f - _wgslsmith_f_op_f32(exp2(global4.x))), -1714f).d, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.a.e), vec2<u32>(1u, 1u))) ^ ~(arg_1.a.e >> (~71932u % 32u)));
    global0 = array<Struct_1, 32>();
    var var_3 = arg_0;
    return vec3<f32>(-660f, -2094f, 346f);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> vec3<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(func_2(Struct_3(Struct_2(vec4<i32>(1i, -21470i, -12151i, arg_1), -82422i, vec3<i32>(arg_1, -81171i, arg_1), global0[_wgslsmith_index_u32(u_input.a, 32u)], 17567u)), true, _wgslsmith_f_op_f32(sign(-927f)), global4.x)), Struct_3(func_2(Struct_3(Struct_2(vec4<i32>(u_input.b, 1i, u_input.b, -4103i), u_input.b, vec3<i32>(u_input.b, arg_1, arg_1), global0[_wgslsmith_index_u32(u_input.a, 32u)], arg_0.x)), false, global3[_wgslsmith_index_u32(u_input.a, 17u)], 945f)), true && select(true, all(vec2<bool>(true, false)), any(vec4<bool>(false, false, true, false))), global4.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_3(Struct_2(vec4<i32>(arg_1, -5385i, u_input.b, arg_1), 21670i, vec3<i32>(0i, u_input.b, u_input.b), Struct_1(vec3<bool>(false, false, true)), 4294967295u)), Struct_3(Struct_2(vec4<i32>(u_input.b, -60446i, -2147483647i, 0i), 7872i, vec3<i32>(-71937i, 38340i, u_input.b), global0[_wgslsmith_index_u32(21665u, 32u)], 0u)), true, _wgslsmith_f_op_f32(exp2(global1.x))))), global4.zzw));
    global0 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_dot_vec4_i32(-(-(vec4<i32>(arg_1, -1i, 0i, arg_1) & vec4<i32>(36482i, arg_1, arg_1, -28115i)) & firstTrailingBit(abs(vec4<i32>(-44870i, 60557i, arg_1, arg_1)))), firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, u_input.b, 17080i, u_input.b), vec4<i32>(-1i, -1i, arg_1, -34413i) | vec4<i32>(4187i, 0i, -61193i, 2147483647i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(arg_1, arg_1, -1i, 2147483647i), vec4<i32>(-1i, arg_1, 0i, arg_1) ^ vec4<i32>(u_input.b, arg_1, arg_1, 1i))));
    let var_1 = Struct_2(-vec4<i32>(abs(-arg_1), abs(-2147483647i), 15522i, arg_1), arg_1, select(-(vec3<i32>(-27457i, u_input.b, arg_1) ^ vec3<i32>(u_input.b, -2147483647i, 0i)), vec3<i32>(arg_1, _wgslsmith_clamp_i32(-1i, -2147483647i, 2147483647i), 13538i), vec3<bool>(true, true, true)) << (abs(~(~arg_0)) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.a) & 4294967295u, 32u)], 1u);
    var_0 = min(~_wgslsmith_mult_i32(~u_input.b, -45188i), _wgslsmith_div_i32(_wgslsmith_sub_i32(-50641i, firstTrailingBit(var_1.c.x)), _wgslsmith_add_i32(firstTrailingBit(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -2147483647i, 0i), var_1.a))) ^ -33772i);
    return !(!var_1.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(276f, 557f, global4.x) - _wgslsmith_f_op_vec3_f32(-global4.yxy)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global3[_wgslsmith_index_u32(4294967295u, 17u)], -1490f))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-global4.xww);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 94138u), 17u)], _wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 17u)] * global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_2 = vec3<f32>(global4.x, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1.x)))));
    var var_3 = Struct_2(_wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, 0i), vec4<i32>(10306i, 3398i, 1i, 10576i)), ~2147483647i, -u_input.b, -51139i >> (u_input.a % 32u)), vec4<i32>(14138i, -(~(-1i)), min(_wgslsmith_add_i32(0i, 1i), u_input.b), ~1i)), -(~(~(~u_input.b))), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(2147483647i, 4976i, u_input.b) & -vec3<i32>(11816i, 0i, u_input.b)), (select(vec3<i32>(-1i, u_input.b, 35893i), vec3<i32>(u_input.b, u_input.b, u_input.b), false) >> (abs(vec3<u32>(1u, 28711u, u_input.a)) % vec3<u32>(32u))) & min(vec3<i32>(2147483647i, u_input.b, u_input.b) | vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))), Struct_1(func_1(_wgslsmith_div_vec3_u32(~vec3<u32>(14382u, u_input.a, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(82650u, 33611u, 4294967295u), vec3<u32>(0u, u_input.a, u_input.a))), ~16343i)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, 0u), ~func_2(Struct_3(Struct_2(vec4<i32>(1i, u_input.b, 0i, u_input.b), -1i, vec3<i32>(u_input.b, u_input.b, -1i), global0[_wgslsmith_index_u32(u_input.a, 32u)], 69364u)), u_input.b > 1i, 209f, _wgslsmith_f_op_f32(step(489f, -1392f))).e));
    let var_4 = vec2<u32>(~abs(4294967295u), u_input.a);
    let var_5 = firstTrailingBit(~(-(_wgslsmith_mult_vec3_i32(var_3.c, var_3.a.yyz) & ~vec3<i32>(55560i, -41938i, 1i))));
    let var_6 = func_2(Struct_3(func_2(Struct_3(Struct_2(vec4<i32>(var_5.x, 13832i, var_3.a.x, var_5.x), u_input.b, vec3<i32>(var_3.b, 1i, 406i), Struct_1(var_3.d.a), var_3.e)), !any(vec3<bool>(true, true, var_3.d.a.x)), -1251f, global4.x)), !all(select(select(vec4<bool>(var_3.d.a.x, false, true, var_3.d.a.x), vec4<bool>(var_3.d.a.x, var_3.d.a.x, true, false), vec4<bool>(var_3.d.a.x, var_3.d.a.x, true, var_3.d.a.x)), select(vec4<bool>(false, var_3.d.a.x, var_3.d.a.x, false), vec4<bool>(var_3.d.a.x, false, false, var_3.d.a.x), true), !vec4<bool>(true, false, true, var_3.d.a.x))), var_1.x, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, var_4.x), 17u)]).d;
    let var_7 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(select(-_wgslsmith_mod_vec2_i32(abs(vec2<i32>(30670i, 2147483647i)), vec2<i32>(16447i, 503i) >> (var_4 % vec2<u32>(32u))), ~firstLeadingBit(var_5.xy), var_6.a.yy), vec4<u32>(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(34444u, 64480u, var_3.e), vec3<u32>(92370u, var_3.e, 1u))), ~4294967295u, var_4.x, ~11201u));
}

