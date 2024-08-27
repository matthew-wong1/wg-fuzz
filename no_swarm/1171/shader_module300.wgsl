struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<f32>(-819f, 2090f, 190f, 255f)), Struct_1(vec4<f32>(-701f, 819f, 1108f, -612f)), Struct_1(vec4<f32>(2305f, -885f, -1000f, 756f)), Struct_1(vec4<f32>(-1000f, -573f, -1869f, -928f)), Struct_1(vec4<f32>(-1510f, 271f, -176f, -1769f)), Struct_1(vec4<f32>(634f, 328f, -1704f, 2073f)), Struct_1(vec4<f32>(-337f, -1000f, -1000f, 1056f)));

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> f32 {
    let var_0 = u_input.a;
    let var_1 = abs(5193i);
    global0 = array<Struct_1, 7>();
    global1 = global0[_wgslsmith_index_u32(u_input.c.x, 7u)];
    let var_2 = vec2<bool>(true, true);
    return _wgslsmith_f_op_f32(f32(-1f) * -1291f);
}

fn func_1() -> Struct_2 {
    var var_0 = ~2986u | u_input.b;
    var_0 = ~u_input.c.x;
    var var_1 = Struct_1(global1.a);
    var var_2 = _wgslsmith_f_op_f32(1000f - global1.a.x);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - var_1.a.x));
    return Struct_2(_wgslsmith_clamp_u32(u_input.c.x, abs(u_input.c.x), ~u_input.b), global0[_wgslsmith_index_u32(4294967295u, 7u)], !vec3<bool>(false, 1i < min(u_input.a, u_input.a), u_input.a <= -2147483647i));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> StorageBuffer {
    global1 = Struct_1(vec4<f32>(1594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(arg_2.b.a.x - 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.a.x * global1.a.x) * -3304f)))));
    let var_0 = _wgslsmith_mod_i32(-u_input.a ^ _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i))), firstLeadingBit(abs(vec4<i32>(-44593i, u_input.a, -1i, u_input.a)))), 48109i);
    let var_1 = arg_2;
    let var_2 = !select(!arg_2.c, select(select(var_1.c, var_1.c, arg_2.c.x), select(var_1.c, select(vec3<bool>(true, true, arg_2.c.x), arg_0.yyx, arg_2.c), !arg_2.c), !var_1.c), !vec3<bool>(arg_0.x, 0i <= var_0, !arg_2.c.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-383f * global1.a.x), arg_2.b.a.x, _wgslsmith_f_op_f32(1f + 1019f), _wgslsmith_f_op_f32(abs(-2323f)))));
    return StorageBuffer(vec3<i32>(-1i) * -abs(vec3<i32>(1i, var_0, 56638i) ^ vec3<i32>(u_input.a, -1i, 0i)), _wgslsmith_div_u32(reverseBits(~arg_1.x), abs(_wgslsmith_add_u32(4294967295u, arg_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(!vec4<bool>(true, 0i <= _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a)), false, true), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, ~u_input.c.x), vec2<u32>(u_input.c.x, min(~u_input.b, ~0u))), func_1());
}

