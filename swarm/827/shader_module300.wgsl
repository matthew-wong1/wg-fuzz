struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(4294967295u, 1u, 24532u, 24050u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 37693u, 1u, 1u, 1u, 1u, 1u, 1u, 129u, 1u, 1u, 108859u);

var<private> global1: u32 = 1u;

var<private> global2: array<f32, 12> = array<f32, 12>(1000f, -854f, -598f, 104f, -1200f, 741f, -1856f, 852f, -1092f, -1048f, 1018f, -527f);

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    var var_0 = -2147483647i;
    let var_1 = Struct_4(~_wgslsmith_mult_i32(-14775i & firstTrailingBit(u_input.b.x), 0i));
    let var_2 = global4.a;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(392f * global2[_wgslsmith_index_u32(1u, 12u)]) * -473f)), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(8719u, 12u)])), any(select(vec2<bool>(true, true), vec2<bool>(global3.x, global3.x), var_2.b.x == 44333u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -319f), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(max(arg_0.x, u_input.a), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)]), 12u)]))), _wgslsmith_f_op_f32(max(183f, global2[_wgslsmith_index_u32(firstLeadingBit(0u), 12u)])));
    global2 = array<f32, 12>();
    return _wgslsmith_clamp_u32(~global4.a.b.x, countOneBits(32175u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global4.a.b, _wgslsmith_div_vec3_u32(vec3<u32>(27640u, u_input.c, 1u), vec3<u32>(31383u, arg_2.b.b.x, 4294967295u))), vec3<u32>(_wgslsmith_mult_u32(arg_0.x, 4294967295u), 1u, global4.a.b.x << (var_2.b.x % 32u))));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = countOneBits(u_input.b.ww);
    global1 = 27860u;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(~1u, _wgslsmith_add_u32(u_input.c, 0u)), 12u)])), global2[_wgslsmith_index_u32(func_3(global4.a.b, arg_0, Struct_3(global4.a, global4.a, Struct_2(global4.a, arg_0.a), Struct_1(vec3<i32>(u_input.b.x, 1i, arg_0.a), _wgslsmith_add_vec3_u32(global4.a.b, global4.a.b)), Struct_2(global4.a, _wgslsmith_div_i32(2147483647i, global4.a.a.x)))), 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], -602f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -231f), 247f) + var_1.yx));
    global1 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 19u)] ^ 4294967295u, _wgslsmith_mod_u32(4294967295u, global4.a.b.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(37146u, global0[_wgslsmith_index_u32(global4.a.b.x, 19u)]), global4.a.b.zy)), _wgslsmith_mult_u32(~func_3(vec3<u32>(global4.a.b.x, 80231u, 39656u), arg_0, Struct_3(Struct_1(vec3<i32>(-2147483647i, 29529i, 2147483647i), global4.a.b), Struct_1(vec3<i32>(arg_2, -40152i, arg_0.a), global4.a.b), Struct_2(global4.a, 2147483647i), Struct_1(u_input.b.wwy, global4.a.b), Struct_2(global4.a, 37416i))), ~reverseBits(1u) >> (0u % 32u)));
    return global4.a;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global4 = Struct_2(func_2(Struct_4(-(0i | arg_0.a.x)), !(!(!global3.x)), 2147483647i, global3.x), -16290i);
    global1 = 4294967295u;
    var var_0 = !select(all(select(vec4<bool>(global3.x, true, true, global3.x), select(vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(global3.x, false, false, global3.x), vec4<bool>(false, global3.x, global3.x, true)), true && global3.x)), true, true);
    let var_1 = Struct_2(Struct_1(vec3<i32>(8702i, _wgslsmith_dot_vec4_i32(select(u_input.b, vec4<i32>(global4.a.a.x, -46646i, u_input.b.x, arg_0.a.x), vec4<bool>(global3.x, global3.x, global3.x, false)), u_input.b), ~arg_0.a.x << (~global4.a.b.x % 32u)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.b.x, 76818u), arg_0.b))), -global4.b);
    global0 = array<u32, 19>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(46800u, 12u)]));
    global4 = func_1(Struct_1(((global4.a.a & global4.a.a) & -u_input.b.xxw) ^ (vec3<i32>(u_input.b.x, -24012i, -31540i) >> (min(global4.a.b, vec3<u32>(global4.a.b.x, global4.a.b.x, 0u)) % vec3<u32>(32u))), countOneBits(abs(vec3<u32>(u_input.d, u_input.d, 1u))) << (_wgslsmith_mod_vec3_u32(min(global4.a.b, vec3<u32>(u_input.a, global4.a.b.x, u_input.c)), abs(vec3<u32>(1u, u_input.a, 122251u))) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(198f, global2[_wgslsmith_index_u32(4294967295u, 12u)], -540f), vec3<f32>(-1846f, 377f, global2[_wgslsmith_index_u32(0u, 12u)])) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-841f, global2[_wgslsmith_index_u32(0u, 12u)], 1000f), vec3<f32>(-1000f, -996f, var_0))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_0) * var_0), _wgslsmith_f_op_f32(-899f + -1036f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.a.b.x, 19u)], 12u)], -899f) * 758f))) - vec3<f32>(global2[_wgslsmith_index_u32(~60743u, 12u)], _wgslsmith_div_f32(665f, -2187f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1955f, var_0)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global0[_wgslsmith_index_u32(115836u | global4.a.b.x, 19u)], _wgslsmith_add_u32(u_input.a, reverseBits(_wgslsmith_div_u32(4294967295u, 1u))), select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(0u, 41830u, global3.x), 19u)], 19u)], ~(~u_input.d), true), ~abs(u_input.d) << (13421u % 32u)));
}

