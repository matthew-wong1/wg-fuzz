struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = vec2<f32>(1f, 1f);
    let var_1 = select(u_input.d, _wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(abs(1u), _wgslsmith_mod_u32(u_input.b & u_input.b, u_input.a ^ u_input.d.x), 0u, ~firstTrailingBit(u_input.c))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)));
    var var_2 = _wgslsmith_sub_i32(~(~min(-35991i, countOneBits(1i))), countOneBits(max(-_wgslsmith_clamp_i32(-47442i, -11880i, 44031i), reverseBits(abs(-1i)))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1601f, 1379f))), vec2<bool>(true, true)))), vec2<f32>(-214f, var_0.x));
    var var_3 = u_input.d.x & 31665u;
    return _wgslsmith_mult_i32(1i, 0i);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    var var_0 = min(-1i << (_wgslsmith_clamp_u32(~(arg_3.b.a.x & 0u), min(~arg_3.b.a.x, 8129u), _wgslsmith_sub_u32(reverseBits(arg_3.b.a.x), firstTrailingBit(4294967295u))) % 32u), arg_3.a);
    var_0 = _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_2.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1, -1i), ~vec2<i32>(arg_2.a, 25178i))), 1i) >> ((countOneBits(34487u) | ((_wgslsmith_clamp_u32(16054u, arg_3.b.a.x, arg_3.b.a.x) ^ 1u) & firstTrailingBit(arg_3.b.a.x >> (arg_0 % 32u)))) % 32u);
    let var_1 = -1248f;
    let var_2 = max(-(-1i << (1u % 32u)), ~(~(reverseBits(-2399i) ^ arg_1)));
    var var_3 = arg_3.b.a.yx;
    return 2147483647i;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_div_vec2_u32(u_input.d.xz & select(vec2<u32>(u_input.a, 47221u), ~(u_input.d.xx | u_input.d.yw), true), ~(~(vec2<u32>(u_input.b, 0u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(min(u_input.d.xz, u_input.d.xy), vec2<u32>(17740u, 16261u)) % vec2<u32>(32u))));
    let var_1 = Struct_3(func_4(var_0.x, ~(i32(-1i) * -40669i), Struct_2(func_3() | _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -32196i, 0i), vec3<i32>(1i, 2147483647i, 38797i))), Struct_3(~1i, Struct_1(firstLeadingBit(vec3<u32>(var_0.x, u_input.d.x, 18085u))))), Struct_1(vec3<u32>(1u << (var_0.x % 32u), _wgslsmith_mult_u32(~u_input.d.x, _wgslsmith_sub_u32(var_0.x, 4294967295u)), _wgslsmith_add_u32(~u_input.b, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)))));
    var var_2 = max(vec4<i32>(func_3(), func_3(), -26760i, -24628i), vec4<i32>(15589i, var_1.a, -var_1.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-96546i ^ var_1.a, ~12725i), firstTrailingBit(43138i))));
    var_2 = ~_wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(-1i, var_1.a), var_1.a, ~var_2.x, var_1.a), max(select(vec4<i32>(var_1.a, var_1.a, -634i, -2147483647i), -vec4<i32>(var_2.x, 1i, var_1.a, -1i), vec4<bool>(true, true, true, true)), vec4<i32>(~0i, -var_2.x, abs(0i), -var_2.x)));
    let var_3 = firstLeadingBit(_wgslsmith_div_vec4_u32(~u_input.d, min(abs(vec4<u32>(u_input.b, 28965u, var_1.b.a.x, var_1.b.a.x)), vec4<u32>(27536u, 14886u, 0u, u_input.b)) >> (~(~u_input.d) % vec4<u32>(32u))));
    return reverseBits(~37037i);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<f32> {
    var var_0 = true;
    var_0 = arg_2.x;
    var_0 = !any(vec2<bool>(arg_2.x, func_3() == -2147483647i));
    var_0 = true;
    let var_1 = Struct_1(arg_1.a);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1827f), _wgslsmith_f_op_f32(f32(-1f) * -102f)) - -368f), -329f);
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1384f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1723f - -1395f), _wgslsmith_f_op_f32(abs(-521f)))))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_add_i32(~(-7174i), func_2()) > (-2147483647i >> (~u_input.d.x % 32u)), Struct_1(vec3<u32>(u_input.d.x, reverseBits(u_input.b), u_input.c)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), 85442u > u_input.a))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1115f, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 52287u;
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1()))));
    let var_2 = ~(~(vec2<i32>(~1i, 1i) >> (~(u_input.d.ww ^ u_input.d.wy) % vec2<u32>(32u))));
    var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-var_1.a));
    let var_3 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0, var_0), reverseBits(vec3<u32>(0u, 4294967295u, 14316u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(1u, 42337u, u_input.a), vec3<u32>(1u, 88933u, 40311u))), max(min(~vec3<u32>(u_input.b, 55715u, var_0), _wgslsmith_div_vec3_u32(u_input.d.zxz, vec3<u32>(u_input.d.x, 1u, var_0))), vec3<u32>(_wgslsmith_mod_u32(var_0, var_0), 1u, u_input.c << (12897u % 32u))));
    var var_4 = -_wgslsmith_sub_i32(max(i32(-1i) * -2147483647i, 0i), var_2.x);
    var_4 = ~(-_wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(func_2(), func_3())));
    var var_5 = Struct_2(var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~(~_wgslsmith_mult_vec2_u32(u_input.d.ww, vec2<u32>(7564u, 29346u))), select(u_input.d.xx, _wgslsmith_add_vec2_u32(abs(u_input.d.zw), firstLeadingBit(vec2<u32>(var_3, u_input.d.x))), vec2<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) * var_1.a) * var_1.a))))), var_1.a.x, countOneBits(-1i));
}

