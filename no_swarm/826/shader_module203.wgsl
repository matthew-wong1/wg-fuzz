struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<vec3<i32>, 16>;

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(1u, 51553u, 0u), vec3<u32>(11687u, 14950u, 44249u), vec3<u32>(0u, 64815u, 1u), vec3<u32>(111215u, 57370u, 65295u), vec3<u32>(0u, 0u, 81312u), vec3<u32>(4294967295u, 57052u, 4294967295u), vec3<u32>(17437u, 8567u, 1u), vec3<u32>(61619u, 46861u, 4294967295u), vec3<u32>(1u, 33718u, 78880u), vec3<u32>(0u, 38462u, 48755u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 7526u, 4294967295u), vec3<u32>(0u, 21520u, 72376u), vec3<u32>(12844u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(12028u, 36028u, 1u));

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global3.a, global3.c.c, Struct_1(countOneBits(_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), u_input.a.x)), ~global3.c.b, any(!select(vec2<bool>(true, global3.c.c), vec2<bool>(global3.c.c, false), true)), ~select(global3.c.a, ~u_input.a.x, any(vec4<bool>(global3.b, true, global3.b, true)))));
    return var_0;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> vec2<u32> {
    global1 = array<vec3<i32>, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1374f + -719f), -142f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1026f, _wgslsmith_div_f32(2652f, -729f)), _wgslsmith_div_f32(-506f, -1860f)), _wgslsmith_f_op_f32(select(1f, -273f, false))));
    var var_1 = _wgslsmith_sub_vec3_i32(countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_div_u32(max(4294967295u, 95744u), ~arg_2.c.a)), 16u)]), vec3<i32>(0i, arg_0, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_0 & -2147483647i, u_input.b, arg_0), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a.x, global3.a.x, 2147483647i, 0i), vec4<i32>(u_input.b, arg_2.a.x, u_input.b, arg_2.a.x)), -vec4<i32>(0i, 1i, arg_2.a.x, global3.a.x)))));
    let var_2 = func_2();
    var var_3 = _wgslsmith_add_vec2_u32(~(~(~(u_input.c.zz | u_input.a.yw))), ~(~global3.c.b ^ abs(vec2<u32>(u_input.a.x, 4294967295u))));
    return vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(u_input.a.yxz, vec3<u32>(14138u, u_input.a.x, var_3.x) << (vec3<u32>(55039u, u_input.c.x, arg_2.c.b.x) % vec3<u32>(32u)))), vec3<u32>(var_3.x, ~arg_1, ~1u)), ~(~(~1u)) ^ _wgslsmith_clamp_u32(10520u << (_wgslsmith_add_u32(1u, 0u) % 32u), reverseBits(~var_3.x), _wgslsmith_div_u32(66073u, 44126u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> StorageBuffer {
    var var_0 = global3.c;
    let var_1 = u_input.b;
    global0 = max(_wgslsmith_mod_i32(var_1, ~(firstLeadingBit(1i) & u_input.b)), -2147483647i);
    let var_2 = func_2().c;
    var var_3 = select(!vec4<bool>(arg_1.c.c, (false & arg_1.c.c) && false, true, var_2.c & any(vec3<bool>(false, true, false))), select(vec4<bool>(_wgslsmith_f_op_f32(1000f - arg_0.x) >= _wgslsmith_f_op_f32(trunc(arg_0.x)), false, false, true), select(select(!vec4<bool>(var_2.c, arg_1.b, false, var_2.c), vec4<bool>(false, global3.c.c, true, global3.c.c), select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.c, var_2.c, true, global3.c.c), true)), !select(vec4<bool>(var_0.c, false, arg_1.c.c, false), vec4<bool>(false, global3.b, global3.c.c, var_0.c), var_2.c), any(vec3<bool>(false, false, true)) || all(vec4<bool>(global3.b, false, false, global3.c.c))), vec4<bool>(true, var_2.c, func_2().a.x <= var_1, var_0.c)), func_2().c.c && true);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(-395f, arg_0.x))) * _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-269f, arg_0.x, 447f, arg_0.x), vec4<f32>(-1023f, -1093f, arg_0.x, 569f), var_2.c)), vec4<f32>(arg_0.x, 363f, 1031f, -356f)))), 2147483647i, vec4<i32>(1i, 0i, global3.a.x, global3.a.x | var_1), _wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(arg_3), ~(~var_0.a)), u_input.c.zy), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(global3.a, u_input.c.x > _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.c.x), func_1(2147483647i, u_input.a.x, Struct_2(global3.a, global3.b, global3.c))), Struct_1(max(109458u, firstLeadingBit(4294967295u)), vec2<u32>(u_input.c.x, u_input.a.x) & countOneBits(vec2<u32>(u_input.a.x, global3.c.d)), true, func_2().c.d)), global3.c.d, 1u);
}

