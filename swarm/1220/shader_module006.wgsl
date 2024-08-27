struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_3,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: bool;

var<private> global2: array<vec3<u32>, 3>;

var<private> global3: array<vec2<u32>, 3>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global3 = array<vec2<u32>, 3>();
    let var_0 = !(!vec3<bool>(~u_input.d == _wgslsmith_sub_i32(global0.e.a, 9775i), !global0.e.c.a || true, true));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1709f))), true, global0.c, min(~(~reverseBits(vec2<u32>(74586u, global0.c.c.c.b))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(global3[_wgslsmith_index_u32(global0.e.c.b, 3u)], vec2<u32>(50151u, 4294967295u)), ~vec2<u32>(u_input.b.x, u_input.a.x))), Struct_2(u_input.c.x, -(-global0.e.c.c ^ (-16721i >> (u_input.a.x % 32u))), global0.e.c));
    global3 = array<vec2<u32>, 3>();
    let var_2 = vec3<u32>(59902u, ~(((0u >> (u_input.a.x % 32u)) >> (33129u % 32u)) & ~u_input.a.x), var_1.d.x);
    return _wgslsmith_f_op_f32(-var_1.a);
}

fn func_2() -> Struct_2 {
    global0 = Struct_5(-219f, false, global0.c, abs(vec2<u32>(~(~1u), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(max(1u, u_input.a.x), 3u)], abs(vec3<u32>(47337u, global0.c.b.c.b, 1u))))), Struct_2(abs(u_input.d), select(_wgslsmith_div_i32(-global0.e.a, u_input.d), u_input.d ^ global0.c.c.c.c, true), global0.e.c));
    global0 = Struct_5(_wgslsmith_f_op_f32(func_3()), true, Struct_3(select(global0.c.c.c.a, any(!vec4<bool>(global0.b, true, global0.e.c.a, global0.e.c.a)), global0.c.c.c.a), global0.c.b, global0.c.c), u_input.a.zy, global0.e);
    var var_0 = -vec4<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.d | min(1i, -2147483647i), max(0i, global0.c.b.c.c) << (_wgslsmith_mult_u32(global0.e.c.b, u_input.b.x) % 32u)), 0i, 0i);
    let var_1 = vec3<bool>(global0.e.c.a, global0.e.c.a, false | global0.e.c.a);
    var var_2 = 65194i;
    return Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(max(u_input.c.x, _wgslsmith_clamp_i32(global0.c.b.c.c, 95561i, u_input.c.x)), global0.e.c.c), u_input.c), reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.c, _wgslsmith_mod_vec2_i32(var_0.wz, vec2<i32>(global0.e.a, var_0.x))), vec2<i32>(firstTrailingBit(-8037i), var_0.x | 2147483647i))), Struct_1(global0.e.c.a, u_input.b.x >> (54577u % 32u), ~min(var_0.x, -2147483647i)));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_5 {
    var var_0 = global0.b;
    global3 = array<vec2<u32>, 3>();
    let var_1 = func_2();
    let var_2 = _wgslsmith_add_vec2_u32(global0.d, ~vec2<u32>(abs(arg_0 | u_input.b.x), ~_wgslsmith_mult_u32(36614u, var_1.c.b)));
    global0 = Struct_5(_wgslsmith_f_op_f32(-arg_1.x), var_1.c.a, global0.c, max(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(27751u, 1u)), ~vec2<u32>(arg_0, global0.c.c.c.b)), ~u_input.a.xy), func_2());
    return Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), -589f, !var_1.c.a)), global0.a)))), select(true, any(vec4<bool>(all(vec4<bool>(arg_2.x, true, false, true)), all(vec4<bool>(arg_3, arg_2.x, true, var_1.c.a)), true, false)), true != var_1.c.a), Struct_3(all(select(!arg_2, vec4<bool>(true, arg_3, var_1.c.a, false), !arg_2)), var_1, var_1), abs(global0.d & _wgslsmith_add_vec2_u32(var_2, _wgslsmith_div_vec2_u32(global0.d, global0.d))), func_2());
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32) -> bool {
    var var_0 = u_input.a.x;
    global3 = array<vec2<u32>, 3>();
    let var_1 = Struct_4(vec2<f32>(arg_2, 970f), arg_1.a, ~(~arg_1.c.c.c.b));
    let var_2 = func_1(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_div_u32(1u, arg_0.c.c.b), _wgslsmith_dot_vec2_u32(u_input.a.yy, global3[_wgslsmith_index_u32(53180u, 3u)]))), ~vec2<u32>(0u, 4294967295u) ^ ~vec2<u32>(arg_0.b.c.b, u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, var_1.b, var_1.a.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 296f, arg_1.a)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-197f, var_1.a.x, -376f), vec3<f32>(1237f, global0.a, 967f), false))))), select(!vec4<bool>(true, select(false, true, arg_1.c.b.c.a), func_1(571u, vec3<f32>(-1592f, global0.a, -1385f), vec4<bool>(arg_0.a, arg_0.b.c.a, false, arg_1.b), arg_0.c.c.a).b, true), select(!select(vec4<bool>(true, true, arg_1.b, global0.e.c.a), vec4<bool>(true, true, global0.b, arg_0.c.c.a), vec4<bool>(true, true, arg_1.b, false)), !select(vec4<bool>(global0.b, false, global0.b, arg_0.c.c.a), vec4<bool>(true, arg_0.c.c.a, global0.c.c.c.a, false), false), arg_0.c.c.a), arg_1.e.c.a), !(-27751i == (i32(-1i) * -global0.c.b.a))).c;
    var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_0.b.c.b, var_2.c.c.b, var_1.c)), _wgslsmith_sub_u32(68360u, var_1.c), u_input.a.x, 35645u) << ((~vec4<u32>(0u, var_2.c.c.b, global0.d.x, 20318u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(58736u, var_1.c, 13515u, 63648u), vec4<u32>(global0.e.c.b, 0u, arg_1.c.b.c.b, arg_1.d.x), vec4<u32>(var_2.b.c.b, 12946u, arg_0.b.c.b, 21920u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(var_2.c.c.b, 37864u, arg_0.b.c.b, 2461u)), firstLeadingBit(select(vec4<u32>(u_input.b.x, u_input.a.x, 61396u, 0u), vec4<u32>(9398u, u_input.a.x, var_1.c, 17618u), vec4<bool>(false, global0.e.c.a, false, var_2.a))))), abs(1u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(global0.e.c.a, !(!any(vec4<bool>(global0.b, global0.e.c.a, true, false))), true);
    var var_1 = !(!(!vec3<bool>(false, var_0.x, all(vec4<bool>(true, global0.b, var_0.x, false)))));
    var_1 = select(!vec3<bool>(max(u_input.b.x, u_input.b.x) != 728u, !all(vec2<bool>(false, true)), !(!var_0.x)), !vec3<bool>(func_4(Struct_3(true, global0.e, Struct_2(15467i, 13580i, global0.e.c)), func_1(1u, vec3<f32>(1624f, global0.a, -1176f), vec4<bool>(var_0.x, global0.b, true, false), global0.c.a), global0.a), !(-52356i > u_input.c.x), _wgslsmith_f_op_f32(func_3()) > global0.a), any(select(select(vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(global0.b, var_1.x, false), vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(true, true, true)), vec3<bool>(!global0.c.c.c.a, true, var_0.x), all(select(vec4<bool>(var_0.x, var_1.x, var_0.x, var_1.x), vec4<bool>(false, var_0.x, var_1.x, false), vec4<bool>(global0.e.c.a, false, var_0.x, global0.b))))));
    global1 = _wgslsmith_f_op_f32(sign(200f)) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -997f), -539f)) * _wgslsmith_f_op_f32(f32(-1f) * -1993f))));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~global0.d, vec2<u32>(48570u, 15964u)) & 11547u, min(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, 1728u), ~global0.c.b.c.b, 4294967295u), _wgslsmith_mod_u32(13662u, global0.e.c.b) | 51971u)), _wgslsmith_div_u32(4294967295u, 63802u >> ((firstLeadingBit(u_input.b.x) ^ ~4294967295u) % 32u)), ~u_input.a.x, ~(~(~0u) & _wgslsmith_div_u32(52685u, func_1(global0.e.c.b, vec3<f32>(-2325f, -1425f, global0.a), vec4<bool>(var_0.x, true, var_1.x, global0.c.c.c.a), global0.b).d.x)));
    var_1 = vec3<bool>(any(select(vec2<bool>(false, false && global0.b), select(select(var_0.xz, var_1.zy, true), select(var_1.zy, var_1.yy, vec2<bool>(true, false)), var_1.yy), false)), ~(~global0.d.x) < _wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.a.x, 42792u), 6741u), true);
    var var_3 = any(vec4<bool>(var_1.x, !(~4294967295u > global0.e.c.b), true, false == !(global0.a != 1914f)));
    var_1 = select(select(select(vec3<bool>(false, global0.e.c.a == global0.b, false), vec3<bool>(!var_0.x, var_0.x | true, global0.b), select(!vec3<bool>(global0.c.a, false, true), vec3<bool>(true, false, global0.e.c.a), !vec3<bool>(var_0.x, false, false))), !select(!vec3<bool>(var_1.x, true, false), select(vec3<bool>(true, var_1.x, false), vec3<bool>(var_0.x, false, global0.e.c.a), var_1.x), vec3<bool>(false, true, global0.b)), global0.b), select(!vec3<bool>(var_0.x, u_input.d == 2147483647i, var_0.x), select(select(select(vec3<bool>(global0.c.a, false, global0.e.c.a), vec3<bool>(false, var_0.x, false), var_0.x), vec3<bool>(var_0.x, true, var_0.x), any(vec4<bool>(var_1.x, global0.c.c.c.a, global0.b, true))), vec3<bool>(all(vec2<bool>(global0.c.b.c.a, false)), var_0.x, var_0.x), var_1.x), !select(!vec3<bool>(var_1.x, false, global0.c.b.c.a), !vec3<bool>(global0.c.b.c.a, false, var_1.x), any(vec3<bool>(var_1.x, global0.b, var_1.x)))), vec3<bool>(false, false, true));
    var var_4 = any(vec3<bool>(!all(var_1.zz), var_1.x && ((false && var_1.x) | var_1.x), any(vec3<bool>(false, false, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-792f + 432f) + global0.a), global0.a, 1007f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 1121f, global0.a, global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1585f, -262f, global0.a, global0.a)))))), global0.a, vec3<u32>(4294967295u, 4294967295u, ~var_2.x), _wgslsmith_f_op_f32(abs(global0.a)), -1190f);
}

