struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false)));

var<private> global1: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(1383f, 625f), vec2<f32>(1000f, 730f), vec2<f32>(347f, 1000f), vec2<f32>(-806f, 2797f), vec2<f32>(-736f, 421f), vec2<f32>(917f, 584f), vec2<f32>(-445f, -1397f), vec2<f32>(1824f, 2080f), vec2<f32>(582f, 589f), vec2<f32>(-1000f, -685f), vec2<f32>(958f, 791f), vec2<f32>(-1000f, 622f));

var<private> global2: array<vec3<u32>, 9>;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    global3 = global0[_wgslsmith_index_u32(u_input.c.x, 18u)];
    global3 = Struct_1(select(vec3<bool>(select(select(false, false, true), true, !arg_0.c.b.x), false, !(arg_0.d.x == arg_0.b.x)), select(select(arg_0.c.a, vec3<bool>(true, true, true), u_input.b > -1i), global3.a, true), select(select(global3.a, select(vec3<bool>(arg_0.c.b.x, arg_0.c.a.x, global3.b.x), vec3<bool>(true, false, true), global3.a.x), true), select(select(vec3<bool>(true, global3.a.x, arg_0.c.a.x), global3.a, true), global3.a, vec3<bool>(arg_0.c.a.x, true, arg_0.c.b.x)), global3.b.x)), select(!(!vec2<bool>(global3.a.x, global3.b.x)), select(select(!arg_0.c.b, select(vec2<bool>(arg_0.c.a.x, global3.b.x), arg_0.c.b, arg_0.c.b), select(global3.a.x, arg_0.c.a.x, true)), arg_0.c.b, !vec2<bool>(global3.b.x, global3.a.x)), true));
    global3 = global0[_wgslsmith_index_u32(u_input.a, 18u)];
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -340f), arg_0.b.x)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(102518u, 12u)] * global1[_wgslsmith_index_u32(u_input.c.x, 12u)]) * _wgslsmith_f_op_vec2_f32(exp2(global1[_wgslsmith_index_u32(1u, 12u)])))))), true));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(Struct_2(arg_2.x >> (u_input.c.x % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(11734u, 12u)] * vec2<f32>(-1609f, -788f))), arg_3, vec4<f32>(1992f, _wgslsmith_f_op_f32(trunc(-1506f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1078f), _wgslsmith_f_op_f32(f32(-1f) * -616f))), 965f), ~(~arg_2))));
    var var_1 = arg_2;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(878f * _wgslsmith_f_op_f32(-var_0.x)))) * var_0.x), var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(855f, -431f))))));
    let var_3 = global1[_wgslsmith_index_u32((0u | ~arg_1) | 0u, 12u)];
    let var_4 = Struct_2(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_add_i32(-2147483647i, countOneBits(u_input.b))), var_1.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.zx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-248f, var_0.x) + global1[_wgslsmith_index_u32(arg_1, 12u)]) + vec2<f32>(-912f, 413f)))), var_2.yx), arg_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(447f, var_0.x, -1247f, 1078f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_3.x, -107f, -1883f) - vec4<f32>(-977f, var_3.x, -872f, 297f))))), arg_2);
    return Struct_1(select(!vec3<bool>(arg_3.b.x, false, !arg_3.b.x), vec3<bool>(any(vec4<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x, var_4.c.a.x)) & true, true, true), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, arg_3.a.x, true), select(vec4<bool>(false, true, var_4.c.a.x, true), vec4<bool>(true, global3.a.x, global3.a.x, true), vec4<bool>(global3.a.x, false, true, global3.a.x))))), arg_3.b);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = 1u;
    var_0 = arg_1;
    let var_2 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(45518u, _wgslsmith_sub_u32(u_input.c.x, ~_wgslsmith_mod_u32(0u, 67571u)), u_input.c.x << (~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) % 32u))), 18u)];
    let var_3 = Struct_1(var_0.a, vec2<bool>(true, true));
    return _wgslsmith_f_op_vec2_f32(func_3(Struct_2(-2147483647i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(abs(u_input.a), 12u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-683f, 1299f) + global1[_wgslsmith_index_u32(u_input.c.x, 12u)]) + vec2<f32>(-1593f, 1000f)))), func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), u_input.c.x << (1u % 32u), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, -2147483647i), vec4<i32>(u_input.b, u_input.b, 0i, -47452i)), vec4<i32>(35300i, u_input.b, u_input.b, u_input.b)), arg_1), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1010f, 115f, 640f, 122f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1701f, 1413f, -564f, -354f), vec4<f32>(1000f, 1973f, -651f, 2079f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1266f, -1214f, 1188f, -1083f), vec4<f32>(1657f, -813f, 2348f, -171f), true))))), vec4<i32>(-u_input.b, ~(-14078i & u_input.b), 21869i, _wgslsmith_add_i32(u_input.b, -2147483647i))))).x;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    global2 = array<vec3<u32>, 9>();
    let var_0 = arg_1;
    var var_1 = Struct_2(-1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -976f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(935f, 220f))) + _wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.c.xx), 12u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zz + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(29950u, u_input.c.x, 1u, 4294967295u)), 12u)]))), var_0, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), 2132f, _wgslsmith_f_op_f32(func_4(true, arg_1)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-44561i, 1i, u_input.b, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 56887i, 1i, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-6897i, 0i, 0i, 23011i), vec4<i32>(-1i, u_input.b, 703i, 57717i)))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) | vec4<i32>(u_input.b, 2147483647i, 9185i, 1i), vec4<i32>(38042i, 0i, -4545i, u_input.b) & vec4<i32>(-28512i, 771i, -70291i, u_input.b), ~vec4<i32>(u_input.b, -1i, u_input.b, -2147483647i))));
    var var_2 = u_input.c.wyy;
    let var_3 = Struct_2(reverseBits(~(-7611i)), _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.c.x, 12u)] + vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_4(func_2(-52137i, 4294967295u, var_1.e, Struct_1(var_1.c.a, vec2<bool>(global3.b.x, arg_1.b.x))).a.x, func_2(0i, 3943u, var_1.e, Struct_1(var_1.c.a, arg_1.b)))))), func_2(u_input.b, ~1u, vec4<i32>(_wgslsmith_clamp_i32(-var_1.e.x, var_1.a, -1i), -u_input.b, _wgslsmith_add_i32(2147483647i, u_input.b) | (i32(-1i) * -42664i), u_input.b), Struct_1(var_1.c.a, vec2<bool>(u_input.c.x != 92652u, var_2.x >= var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(497f - arg_0.x)), arg_0.x)), -_wgslsmith_mult_vec4_i32(var_1.e, -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 17541i, 20523i, var_1.e.x), vec4<i32>(var_1.a, u_input.b, var_1.a, u_input.b), var_1.e)));
    return Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(any(vec4<bool>(false, true, false, var_0.a.x)), Struct_1(global3.a, vec2<bool>(false, true)))), 596f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(365f, arg_0.x)) + vec2<f32>(var_1.b.x, 1000f)))), var_3.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_1.d + vec4<f32>(1772f, var_3.b.x, -193f, var_3.b.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(596f, 299f, var_1.b.x, var_3.d.x) - var_1.d), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, var_3.d.x, 1755f), vec4<f32>(arg_0.x, arg_0.x, var_3.b.x, -2514f)))))))), max(-max(~vec4<i32>(u_input.b, 12488i, u_input.b, var_1.e.x), var_3.e), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, var_1.a, 20090i) ^ vec4<i32>(u_input.b, 0i, u_input.b, var_3.a), min(var_3.e, vec4<i32>(55164i, var_3.a, var_3.e.x, u_input.b))) >> (u_input.c % vec4<u32>(32u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_2 {
    global1 = array<vec2<f32>, 12>();
    var var_0 = ~(~select(40484u, (28693u >> (arg_1 % 32u)) & _wgslsmith_div_u32(u_input.a, 6786u), global3.a.x));
    var var_1 = u_input.a;
    let var_2 = func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1318f)), -1036f, _wgslsmith_f_op_f32(-arg_0.x)) - vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x))), vec3<f32>(_wgslsmith_f_op_f32(func_4(all(vec4<bool>(global3.a.x, global3.b.x, global3.a.x, global3.a.x)), func_2(3230i, arg_1, vec4<i32>(-2147483647i, u_input.b, -2147483647i, 1i), Struct_1(vec3<bool>(false, global3.a.x, true), global3.b)))), 684f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1327f) * _wgslsmith_f_op_f32(-arg_0.x))))), Struct_1(vec3<bool>(true, !all(global3.a.xz), !(global3.b.x | global3.b.x)), vec2<bool>(global3.a.x, !global3.a.x)), func_2(reverseBits(u_input.b | -2147483647i), arg_1, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 15196i, -9501i, -1i), vec4<i32>(-1i, u_input.b, -2147483647i, u_input.b))), func_2(~1519i, 0u, vec4<i32>(u_input.b, u_input.b, -1i, -50094i) & vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), global0[_wgslsmith_index_u32(66587u, 18u)])).b.x | all(select(vec2<bool>(true, true), vec2<bool>(false, global3.a.x), true)));
    let var_3 = !any(!select(vec4<bool>(false, var_2.c.b.x, var_2.c.b.x, var_2.c.b.x), vec4<bool>(true, false, false, var_2.c.a.x), false)) | var_2.c.b.x;
    return func_5(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, -164f, -440f))), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(899f, var_2.b.x, arg_0.x), var_2.d.xwy)))), func_2(u_input.b, ~(~13265u), vec4<i32>(u_input.b, var_2.e.x, 17482i, u_input.b) >> (vec4<u32>(arg_1, u_input.c.x, arg_1, 0u) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(arg_1, 18u)]), true).c, global3.b.x);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>, arg_3: i32) -> StorageBuffer {
    var var_0 = Struct_1(!arg_0.c.a, select(arg_0.c.a.zz, !vec2<bool>(false, 568f < arg_0.d.x), global3.b));
    let var_1 = global0[_wgslsmith_index_u32(~countOneBits(u_input.a), 18u)];
    let var_2 = var_0.b;
    global2 = array<vec3<u32>, 9>();
    var var_3 = ~(~(~(-arg_0.e.yyy)));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))), arg_0.e.x, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(80450u, 9u)], global2[_wgslsmith_index_u32(u_input.c.x, 9u)]) | _wgslsmith_mult_vec3_u32(u_input.c.zww, u_input.c.zzz), max(_wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(15851u, 9u)], vec3<u32>(u_input.a, 0u, u_input.c.x)), ~global2[_wgslsmith_index_u32(u_input.a, 9u)])), ~u_input.a), ~13882u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a.x;
    global2 = array<vec3<u32>, 9>();
    let x = u_input.a;
    s_output = func_6(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-386f, 974f), vec2<f32>(449f, 361f), vec2<bool>(false, global3.a.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1[_wgslsmith_index_u32(u_input.a, 12u)])), global1[_wgslsmith_index_u32(4294967295u | u_input.a, 12u)])), u_input.a), firstLeadingBit(max(-1i, u_input.b) >> (min(u_input.c.x, u_input.c.x) % 32u)), min(vec4<i32>(-28786i, u_input.b, abs(~u_input.b), abs(u_input.b)), -_wgslsmith_mult_vec4_i32(func_1(global1[_wgslsmith_index_u32(16723u, 12u)], u_input.a).e, ~vec4<i32>(u_input.b, 32317i, u_input.b, -2147483647i))), 1i);
}

