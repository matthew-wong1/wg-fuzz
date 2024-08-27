struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<f32, 8>;

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec4<f32> {
    var var_0 = select(vec2<bool>(false, !all(select(vec2<bool>(true, false), vec2<bool>(arg_0.d.a, false), arg_0.d.a))), vec2<bool>(1701f > global2[_wgslsmith_index_u32(~1u, 8u)], global3.x & true), true);
    global2 = array<f32, 8>();
    let var_1 = _wgslsmith_f_op_f32(step(-1322f, -892f));
    var var_2 = Struct_2(any(select(select(!vec4<bool>(var_0.x, false, true, arg_0.b.a), vec4<bool>(false, var_0.x, false, arg_0.d.a), arg_0.d.a), select(!vec4<bool>(true, false, global3.x, global3.x), select(vec4<bool>(arg_0.b.a, false, true, false), vec4<bool>(var_0.x, false, global3.x, true), vec4<bool>(false, arg_0.b.a, global3.x, true)), select(vec4<bool>(global3.x, false, true, false), vec4<bool>(true, global3.x, false, false), vec4<bool>(true, var_0.x, global3.x, arg_0.d.a))), true)));
    let var_3 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-abs(vec2<i32>(-1i, -40006i)), -vec2<i32>(u_input.b, 0i)), i32(-1i) * -1i), firstLeadingBit(-1i), _wgslsmith_mod_i32(-1i, -2147483647i | u_input.a));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.c, arg_0.c, true)) * arg_0.c) - _wgslsmith_div_vec4_f32(vec4<f32>(-603f, arg_0.a, _wgslsmith_f_op_f32(-1153f * _wgslsmith_f_op_f32(arg_0.a + -1000f)), var_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-905f, 727f, global2[_wgslsmith_index_u32(20945u, 8u)], var_1))) * _wgslsmith_f_op_vec4_f32(arg_0.c - arg_0.c))));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_4(reverseBits(abs(0i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 8u)]), Struct_2(false), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 8u)], global2[_wgslsmith_index_u32(16967u, 8u)], global2[_wgslsmith_index_u32(u_input.c, 8u)], global2[_wgslsmith_index_u32(u_input.c, 8u)]) + vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 8u)], global2[_wgslsmith_index_u32(u_input.c, 8u)], 197f, global2[_wgslsmith_index_u32(4294967295u, 8u)])), Struct_2(global3.x)), ~(~30565u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1084f, 297f, 905f, global2[_wgslsmith_index_u32(u_input.c, 8u)]))), any(!(!vec3<bool>(global3.x, global3.x, true))))));
    global2 = array<f32, 8>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(-662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)))), _wgslsmith_add_vec2_u32((_wgslsmith_div_vec2_u32(vec2<u32>(34018u, u_input.c), vec2<u32>(u_input.c, u_input.c)) << (firstTrailingBit(vec2<u32>(0u, u_input.c)) % vec2<u32>(32u))) << (~vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(~u_input.c, u_input.c)), u_input.c);
    global3 = select(!(!vec3<bool>(true && global3.x, false, global3.x)), vec3<bool>(global3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(18451u, 8u)])), -137f)) != var_0.b.x, abs(_wgslsmith_clamp_i32(u_input.a, var_0.a, 1i)) > u_input.a), false);
    let var_2 = vec2<u32>(4294967295u, ~(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(2790u, var_1.c, var_1.c, 4294967295u)), ~vec4<u32>(u_input.c, var_1.c, u_input.c, var_1.b.x)) & (u_input.c | ~4294967295u)));
    return _wgslsmith_f_op_vec3_f32(-var_0.b.wyx);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_3))));
    global3 = vec3<bool>(true, !(min(select(4294967295u, 1u, true), _wgslsmith_clamp_u32(8314u, u_input.c, 76090u)) != 50402u), false);
    let var_1 = 1u;
    global0 = _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u), 0u, 1u, 1u), ~vec4<u32>(arg_2, 53342u, 68131u, u_input.c) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 27613u, 4294967295u, arg_2), vec4<u32>(68012u, var_1, 0u, var_1)) % vec4<u32>(32u))) >> (var_1 % 32u), 8u)]));
    return global3.xy;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_3 {
    global3 = !vec3<bool>(all(global3.zy), !(!arg_3.x & all(vec4<bool>(global3.x, false, global3.x, true))), true);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.x, global2[_wgslsmith_index_u32(~u_input.c, 8u)]), arg_0.x)), -175f));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, ~(arg_1.x & 1u)), u_input.c), 8u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(74358u, 8u)], global2[_wgslsmith_index_u32(reverseBits(arg_1.x), 8u)]) - _wgslsmith_f_op_f32(round(-276f)))));
    var_1 = _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-var_0));
    return Struct_3(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(global2[_wgslsmith_index_u32(arg_1.x, 8u)], Struct_2(true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, -426f, var_2), arg_0))), Struct_2(any(vec3<bool>(arg_3.x, false, true)))), ~109473u)).x, Struct_2(arg_3.x | global3.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-409f, 511f))) + _wgslsmith_f_op_f32(floor(-1221f))), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(-664f, Struct_2(false), vec4<f32>(global2[_wgslsmith_index_u32(47984u, 8u)], 324f, 286f, global2[_wgslsmith_index_u32(arg_1.x, 8u)]), Struct_2(false)), _wgslsmith_div_u32(reverseBits(arg_1.x), 0u << (u_input.c % 32u)))).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(262f, -1306f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0)))), Struct_2(global3.x));
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    let var_0 = ~vec4<i32>(-5465i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a), (u_input.b ^ u_input.a) & -2147483647i), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.a, -21579i)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.b, -1i), vec2<i32>(-35027i, 23888i), arg_0.b.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, u_input.a)))), min(u_input.a, ~(-u_input.b)));
    var var_1 = reverseBits(_wgslsmith_clamp_i32(abs(max(u_input.a, -18719i)) >> (9295u % 32u), countOneBits(30439i), abs(reverseBits(_wgslsmith_div_i32(var_0.x, -30035i)))));
    global3 = vec3<bool>(arg_0.d.a, true, all(select(select(!vec4<bool>(global3.x, false, global3.x, global3.x), select(vec4<bool>(false, false, true, global3.x), vec4<bool>(true, false, global3.x, true), false), arg_0.b.a), select(!vec4<bool>(global3.x, arg_0.b.a, arg_0.b.a, global3.x), !vec4<bool>(false, true, arg_0.d.a, global3.x), vec4<bool>(arg_0.b.a, false, arg_0.d.a, global3.x)), !select(vec4<bool>(arg_0.b.a, arg_0.b.a, arg_0.d.a, false), vec4<bool>(global3.x, false, arg_0.b.a, true), vec4<bool>(arg_0.d.a, global3.x, arg_0.b.a, false)))));
    let var_2 = Struct_1(-365f, ~(~(~vec2<u32>(3707u, u_input.c))), ~u_input.c);
    let var_3 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(func_5(vec4<f32>(-1000f, var_2.a, -1745f, -178f), vec4<u32>(u_input.c, var_2.b.x, u_input.c, var_2.c), var_0.xz, vec2<bool>(global3.x, false)), countOneBits(0u))) * _wgslsmith_f_op_vec4_f32(-arg_0.c))), vec4<u32>(0u, ~6690u, ~_wgslsmith_mult_u32(1u, var_2.b.x), abs(firstTrailingBit(u_input.c)) | var_2.c), vec2<i32>(u_input.b, min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.x, var_0.x, -2147483647i) | var_0, var_0), -1i)), !vec2<bool>(arg_0.b.a || (arg_0.b.a & true), arg_0.b.a)).d;
    return func_5(_wgslsmith_div_vec4_f32(arg_0.c, vec4<f32>(var_2.a, -1000f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~0u, 8u)] * _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.c, 8u)]))), 257f)), vec4<u32>(max(max(~u_input.c, max(var_2.c, 11936u)), max(u_input.c, _wgslsmith_mod_u32(1u, 1u))), max(_wgslsmith_mod_u32(min(var_2.b.x, var_2.c), var_2.c), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, var_2.b.x, 17937u)), ~vec3<u32>(u_input.c, u_input.c, 0u))), _wgslsmith_clamp_u32(50785u, _wgslsmith_add_u32(var_2.b.x, reverseBits(43201u)), ~var_2.b.x), u_input.c), -vec2<i32>(0i, -(-8368i << (u_input.c % 32u))), select(!(!vec2<bool>(true, var_3.a)), !vec2<bool>(true, 12880i != var_0.x), arg_0.b.a));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = func_6(func_5(arg_0, ~abs(vec4<u32>(353u, u_input.c, u_input.c, u_input.c) >> (vec4<u32>(4294967295u, 2955u, u_input.c, 0u) % vec4<u32>(32u))), ~select(arg_2.yz, reverseBits(arg_2.zz), !global3.yy), func_4(-arg_2.x, _wgslsmith_f_op_vec3_f32(func_2()), firstLeadingBit(_wgslsmith_mod_u32(u_input.c, 0u)), -331f)));
    var_0 = Struct_3(arg_1, var_0.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(-349f, Struct_2(global3.x), var_0.c, var_0.b), u_input.c))))))), Struct_2(!func_4(i32(-1i) * -31365i, arg_0.wxz, 4294967295u, 1000f).x));
    global2 = array<f32, 8>();
    let var_1 = -1i;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(reverseBits(reverseBits(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-944f, global2[_wgslsmith_index_u32(1u, 8u)], -1103f, -301f)))), _wgslsmith_f_op_f32(1014f - _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(31208u, 8u)]))), select(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.b) >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u)), u_input.b <= u_input.a), vec2<f32>(353f, -796f)))), 8u)];
    let var_0 = vec2<u32>(~firstTrailingBit(_wgslsmith_mod_u32(13217u, ~59713u)), 29914u);
    let var_1 = Struct_1(func_6(func_6(Struct_3(global2[_wgslsmith_index_u32(var_0.x, 8u)], func_6(Struct_3(global2[_wgslsmith_index_u32(36210u, 8u)], Struct_2(global3.x), vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 8u)], 1485f, global2[_wgslsmith_index_u32(75u, 8u)], 1000f), Struct_2(global3.x))).d, vec4<f32>(1025f, 342f, global2[_wgslsmith_index_u32(var_0.x, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]), func_5(vec4<f32>(-1000f, 126f, -102f, 139f), vec4<u32>(9146u, var_0.x, 4294967295u, 0u), vec2<i32>(u_input.b, 2147483647i), vec2<bool>(false, false)).d))).a, var_0, countOneBits(75886u));
    global0 = _wgslsmith_f_op_f32(var_1.a + func_6(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(72725u, 8u)])), func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-535f, 1633f, -1244f, -983f) - vec4<f32>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(u_input.c, 8u)], -905f, global2[_wgslsmith_index_u32(var_1.b.x, 8u)])), _wgslsmith_mod_vec4_u32(vec4<u32>(21754u, 4294967295u, u_input.c, var_1.b.x), vec4<u32>(var_1.c, 4294967295u, 1u, var_1.c)), vec2<i32>(-38863i, u_input.a) ^ vec2<i32>(13377i, 27934i), !vec2<bool>(global3.x, global3.x)).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, global2[_wgslsmith_index_u32(4294967295u, 8u)], 1000f, 746f))), Struct_2(!global3.x))).a);
    global2 = array<f32, 8>();
    let var_2 = Struct_4(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1465f, var_1.a, 1000f, -139f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-805f, global2[_wgslsmith_index_u32(54532u, 8u)], 870f, var_1.a))))))));
    global1 = ~u_input.c;
    let var_3 = any(!vec3<bool>(global3.x, global3.x, any(vec2<bool>(global3.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, -u_input.a, reverseBits(0u), ~vec2<i32>(-(~u_input.a), 2147483647i), global2[_wgslsmith_index_u32(~(~1u), 8u)]);
}

