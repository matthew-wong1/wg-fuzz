struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1000f, 791f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = 0u;
    var var_1 = Struct_4(!(!any(vec2<bool>(true, true))), 1u, _wgslsmith_mod_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, var_0, var_0) >> (vec3<u32>(u_input.a.x, var_0, var_0) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(43882u, 0u, var_0), vec3<u32>(u_input.a.x, 24210u, var_0))), ~select(vec3<u32>(u_input.a.x, 55548u, 1u), vec3<u32>(var_0, 0u, u_input.a.x), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), firstLeadingBit(max(vec3<u32>(u_input.a.x, var_0, u_input.a.x), vec3<u32>(17871u, 4294967295u, 1u)) >> (vec3<u32>(u_input.a.x, 98550u, u_input.a.x) % vec3<u32>(32u)))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.a * vec2<f32>(global1.a.x, global1.a.x)), _wgslsmith_f_op_vec2_f32(-global1.a))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.x)) + -1778f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 445f)))));
    var var_2 = false;
    let var_3 = !(!(!vec4<bool>(var_1.a, true, true, !var_1.a)));
    return _wgslsmith_clamp_i32(u_input.c, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b, u_input.b), vec3<i32>(-2147483647i, -34471i, u_input.b)), ~u_input.b), u_input.b), countOneBits(-abs(u_input.c)));
}

fn func_2() -> u32 {
    global0 = array<Struct_3, 6>();
    let var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(global1.a.x)), global1.a.x)), max(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.c, u_input.c, -3588i)), vec3<i32>(u_input.b, u_input.c, u_input.b)), vec3<i32>(~(-61515i), func_3(), 1i)) >> (~max(~vec3<u32>(4294967295u, 68881u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(global1.a)), global1.a)), global1.a))), select(select(~vec4<u32>(u_input.a.x, 0u, 118710u, u_input.a.x), ~select(vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 31299u, 1u), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, true, true)), _wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 19159u, 6612u, 28802u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), ~vec4<u32>(u_input.a.x, 77142u, u_input.a.x, u_input.a.x)), true || all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    let var_1 = 1i;
    var var_2 = var_0.b.zy;
    var var_3 = ~1i;
    return max(0u, var_0.d.x ^ _wgslsmith_div_u32(u_input.a.x, u_input.a.x));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global0 = array<Struct_3, 6>();
    var var_0 = true;
    var_0 = false;
    var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, -max(arg_0.b.b.x, 0i)), -2147483647i) != u_input.c;
    var var_1 = Struct_4(true, func_2(), firstLeadingBit(vec3<u32>(~u_input.a.x, 39389u, u_input.a.x)));
    return Struct_2(arg_0.b.a, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, arg_0.b.b.x), vec2<i32>(arg_0.b.b.x, 1i)), 2147483647i), u_input.c, ~_wgslsmith_clamp_i32(u_input.b, _wgslsmith_dot_vec3_i32(arg_0.b.b, vec3<i32>(u_input.c, 28544i, 2147483647i)), ~u_input.b)), arg_0.b.c, vec4<u32>(var_1.b, ~(~44073u) | ~arg_0.b.d.x, ~_wgslsmith_mod_u32(~73809u, ~arg_0.b.d.x), arg_0.b.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, global1.a.x, global1.a.x))))))), func_1(global0[_wgslsmith_index_u32(u_input.a.x, 6u)]));
    var var_1 = Struct_4(true, var_0.b.d.x, vec3<u32>(max(var_0.b.d.x, func_2()), var_0.b.d.x, _wgslsmith_dot_vec4_u32(var_0.b.d, ~vec4<u32>(var_0.b.d.x, var_0.b.d.x, 0u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~34363u);
}

