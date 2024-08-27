struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: i32 = 15154i;

var<private> global2: array<vec2<bool>, 20>;

var<private> global3: i32 = 2147483647i;

var<private> global4: array<u32, 7>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_2(arg_0.a, arg_0, arg_0);
    let var_1 = false;
    global0 = array<Struct_2, 21>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1960f, -1292f))), -1133f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1183f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-160f * -607f) + _wgslsmith_div_f32(1347f, -650f))), 890f));
    let var_3 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1191f))));
    return vec2<i32>(_wgslsmith_mult_i32(arg_0.b.x, reverseBits(_wgslsmith_div_i32(firstTrailingBit(var_0.c.e.x), ~1446i))), -var_0.b.e.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global4 = array<u32, 7>();
    var var_0 = Struct_3(Struct_1(~vec2<u32>(~global4[_wgslsmith_index_u32(26116u, 7u)], _wgslsmith_dot_vec2_u32(arg_1.b.a, vec2<u32>(arg_1.c.a.x, 32924u))), arg_1.b.b, false, select(select(!arg_0.d, vec3<bool>(true, arg_0.d.x, true), false), vec3<bool>(false, arg_1.b.c != arg_1.b.c, arg_1.b.d.x), arg_1.c.d), _wgslsmith_sub_vec2_i32(arg_0.b.yx, func_3(Struct_1(u_input.c, arg_0.b, false, arg_0.d, arg_1.b.b.yz), select(vec2<bool>(true, arg_1.c.d.x), vec2<bool>(false, true), vec2<bool>(arg_0.c, arg_0.d.x))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(678f * 119f), -682f), vec2<f32>(1f, 1f))))), select(vec2<bool>(select(false, any(vec4<bool>(arg_1.c.c, arg_0.c, arg_1.c.d.x, arg_1.c.d.x)), true), true), !select(select(global2[_wgslsmith_index_u32(41266u, 20u)], arg_0.d.yx, arg_1.b.d.yz), vec2<bool>(arg_1.b.d.x, arg_0.c), arg_1.b.c | false), select(global2[_wgslsmith_index_u32(1u, 20u)], arg_1.b.d.yz, select(true, !arg_1.b.d.x, !arg_1.c.d.x))), arg_1);
    let var_1 = Struct_2(min(countOneBits(~vec2<u32>(26627u, global4[_wgslsmith_index_u32(u_input.c.x, 7u)])) | var_0.a.a, u_input.c), Struct_1(var_0.a.a << (vec2<u32>(_wgslsmith_sub_u32(arg_1.c.a.x, 1u), ~arg_0.a.x) % vec2<u32>(32u)), arg_1.c.b | arg_0.b, !any(global2[_wgslsmith_index_u32(23779u, 20u)]), var_0.a.d, firstLeadingBit(-vec2<i32>(var_0.d.c.e.x, var_0.d.b.e.x)) & arg_0.b.zz), arg_0);
    let var_2 = Struct_3(var_1.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(2545f, -1355f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) + var_0.b)), var_0.b))), var_1.b.d.yz, Struct_2(_wgslsmith_mod_vec2_u32(~max(vec2<u32>(var_0.d.c.a.x, 1u), arg_1.a), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_1.c.a.x, 24342u)) << (_wgslsmith_clamp_vec2_u32(arg_0.a, vec2<u32>(arg_1.c.a.x, 81626u), vec2<u32>(arg_1.b.a.x, arg_1.c.a.x)) % vec2<u32>(32u))), var_1.b, Struct_1(vec2<u32>(arg_0.a.x, abs(var_0.d.c.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.e.x, -2437i, 2147483647i), ~vec3<i32>(-13593i, arg_1.c.b.x, arg_1.b.e.x)), false, vec3<bool>(true, true, true), _wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.d.b.e.x, var_1.b.b.x), vec2<i32>(-1i, -1i) << (u_input.a.yz % vec2<u32>(32u))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), -290f, _wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-var_0.b.x))))));
    return Struct_2(var_1.b.a, arg_0, var_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = abs(select(-arg_0.b.xx, abs(arg_0.e), vec2<bool>(false & all(vec4<bool>(true, arg_0.d.x, true, arg_1.b.c)), any(vec4<bool>(arg_0.d.x, false, false, arg_1.b.d.x)))));
    var_0 = ~arg_0.e;
    global2 = array<vec2<bool>, 20>();
    var var_1 = arg_1.b;
    global3 = countOneBits(arg_1.b.e.x);
    return func_2(func_2(func_2(func_2(arg_0, func_2(Struct_1(var_1.a, arg_0.b, arg_1.c.c, var_1.d, var_1.e), Struct_2(var_1.a, Struct_1(vec2<u32>(var_1.a.x, 0u), var_1.b, arg_1.b.c, vec3<bool>(true, var_1.c, true), arg_1.b.e), Struct_1(vec2<u32>(u_input.a.x, global4[_wgslsmith_index_u32(39515u, 7u)]), vec3<i32>(57417i, 0i, arg_0.e.x), arg_0.c, vec3<bool>(false, false, arg_0.d.x), vec2<i32>(arg_1.b.e.x, 1i))))).b, func_2(arg_1.c, func_2(Struct_1(arg_0.a, vec3<i32>(arg_0.e.x, 76917i, 2147483647i), var_1.c, vec3<bool>(arg_0.c, true, true), arg_0.e), arg_1))).b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d, _wgslsmith_sub_vec3_u32(u_input.d, u_input.a.yzx)), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 44806u, 4294967295u), u_input.a.xwx))), 21u)]).b, Struct_2(_wgslsmith_mult_vec2_u32(abs(_wgslsmith_sub_vec2_u32(var_1.a, vec2<u32>(52248u, arg_0.a.x))), var_1.a), Struct_1(_wgslsmith_div_vec2_u32(arg_0.a, ~var_1.a), _wgslsmith_add_vec3_i32(-vec3<i32>(var_1.e.x, arg_1.b.b.x, arg_1.c.e.x), _wgslsmith_sub_vec3_i32(arg_0.b, arg_1.b.b)), false, arg_0.d, arg_1.c.e), func_2(Struct_1(_wgslsmith_mod_vec2_u32(arg_0.a, vec2<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)])), func_2(Struct_1(vec2<u32>(arg_0.a.x, arg_0.a.x), vec3<i32>(var_1.e.x, var_0.x, arg_0.e.x), arg_0.d.x, arg_0.d, arg_0.b.xx), arg_1).c.b, !arg_0.c, vec3<bool>(false, var_1.d.x, false), var_1.e), global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(75734u, 10436u), vec2<u32>(73997u, 33422u)), 1u, true), 21u)]).c)).b;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = abs(max(~countOneBits(firstLeadingBit(u_input.d)), vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~(~0u), 1u)));
    global4 = array<u32, 7>();
    var var_1 = _wgslsmith_f_op_f32(-979f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(888f, 1f))) * -1762f));
    let var_2 = !(arg_1.d.x & (1f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1356f, 195f)), _wgslsmith_f_op_f32(-1176f * 975f)))));
    let var_3 = 1000f;
    return _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.b.x | 0i, arg_0.x), vec2<i32>(arg_0.x, abs(arg_1.b.x))) & _wgslsmith_mult_vec2_i32(arg_0.xx, vec2<i32>(_wgslsmith_mod_i32(-8509i, arg_0.x), func_4(arg_1, Struct_2(var_0.yz, arg_1, Struct_1(arg_1.a, vec3<i32>(1i, arg_0.x, -19005i), false, arg_1.d, vec2<i32>(-2147483647i, arg_0.x)))).b.x)), vec2<i32>(~_wgslsmith_div_i32(2147483647i, firstTrailingBit(0i)), -28618i));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = countOneBits(arg_3);
    let var_1 = _wgslsmith_add_vec2_u32(~abs(~select(vec2<u32>(arg_2.a.x, arg_1.x), vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(u_input.c.x, 7u)]), arg_2.d.xx)), ~arg_1.zx);
    let var_2 = Struct_1(~(arg_2.a | vec2<u32>(110326u, u_input.b)), vec3<i32>(~firstLeadingBit(-1i), arg_2.e.x, arg_2.e.x), true, !arg_2.d, firstLeadingBit(func_5(-vec3<i32>(arg_2.e.x, arg_2.b.x, -1i), func_4(Struct_1(u_input.d.zx, arg_2.b, false, vec3<bool>(arg_2.d.x, false, arg_2.d.x), arg_2.b.yz), func_2(Struct_1(vec2<u32>(arg_3, 1u), vec3<i32>(2147483647i, 0i, 9961i), true, vec3<bool>(arg_2.c, false, true), vec2<i32>(23127i, arg_2.b.x)), global0[_wgslsmith_index_u32(arg_1.x, 21u)])))));
    global4 = array<u32, 7>();
    let var_3 = ~vec2<u32>(func_2(Struct_1(u_input.c, vec3<i32>(0i, 1i, 5563i), arg_2.c, var_2.d, var_2.e), func_2(arg_2, global0[_wgslsmith_index_u32(1u, 21u)])).b.a.x, 0u) << (~arg_2.a % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 7>();
    let var_0 = vec4<f32>(1328f, -1309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)) - -237f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(184f - 595f) - -876f), u_input.a, Struct_1(vec2<u32>(u_input.c.x, 4294967295u), vec3<i32>(1i, 1i, 1i), false, select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec2<i32>(2147483647i, -2147483647i)), firstTrailingBit(4294967295u) >> (1612u % 32u))))));
    global1 = 1i;
    global3 = 2147483647i;
    let var_1 = u_input.a.zy;
    var var_2 = _wgslsmith_sub_u32(u_input.c.x, var_1.x);
    let var_3 = global0[_wgslsmith_index_u32(~53259u, 21u)];
    global1 = _wgslsmith_add_i32(-34630i, var_3.b.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(1i, (~_wgslsmith_clamp_vec4_u32(vec4<u32>(40069u, global4[_wgslsmith_index_u32(var_1.x, 7u)], var_1.x, 46849u), vec4<u32>(0u, var_3.a.x, 0u, global4[_wgslsmith_index_u32(0u, 7u)]), u_input.a) >> (vec4<u32>(5231u, 4294967295u, 20204u, 1u) % vec4<u32>(32u))) ^ u_input.a, ~1u, -46534i);
}

