struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 17>;

var<private> global2: Struct_1 = Struct_1(1000f, 344f, vec2<bool>(false, true), 26939i, vec3<f32>(-287f, -1000f, 455f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<bool>) -> i32 {
    global1 = array<bool, 17>();
    var var_0 = ~(~(~_wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(vec4<u32>(1u, 13679u, u_input.a, 1u)))));
    global0 = Struct_1(-332f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.e.x, 517f) * _wgslsmith_f_op_f32(f32(-1f) * -617f))) + -330f), select(arg_2.xz, vec2<bool>(arg_1 & true, false), !(!select(vec2<bool>(global1[_wgslsmith_index_u32(61903u, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 17u)]), global0.c, arg_2.x))), ~(((global0.d & arg_0.x) ^ -global2.d) << (u_input.b.x % 32u)), vec3<f32>(_wgslsmith_f_op_f32(max(366f, _wgslsmith_f_op_f32(ceil(-1232f)))), 697f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) * _wgslsmith_f_op_f32(f32(-1f) * -700f))));
    let var_1 = -10211i;
    var var_2 = -_wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(25170i, global2.d, var_1, var_1)), abs(vec4<i32>(-35120i, 2147483647i, global0.d, global0.d))) ^ ((1i << ((max(4294967295u, u_input.b.x) | (u_input.d & 46988u)) % 32u)) & ~firstTrailingBit(abs(35183i)));
    return firstTrailingBit(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, 13416i), 2147483647i), i32(-1i) * -2147483647i));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> i32 {
    var var_0 = Struct_3(635f, select(u_input.b.xx, ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 64020u), vec2<u32>(1090u, u_input.c.x))), vec2<bool>(global2.b == _wgslsmith_f_op_f32(-global0.b), !global2.c.x)));
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.e.x)), -1000f), u_input.b.wz);
    let var_2 = min(vec3<i32>(-7341i, -_wgslsmith_sub_i32(_wgslsmith_sub_i32(75176i, arg_1.x), ~global2.d), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_1.ywy, select(vec3<i32>(arg_1.x, 1i, 2147483647i), arg_1.zyx, vec3<bool>(global1[_wgslsmith_index_u32(32363u, 17u)], true, true))), ~func_3(vec3<i32>(-55360i, 2147483647i, global0.d), global0.c.x, vec4<bool>(true, false, true, global2.c.x)))), arg_1.xxx);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(208f + _wgslsmith_f_op_f32(-var_0.a)), abs(~var_0.b));
    var_3 = var_1;
    return arg_1.x;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_2 {
    let var_0 = select(~(-abs(vec3<i32>(arg_0, -30816i, 31553i))), vec3<i32>(func_2(1u, vec4<i32>(-4470i, i32(-1i) * -1i, -2147483647i ^ arg_0, -2147483647i)), ~select(arg_0, global0.d, true | global0.c.x), arg_0), global1[_wgslsmith_index_u32(~81194u, 17u)]);
    global2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.b)))), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(global2.e.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.e.x, global0.e.x)) * _wgslsmith_f_op_f32(floor(185f))))), select(vec2<bool>(select(true, true, global2.d > arg_0), global0.c.x), vec2<bool>(!(4764u >= arg_1), global1[_wgslsmith_index_u32(4294967295u, 17u)]), global0.c), _wgslsmith_div_i32(var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.x, 11426i, -23533i), select(vec3<i32>(global0.d, -8080i, global2.d), var_0, false)), vec3<i32>(i32(-1i) * -22911i, -global0.d, arg_0))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(global0.e, _wgslsmith_f_op_vec3_f32(select(global2.e, _wgslsmith_f_op_vec3_f32(global0.e - global2.e), false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.e.x + global2.b), _wgslsmith_f_op_f32(f32(-1f) * -1689f), _wgslsmith_f_op_f32(-global2.e.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0.e)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -1000f, -1000f) - global2.e))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(662f, -325f))))) - _wgslsmith_f_op_f32(step(1421f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(785f, 1307f)) - global0.a)))), _wgslsmith_f_op_f32(ceil(global0.e.x)), global2.c, _wgslsmith_add_i32(global2.d, -2147483647i), global0.e);
    var var_2 = select(vec3<bool>(var_1.c.x && global1[_wgslsmith_index_u32(u_input.d, 17u)], !(!(-1097f != global2.a)), true), !(!(!(!vec3<bool>(global2.c.x, var_1.c.x, true)))), !vec3<bool>(global0.c.x, any(vec4<bool>(global0.c.x, var_1.c.x, true, global1[_wgslsmith_index_u32(arg_1, 17u)])), false));
    var var_3 = vec3<i32>(_wgslsmith_add_i32(38069i, -select(1i, 17414i, all(vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 17u)], false)))), var_0.x, 2147483647i);
    return Struct_2(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(454f, -214f, global0.e.x, global0.e.x) - vec4<f32>(545f, 1119f, global0.b, -1143f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1333f, -288f, 1480f, global0.b) + vec4<f32>(806f, 1756f, global2.b, var_1.b))))), firstTrailingBit(468u), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-1756f + global0.b)), _wgslsmith_f_op_f32(f32(-1f) * -167f)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global1 = array<bool, 17>();
    var var_0 = !(!(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)] || false, select(true, false, arg_0), arg_1.c.x || arg_0, true)));
    let var_1 = _wgslsmith_clamp_u32(49530u, u_input.d, u_input.a);
    let var_2 = vec2<bool>(false, all(!(!func_1(global0.d, var_1).a.c)));
    var var_3 = arg_2;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = -5153i;
    var var_2 = Struct_2(func_4(global0.c.x & false, Struct_1(_wgslsmith_f_op_f32(select(global0.b, global2.e.x, global2.c.x)), 290f, vec2<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 17u)], true, false, false)), global1[_wgslsmith_index_u32(94792u, 17u)] || false), i32(-1i) * -2147483647i, vec3<f32>(_wgslsmith_f_op_f32(select(global0.e.x, -1247f, false)), _wgslsmith_div_f32(global2.e.x, 389f), global2.b)), func_1(var_1, ~4294967295u), Struct_1(_wgslsmith_f_op_f32(max(1792f, _wgslsmith_f_op_f32(global2.e.x + global0.e.x))), -722f, vec2<bool>(true, true), -13754i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1444f, -1763f, -1838f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1237f, -682f, -892f, global0.a)))))), 48898u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.x, -1047f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.e.zz + global0.e.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.b)), select(global2.c, global0.c, vec2<bool>(global0.c.x, global1[_wgslsmith_index_u32(u_input.d, 17u)])))), global2.e.zy, true))));
    let var_3 = Struct_3(global2.e.x, ~u_input.b.xy);
    var var_4 = Struct_3(1000f, vec2<u32>(var_3.b.x, ~0u) >> (~countOneBits(vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)));
    let var_5 = 27292u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(u_input.c.wzw, abs(vec3<u32>(4294967295u, 17350u, u_input.d))));
}

