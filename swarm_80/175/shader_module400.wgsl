struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = arg_0;
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 9u)];
    var var_2 = Struct_1(vec2<bool>(u_input.a >= (1u & u_input.a), !all(select(var_1.a, vec2<bool>(var_1.a.x, arg_0.a.x), false))), -_wgslsmith_mod_i32(max(arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1, arg_1), vec3<i32>(arg_1, -7881i, -2147483647i))), 1i));
    let var_3 = Struct_2(vec2<bool>(~0i <= ~u_input.b, var_1.a.x));
    var_2 = var_0;
    return var_0.b;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1120f), _wgslsmith_f_op_f32(step(2876f, 158f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1293f * 482f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(516f, 304f))) + vec2<f32>(-1298f, 515f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-865f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1230f, -762f) - vec2<f32>(-325f, -1000f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -189f))) - _wgslsmith_f_op_f32(-var_0.x)));
    var_1 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x * var_0.x));
    var var_2 = !all(select(select(vec3<bool>(false, arg_0, arg_1.a.x), vec3<bool>(arg_0, true, true), vec3<bool>(false, arg_0, true)), vec3<bool>(true, arg_0, arg_1.a.x), var_0.x > var_0.x)) == !(arg_1.a.x || arg_1.a.x);
    var var_3 = Struct_2(!vec2<bool>(any(!vec3<bool>(arg_0, true, arg_0)), arg_0));
    return 61975u;
}

fn func_1() -> u32 {
    var var_0 = u_input.a;
    let var_1 = abs(vec3<u32>(34491u ^ func_3(true, global0[_wgslsmith_index_u32(abs(u_input.a), 9u)], func_2(Struct_1(vec2<bool>(true, false), 7722i), -29526i)), ~_wgslsmith_mult_u32(u_input.a & 1u, 1u), 4294967295u));
    return 1u | firstTrailingBit(~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 9>();
    var var_0 = ~vec2<u32>(firstTrailingBit(countOneBits(~1u)), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(51189u, 25336u), vec2<u32>(56295u, 169205u))));
    let var_1 = u_input.a;
    var_0 = _wgslsmith_sub_vec2_u32(select(vec2<u32>(func_1(), ~0u), reverseBits(abs(max(vec2<u32>(var_0.x, u_input.a), vec2<u32>(var_1, 4294967295u)))), !any(vec4<bool>(false, true, false, false)) & false), vec2<u32>(_wgslsmith_mod_u32(~var_1 ^ _wgslsmith_dot_vec3_u32(vec3<u32>(3579u, var_1, 23569u), vec3<u32>(19612u, 80035u, var_0.x)), 4294967295u), firstTrailingBit(1u << (1u % 32u)) & var_1));
    var var_2 = global0[_wgslsmith_index_u32(var_1, 9u)];
    global0 = array<Struct_2, 9>();
    var var_3 = min(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_1, var_0.x, var_0.x), firstLeadingBit(vec4<u32>(33193u, var_0.x, 0u, u_input.a)))), _wgslsmith_add_u32(~38742u | var_0.x, ~12357u)) >> (3913u % 32u);
    var var_4 = Struct_1(!var_2.a, 15673i);
    var var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f + -1149f) - _wgslsmith_f_op_f32(step(220f, 1000f))) - 1f)), countOneBits(-var_4.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(min(-2227f, -1258f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(165f, -360f))))), max(_wgslsmith_sub_vec4_u32(vec4<u32>(~var_0.x, abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.x, var_1, 1u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 35258u)), 1u), select(firstLeadingBit(vec4<u32>(var_1, u_input.a, var_1, var_0.x)), vec4<u32>(0u, 63654u, 4294967295u, 27965u) << (vec4<u32>(6222u, 12595u, var_0.x, 30813u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true))), vec4<u32>(u_input.a >> (1u % 32u), 1u, firstLeadingBit(u_input.a), abs(u_input.a)) >> ((reverseBits(vec4<u32>(14043u, u_input.a, 0u, 28874u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_1, u_input.a, u_input.a), vec4<u32>(var_0.x, u_input.a, 32576u, var_1)) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 5645i), countOneBits(vec2<i32>(var_4.b, 2147483647i))) ^ 1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(var_4.b, i32(-1i) * -1i), _wgslsmith_mult_i32(var_4.b, 0i | u_input.b))));
}

