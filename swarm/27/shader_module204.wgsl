struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_4 = Struct_4(vec4<u32>(4294967295u, 0u, 1u, 57612u), Struct_3(Struct_1(false)), vec3<u32>(81200u, 37455u, 6092u), 0u);

var<private> global2: vec4<i32> = vec4<i32>(2936i, 1i, i32(-2147483648), i32(-2147483648));

var<private> global3: vec3<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global2 = vec4<i32>(global0.x, 1i, global0.x, global0.x);
    global1 = Struct_4(reverseBits(u_input.a >> (select(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, global1.d), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 44770u, 60606u, global1.d), u_input.a), -391f > global3.x) % vec4<u32>(32u))), global1.b, min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.c.x, 54631u, u_input.a.x), global1.c >> (vec3<u32>(global1.a.x, 65346u, 22413u) % vec3<u32>(32u)), vec3<u32>(global1.c.x, 1u, u_input.c.x)), ~u_input.a.zwz), 7902u);
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(trunc(338f)))), _wgslsmith_f_op_f32(abs(518f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(701f * global3.x), global3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-global3.x)), 1140f, global3.x) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x))))))), any(vec3<bool>(true, any(!vec3<bool>(arg_0.a, arg_0.a, false)), any(!vec4<bool>(true, true, true, global1.b.a.a))))));
    var var_0 = -_wgslsmith_div_i32(0i, -1i);
    global2 = min(-vec4<i32>(~12574i, u_input.b, _wgslsmith_dot_vec2_i32(-global0.zz, countOneBits(vec2<i32>(-32118i, 26350i))), _wgslsmith_div_i32(-1i, 55126i)), ~firstTrailingBit(vec4<i32>(firstTrailingBit(global0.x), countOneBits(u_input.b), u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 48319i, u_input.b, global0.x), vec4<i32>(1i, -24314i, u_input.b, u_input.b)))));
    return select(select(select(vec2<bool>(global1.b.a.a, u_input.a.x < global1.c.x), !(!vec2<bool>(arg_0.a, false)), select(vec2<bool>(true, true), vec2<bool>(arg_0.a, false), select(vec2<bool>(global1.b.a.a, false), vec2<bool>(global1.b.a.a, arg_0.a), vec2<bool>(global1.b.a.a, arg_0.a)))), !vec2<bool>(any(vec3<bool>(true, arg_0.a, true)), false), global1.b.a.a), !select(select(!vec2<bool>(false, arg_0.a), select(vec2<bool>(true, true), vec2<bool>(true, arg_0.a), true), global1.b.a.a && true), !select(vec2<bool>(global1.b.a.a, false), vec2<bool>(arg_0.a, true), true), !vec2<bool>(arg_0.a, arg_0.a)), global1.b.a.a);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>) -> Struct_2 {
    global0 = ~vec3<i32>(_wgslsmith_mod_i32(global0.x, ~_wgslsmith_sub_i32(2147483647i, u_input.b)), global0.x, ~(-60474i));
    global0 = ~vec3<i32>(25888i, i32(-1i) * -22240i, 24769i);
    global2 = _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(select(-1i, 2147483647i, global1.b.a.a), _wgslsmith_dot_vec2_i32(global0.yz, vec2<i32>(-41580i, u_input.b)), global2.x, -1206i), ~reverseBits(vec4<i32>(u_input.b, global2.x, -1i, 0i))), abs(vec4<i32>(~u_input.b, global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-38615i, -2147483647i, -4312i) << (u_input.a.xxy % vec3<u32>(32u)), ~vec3<i32>(-25230i, u_input.b, global2.x)), _wgslsmith_mult_i32(u_input.b, 12925i))));
    let var_0 = vec4<bool>(false, global1.b.a.a, false, arg_0.b.a.a);
    let var_1 = func_3(arg_0.b.a);
    return Struct_2(~(~(~vec4<i32>(20466i, 0i, 2147483647i, global0.x))) ^ (vec4<i32>(u_input.b, 0i, -1i, ~global0.x) ^ ((vec4<i32>(2147483647i, global2.x, global2.x, global0.x) | vec4<i32>(u_input.b, global2.x, 1i, -11896i)) & abs(vec4<i32>(-9991i, global2.x, global0.x, global2.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> vec2<i32> {
    let var_0 = abs(2147483647i ^ ~select(3956i, abs(2147483647i), all(vec4<bool>(global1.b.a.a, global1.b.a.a, false, true))));
    var var_1 = vec3<bool>(all(!select(vec3<bool>(global1.b.a.a, false, global1.b.a.a), vec3<bool>(global1.b.a.a, global1.b.a.a, true), select(vec3<bool>(true, global1.b.a.a, global1.b.a.a), vec3<bool>(global1.b.a.a, global1.b.a.a, true), vec3<bool>(global1.b.a.a, true, false)))), any(select(vec4<bool>(global1.b.a.a, true, global1.b.a.a, global1.b.a.a), !vec4<bool>(true, false, global1.b.a.a, global1.b.a.a), vec4<bool>(true, global1.b.a.a, true, global1.b.a.a))) & all(vec2<bool>(global1.b.a.a, u_input.c.x >= 62505u)), true);
    global1 = Struct_4(~(u_input.a ^ vec4<u32>(64273u, _wgslsmith_div_u32(10922u, 39890u), abs(global1.c.x), 0u)), global1.b, u_input.a.wxx, 4294967295u);
    let var_2 = true;
    global2 = arg_0.a;
    return vec2<i32>(_wgslsmith_div_i32(arg_0.a.x, -max(-u_input.b, _wgslsmith_add_i32(global0.x, 2147483647i))), _wgslsmith_add_i32(global2.x, reverseBits(-74725i)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = abs(8758u);
    var var_1 = !vec4<bool>(!global1.b.a.a, any(vec2<bool>(true, global1.b.a.a)), !(_wgslsmith_f_op_f32(f32(-1f) * -917f) == global3.x), global1.b.a.a);
    var_1 = select(vec4<bool>(!global1.b.a.a, var_1.x, var_1.x, false), vec4<bool>(all(!var_1.zw), !global1.b.a.a, 7998u <= (u_input.c.x >> (1u % 32u)), true), !vec4<bool>(global1.b.a.a, global1.b.a.a, all(select(vec2<bool>(false, global1.b.a.a), var_1.yy, global1.b.a.a)), global1.b.a.a));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1745f)));
    var var_3 = select(global1.b.a.a, false || !var_1.x, global1.b.a.a) && (select(var_2 == 517f, !all(vec4<bool>(global1.b.a.a, false, var_1.x, true)), all(!vec2<bool>(false, global1.b.a.a))) || any(var_1.zzz));
    return !select(select(vec3<bool>(true, any(var_1.yww), var_1.x & true), !(!var_1.yxz), var_1.wyz), var_1.yyy, global3.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f)));
}

fn func_1(arg_0: u32) -> Struct_4 {
    global0 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.b, -2147483647i), 0i, reverseBits(1i)), -((-vec3<i32>(56893i, u_input.b, 12133i) | vec3<i32>(global0.x, u_input.b, 19843i)) << (vec3<u32>(~116427u, 41733u, ~61298u) % vec3<u32>(32u))));
    var var_0 = select(func_5(vec3<i32>(0i, -31346i, -14429i), func_4(func_2(Struct_4(vec4<u32>(global1.d, 13285u, arg_0, 18402u), global1.b, global1.c, u_input.c.x), vec4<u32>(global1.a.x, 46110u, 14436u, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-168f, -808f))) ^ vec2<i32>(-1i, _wgslsmith_sub_i32(16748i, u_input.b)), 5405i, abs(global1.a.ww)), !vec3<bool>(func_3(global1.b.a).x, !(global1.b.a.a && true), true), all(vec4<bool>(false, global0.x < _wgslsmith_mod_i32(-46778i, -2147483647i), global1.b.a.a, global1.b.a.a)));
    var var_1 = Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(global0.x, global0.x, u_input.b)), u_input.b, global2.x, global0.x) | (vec4<i32>(global2.x, u_input.b, ~global0.x, 1i) ^ (reverseBits(vec4<i32>(u_input.b, global0.x, global2.x, 48833i)) << (~global1.a % vec4<u32>(32u)))));
    global0 = -_wgslsmith_mult_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, global0.x, var_1.a.x), var_1.a.xzw) ^ global2.wzy), select(-vec3<i32>(var_1.a.x, global2.x, 47614i), max(vec3<i32>(-2147483647i, u_input.b, -1i), global2.xwz), true) >> (vec3<u32>(global1.d, arg_0, _wgslsmith_mod_u32(u_input.c.x, global1.d)) % vec3<u32>(32u)));
    global0 = var_1.a.zwy;
    return Struct_4(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 39630u, global1.a.x, 33463u), ~u_input.a), abs(firstLeadingBit(vec4<u32>(u_input.c.x, global1.a.x, 19526u, arg_0)))), 1u, ~(15868u >> (1u % 32u)), 1u), Struct_3(Struct_1(false)), ~vec3<u32>(global1.d, ~_wgslsmith_mult_u32(6234u, arg_0), ~_wgslsmith_div_u32(0u, global1.d)), firstLeadingBit(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_sub_u32(~(~_wgslsmith_mult_u32(global1.a.x, global1.c.x)), ~max(6736u, global1.d << (u_input.c.x % 32u))));
    let var_0 = func_2(Struct_4(vec4<u32>(0u, _wgslsmith_div_u32(6146u << (global1.c.x % 32u), min(u_input.c.x, global1.c.x)), 1u, _wgslsmith_sub_u32(select(u_input.a.x, global1.d, true), select(u_input.a.x, 4294967295u, false))), func_1(52590u).b, reverseBits(vec3<u32>(0u, 0u, max(41787u, 42662u))), countOneBits(_wgslsmith_sub_u32(0u | u_input.c.x, reverseBits(u_input.c.x)))), firstLeadingBit(~global1.a));
    global1 = func_1(global1.a.x);
    let var_1 = ~1u;
    var var_2 = Struct_2(max(~vec4<i32>(_wgslsmith_sub_i32(u_input.b, global2.x), 53458i, countOneBits(2147483647i), -49129i), _wgslsmith_mod_vec4_i32(~(-vec4<i32>(global2.x, global0.x, 7604i, -10302i)), vec4<i32>(global0.x, reverseBits(global0.x), -12911i, i32(-1i) * -12817i))));
    var var_3 = select(select(select(!(!vec4<bool>(false, true, global1.b.a.a, false)), vec4<bool>(-7206i <= global2.x, any(vec4<bool>(false, global1.b.a.a, global1.b.a.a, false)), true, global1.b.a.a), vec4<bool>(true, func_5(global2.zxy, vec2<i32>(var_0.a.x, -75464i), global0.x, u_input.c).x, !global1.b.a.a, -1581f >= global3.x)), vec4<bool>(any(vec3<bool>(false, global1.b.a.a, global1.b.a.a)), min(0i, u_input.b) != (u_input.b >> (var_1 % 32u)), func_3(func_1(1u).b.a).x, false), global1.b.a.a), select(select(vec4<bool>(all(vec4<bool>(global1.b.a.a, global1.b.a.a, global1.b.a.a, global1.b.a.a)), var_1 <= u_input.a.x, true, 2147483647i != global0.x), !(!vec4<bool>(false, global1.b.a.a, global1.b.a.a, global1.b.a.a)), global1.b.a.a), !select(select(vec4<bool>(global1.b.a.a, global1.b.a.a, false, false), vec4<bool>(false, global1.b.a.a, global1.b.a.a, true), vec4<bool>(true, true, global1.b.a.a, global1.b.a.a)), select(vec4<bool>(false, global1.b.a.a, global1.b.a.a, false), vec4<bool>(global1.b.a.a, false, global1.b.a.a, global1.b.a.a), vec4<bool>(global1.b.a.a, global1.b.a.a, global1.b.a.a, global1.b.a.a)), true || global1.b.a.a), !(!vec4<bool>(false, false, false, global1.b.a.a))), global1.b.a.a);
    let var_4 = ~_wgslsmith_div_u32(~18323u, 52110u);
    var var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(232f - _wgslsmith_f_op_f32(-global3.x)) + _wgslsmith_f_op_f32(ceil(-460f))) + -1103f)));
    let var_6 = !any(vec2<bool>(all(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, var_3.x, global1.b.a.a, false), vec4<bool>(false, var_3.x, false, true), vec4<bool>(var_3.x, global1.b.a.a, false, global1.b.a.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * global3.x), vec3<i32>(firstLeadingBit(var_0.a.x ^ var_2.a.x), -30702i, -36652i));
}

