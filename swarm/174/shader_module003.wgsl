struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
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

var<private> global0: vec3<bool>;

var<private> global1: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> f32 {
    global0 = select(!(!(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), true))), vec3<bool>(true, false, !global0.x), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 78561u, 46433u, 65985u), vec4<u32>(4228u, 4294967295u, 4294967295u, 1u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 26740u, 0u, 4294967295u), vec4<u32>(0u, 84987u, 4294967295u, 1u))) >= ~9857u);
    var var_0 = ~(~4294967295u) << (0u % 32u);
    var_0 = 11342u;
    var var_1 = firstLeadingBit(0u);
    return _wgslsmith_f_op_f32(263f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1545f, -3681f, global0.x))) * -431f))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = arg_0.a;
    global1 = false;
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, 22819u), vec2<u32>(countOneBits(arg_0.a), _wgslsmith_clamp_u32(~0u, 1u, _wgslsmith_add_u32(arg_0.a, arg_0.a)))), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, 4294967295u), vec2<u32>(arg_0.a, 4294967295u))) | (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a, 26583u), vec2<u32>(arg_0.a, arg_0.a))) << (vec2<u32>(arg_0.a, ~7976u) % vec2<u32>(32u))));
    global0 = vec3<bool>(false || any(!vec3<bool>(true, global0.x, true)), false, !any(vec2<bool>(global0.x, global0.x)) != !all(vec3<bool>(global0.x, global0.x, true)));
    global1 = all(!vec3<bool>(global0.x, any(vec4<bool>(global0.x, false, global0.x, true)) && false, u_input.a.x >= 38492i));
    return _wgslsmith_mod_u32(arg_0.a, ~1u);
}

fn func_1() -> bool {
    global1 = all(!(!select(!vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, false, global0.x), global0.x)));
    let var_0 = _wgslsmith_f_op_f32(func_2());
    global1 = !select(global0.x, true, 1u < ~firstTrailingBit(10581u));
    let var_1 = Struct_1(func_3(Struct_1(0u, ~u_input.a.x, ~u_input.b), var_0) | _wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_clamp_u32(firstTrailingBit(43199u), 0u, ~35798u)), u_input.c, max(reverseBits(u_input.c), -24944i));
    global1 = global0.x;
    return !select(any(vec4<bool>(true, true, true, true)), global0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(!vec3<bool>(false, true, global0.x), vec3<bool>(true, global0.x, global0.x), global0.x)) && func_1();
    let var_1 = global0.xz;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, -1264f, 136f, -539f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2017f, -1000f, 1058f, -149f))))))), Struct_1(~1u, 2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c & u_input.c, _wgslsmith_sub_i32(u_input.c, u_input.c)), firstLeadingBit(-u_input.a.x))), Struct_1(_wgslsmith_mult_u32(1u, ~1u), ~(-14663i), 2147483647i));
    var var_3 = Struct_1(1u, min(-_wgslsmith_mult_i32(-44613i, -23229i) & _wgslsmith_dot_vec4_i32(u_input.a & u_input.a, ~u_input.a), _wgslsmith_sub_i32(u_input.c, 10738i) >> (4294967295u % 32u)), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, u_input.c) ^ u_input.a.xz, ~vec2<i32>(~40287i, -3072i << (var_2.b.a % 32u))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - -1101f)), var_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b);
}

