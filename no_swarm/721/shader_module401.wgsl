struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<f32, 30> = array<f32, 30>(906f, -1994f, 268f, 1441f, 1107f, 2404f, -358f, -2804f, 1715f, -1865f, 123f, -1370f, 2498f, -190f, -735f, 923f, 219f, 375f, -328f, -1942f, 607f, -712f, 365f, 1788f, 670f, 645f, -1552f, -157f, -323f, -1377f);

var<private> global3: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec3<u32> {
    global0 = u_input.a & u_input.a;
    global3 = arg_1.b.b.x;
    var var_0 = _wgslsmith_f_op_f32(ceil(-786f));
    var_0 = 388f;
    var var_1 = true;
    return ~vec3<u32>(_wgslsmith_div_u32(~u_input.b.x, u_input.a), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(63710u, u_input.a, 4294967295u, 0u)), ~vec4<u32>(4294967295u, u_input.b.x, u_input.a, 4294967295u)), u_input.b.x);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-1498f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(437f, -121f)) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 30u)])))), _wgslsmith_f_op_vec2_f32(sign(arg_1.a)));
    global0 = _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 166u, u_input.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 25093u, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)))) ^ ~func_3(global1.b.x, Struct_2(vec2<f32>(-768f, global2[_wgslsmith_index_u32(4294967295u, 30u)]), arg_1.b, arg_1.c)), ~select(func_3(global1.b.x & arg_0, Struct_2(var_0, arg_1.b, arg_1.c)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, u_input.a, 0u), func_3(global1.b.x, arg_1)), false));
    let var_1 = Struct_1(_wgslsmith_div_f32(1126f, -649f), ~_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(-23962i, 1i, -31065i, -1i)), vec4<i32>(firstLeadingBit(18116i), firstTrailingBit(arg_0), _wgslsmith_sub_i32(arg_1.b.b.x, 0i), arg_1.b.b.x), ~(-arg_1.b.b)), global1.c, arg_1.c);
    var var_2 = _wgslsmith_f_op_f32(var_1.c * 1142f);
    var var_3 = arg_1;
    return u_input.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = true | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a)))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), -718f))));
    var_0 = (u_input.a ^ ~4294967295u) >= ((42852u & u_input.a) << ((4294967295u ^ func_2(-arg_1.b.x, arg_3)) % 32u));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~(max(vec3<u32>(u_input.b.x, 9274u, u_input.a), vec3<u32>(u_input.b.x, 0u, u_input.b.x)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 53139u, 4294967295u), vec3<u32>(49024u, u_input.b.x, 1u), vec3<u32>(1u, u_input.a, 4294967295u))), min(_wgslsmith_mod_vec3_u32(vec3<u32>(48781u, u_input.b.x, 63637u), ~vec3<u32>(u_input.a, u_input.a, 40502u)), vec3<u32>(50451u, ~87505u, u_input.b.x))), u_input.b.x, u_input.a);
    var var_2 = select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -725f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(3026f)) - _wgslsmith_f_op_f32(global1.a - arg_0.a)), any(!vec3<bool>(arg_3.c.x, false, false)), false, false), select(!(!(!vec4<bool>(arg_1.d.x, global1.d.x, true, arg_3.b.d.x))), vec4<bool>(24263i >= (global1.b.x & arg_2.x), any(vec4<bool>(arg_3.c.x, false, arg_1.d.x, false)), any(vec3<bool>(true, arg_3.c.x, true)), select(true, select(false, arg_1.d.x, global1.d.x), true)), !vec4<bool>(true, arg_1.d.x, any(vec3<bool>(false, arg_0.d.x, arg_0.d.x)), false && arg_3.c.x)), select(!vec4<bool>(arg_0.d.x, all(arg_0.d), true, arg_3.c.x), select(select(!vec4<bool>(false, false, global1.d.x, arg_3.c.x), select(vec4<bool>(arg_0.d.x, arg_3.c.x, arg_1.d.x, arg_0.d.x), vec4<bool>(arg_0.d.x, false, true, true), vec4<bool>(false, true, arg_0.d.x, false)), select(vec4<bool>(global1.d.x, false, false, global1.d.x), vec4<bool>(arg_3.b.d.x, true, arg_1.d.x, arg_0.d.x), global1.d.x)), !vec4<bool>(false, false, true, arg_3.c.x), !select(vec4<bool>(true, arg_1.d.x, false, true), vec4<bool>(global1.d.x, global1.d.x, global1.d.x, true), global1.d.x)), vec4<bool>(select(34693i, arg_1.b.x, true) > global1.b.x, global1.d.x, arg_0.d.x, false)));
    let var_3 = vec4<bool>(!any(select(var_2.yxz, select(var_2.wwy, vec3<bool>(false, var_2.x, arg_0.d.x), var_2.wwz), arg_0.d.x)), all(vec4<bool>(!all(vec2<bool>(global1.d.x, false)), any(arg_1.d) || true, _wgslsmith_f_op_f32(f32(-1f) * -1578f) > _wgslsmith_f_op_f32(max(arg_0.c, arg_3.a.x)), select(!global1.d.x, all(var_2.wyy), true))), arg_3.c.x, true);
    return reverseBits(min(~1i, firstTrailingBit(0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(global1.b, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, _wgslsmith_sub_i32(~u_input.c, global1.b.x << (1u % 32u)), u_input.c, _wgslsmith_add_i32(u_input.c, _wgslsmith_add_i32(-7137i, -19769i))), vec4<i32>(global1.b.x, global1.b.x, -u_input.c, _wgslsmith_sub_i32(u_input.c, global1.b.x) >> ((u_input.b.x | 38799u) % 32u))));
    var var_1 = vec4<f32>(-969f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.a, 30u)], 1610f, true)) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(44701u, 30u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c))), _wgslsmith_f_op_f32(min(-2198f, -1304f)));
    let var_2 = _wgslsmith_dot_vec3_i32(reverseBits(firstLeadingBit(vec3<i32>(21196i, u_input.c, 2147483647i) >> (vec3<u32>(9993u, 47614u, u_input.b.x) % vec3<u32>(32u))) << (min(vec3<u32>(0u, 0u, u_input.a), vec3<u32>(1u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))), vec3<i32>(u_input.c ^ 79669i, -(func_1(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 30u)], vec4<i32>(-24709i, -46906i, global1.b.x, global1.b.x), var_1.x, vec2<bool>(true, false)), Struct_1(-110f, vec4<i32>(15668i, 69795i, u_input.c, global1.b.x), global2[_wgslsmith_index_u32(u_input.a, 30u)], global1.d), vec4<i32>(global1.b.x, global1.b.x, global1.b.x, u_input.c), Struct_2(var_1.zw, Struct_1(global1.a, vec4<i32>(-1i, global1.b.x, 33867i, u_input.c), -2101f, vec2<bool>(global1.d.x, true)), vec2<bool>(global1.d.x, global1.d.x))) << (~109565u % 32u)), ~_wgslsmith_dot_vec3_i32(global1.b.yzx | vec3<i32>(2147483647i, global1.b.x, u_input.c), global1.b.zzz)));
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f + global2[_wgslsmith_index_u32(reverseBits(11361u), 30u)])) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a ^ u_input.a, 30u)] - 1f) * _wgslsmith_f_op_f32(select(-358f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 30u)] - -445f), false))), global1.d.x, any(vec3<bool>(true, true, true)));
    global2 = array<f32, 30>();
    let var_4 = !vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(12934u, 30u)]))) > _wgslsmith_div_f32(-1000f, var_1.x), false, !(all(vec3<bool>(global1.d.x, true, true)) & false), firstTrailingBit(4294967295u) >= _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_mod_u32(11239u, 39504u), 52277u));
    var var_5 = Struct_2(var_1.yz, Struct_1(_wgslsmith_f_op_f32(trunc(507f)), select(global1.b, min(max(vec4<i32>(global1.b.x, u_input.c, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, 15514i, -17983i, -4730i)), -global1.b), false), global2[_wgslsmith_index_u32(u_input.b.x, 30u)], select(vec2<bool>(false, any(var_4)), select(vec2<bool>(false, var_4.x), select(global1.d, var_4.xw, var_3.zy), true), vec2<bool>(var_3.x || true, !var_4.x))), select(!(!(!var_3.zz)), global1.d, ~u_input.b.x < 0u));
    global0 = u_input.a;
    var var_6 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.b.x);
}

