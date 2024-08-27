struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(31716u));

var<private> global1: array<Struct_3, 2>;

var<private> global2: u32 = 1u;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    global1 = array<Struct_3, 2>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1668f, -180f, -1146f, -1984f), vec4<f32>(-1348f, 337f, 1000f, -2786f), vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-474f, 884f, -454f, -499f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-327f, 150f, 1000f, -766f)))), vec4<bool>(0i < u_input.e, true, all(vec3<bool>(true, true, true)), true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-698f, -1416f, 562f, -177f) + vec4<f32>(-1484f, -121f, 1729f, 546f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1529f, -1229f, -309f) * vec4<f32>(2060f, -263f, 595f, 160f)))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-796f, 1259f, -430f, 1798f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-402f, 409f, 902f, 1000f) + vec4<f32>(1000f, -845f, -459f, 933f)))))));
    var var_1 = u_input.c.zx;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(-var_0.x)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f - var_2.x));
    return ~(_wgslsmith_add_i32(u_input.b.x, u_input.b.x) << (_wgslsmith_clamp_u32(u_input.d.x | ~56893u, 57963u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, global0.a.a), vec3<u32>(u_input.c.x, 2454u, 0u)), vec3<u32>(22845u, u_input.d.x, 4294967295u))) % 32u));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    global0 = arg_1;
    var var_0 = arg_3;
    var var_1 = -vec2<i32>(-func_3(), i32(-1i) * -2147483647i);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_dot_vec2_i32(-(~(-_wgslsmith_mod_vec2_i32(var_0.a, arg_3.a))), vec2<i32>(-178i, var_1.x));
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-470f, -1649f, 1535f)))), vec3<f32>(-1535f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2218f, -773f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-515f + 771f) + -1772f))));
    global0 = func_2(select(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))) && false, any(vec3<bool>(true, true, true))), func_2(select(!(arg_1.x < -2147483647i), true, any(vec3<bool>(true, true, true))), func_2(any(vec4<bool>(true, true, true, true)), arg_2, _wgslsmith_div_u32(global0.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.a.a, arg_2.a.a), u_input.c)), Struct_3(abs(arg_1.zy), func_2(true, Struct_2(Struct_1(arg_0)), 4294967295u, global1[_wgslsmith_index_u32(62509u, 2u)]).a, Struct_1(arg_2.a.a), abs(vec4<u32>(11229u, 0u, u_input.d.x, arg_2.a.a)))), countOneBits(max(max(75842u, 110856u), u_input.c.x)), Struct_3(arg_1.zz, Struct_1(13892u), global0.a, vec4<u32>(13786u, ~global0.a.a, arg_0, abs(u_input.d.x)))), ~arg_2.a.a, Struct_3(abs(~select(vec2<i32>(arg_1.x, -20256i), vec2<i32>(-1i, 0i), true)), func_2(true | all(vec4<bool>(true, true, true, true)), arg_2, ~(~4294967295u), Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), arg_3.zx), Struct_1(arg_2.a.a), Struct_1(arg_0), vec4<u32>(arg_0, 1u, 17441u, arg_0))).a, Struct_1(12044u), ~_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.a, global0.a.a, global0.a.a, 0u), vec4<u32>(global0.a.a, arg_2.a.a, 71542u, 4294967295u)) | ~vec4<u32>(arg_2.a.a, 93629u, arg_2.a.a, 1u)));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 70174u, 4294967295u), vec3<u32>(global0.a.a, arg_2.a.a, arg_2.a.a)), reverseBits(vec3<u32>(4294967295u, 3275u, arg_0)), true), ~u_input.c) << (u_input.c % vec3<u32>(32u)), select(max(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.a, 61493u, global0.a.a), _wgslsmith_mod_vec3_u32(u_input.c, u_input.c)), ~(~u_input.c)), u_input.c, select(vec3<bool>(all(vec3<bool>(false, false, true)), any(vec3<bool>(false, false, true)), arg_1.x != arg_3.x), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(false, true, false)))));
    let var_3 = Struct_3(_wgslsmith_add_vec2_i32(min((u_input.b.zz | arg_3.zx) ^ vec2<i32>(-17317i, -2147483647i), vec2<i32>(0i & arg_1.x, -1i)), arg_3.yx << (vec2<u32>(u_input.d.x, 891u << (arg_2.a.a % 32u)) % vec2<u32>(32u))), func_2(!(_wgslsmith_f_op_f32(min(-1000f, var_0.x)) <= -352f), arg_2, func_2(false, func_2(true, arg_2, global0.a.a, global1[_wgslsmith_index_u32(0u, 2u)]), arg_2.a.a, Struct_3(arg_1.xz | arg_1.xy, Struct_1(79497u), global0.a, vec4<u32>(29380u, u_input.c.x, 15062u, 4294967295u))).a.a, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.a.a, 4294967295u, 4294967295u), 2u)]).a, Struct_1(20010u), vec4<u32>(~_wgslsmith_mult_u32(39712u, global0.a.a), reverseBits(firstLeadingBit(14669u)) << ((arg_0 ^ _wgslsmith_sub_u32(47276u, 37683u)) % 32u), abs(arg_2.a.a), 11484u));
    return arg_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    global1 = array<Struct_3, 2>();
    global1 = array<Struct_3, 2>();
    let var_0 = arg_1;
    global0 = arg_0;
    var var_1 = -613f;
    return Struct_1(59286u);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_add_vec2_i32(arg_3.ww, vec2<i32>(-39665i, _wgslsmith_sub_i32(arg_3.x >> (3287u % 32u), ~arg_0.a.x))), Struct_1(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(reverseBits(arg_0.d), vec4<u32>(global0.a.a, 61014u, 62945u, 10528u)), ~(~54613u))), arg_0.c, vec4<u32>(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(7398u, 41081u, arg_0.b.a), vec3<u32>(global0.a.a, arg_1.a, arg_1.a))), arg_1.a, 50390u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(arg_1.a, 34330u)), vec2<u32>(27930u, min(1556u, global0.a.a)))));
    global1 = array<Struct_3, 2>();
    return select(!vec4<bool>(true, all(vec2<bool>(true, true)), true, !all(vec4<bool>(true, false, false, true))), select(vec4<bool>(true, any(vec2<bool>(true, false)), true | all(vec3<bool>(false, true, true)), true && select(false, false, false)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, true, true, true)));
}

fn func_1() -> u32 {
    var var_0 = u_input.d.x;
    global0 = Struct_2(Struct_1(_wgslsmith_mod_u32(global0.a.a, global0.a.a)));
    var var_1 = false;
    let var_2 = func_6(global1[_wgslsmith_index_u32(37531u, 2u)], func_5(Struct_2(func_4(4294967295u, u_input.b, func_2(true, Struct_2(global0.a), global0.a.a, Struct_3(vec2<i32>(u_input.e, -24165i), Struct_1(44852u), global0.a, vec4<u32>(1u, 4294967295u, 0u, global0.a.a))), u_input.b)), _wgslsmith_f_op_f32(round(-456f)) != _wgslsmith_f_op_f32(-220f * _wgslsmith_f_op_f32(872f - -728f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(725f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1351f), -387f, false)))), countOneBits(vec4<i32>(u_input.e >> ((u_input.c.x << (u_input.c.x % 32u)) % 32u), i32(-1i) * -u_input.e, u_input.e, -1i | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.e), vec4<i32>(u_input.b.x, -25622i, u_input.e, 32886i)))));
    var_0 = max(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d.x, u_input.c.x), reverseBits(~0u)), 4294967295u);
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mult_u32(4294967295u, ~(func_1() << (global0.a.a % 32u)));
    var var_0 = Struct_3(countOneBits(~_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.e, u_input.a))), Struct_1(~_wgslsmith_mod_u32(min(57559u, u_input.c.x), ~1u)), func_2(all(vec3<bool>(true, true, 1i != u_input.b.x)), func_2(global0.a.a > u_input.c.x, Struct_2(Struct_1(global0.a.a)), _wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(u_input.d.x, global0.a.a, global0.a.a)), global1[_wgslsmith_index_u32(global0.a.a, 2u)]), select(0u, 92101u, true), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, abs(18722u)), 2u)]).a, ~vec4<u32>(countOneBits(global0.a.a), ~(~96061u), ~u_input.d.x, u_input.d.x));
    let var_1 = global0.a;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.a, reverseBits(4294967295u)), 2u)];
    let var_3 = func_5(Struct_2(var_0.b), true).a;
    global2 = global0.a.a;
    global0 = func_2(select(!(var_0.a.x > u_input.b.x), !(_wgslsmith_f_op_f32(f32(-1f) * -2147f) < _wgslsmith_f_op_f32(select(2278f, 612f, false))), true), func_2(any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), func_2(global0.a.a < abs(66060u), func_2(select(true, true, true), func_2(true, Struct_2(var_0.b), var_0.b.a, global1[_wgslsmith_index_u32(u_input.d.x, 2u)]), u_input.d.x, global1[_wgslsmith_index_u32(var_0.d.x, 2u)]), ~1u, Struct_3(var_2.a, Struct_1(var_1.a), func_2(false, Struct_2(Struct_1(16416u)), 99234u, global1[_wgslsmith_index_u32(0u, 2u)]).a, ~var_2.d)), var_0.b.a >> (1u % 32u), global1[_wgslsmith_index_u32(12097u, 2u)]), 4294967295u, Struct_3(select((var_2.a | vec2<i32>(var_2.a.x, 1i)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(var_2.c.a, 4294967295u), vec2<u32>(19925u, var_0.b.a)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.xy, var_2.a, var_0.a), var_2.a), false), Struct_1(0u), func_2(any(vec3<bool>(false, true, true)), func_2(false, Struct_2(Struct_1(65547u)), ~4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, 0u), 2u)]), reverseBits(54375u), global1[_wgslsmith_index_u32(~var_2.b.a, 2u)]).a, firstTrailingBit(_wgslsmith_clamp_vec4_u32(~var_2.d, var_0.d, ~var_0.d))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(984f, -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-663f, -165f)))))) + _wgslsmith_f_op_f32(1f - -593f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

