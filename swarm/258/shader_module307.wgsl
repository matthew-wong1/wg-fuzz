struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(1531f), Struct_3(881f), Struct_3(630f), Struct_3(-2451f), Struct_3(-161f));

var<private> global2: array<vec3<bool>, 29>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_mod_i32(-9387i, _wgslsmith_sub_i32(-1i, abs(2147483647i)) >> (~_wgslsmith_add_u32(38368u, u_input.a.x) % 32u)), select(vec4<bool>(true, select(true, all(vec3<bool>(true, false, false)), true), all(vec3<bool>(true, true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), true, select(true, true, true))), Struct_1(-abs(vec4<i32>(1i, -15073i, -1i, 1i))));
    let var_1 = select(_wgslsmith_mod_i32(64796i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-16420i, -1i), firstTrailingBit(-2764i))), -37707i | var_0.a, var_0.b.x) < var_0.a;
    return (var_0.a & reverseBits(~countOneBits(var_0.a))) & var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> vec4<bool> {
    var var_0 = arg_0.b.x;
    global0 = arg_0.c.a.x;
    var var_1 = countOneBits(-(~(-arg_0.c.a.yz))) ^ -vec2<i32>(-(~(-2147483647i)), ~arg_0.a << (u_input.a.x % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(246f, 724f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-395f, -265f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(588f, -896f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2273f, -1000f)))), arg_0.b.zz))));
    var var_3 = _wgslsmith_sub_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)) >> (_wgslsmith_clamp_vec4_u32(u_input.a | vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), ~vec4<u32>(1u, 4294967295u, 0u, u_input.a.x), ~vec4<u32>(12122u, 14663u, 45807u, 15421u)) % vec4<u32>(32u)), ~(~vec4<u32>(0u, 9574u, 1u, u_input.a.x))), vec4<u32>(64599u, u_input.a.x, 1u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, 3728u), min(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 0u))))));
    return !arg_0.b;
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> bool {
    var var_0 = func_4(Struct_2(func_3(_wgslsmith_f_op_f32(min(-935f, _wgslsmith_f_op_f32(max(arg_1.a, -540f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(661f, 180f)) + _wgslsmith_f_op_f32(-arg_1.a))), select(vec4<bool>(arg_1.a == 735f, arg_0, all(vec4<bool>(false, true, true, true)), true), vec4<bool>(arg_0 | false, !arg_0, all(vec2<bool>(true, false)), !arg_0), !vec4<bool>(arg_0, arg_0, arg_0, true)), Struct_1(vec4<i32>(i32(-1i) * -11963i, 2147483647i, _wgslsmith_mod_i32(-61912i, -1i), abs(37751i)))), select(arg_0, arg_0, arg_0), any(global2[_wgslsmith_index_u32(1u, 29u)]));
    global2 = array<vec3<bool>, 29>();
    let var_1 = Struct_2(-34236i >> (0u % 32u), !(!func_4(Struct_2(0i, vec4<bool>(true, false, arg_0, arg_0), Struct_1(vec4<i32>(-2147483647i, 2147483647i, -56498i, -35852i))), true, true)), Struct_1(max(vec4<i32>(1i, 1i, 1i, 1i) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(-1685i, -12497i, ~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(22109i, 1i, -1i), vec3<i32>(0i, 2147483647i, 35478i))))));
    let var_2 = vec2<f32>(1152f, -975f);
    global2 = array<vec3<bool>, 29>();
    return (-var_1.c.a.x > _wgslsmith_mult_i32(-19679i, ~(var_1.c.a.x << (u_input.a.x % 32u)))) || true;
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_2(abs(1i), !(!vec4<bool>(func_2(true, Struct_3(-1000f)), any(vec3<bool>(false, true, false)), true, u_input.a.x <= 1u)), Struct_1(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-1i, 1i, -25368i, -26268i))));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_i32(var_0.c.a.zyx, vec3<i32>(var_0.a, var_0.a, -1i)), !select(func_4(Struct_2(35995i, var_0.b, var_0.c), arg_1, arg_1), func_4(Struct_2(var_0.c.a.x, var_0.b, var_0.c), arg_1 | true, false), false == (-2147483647i < var_0.c.a.x)), var_0.c);
    global0 = var_0.c.a.x >> (~(~firstTrailingBit(u_input.a.x) & u_input.a.x) % 32u);
    global2 = array<vec3<bool>, 29>();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1408f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-227f - _wgslsmith_f_op_f32(f32(-1f) * -1125f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1404f, 1783f)))));
    return var_1.c;
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    global1 = array<Struct_3, 5>();
    let var_1 = !(!select(func_4(Struct_2(var_0.a.x, vec4<bool>(false, true, true, true), arg_0), true, true).xw, vec2<bool>(true, true), (u_input.a.x ^ 76943u) == _wgslsmith_mod_u32(u_input.a.x, 1u)));
    let var_2 = _wgslsmith_dot_vec4_i32(func_1(!(!var_1.x), var_1.x).a, vec4<i32>(-1i, var_0.a.x, _wgslsmith_dot_vec3_i32(var_0.a.zyz, -vec3<i32>(arg_0.a.x, var_0.a.x, -1i)), -2147483647i));
    global2 = array<vec3<bool>, 29>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~122124u;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-658f, 2100f, 669f), _wgslsmith_div_vec3_f32(vec3<f32>(-120f, -662f, 171f), vec3<f32>(545f, 395f, 255f)), vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1569f, -1317f, 671f)))));
    global2 = array<vec3<bool>, 29>();
    var var_2 = select(true, true, func_5(func_1(any(vec2<bool>(true, true)), true)));
    var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -459f, var_1.x), vec3<f32>(1229f, 360f, var_1.x))), vec3<f32>(var_1.x, 914f, -955f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 243f)) * vec3<f32>(729f, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1340f, -1223f, var_1.x), vec3<f32>(-1000f, var_1.x, 869f), global2[_wgslsmith_index_u32(u_input.a.x, 29u)])))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-927f, var_1.x, 746f)))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-941f, 1011f, -1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 600f)), var_1.x, 56882u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, countOneBits(0u)), ~u_input.a.wyx), -func_1(false & any(vec3<bool>(false, false, true)), false).a.xy, 1i);
}

