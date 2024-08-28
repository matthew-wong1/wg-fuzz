struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 28> = array<i32, 28>(1i, 0i, 20718i, -8005i, -21567i, -58027i, 1i, 0i, 12872i, 2147483647i, -1i, 0i, 1i, -1i, 20266i, -1i, 0i, 33082i, 45283i, -3642i, -3065i, 1i, 34434i, 0i, 2429i, 2147483647i, 0i, 0i);

var<private> global2: f32;

var<private> global3: f32 = -449f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<f32>) -> f32 {
    var var_0 = Struct_5(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32((4294967295u >> (arg_1 % 32u)) & 25255u, _wgslsmith_div_u32(4294967295u, 1u)), 28u)] >> (countOneBits(_wgslsmith_dot_vec3_u32(abs(u_input.a), ~u_input.a)) % 32u), Struct_2(Struct_1(true, vec4<i32>(arg_0.x, _wgslsmith_mod_i32(arg_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), arg_0.x, -409i), _wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, arg_0.x, -22657i, -2147483647i), -vec4<i32>(1i, 1i, -1i, arg_0.x)), ~select(vec2<u32>(1u, arg_1), vec2<u32>(4294967295u, arg_1), vec2<bool>(true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false)), _wgslsmith_div_vec2_f32(arg_2.yz, _wgslsmith_f_op_vec2_f32(-arg_2.zy)), arg_2.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(floor(arg_2))))))));
    let var_1 = vec4<bool>(all(var_0.b.a.e.yy), true, !(!var_0.b.a.e.x) & !(var_0.b.a.e.x || any(vec3<bool>(true, var_0.b.a.a, var_0.b.a.a))), true);
    var var_2 = 0u;
    var var_3 = Struct_5(var_0.a, var_0.b, var_0.c);
    global0 = _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(abs(var_0.b.a.d), ~var_3.b.a.d)), max(vec2<u32>(~_wgslsmith_clamp_u32(1u, 17273u, u_input.a.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1, var_3.b.a.d.x), _wgslsmith_sub_u32(10608u, var_0.b.a.d.x))), vec2<u32>(35675u, ~countOneBits(35780u))));
    return _wgslsmith_f_op_f32(f32(-1f) * -643f);
}

fn func_2() -> vec4<bool> {
    global0 = u_input.a.x;
    var var_0 = Struct_4(Struct_2(Struct_1(true, _wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(14195u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -19644i, 51212i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)])) | vec4<i32>(-24677i, 1i, global1[_wgslsmith_index_u32(76059u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec4<i32>(reverseBits(25550i), abs(global1[_wgslsmith_index_u32(4294967295u, 28u)]), global1[_wgslsmith_index_u32(~u_input.a.x, 28u)], -2147483647i), u_input.a.yz, !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1612f, -546f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 192f), vec2<f32>(1718f, 287f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -241f) - -156f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec2<i32>(global1[_wgslsmith_index_u32(25294u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), 8244u, vec4<f32>(1451f, 193f, -1334f, -501f))), -700f, true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1622f + -470f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f)) * -687f))));
    var var_1 = Struct_3(Struct_1((2147483647i << (u_input.a.x % 32u)) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -25666i, -1i), vec3<i32>(36002i, global1[_wgslsmith_index_u32(43873u, 28u)], -2147483647i)), vec4<i32>(~firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.a.a.c.x, 1i, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec4<i32>(-68344i, 30214i, 48135i, -1i)), ~global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -abs(-1i)), (reverseBits(vec4<i32>(var_0.a.a.b.x, 44542i, var_0.a.a.c.x, 2189i)) >> ((vec4<u32>(31505u, 4294967295u, var_0.a.a.d.x, 1u) | vec4<u32>(var_0.a.a.d.x, u_input.a.x, 9762u, u_input.a.x)) % vec4<u32>(32u))) << ((vec4<u32>(1u, var_0.a.a.d.x, u_input.a.x, var_0.a.a.d.x) << (~vec4<u32>(var_0.a.a.d.x, 28701u, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(vec2<u32>(u_input.a.x, _wgslsmith_add_u32(var_0.a.a.d.x, u_input.a.x)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(56286u, 4294967295u), var_0.a.a.d), ~vec2<u32>(1u, u_input.a.x), all(vec4<bool>(false, true, var_0.a.a.e.x, var_0.a.a.e.x))), !var_0.a.a.a), select(var_0.a.a.e, select(select(vec4<bool>(true, false, true, var_0.a.a.e.x), vec4<bool>(true, true, var_0.a.a.a, false), true), !vec4<bool>(var_0.a.a.a, true, var_0.a.a.a, false), var_0.a.a.e), var_0.a.a.e)), select(var_0.a.a.e.yy, select(vec2<bool>(var_0.a.a.e.x, !var_0.a.a.a), var_0.a.a.e.zw, true), vec2<bool>(!any(vec3<bool>(var_0.a.a.a, true, var_0.a.a.e.x)), true & var_0.a.a.e.x)));
    let var_2 = _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-var_0.b));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_f32(-var_0.a.b.x));
    return var_1.a.e;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(arg_0.x, vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-24200i, global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(16193u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec4<i32>(global1[_wgslsmith_index_u32(arg_2.x, 28u)], global1[_wgslsmith_index_u32(5031u, 28u)], global1[_wgslsmith_index_u32(arg_2.x, 28u)], 0i), vec4<i32>(global1[_wgslsmith_index_u32(1u, 28u)], 42539i, -33795i, global1[_wgslsmith_index_u32(50551u, 28u)]))), -71i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~71012u, _wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(87672u, arg_2.x))), 28u)], 5940i | ~global1[_wgslsmith_index_u32(62138u, 28u)]) << (~vec4<u32>(47045u, 0u, u_input.a.x, arg_2.x) % vec4<u32>(32u)), ~vec4<i32>(select(1i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.x, 26415u), 28u)], !arg_0.x), -1i, min(countOneBits(0i), 1i), _wgslsmith_sub_i32(-1i, global1[_wgslsmith_index_u32(69561u, 28u)])), arg_2, arg_0);
    global2 = arg_1.x;
    let var_1 = !vec4<bool>(all(!(!vec2<bool>(arg_0.x, var_0.e.x))), all(!arg_0), any(func_2().ywx), true);
    global0 = 1u;
    global3 = 1123f;
    return var_0;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(!func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-395f)), 946f))), reverseBits(abs(vec2<u32>(~4294967295u, firstLeadingBit(u_input.a.x)))));
    let var_1 = Struct_3(Struct_1(!select(false, false && var_0.e.x, true), ~vec4<i32>(1i, -var_0.b.x, 38172i, firstTrailingBit(var_0.b.x)), min(var_0.c, var_0.c), ~vec2<u32>(var_0.d.x, func_4(vec4<bool>(var_0.e.x, var_0.a, var_0.e.x, true), vec2<f32>(-1000f, -2100f), var_0.d).d.x), !var_0.e), vec2<bool>(!(var_0.d.x <= var_0.d.x), true));
    var var_2 = _wgslsmith_sub_u32(u_input.a.x, ~func_4(vec4<bool>(var_0.a, false, false, var_1.a.e.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1324f, 958f) * vec2<f32>(-1146f, 2039f)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d.x, 4294967295u), var_1.a.d)).d.x >> (firstLeadingBit(_wgslsmith_mod_u32(0u | var_0.d.x, 50078u)) % 32u));
    var var_3 = Struct_5(var_1.a.c.x, Struct_2(func_4(!var_1.a.e, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(247f, 1443f) - vec2<f32>(796f, -1341f)))), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.d.x, var_1.a.d.x), vec2<u32>(4294967295u, u_input.a.x)), ~var_1.a.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1051f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(-1000f * -850f), _wgslsmith_f_op_f32(ceil(1409f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(f32(-1f) * -2774f))), 911f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    var var_4 = func_4(!var_1.a.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.c.x, var_3.c.x))) + vec2<f32>(-289f, _wgslsmith_f_op_f32(-var_3.c.x))) * vec2<f32>(366f, _wgslsmith_f_op_f32(f32(-1f) * -737f))), u_input.a.xz);
    return func_4(var_4.e, var_3.b.b, ~vec2<u32>(_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_mult_u32(1u, 1u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.d.x, var_0.d.x), ~15069u)));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = vec3<f32>(arg_1.c, arg_1.b.x, _wgslsmith_f_op_f32(trunc(-964f)));
    var var_1 = true;
    var var_2 = Struct_4(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1030f, -129f), _wgslsmith_f_op_f32(f32(-1f) * -691f))))));
    var var_3 = _wgslsmith_dot_vec3_i32(arg_1.a.b.wxx, _wgslsmith_mult_vec3_i32(firstLeadingBit(~arg_1.a.c.zyy), min(vec3<i32>(1i, -1i, arg_1.a.b.x), reverseBits(var_2.a.a.b.xxy)))) << (min(arg_1.a.d.x, min(countOneBits(0u), _wgslsmith_mod_u32(24384u, 34993u)) ^ select(u_input.a.x, arg_1.a.d.x ^ 38713u, true)) % 32u);
    let var_4 = var_2.a.a.e.xx;
    return func_4(vec4<bool>(!(arg_1.a.e.x || false), true, func_1().a && true, arg_1.a.e.x & select(arg_1.a.a, var_2.a.a.e.x, true)), var_2.a.b, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zy, vec2<u32>(var_2.a.a.d.x, 8977u)), vec2<u32>(var_2.a.a.d.x, u_input.a.x)) ^ select(~vec2<u32>(u_input.a.x, 0u), arg_1.a.d, func_2().zz)).b ^ _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(arg_1.a.c, abs(var_2.a.a.c)), vec4<i32>(-9115i, arg_1.a.c.x, -34868i, _wgslsmith_dot_vec2_i32(firstTrailingBit(arg_1.a.b.wz), vec2<i32>(var_2.a.a.b.x, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(step(-1053f, _wgslsmith_f_op_f32(696f - -1115f)));
    var var_0 = min(select(max(_wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(70962u, 28u)])), _wgslsmith_div_vec2_i32(vec2<i32>(9685i, 2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(4924u, 28u)], 1i))) ^ vec2<i32>(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 28u)], -global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), ~max(vec2<i32>(-1i, global1[_wgslsmith_index_u32(1987u, 28u)]) & vec2<i32>(31151i, global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(-40098i, global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -2147483647i))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), select(max(~(-vec2<i32>(global1[_wgslsmith_index_u32(32782u, 28u)], -2147483647i)), -vec2<i32>(-11552i, 0i)), vec2<i32>(reverseBits(global1[_wgslsmith_index_u32(u_input.a.x, 28u)] | -22239i), -global1[_wgslsmith_index_u32(min(61054u, 61550u), 28u)]), true));
    var var_1 = func_5(any(vec4<bool>(true, true, true, true)), Struct_2(func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1535f, -1000f))), _wgslsmith_f_op_f32(abs(333f))));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(func_5(false, Struct_2(func_4(vec4<bool>(true, true, true, false), vec2<f32>(1115f, -1934f), vec2<u32>(u_input.a.x, 0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1845f, -353f) + vec2<f32>(-826f, 797f)), _wgslsmith_div_f32(1414f, -190f))).x, ~func_1().c.x, var_1.x, var_1.x), vec4<i32>(_wgslsmith_clamp_i32(~var_1.x, _wgslsmith_mod_i32(var_1.x, global1[_wgslsmith_index_u32(14564u, 28u)]), select(var_1.x, 22848i, true)), -2147483647i, global1[_wgslsmith_index_u32(~(~u_input.a.x), 28u)], _wgslsmith_mult_i32(-var_0.x, var_1.x)) >> ((~vec4<u32>(2226u, 37608u, u_input.a.x, u_input.a.x) ^ abs(vec4<u32>(21925u, u_input.a.x, 58979u, 2706u) << (vec4<u32>(0u, 21875u, 4294967295u, u_input.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    let var_3 = min(u_input.a.x, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.x, -func_5(false, Struct_2(Struct_1(false, vec4<i32>(var_1.x, -47743i, var_1.x, -1i), vec4<i32>(-2147483647i, var_0.x, -1i, var_1.x), u_input.a.zx, vec4<bool>(false, true, true, false)), vec2<f32>(-469f, 1000f), -701f)).x, 22136i, _wgslsmith_div_i32(-var_2, ~22078i)) << (vec4<u32>(func_1().d.x, u_input.a.x, firstLeadingBit(~u_input.a.x), u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-260f, 717f, -468f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(203f, 443f, 298f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-531f, -1223f, 681f))) + vec3<f32>(-128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -923f)), _wgslsmith_f_op_f32(select(-664f, -1004f, true)))), select(~(~countOneBits(vec4<u32>(0u, 26686u, 1u, var_3))), ~firstTrailingBit(abs(vec4<u32>(14371u, 12006u, var_3, 4294967295u))), false), func_1().c.zxx);
}

