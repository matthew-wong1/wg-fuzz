struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: vec4<i32> = vec4<i32>(-49667i, i32(-2147483648), 14167i, -9916i);

var<private> global2: vec2<u32> = vec2<u32>(53957u, 1u);

var<private> global3: vec4<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = !((_wgslsmith_div_i32(global1.x, global1.x) != global1.x) | false);
    global3 = vec4<i32>(firstTrailingBit(countOneBits(global3.x)), ~(-1i), 2147483647i, ~firstTrailingBit(global3.x));
    var var_1 = Struct_2(_wgslsmith_div_u32(global2.x, u_input.a.x) << (countOneBits(select(_wgslsmith_div_u32(global2.x, global2.x), _wgslsmith_div_u32(91223u, 4294967295u), true)) % 32u), -26755i, true & !any(vec3<bool>(true, true, true)));
    var var_2 = Struct_2(var_1.a, 12834i, !select(any(vec2<bool>(var_0, true)), any(!vec4<bool>(false, false, var_1.c, var_0)), true));
    var var_3 = Struct_1(u_input.a.xz, _wgslsmith_f_op_f32(f32(-1f) * -309f));
    return true;
}

fn func_2() -> f32 {
    global3 = ~countOneBits(max(~vec4<i32>(global3.x, global3.x, global3.x, 0i), countOneBits(vec4<i32>(0i, 0i, -36116i, global1.x)))) & vec4<i32>(~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 0i), global1.yw)), _wgslsmith_div_i32(_wgslsmith_div_i32(global1.x, global1.x), ~9663i), 2886i, global1.x);
    let var_0 = vec4<bool>(false, !(-select(global1.x, 66974i, false) < _wgslsmith_sub_i32(global1.x, ~2147483647i)), true & (_wgslsmith_div_i32(max(1i, -10633i), max(global1.x, 1i)) > -1i), any(vec2<bool>(func_3(), true)));
    var var_1 = vec2<u32>(67953u, global2.x);
    var var_2 = !var_0.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1488f)))))))), _wgslsmith_f_op_f32(floor(677f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = vec3<bool>(!all(select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, arg_2, arg_2)), vec3<bool>(true, true, true), arg_2)), arg_2, select(any(select(!vec3<bool>(arg_2, true, arg_2), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), !(global2.x >= 1u), !all(vec4<bool>(false, false, true, true)) != !(!arg_2)));
    var var_1 = ~vec4<u32>(~firstLeadingBit(102881u) & select(_wgslsmith_clamp_u32(58740u, 0u, 7239u), _wgslsmith_add_u32(1u, global2.x), true), u_input.a.x, ~countOneBits(1u), 4294967295u);
    var var_2 = arg_0;
    var var_3 = 770f;
    var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.zxw, u_input.a), var_2.a.x, arg_3, _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(arg_3, arg_3)), var_2.a));
    return Struct_1(vec2<u32>(var_2.a.x, 20992u), var_2.b);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    let var_0 = countOneBits(20376u);
    global3 = abs(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, global3.x, arg_0.b) >> (vec4<u32>(u_input.a.x, global2.x, 20258u, global2.x) % vec4<u32>(32u)), abs(vec4<i32>(-2147483647i, global1.x, global1.x, 6299i))), arg_0.b, ~arg_0.b, max(_wgslsmith_mod_i32(-2147483647i, global3.x), global1.x << (25175u % 32u))));
    var var_1 = Struct_1(u_input.a.yy, _wgslsmith_f_op_f32(round(1000f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1717f, _wgslsmith_div_f32(-207f, 263f), true))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - var_1.b) * var_1.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_2, 228f)))))));
    var var_3 = func_4(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(abs(global2.x), firstLeadingBit(1u)), vec2<u32>(~4294967295u, var_1.a.x & var_1.a.x)), _wgslsmith_f_op_f32(min(-814f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(sign(arg_2)))))), _wgslsmith_clamp_vec3_i32(~abs(-vec3<i32>(21953i, -21391i, 28702i)), vec3<i32>(global3.x, _wgslsmith_mod_i32(arg_0.b, global3.x), firstLeadingBit(0i ^ global1.x)), firstTrailingBit(global1.xxx)), true, arg_0.a);
    return 1000f;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = ~(~(~(~(-2147483647i))) >> ((_wgslsmith_mod_u32(u_input.a.x >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, u_input.a.x, 23237u, 2097u), vec4<u32>(global2.x, 20343u, global2.x, 22088u))) << (_wgslsmith_div_u32(13037u, global2.x) % 32u)) % 32u));
    global1 = select(~vec4<i32>(countOneBits(_wgslsmith_mult_i32(global1.x, var_0)), var_0, global1.x, var_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(select(~global3.x, -2147483647i, true), i32(-1i) * -45711i, _wgslsmith_mult_i32(_wgslsmith_div_i32(var_0, global1.x), countOneBits(global3.x)), -6352i), vec4<i32>(1i, var_0, _wgslsmith_add_i32(710i, 20988i) >> (_wgslsmith_mult_u32(4294967295u, 0u) % 32u), reverseBits(global1.x)), abs(select(_wgslsmith_div_vec4_i32(vec4<i32>(20807i, var_0, global1.x, global3.x), vec4<i32>(0i, -20928i, 2147483647i, -1i)), -vec4<i32>(var_0, 29929i, global3.x, -1i), true))), vec4<bool>(!select(true, global2.x != global2.x, true), !any(vec3<bool>(false, true, true)), select(_wgslsmith_f_op_f32(arg_1 * -945f) > _wgslsmith_f_op_f32(1000f * -1052f), false, true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))));
    var var_1 = Struct_2(4294967295u, 0i, !(!(0u != countOneBits(global2.x))));
    let var_2 = func_4(Struct_1(_wgslsmith_add_vec2_u32(~u_input.a.yy, reverseBits(firstLeadingBit(u_input.a.xy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1213f - arg_0)))), vec3<i32>(15440i, -select(global3.x, ~81776i, any(vec4<bool>(var_1.c, var_1.c, false, var_1.c))), ~29557i), false, ~(_wgslsmith_mod_u32(u_input.a.x, ~1u) | abs(_wgslsmith_mod_u32(u_input.a.x, global2.x))));
    let var_3 = !select(select(vec4<bool>(var_1.c, 571f > arg_1, true, true), !select(vec4<bool>(var_1.c, true, true, true), vec4<bool>(false, var_1.c, false, false), vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c)), true), !(!vec4<bool>(true, false, var_1.c, false)), !vec4<bool>(false, func_3(), false, var_1.c));
    return Struct_2(~_wgslsmith_dot_vec2_u32(u_input.a.zz & var_2.a, vec2<u32>(1u, u_input.a.x)), var_1.b, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(875f, -252f) - -660f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2176f + _wgslsmith_f_op_f32(func_1(Struct_2(global2.x, global1.x, true), vec3<bool>(true, false, false), 538f))))), 1f);
    global3 = ~(-abs(vec4<i32>(global1.x, 0i, 0i, global3.x))) ^ vec4<i32>(var_0.b, global3.x, i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global3.x, var_0.b), ~var_0.b, global3.x, _wgslsmith_mod_i32(var_0.b, global3.x)), ~_wgslsmith_div_vec4_i32(vec4<i32>(-51052i, 9828i, 28924i, -2147483647i), vec4<i32>(1i, -2147483647i, var_0.b, global3.x))));
    var var_1 = all(vec2<bool>(true, var_0.c));
    let var_2 = vec2<u32>(reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a, global2.x, global2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(16522u, u_input.a.x, 12487u, var_0.a), vec4<u32>(38167u, u_input.a.x, 56797u, var_0.a))), 0u)), 4294967295u);
    let var_3 = Struct_1(vec2<u32>(var_2.x << (abs(~1u) % 32u), abs(reverseBits(151844u))), _wgslsmith_f_op_f32(-1254f - _wgslsmith_f_op_f32(f32(-1f) * -385f)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.xyz, vec4<i32>(~(~_wgslsmith_div_i32(global3.x, global3.x)), abs(reverseBits(min(global1.x, global3.x))), 15815i, global1.x ^ var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(f32(-1f) * -949f), -803f), vec3<f32>(_wgslsmith_f_op_f32(-var_3.b), 1115f, _wgslsmith_f_op_f32(abs(var_3.b)))))), min(select(-global1.zwy, -_wgslsmith_div_vec3_i32(global3.zyz, vec3<i32>(global1.x, 0i, 0i)), var_0.c), global1.zwx), var_3.a.x);
}

