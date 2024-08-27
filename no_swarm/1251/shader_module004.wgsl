struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: Struct_2 = Struct_2(Struct_1(false, vec2<u32>(1u, 41815u), vec2<f32>(-129f, 1184f)), 42752u, Struct_1(true, vec2<u32>(1u, 110820u), vec2<f32>(1536f, -1073f)));

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(false, vec2<u32>(64128u, 9113u), vec2<f32>(1000f, -627f)));

var<private> global3: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    return Struct_3(firstTrailingBit(global1.a.b.x));
}

fn func_2() -> i32 {
    global2 = array<Struct_1, 1>();
    var var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.c.x, 1420f, true))) + -212f), 497f), _wgslsmith_sub_i32(54990i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global1.c.b.x & 11075u, 15u)], -global0[_wgslsmith_index_u32(global1.b, 15u)], 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), u_input.b), ~18258i, reverseBits(-11057i), -1i))));
    global0 = array<i32, 15>();
    global3 = firstTrailingBit(var_0.b) & var_0.b;
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(select(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], u_input.b.x, 1i), vec4<i32>(0i, -6291i, 2147483647i, u_input.b.x)), u_input.b.x, !any(vec2<bool>(true, global1.a.a))), -9597i), u_input.b);
    return var_1.x;
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> f32 {
    global3 = arg_1;
    let var_0 = all(vec4<bool>(-15506i < -(~u_input.b.x), all(select(select(vec4<bool>(global1.c.a, true, true, global1.a.a), vec4<bool>(global1.c.a, global1.a.a, false, global1.c.a), false), vec4<bool>(global1.c.a, false, global1.a.a, global1.c.a), true)), arg_1 > _wgslsmith_div_i32(global0[_wgslsmith_index_u32(arg_0.a, 15u)] << (86453u % 32u), -global0[_wgslsmith_index_u32(global1.c.b.x, 15u)]), ~(~23580i) < abs(abs(u_input.b.x))));
    var var_1 = _wgslsmith_sub_i32(~_wgslsmith_div_i32(_wgslsmith_add_i32(-12775i >> (arg_0.a % 32u), 12108i), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, arg_1), ~arg_1)), global0[_wgslsmith_index_u32(35306u, 15u)]);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-595f * 877f) != global1.c.c.x, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~44717u), _wgslsmith_mod_vec2_u32(global1.c.b, _wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a, 1u)))), ~arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-332f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)))));
    var_1 = i32(-1i) * -24447i;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.c.x) * 1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.c.x * 239f)), -385f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global3 = -19255i;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_1(vec2<f32>(1838f, -278f)), func_2()))), -1i);
    var_0 = global1.a.a;
    let var_2 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(9115u, 105661u), ~19850u, 1u), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 0u, global1.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(62374u, u_input.a, 0u), vec3<u32>(4294967295u, 0u, global1.c.b.x), vec3<u32>(u_input.a, u_input.a, 37219u)))), ~reverseBits(61265u), u_input.a, _wgslsmith_mod_u32(~0u, global1.c.b.x));
    var var_3 = -global0[_wgslsmith_index_u32(var_2.x, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.b.x, 0i));
}

