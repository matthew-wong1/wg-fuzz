struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(4294967295u, -1000f, vec2<f32>(-1089f, -1722f)), Struct_1(0u, -1302f, vec2<f32>(-1379f, -1000f)), Struct_1(1u, 655f, vec2<f32>(-1000f, -136f)), Struct_1(1u, 872f, vec2<f32>(-1000f, 284f)), Struct_1(1u, 309f, vec2<f32>(1698f, 1141f)), Struct_1(1u, 248f, vec2<f32>(1566f, -162f)), Struct_1(1u, 967f, vec2<f32>(597f, 679f)), Struct_1(4294967295u, 435f, vec2<f32>(-583f, 2428f)), Struct_1(81117u, 722f, vec2<f32>(-1713f, -319f)));

var<private> global2: array<i32, 22>;

var<private> global3: array<i32, 20>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = arg_1.c;
    var var_1 = ~(~vec4<u32>(~(1u ^ var_0.a), var_0.a, _wgslsmith_sub_u32(u_input.b.x, var_0.a) ^ _wgslsmith_add_u32(1u, 0u), countOneBits(u_input.b.x << (4294967295u % 32u))));
    let var_2 = _wgslsmith_mult_i32(min(-36666i, 0i) ^ _wgslsmith_add_i32(-_wgslsmith_sub_i32(arg_1.b, -1i), 8454i), 53068i);
    var var_3 = Struct_1(u_input.b.x, var_0.c.x, _wgslsmith_f_op_vec2_f32(select(var_0.c, _wgslsmith_f_op_vec2_f32(arg_1.c.c + vec2<f32>(_wgslsmith_f_op_f32(select(177f, var_0.b, arg_1.a.x)), -1575f)), !arg_1.a)));
    var var_4 = arg_1;
    return vec2<bool>(false, var_3.b == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.c.c.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.c.b)) + -1182f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> vec4<bool> {
    let var_0 = Struct_2(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 10u)], false)), func_3(Struct_3(~arg_0.xy), Struct_2(!vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 10u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zyz, vec3<u32>(4294967295u, arg_0.x, 4294967295u)), 20u)], Struct_1(1u, arg_1.x, vec2<f32>(arg_1.x, -805f)))), select(!vec2<bool>(global0[_wgslsmith_index_u32(89284u, 10u)], false), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], true)), global0[_wgslsmith_index_u32(6782u, 10u)])), global3[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(36330u, select(arg_0.x, 21185u, global0[_wgslsmith_index_u32(arg_0.x, 10u)]), 26256u) << (1u % 32u)), 20u)], Struct_1(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(491f - arg_1.x)) + -1072f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), -950f)))));
    let var_1 = var_0;
    let var_2 = var_0.c.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.b, -1000f, -744f, var_2) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1739f, var_1.c.b, -771f, -1393f), vec4<f32>(var_0.c.b, 1362f, -924f, -757f)))))) + vec4<f32>(var_0.c.b, 225f, var_1.c.b, 1f));
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, _wgslsmith_mult_u32(var_1.c.a, var_0.c.a << (4294967295u % 32u))) | 1u, 10u)] && !any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)], false, var_1.a.x), vec3<bool>(var_0.a.x, global0[_wgslsmith_index_u32(var_0.c.a, 10u)], true), global0[_wgslsmith_index_u32(66005u, 10u)]), !vec3<bool>(false, var_0.a.x, false), true));
    return !(!select(select(vec4<bool>(var_1.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], true, var_0.a.x, var_0.a.x), vec4<bool>(var_4, false, false, true)), vec4<bool>(true, false, all(vec4<bool>(var_4, true, true, global0[_wgslsmith_index_u32(1u, 10u)])), true), vec4<bool>(var_0.c.c.x < var_1.c.c.x, -34124i != global2[_wgslsmith_index_u32(48614u, 22u)], false | var_4, true)));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1210f, _wgslsmith_f_op_f32(min(-182f, 258f)), _wgslsmith_f_op_f32(f32(-1f) * -1252f)), vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = vec3<bool>(false, false, all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(24553u, 10u)], false, true, global0[_wgslsmith_index_u32(1u, 10u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], false, global0[_wgslsmith_index_u32(4294967295u, 10u)], true), select(true, true, false)), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 10u)], true, true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(20894u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 10u)], true), global0[_wgslsmith_index_u32(66032u, 10u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(39478u, 10u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], false, false, true))), func_2(u_input.b.zzy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-323f, var_0.x, var_0.x))))));
    var var_2 = vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(4294967295u, 22u)] ^ -46269i, global3[_wgslsmith_index_u32(1u, 20u)]), -2147483647i);
    var var_3 = Struct_3(firstTrailingBit(~vec2<u32>(4294967295u, firstTrailingBit(47894u))));
    var var_4 = Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.a.x, var_3.a.x), ~vec2<u32>(firstTrailingBit(u_input.a), var_3.a.x ^ u_input.b.x)));
    return all(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    let var_0 = Struct_2(select(vec2<bool>(func_1(), false), func_3(Struct_3(u_input.b.wx), Struct_2(vec2<bool>(true, true), -30703i, global1[_wgslsmith_index_u32(1u, 9u)])), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(29790u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)])), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 10u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 10u)])), !any(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 10u)])))), countOneBits(-26631i), Struct_1(~u_input.b.x, 526f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1810f, -454f) * vec2<f32>(-1615f, -186f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.c.c);
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b, var_0.b, -1i, global2[_wgslsmith_index_u32(1u, 22u)]), vec4<i32>(global2[_wgslsmith_index_u32(0u, 22u)], -11264i, global2[_wgslsmith_index_u32(33558u, 22u)], 1i)), _wgslsmith_add_vec4_i32(min(vec4<i32>(var_0.b, 0i, global3[_wgslsmith_index_u32(22242u, 20u)], -1i), vec4<i32>(1i, 2147483647i, var_0.b, -4752i)), vec4<i32>(var_0.b, -2147483647i, -45139i, var_0.b))), 12390i) & abs(var_0.b);
    var var_3 = Struct_3(firstLeadingBit(~u_input.b.xy));
    var var_4 = firstTrailingBit(select(u_input.b.wxy, vec3<u32>(var_0.c.a, _wgslsmith_mult_u32(var_3.a.x ^ u_input.b.x, firstLeadingBit(0u)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(21193u, var_3.a.x))), !select(vec3<bool>(true, true, true), func_2(u_input.b.yzw, vec3<f32>(var_1.x, var_0.c.c.x, var_0.c.c.x)).www, !vec3<bool>(var_0.a.x, true, false))));
    var var_5 = Struct_3(vec2<u32>(var_3.a.x, ~(~var_3.a.x | firstTrailingBit(var_4.x))));
    var var_6 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-718f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1976f))) - -440f)));
}

