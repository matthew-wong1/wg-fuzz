struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> i32 {
    global0 = vec3<bool>(true, false, !any(vec2<bool>(true, global0.x)));
    let var_0 = Struct_3(4294967295u);
    return -12413i;
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = select(~reverseBits(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 13528u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)))), ~(~vec4<u32>(4294967295u, 16627u, 1u, 44651u)) ^ ~(min(vec4<u32>(u_input.a.x, 4294967295u, 77163u, u_input.a.x), vec4<u32>(u_input.a.x, 11525u, u_input.a.x, 0u)) >> (abs(vec4<u32>(2558u, 942u, 1975u, 1683u)) % vec4<u32>(32u))), !global0.x);
    var var_1 = vec3<i32>(u_input.b, 12474i, 2147483647i);
    var var_2 = min(~(~(~23705u)), countOneBits(0u)) & _wgslsmith_dot_vec2_u32(~vec2<u32>(~1u, 0u), var_0.xx);
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2107f, -1261f, 1000f))) * vec3<f32>(2000f, 522f, 881f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1794f, -1865f, -391f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(396f, -2157f, 941f) * vec3<f32>(-932f, 1075f, -616f)), any(global0.xy)))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(var_3.x - var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(764f))) + var_3.x)));
    return global0.x;
}

fn func_1(arg_0: vec2<u32>) -> vec3<u32> {
    let var_0 = Struct_1(all(vec2<bool>(global0.x | (global0.x != true), false)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, max(~1414u, abs(25137u)), ~arg_0.x), ~(~vec3<u32>(arg_0.x, u_input.a.x, 15114u))), u_input.a.x ^ 29983u);
    let var_1 = -_wgslsmith_mod_vec2_i32(vec2<i32>(abs(u_input.b), -_wgslsmith_dot_vec4_i32(vec4<i32>(-47873i, u_input.b, -24851i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), vec2<i32>(reverseBits(func_2(vec3<bool>(var_0.a, global0.x, true), var_0.b.xy)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 16651i), vec2<i32>(-10424i, u_input.b)), firstLeadingBit(vec2<i32>(u_input.b, 1i)))));
    let var_2 = Struct_2(select(vec3<i32>(_wgslsmith_sub_i32(~1i, _wgslsmith_sub_i32(-15978i, var_1.x)), abs(~(-28965i)), ~(~u_input.b)), vec3<i32>(u_input.b, -2147483647i, _wgslsmith_sub_i32(var_1.x ^ var_1.x, _wgslsmith_mult_i32(var_1.x, 19538i))), !var_0.a), 0i);
    var var_3 = Struct_3(~(countOneBits(~u_input.a.x) ^ 60976u));
    var var_4 = vec2<bool>(!(!(var_0.a && false)), !global0.x);
    return vec3<u32>(~0u, var_3.a << (var_0.c % 32u), min(select(u_input.a.x, 74737u, func_3(Struct_2(vec3<i32>(var_2.a.x, var_2.b, 87045i), 25248i))), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(min(-vec3<i32>(u_input.b, 29380i, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(u_input.b, u_input.b, -25116i))) << (func_1(u_input.a) % vec3<u32>(32u))), _wgslsmith_sub_i32(u_input.b, _wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(-15990i, 1i, u_input.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.b), vec3<i32>(u_input.b, 1i, u_input.b)) & -vec3<i32>(-15229i, 41395i, -1i))));
    let var_1 = Struct_1(!func_3(Struct_2(-var_0.a, var_0.b << (u_input.a.x % 32u))), vec3<u32>(3818u, _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(~29076u, 1u)), countOneBits(u_input.a.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(6309u, 87915u), u_input.a), vec2<u32>(u_input.a.x << (u_input.a.x % 32u), ~1u)), 40468u));
    var var_2 = 1i;
    var var_3 = 0u;
    var_2 = reverseBits(_wgslsmith_mult_i32(var_0.a.x, 1i));
    var_3 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~var_1.b.yz, u_input.a), 4294967295u >> (var_1.b.x % 32u));
    let var_4 = var_1;
    var_3 = 7641u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(firstLeadingBit(7667i), var_0.a.x & -1i), -1i), reverseBits(u_input.b)), 8892u, -63172i & u_input.b, var_1.b.yy, _wgslsmith_f_op_f32(1f + 534f));
}

