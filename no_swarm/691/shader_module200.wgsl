struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 0i, 14969i);

var<private> global1: array<f32, 7>;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: f32) -> bool {
    var var_0 = global0.x;
    global2 = Struct_1(u_input.a < u_input.b.x);
    var var_1 = 24661u;
    global1 = array<f32, 7>();
    var var_2 = vec4<i32>(global0.x, ~(-24070i) ^ (global0.x ^ global0.x), global0.x, ~(-global0.x)) ^ _wgslsmith_mod_vec4_i32(~(-vec4<i32>(global0.x, -2147483647i, -15944i, -7146i)) << (vec4<u32>(~1u, u_input.a, 1u, ~26553u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-global0.x, global0.x, _wgslsmith_sub_i32(0i, global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 19385i, 60670i), vec3<i32>(1i, global0.x, 2147483647i))), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, global0.x, global0.x, global0.x))));
    return true;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec2<i32>) -> u32 {
    var var_0 = vec4<bool>(true, true, arg_0.b, func_2(select(!vec4<bool>(arg_2.b, false, true, arg_2.d), !select(vec4<bool>(arg_0.b, true, global2.a, global2.a), vec4<bool>(true, arg_0.b, true, arg_2.d), vec4<bool>(true, false, arg_0.d, global2.a)), !(!vec4<bool>(global2.a, false, arg_0.b, global2.a))), vec4<bool>(true, true, true, true), -883f));
    var_0 = select(select(vec4<bool>(global2.a, global2.a, true, true), select(!(!vec4<bool>(var_0.x, arg_0.d, true, arg_0.b)), select(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, arg_0.b, true, true), vec4<bool>(var_0.x, var_0.x, false, false)), vec4<bool>(true, arg_2.b, false, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, arg_2.d), vec4<bool>(false, false, arg_2.b, true))), ~arg_1.x < abs(109471u)), !vec4<bool>(all(vec3<bool>(false, true, false)), func_2(vec4<bool>(global2.a, var_0.x, arg_2.b, false), vec4<bool>(arg_0.b, arg_0.d, true, false), 1635f), global2.a, global1[_wgslsmith_index_u32(4294967295u, 7u)] > -1000f)), !select(select(vec4<bool>(true, var_0.x, var_0.x, true), !vec4<bool>(arg_2.b, arg_0.d, arg_2.b, false), arg_2.b), vec4<bool>(false, arg_2.d, global1[_wgslsmith_index_u32(38980u, 7u)] < -555f, any(vec4<bool>(arg_2.b, true, false, false))), select(!vec4<bool>(true, var_0.x, true, true), !vec4<bool>(arg_0.d, false, false, false), !vec4<bool>(arg_2.b, true, false, true))), select(-1i > global0.x, global2.a && arg_2.b, arg_2.d));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-389f, -1127f)))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2751f, -2709f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1809f, global1[_wgslsmith_index_u32(46115u, 7u)]))))), true)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(102f, 934f), vec2<f32>(-1233f, global1[_wgslsmith_index_u32(5017u, 7u)]))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -1001f), vec2<f32>(1000f, global1[_wgslsmith_index_u32(1u, 7u)]))), vec2<f32>(996f, global1[_wgslsmith_index_u32(arg_1.x, 7u)]))))), var_0.xx));
    var var_2 = Struct_2(Struct_1(global2.a), Struct_1(arg_0.b));
    var var_3 = _wgslsmith_sub_i32(~(-5483i), select(0i, arg_2.a, !global2.a)) < global0.x;
    return ~1u;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = global0.x;
    var var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_3(Struct_3(i32(-1i) * -36931i, arg_0.a, _wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.zz) & 1u, !func_2(vec4<bool>(arg_0.a, var_0.a, arg_0.a, true), vec4<bool>(global2.a, var_0.a, global2.a, arg_0.a), global1[_wgslsmith_index_u32(u_input.b.x, 7u)])), ~(~(~u_input.b.zz)), Struct_3(~global0.x | ~(-31863i), global2.a, 2551u, global2.a), _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -17287i, i32(-1i) * -12468i), reverseBits(abs(global0.zy)))), 7u)]);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1413f - 847f), -1970f), 1116f))));
    global2 = Struct_1(any(select(vec2<bool>(global2.a, true), vec2<bool>(any(vec4<bool>(false, global2.a, global2.a, var_0.a)), global0.x <= 19128i), all(vec2<bool>(var_0.a, arg_0.a)))));
    return (_wgslsmith_div_i32(global0.x, -firstTrailingBit(global0.x)) << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(~18845u, ~0u), 24678u, reverseBits(func_3(Struct_3(global0.x, arg_0.a, 47916u, false), vec2<u32>(1u, u_input.a), Struct_3(global0.x, true, 4294967295u, arg_0.a), global0.yy))) % 32u)) ^ (i32(-1i) * -(~1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 7>();
    var var_0 = Struct_3(1i, func_1(Struct_1(true)) < -(~76486i), ~0u, global2.a);
    var var_1 = -abs(_wgslsmith_div_i32(-global0.x, var_0.a) & -_wgslsmith_mod_i32(var_0.a, -56340i));
    global1 = array<f32, 7>();
    let var_2 = false;
    global2 = Struct_1(var_0.d);
    var_1 = var_0.a;
    global0 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -abs(vec3<i32>(2147483647i, var_0.a, global0.x)), countOneBits(vec3<i32>(var_0.a, global0.x, 1i) & abs(vec3<i32>(var_0.a, var_0.a, -5859i))), -firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, 25297i, 0i), vec3<i32>(var_0.a, 27261i, global0.x), vec3<i32>(var_0.a, global0.x, global0.x))));
    let var_3 = Struct_2(Struct_1(var_0.d & (true | global2.a)), Struct_1(!func_2(vec4<bool>(true, global2.a, global2.a, var_2), !vec4<bool>(var_0.b, global2.a, true, var_2), global1[_wgslsmith_index_u32(var_0.c, 7u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(-vec4<i32>(var_0.a, 2147483647i, 1i, var_0.a) << (max(vec4<u32>(u_input.a, var_0.c, 0u, u_input.a), vec4<u32>(4294967295u, 13444u, 0u, 70944u)) % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(var_0.c, 7u)], var_0.c, ~vec3<u32>(4294967295u, ~u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, var_0.c), vec2<u32>(0u, 4294967295u)) % 32u), 56568u));
}

