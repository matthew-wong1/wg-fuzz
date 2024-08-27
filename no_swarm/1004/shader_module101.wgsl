struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11>;

var<private> global1: array<bool, 16> = array<bool, 16>(true, false, true, true, true, true, true, true, true, false, false, true, false, false, true, false);

var<private> global2: Struct_4;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> vec4<i32> {
    global0 = array<vec4<f32>, 11>();
    global1 = array<bool, 16>();
    let var_0 = Struct_2(global2.c.b, arg_0.b, Struct_1(_wgslsmith_f_op_f32(1099f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.d.d), _wgslsmith_f_op_f32(f32(-1f) * -387f)))), _wgslsmith_f_op_f32(-arg_0.b.b), ~vec3<u32>(0u, arg_1.x, global2.c.c.x) | firstTrailingBit(~arg_0.b.c), arg_0.b.d, 2147483647i ^ u_input.a));
    let var_1 = u_input.b;
    global2 = Struct_4(!global2.a, any(select(!(!vec4<bool>(true, true, global2.b, false)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(34364u, 16u)], global1[_wgslsmith_index_u32(11425u, 16u)], false), select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(8071u, 16u)], global2.a.x), vec4<bool>(false, global2.b, false, global1[_wgslsmith_index_u32(4294967295u, 16u)]), true), true), false)), Struct_3(~(~_wgslsmith_add_u32(31063u, var_1.x)), var_0.a, arg_1.zy, global2.c.d, -_wgslsmith_mod_vec4_i32(vec4<i32>(global2.c.d.e, 1i, arg_0.e.x, -2559i), arg_0.e) ^ ~(arg_0.e << (vec4<u32>(u_input.b.x, 5366u, arg_1.x, 122409u) % vec4<u32>(32u)))));
    return _wgslsmith_div_vec4_i32(arg_0.e, ~_wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(arg_0.e, global2.c.e, arg_0.e)), arg_0.e));
}

fn func_2(arg_0: vec4<bool>) -> vec2<i32> {
    let var_0 = global2.c;
    let var_1 = ~(u_input.b.x >> (_wgslsmith_div_u32(~25436u, firstLeadingBit(~var_0.d.c.x)) % 32u));
    let var_2 = _wgslsmith_sub_vec4_i32(func_3(Struct_3(_wgslsmith_clamp_u32(~var_0.b.c.x, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 33635u, 104446u, 1u), u_input.b)), Struct_1(_wgslsmith_f_op_f32(var_0.d.a - -1389f), global2.c.b.d, _wgslsmith_mod_vec3_u32(vec3<u32>(global2.c.b.c.x, 4294967295u, 4294967295u), vec3<u32>(var_1, var_0.c.x, var_0.a)), _wgslsmith_div_f32(global2.c.d.a, var_0.b.d), ~var_0.b.e), vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.d.c.xx, u_input.b.yz), _wgslsmith_add_u32(4640u, 0u)), Struct_1(-1000f, _wgslsmith_f_op_f32(-global2.c.d.b), global2.c.d.c << (u_input.b.yzz % vec3<u32>(32u)), -1799f, -1i), -global2.c.e | select(var_0.e, var_0.e, false)), min(vec3<u32>(0u, 4294967295u, _wgslsmith_mod_u32(1013u, 60634u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_1, u_input.b.x, 4294967295u), var_0.d.c))), firstTrailingBit(~(-_wgslsmith_clamp_vec4_i32(global2.c.e, vec4<i32>(-2147483647i, 21038i, -44954i, 2147483647i), global2.c.e))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.c.d.b, 213f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d.d - _wgslsmith_f_op_f32(-var_0.d.b)), _wgslsmith_f_op_f32(-var_0.d.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-399f * -1114f))))))), reverseBits(_wgslsmith_div_vec3_u32(abs(~vec3<u32>(global2.c.c.x, 9507u, 35964u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, var_0.a, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(39800u, 4294967295u, u_input.b.x), global2.c.d.c)))), -409f, -countOneBits(-4154i));
    var var_4 = var_0.d;
    return var_2.wx;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = select(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(7711u, 16u)], global1[_wgslsmith_index_u32(2722u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], true), select(vec4<bool>(global2.b, global2.a.x, global2.a.x, false), vec4<bool>(true, false, true, false), true), global1[_wgslsmith_index_u32(u_input.b.x, 16u)] || global2.b), vec4<bool>(global2.b, true, !global1[_wgslsmith_index_u32(global2.c.d.c.x, 16u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.x, 4294967295u), 16u)]), select(select(vec4<bool>(global2.b, global2.a.x, global2.a.x, false), vec4<bool>(global2.b, false, false, global2.b), false), select(vec4<bool>(false, global1[_wgslsmith_index_u32(750u, 16u)], global2.b, global1[_wgslsmith_index_u32(11996u, 16u)]), vec4<bool>(global2.b, false, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global2.a.x), vec4<bool>(global2.b, false, global2.a.x, true)), global2.a.x)), !select(select(vec4<bool>(true, global2.b, false, true), !vec4<bool>(global2.a.x, global1[_wgslsmith_index_u32(arg_2.x, 16u)], false, global1[_wgslsmith_index_u32(global2.c.d.c.x, 16u)]), global2.b | false), select(vec4<bool>(global2.a.x, global1[_wgslsmith_index_u32(4294967295u, 16u)], global2.a.x, true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(81817u, 16u)], true, global2.a.x), vec4<bool>(global2.b, false, global2.a.x, global1[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(global2.a.x, global2.b, global2.a.x, false)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 16u)], global2.b, global2.a.x), vec4<bool>(false, true, global2.b, true), global1[_wgslsmith_index_u32(u_input.b.x, 16u)])), true), select(!select(!vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 16u)], false, true), vec4<bool>(false, false, false, global2.b), !global1[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(true, false & select(true, false, global1[_wgslsmith_index_u32(11955u, 16u)]), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b.xyx, global2.c.d.c)), 16u)], true), (false & !global2.b) & any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], false))));
    let var_1 = global2.c.e.zxw;
    let var_2 = global2.c.d.e;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.d.b)), global2.c.d.a));
    return global2.c;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32) -> Struct_1 {
    global0 = array<vec4<f32>, 11>();
    global0 = array<vec4<f32>, 11>();
    let var_0 = 45842i;
    global1 = array<bool, 16>();
    global2 = Struct_4(!(!(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(global2.c.c.x, 16u)], true)))), false, func_4(arg_0.d.e, _wgslsmith_dot_vec2_i32(func_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], true, false, global2.a.x)), arg_0.e.wy), ~vec4<u32>(global2.c.a, 1u, _wgslsmith_mult_u32(u_input.b.x, arg_0.b.c.x), _wgslsmith_sub_u32(4294967295u, 4294967295u))));
    return Struct_1(-508f, _wgslsmith_f_op_f32(-1506f - 828f), global2.c.d.c, arg_2, _wgslsmith_mult_i32(func_2(!select(vec4<bool>(global2.a.x, global2.a.x, true, false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 16u)], true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(global2.c.d.c.x, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], global2.b, global1[_wgslsmith_index_u32(36923u, 16u)]))).x, min(-1i, select(func_3(Struct_3(1u, arg_0.d, vec2<u32>(u_input.b.x, arg_0.d.c.x), arg_0.d, arg_0.e), vec3<u32>(4294967295u, arg_1.x, 1u)).x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, u_input.a, var_0), global2.c.e), u_input.b.x >= arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.c;
    let var_1 = Struct_3(1u, func_1(global2.c, ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, global2.c.b.c.x), vec2<u32>(u_input.b.x, global2.c.b.c.x) << (vec2<u32>(1u, var_0.c.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.c.b.a)))), global2.c.c << (~(~u_input.b.ww) % vec2<u32>(32u)), Struct_1(global2.c.b.b, 1226f, u_input.b.yzx, global2.c.d.a, ~13593i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a, 1i, _wgslsmith_div_i32(-54150i, u_input.a)), firstTrailingBit(-var_0.e)) | firstTrailingBit(-var_0.e));
    let var_2 = vec3<i32>(var_1.d.e, 1i, firstLeadingBit(select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global2.c.b.e, global2.c.e.x), vec3<i32>(-6502i, 2147483647i, global2.c.e.x)), _wgslsmith_div_i32(1i ^ u_input.a, var_1.d.e), all(!global2.a.yy))));
    var_0 = global2.c;
    let var_3 = 0u;
    var_0 = func_4(_wgslsmith_mod_i32(var_2.x ^ -var_0.b.e, var_2.x), global2.c.b.e, countOneBits(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, u_input.a, ~vec3<u32>(~func_1(global2.c, vec2<u32>(var_3, 0u), var_1.b.b).c.x, var_0.d.c.x, global2.c.d.c.x));
}

