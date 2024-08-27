struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(1i, -23098i), vec2<i32>(-1i, 34468i), vec2<i32>(53157i, -38219i), vec2<i32>(1i, -1i), vec2<i32>(48221i, -17848i), vec2<i32>(-1i, -1i), vec2<i32>(-40042i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(23400i, -30572i), vec2<i32>(0i, -51089i), vec2<i32>(6568i, 2147483647i), vec2<i32>(27699i, 35385i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(19098i, 0i), vec2<i32>(2147483647i, 0i));

var<private> global1: array<vec4<i32>, 25>;

var<private> global2: array<i32, 30>;

var<private> global3: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    global2 = array<i32, 30>();
    let var_0 = 108f;
    let var_1 = (abs(reverseBits(reverseBits(u_input.d))) >> (reverseBits(15722u) % 32u)) & global3.x;
    var var_2 = ~u_input.d;
    global0 = array<vec2<i32>, 15>();
    return all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, all(vec4<bool>(false, false, true, true))), vec4<bool>(27554u < u_input.a.x, select(false, true, true), true, true), vec4<bool>(true, false, u_input.c.x < 0i, select(true, false, true))), select(vec4<bool>(0u <= global3.x, false, global2[_wgslsmith_index_u32(var_1, 30u)] >= -2147483647i, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, true)) & all(vec2<bool>(false, true)))));
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(max(u_input.c.zyw, ~vec3<i32>(global2[_wgslsmith_index_u32(~1u, 30u)], 0i, abs(-2147483647i))), _wgslsmith_add_vec3_i32(select(u_input.c.zyz, u_input.c.xxx, true), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.e, 30u)], 20234i) & vec3<i32>(u_input.b, u_input.b, -48290i), _wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(global3.x, 30u)], 32336i, -2147483647i), u_input.c.yxy))), -1616f);
    global1 = array<vec4<i32>, 25>();
    var var_1 = countOneBits(var_0.a.x << (u_input.a.x % 32u)) << (1u % 32u);
    let var_2 = select(!vec3<bool>(true, _wgslsmith_f_op_f32(var_0.c * 763f) < _wgslsmith_f_op_f32(-var_0.c), true), vec3<bool>(false, false, _wgslsmith_f_op_f32(-240f + var_0.c) <= var_0.c), !func_3());
    var var_3 = ~12277u;
    return ~_wgslsmith_sub_vec3_u32(vec3<u32>(~24544u, ~global3.x, ~1u), vec3<u32>(u_input.e, global3.x, global3.x)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.d, ~global3.x, 0u), firstLeadingBit(select(_wgslsmith_mod_vec3_u32(vec3<u32>(43771u, global3.x, 0u), vec3<u32>(5368u, global3.x, global3.x)), vec3<u32>(56752u, global3.x, global3.x), vec3<bool>(false, true, var_2.x)))) % vec3<u32>(32u));
}

fn func_1() -> vec4<bool> {
    global0 = array<vec2<i32>, 15>();
    var var_0 = ~(~_wgslsmith_dot_vec3_u32(max(~vec3<u32>(4294967295u, 4294967295u, global3.x), ~vec3<u32>(1u, 42337u, u_input.e)), ~func_2()));
    global0 = array<vec2<i32>, 15>();
    var var_1 = vec2<bool>(all(vec3<bool>(func_3(), true, false)), false);
    var var_2 = ~u_input.d;
    return !vec4<bool>(!(!(false && var_1.x)), true, all(!(!vec2<bool>(var_1.x, false))), (_wgslsmith_f_op_f32(ceil(317f)) == _wgslsmith_f_op_f32(ceil(306f))) | true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = !vec4<bool>(true || var_0.x, !func_1().x, true, select(!all(vec2<bool>(var_0.x, var_0.x)), var_0.x, var_0.x));
    global0 = array<vec2<i32>, 15>();
    var var_2 = vec3<f32>(1087f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-208f - 970f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(718f, -1214f))))) + 535f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(939f, 1f) + _wgslsmith_f_op_f32(floor(-584f))) - 1394f));
    global0 = array<vec2<i32>, 15>();
    let var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global3.x, 4294967295u), global1[_wgslsmith_index_u32(~u_input.a.x, 25u)], var_2.zx);
}

