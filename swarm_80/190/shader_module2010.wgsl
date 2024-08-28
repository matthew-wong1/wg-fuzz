struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-7339i, -1i, 68126i, 94236i, 1i, 1i, 0i, -13342i, 4485i, 38364i, 2147483647i, 93942i, 2147483647i, -552i, -45916i, 9547i, -50779i, 1i, 13807i, 11953i, 0i, -29332i, 0i);

var<private> global1: vec2<bool>;

var<private> global2: Struct_2 = Struct_2(vec2<f32>(-122f, -1182f), vec2<bool>(true, true), vec3<u32>(0u, 50826u, 349u), Struct_1(vec2<f32>(2139f, -1000f), vec2<u32>(56549u, 1u)), vec3<bool>(true, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(403f))), _wgslsmith_f_op_f32(step(2472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * _wgslsmith_f_op_f32(trunc(146f)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a.x, -254f, 473f)))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(1591f, 717f)), _wgslsmith_f_op_f32(arg_1.a.x - arg_1.d.a.x), -1000f))))));
    global1 = vec2<bool>(true, true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-207f, _wgslsmith_f_op_f32(trunc(global2.a.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(global2.a, global2.a, arg_1.b.x)))), !vec2<bool>(global2.b.x, global2.e.x))) + _wgslsmith_f_op_vec2_f32(trunc(var_0.yy))), ~arg_2.zx);
    global1 = !select(vec2<bool>(global2.e.x, true), global2.e.yx, _wgslsmith_mod_i32(-28945i, u_input.b.x) == u_input.c);
    var var_2 = firstLeadingBit(vec3<i32>(2147483647i, ~(~0i), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(1u, 23u)], -7923i)));
    return all(select(!select(vec3<bool>(true, false, arg_0), select(arg_1.e, vec3<bool>(global2.e.x, false, false), arg_1.b.x), !vec3<bool>(true, false, global2.e.x)), select(!select(vec3<bool>(arg_1.e.x, false, false), arg_1.e, global1.x), global2.e, !(!vec3<bool>(global1.x, true, global2.b.x))), vec3<bool>(false, arg_0, arg_0)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = ~select(_wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(0i, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.c, -1i, u_input.c) | vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 23u)], -1i)), u_input.b.x, false);
    let var_1 = vec3<f32>(global2.d.a.x, 1296f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1187f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.d.a.x - global2.a.x))))) + global2.a.x));
    global1 = select(!select(select(select(global2.b, global2.b, vec2<bool>(false, global2.e.x)), select(global2.b, global2.b, false), select(vec2<bool>(true, global2.b.x), vec2<bool>(true, false), global2.b.x)), vec2<bool>(true, true), global2.e.x), !(!global2.e.xx), var_1.x >= -1836f);
    let var_2 = arg_0;
    var_0 = global0[_wgslsmith_index_u32(~0u, 23u)];
    return Struct_2(var_1.zx, select(select(global2.e.yz, vec2<bool>(true, global2.b.x), false), !global2.b, !func_3(false, Struct_2(global2.d.a, vec2<bool>(true, global2.e.x), global2.c, global2.d, vec3<bool>(true, false, true)), ~vec3<u32>(var_2, var_2, global2.d.b.x))), vec3<u32>(~_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(4294967295u, global2.c.x)), 1u, ~arg_0), Struct_1(var_1.xz, _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(1u, 72553u)) >> (max(vec2<u32>(4294967295u, arg_0), vec2<u32>(8414u, 18883u)) % vec2<u32>(32u)), ~abs(global2.d.b))), vec3<bool>(global1.x, true, true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = all(select(vec4<bool>(true, !(!global1.x), global1.x, func_2(4294967295u).e.x || !global2.e.x), select(vec4<bool>(global1.x, true, arg_0.e.x, arg_0.e.x), select(select(vec4<bool>(global1.x, arg_0.e.x, true, arg_0.b.x), vec4<bool>(arg_0.e.x, true, true, true), global1.x), select(vec4<bool>(global1.x, false, arg_0.e.x, true), vec4<bool>(false, arg_0.b.x, global1.x, false), false), !vec4<bool>(true, global2.e.x, true, arg_0.e.x)), any(!vec4<bool>(global1.x, false, true, global2.e.x))), !select(select(vec4<bool>(true, global1.x, global2.e.x, false), vec4<bool>(true, arg_0.b.x, false, global2.e.x), vec4<bool>(true, false, false, global1.x)), vec4<bool>(global1.x, global1.x, global1.x, arg_0.b.x), !vec4<bool>(false, false, true, arg_0.e.x))));
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec2_i32(max(select(u_input.b, countOneBits(vec2<i32>(u_input.c, arg_2)), global1.x), vec2<i32>(_wgslsmith_add_i32(1i, 72766i), 1i)), countOneBits(~(u_input.b >> (arg_1.b % vec2<u32>(32u))))));
    global1 = vec2<bool>(true, arg_0.e.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d.a * vec2<f32>(global2.d.a.x, _wgslsmith_f_op_f32(-1f))));
    let var_3 = func_2(abs(arg_1.b.x));
    return 587f;
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<bool> {
    global0 = array<i32, 23>();
    let var_0 = arg_1;
    global1 = select(vec2<bool>(!global1.x, true), !global2.e.xz, _wgslsmith_f_op_f32(func_4(func_2(68034u), Struct_1(_wgslsmith_f_op_vec2_f32(step(global2.a, vec2<f32>(-1250f, 2599f))), ~global2.d.b), _wgslsmith_sub_i32(-global0[_wgslsmith_index_u32(40580u, 23u)], ~6243i))) < arg_1);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(827f * global2.a.x))), _wgslsmith_f_op_f32(global2.a.x + global2.a.x)), vec2<u32>(57278u, _wgslsmith_mod_u32(45940u, u_input.d)));
    var var_2 = func_2(u_input.a.x >> (_wgslsmith_dot_vec3_u32(func_2(var_1.b.x).c, ~vec3<u32>(1u, 12605u, var_1.b.x) & ~vec3<u32>(1u, var_1.b.x, global2.d.b.x)) % 32u)).d;
    return select(select(select(global2.e, vec3<bool>(!global1.x, global1.x, global1.x), true), global2.e, var_0 <= _wgslsmith_f_op_f32(min(-123f, _wgslsmith_f_op_f32(ceil(506f))))), global2.e, u_input.a.x > (select(10910u, ~global2.d.b.x, false) << (u_input.d % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c;
    var var_1 = !(!select(!select(vec3<bool>(global1.x, true, false), global2.e, vec3<bool>(global2.b.x, global1.x, global2.b.x)), func_1(_wgslsmith_f_op_f32(258f - 1000f), _wgslsmith_f_op_f32(-global2.a.x)), !(!vec3<bool>(global1.x, false, global1.x))));
    var var_2 = func_2(u_input.d);
    var var_3 = Struct_2(global2.d.a, func_2(_wgslsmith_div_u32(0u, var_2.d.b.x)).b, global2.c, global2.d, !vec3<bool>(true, false, u_input.c > u_input.c));
    global0 = array<i32, 23>();
    global2 = func_2(42925u | var_3.d.b.x);
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.d.a), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.a.x)), 469f), var_3.a), select(!vec2<bool>(global1.x, true), vec2<bool>(false && var_2.b.x, var_1.x && true), vec2<bool>(false, true)))), global2.e.zy, ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(var_3.c.x, u_input.d, 13271u)), countOneBits(vec3<u32>(43230u, 56276u, u_input.d))), min(var_2.c, vec3<u32>(var_0.x, var_2.c.x, var_3.d.b.x) | var_3.c)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.a.x, var_3.a.x) * vec2<f32>(1f, 1f)), vec2<u32>(u_input.a.x, max(var_0.x, u_input.d) | ~38213u)), select(!vec3<bool>(false, true, any(vec2<bool>(global2.b.x, true))), var_2.e, vec3<bool>(true, all(select(vec4<bool>(global2.e.x, global2.e.x, global1.x, var_1.x), vec4<bool>(global2.b.x, global1.x, true, false), global1.x)), true)));
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.d.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.a.x, 1157f)), var_2.d.a, global2.b.x)) - vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), 1672f)))), select(vec2<bool>(true, true), !vec2<bool>(false, global2.b.x), !vec2<bool>(var_1.x, var_2.c.x < 13641u)), ~(~abs(vec3<u32>(global2.d.b.x, 4294967295u, u_input.a.x))), func_2(3215u).d, !vec3<bool>(select(true, var_2.e.x, func_2(19025u).e.x), true, global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -global0[_wgslsmith_index_u32(var_3.c.x, 23u)], global0[_wgslsmith_index_u32(global2.c.x, 23u)]) ^ -u_input.b, _wgslsmith_add_vec4_u32(~vec4<u32>(92447u, u_input.d >> (var_0.x % 32u), firstLeadingBit(56665u), 77845u), ~(~(~vec4<u32>(var_3.c.x, var_2.d.b.x, 36177u, 4294967295u)))), _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~var_2.c.yz), ~(~u_input.a)), 1u);
}

