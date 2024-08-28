struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<i32>(35519i, -18743i), vec3<bool>(false, false, false)));

var<private> global1: u32;

var<private> global2: array<vec2<bool>, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec2<u32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(566f, -1192f), _wgslsmith_f_op_f32(f32(-1f) * -1312f), global0.a.b.x)) - 123f), _wgslsmith_f_op_f32(min(144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-499f))))), 537f));
}

fn func_3() -> u32 {
    var var_0 = ~min(vec2<u32>(~1u, 1u), countOneBits(vec2<u32>(1u, _wgslsmith_add_u32(14398u, 0u))));
    global2 = array<vec2<bool>, 21>();
    var_0 = ~(~(vec2<u32>(0u | var_0.x, ~var_0.x) & vec2<u32>(~4294967295u, 4294967295u)));
    global0 = Struct_3(global0.a);
    global0 = Struct_3(Struct_1(-(~(-vec2<i32>(-38015i, u_input.a))), !global0.a.b));
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.x, var_0.x), ~var_0.x), min(112893u, ~(8412u & var_0.x))), var_0.x);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_1.a.x;
    global2 = array<vec2<bool>, 21>();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_f_op_f32(trunc(-982f)), _wgslsmith_f_op_f32(290f + -561f), _wgslsmith_f_op_f32(abs(1448f)))))), _wgslsmith_f_op_vec4_f32(func_2(vec2<u32>(1u, 1u))));
    global0 = Struct_3(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.a.x, var_0), global0.a.a)) << (vec2<u32>(16952u, func_3()) % vec2<u32>(32u)), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, arg_1.b.x), vec2<bool>(true, arg_2.b.x))), arg_2.b.x != arg_1.b.x, arg_1.b.x)));
    var var_2 = abs(15712u);
    return Struct_3(Struct_1(vec2<i32>(arg_1.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-23303i, u_input.a), arg_2.a), firstTrailingBit(arg_2.a.x))), vec3<bool>(true, global0.a.a.x < -2147483647i, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(36542i, Struct_1(select(~global0.a.a, reverseBits(_wgslsmith_div_vec2_i32(global0.a.a, global0.a.a)), global0.a.b.x), select(global0.a.b, global0.a.b, global0.a.b.x)), global0.a);
    let var_0 = Struct_5(vec3<u32>((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 16388u), vec2<u32>(31868u, 34489u)) >> (_wgslsmith_mult_u32(34733u, 1u) % 32u)) << (1u % 32u), 1u, 1u), -212f, max(~firstTrailingBit(vec3<u32>(1u, 1u, 1u)), select(vec3<u32>(1u, 1u, 1u), max(firstLeadingBit(vec3<u32>(22643u, 4294967295u, 6242u)), min(vec3<u32>(1u, 5533u, 7984u), vec3<u32>(74864u, 29638u, 0u))), vec3<bool>(global0.a.b.x, true, global0.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1726f * _wgslsmith_div_f32(-1000f, -214f)) + -131f) + _wgslsmith_f_op_f32(f32(-1f) * -1055f)), vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = var_0;
    global2 = array<vec2<bool>, 21>();
    global0 = func_1(select(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2388i, global0.a.a.x) & (vec3<i32>(-1i, -18749i, -1i) >> (vec3<u32>(68813u, var_1.a.x, 1u) % vec3<u32>(32u))), -(~vec3<i32>(1i, 1i, global0.a.a.x))), !(_wgslsmith_f_op_f32(-var_1.b) != _wgslsmith_f_op_f32(round(var_0.b)))), global0.a, func_1(-1i, global0.a, Struct_1(vec2<i32>(20346i, global0.a.a.x) << (~var_0.c.yy % vec2<u32>(32u)), !(!vec3<bool>(false, global0.a.b.x, false)))).a);
    let var_2 = ~1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, var_0.e.x, abs(var_1.a.x)), ~(~max(var_0.e.wwx, vec3<u32>(0u, var_0.c.x, 4294967295u))));
    global1 = 4294967295u;
    var var_3 = reverseBits(global0.a.a.x);
    let var_4 = -(~global0.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a & -29292i, -19371i, -16067i), _wgslsmith_add_vec3_i32(vec3<i32>(var_4, 71098i, global0.a.a.x), vec3<i32>(-10173i, -1i, var_4)) >> (vec3<u32>(1u, var_2, var_2) % vec3<u32>(32u))), _wgslsmith_div_i32(~1i, 2147483647i), ~(~0i)), ~(~var_0.a));
}

