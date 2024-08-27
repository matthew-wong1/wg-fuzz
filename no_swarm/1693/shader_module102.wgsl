struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26>;

var<private> global1: bool = false;

var<private> global2: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(1504f, -1246f, 1936f), vec3<f32>(-453f, -1000f, 1187f), vec3<f32>(148f, -303f, 1382f), vec3<f32>(1040f, -1694f, -1073f), vec3<f32>(1037f, 341f, 625f), vec3<f32>(-962f, 858f, -919f), vec3<f32>(189f, -2267f, 2303f), vec3<f32>(635f, -569f, 201f), vec3<f32>(-166f, 579f, -1067f));

var<private> global3: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(459f, -290f, -231f), vec3<f32>(-899f, -414f, 1000f), vec3<f32>(716f, 251f, -2027f), vec3<f32>(238f, 159f, 519f), vec3<f32>(-1601f, 501f, 1000f), vec3<f32>(-1026f, 184f, 2751f), vec3<f32>(-502f, -1256f, -1952f), vec3<f32>(1249f, 774f, -589f), vec3<f32>(-849f, 471f, -250f), vec3<f32>(529f, 788f, -131f), vec3<f32>(-915f, 1000f, 1567f), vec3<f32>(-251f, -1082f, 269f), vec3<f32>(944f, 179f, -383f), vec3<f32>(-390f, 2030f, 784f), vec3<f32>(686f, 553f, -123f), vec3<f32>(-2416f, 2534f, 295f), vec3<f32>(-1011f, -1000f, 531f), vec3<f32>(100f, 914f, 2015f), vec3<f32>(1846f, 117f, 992f), vec3<f32>(-1697f, 279f, -956f), vec3<f32>(109f, -907f, -1000f), vec3<f32>(1709f, 725f, -1883f), vec3<f32>(854f, -1708f, 1000f), vec3<f32>(-246f, 139f, -1000f), vec3<f32>(-1112f, -1254f, -642f));

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    let var_0 = 897f;
    let var_1 = select(vec2<bool>(false, false), vec2<bool>(any(vec4<bool>(true, true, all(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, false)))), !all(vec4<bool>(true, false, false, true))), false);
    global0 = array<vec3<u32>, 26>();
    let var_2 = _wgslsmith_mult_i32(-15627i, 1i);
    global0 = array<vec3<u32>, 26>();
    return vec4<f32>(-607f, -526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, -232f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0, var_0, true)), _wgslsmith_f_op_f32(f32(-1f) * -874f))) * var_0));
}

fn func_2() -> Struct_1 {
    global4 = array<Struct_2, 9>();
    let var_0 = Struct_1(~(-vec4<i32>(1i, 1i, 1i, 1i)), vec3<bool>(true, true, true), ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(7410u, u_input.a), vec2<u32>(17180u, 4294967295u)))), 1106f);
    let var_1 = var_0.c.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 277f, var_0.d, 970f))) - vec4<f32>(var_0.d, 171f, _wgslsmith_div_f32(var_0.d, var_0.d), -1074f)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f)) < _wgslsmith_f_op_f32(sign(576f));
    return Struct_1(var_0.a, !(!var_0.b), select(countOneBits(countOneBits(~var_0.c)), _wgslsmith_add_vec2_u32(firstLeadingBit(var_0.c), ~var_0.c << ((var_0.c << (vec2<u32>(var_0.c.x, var_1) % vec2<u32>(32u))) % vec2<u32>(32u))), any(!var_0.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    var var_0 = ~_wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(abs(global0[_wgslsmith_index_u32(u_input.a, 26u)]), min(vec3<u32>(0u, 0u, u_input.a), vec3<u32>(0u, arg_2, 0u))), ~_wgslsmith_add_vec3_u32(countOneBits(global0[_wgslsmith_index_u32(arg_2, 26u)]), global0[_wgslsmith_index_u32(abs(arg_2), 26u)]));
    var var_1 = (vec3<u32>(select(arg_1.c.x, 4294967295u, all(arg_1.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, var_0.x, 14755u, 41710u), vec4<u32>(80304u, 0u, 56853u, 1u)), arg_1.c.x) ^ ~(~global0[_wgslsmith_index_u32(abs(18085u), 26u)])) ^ vec3<u32>(16490u, var_0.x, 1u);
    var_1 = ~global0[_wgslsmith_index_u32(~40667u, 26u)];
    global1 = select(!(!any(vec4<bool>(true, false, false, arg_1.b.x))) | select(arg_1.b.x, false, !(arg_2 < var_0.x)), all(vec2<bool>(arg_1.b.x, all(func_2().b.zy))), false);
    global4 = array<Struct_2, 9>();
    return Struct_3(global4[_wgslsmith_index_u32(arg_1.c.x, 9u)], arg_1.d, global4[_wgslsmith_index_u32(select((_wgslsmith_clamp_u32(arg_1.c.x, 0u, 0u) & 4294967295u) | _wgslsmith_mult_u32(firstTrailingBit(var_0.x), ~u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 47794u, arg_1.c.x, var_1.x), ~vec4<u32>(1u, arg_2, arg_1.c.x, 1u)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(13690u, var_0.x, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(10701u, 0u, var_1.x), vec3<u32>(0u, 15111u, 1u))) % 32u), true), 9u)]);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_3 {
    let var_0 = func_4(-(i32(-1i) * -_wgslsmith_mod_i32(arg_0.a.x, arg_0.a.x)), func_2(), arg_0.c.x);
    global1 = !all(!func_2().b);
    global0 = array<vec3<u32>, 26>();
    global4 = array<Struct_2, 9>();
    global3 = array<vec3<f32>, 25>();
    return func_4(min(-1i, ~_wgslsmith_mod_i32(1i, var_0.c.b.a.x & arg_0.a.x)), func_4(max(arg_0.a.x, 44025i), Struct_1(arg_0.a, var_0.a.b.b, ~(vec2<u32>(0u, 71369u) >> (vec2<u32>(u_input.a, 15772u) % vec2<u32>(32u))), -1017f), 4294967295u).c.b, var_0.c.c.c.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_2 {
    return Struct_2(-39388i, Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.a, -13691i, 2147483647i, arg_0.a.c.a.x), arg_0.c.b.a) << (~vec4<u32>(107027u, u_input.a, 0u, u_input.a) % vec4<u32>(32u)), !(!arg_0.a.c.b), arg_0.a.c.c, arg_0.c.b.d), func_2());
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec4<bool> {
    global1 = any(vec3<bool>(true, all(select(vec4<bool>(arg_1.b.x, arg_0.c.b.x, false, false), vec4<bool>(arg_1.b.x, arg_1.b.x, true, false), vec4<bool>(true, true, arg_1.b.x, false))) && true, !(arg_0.c.d == 934f) != true));
    global1 = !arg_1.b.x;
    let var_0 = func_1(arg_0.b, ~func_2().c.x);
    let var_1 = arg_0.c.a.zz;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.d))), -531f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.d * arg_0.c.d), var_0.c.b.d)), arg_1.d));
    return !vec4<bool>(func_5(var_0, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(global3[_wgslsmith_index_u32(arg_1.c.x, 25u)]))))).b.b.x, true, any(arg_0.c.b), !var_0.c.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_6(func_5(func_1(Struct_1(vec4<i32>(-1i, -2147483647i, 8438i, -77045i), vec3<bool>(false, true, true), vec2<u32>(28379u, u_input.a), 1976f), u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1259f, -325f, 339f) - global3[_wgslsmith_index_u32(u_input.a, 25u)])), Struct_1(max(vec4<i32>(43077i, 41811i, 0i, -1i), vec4<i32>(-58559i, 0i, 0i, 7577i)), vec3<bool>(true, false, true), firstLeadingBit(vec2<u32>(u_input.a, 16652u)), _wgslsmith_div_f32(-1370f, 848f)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(5876i, 0i))));
    var var_1 = 1000f;
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(27271i, firstTrailingBit(1i), -12204i, abs(-12271i) & select(-68726i, 0i, var_0.x)), vec4<i32>(min(0i, reverseBits(40494i)), -2147483647i, ~func_1(Struct_1(vec4<i32>(5568i, -33216i, 2147483647i, 2147483647i), vec3<bool>(var_0.x, false, var_0.x), vec2<u32>(u_input.a, u_input.a), 1002f), u_input.a).c.c.a.x, reverseBits(_wgslsmith_div_i32(1i, 1i)))), firstTrailingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 26439i, 28897i, 11141i), vec4<i32>(2147483647i, 1i, -2147483647i, -1i)))));
    let var_3 = abs(_wgslsmith_mult_vec2_i32(var_2.yw, _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.x, 1i), countOneBits(var_2.yz))));
    let var_4 = Struct_3(func_5(func_4(-1i, Struct_1(max(vec4<i32>(3448i, var_2.x, 0i, var_2.x), var_2), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), var_0.x), ~vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_f32(1808f, 731f)), 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-322f, 295f, _wgslsmith_f_op_f32(f32(-1f) * -1115f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1420f, _wgslsmith_f_op_f32(sign(969f))) - -1259f) - _wgslsmith_f_op_f32(1387f - -1654f)), func_1(Struct_1(-reverseBits(vec4<i32>(var_3.x, var_3.x, var_2.x, var_3.x)), vec3<bool>(all(var_0.xzx), true, true), ~vec2<u32>(u_input.a, u_input.a), -1607f), firstTrailingBit(0u)).c);
    global4 = array<Struct_2, 9>();
    var var_5 = _wgslsmith_sub_i32(var_4.c.c.a.x, _wgslsmith_mult_i32(var_3.x, -1i | (min(var_2.x, -28907i) << (func_4(-2908i, Struct_1(var_4.a.b.a, var_0.yzw, var_4.a.c.c, 525f), u_input.a).a.b.c.x % 32u))));
    var var_6 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global0[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(33401u, 9u)]), _wgslsmith_f_op_f32(1556f - var_4.c.b.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b, -965f, var_4.b, var_4.b) - vec4<f32>(-966f, 1000f, 137f, var_4.c.c.d))))), vec4<u32>(~firstLeadingBit(1u), 1u, 34979u, abs(~4294967295u)));
}

