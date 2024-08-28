struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22>;

var<private> global1: Struct_3 = Struct_3(434f);

var<private> global2: f32;

var<private> global3: Struct_3 = Struct_3(-140f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec2<bool> {
    return vec2<bool>(true, false);
}

fn func_3(arg_0: Struct_3) -> f32 {
    global3 = arg_0;
    let var_0 = -2147483647i != _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, i32(-1i) * -1i), abs(4511i), 2147483647i), ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(6295i, -2147483647i, -17476i, 11511i), vec4<i32>(1i, 18979i, -18680i, -14172i)), 1i));
    global1 = arg_0;
    global2 = -975f;
    let var_1 = select(!select(!(!vec2<bool>(var_0, true)), select(!vec2<bool>(true, var_0), !vec2<bool>(true, var_0), select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, true))), !vec2<bool>(var_0, false)), !(!vec2<bool>(var_0, arg_0.a == global1.a)), any(!vec4<bool>(any(vec3<bool>(var_0, var_0, false)), false, var_0 & true, true)));
    return global3.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> bool {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(27058i, countOneBits(reverseBits(-48019i))), _wgslsmith_dot_vec2_i32(arg_0.xy, arg_0.xx)), _wgslsmith_clamp_i32(-arg_0.x << (_wgslsmith_div_u32(~u_input.d.x, 1u) % 32u), 1i, _wgslsmith_dot_vec3_i32(arg_0 << (_wgslsmith_sub_vec3_u32(vec3<u32>(14821u, u_input.b, 46533u), u_input.d.yzy) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(arg_0, ~arg_0))));
    let var_1 = u_input.d.x;
    global3 = Struct_3(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-613f, 1624f))))));
    global2 = global3.a;
    let var_2 = func_1(Struct_1(-(~vec4<i32>(16097i, -26427i, var_0.x, arg_0.x) << (vec4<u32>(arg_1, var_1, 0u, 7543u) % vec4<u32>(32u))), var_0.x, 0i, arg_0), arg_1, !any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), 597f < global1.a))).x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!((min(0u, 67547u) & _wgslsmith_add_u32(4294967295u, u_input.a.x)) != ~min(63437u, u_input.c.x)), all(select(vec3<bool>(true, 8657u > u_input.a.x, false), vec3<bool>(true, all(vec3<bool>(true, true, true)), global1.a == 185f), vec3<bool>(false, false, select(true, false, true)))));
    var_0 = select(select(!(!vec2<bool>(var_0.x, true)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, !var_0.x), !(!var_0.x)), var_0.x & true), select(select(select(func_1(Struct_1(vec4<i32>(0i, -2147483647i, -21850i, -1i), 1i, -1i, vec3<i32>(50511i, -1i, -1i)), 0u, var_0.x), vec2<bool>(var_0.x, false), !var_0.x), vec2<bool>(func_2(vec3<i32>(-57939i, -1i, 1i), 76874u), var_0.x), func_1(Struct_1(vec4<i32>(2147483647i, -18623i, 1i, 35409i), -100222i, -1i, vec3<i32>(18656i, -22120i, 92580i)), u_input.c.x, !var_0.x).x), vec2<bool>(all(!vec3<bool>(var_0.x, var_0.x, var_0.x)), true), true), func_1(Struct_1(vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(14282i) << (max(1u, u_input.c.x) % 32u), firstLeadingBit(~30406i), countOneBits(vec3<i32>(-39007i, -1i, -28767i))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 2728u, u_input.d.x, u_input.c.x), vec4<u32>(u_input.d.x, 12775u, u_input.b, 20979u))), !var_0.x));
    let var_1 = Struct_2(u_input.a);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(floor(global3.a)));
    let var_3 = vec4<i32>(_wgslsmith_mult_i32(1i, reverseBits(firstLeadingBit(1i))), 23956i, _wgslsmith_clamp_i32(1i, select(_wgslsmith_add_i32(7683i, 1i), -4902i, all(vec2<bool>(var_0.x, true))), -max(1i, -2147483647i)), -2147483647i) | (firstLeadingBit(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-25395i, 1i, 4418i, -1i), vec4<i32>(1i, -12740i, 11432i, -1i)))) & vec4<i32>(-countOneBits(-47763i), -_wgslsmith_clamp_i32(2147483647i, 1i, 1i), 8352i, _wgslsmith_sub_i32(~(-37354i), _wgslsmith_clamp_i32(-38582i, 2147483647i, -26278i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, global3.a, -23316i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f) - _wgslsmith_f_op_f32(-296f * -356f)), global1.a);
}

