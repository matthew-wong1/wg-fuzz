struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32 = 1341f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> vec2<u32> {
    let var_0 = ~vec4<u32>(firstTrailingBit(30193u), 1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, min(u_input.a, 1u)), ~(~67557u)), abs(_wgslsmith_clamp_u32(0u, ~u_input.a, ~u_input.a)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1356f) * -159f);
    var var_1 = var_0.x;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1513f + global0.x), _wgslsmith_f_op_f32(f32(-1f) * -674f))))));
    var_1 = ~(_wgslsmith_mult_u32(var_0.x, 4294967295u) | 4294967295u);
    return var_0.xy;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(626f, global0.x, arg_2.a.x)) - 952f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)));
    let var_1 = ~select(~max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 89873u, 1u, u_input.a), vec4<u32>(117330u, 1u, 0u, 79599u)), _wgslsmith_add_vec4_u32(vec4<u32>(21823u, 4294967295u, 91812u, 96227u), vec4<u32>(48490u, u_input.a, u_input.a, 65579u))), ~countOneBits(select(vec4<u32>(4294967295u, u_input.a, 60412u, 1u), vec4<u32>(u_input.a, 2679u, u_input.a, 0u), vec4<bool>(false, arg_2.a.x, arg_1.x, arg_1.x))), vec4<bool>(all(vec3<bool>(arg_2.a.x, false, false)), arg_2.a.x, any(arg_1), false));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(313f)))))));
    var var_2 = global0.x;
    var_0 = 1025f;
    return arg_2.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(min(u_input.b.x, ~(i32(-1i) * -1i)), ~(-2147483647i));
    var var_1 = false;
    var var_2 = _wgslsmith_sub_i32(-_wgslsmith_mult_i32(_wgslsmith_add_i32(var_0, -var_0), -1i), 27229i);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-733f * _wgslsmith_f_op_f32(-global0.x)), global0.x)) * vec4<f32>(1994f, 127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-994f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -837f) * -1477f)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global0.x, global0.x)))), 193f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-u_input.b, select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), Struct_2(vec3<bool>(false, true, true), global0.zyx, 42628i)))))));
    return Struct_1(~(_wgslsmith_add_u32(u_input.a, u_input.a) & min(min(u_input.a, u_input.a), ~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(abs(u_input.a), ~103866u));
    var var_1 = Struct_3(u_input.c.x >> (var_0.a % 32u));
    var var_2 = _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(countOneBits(29374u), var_0.a)), ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.a, 149u)), ~vec2<u32>(1u, u_input.a)), func_1());
    var var_3 = func_2();
    var var_4 = Struct_2(vec3<bool>(true, true, true), global0.zzy, i32(-1i) * -2147483647i);
    global1 = var_4.b.x;
    var_4 = Struct_2(select(select(var_4.a, !vec3<bool>(var_4.a.x, true, true), vec3<bool>(var_4.a.x, true, false)), vec3<bool>(true, true, true), false), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.x)) - 1000f), -1000f, _wgslsmith_f_op_f32(round(global0.x))), -15771i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.x * 353f)), _wgslsmith_f_op_f32(f32(-1f) * -1596f), global0.x)), vec3<f32>(-839f, var_4.b.x, _wgslsmith_f_op_f32(-1707f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) + -1090f))), 27969i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2526f), -869f)))));
}

