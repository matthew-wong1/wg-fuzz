struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(952f, 668f, 1000f, -1000f));

var<private> global1: Struct_2;

var<private> global2: u32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> f32 {
    var var_0 = ~(~(~vec4<u32>(global1.a.a, 0u, 4294967295u, 4294967295u) & vec4<u32>(0u, 0u, 4294967295u, global1.a.a)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global1.a.a, _wgslsmith_sub_u32(global1.a.a, u_input.b), 4294967295u, _wgslsmith_add_u32(1u, u_input.b)), countOneBits(~vec4<u32>(0u, u_input.b, 38592u, 4294967295u))) % vec4<u32>(32u)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), global1.a.b & (~var_0.x != ~u_input.a.x), any(vec3<bool>(global1.a.d.x, any(global1.a.d), true)), vec3<bool>(!(u_input.d.x <= 9389i), true, true)));
    let var_2 = 1540f;
    var var_3 = !vec4<bool>(1687f > var_2, any(select(vec3<bool>(global1.a.d.x, true, global1.a.c), var_1.a.d, true)), global1.a.d.x, !var_1.a.c);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2)) + -171f);
    return 252f;
}

fn func_3(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), Struct_2(Struct_1(firstTrailingBit(~4294967295u), all(vec3<bool>(true, false, false)), !all(vec4<bool>(global1.a.c, global1.a.c, global1.a.c, false)), global1.a.d)), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2843f * 128f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), Struct_2(Struct_1(~(~arg_0.x), _wgslsmith_f_op_f32(select(265f, -1425f, global1.a.c)) == -1811f, true | any(vec2<bool>(global1.a.b, true)), global1.a.d)));
    let var_1 = -386f;
    var_0 = Struct_3(reverseBits(abs(var_0.a) | (i32(-1i) * -u_input.c.x)), Struct_2(Struct_1(~min(global1.a.a, 0u), global1.a.d.x, _wgslsmith_f_op_f32(-var_0.d) != _wgslsmith_f_op_f32(-var_0.d), select(!vec3<bool>(false, var_0.e.a.b, global1.a.b), vec3<bool>(var_0.e.a.d.x, true, global1.a.c), any(global1.a.d)))), 0u, var_1, Struct_2(global1.a));
    var var_2 = global1.a;
    let var_3 = var_0.d;
    return !select(vec2<bool>(!(!global1.a.b), true && !global1.a.d.x), var_2.d.xx, var_2.d.yz);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    global2 = _wgslsmith_add_u32(23203u, 25079u);
    var var_0 = Struct_2(global1.a);
    let var_1 = 45709u;
    let var_2 = Struct_1(4294967295u, true, true, select(var_0.a.d, arg_1.d, arg_1.d));
    let var_3 = vec2<f32>(474f, -333f);
    return var_0.a.a;
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-197f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(min(-425f, -244f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    var var_1 = Struct_1(_wgslsmith_clamp_u32(12533u, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(u_input.a.zwy, vec3<u32>(5440u, global1.a.a, 33638u)) << (39189u % 32u)), ~(~global1.a.a)), false, true, global1.a.d);
    let var_2 = !(!select(vec3<bool>(all(var_1.d.zy), all(var_1.d), true), select(vec3<bool>(global1.a.d.x, global1.a.b, false), select(vec3<bool>(true, var_1.d.x, true), vec3<bool>(true, true, true), vec3<bool>(global1.a.c, var_1.c, true)), false), false));
    let var_3 = countOneBits(2147483647i);
    let var_4 = Struct_3(_wgslsmith_add_i32(abs(-2147483647i), max(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d.x, var_3), var_3), _wgslsmith_sub_i32(countOneBits(var_3), _wgslsmith_mult_i32(u_input.c.x, -42436i)))), Struct_2(Struct_1(59846u, firstLeadingBit(var_3) >= ~var_3, true, !select(vec3<bool>(true, global1.a.b, false), vec3<bool>(true, global1.a.b, global1.a.d.x), false))), func_4(0u, Struct_1(_wgslsmith_sub_u32(global1.a.a, ~1u), any(func_3(u_input.a)), -1526f <= _wgslsmith_div_f32(var_0, -1847f), select(var_2, select(global1.a.d, vec3<bool>(true, var_2.x, true), var_1.d), global1.a.d)), u_input.a.xz), _wgslsmith_f_op_f32(-var_0), Struct_2(global1.a));
    return vec4<bool>(!(u_input.c.x <= abs(1664i)) && var_1.d.x, true, true, var_2.x | var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec4<bool>(!global1.a.d.x, true, true, global1.a.d.x)), func_1(), true);
    var var_1 = !func_3(~vec4<u32>(global1.a.a & 93521u, 625u, 14872u, 1u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 390f) - _wgslsmith_f_op_f32(func_2())))))));
    let var_3 = ~u_input.b;
    var_1 = var_0.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 1u)])))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_2)), var_2, !(var_2 <= var_2))));
}

