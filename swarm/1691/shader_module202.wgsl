struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<bool>, 4>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    var var_0 = 49667u;
    let var_1 = ~vec4<i32>(0i, -22994i, -1i, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(-1354i, 2147483647i, 12529i), vec3<i32>(18933i, 0i, -35913i), false), abs(vec3<i32>(-1i, 36175i, -69959i))));
    global1 = array<vec2<bool>, 4>();
    global1 = array<vec2<bool>, 4>();
    var var_2 = -301f;
    return var_1.xzy;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(abs(-func_3() << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(492f, 136f, -884f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-779f, -425f, 390f))))) * vec3<f32>(-587f, -1351f, _wgslsmith_f_op_f32(-259f + 470f))), vec3<f32>(1f, 1f, 1f), vec3<bool>(true, true, ~u_input.a <= u_input.a))), _wgslsmith_add_vec3_i32(~(-vec3<i32>(-19641i, 2147483647i, -2147483647i)), func_3()) ^ abs(vec3<i32>(1i, 1i, 1i)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(453f, -184f)) - -155f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) + _wgslsmith_f_op_f32(f32(-1f) * -1360f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-339f, 1431f, true))), 465f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(130f, -198f, 594f, -287f) - vec4<f32>(-385f, -619f, 824f, -164f)))) + vec4<f32>(-1206f, -1000f, _wgslsmith_f_op_f32(sign(-1000f)), -566f))));
    global0 = var_0.d.x;
    var var_1 = var_0.c.x;
    let var_2 = vec4<bool>(any(!vec3<bool>(true, all(global1[_wgslsmith_index_u32(17952u, 4u)]), var_0.b && true)), false, !(_wgslsmith_add_i32(15049i | var_0.a.x, ~var_0.a.x) != _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.d.x, var_0.d.x), var_0.d.x)), var_0.b);
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.e.x - var_0.e.x))) + var_0.c.x) - var_0.c.x)));
    return 1u;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: f32) -> vec4<f32> {
    let var_0 = func_2();
    global0 = reverseBits(-(~(~1i) | (_wgslsmith_clamp_i32(7520i, 1i, -23746i) | _wgslsmith_mod_i32(1i, -38253i))));
    let var_1 = Struct_2(Struct_1(vec3<i32>(10251i, abs(-1137i), _wgslsmith_mod_i32(-28712i, ~(-45546i))), true, vec3<f32>(-536f, arg_0.x, -1507f), -vec3<i32>(-2147483647i, ~(-27397i), ~33243i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, 155f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(arg_0.x * 1395f))))), vec2<i32>(1i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(~1i, -1i, abs(~0i), 1i), select(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(~vec4<i32>(-28185i, 0i, -66460i, 0i), vec4<i32>(-24922i, -1i, -25771i, -1i)), u_input.a <= _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 111163u, u_input.a), vec3<u32>(19243u, var_0, var_0)))));
    let var_2 = true;
    global0 = abs(37483i);
    return var_1.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 4>();
    var var_0 = !vec4<bool>(select(!all(global1[_wgslsmith_index_u32(1u, 4u)]), true, u_input.a >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 197u), vec3<u32>(u_input.a, 4294967295u, u_input.a))), !all(vec3<bool>(true, true, true)), true, !all(global1[_wgslsmith_index_u32(34181u, 4u)]));
    let var_1 = ~(-firstLeadingBit(min(~vec4<i32>(2147483647i, -2147483647i, 21703i, -3245i), ~vec4<i32>(2147483647i, -1i, 24784i, 23310i))));
    global0 = countOneBits(var_1.x);
    global1 = array<vec2<bool>, 4>();
    let var_2 = var_1.x;
    global0 = reverseBits(var_2);
    var var_3 = Struct_1(~(-var_1.ywy), var_0.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(420f, -487f, 1001f))), vec3<f32>(-346f, -545f, -969f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2028f), _wgslsmith_f_op_f32(238f - 953f), 573f), var_0.x)))), _wgslsmith_div_vec3_i32(~reverseBits(vec3<i32>(-32553i, 1i, 24481i) >> (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u))), vec3<i32>(-1i, var_1.x, -2147483647i)), _wgslsmith_f_op_vec4_f32(func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(403f * 108f) * -123f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-342f)), -285f))), global1[_wgslsmith_index_u32(abs(u_input.a), 4u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(153f, -1558f)) + _wgslsmith_div_f32(128f, 783f)), 278f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_f32(select(var_3.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(floor(var_3.e.x))), _wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(trunc(608f))), var_3.b != true)), true | var_3.b)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.e.yz + var_3.e.xx)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(var_3.e.yz, var_3.e.yw, vec2<bool>(true, var_3.b)))))), var_3.e.zx)), _wgslsmith_sub_i32(-(~_wgslsmith_add_i32(var_3.a.x, 1i)), 42530i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_3.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.e) * _wgslsmith_f_op_vec4_f32(var_3.e + var_3.e)), true)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -223f), -1198f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(607f))), _wgslsmith_f_op_f32(-var_3.e.x))));
}

