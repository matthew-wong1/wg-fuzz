struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 395f;

var<private> global1: i32;

var<private> global2: array<i32, 26> = array<i32, 26>(2611i, -1i, 4363i, 9224i, -5917i, -19383i, -1i, 2147483647i, 2147483647i, -3498i, -21266i, -11666i, 1i, -3956i, 0i, 1i, i32(-2147483648), 13777i, -5821i, 2147483647i, 1i, -99314i, 4588i, 20578i, 33941i, 29982i);

var<private> global3: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec2<i32>(-1i, -19010i)), Struct_3(vec2<i32>(0i, 39954i)), Struct_3(vec2<i32>(-1i, 4186i)), Struct_3(vec2<i32>(1i, 2147483647i)), Struct_3(vec2<i32>(0i, 2147483647i)), Struct_3(vec2<i32>(0i, 7409i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1861f, -196f))) * _wgslsmith_div_f32(1420f, _wgslsmith_div_f32(1000f, -192f))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1253f * -1150f))))))));
    var var_0 = Struct_2(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-102f + _wgslsmith_div_f32(-736f, -122f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-960f)) + -800f)));
    var var_1 = 978f;
    let var_2 = select(vec3<bool>(true, true, true), select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true), vec3<bool>(true, true, true)), vec3<bool>(1u <= firstLeadingBit(u_input.b.x), (42042u ^ u_input.b.x) < select(u_input.c.x, 4294967295u, false), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(604f - -1006f)) <= var_0.b), false);
    var var_3 = Struct_4(vec4<bool>(all(select(vec2<bool>(var_2.x, false), select(var_2.zx, var_2.xx, var_2.zy), var_2.x)), !(~1u > u_input.b.x), select(all(select(vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(true, true, true, true), vec4<bool>(var_2.x, var_2.x, false, false))), var_2.x, select(var_2.x, all(vec3<bool>(var_2.x, false, false)), var_2.x == var_2.x)), !var_2.x), select(vec4<bool>(!all(vec4<bool>(var_2.x, true, true, true)), var_2.x, all(!var_2.xy), any(select(var_2, var_2, vec3<bool>(false, var_2.x, true)))), !(!(!vec4<bool>(false, false, var_2.x, false))), any(vec4<bool>(var_2.x, var_2.x, false, true)) || var_2.x));
    return _wgslsmith_mult_i32(u_input.a, 38734i);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_5) -> f32 {
    let var_0 = !arg_3.a.a;
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u >> (arg_1.x % 32u), 8295u), 6u)];
    global2 = array<i32, 26>();
    var var_2 = Struct_3(select(-abs(arg_0) << (~select(vec2<u32>(arg_1.x, 30126u), vec2<u32>(arg_1.x, arg_1.x), vec2<bool>(false, var_0)) % vec2<u32>(32u)), select((vec2<i32>(global2[_wgslsmith_index_u32(21445u, 26u)], -1i) << (arg_3.a.b.yx % vec2<u32>(32u))) >> ((vec2<u32>(arg_3.a.b.x, arg_1.x) << (arg_1.wy % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(countOneBits(arg_0), vec2<i32>(0i, u_input.a) ^ vec2<i32>(-36943i, -12949i), ~vec2<i32>(arg_0.x, arg_0.x)), vec2<bool>(true, arg_3.a.a)), any(vec4<bool>(!arg_3.a.a, any(vec2<bool>(var_0, var_0)), true, any(vec4<bool>(arg_3.a.a, true, false, arg_3.a.a))))));
    let var_3 = _wgslsmith_mod_vec2_i32(-countOneBits(arg_0), vec2<i32>(94378i & (global2[_wgslsmith_index_u32(4294967295u, 26u)] ^ -2147483647i), u_input.a) >> (vec2<u32>(arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.x, 17964u), arg_1.xwx) & _wgslsmith_mod_u32(arg_1.x, u_input.c.x)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(1797f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1168f))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(vec2<i32>(-_wgslsmith_clamp_i32(~u_input.a, ~(-18996i), _wgslsmith_dot_vec2_i32(arg_0.zz, arg_0.wz)), _wgslsmith_mult_i32(max(func_3(), _wgslsmith_div_i32(27580i, global2[_wgslsmith_index_u32(u_input.c.x, 26u)])), reverseBits(arg_0.x))), abs(min(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), u_input.b & u_input.b), vec4<u32>(40000u, _wgslsmith_clamp_u32(14992u, 1u, arg_1.b.x), _wgslsmith_clamp_u32(arg_1.b.x, 40969u, arg_1.b.x), u_input.c.x))), vec4<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1061f, 1263f)), -122f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1665f, 1902f, arg_1.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(1456f * 1305f), false)), true == select(false, arg_1.a, true))), _wgslsmith_f_op_f32(floor(-361f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(511f - -790f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1236f))), Struct_5(arg_1, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-169f * 746f), _wgslsmith_f_op_f32(ceil(-1204f))))))));
    let var_1 = -(~_wgslsmith_dot_vec4_i32(arg_0, ~vec4<i32>(global2[_wgslsmith_index_u32(11893u, 26u)], 12927i, global2[_wgslsmith_index_u32(arg_1.b.x, 26u)], global2[_wgslsmith_index_u32(1u, 26u)])) >> ((_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, u_input.b.x), ~78171u) ^ ~_wgslsmith_mod_u32(20405u, arg_1.b.x)) % 32u));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.b.x, countOneBits(7079u)), 6u)];
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0))))))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(round(var_0)))))));
    let var_4 = Struct_3(abs(var_2.a) | ~(~vec2<i32>(27641i, -44560i)));
    return ~u_input.b.x | arg_1.b.x;
}

fn func_1() -> Struct_3 {
    var var_0 = -41049i;
    var var_1 = Struct_5(Struct_1(~(~u_input.b.x) > abs(func_2(vec4<i32>(-2147483647i, -2147483647i, u_input.a, 31035i), Struct_1(true, vec3<u32>(4294967295u, u_input.c.x, 58u)))), u_input.b.wxy), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-196f, -797f)), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-744f, 576f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(815f, 932f), vec2<f32>(-410f, -334f)))), vec2<bool>(true, true))));
    let var_2 = Struct_4(select(!select(!vec4<bool>(false, false, false, var_1.a.a), !vec4<bool>(var_1.a.a, var_1.a.a, true, var_1.a.a), all(vec3<bool>(true, true, var_1.a.a))), !select(vec4<bool>(false, var_1.a.a, true, true), select(vec4<bool>(var_1.a.a, false, false, false), vec4<bool>(true, var_1.a.a, var_1.a.a, false), vec4<bool>(false, var_1.a.a, var_1.a.a, false)), !vec4<bool>(true, var_1.a.a, false, var_1.a.a)), ((1u >> (u_input.c.x % 32u)) | 26432u) != u_input.b.x), vec4<bool>(true, var_1.a.a, var_1.a.a, var_1.a.a));
    var var_3 = Struct_4(!(!(!vec4<bool>(false, true, var_1.a.a, var_1.a.a))), vec4<bool>(any(!var_2.a), var_2.a.x, !var_2.b.x, var_1.a.a));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1516f, -473f))));
    return Struct_3(reverseBits(vec2<i32>(select(0i, u_input.a, var_1.a.a) >> ((757u << (u_input.c.x % 32u)) % 32u), ~func_3())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~(~vec2<u32>(111963u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 0u, 4294967295u), ~vec4<u32>(0u, 10628u, 77872u, u_input.b.x))));
    var var_2 = 0u;
    global2 = array<i32, 26>();
    let var_3 = Struct_1(!any(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), vec3<u32>(u_input.c.x, u_input.b.x, 0u));
    var var_4 = Struct_3(var_0.a);
    let var_5 = var_1.x;
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, -297f, -532f, -1962f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(211f, -1000f, 1320f, -1476f) - vec4<f32>(-1219f, -853f, 2143f, 218f))))), countOneBits(vec4<i32>(var_6.a.x, var_0.a.x, 47038i, func_3()) | _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(var_6.a.x, 2147483647i, 2147483647i, var_6.a.x)), vec4<i32>(1i, global2[_wgslsmith_index_u32(1u, 26u)], var_6.a.x, -15378i) >> (vec4<u32>(7373u, var_5, 50385u, u_input.b.x) % vec4<u32>(32u)), -vec4<i32>(-47849i, 0i, global2[_wgslsmith_index_u32(1u, 26u)], var_0.a.x))), vec4<u32>(max(var_3.b.x, 1u) & 4294967295u, u_input.c.x, reverseBits(0u), ~0u ^ u_input.c.x) ^ ~firstTrailingBit(u_input.b));
}

