struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> vec2<i32> {
    let var_0 = 1u;
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    var var_1 = firstTrailingBit(_wgslsmith_clamp_u32(~var_0, countOneBits(var_0 << (_wgslsmith_add_u32(61038u, var_0) % 32u)), var_0));
    return abs(min(vec2<i32>(31949i, ~u_input.a), select(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 515i)), vec2<i32>(2147483647i, 57791i) | _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(1i, -14747i)), true)));
}

fn func_3() -> vec3<i32> {
    return _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(-vec3<i32>(20176i, 2147483647i, u_input.a)), -max(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(-2147483647i, 33966i, u_input.a)), ~vec3<i32>(u_input.a, -2147483647i, -12942i))), vec3<i32>(~_wgslsmith_clamp_i32(abs(u_input.a), _wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_add_i32(68110i, 1i)), -firstTrailingBit(u_input.a), -16025i));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    let var_0 = arg_1.wzx;
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    var var_1 = vec3<i32>(0i, 0i << (select(38499u, _wgslsmith_add_u32(4294967295u, var_0.x), false) % 32u), u_input.a ^ -20223i) & ((vec3<i32>(_wgslsmith_add_i32(arg_0.b, arg_0.b), firstLeadingBit(arg_0.b), arg_0.c << (arg_1.x % 32u)) ^ func_3()) & vec3<i32>(-1i, ~(23494i << (var_0.x % 32u)), arg_0.c));
    var_1 = vec3<i32>(7659i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~(-var_1.xz), vec2<i32>(26539i, ~arg_0.c)), _wgslsmith_add_i32(u_input.a, arg_0.b)), ~(-1i));
    return any(vec3<bool>(true, true, true)) || !(all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))) | true);
}

fn func_4(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-550f))) * _wgslsmith_f_op_f32(select(-114f, _wgslsmith_f_op_f32(f32(-1f) * -254f), all(!vec2<bool>(arg_0, true))))) + 910f);
    let var_1 = Struct_5(true, !(!vec2<bool>(any(vec3<bool>(false, false, arg_0)), any(vec2<bool>(true, arg_0)))), 579f, !arg_0, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -1224f))), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, u_input.a), ~(-1i)), u_input.a | _wgslsmith_sub_i32(-2147483647i, -11105i))));
    var var_2 = max(-17309i, firstTrailingBit(-3765i));
    let var_3 = Struct_3(vec3<u32>(1u, 1u, 1u), !var_1.d);
    var var_4 = _wgslsmith_div_u32(var_3.a.x, var_3.a.x);
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~func_1());
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-470f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -164f))))));
    global0 = array<vec4<i32>, 22>();
    var_1 = 409f;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -775f);
    var var_2 = func_4(all(!vec2<bool>(func_2(Struct_1(1201f, u_input.a, u_input.a), vec4<u32>(1301u, 1884u, 63693u, 4267u)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(select(select(global0[_wgslsmith_index_u32(90235u, 22u)], global0[_wgslsmith_index_u32(64021u, 22u)], vec4<bool>(false, false, true, false)), global0[_wgslsmith_index_u32(0u, 22u)] << (vec4<u32>(0u, 44460u, 52862u, 17211u) % vec4<u32>(32u)), false)), vec4<i32>(19034i, ~1i, var_0.x, 1i)));
}

