struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-11434i, -35856i, 51292i, 42610i);

var<private> global1: array<bool, 13> = array<bool, 13>(false, false, true, false, true, true, true, false, false, false, true, false, true);

var<private> global2: array<bool, 13>;

var<private> global3: u32 = 1u;

var<private> global4: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    return global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(u_input.a, 1u | ~u_input.a)), 13u)];
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    global1 = array<bool, 13>();
    var var_0 = arg_3;
    global2 = array<bool, 13>();
    let var_1 = 7595u;
    var var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(arg_3.b, firstTrailingBit(select(_wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(arg_3.b.x, u_input.a, 1u, var_1)), ~arg_3.b, !arg_1))), ~(~firstTrailingBit(arg_3.c)));
    return -firstLeadingBit(-2147483647i);
}

fn func_4(arg_0: i32) -> bool {
    let var_0 = -11814i;
    var var_1 = ~(~min(max(~vec4<u32>(u_input.a, 4294967295u, 91555u, 3027u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 13296u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))), vec4<u32>(u_input.a, u_input.a, 10844u, max(1u, 26683u))));
    var var_2 = Struct_2(all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(countOneBits(u_input.a), 13u)], true, any(vec2<bool>(true, global2[_wgslsmith_index_u32(var_1.x, 13u)]))), select(select(vec4<bool>(true, global4.x, true, true), vec4<bool>(global4.x, false, true, global1[_wgslsmith_index_u32(var_1.x, 13u)]), false), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(0u, 13u)], true), vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_1.x, 13u)], global2[_wgslsmith_index_u32(var_1.x, 13u)]), global2[_wgslsmith_index_u32(36356u, 13u)]), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, 1491u), 13u)]), any(!vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 13u)], global1[_wgslsmith_index_u32(0u, 13u)])))), global0.zx, Struct_1(~(~(~vec4<i32>(u_input.b.x, 4638i, -2147483647i, global0.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(u_input.a), ~var_1.x, _wgslsmith_clamp_u32(u_input.a, u_input.a, 34910u), 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 1u), vec4<u32>(u_input.a, u_input.a, var_1.x, 4294967295u)), ~max(vec4<u32>(1u, var_1.x, 4294967295u, var_1.x), vec4<u32>(0u, 636u, var_1.x, var_1.x))), u_input.a, true, min(_wgslsmith_sub_i32(countOneBits(u_input.c), ~2147483647i), ~(-2147483647i))), Struct_1(max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 1i, arg_0, -1i), vec4<i32>(32688i, arg_0, -2147483647i, 2147483647i) | vec4<i32>(arg_0, 29330i, arg_0, global0.x)), vec4<i32>(arg_0 | arg_0, reverseBits(global0.x), i32(-1i) * -11347i, _wgslsmith_div_i32(0i, var_0))), ~(vec4<u32>(8067u, var_1.x, 35643u, 1u) | vec4<u32>(4294967295u, 0u, 1u, var_1.x)) << (~(vec4<u32>(u_input.a, 31789u, var_1.x, var_1.x) >> (vec4<u32>(u_input.a, var_1.x, 1u, 93086u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(_wgslsmith_sub_u32(_wgslsmith_mod_u32(84356u, 41220u), _wgslsmith_sub_u32(var_1.x, u_input.a)), reverseBits(~var_1.x), reverseBits(var_0) != global0.x), !(all(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 13u)], false)) & global4.x), -35471i), select(!(!vec2<bool>(global4.x, false)), select(select(!vec2<bool>(global2[_wgslsmith_index_u32(33002u, 13u)], global1[_wgslsmith_index_u32(var_1.x, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 13u)], false), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], true)), select(!vec2<bool>(false, global2[_wgslsmith_index_u32(48581u, 13u)]), vec2<bool>(false, global4.x), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global4.x, global4.x))), !select(vec2<bool>(global2[_wgslsmith_index_u32(24011u, 13u)], global4.x), vec2<bool>(global1[_wgslsmith_index_u32(29344u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)]), global1[_wgslsmith_index_u32(u_input.a, 13u)])), !vec2<bool>(all(vec4<bool>(true, global4.x, global4.x, true)), u_input.c == 33170i)));
    var var_3 = ~u_input.a;
    var_1 = var_2.c.b;
    return var_2.d.d;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(func_2(), -u_input.b.zz, Struct_1(arg_0.c.a, ~arg_0.d.b, u_input.a, global4.x, max(_wgslsmith_dot_vec4_i32(arg_0.d.a, arg_0.d.a) | (i32(-1i) * -54370i), 1i)), arg_0.c, vec2<bool>(true, arg_1.x));
    var var_1 = Struct_3(vec3<bool>(false, true, true), var_0.c);
    let var_2 = ~(max(~(-21896i), global0.x) & 37971i);
    global4 = vec2<bool>(!func_2(), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.b.b.yzx ^ min(vec3<u32>(1u, 1u, var_1.b.c) & var_1.b.b.wwz, max(var_0.d.b.zww, arg_0.d.b.yxz)), abs(arg_0.c.b.wwz)), 13u)]);
    var_0 = arg_0;
    return Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -49462i, -1i, ~1i | ~var_0.d.a.x), ~vec4<i32>(1i, u_input.c, var_2, arg_0.c.a.x)), ~abs(firstTrailingBit(vec4<u32>(var_1.b.b.x, 0u, 10838u, 0u))), _wgslsmith_div_u32(u_input.a >> (16717u % 32u), max(0u, firstLeadingBit(7666u))), func_4(_wgslsmith_mod_i32(-30049i, func_3(-467f, vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0.d.b.x, 13u)], arg_0.a, false), u_input.b.yz, arg_0.d))) || !global4.x, var_1.b.e);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_3(select(select(vec3<bool>(true, any(vec2<bool>(arg_1.d, global4.x)), true), select(vec3<bool>(true, true, false), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 13u)], true, arg_2), any(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(50676u, 13u)]))), false), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], arg_2, false), vec3<bool>(true, true, true), 286f <= arg_0.x), select(!vec3<bool>(true, arg_2, global1[_wgslsmith_index_u32(1u, 13u)]), vec3<bool>(true, select(global4.x, global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(arg_1.b.x, 13u)]), false), global4.x)), func_1(Struct_2(all(vec2<bool>(global4.x, global4.x)) & func_2(), _wgslsmith_clamp_vec2_i32(firstTrailingBit(arg_1.a.wx), ~u_input.b.xx, vec2<i32>(0i, u_input.b.x) | arg_1.a.zx), func_1(Struct_2(false, vec2<i32>(arg_1.a.x, -17785i), arg_1, arg_1, vec2<bool>(global2[_wgslsmith_index_u32(12475u, 13u)], true)), vec4<bool>(arg_1.d, global4.x, arg_2, arg_2), -1199f), Struct_1(abs(vec4<i32>(-47601i, arg_1.e, arg_1.e, global0.x)), vec4<u32>(arg_1.b.x, 3941u, 4294967295u, u_input.a), arg_1.c >> (0u % 32u), arg_1.d, 0i), vec2<bool>(true, true)), !select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 13u)], true), select(vec4<bool>(arg_2, false, arg_1.d, false), vec4<bool>(true, false, global4.x, global1[_wgslsmith_index_u32(arg_1.c, 13u)]), arg_1.d), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(5445u, 13u)], false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))));
    global2 = array<bool, 13>();
    return var_0.a.yz;
}

fn func_6(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    var var_0 = vec4<bool>(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 1u)), min(vec2<u32>(u_input.a, 1u), firstLeadingBit(vec2<u32>(u_input.a, 4294967295u))))), 13u)], any(select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(17895u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec3<bool>(false, global4.x, true), true), vec3<bool>(false, false, arg_0.x), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], true, true)), !(!vec3<bool>(global1[_wgslsmith_index_u32(27319u, 13u)], global4.x, arg_0.x)), global2[_wgslsmith_index_u32(~28528u, 13u)])), true, !(!(!global1[_wgslsmith_index_u32(17958u, 13u)]) || !(!global1[_wgslsmith_index_u32(79890u, 13u)])));
    let var_1 = !arg_0;
    let var_2 = u_input.b.yz;
    var var_3 = Struct_3(select(select(vec3<bool>(true, false, var_0.x), var_0.xww, !global4.x), var_0.wzw, true), Struct_1(vec4<i32>(1i, -_wgslsmith_div_i32(-16162i, u_input.b.x), _wgslsmith_dot_vec2_i32(global0.wx << (vec2<u32>(11540u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(var_2, global0.wx)), _wgslsmith_mod_i32(abs(-43569i), _wgslsmith_clamp_i32(-13567i, var_2.x, 61166i))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(40442u, 39771u, 1u, u_input.a), func_1(Struct_2(var_1.x, vec2<i32>(arg_1, 2147483647i), Struct_1(vec4<i32>(arg_1, u_input.b.x, 1i, global0.x), vec4<u32>(u_input.a, u_input.a, 88203u, 99691u), u_input.a, global1[_wgslsmith_index_u32(16192u, 13u)], global0.x), Struct_1(vec4<i32>(arg_1, global0.x, global0.x, arg_1), vec4<u32>(47688u, u_input.a, u_input.a, u_input.a), u_input.a, global2[_wgslsmith_index_u32(12802u, 13u)], -2147483647i), var_0.xw), vec4<bool>(var_0.x, var_0.x, global4.x, global4.x), -745f).b), u_input.a, func_1(Struct_2(true != var_0.x, ~var_2, Struct_1(vec4<i32>(arg_1, -19770i, 2006i, arg_1), vec4<u32>(25166u, 62706u, u_input.a, 57378u), u_input.a, true, -40378i), func_1(Struct_2(true, global0.xx, Struct_1(vec4<i32>(-1i, global0.x, u_input.c, -1i), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), u_input.a, var_1.x, arg_1), Struct_1(vec4<i32>(global0.x, var_2.x, 0i, 15758i), vec4<u32>(u_input.a, u_input.a, 27200u, 0u), u_input.a, var_1.x, global0.x), var_1), vec4<bool>(false, arg_0.x, var_0.x, var_1.x), -109f), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], arg_0.x)), select(!vec4<bool>(var_0.x, true, global2[_wgslsmith_index_u32(u_input.a, 13u)], true), !vec4<bool>(global4.x, true, var_1.x, false), global4.x), -729f).d, u_input.c));
    global1 = array<bool, 13>();
    return 1255f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1333f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(914f)))), 312f)) > _wgslsmith_f_op_f32(func_6(func_5(vec2<f32>(1f, 1f), func_1(Struct_2(true, global0.zy, Struct_1(vec4<i32>(-46143i, -1i, -2147483647i, 29020i), vec4<u32>(0u, 1u, u_input.a, u_input.a), 16846u, false, u_input.b.x), Struct_1(vec4<i32>(u_input.c, -1i, global0.x, global0.x), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), u_input.a, global2[_wgslsmith_index_u32(4294967295u, 13u)], -2147483647i), vec2<bool>(global2[_wgslsmith_index_u32(1u, 13u)], true)), vec4<bool>(false, true, global4.x, true), -256f), true), i32(-1i) * -1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(250f, 207f, 846f) * vec3<f32>(717f, 1774f, 831f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-654f, -1000f, -1236f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1122f, -1770f, 1376f) - vec3<f32>(-1707f, -1112f, -1413f))))));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(~(~1i), 0i, countOneBits(~0i), u_input.b.x), vec4<i32>(-27866i, -53450i, global0.x, _wgslsmith_mod_i32(u_input.c, u_input.b.x) & 1i)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(77698u, 37951u), _wgslsmith_clamp_u32(~u_input.a, u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)), countOneBits(func_1(Struct_2(true, vec2<i32>(global0.x, 56460i), Struct_1(vec4<i32>(-1i, -5190i, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a, 4294967295u, u_input.a, 81537u), u_input.a, false, u_input.b.x), Struct_1(vec4<i32>(global0.x, -2147483647i, global0.x, global0.x), vec4<u32>(u_input.a, 0u, u_input.a, 18109u), u_input.a, true, global0.x), vec2<bool>(global2[_wgslsmith_index_u32(42458u, 13u)], global4.x)), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], false), -950f).b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 45972u, 0u, 0u)) >> (u_input.a % 32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), ~vec4<u32>(u_input.a, u_input.a, 55422u, 0u)) << (vec4<u32>(u_input.a | 10367u, ~0u, 21470u, 0u) % vec4<u32>(32u))), ~abs(~abs(u_input.a)), true || global4.x, 1i);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-549f, 936f, 515f, -343f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(680f, -1000f, -1222f, -1492f) - vec4<f32>(-811f, 654f, 478f, 532f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(552f * _wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f))), -u_input.b.x);
}

