struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(793f, -851f);

var<private> global1: array<vec4<u32>, 18>;

var<private> global2: array<vec2<u32>, 4>;

var<private> global3: vec2<f32> = vec2<f32>(2567f, -465f);

var<private> global4: array<i32, 7>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(vec2<bool>((false == all(vec2<bool>(true, true))) && true, all(vec4<bool>(false, false, false, true)) | select(true, all(vec3<bool>(true, false, false)), true)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(646f, global3.x) * vec2<f32>(544f, 531f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 535f) - vec2<f32>(global3.x, global0.x)), vec2<f32>(870f, -1291f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) - vec2<f32>(-1391f, -1710f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-158f, -196f)))))), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(42891i, global4[_wgslsmith_index_u32(16594u, 7u)]) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 28059u), vec3<u32>(26922u, u_input.c.x, 1u)) % 32u), global4[_wgslsmith_index_u32(0u, 7u)]), min(_wgslsmith_mod_i32(select(-22625i, global4[_wgslsmith_index_u32(u_input.c.x, 7u)], false), _wgslsmith_mult_i32(-4602i, -1i)), _wgslsmith_add_i32(-1i, countOneBits(-29986i)))));
    var var_1 = _wgslsmith_f_op_f32(var_0.b.x * 1080f) <= _wgslsmith_f_op_f32(step(-1283f, _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x)))))));
    var var_2 = 88184u;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global3.x))));
    global2 = array<vec2<u32>, 4>();
    return -954f;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = vec3<bool>(arg_1.a.x, !any(arg_1.a), !any(!select(vec3<bool>(false, arg_1.a.x, false), vec3<bool>(false, arg_1.a.x, arg_1.a.x), false)));
    let var_1 = arg_1;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(288f - -619f), arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(903f, global0.x))))), _wgslsmith_f_op_f32(func_3()), arg_0, 1077f);
    global1 = array<vec4<u32>, 18>();
    var var_3 = Struct_1(!arg_1.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.b + var_2.yz))) - vec2<f32>(_wgslsmith_f_op_f32(abs(-355f)), global3.x)))), select(-_wgslsmith_clamp_i32(var_1.c, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -35683i), _wgslsmith_dot_vec3_i32(vec3<i32>(-29948i, ~(-32406i), max(-47548i, arg_1.c)), ~(-u_input.b)), all(vec3<bool>(!var_0.x, var_1.a.x | var_1.a.x, true))));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1, vec3<u32>(~45809u, 4294967295u, ~countOneBits(firstTrailingBit(u_input.c.x))));
    var var_1 = firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(14293u, arg_0) | vec2<u32>(56789u, u_input.c.x)), ~vec2<u32>(arg_0, arg_0)), ~(~vec2<u32>(arg_0, 4294967295u))));
    var var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(var_0.b));
    let var_4 = arg_3;
    return Struct_1(select(var_0.a, vec2<bool>(func_2(arg_1.b.x, Struct_1(vec2<bool>(false, var_4.a.x), arg_3.b, 2147483647i), u_input.c).a.x & all(vec3<bool>(arg_2.a.x, false, var_0.a.x)), false), any(select(vec3<bool>(true, arg_1.a.x, true), select(vec3<bool>(arg_3.a.x, arg_2.a.x, var_0.a.x), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), 755f <= var_4.b.x))), vec2<f32>(588f, _wgslsmith_f_op_f32(func_3())), -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global2 = array<vec2<u32>, 4>();
    global3 = vec2<f32>(-839f, _wgslsmith_f_op_f32(290f + func_1(_wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(18087u, 4u)], _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 72092u), u_input.c.zx)), Struct_1(arg_2.a, vec2<f32>(arg_1.b.x, -979f), i32(-1i) * -2147483647i), func_1(u_input.c.x, Struct_1(vec2<bool>(false, true), arg_0.b, -19448i), arg_2, arg_0), arg_3).b.x));
    return 10197i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(global4[_wgslsmith_index_u32(21325u, 7u)], 13124i)) ^ -vec2<i32>(17322i, global4[_wgslsmith_index_u32(u_input.c.x, 7u)])));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1180f, global0.x))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.x, 1004f), vec2<f32>(global0.x, 1241f), false)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global3.x)))))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -725f), global0.x));
    var var_1 = vec3<i32>(-1i) * -vec3<i32>(-u_input.a.x, reverseBits(var_0.x) & 7961i, func_4(func_1(37997u, Struct_1(vec2<bool>(true, false), vec2<f32>(global0.x, -1015f), u_input.a.x), Struct_1(vec2<bool>(false, true), vec2<f32>(-291f, global0.x), -8132i), Struct_1(vec2<bool>(false, false), vec2<f32>(global0.x, 2470f), u_input.b.x)), Struct_1(vec2<bool>(true, false), vec2<f32>(global3.x, global0.x), 2147483647i), Struct_1(vec2<bool>(false, false), vec2<f32>(-444f, global0.x), global4[_wgslsmith_index_u32(u_input.c.x, 7u)]), Struct_1(vec2<bool>(false, true), vec2<f32>(-1461f, 514f), 1i)));
    let var_2 = ~reverseBits(_wgslsmith_div_i32(global4[_wgslsmith_index_u32(39782u, 7u)], ~_wgslsmith_dot_vec2_i32(vec2<i32>(-21633i, var_0.x), u_input.a)));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -905f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(489f, global0.x) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.x, global3.x), vec2<f32>(global3.x, global0.x)))) - _wgslsmith_f_op_vec2_f32(func_1(5657u, Struct_1(vec2<bool>(true, false), vec2<f32>(global3.x, global3.x), u_input.a.x), Struct_1(vec2<bool>(true, false), vec2<f32>(global3.x, global3.x), global4[_wgslsmith_index_u32(42953u, 7u)]), Struct_1(vec2<bool>(false, false), vec2<f32>(1540f, global3.x), var_0.x)).b + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-256f, -370f), vec2<f32>(2241f, -178f), true))))));
    global2 = array<vec2<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, -1676f, -869f), vec3<f32>(global3.x, 573f, global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1000f, -519f) * vec3<f32>(-431f, 460f, -163f)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1390f, 213f, global3.x)))))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c & (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) << (vec3<u32>(0u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(u_input.c, ~u_input.c)), vec3<u32>(u_input.c.x, abs(~u_input.c.x), select(~u_input.c.x, 1u, true)), select(u_input.c, abs(~vec3<u32>(4294967295u, u_input.c.x, 0u)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), func_2(global3.x, Struct_1(vec2<bool>(true, true), vec2<f32>(1195f, global3.x), 37320i), vec3<u32>(u_input.c.x, 1u, u_input.c.x)).a.x))));
}

