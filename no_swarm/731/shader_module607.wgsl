struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<bool>;

var<private> global2: vec2<f32> = vec2<f32>(-1000f, 439f);

var<private> global3: array<vec2<u32>, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-943f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)));
    var_0 = _wgslsmith_f_op_f32(arg_0.d * -494f);
    var var_1 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(~(~arg_1.a), arg_1.a, global0.x, 1u), reverseBits(vec4<u32>(22527u, 1u, 19254u, ~arg_1.a))), -vec4<i32>(~10242i, u_input.c.x, ~(i32(-1i) * -47377i), -u_input.c.x), 0i);
    var var_2 = -1i;
    let var_3 = ~firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(arg_0.c.a, 122341u), ~1u) << (vec2<u32>(firstLeadingBit(1u), select(1u, var_1.a.x, false)) % vec2<u32>(32u)));
    return firstTrailingBit(u_input.d.yyz);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec4<bool> {
    global3 = array<vec2<u32>, 9>();
    global0 = vec2<u32>(~4609u, global0.x);
    let var_0 = _wgslsmith_mod_u32(reverseBits(global0.x), select(2326u, 1u, global1.x)) >> (~_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(0u, global0.x, 1u)), ~select(vec3<u32>(22617u, 7909u, 0u), vec3<u32>(0u, 18967u, 3238u), false)) % 32u);
    let var_1 = arg_0.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(global2.x - -380f), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-global2.x)), -1435f);
    return !vec4<bool>(true, true, !(true || arg_1.x), global1.x);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_3(-1873f, select(select(!(!vec4<bool>(global1.x, global1.x, global1.x, false)), func_4(func_3(Struct_3(517f, vec4<bool>(global1.x, global1.x, global1.x, true), Struct_2(0u, vec2<bool>(true, global1.x), vec3<i32>(1i, 4370i, u_input.c.x), global1.x), -392f, vec4<i32>(arg_2, 7956i, arg_1.x, arg_0)), Struct_2(global0.x, global1.xw, u_input.d.xzy, false), vec3<f32>(global2.x, 1356f, global2.x), global1.x), vec4<bool>(global1.x, global1.x, global1.x, false)), false | (13855i == u_input.a)), !func_4(vec3<i32>(u_input.c.x, -1i, u_input.c.x), vec4<bool>(global1.x, global1.x, true, global1.x)), true), Struct_2(77292u, vec2<bool>(false, -1422f < _wgslsmith_f_op_f32(ceil(global2.x))), -_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.d.x, 39468i), ~vec3<i32>(arg_1.x, 27408i, arg_2)), true), -1616f, countOneBits(u_input.d << (vec4<u32>(global0.x, 353u, global0.x, min(9196u, 26154u)) % vec4<u32>(32u))));
    var var_1 = func_4(vec3<i32>(~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(arg_2, arg_1.x, -18340i)), var_0.c.c), 2147483647i, arg_0), var_0.b).yx;
    var var_2 = Struct_1((~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.a, global0.x, var_0.c.a, global0.x), vec4<u32>(14897u, global0.x, 14529u, 0u)) >> (reverseBits(reverseBits(vec4<u32>(var_0.c.a, 28438u, global0.x, 1u))) % vec4<u32>(32u))) << (vec4<u32>(min(var_0.c.a & 22178u, 1u), _wgslsmith_clamp_u32(firstLeadingBit(0u), 0u, 0u), _wgslsmith_div_u32(~61671u, ~33722u), 1994u) % vec4<u32>(32u)), -var_0.e, i32(-1i) * -abs(-29960i));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1523f) - _wgslsmith_f_op_f32(-global2.x)))), var_0.a, -1255f);
    var var_4 = var_0;
    return Struct_2(var_4.c.a, !(!select(!vec2<bool>(false, var_4.c.b.x), vec2<bool>(true, true), !var_1.x)), var_2.b.xyz, all(vec2<bool>(true, true)) & !(!var_1.x));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_2, arg_2)), 812f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(ceil(arg_2))))))));
    global1 = vec4<bool>(any(!(!(!vec4<bool>(false, arg_3.b.x, true, false)))), arg_0, false, true);
    let var_0 = vec2<u32>(select(_wgslsmith_add_u32(79620u, ~(global0.x ^ 4294967295u)), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(global0.x, 9u)], vec2<u32>(16119u, arg_3.a))), false), ~(~_wgslsmith_add_u32(0u, arg_1)) | ~_wgslsmith_sub_u32(global0.x | arg_3.a, 1u));
    var var_1 = func_4(reverseBits(u_input.b.zwx) << (abs(firstTrailingBit(vec3<u32>(arg_3.a, 1u, arg_1)) & max(vec3<u32>(20382u, 4294967295u, var_0.x), vec3<u32>(0u, 37951u, global0.x))) % vec3<u32>(32u)), vec4<bool>(global1.x, false, arg_0, true));
    let var_2 = _wgslsmith_mod_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(-arg_3.c.x, ~u_input.c.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_3.c.x, 0i, 0i), u_input.a)), vec2<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.e.x) ^ _wgslsmith_add_i32(-1i, arg_3.c.x), -2147483647i) | (-vec2<i32>(arg_3.c.x, arg_3.c.x) | min(vec2<i32>(arg_3.c.x, u_input.a), ~u_input.c.yx)));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(860f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1380f))))), vec4<bool>(true, true, true, true), Struct_2(max(~(13220u << (arg_1 % 32u)), _wgslsmith_mult_u32(0u, global0.x) | 0u), func_4(-select(vec3<i32>(u_input.b.x, var_2.x, -5108i), vec3<i32>(arg_3.c.x, arg_3.c.x, 2147483647i), vec3<bool>(false, false, global1.x)), select(!vec4<bool>(false, false, arg_3.b.x, var_1.x), vec4<bool>(global1.x, true, arg_0, true), select(arg_3.b.x, false, true))).yy, arg_3.c, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~vec4<i32>(2147483647i, i32(-1i) * -25086i, ~arg_3.c.x, min(29255i, 22426i)) << ((firstTrailingBit(min(vec4<u32>(29471u, var_0.x, 1846u, 0u), vec4<u32>(4294967295u, global0.x, global0.x, arg_3.a))) << (select(vec4<u32>(6652u, arg_1, global0.x, 4294967295u), vec4<u32>(arg_1, 0u, global0.x, var_0.x), !vec4<bool>(global1.x, false, true, true)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1() -> i32 {
    let var_0 = -1000f;
    let var_1 = (global1.x & global1.x) && any(vec2<bool>(true, !(!global1.x)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 1403f)));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1622f)), 967f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(f32(-1f) * -2119f))));
    let var_3 = func_5(!global1.x, global0.x, -930f, func_2(_wgslsmith_mult_i32(-1i, ~u_input.a) ^ 47559i, u_input.b.wz << (reverseBits(~global3[_wgslsmith_index_u32(4294967295u, 9u)]) % vec2<u32>(32u)), abs(-u_input.c.x)));
    return _wgslsmith_add_i32(u_input.c.x, 17118i | var_3.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global0.x, global0.x, global0.x, global0.x)), max(vec4<u32>(global0.x, 4294967295u, 23728u, 61376u), _wgslsmith_add_vec4_u32(vec4<u32>(141055u, 57428u, 0u, global0.x), vec4<u32>(global0.x, 64327u, 2646u, 59552u)))), abs(vec4<u32>(46641u, 29620u, global0.x, 1u) & ~vec4<u32>(global0.x, global0.x, global0.x, 4294967295u))), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x ^ 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(18294i, 2147483647i, 1i, u_input.a), u_input.e), ~u_input.b.x, -2147483647i), ~(-vec4<i32>(u_input.a, -2147483647i, -43374i, u_input.e.x))), func_1());
    let var_1 = ~vec4<u32>(global0.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global0.x), var_0.a.yy), ~(~56469u), global0.x) ^ vec4<u32>(select(0u, global0.x, true), ~var_0.a.x, 1u, ~4294967295u);
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -303f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, global2.x), vec2<f32>(global2.x, 564f))))) + vec2<f32>(global2.x, -1000f))));
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, global2.x), vec2<f32>(-1829f, 621f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-693f, global2.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -236f) + vec2<f32>(global2.x, 733f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-3351f, 1804f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), -1000f), global1.x));
    var var_2 = var_0.a;
    var var_3 = global1.x;
    let var_4 = func_4(_wgslsmith_mod_vec3_i32(-select(var_0.b.xzx, vec3<i32>(u_input.c.x, 0i, u_input.b.x), global1.xwy), countOneBits(firstTrailingBit(vec3<i32>(0i, var_0.b.x, -5320i)))) ^ select(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, -45204i, 45631i), vec3<i32>(-2147483647i, -4570i, 41608i), u_input.e.yxy), u_input.e.xwy, vec3<bool>(var_1.x <= 22890u, true, global1.x)), vec4<bool>(true, func_5(~u_input.d.x >= (i32(-1i) * -40494i), func_2(reverseBits(-2147483647i), u_input.b.wy | vec2<i32>(var_0.b.x, -2147483647i), -u_input.e.x).a, 966f, func_2(u_input.b.x, vec2<i32>(u_input.d.x, var_0.c) & u_input.b.yw, -39969i)).c.d, false, global1.x)).xz;
    let var_5 = var_0.b.wy;
    let var_6 = Struct_1(vec4<u32>(1u | (_wgslsmith_mod_u32(0u, var_2.x) >> (47744u % 32u)), 8042u, ~global0.x, _wgslsmith_div_u32(global0.x, global0.x)), u_input.e, -(func_1() << (_wgslsmith_sub_u32(var_2.x << (1u % 32u), ~46077u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_2.x, ~0u << (global0.x % 32u)), 1u, vec2<i32>(select(1i, abs(var_5.x), !(global2.x < -112f)), countOneBits(-1i)));
}

