struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: bool;

var<private> global1: array<Struct_1, 7>;

var<private> global2: Struct_2 = Struct_2(vec4<f32>(659f, 528f, 201f, 1317f), false, Struct_1(vec3<i32>(-13055i, 2147483647i, 1i), i32(-2147483648), 1i, vec2<f32>(-394f, 134f)), Struct_1(vec3<i32>(2147483647i, 22924i, 51192i), 38308i, -28353i, vec2<f32>(531f, 318f)));

var<private> global3: array<f32, 15>;

var<private> global4: array<f32, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: bool) -> Struct_3 {
    var var_0 = global3[_wgslsmith_index_u32(~0u, 15u)];
    return Struct_3(global2.a.zz, _wgslsmith_f_op_f32(sign(-397f)), u_input.a.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_4 {
    global4 = array<f32, 24>();
    var var_0 = func_2(-2147483647i, -1i, !global2.b);
    global1 = array<Struct_1, 7>();
    let var_1 = global2.c.a;
    let var_2 = arg_1;
    return Struct_4(Struct_2(global2.a, true, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(20815u, 0u)), 7u)], global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~16035u, ~34720u), 7u)]));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(arg_1, 17057u);
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global2.a)))))), false, func_1(~(vec4<i32>(1i, 7296i, global2.d.b, arg_0.x) | vec4<i32>(1i, 11716i, 1i, global2.c.c)) ^ max(~vec4<i32>(-2147483647i, 22778i, -32754i, 2147483647i), vec4<i32>(0i, global2.d.b, 0i, -2147483647i)), func_1(-_wgslsmith_mult_vec4_i32(vec4<i32>(-41907i, -2210i, 14283i, global2.d.c), vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.b)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, _wgslsmith_mod_u32(arg_1, arg_1)), 7u)]).a.c).a.d, Struct_1(~(~global2.d.a << (~vec3<u32>(1u, 1u, 18934u) % vec3<u32>(32u))), select(firstLeadingBit(1i ^ global2.d.b), 1i, global2.b), global2.c.b >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18246u, arg_1, 4294967295u, arg_1), vec4<u32>(arg_1, arg_1, 4294967295u, arg_1)), _wgslsmith_div_u32(arg_1, 38385u), min(arg_1, 1u)) % 32u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global2.d.d, _wgslsmith_f_op_vec2_f32(-global2.c.d), vec2<bool>(global2.b, true)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(arg_1, 24u)], global3[_wgslsmith_index_u32(0u, 15u)])))), _wgslsmith_f_op_f32(step(-2458f, global3[_wgslsmith_index_u32(arg_1, 15u)])))), false, Struct_1(reverseBits(vec3<i32>(-2147483647i, 0i, global2.d.a.x)), ~1i, arg_0.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.a.xy * global2.c.d), global2.a.zz, select(select(vec2<bool>(false, true), vec2<bool>(false, global2.b), global2.b), select(vec2<bool>(global2.b, global2.b), vec2<bool>(false, global2.b), global2.b), select(vec2<bool>(true, global2.b), vec2<bool>(true, global2.b), vec2<bool>(global2.b, false)))))), global1[_wgslsmith_index_u32(~16115u, 7u)]);
    global1 = array<Struct_1, 7>();
    global3 = array<f32, 15>();
    return var_1.d;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    let var_0 = func_3(arg_1.a.xz, min(41454u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 56819u, 1u))) >> (~(max(4294967295u, 12990u) >> (_wgslsmith_mult_u32(1u, 0u) % 32u)) % 32u));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.d.x, 1744f), arg_1.d)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-916f, 1368f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global2.d.d.x, var_0.d.x), var_0.d)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f * 262f)), _wgslsmith_f_op_f32(-644f * -876f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -4067i, -22202i), vec3<i32>(u_input.b, u_input.b, var_0.b)), arg_1.b & -53504i, _wgslsmith_mult_i32(arg_1.a.x, u_input.b)), func_1(-vec4<i32>(arg_1.c, arg_1.c, arg_1.b, -43022i), func_1(vec4<i32>(global2.d.b, arg_1.b, arg_1.b, 23418i), func_3(vec2<i32>(0i, u_input.a.x), 1u)).a.d).a.d.a));
    var var_2 = !(!select(vec4<bool>(arg_0 != global2.b, true, true, arg_0 & arg_0), !(!vec4<bool>(true, false, arg_0, false)), _wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u) != 4294967295u));
    let var_3 = select(select(vec4<bool>(var_2.x, arg_0, true, true), vec4<bool>(true, false, !func_1(vec4<i32>(0i, var_0.c, arg_1.c, 1i), global2.c).a.b, select(true, true, var_2.x && arg_0)), all(!select(vec4<bool>(global2.b, true, true, true), vec4<bool>(false, true, var_2.x, false), arg_0))), vec4<bool>(arg_0, _wgslsmith_f_op_f32(-arg_2) != -1000f, arg_0, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(25757u, 0u, 31941u, 4294967295u))) < _wgslsmith_div_u32(~38524u, ~26285u)), !select(vec4<bool>(false, !var_2.x, true, true), !(!vec4<bool>(var_2.x, var_2.x, false, arg_0)), !select(vec4<bool>(true, true, arg_0, false), vec4<bool>(false, true, true, var_2.x), vec4<bool>(true, false, true, global2.b))));
    global2 = func_1(firstLeadingBit(vec4<i32>(u_input.a.x, max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, u_input.a.x, arg_1.b, arg_1.b), vec4<i32>(arg_1.b, arg_1.b, arg_1.c, 8722i)), _wgslsmith_mult_i32(1i, arg_1.a.x)), _wgslsmith_mod_i32(-44493i, u_input.a.x), global2.c.b)), Struct_1(global2.c.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(10962i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, global2.d.c), vec3<i32>(67349i, -68460i, var_1.c))), -var_1.c), select(_wgslsmith_dot_vec2_i32(abs(u_input.a.zz), reverseBits(vec2<i32>(1i, 59610i))), 1i, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(551f, arg_2)))))).a;
    return global2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 15>();
    let var_0 = func_1(~(~(~vec4<i32>(17423i, global2.c.b, global2.c.a.x, -10629i) | abs(vec4<i32>(-2147483647i, -79860i, -18995i, 2147483647i)))), Struct_1(u_input.a, _wgslsmith_mod_i32(i32(-1i) * -59527i, global2.d.a.x & global2.d.a.x), 19390i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(global2.c.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(756f, global3[_wgslsmith_index_u32(99036u, 15u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d.d * vec2<f32>(global4[_wgslsmith_index_u32(1u, 24u)], -2032f)))))));
    let var_1 = 19937i;
    let var_2 = global1[_wgslsmith_index_u32(48709u, 7u)];
    let var_3 = func_1(vec4<i32>(~(~_wgslsmith_div_i32(var_2.a.x, var_2.a.x)), (-u_input.b << (1u % 32u)) | 22079i, ((22723i | u_input.b) << (1u % 32u)) | 2147483647i, abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.a.d.b, var_1, var_1, var_0.a.d.b)), countOneBits(vec4<i32>(u_input.a.x, -43346i, global2.c.a.x, var_1))))), func_1(-vec4<i32>(1i, ~(-7399i), i32(-1i) * -28981i, u_input.b), var_0.a.c).a.c).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(54564u, 1u, any(vec3<bool>(var_3.b, true, true))) | ~47891u, 15u)]), _wgslsmith_mod_vec3_i32(~func_4(true, func_3(var_2.a.zy, 8350u), _wgslsmith_f_op_f32(-var_0.a.a.x)), var_3.d.a));
}

