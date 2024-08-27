struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<bool, 30> = array<bool, 30>(true, true, false, false, true, true, true, false, false, true, false, true, false, true, false, true, true, true, false, false, true, false, true, false, true, true, true, false, true, true);

var<private> global2: array<Struct_1, 11>;

var<private> global3: vec3<u32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1((vec3<i32>(~24478i, arg_2.a.x, 26901i) << (vec3<u32>(~4232u, 1u, _wgslsmith_mod_u32(4294967295u, 60178u)) % vec3<u32>(32u))) >> (vec3<u32>(24050u, _wgslsmith_add_u32(u_input.c.x, 43073u), ~_wgslsmith_dot_vec3_u32(arg_0.c.ywy, vec3<u32>(arg_2.c.x, arg_0.d, 34528u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.b))), firstLeadingBit(arg_0.c), (select(~global3.x, ~arg_2.c.x, !global0.x) ^ 75826u) & _wgslsmith_dot_vec2_u32(select(vec2<u32>(global3.x, 74623u), vec2<u32>(58802u, 51216u), global0.xz) | _wgslsmith_sub_vec2_u32(u_input.c.zz, u_input.c.zy), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 1u), arg_2.c.xy)), vec4<i32>(-1i, ~(-2147483647i), _wgslsmith_dot_vec4_i32(-arg_2.e, vec4<i32>(arg_2.e.x >> (54982u % 32u), 36134i << (arg_2.c.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.e.x, arg_2.a.x), arg_2.a.xy), 32258i)), min(-u_input.d | 1i, u_input.d)));
    var var_1 = _wgslsmith_f_op_f32(192f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-261f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_2.b.x)), var_0.b.x)));
    var var_2 = Struct_1(max(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.d, arg_0.e.x), var_0.e.zwz), (var_0.a ^ arg_0.e.wzz) << (firstLeadingBit(vec3<u32>(u_input.c.x, 4294967295u, arg_2.c.x)) % vec3<u32>(32u))) >> (max(var_0.c.zxz, ~vec3<u32>(var_0.d, arg_2.d, arg_0.d)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 312f) + vec2<f32>(arg_2.b.x, arg_0.b.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-463f, -3029f)), _wgslsmith_f_op_f32(f32(-1f) * -1731f))), var_0.c, var_0.c.x, vec4<i32>(-2147483647i, 23599i, -((i32(-1i) * -2147483647i) & -arg_2.e.x), abs(arg_0.a.x) | 51864i));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_f32(arg_1.x * -937f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_0.b.x) + arg_2.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2151f * -1108f), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x)) - vec3<f32>(-336f, -2548f, arg_0.b.x)))));
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -303f), !global1[_wgslsmith_index_u32(5986u, 30u)])))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(var_3.x - -2602f), _wgslsmith_f_op_f32(-var_0.b.x)))) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1259f, 1471f), _wgslsmith_f_op_f32(f32(-1f) * -1341f))))), -141f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1101f)) + _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-337f * 177f)))));
}

fn func_4(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = global2[_wgslsmith_index_u32(23415u, 11u)];
    return !global0.yx;
}

fn func_2() -> bool {
    let var_0 = any(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<i32>(-28236i, -1i, 0i), vec2<f32>(733f, -128f), u_input.c, u_input.a, vec4<i32>(u_input.d, u_input.d, u_input.d, 0i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -464f, -1302f)), Struct_1(vec3<i32>(u_input.d, 0i, u_input.d), vec2<f32>(1200f, 357f), vec4<u32>(0u, 1u, global3.x, 1u), 4294967295u, vec4<i32>(0i, u_input.d, -50i, -2147483647i)))))));
    global3 = ~(vec3<u32>(~_wgslsmith_mod_u32(45210u, 4294967295u), u_input.a, _wgslsmith_div_u32(global3.x ^ global3.x, 95251u)) << (~vec3<u32>(4294967295u, 11274u, ~u_input.c.x) % vec3<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.d, u_input.d, 1i), ~vec3<i32>(30063i, 41561i, 1i)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-32282i, 1i, -8133i) | vec3<i32>(44912i, 23527i, u_input.d), vec3<i32>(u_input.d, 4278i, -1i) ^ vec3<i32>(u_input.d, u_input.d, -19456i)), ~vec3<i32>(u_input.d, u_input.d, u_input.d)), -(~(~vec3<i32>(u_input.d, 1790i, 2147483647i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec3_f32(func_3(global2[_wgslsmith_index_u32(4294967295u, 11u)], vec3<f32>(-109f, -617f, -982f), Struct_1(vec3<i32>(12386i, u_input.d, -3201i), vec2<f32>(-405f, 1000f), vec4<u32>(4294967295u, u_input.a, 0u, 1u), 9144u, vec4<i32>(u_input.d, -10592i, u_input.d, 1i)))).yz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(622f, 319f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 214f)))))), u_input.c, abs(0u | global3.x), ~(-(~abs(vec4<i32>(u_input.d, u_input.d, 2147483647i, -2147483647i)))));
    let var_2 = vec2<bool>(!(!global1[_wgslsmith_index_u32(24066u, 30u)]), any(vec3<bool>(any(vec2<bool>(true, true)), false, true)));
    let var_3 = _wgslsmith_dot_vec4_i32(-var_1.e, select(vec4<i32>(var_1.a.x, 1i, _wgslsmith_sub_i32(u_input.d, -2147483647i), -3650i), max(-var_1.e, vec4<i32>(2147483647i, -1i, u_input.d, 2147483647i)), select(vec4<bool>(false, var_2.x, false, true), vec4<bool>(false, true, global0.x, true), select(vec4<bool>(global1[_wgslsmith_index_u32(global3.x, 30u)], false, false, var_0), vec4<bool>(true, true, false, false), false))) << (select(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(12122u, 4294967295u, 1u, global3.x) & vec4<u32>(global3.x, global3.x, global3.x, u_input.c.x)), (vec4<u32>(1u, 24945u, 1u, u_input.a) << (var_1.c % vec4<u32>(32u))) >> (abs(vec4<u32>(u_input.a, 3117u, 0u, 26068u)) % vec4<u32>(32u)), true) % vec4<u32>(32u)));
    return ~((~u_input.d & ~54215i) ^ var_1.e.x) < ((_wgslsmith_mod_i32(-39117i, max(u_input.d, var_1.e.x)) ^ 21715i) >> (1u % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> u32 {
    global2 = array<Struct_1, 11>();
    global0 = !(!vec3<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(42903u, 30u)], false, true, arg_3)), all(func_4(vec3<f32>(-699f, arg_1, arg_0.b.x))), max(110629u, arg_0.d) > 4294967295u));
    global1 = array<bool, 30>();
    global2 = array<Struct_1, 11>();
    global0 = select(select(vec3<bool>(arg_0.a.x > -u_input.d, any(!vec4<bool>(global1[_wgslsmith_index_u32(32845u, 30u)], global0.x, false, arg_3)), global1[_wgslsmith_index_u32(abs(reverseBits(u_input.a)), 30u)]), select(vec3<bool>(func_2(), true, all(vec3<bool>(global1[_wgslsmith_index_u32(9994u, 30u)], false, global0.x))), !vec3<bool>(arg_3, false, global1[_wgslsmith_index_u32(global3.x, 30u)]), select(select(vec3<bool>(false, false, true), vec3<bool>(false, arg_3, false), vec3<bool>(false, arg_3, arg_3)), select(vec3<bool>(arg_3, global0.x, false), vec3<bool>(global1[_wgslsmith_index_u32(global3.x, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], true), global1[_wgslsmith_index_u32(1u, 30u)]), u_input.d == u_input.d)), arg_3), !select(select(select(vec3<bool>(false, arg_3, false), vec3<bool>(arg_3, true, arg_3), true), vec3<bool>(false, false, true), !vec3<bool>(false, false, global0.x)), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], false, arg_3), !vec3<bool>(false, true, global0.x), select(vec3<bool>(global1[_wgslsmith_index_u32(58070u, 30u)], true, global1[_wgslsmith_index_u32(749u, 30u)]), vec3<bool>(global0.x, true, global1[_wgslsmith_index_u32(arg_0.c.x, 30u)]), vec3<bool>(arg_3, arg_3, true))), ~u_input.c.x < _wgslsmith_add_u32(arg_2.d, 39427u)), true);
    return ~arg_0.d;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    return _wgslsmith_clamp_u32(countOneBits(abs(func_5(Struct_1(arg_1.e.yzy, arg_2.wy, arg_1.c, 4294967295u, vec4<i32>(2147483647i, arg_1.e.x, arg_1.a.x, u_input.d)), arg_2.x, arg_1, func_2()))), global3.x, ~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 30>();
    global2 = array<Struct_1, 11>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(6543u, global3.x) >> ((~0u & _wgslsmith_mod_u32(u_input.b, u_input.b)) % 32u), 11u)];
    var var_1 = true;
    global0 = vec3<bool>(true, !any(select(!vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.c.x, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.d, 30u)], false), !vec3<bool>(false, true, global1[_wgslsmith_index_u32(86340u, 30u)]))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1(select(global0.yy, !global0.zy, global0.yy), Struct_1(var_0.e.xyw, _wgslsmith_f_op_vec2_f32(-var_0.b), var_0.c, _wgslsmith_mod_u32(74137u, u_input.b), reverseBits(vec4<i32>(1i, u_input.d, var_0.a.x, -5808i))), vec4<f32>(533f, -599f, var_0.b.x, _wgslsmith_div_f32(var_0.b.x, var_0.b.x))), firstTrailingBit(global3.x | 1u)), 30u)]);
    var var_2 = Struct_1(-max(vec3<i32>(~(-2147483647i), var_0.e.x, -u_input.d), var_0.e.zww), var_0.b, var_0.c, ~firstTrailingBit(u_input.b), var_0.e);
    let var_3 = var_2.b.x;
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.b.x, var_0.b.x, 314f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_2.b.x, var_2.b.x)), vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1184f - -1037f), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1274f - var_2.b.x) + _wgslsmith_f_op_f32(-547f + 2781f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(1045f - var_2.b.x), -1000f, _wgslsmith_f_op_f32(-var_0.b.x)))))));
    var var_5 = !global1[_wgslsmith_index_u32(~var_2.c.x, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1430f, var_2.b.x, var_0.b.x, -516f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1485f, var_4.x, 557f, -446f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_4.x, var_0.b.x, -1000f) - vec4<f32>(150f, var_4.x, 115f, 1147f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1629f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1151f, 545f), _wgslsmith_f_op_f32(394f - var_2.b.x))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - var_2.b.x))));
}

