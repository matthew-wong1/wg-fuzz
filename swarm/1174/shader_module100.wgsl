struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

var<private> global2: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(2374f), Struct_4(-241f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    var var_0 = !select(vec2<bool>(false, !all(vec3<bool>(true, false, true))), select(vec2<bool>(select(false, true, true), false), vec2<bool>(true, true), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))), true);
    var var_1 = Struct_1(_wgslsmith_div_u32(u_input.b.x | u_input.a, ~min(abs(u_input.b.x), u_input.a)), ~u_input.b.x, 1f, -1000f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * var_1.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.d * var_1.c), _wgslsmith_f_op_f32(-460f - -334f)))) - -1535f));
    return select(vec3<bool>(all(!vec3<bool>(var_0.x, true, var_0.x)) && (u_input.c.x >= -1i), !var_0.x, false | !any(vec2<bool>(true, true))), !select(vec3<bool>(true, !var_0.x, var_0.x), !(!vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(false, all(vec4<bool>(false, var_0.x, var_0.x, false)), true && var_0.x)), !vec3<bool>(any(!vec3<bool>(var_0.x, true, var_0.x)), var_0.x, !var_0.x));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    global2 = array<Struct_4, 2>();
    let var_0 = Struct_3(!func_3(), arg_2, Struct_2(!(_wgslsmith_f_op_f32(arg_2 + arg_2) > _wgslsmith_f_op_f32(-arg_2)), arg_1.wyx), Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), abs(~(~arg_1.xwy))));
    let var_1 = Struct_3(!var_0.a, var_0.b, Struct_2(var_0.c.a, max(arg_1.wzx, ~arg_1.yyx)), Struct_2(true, vec3<u32>(16914u, u_input.a, ~select(arg_1.x, arg_1.x, var_0.c.a))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-929f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b))))))));
    var var_3 = var_1.c.a & var_1.a.x;
    return var_2.a;
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    var var_0 = -vec3<i32>(u_input.c.x, max(_wgslsmith_dot_vec2_i32(vec2<i32>(-43113i, u_input.c.x), u_input.c) ^ u_input.c.x, u_input.c.x), ~1i);
    var_0 = countOneBits(select(~min(vec3<i32>(-1i, u_input.c.x, 1i), vec3<i32>(-1i, u_input.c.x, var_0.x)) | ~vec3<i32>(49477i, u_input.c.x, -932i), -vec3<i32>(18179i, 1i, _wgslsmith_sub_i32(0i, u_input.c.x)), true));
    var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(~0i, 19738i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -47966i, var_0.x, u_input.c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, var_0.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -2147483647i, 42873i, 1i), vec4<i32>(u_input.c.x, 20249i, 0i, var_0.x))), -555i)), reverseBits(abs(firstLeadingBit(vec3<i32>(2147483647i, 0i, var_0.x)))) >> (~reverseBits(vec3<u32>(0u, u_input.a, 4294967295u)) % vec3<u32>(32u)));
    return global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~(~reverseBits(0u)), arg_0.a >> (arg_0.a % 32u)), 2u)];
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    global1 = arg_2.x;
    var var_0 = func_4(Struct_1(~(~min(u_input.b.x, u_input.b.x)), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -979f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(-53569i, vec4<u32>(u_input.a, 54366u, 20915u, u_input.b.x), 770f))))), -116f));
    let var_1 = Struct_1(0u, u_input.b.x, var_0.a, -474f);
    var_0 = arg_0;
    var var_2 = vec4<i32>(max(-max(min(arg_2.x, u_input.c.x), countOneBits(-20277i)), arg_2.x), u_input.c.x, 2147483647i, _wgslsmith_add_i32(~(i32(-1i) * -32847i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, 2147483647i), u_input.c.x << (23105u % 32u))));
    return _wgslsmith_sub_u32(var_1.b, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(37263u, var_1.b, u_input.a), vec3<u32>(31680u, u_input.a, var_1.b))), u_input.b, vec2<u32>(~1u, ~4593u)), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = max(vec4<u32>(~4294967295u, firstTrailingBit(4294967295u), 678u, u_input.a), vec4<u32>(~firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 1u)), 116866u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(3741u, 4294967295u) & vec2<u32>(u_input.a, var_0), _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(var_0, 0u))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), func_1(Struct_4(-1345f), vec2<f32>(568f, 1977f), u_input.c))), ~var_0));
    var var_2 = Struct_2(!(u_input.c.x == -24806i), countOneBits(vec3<u32>(var_0, ~61800u, var_0 ^ 38199u)));
    let var_3 = Struct_4(-134f);
    global1 = _wgslsmith_add_i32(u_input.c.x, ~select(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), ~u_input.c.x), _wgslsmith_sub_i32(~1i, i32(-1i) * -49847i), (var_1.x >= 91147u) || true));
    global2 = array<Struct_4, 2>();
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a))) * var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_add_u32(var_0 ^ 4794u, firstLeadingBit(min(0u, u_input.b.x))), _wgslsmith_mult_u32(1u, 1u)), min(-2147483647i << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 105666u, var_2.b.x), vec3<u32>(u_input.b.x, var_0, 16226u)) % 32u), abs(firstTrailingBit(_wgslsmith_mod_i32(1i, u_input.c.x)))), firstTrailingBit(max(u_input.c.x, ~1i)));
}

