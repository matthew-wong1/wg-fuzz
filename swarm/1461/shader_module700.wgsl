struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 6370u, 6517u);

var<private> global1: array<Struct_4, 29>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<bool>(true, false), 18216i, vec3<i32>(-1i, 1i, 9025i), 0i), Struct_1(vec2<bool>(false, true), 2147483647i, vec3<i32>(-18312i, 0i, 2147483647i), 849i), Struct_1(vec2<bool>(true, false), 2147483647i, vec3<i32>(2147483647i, 0i, 11202i), 1i), Struct_1(vec2<bool>(true, true), -29492i, vec3<i32>(2147483647i, -6178i, -38528i), -2655i), Struct_1(vec2<bool>(true, true), 56570i, vec3<i32>(0i, 10240i, 8405i), 17979i), Struct_1(vec2<bool>(false, true), -19904i, vec3<i32>(-31446i, 1i, -14796i), 70544i), Struct_1(vec2<bool>(false, true), 35072i, vec3<i32>(2147483647i, -1i, i32(-2147483648)), -21346i), Struct_1(vec2<bool>(true, true), i32(-2147483648), vec3<i32>(-1i, -47758i, i32(-2147483648)), -1i), Struct_1(vec2<bool>(false, true), -52211i, vec3<i32>(37722i, -1i, -8988i), -9168i), Struct_1(vec2<bool>(true, false), -1i, vec3<i32>(0i, 54625i, -1i), -1i), Struct_1(vec2<bool>(false, false), 2147483647i, vec3<i32>(5619i, 2147483647i, 1i), -1584i), Struct_1(vec2<bool>(true, true), -15602i, vec3<i32>(-31152i, 0i, -38764i), 2147483647i), Struct_1(vec2<bool>(true, false), 8610i, vec3<i32>(i32(-2147483648), 52290i, -39364i), i32(-2147483648)), Struct_1(vec2<bool>(false, false), 17291i, vec3<i32>(-15239i, i32(-2147483648), 0i), 74074i), Struct_1(vec2<bool>(true, false), 2338i, vec3<i32>(2147483647i, -35447i, 0i), 9981i), Struct_1(vec2<bool>(true, false), -24586i, vec3<i32>(2147483647i, -20005i, -1i), i32(-2147483648)), Struct_1(vec2<bool>(true, true), 1i, vec3<i32>(2147483647i, 0i, -7467i), -1i), Struct_1(vec2<bool>(true, false), -17935i, vec3<i32>(1i, -42068i, -5724i), 1794i), Struct_1(vec2<bool>(false, true), -24204i, vec3<i32>(-26096i, -13047i, 25745i), -1i), Struct_1(vec2<bool>(false, false), 0i, vec3<i32>(75131i, 1i, i32(-2147483648)), 2147483647i), Struct_1(vec2<bool>(true, true), 2147483647i, vec3<i32>(28681i, -29773i, 1i), 1i));

var<private> global3: array<vec2<bool>, 2>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = false;
    global1 = array<Struct_4, 29>();
    var var_1 = min(firstLeadingBit(firstTrailingBit(~u_input.b)), 10408i);
    let var_2 = Struct_1(!vec2<bool>(true, var_0), 0i, vec3<i32>(_wgslsmith_mult_i32(1i, -2147483647i), u_input.e, 0i), 1i);
    var var_3 = global1[_wgslsmith_index_u32(arg_0.x, 29u)];
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-159f, -877f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(180f, 476f) * vec2<f32>(1418f, -732f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1068f, 982f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(526f, -1994f) * vec2<f32>(-912f, -1017f))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(0u), global0.x), 2u)]))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<u32>) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(arg_2.x, 1u)), 21u)];
    var var_1 = all(select(vec4<bool>(!all(vec4<bool>(var_0.a.x, arg_0, false, true)), all(vec3<bool>(true, arg_0, true)), arg_0, any(select(vec3<bool>(arg_0, var_0.a.x, var_0.a.x), vec3<bool>(true, arg_0, var_0.a.x), false))), !(!select(vec4<bool>(false, var_0.a.x, var_0.a.x, arg_0), vec4<bool>(true, var_0.a.x, arg_0, var_0.a.x), vec4<bool>(arg_0, var_0.a.x, true, arg_0))), select(select(select(vec4<bool>(var_0.a.x, false, true, arg_0), vec4<bool>(var_0.a.x, true, var_0.a.x, arg_0), false), vec4<bool>(var_0.a.x, false, arg_0, var_0.a.x), select(vec4<bool>(false, true, true, true), vec4<bool>(arg_0, var_0.a.x, true, false), vec4<bool>(arg_0, var_0.a.x, true, arg_0))), select(vec4<bool>(arg_0, false, true, arg_0), !vec4<bool>(arg_0, var_0.a.x, false, arg_0), var_0.a.x && false), vec4<bool>(true, false, arg_0 | arg_0, arg_0))));
    global1 = array<Struct_4, 29>();
    let var_2 = select(vec4<i32>(-2147483647i, min(_wgslsmith_clamp_i32(-u_input.e, i32(-1i) * -1i, ~var_0.c.x), u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d, var_0.c.x, -32382i), u_input.c), vec3<i32>(var_0.c.x, var_0.c.x, u_input.b)), ~(vec3<i32>(u_input.a, -13303i, u_input.e) >> (vec3<u32>(arg_2.x, 62551u, arg_2.x) % vec3<u32>(32u)))), u_input.a), firstLeadingBit(min(firstLeadingBit(vec4<i32>(var_0.b, 1i, u_input.b, -26659i)), select(vec4<i32>(u_input.e, -23213i, u_input.e, var_0.b), vec4<i32>(u_input.c.x, u_input.e, u_input.b, u_input.b), vec4<bool>(arg_0, true, arg_0, arg_0)))) >> ((vec4<u32>(54330u, abs(global0.x), arg_2.x, _wgslsmith_add_u32(global0.x, u_input.d)) | _wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, arg_2.x, global0.x, 0u), vec4<u32>(0u, 0u, 0u, 5714u))) % vec4<u32>(32u)), var_0.a.x);
    let var_3 = _wgslsmith_clamp_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(12659u, global0.x, arg_2.x, 76698u) | vec4<u32>(31832u, 32294u, 47202u, 26674u)) << (_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_2.x, 40433u, 0u, 65667u), vec4<u32>(u_input.d, global0.x, 139932u, 20658u), var_0.a.x), firstLeadingBit(vec4<u32>(arg_2.x, arg_2.x, u_input.d, 6981u))) % vec4<u32>(32u))), countOneBits(~(~vec4<u32>(arg_2.x, 3430u, global0.x, 8671u))), vec4<u32>(u_input.d, _wgslsmith_dot_vec2_u32(global0.xx, ~vec2<u32>(arg_2.x, 17944u)) | 6871u, abs(78108u), 0u));
    return -(i32(-1i) * -u_input.e);
}

fn func_1(arg_0: i32) -> Struct_2 {
    global1 = array<Struct_4, 29>();
    global0 = vec3<u32>(~4294967295u, ~_wgslsmith_mult_u32(u_input.d, global0.x), global0.x);
    var var_0 = 381f;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1604f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -322f)), 491f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(~max(vec4<u32>(u_input.d, 10887u, 38133u, u_input.d), vec4<u32>(1u, u_input.d, 7771u, global0.x)), select(!global3[_wgslsmith_index_u32(0u, 2u)], vec2<bool>(true, true), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(920f, -147f)))));
    let var_2 = -(-countOneBits(vec3<i32>(u_input.a, 0i, u_input.b)) & vec3<i32>(-18777i << (1u % 32u), -6851i, 1i));
    return Struct_2(Struct_1(!global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(global0.zy, vec2<u32>(global0.x, 3474u))), 2u)], var_2.x, vec3<i32>(-_wgslsmith_div_i32(2147483647i, arg_0), arg_0, ~func_3(false, var_1.x, global0.zz)), _wgslsmith_mod_i32(2147483647i, -(~var_2.x))), vec3<bool>(any(vec3<bool>(-61100i < u_input.b, true, all(vec4<bool>(false, false, true, true)))), !(true || any(vec4<bool>(true, true, true, true))), true), -(i32(-1i) * -1i), global2[_wgslsmith_index_u32(u_input.d, 21u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_4 {
    global1 = array<Struct_4, 29>();
    global1 = array<Struct_4, 29>();
    let var_0 = select(!(!select(vec4<bool>(false, false, true, arg_1.a.d.a.x), !vec4<bool>(arg_0.a.a.a.x, arg_0.a.b.x, true, true), select(vec4<bool>(arg_0.a.a.a.x, arg_1.a.a.a.x, arg_1.a.b.x, arg_1.a.a.a.x), vec4<bool>(arg_1.a.b.x, arg_1.a.a.a.x, arg_1.a.a.a.x, false), true))), select(select(vec4<bool>(true || arg_0.a.b.x, arg_1.a.a.a.x, !arg_1.a.a.a.x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.a.a.a.x, true, false), true), ~u_input.d <= u_input.d), !(!select(vec4<bool>(arg_1.a.a.a.x, arg_0.a.d.a.x, arg_0.a.a.a.x, false), vec4<bool>(false, true, arg_0.a.b.x, false), arg_1.a.a.a.x)), vec4<bool>(true, select(true, arg_0.a.a.a.x, arg_1.a.d.a.x) | true, !any(vec4<bool>(false, false, arg_1.a.a.a.x, true)), !(!arg_0.a.d.a.x))), !vec4<bool>(!arg_1.a.b.x & true, true, any(arg_0.a.b), min(0i, u_input.a) >= arg_0.a.d.c.x));
    var var_1 = arg_1.a.c;
    global0 = firstLeadingBit(max(vec3<u32>(~(~u_input.d), _wgslsmith_div_u32(~u_input.d, abs(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.x, 16874u, 4294967295u), ~vec4<u32>(1u, u_input.d, u_input.d, 0u))), vec3<u32>(global0.x, 4294967295u, u_input.d)));
    return Struct_4(!arg_1.a.b.x | arg_1.a.b.x, Struct_2(global2[_wgslsmith_index_u32(u_input.d, 21u)], arg_1.a.b, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -39345i, -13935i, arg_0.a.d.b), vec4<i32>(6419i, 16506i, arg_1.a.c, 0i)) << (_wgslsmith_add_u32(28404u, global0.x) % 32u)), Struct_1(vec2<bool>(true, true), 2147483647i, vec3<i32>(u_input.e, -23871i, u_input.c.x) ^ vec3<i32>(58863i, 0i, -5767i), ~_wgslsmith_clamp_i32(arg_1.a.a.d, u_input.c.x, 0i))), arg_0.a.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let var_1 = func_4(Struct_3(func_1(-18760i)), Struct_3(func_1(u_input.c.x)));
    let var_2 = 47735u >= u_input.d;
    let var_3 = var_1;
    let var_4 = Struct_1(select(!var_1.b.d.a, select(func_4(Struct_3(var_1.b), Struct_3(var_1.b)).b.b.zz, select(!vec2<bool>(false, var_2), var_3.b.b.xy, var_1.a), func_4(Struct_3(Struct_2(global2[_wgslsmith_index_u32(0u, 21u)], var_1.b.b, 31928i, var_3.b.a)), Struct_3(var_3.b)).b.a.a), var_2), -(_wgslsmith_mod_i32(var_3.b.a.d, u_input.c.x) & -_wgslsmith_dot_vec2_i32(vec2<i32>(-12721i, var_1.b.a.d), vec2<i32>(0i, 19139i))), vec3<i32>(21933i, -var_3.b.c, 6829i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_3.b.a.d, i32(-1i) * -var_3.b.a.b), 0i));
    global2 = array<Struct_1, 21>();
    var var_5 = false;
    global2 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(4294967295u, _wgslsmith_sub_u32(max(4294967295u, var_0), 4294967295u), u_input.d), 1f);
}

