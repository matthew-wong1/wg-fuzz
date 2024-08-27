struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<bool>;

var<private> global2: i32 = -1788i;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global1 = vec3<bool>(!(!(-14899i == u_input.a.x)), any(vec3<bool>(false, global1.x, arg_0.a < u_input.b)), ((true || (false == arg_1.a.x)) == select(true, true == global1.x, true)) & !(true | (global1.x || true)));
    global0 = true;
    let var_0 = !global1.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(arg_0.b.zz, _wgslsmith_f_op_vec2_f32(arg_0.b.yx + _wgslsmith_f_op_vec2_f32(-arg_0.b.zx)), vec2<bool>(var_0, false))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x), arg_0.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(218f, -680f)), false)))));
    global2 = max(u_input.a.x, ~arg_0.c);
    return arg_1;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(~firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(2302i, u_input.a.x, abs(1i)))), -_wgslsmith_sub_vec3_i32(vec3<i32>(21774i, u_input.a.x, u_input.a.x) & u_input.a, u_input.a) & ((-u_input.a >> (_wgslsmith_mult_vec3_u32(arg_2, vec3<u32>(0u, 39784u, u_input.b)) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(arg_2, vec3<u32>(arg_2.x, 0u, arg_2.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, u_input.b, arg_2.x), arg_2, vec3<u32>(arg_2.x, u_input.b, u_input.b))) % vec3<u32>(32u))));
    var var_1 = Struct_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(max(2281u, 0u), _wgslsmith_mod_u32(u_input.b, u_input.b), firstLeadingBit(4294967295u)), countOneBits(arg_2)), vec3<f32>(-244f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -957f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(517f + 590f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(306f, 346f) - 2108f), -452f)), u_input.a.x);
    global3 = select(select(select(!arg_1.wwy, vec3<bool>(all(vec2<bool>(true, arg_0.x)), !arg_0.x, any(vec3<bool>(arg_1.x, true, true))), all(vec4<bool>(true, true, true, true))), select(arg_1.yxw, select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), arg_0.x), vec3<bool>(arg_0.x, !global3.x, true & arg_1.x)), vec3<bool>(true, all(global1.zz) || (_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x) <= _wgslsmith_f_op_f32(150f - var_1.b.x)), global3.x), select(vec3<bool>(false, abs(0u) < var_1.a, false), select(select(select(arg_1.wxy, arg_1.yyw, true), vec3<bool>(global3.x, false, arg_0.x), true), vec3<bool>(true, any(vec2<bool>(arg_1.x, true)), global1.x), arg_1.zxy), arg_1.x));
    var_1 = Struct_2(40776u, _wgslsmith_f_op_vec3_f32(-var_1.b), ~(-var_1.c));
    let var_2 = 1u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1447f);
}

fn func_2() -> Struct_2 {
    var var_0 = 1u;
    var var_1 = false;
    let var_2 = func_1(Struct_2(_wgslsmith_sub_u32(~abs(53401u), _wgslsmith_div_u32(4294967295u, firstTrailingBit(u_input.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1448f, 1000f, 615f))), vec3<f32>(-955f, -207f, 1070f))), vec3<f32>(-623f, _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), vec4<bool>(true, false, true, false), vec3<u32>(0u, 0u, u_input.b))), 969f)), -2147483647i ^ firstTrailingBit(_wgslsmith_clamp_i32(-1i, 2147483647i, 1i))), Struct_1(global3.yx));
    return Struct_2(~1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -203f, 1437f))) + vec3<f32>(_wgslsmith_f_op_f32(select(1603f, -2757f, false)), 1f, 310f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, -561f, -411f) - vec3<f32>(-1589f, -786f, -316f)))))), (-(u_input.a.x >> (u_input.b % 32u)) ^ ~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)) ^ 0i);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2655f))) * 1000f)), _wgslsmith_f_op_f32(abs(arg_3.b.x)), arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-999f + _wgslsmith_f_op_f32(sign(1f)))));
    var var_1 = var_0.wx;
    var var_2 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-682f))))))), arg_0, _wgslsmith_f_op_f32(arg_3.b.x * _wgslsmith_f_op_f32(select(-1657f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(trunc(arg_3.b.x))), false != arg_1.a.x))));
    let var_3 = ~u_input.b;
    var var_4 = select(!select(!(!vec4<bool>(global3.x, arg_1.a.x, false, false)), !select(vec4<bool>(true, global3.x, global1.x, arg_2.a.x), vec4<bool>(global3.x, true, true, global1.x), arg_2.a.x), !select(vec4<bool>(false, arg_1.a.x, global3.x, global3.x), vec4<bool>(true, global3.x, false, true), vec4<bool>(global3.x, false, arg_2.a.x, arg_2.a.x))), !(!vec4<bool>(global1.x, all(arg_2.a), global1.x | arg_2.a.x, arg_1.a.x)), any(func_1(arg_3, func_1(arg_3, Struct_1(arg_1.a))).a));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!(!global3.zz));
    var var_1 = _wgslsmith_mult_vec4_u32(~((_wgslsmith_mod_vec4_u32(vec4<u32>(36674u, u_input.b, 81171u, 1u), vec4<u32>(1u, 1u, 71966u, 30781u)) << (abs(vec4<u32>(u_input.b, 0u, u_input.b, 4294967295u)) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 93030u, 8069u, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(97634u, 0u, 16827u, 4294967295u), vec4<u32>(29939u, 1u, 47824u, u_input.b)))), vec4<u32>(~abs(max(u_input.b, u_input.b)), ~u_input.b, u_input.b, _wgslsmith_div_u32(u_input.b, func_4(-723f, func_1(Struct_2(u_input.b, vec3<f32>(-1448f, 1231f, -1739f), 0i), Struct_1(global1.yz)), func_1(Struct_2(u_input.b, vec3<f32>(455f, 405f, -1000f), 2147483647i), Struct_1(vec2<bool>(false, global3.x))), func_2()))));
    let var_2 = (any(select(vec4<bool>(false, true, global3.x, false), vec4<bool>(false, true, global3.x, false), true)) && true) & ((any(!vec3<bool>(global3.x, global3.x, global3.x)) && (_wgslsmith_div_u32(u_input.b, u_input.b) >= ~33682u)) & false);
    var var_3 = u_input.a.xz;
    global2 = var_3.x;
    let var_4 = Struct_1(vec2<bool>(var_1.x <= u_input.b, false));
    var var_5 = Struct_1(select(vec2<bool>(false, true), vec2<bool>(func_1(Struct_2(var_1.x, vec3<f32>(437f, 1105f, 2729f), var_3.x), Struct_1(vec2<bool>(var_4.a.x, var_0))).a.x | true, all(select(vec4<bool>(var_0, false, global1.x, global1.x), vec4<bool>(false, var_0, global3.x, var_0), vec4<bool>(global3.x, var_2, false, true)))), vec2<bool>(true, true)));
    global3 = vec3<bool>(true, _wgslsmith_add_u32(func_2().a, 2999u) <= 61701u, any(!(!vec3<bool>(var_5.a.x, global3.x, global3.x))));
    global0 = !(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-707f - func_2().b.x))) <= _wgslsmith_f_op_f32(trunc(974f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs((vec4<i32>(u_input.a.x, 6187i, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.b, 4294967295u, var_1.x, var_1.x) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(-vec4<i32>(25119i, var_3.x, var_3.x, 42143i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 86227i, var_3.x, u_input.a.x), vec4<i32>(u_input.a.x, -8791i, u_input.a.x, 1i)))), var_3.x, vec4<f32>(_wgslsmith_f_op_f32(945f - _wgslsmith_f_op_f32(673f - _wgslsmith_f_op_f32(round(512f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1651f))), -1682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1003f)))), -_wgslsmith_div_vec2_i32(u_input.a.xz, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), u_input.a), -2147483647i)));
}

