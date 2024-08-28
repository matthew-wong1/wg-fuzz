struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_4 = Struct_4(4294967295u);

var<private> global2: array<vec4<f32>, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = vec3<bool>(false, !all(vec3<bool>(true, all(vec2<bool>(true, true)), true)), all(!vec4<bool>(true, all(vec2<bool>(false, true)), true, true)));
    global0 = Struct_3(Struct_2(vec3<f32>(911f, _wgslsmith_f_op_f32(788f * _wgslsmith_f_op_f32(select(1000f, global0.c.c, var_0.x))), global0.b.x), global0.c.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -179f) * global0.a.c))), vec4<i32>(~(-global0.c.b.b.x), _wgslsmith_add_i32(-72480i, -50838i & global0.c.e.b.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.e.x, 1i), u_input.d.zx), -max(global0.e.b.x, 8381i)), Struct_1(global1.a, reverseBits(vec2<i32>(-3572i, 33080i)) << (u_input.c.zz % vec2<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.c))), _wgslsmith_f_op_f32(-global0.c.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f)), global0.d.a.x)), -532f, 1304f), Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global0.d.c, global0.a.c, -215f), global0.a.a), vec3<f32>(428f, global0.a.a.x, -182f), select(vec3<bool>(false, var_0.x, true), var_0, true))))), global0.d.b, -478f, vec4<i32>(-18986i, global0.a.e.b.x, -61801i, -(global0.a.b.b.x & u_input.d.x)), global0.a.e), global0.c, global0.a.e);
    var var_1 = vec2<bool>(var_0.x, true);
    var_1 = var_0.xz;
    return _wgslsmith_f_op_f32(sign(-840f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.c))) * global0.c.c);
}

fn func_2(arg_0: vec4<f32>) -> Struct_5 {
    let var_0 = global1.a;
    var var_1 = !vec4<bool>(true, !func_3(), ((u_input.a == 4294967295u) & true) || false, _wgslsmith_f_op_f32(-global0.d.a.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2265f + global0.c.a.x)));
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~(~(~vec4<u32>(22933u, 33537u, global1.a, 14718u))), vec4<u32>((18072u | global1.a) << (_wgslsmith_dot_vec2_u32(vec2<u32>(31387u, 0u), vec2<u32>(1u, 1u)) % 32u), _wgslsmith_sub_u32(u_input.a, global0.e.a) << (countOneBits(4449u) % 32u), 67310u, global1.a)), ~vec4<u32>(global0.d.b.a, 4294967295u << (_wgslsmith_div_u32(16568u, global0.a.b.a) % 32u), select(~26071u, global0.d.b.a, false && var_1.x), _wgslsmith_clamp_u32(global1.a, global0.d.e.a, 15294u)));
    let var_3 = vec4<bool>(var_1.x & all(!(!var_1.yy)), firstLeadingBit(global0.c.e.b.x) < -min(~(-71902i), global0.e.b.x), var_1.x, true);
    global2 = array<vec4<f32>, 3>();
    return Struct_5(global0.a.b, Struct_4(_wgslsmith_clamp_u32(2409u, 33830u, 4294967295u)));
}

fn func_4(arg_0: Struct_5) -> Struct_4 {
    let var_0 = Struct_3(global0.c, global2[_wgslsmith_index_u32(countOneBits(min(53454u, arg_0.a.a)), 3u)], global0.a, global0.d, arg_0.a);
    let var_1 = !(!vec4<bool>(true, (arg_0.a.b.x < arg_0.a.b.x) & all(vec4<bool>(false, true, false, true)), true, !select(true, true, false)));
    let var_2 = select(vec2<u32>(global0.a.e.a, _wgslsmith_div_u32(var_0.a.e.a, 4294967295u) ^ (u_input.a & ~global1.a)), reverseBits(vec2<u32>(_wgslsmith_sub_u32(global1.a, 49868u) << (66664u % 32u), _wgslsmith_clamp_u32(max(global1.a, var_0.d.b.a), arg_0.a.a, ~14254u))), !(any(vec2<bool>(var_1.x, var_1.x)) & !(var_1.x & false)));
    let var_3 = var_0.c.b.a;
    global0 = var_0;
    return func_2(_wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(-1461f, global0.c.a.x, var_0.d.a.x, _wgslsmith_f_op_f32(select(global0.c.c, _wgslsmith_f_op_f32(min(var_0.a.a.x, global0.b.x)), all(var_1.zz)))))).b;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> f32 {
    let var_0 = func_4(func_2(arg_1.b));
    global2 = array<vec4<f32>, 3>();
    let var_1 = any(!vec3<bool>(true, !(arg_1.e.a != 1u), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    var var_2 = vec2<bool>(-_wgslsmith_dot_vec4_i32(u_input.d, firstLeadingBit(vec4<i32>(global0.d.b.b.x, -23392i, global0.e.b.x, -37076i))) == countOneBits(~_wgslsmith_clamp_i32(26544i, u_input.d.x, arg_0)), !(!(-1i < arg_1.c.e.b.x)));
    global0 = arg_1;
    return -396f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.b.x)), 119f, _wgslsmith_f_op_f32(func_1(global0.d.d.x << (global1.a % 32u), Struct_3(global0.d, global0.b, Struct_2(global0.b.wwy, global0.d.e, global0.a.c, u_input.d, Struct_1(global1.a, global0.a.e.b)), Struct_2(global0.a.a, global0.c.b, 766f, global0.c.d, global0.a.b), global0.d.e), global0.b.x, _wgslsmith_f_op_f32(-global0.a.c)))), Struct_1(~1u, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.d.a.x + 1499f)))), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(global0.d.d.wyz, vec3<i32>(global0.a.e.b.x, u_input.b.x, global0.e.b.x)) & 13707i, ~min(-1i, 21345i), min(global0.a.e.b.x, max(-1i, global0.e.b.x))), func_2(global0.b).a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b), global2[_wgslsmith_index_u32(~0u, 3u)], false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b * _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, -271f, -465f), vec4<f32>(-561f, global0.c.a.x, -163f, global0.b.x))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.c.c), _wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(floor(2142f)), 1678f))), Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1245f, global0.b.x, _wgslsmith_f_op_f32(-global0.d.a.x)), global0.a.a)), Struct_1(_wgslsmith_mult_u32(~global1.a, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(32704u, 22800u, global0.d.b.a))), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a.e.b.x, 1771i), vec2<i32>(0i, 31999i), global0.a.d.xw) & -vec2<i32>(global0.e.b.x, 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -981f), global0.c.d, func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(global0.b)), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(global0.e.a, 3u)]), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true)))).a), Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-global0.d.a.x), _wgslsmith_f_op_f32(346f - global0.d.a.x), global0.d.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-880f, -209f, -521f) * vec3<f32>(1004f, 522f, global0.b.x)), vec3<f32>(global0.b.x, -1596f, 388f)))), global0.a.b, global0.b.x, vec4<i32>(u_input.b.x, -15036i, ~firstTrailingBit(u_input.d.x), ~(17649i << (global0.e.a % 32u))), global0.a.e), func_2(vec4<f32>(-1089f, global0.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -846f), -1000f)).a);
    global1 = func_2(global2[_wgslsmith_index_u32(41349u, 3u)]).b;
    let var_0 = !vec2<bool>(true, !((0i < global0.e.b.x) | (u_input.c.x != 1u)));
    let var_1 = Struct_5(global0.a.b, func_4(func_2(global0.b)));
    let var_2 = ~_wgslsmith_mod_i32(global0.a.e.b.x, 16759i);
    global2 = array<vec4<f32>, 3>();
    var var_3 = select(select(select(vec3<bool>(var_0.x, 26369i < var_2, true), vec3<bool>(true, false, false), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true)), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x))), vec3<bool>(var_0.x, true, select(true, !var_0.x, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), !vec3<bool>(var_0.x, true, false)), !(!vec3<bool>(var_0.x, false, var_0.x)), select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x)), select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, var_0.x, true), var_0.x), !vec3<bool>(false, var_0.x, false)))), vec3<bool>(true, true, 1019f <= _wgslsmith_f_op_f32(sign(-936f))), vec3<bool>(all(select(vec4<bool>(false, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, true), var_0.x)), any(select(!vec4<bool>(false, var_0.x, false, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, true))), var_0.x));
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -482f))));
    var var_5 = Struct_5(Struct_1(global0.d.b.a, vec2<i32>(abs(105934i << (1u % 32u)), global0.e.b.x)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.a.x, global0.d.c)), _wgslsmith_f_op_vec2_f32(exp2(global0.a.a.yx)), select(var_0, var_3.xz, vec2<bool>(var_3.x, true))))))), _wgslsmith_f_op_f32(f32(-1f) * -1437f), u_input.c, -49483i & var_5.a.b.x, _wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(85761u, 61603u), u_input.c.xy), _wgslsmith_mod_u32(13347u, global1.a)) | (var_5.a.a | _wgslsmith_div_u32(0u, 68205u)), 3u)])));
}

