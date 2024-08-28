struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: array<vec4<i32>, 2>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(reverseBits(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_2.b.x, -42897i), _wgslsmith_div_i32(arg_2.b.x, arg_2.b.x))), abs(29315i)), 2147483647i);
    let var_1 = select(global0.zz, select(vec2<bool>(true, true), vec2<bool>((u_input.b.x << (u_input.b.x % 32u)) >= ~8130u, !global0.x), !vec2<bool>(!global0.x, false)), vec2<bool>(global0.x, !global0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-221f, 524f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(146f, -199f), vec2<f32>(1000f, -1000f)))))));
    global0 = select(select(!vec3<bool>(all(vec4<bool>(var_1.x, global0.x, false, global0.x)), !global0.x, global0.x), !vec3<bool>(true, select(var_1.x, global0.x, global0.x), var_1.x), any(select(select(vec4<bool>(true, global0.x, true, true), vec4<bool>(false, false, var_1.x, var_1.x), global0.x), select(vec4<bool>(var_1.x, false, global0.x, var_1.x), vec4<bool>(false, var_1.x, global0.x, false), true), true))), vec3<bool>(true, global0.x, false), !select(!vec3<bool>(false, true, global0.x), select(!vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(global0.x, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x), true), select(vec3<bool>(global0.x, global0.x, var_1.x), vec3<bool>(true, var_1.x, true), true)), global0.x));
    global1 = array<vec4<i32>, 2>();
    return vec3<u32>(~(_wgslsmith_dot_vec2_u32(min(u_input.b, u_input.b), vec2<u32>(73804u, arg_0)) << (1960u % 32u)), _wgslsmith_mod_u32(25024u, max(4294967295u, _wgslsmith_sub_u32(arg_2.a.x | 17339u, 0u))), arg_0 ^ (4294967295u | _wgslsmith_mult_u32(arg_2.a.x | arg_1, _wgslsmith_add_u32(0u, 1u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: f32) -> f32 {
    let var_0 = reverseBits(firstLeadingBit(arg_0.x ^ abs(-arg_1)));
    var var_1 = Struct_1(max(vec3<u32>(_wgslsmith_div_u32(u_input.d, 1u ^ u_input.b.x), _wgslsmith_mult_u32(~u_input.d, ~u_input.d), u_input.b.x), ~func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.d), vec3<u32>(30728u, 4294967295u, 4294967295u)), 62699u, Struct_1(vec3<u32>(u_input.b.x, 74315u, u_input.d), vec4<i32>(arg_1, arg_1, var_0, arg_0.x)))), u_input.c);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1040f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-263f, arg_2) - -1431f), _wgslsmith_div_f32(-118f, _wgslsmith_div_f32(arg_2, arg_2))))), _wgslsmith_f_op_f32(ceil(-1000f)));
    var var_3 = Struct_2(countOneBits(4294967295u), Struct_1(~(vec3<u32>(var_1.a.x, 39574u, 50983u) >> (vec3<u32>(u_input.b.x, 1u, u_input.b.x) % vec3<u32>(32u))), var_1.b), ~(-26155i), 1u);
    var var_4 = global0.x;
    return 652f;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec4<i32>, 2>();
    let var_0 = _wgslsmith_sub_i32(reverseBits(-1i), u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(-258f, arg_0)))) * vec2<f32>(arg_0, _wgslsmith_f_op_f32(func_2(vec3<i32>(-2147483647i, arg_1.b.x, var_0), -15854i, arg_0)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(1089f, -1724f)), -1595f)))) * vec2<f32>(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f - 138f))))));
    global1 = array<vec4<i32>, 2>();
    let var_2 = arg_1.a.x;
    return Struct_1(~(~vec3<u32>(~0u, 1u, _wgslsmith_mod_u32(var_2, u_input.b.x))), min(min(u_input.c, ~firstLeadingBit(vec4<i32>(var_0, u_input.e.x, u_input.e.x, -11659i))), max(vec4<i32>(~arg_1.b.x, u_input.c.x, 1i, -1i), ~vec4<i32>(2147483647i, var_0, var_0, 23267i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1822f, Struct_1(~vec3<u32>(u_input.d & 62047u, 45825u, 22543u), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(-2806i, u_input.a, -1i, 32679i), vec4<i32>(~u_input.a, ~u_input.e.x, ~(-17021i), 1i))));
    var var_1 = vec4<bool>(_wgslsmith_mult_u32(var_0.a.x >> (_wgslsmith_mod_u32(var_0.a.x, 8946u) % 32u), var_0.a.x) < func_1(_wgslsmith_f_op_f32(f32(-1f) * -1899f), func_1(_wgslsmith_f_op_f32(f32(-1f) * -316f), Struct_1(var_0.a, vec4<i32>(-2147483647i, -5441i, u_input.c.x, u_input.c.x)))).a.x, !global0.x, true, true);
    var var_2 = vec4<u32>(u_input.d >> ((~reverseBits(u_input.b.x) >> (firstLeadingBit(_wgslsmith_add_u32(0u, u_input.d)) % 32u)) % 32u), u_input.b.x, ~max(~(~u_input.b.x), 1u), abs(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x)));
    let var_3 = Struct_2(37394u, Struct_1(~(~var_0.a), select(select(max(vec4<i32>(u_input.c.x, 34809i, u_input.e.x, var_0.b.x), u_input.c), u_input.c ^ global1[_wgslsmith_index_u32(0u, 2u)], vec4<bool>(var_1.x, false, false, false)), ~(-vec4<i32>(28982i, 25380i, 28066i, 25362i)), !select(vec4<bool>(false, true, global0.x, true), vec4<bool>(global0.x, false, var_1.x, false), vec4<bool>(var_1.x, false, true, true)))), var_0.b.x, 59875u);
    var_0 = Struct_1(max(vec3<u32>(~var_2.x, 1u, var_3.a), ~select(vec3<u32>(5698u, u_input.d, var_2.x), vec3<u32>(99161u, var_0.a.x, var_3.b.a.x), global0.x) & select(vec3<u32>(var_3.b.a.x, 2578u, 1u), var_0.a, any(vec3<bool>(false, var_1.x, global0.x)))), global1[_wgslsmith_index_u32(u_input.b.x, 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(874f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(~vec3<i32>(2147483647i, -28725i, 2147483647i), min(38216i, u_input.e.x), _wgslsmith_f_op_f32(f32(-1f) * -390f)))))), vec3<f32>(-536f, 748f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-315f)) - _wgslsmith_f_op_f32(f32(-1f) * -251f))))));
}

