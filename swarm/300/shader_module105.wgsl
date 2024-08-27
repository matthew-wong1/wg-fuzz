struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_div_i32(arg_0.a, global0.a & 0i);
    global0 = arg_0;
    var_0 = 0i;
    let var_1 = Struct_2(-arg_0.a, 1u, Struct_1(select(arg_0.c.a, ~vec4<u32>(56693u, arg_0.b, 4294967295u, global0.b), arg_3)));
    global0 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1023f, 748f));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(2147483647i, u_input.a.x, global0.c), Struct_2(u_input.c, 4864u, Struct_1(global0.c.a)), 4294967295u ^ global0.b, vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(494f)) * _wgslsmith_div_f32(366f, -1000f)))), -1567f));
    var var_1 = Struct_2(~countOneBits(_wgslsmith_mod_i32(-27535i, u_input.c & u_input.c)), global0.b, global0.c);
    global0 = Struct_2(min(~(var_1.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 7741u), global0.c.a.yx) % 32u)), ~(-1i)), global0.b, Struct_1(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(global0.c.a.x, 11091u, global0.b, 4294967295u) << (global0.c.a % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(global0.c.a.yzw, var_1.c.a.yzy), var_1.b, reverseBits(0u), 79849u))));
    let var_2 = global0.c;
    var var_3 = vec4<bool>(true, select(true, true, _wgslsmith_f_op_f32(f32(-1f) * -664f) > _wgslsmith_div_f32(var_0, -855f)) && true, true, u_input.c > global0.a);
    return Struct_2(_wgslsmith_add_i32(54315i, u_input.c), _wgslsmith_clamp_u32(reverseBits(7877u), u_input.b, reverseBits(1u)), var_1.c);
}

fn func_1(arg_0: u32, arg_1: i32) -> vec2<f32> {
    global0 = func_2();
    let var_0 = select(select(vec3<bool>(42816u != u_input.a.x, false, select(any(vec3<bool>(false, false, true)), true, true)), vec3<bool>(true, true, true), false), !select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), 0u <= u_input.b), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), arg_0 < global0.c.a.x), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), false)), !vec3<bool>(select(false, true, true) & select(false, true, true), all(vec4<bool>(false, true, false, false)), true || any(vec4<bool>(false, false, true, false))));
    let var_1 = func_2();
    var var_2 = true;
    var var_3 = -min(~arg_1, var_1.a);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(426f, -2227f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(173f, -1097f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(329f, 499f), vec2<f32>(565f, 1509f)))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-385f, 395f))) - vec2<f32>(1f, 1f)), vec2<f32>(-250f, -1000f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(221f, -1000f)))))))));
}

fn func_4(arg_0: vec2<f32>) -> f32 {
    global0 = func_2();
    var var_0 = Struct_2(abs(u_input.c), ~8723u, Struct_1(_wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(0u, 4294967295u, 22325u, 89475u)), countOneBits(vec4<u32>(37213u, 20330u, 6791u, u_input.b) | global0.c.a), abs(vec4<u32>(u_input.b, global0.c.a.x, u_input.a.x, 44449u)) ^ vec4<u32>(7424u, global0.b, u_input.a.x, 78420u))));
    var_0 = Struct_2(0i, ~(~(~(global0.b & 0u))), func_2().c);
    var var_1 = -333f;
    var var_2 = -vec4<i32>(max(global0.a ^ var_0.a, global0.a) ^ ~(-13768i), -(_wgslsmith_clamp_i32(global0.a, global0.a, -12604i) & -1i), 1i, global0.a);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1076f * _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_clamp_u32(u_input.b, ~17789u, ~max(51270u, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -35069i, -26258i), vec3<i32>(-2147483647i, global0.a, -2147483647i))), vec2<i32>(_wgslsmith_mult_i32(global0.a, u_input.c), min(1i, u_input.c)))))));
    global0 = func_2();
    let var_1 = global0.b;
    let var_2 = (_wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(-35322i), global0.a, global0.a, u_input.c >> (u_input.a.x % 32u)), _wgslsmith_mod_vec4_i32(~vec4<i32>(global0.a, 17821i, u_input.c, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 1i, 0i, -84733i), vec4<i32>(2147483647i, 64681i, global0.a, u_input.c)))) & abs(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, u_input.c, -38239i, -16237i), vec4<i32>(u_input.c, global0.a, 2147483647i, -10178i))))) & ~(-vec4<i32>(global0.a, _wgslsmith_clamp_i32(-11228i, 1i, u_input.c), 2147483647i, -u_input.c));
    var var_3 = select(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)))), (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(global0.c.a.x, global0.b)) != _wgslsmith_div_u32(global0.b, global0.b)) & true), !select(vec4<bool>(false, true, var_0 > var_0, true), vec4<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, false)), false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)))), true);
    var var_4 = vec3<i32>(-1i, ~1i, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~abs(abs(global0.c.a.zwz))));
}

