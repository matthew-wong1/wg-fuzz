struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec4<i32>, 28>;

var<private> global2: vec3<f32>;

var<private> global3: array<f32, 3> = array<f32, 3>(-108f, 255f, 769f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = max(((_wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(11360u, 28u)], vec4<i32>(11523i, u_input.a.x, u_input.a.x, 0i)) & vec4<i32>(-11624i, u_input.a.x, 1i, u_input.a.x)) >> (reverseBits(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 0u, 1u, 64213u)) % vec4<u32>(32u)), abs(select(global1[_wgslsmith_index_u32(abs(1u) >> (~4294967295u % 32u), 28u)], _wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(75938u, 28u)], global1[_wgslsmith_index_u32(55772u, 28u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), 12285i != u_input.a.x))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 3u)])), _wgslsmith_f_op_f32(step(840f, _wgslsmith_f_op_f32(256f * -1487f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(0u, 3u)]))), -789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(96357u, 3u)] - -354f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, global3[_wgslsmith_index_u32(35859u, 3u)], 380f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1592f, global3[_wgslsmith_index_u32(1u, 3u)], 2521f), vec3<f32>(658f, -1117f, global3[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<bool>(true, true, true))), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 3u)], global2.x, global3[_wgslsmith_index_u32(22338u, 3u)])), any(vec2<bool>(true, true))))));
    let var_1 = Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(select(0u, 1u, true), ~4294967295u), vec2<u32>(1u, 1u)), !vec4<bool>(any(vec3<bool>(true, true, true)), true, !(u_input.a.x <= u_input.a.x), _wgslsmith_mult_i32(9777i, 0i) < -var_0.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(2220u, 3u)]), -1000f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * -224f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, 352f, 244f, -597f)), vec4<f32>(global2.x, global3[_wgslsmith_index_u32(4294967295u, 3u)], global2.x, global2.x)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1003f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global3[_wgslsmith_index_u32(~42530u, 3u)])))));
    let var_2 = -946f;
    global3 = array<f32, 3>();
    return 17532u;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = select(~1u, _wgslsmith_dot_vec3_u32(select(arg_2.zxw & firstLeadingBit(arg_2.wxz), ~arg_2.xxw, true), ~(~vec3<u32>(arg_1.x, arg_2.x, 1u))), any(arg_0));
    let var_1 = Struct_1(~vec2<u32>(firstLeadingBit(abs(0u)), ~arg_1.x), vec4<bool>(false, true, true, arg_0.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1111f, global3[_wgslsmith_index_u32(arg_2.x, 3u)], global2.x, global3[_wgslsmith_index_u32(arg_1.x, 3u)]))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(733f, -517f, -1998f, global2.x), vec4<f32>(global3[_wgslsmith_index_u32(59386u, 3u)], 274f, global3[_wgslsmith_index_u32(arg_2.x, 3u)], 2135f)))))))), _wgslsmith_f_op_f32(f32(-1f) * -369f));
    let var_2 = vec3<bool>(true, select(arg_0.x, var_1.b.x, !(var_1.b.x | any(vec4<bool>(true, var_1.b.x, true, arg_0.x)))), !arg_0.x);
    var var_3 = var_1;
    let var_4 = u_input.a.yz;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + -372f), -180f));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 1087f, global2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(arg_0.x, 3u)], global3[_wgslsmith_index_u32(arg_0.x, 3u)], global3[_wgslsmith_index_u32(123945u, 3u)])))))), vec3<f32>(_wgslsmith_f_op_f32(290f * 1682f), _wgslsmith_f_op_f32(func_4(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), arg_0.xx, vec4<u32>(_wgslsmith_sub_u32(1u, 1u), arg_0.x & arg_0.x, func_3(), arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(max(267f, global3[_wgslsmith_index_u32(0u, 3u)]))) + global3[_wgslsmith_index_u32(~arg_0.x & 0u, 3u)])));
    var var_0 = vec3<u32>(~arg_0.x, firstTrailingBit(~(~arg_0.x) ^ 4294967295u), ~54968u);
    global0 = var_0.x;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-772f, -1994f, global3[_wgslsmith_index_u32(arg_0.x, 3u)])))))))));
    global2 = vec3<f32>(global3[_wgslsmith_index_u32(~57179u, 3u)], global3[_wgslsmith_index_u32(arg_0.x, 3u)], -1292f);
    return ~(30334u << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, var_0.x), var_0.x) % 32u));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    global0 = firstLeadingBit(arg_1.x);
    global1 = array<vec4<i32>, 28>();
    let var_0 = Struct_1(abs(~vec2<u32>(~arg_1.x, abs(arg_1.x))), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), all(vec4<bool>(true, true, false, false))), vec4<bool>(false, true, true, true), select(true, all(vec4<bool>(true, true, false, true)), -1975f >= global2.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec3<bool>(true, true, false)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f - 1895f)), _wgslsmith_f_op_f32(func_4(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), ~vec2<u32>(49503u, 4294967295u), vec4<u32>(4294967295u, 25880u, 1u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(arg_1.x, 3u)])), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(58261u, 3u)], global3[_wgslsmith_index_u32(arg_1.x, 3u)]))))), global2.x);
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(var_0.c.yxz))))), _wgslsmith_f_op_vec3_f32(var_0.c.xyz + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.yxw * vec3<f32>(global2.x, -1119f, 891f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c.xwy, vec3<f32>(global2.x, 1169f, 643f))))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.xxw - vec3<f32>(-2103f, global2.x, global2.x)) * _wgslsmith_f_op_vec3_f32(ceil(var_0.c.zzy)))) + _wgslsmith_f_op_vec3_f32(select(var_0.c.wyw, var_0.c.zzz, select(!var_0.b.xyx, vec3<bool>(var_0.b.x, var_0.b.x, false), false)))));
    return var_0;
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    let var_0 = func_5(37838i, ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(arg_0.x, arg_0.x)), arg_0.x, 4294967295u, func_2(vec3<u32>(61597u, arg_0.x, 53307u))), vec4<u32>(arg_0.x, arg_0.x, func_2(vec3<u32>(24262u, 84028u, arg_0.x)), ~73912u)));
    var var_1 = var_0;
    var var_2 = arg_0.x | 0u;
    var var_3 = 962f;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 3u)], -980f, -1694f, 333f)) * _wgslsmith_f_op_vec4_f32(var_1.c + var_0.c)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 176f, 1834f, -1048f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-930f, 644f, -347f, global3[_wgslsmith_index_u32(arg_0.x, 3u)]) - var_1.c)), func_5(u_input.a.x, vec4<u32>(var_0.a.x, 28263u, var_0.a.x, var_1.a.x) << (vec4<u32>(var_0.a.x, 1u, 4294967295u, 33025u) % vec4<u32>(32u))).b)))));
    return u_input.a.x << (arg_0.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>((_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) != func_1(vec3<u32>(4294967295u, 47133u, 44406u))) | false, true, 1u != func_5(u_input.a.x, vec4<u32>(11614u, 0u, 0u, 4294967295u)).a.x, true), select(!(!func_5(u_input.a.x, vec4<u32>(4294967295u, 25620u, 34594u, 13054u)).b), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), false), any(vec4<bool>(any(vec2<bool>(false, true)), true, func_5(40549i, vec4<u32>(18769u, 84062u, 43176u, 89394u)).b.x, true))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, false, false)), true), vec4<bool>(any(vec4<bool>(true, false, true, false)) || true, true, true, true), true));
    global0 = 45288u;
    global3 = array<f32, 3>();
    let var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(-_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, ~_wgslsmith_mod_i32(u_input.a.x, -9692i))), -1i);
    global1 = array<vec4<i32>, 28>();
    var_0 = func_5(0i, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_mod_u32(5018u, 82248u), 1u)), _wgslsmith_mult_u32(~1u << (0u % 32u), 1u), ~select(_wgslsmith_div_u32(1u, 40021u), 75243u, var_0.x), 0u)).b;
    global0 = ~firstLeadingBit(_wgslsmith_mod_u32(~firstTrailingBit(0u), func_5(-8612i, vec4<u32>(8544u, 51140u, 1u, 4591u)).a.x >> (firstLeadingBit(0u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u), -2147483647i, global1[_wgslsmith_index_u32(func_2(reverseBits(vec3<u32>(1u, 1u, 1u))), 28u)], abs(select(-_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(19573u, 28u)]), vec4<i32>(0i, -var_1, -u_input.a.x, -2147483647i), vec4<bool>(all(vec4<bool>(true, false, var_0.x, var_0.x)), var_0.x | var_0.x, true, var_0.x))));
}

