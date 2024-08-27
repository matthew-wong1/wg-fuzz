struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<bool>(true, true), vec3<f32>(-781f, 419f, -444f), vec2<i32>(-1i, 0i)), Struct_1(vec2<bool>(true, true), vec3<f32>(527f, 873f, 626f), vec2<i32>(-65110i, 65554i)), Struct_1(vec2<bool>(false, true), vec3<f32>(1629f, 757f, -361f), vec2<i32>(31294i, 1i)), Struct_1(vec2<bool>(true, false), vec3<f32>(-1713f, 184f, -359f), vec2<i32>(-1i, -1i)), Struct_1(vec2<bool>(false, true), vec3<f32>(-664f, 1162f, -1000f), vec2<i32>(-20880i, 19447i)), Struct_1(vec2<bool>(true, true), vec3<f32>(-314f, 1730f, -676f), vec2<i32>(6294i, 33244i)), Struct_1(vec2<bool>(false, true), vec3<f32>(690f, -1117f, -486f), vec2<i32>(0i, 77074i)), Struct_1(vec2<bool>(false, true), vec3<f32>(998f, -744f, -505f), vec2<i32>(1i, -1i)), Struct_1(vec2<bool>(false, false), vec3<f32>(1050f, -731f, 1189f), vec2<i32>(35505i, 19326i)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = 544f;
    let var_1 = arg_1;
    let var_2 = (-16588i <= (arg_3.c.x ^ global0.x)) & false;
    var var_3 = arg_0 >> (_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(arg_0, arg_0), _wgslsmith_clamp_vec2_u32(arg_0 | vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(0u, arg_0.x), arg_0)), ~vec2<u32>(select(arg_0.x, arg_0.x, arg_3.a.x), ~1u)) % vec2<u32>(32u));
    var_3 = select(vec2<u32>(~1u, ~(~(~38751u))), arg_0, all(select(select(!vec4<bool>(true, arg_2.a.x, arg_2.a.x, false), select(vec4<bool>(false, arg_1.a.x, false, arg_2.a.x), vec4<bool>(arg_1.a.x, true, arg_3.a.x, arg_2.a.x), vec4<bool>(arg_3.a.x, var_2, arg_2.a.x, true)), any(vec4<bool>(arg_3.a.x, true, true, true))), !vec4<bool>(false, true, var_1.a.x, false), true)));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.b.yy)), vec2<f32>(var_1.b.x, arg_1.b.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1375f + 1327f), 188f), arg_3.b.xy), false))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(545f, -261f) * vec2<f32>(-432f, -380f)), vec2<f32>(_wgslsmith_f_op_f32(max(1000f, 705f)), -377f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(17753u, 10897u), global1[_wgslsmith_index_u32(4294967295u, 9u)], Struct_1(vec2<bool>(arg_0, arg_0), vec3<f32>(-488f, -1069f, 199f), vec2<i32>(global0.x, -2147483647i)), global1[_wgslsmith_index_u32(0u, 9u)])) * vec2<f32>(579f, _wgslsmith_f_op_f32(abs(695f)))), vec2<bool>(true, select(true, false & arg_0, arg_0)))));
    global0 = vec3<i32>(-abs(~(u_input.a & 13562i)), ~countOneBits(~(-1i)), global0.x);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) << (abs(vec2<u32>(0u, 0u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(87649u, 18861u), min(vec2<u32>(28093u, 1u), vec2<u32>(1u, 4294967295u)))), 1u), vec3<u32>(1u, ~4294967295u, 1u)), 9u)];
    global1 = array<Struct_1, 9>();
    var_1 = Struct_1(vec2<bool>(true, !any(!vec4<bool>(arg_0, true, false, var_1.a.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)), var_1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) * _wgslsmith_f_op_vec3_f32(-var_1.b)) - var_1.b))), _wgslsmith_div_vec2_i32(~(~_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, u_input.a), global0.yz)), _wgslsmith_div_vec2_i32(global0.xz, vec2<i32>(abs(var_1.c.x), _wgslsmith_mult_i32(51903i, var_1.c.x)))));
    return _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -1114f), var_0.x));
}

fn func_4(arg_0: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec4_i32(max(~((vec4<i32>(23817i, u_input.a, 8681i, global0.x) | vec4<i32>(56719i, -8254i, global0.x, u_input.a)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(~select(vec4<i32>(u_input.a, u_input.a, -48819i, u_input.a), vec4<i32>(u_input.a, global0.x, 20489i, -18001i), true), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2635i, 2147483647i, 31286i, u_input.a), vec4<i32>(-21354i, 36371i, -1i, -1i)), min(u_input.a, global0.x), -u_input.a, u_input.a))), -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global0.x, 5468i, global0.x) ^ vec4<i32>(1i, u_input.a, global0.x, u_input.a), vec4<i32>(-18941i, u_input.a, -23785i, global0.x)), abs(~vec4<i32>(u_input.a, u_input.a, 57947i, -15227i))));
    var var_1 = Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, true), !any(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, -161f, -764f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, -1509f, arg_0), vec3<f32>(-628f, arg_0, arg_0))), vec3<f32>(-321f, -1882f, -347f))))), _wgslsmith_div_vec2_i32(vec2<i32>(32213i, ~global0.x), ~(global0.zx >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)))));
    var var_2 = 1u;
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(select(4294967295u, 1u, !select(var_1.a.x, var_1.a.x, false)), firstLeadingBit(1u)), _wgslsmith_sub_u32(23747u, ~(select(26093u, 65873u, var_1.a.x) & 1u)));
    var var_4 = ~(select(vec3<u32>(var_3, 0u, 81532u) ^ max(vec3<u32>(var_3, 0u, 4294967295u), vec3<u32>(1u, var_3, 57633u)), firstLeadingBit(~vec3<u32>(25393u, var_3, 1u)), vec3<bool>(var_1.a.x != var_1.a.x, true, var_1.a.x || false)) & ~abs(reverseBits(vec3<u32>(var_3, 0u, var_3))));
    return var_1.c;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> Struct_1 {
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(346f, -460f, 895f, 1000f) + vec4<f32>(1735f, 190f, -1404f, -504f)))))));
    global0 = vec3<i32>(u_input.a | _wgslsmith_mod_i32(arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-1i, 1i)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, 77436u, 69275u), vec4<u32>(arg_0.x, arg_0.x, 0u, 92009u)) % 32u)), _wgslsmith_mod_i32(u_input.a, firstLeadingBit(~global0.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -2147483647i, global0.x), vec4<i32>(arg_1.x, -1i, global0.x, -7894i)))), -1i);
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    return Struct_1(arg_2.wy, var_0.ywx, vec2<i32>(-1i, 59613i));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(770f)) + 2026f);
    let var_1 = global1[_wgslsmith_index_u32(1u, 9u)];
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-506f)), _wgslsmith_f_op_f32(sign(var_1.b.x)), !arg_1 != (1i == var_1.c.x))))) <= var_1.b.x;
    var var_3 = func_5(~(~(~vec3<u32>(arg_0, arg_0, arg_3))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, 23516u, arg_3), ~_wgslsmith_mod_vec3_u32(vec3<u32>(118429u, 17672u, 4294967295u), vec3<u32>(31966u, 0u, arg_0))) % vec3<u32>(32u)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(723f - 350f) * _wgslsmith_f_op_f32(func_2(true)))) << (~vec2<u32>(arg_0, _wgslsmith_mod_u32(4294967295u, arg_0)) % vec2<u32>(32u)), select(select(!(!vec4<bool>(var_1.a.x, arg_1, var_1.a.x, false)), !select(vec4<bool>(true, var_1.a.x, true, arg_1), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(false, var_1.a.x, true, false)), !select(vec4<bool>(var_1.a.x, arg_1, true, false), vec4<bool>(var_1.a.x, arg_1, false, var_1.a.x), false)), select(!select(vec4<bool>(var_1.a.x, false, var_1.a.x, false), vec4<bool>(false, arg_1, arg_1, true), var_1.a.x), !(!vec4<bool>(arg_1, true, false, false)), vec4<bool>(var_1.a.x || false, u_input.a > global0.x, 821f <= var_1.b.x, true)), ~_wgslsmith_sub_i32(1i, -35361i) > _wgslsmith_clamp_i32(min(-6774i, 42870i), -27724i, abs(2147483647i))));
    var_3 = Struct_1(vec2<bool>(30319i >= _wgslsmith_clamp_i32(select(27917i, var_3.c.x, arg_1), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c.x, var_1.c.x, var_1.c.x, 2147483647i), vec4<i32>(-1i, 23210i, global0.x, u_input.a))), true), _wgslsmith_f_op_vec3_f32(-var_1.b), vec2<i32>(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(3628i, -2147483647i), vec2<i32>(-26388i, -2147483647i))), global0.x));
    return Struct_1(var_1.a, var_1.b, vec2<i32>(~(~firstLeadingBit(-1i)), ~1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(1547f, 1f);
    var var_1 = func_1(_wgslsmith_dot_vec3_u32(select(vec3<u32>(firstLeadingBit(66587u), max(48019u, 13600u), ~4294967295u), ~(~vec3<u32>(55283u, 0u, 22255u)), true), _wgslsmith_mult_vec3_u32(select(reverseBits(vec3<u32>(4294967295u, 44524u, 1u)), vec3<u32>(1u, 1u, 1u), false), vec3<u32>(~4294967295u, 4294967295u, abs(1u)))), true, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), ~min(2403u, reverseBits(abs(1u))));
    var_1 = func_1(_wgslsmith_dot_vec2_u32(select(select(countOneBits(vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 1u), all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x))), vec2<u32>(1u, 1u), true), select(~select(vec2<u32>(87786u, 77901u), vec2<u32>(0u, 59335u), vec2<bool>(var_1.a.x, false)), select(vec2<u32>(30924u, 95334u), select(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 38596u), true), select(vec2<bool>(true, var_1.a.x), var_1.a, var_1.a)), var_1.a.x)), var_1.a.x, vec2<u32>(1u, 1u), 0u);
    let var_2 = Struct_1(!vec2<bool>(true, any(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(870f - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(-1083f, _wgslsmith_f_op_f32(-319f - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_1.b.x) - var_1.b.x))), var_1.c);
    global1 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_mult_u32(1u, ~(~select(2903u, 0u, var_1.a.x))), var_1.b.x, 46769u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1655f, var_1.b.x))))));
}

