struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<f32>, 1>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = Struct_2(0i, -(~countOneBits(global1.a << (4294967295u % 32u))), Struct_1(~(~_wgslsmith_add_i32(15353i, u_input.d.x)), global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(644f + -193f))))));
    var var_1 = Struct_1(~global1.a, 24743u);
    var var_2 = firstTrailingBit(~(~vec2<u32>(var_1.b << (0u % 32u), ~17744u)));
    return -697f;
}

fn func_2(arg_0: Struct_2) -> u32 {
    global2 = array<vec2<f32>, 1>();
    let var_0 = Struct_2(i32(-1i) * -1i, 1i, Struct_1(abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-23306i, u_input.d.x), 2147483647i)), 4294967295u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    var var_1 = var_0.d;
    var var_2 = var_0.d;
    let var_3 = Struct_1(~arg_0.a ^ _wgslsmith_mult_i32(2147483647i, -1i), ~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(0u, 1u), u_input.c));
    return var_0.c.b;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> StorageBuffer {
    let var_0 = vec3<u32>(~max(u_input.b, 4294967295u), ~4294967295u, countOneBits(30555u)) << (_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(global1.b, u_input.a, 1u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b, 0u, u_input.b), vec3<u32>(u_input.b, 1u, global1.b), vec3<u32>(u_input.c, u_input.c, global1.b)), ~vec3<u32>(u_input.a, 10589u, 1u)), countOneBits(vec3<u32>(global1.b, global1.b, global1.b)) & _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 1u, 31577u), vec3<u32>(global1.b, u_input.a, 37214u))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(u_input.c, 44702u, 22141u, u_input.b))) >> (vec4<u32>(global1.b, 39321u, ~1u, global1.b) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(func_2(global0[_wgslsmith_index_u32(29565u, 28u)])), 1u, ~(global1.b << (5383u % 32u)), ~14669u), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 78670u, global1.b, u_input.c)), firstLeadingBit(select(vec4<u32>(58000u, 0u, var_0.x, 18227u), vec4<u32>(global1.b, u_input.c, var_0.x, 4294967295u), vec4<bool>(true, false, true, false))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, u_input.e, var_0.x), vec4<u32>(var_0.x, 4294967295u, 37999u, 37994u))))));
    var_1 = _wgslsmith_div_vec4_u32(abs(_wgslsmith_mult_vec4_u32(select(vec4<u32>(global1.b, 88825u, 103889u, 1u), vec4<u32>(44710u, 3337u, var_0.x, 56685u), vec4<bool>(true, false, true, true)), ~vec4<u32>(0u, u_input.c, global1.b, u_input.b))), ~(~vec4<u32>(global1.b, 32200u, u_input.b, var_1.x))) << (_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, 105900u, 63348u, 1083u)) ^ abs(~vec4<u32>(global1.b, 7178u, 7452u, var_1.x)), vec4<u32>(_wgslsmith_sub_u32(31115u, 1u), global1.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, 4294967295u, 2518u), ~var_0), var_0.x)) % vec4<u32>(32u));
    global0 = array<Struct_2, 28>();
    var_1 = vec4<u32>(24947u, u_input.b, (max(~45151u, 4294967295u) | max(var_0.x, ~var_0.x)) | _wgslsmith_add_u32(var_1.x, max(~u_input.c, reverseBits(0u))), global1.b);
    return StorageBuffer(57583u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -324f)))))), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~u_input.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1284f, -1188f), _wgslsmith_f_op_f32(-1550f - -837f))))));
}

