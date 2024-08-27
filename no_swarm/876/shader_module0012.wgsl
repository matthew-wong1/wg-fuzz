struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: Struct_4,
    d: vec3<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

var<private> global1: array<vec2<bool>, 32>;

var<private> global2: f32;

var<private> global3: bool = true;

var<private> global4: array<Struct_3, 7>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~countOneBits(_wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(1u, 72079u))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.e.x, u_input.e.x), u_input.b.x), u_input.e), vec2<u32>(u_input.e.x, u_input.b.x)));
    global4 = array<Struct_3, 7>();
    var var_1 = u_input.a;
    global2 = _wgslsmith_f_op_f32(-826f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(713f, 489f))) + arg_0.x));
    let var_2 = abs(~max(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.d, 0u), ~u_input.e), u_input.e));
    return _wgslsmith_div_f32(400f, _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(~(~u_input.d), 13u)];
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-193f, -1727f, 231f, var_1.c.a.x) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.a.x, 1370f, -889f, var_1.c.a.x), var_1.c.a, var_1.a.x))) * _wgslsmith_f_op_vec4_f32(var_1.c.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-611f, 234f, var_1.c.a.x, var_1.c.a.x)))))) * var_1.c.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a.x, -372f, 653f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.c.a.zwz), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(130f, var_1.c.a.x, var_1.c.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.a.x), 801f, _wgslsmith_div_f32(-116f, -297f)), vec3<bool>(var_1.b, _wgslsmith_mod_i32(arg_0.x, 9805i) != (var_1.e.x << (48431u % 32u)), u_input.b.x >= (u_input.b.x & u_input.e.x))))));
    let var_3 = ~u_input.b.x;
    return global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.d, u_input.d)), ~u_input.e), 7u)];
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5) -> Struct_3 {
    global4 = array<Struct_3, 7>();
    var var_0 = func_2(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(arg_1.c.e.x, -1i), min(u_input.c.yz, vec2<i32>(u_input.a, u_input.a))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(492f, 2326f)) * 1000f) - _wgslsmith_f_op_f32(-func_2(min(vec2<i32>(-1i, u_input.a), u_input.c.yz)).a.a.x)), 1084f);
    var var_1 = _wgslsmith_dot_vec4_u32((~u_input.b << ((vec4<u32>(arg_0.b, 68337u, 47419u, arg_1.b) >> (reverseBits(vec4<u32>(arg_1.b, 4294967295u, arg_1.b, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ ~select(_wgslsmith_div_vec4_u32(vec4<u32>(583u, u_input.d, 0u, 0u), vec4<u32>(u_input.d, u_input.b.x, u_input.d, arg_1.b)), vec4<u32>(arg_1.b, arg_0.b, 1u, 0u) << (vec4<u32>(11869u, 7804u, arg_0.b, u_input.d) % vec4<u32>(32u)), true), ~(u_input.b ^ vec4<u32>(121364u, ~1u, ~25153u, arg_0.b)));
    var var_2 = !(true && arg_1.c.b);
    return func_2(-countOneBits(-(arg_1.e.e.xx >> (u_input.e % vec2<u32>(32u)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<bool>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 13u)];
    var var_1 = global0[_wgslsmith_index_u32(14754u, 13u)];
    let var_2 = firstTrailingBit(~firstTrailingBit(min(select(u_input.e, vec2<u32>(4294967295u, u_input.d), arg_2.wy), u_input.b.wy >> (u_input.b.zw % vec2<u32>(32u)))));
    var var_3 = arg_1;
    let var_4 = !select(vec2<bool>(true, true), select(vec2<bool>(arg_3.x, !arg_2.x), !select(arg_3, vec2<bool>(false, var_1.b), arg_2.x), true), select(var_1.d, vec2<bool>(var_1.b, arg_2.x), arg_3.x));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(!global1[_wgslsmith_index_u32(func_4(func_1(Struct_5(global1[_wgslsmith_index_u32(u_input.d, 32u)], 47034u, Struct_4(vec3<bool>(false, false, false), true, Struct_2(vec4<f32>(664f, 365f, 1330f, -182f)), global1[_wgslsmith_index_u32(4294967295u, 32u)], u_input.c), u_input.c, Struct_4(vec3<bool>(true, true, false), true, Struct_2(vec4<f32>(-1613f, -589f, -1030f, -2051f)), global1[_wgslsmith_index_u32(1807u, 32u)], vec3<i32>(u_input.a, u_input.c.x, u_input.a))), Struct_5(vec2<bool>(false, false), u_input.b.x, Struct_4(vec3<bool>(true, true, false), false, Struct_2(vec4<f32>(431f, -1266f, 637f, -437f)), global1[_wgslsmith_index_u32(u_input.d, 32u)], vec3<i32>(u_input.a, -32617i, u_input.a)), vec3<i32>(23080i, -9995i, 59804i), Struct_4(vec3<bool>(false, false, false), true, Struct_2(vec4<f32>(-400f, -863f, 854f, 380f)), global1[_wgslsmith_index_u32(1u, 32u)], vec3<i32>(u_input.c.x, 82376i, -4718i)))), Struct_1(u_input.c.xx, true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1439f, 514f)))), vec4<bool>(true, true, true, true), select(vec2<bool>(true, false), select(global1[_wgslsmith_index_u32(u_input.e.x, 32u)], vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false))), 32u)], u_input.d, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.e.x, ~u_input.d, u_input.b.x), _wgslsmith_sub_u32(~u_input.d, 52133u)) & ~firstTrailingBit(func_4(global4[_wgslsmith_index_u32(0u, 7u)], Struct_1(u_input.c.xy, true, vec2<f32>(774f, -1573f)), vec4<bool>(false, true, false, false), vec2<bool>(false, false))), 13u)], u_input.c, global0[_wgslsmith_index_u32(abs(~u_input.d), 13u)]);
    global3 = var_0.e.b;
    var_0 = Struct_5(select(var_0.e.d, select(select(select(vec2<bool>(var_0.a.x, true), var_0.a, var_0.a.x), vec2<bool>(var_0.a.x, false), select(vec2<bool>(var_0.c.d.x, var_0.c.d.x), global1[_wgslsmith_index_u32(15929u, 32u)], false)), !var_0.c.d, true), !(!var_0.e.d.x || all(vec4<bool>(var_0.c.d.x, true, var_0.a.x, false)))), 1485u, Struct_4(vec3<bool>(true, !all(var_0.c.d), true), var_0.e.a.x, Struct_2(var_0.e.c.a), !select(vec2<bool>(var_0.c.b, false), global1[_wgslsmith_index_u32(~var_0.b, 32u)], !global1[_wgslsmith_index_u32(31722u, 32u)]), var_0.c.e), -(~(vec3<i32>(var_0.d.x, u_input.c.x, u_input.c.x) << (u_input.b.zyy % vec3<u32>(32u))) & vec3<i32>(-2147483647i, -40692i, u_input.a | 2650i)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~var_0.b), 13u)]);
    let var_1 = var_0.e.c.a.x;
    global0 = array<Struct_4, 13>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.c.c.a));
    global3 = false;
    let var_3 = var_0.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(-829f, ~(~u_input.b.x), -1479f, ~abs(~(~29589u)), ~var_0.b);
}

