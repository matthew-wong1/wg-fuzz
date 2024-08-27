struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(59814u);

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> vec4<u32> {
    var var_0 = arg_1.x;
    var var_1 = Struct_3(Struct_1(select(u_input.c.x, u_input.c.x, arg_1.x)), Struct_1(1379u), arg_0.b);
    let var_2 = arg_0;
    var var_3 = vec4<bool>(arg_1.x, _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -15315i, u_input.a.x)), -(~(-24645i)), -2147483647i) <= ~u_input.b, !(all(select(vec4<bool>(false, false, arg_1.x, true), vec4<bool>(arg_1.x, false, false, false), vec4<bool>(arg_1.x, true, false, arg_1.x))) || select(true | arg_1.x, 0u >= global0.a, all(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)))), any(!vec2<bool>(any(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), arg_1.x)));
    var_3 = select(select(select(!vec4<bool>(false, arg_1.x, true, true), vec4<bool>(!arg_1.x, false, !var_3.x, true), any(vec3<bool>(false, arg_1.x, var_3.x))), !select(!vec4<bool>(arg_1.x, true, true, var_3.x), !vec4<bool>(false, arg_1.x, false, true), any(vec3<bool>(arg_1.x, false, var_3.x))), all(select(vec2<bool>(false, true), !var_3.xy, all(vec4<bool>(true, false, var_3.x, var_3.x))))), !select(vec4<bool>(true, arg_1.x, true, !arg_1.x), vec4<bool>(arg_1.x, !var_3.x, all(arg_1), arg_1.x), vec4<bool>(var_3.x, true, !var_3.x, false)), !(!vec4<bool>(var_3.x, true, false, var_3.x && var_3.x)));
    return vec4<u32>(u_input.c.x, ~countOneBits(~34383u & _wgslsmith_clamp_u32(14983u, 1u, 4294967295u)), var_2.a.a, ~75588u);
}

fn func_2(arg_0: u32) -> vec4<i32> {
    global0 = Struct_1(_wgslsmith_add_u32(global0.a, 0u) | arg_0);
    var var_0 = min(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, 1u, arg_0, u_input.c.x) & vec4<u32>(~4294967295u, 30823u, 20218u, arg_0), vec4<u32>(abs(1u), min(0u, _wgslsmith_mod_u32(global0.a, 89188u)), global0.a, 4294967295u)), firstLeadingBit(~func_3(Struct_3(Struct_1(u_input.c.x), Struct_1(arg_0), Struct_1(34437u)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false))));
    let var_1 = select(!(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)))), !vec4<bool>(false, true, select(true, true, true), select(false, true, false) && true), all(select(vec2<bool>(true, all(vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))));
    let var_2 = select(vec4<bool>(any(!var_1.zxy), select(true, any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)) && true, var_1.x), !var_1.x, true), !select(!var_1, var_1, select(!var_1, select(vec4<bool>(false, var_1.x, true, var_1.x), var_1, vec4<bool>(var_1.x, var_1.x, true, var_1.x)), any(vec3<bool>(false, var_1.x, var_1.x)))), all(var_1));
    global0 = Struct_1(~(~8909u));
    return select(select(vec4<i32>(countOneBits(u_input.a.x), 4472i, firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a, abs(u_input.a))), _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 1i, -1i, 0i), vec4<i32>(u_input.b, 11268i, -2147483647i, 21416i))), select(vec4<i32>(u_input.a.x, u_input.a.x, -14654i, -2147483647i), vec4<i32>(u_input.b, -38143i, u_input.b, 17259i), vec4<bool>(true, var_2.x, var_1.x, var_1.x)) & vec4<i32>(-2147483647i, u_input.b, u_input.b, -28428i)), !var_1), -vec4<i32>(u_input.b, select(-1i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(4875i, 2147483647i, -55008i)), !var_1.x), max(~u_input.b, ~u_input.b), u_input.a.x), select(vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(-47878i, u_input.b, -41868i), u_input.a) < countOneBits(17990i), true, (-2147483647i >= u_input.b) | var_2.x), !var_1, var_2.x));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: f32, arg_3: f32) -> bool {
    global1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(2147483647i, arg_1.x, u_input.a.x, arg_1.x)) ^ (vec4<i32>(u_input.a.x, arg_1.x, -17016i, u_input.a.x) << (max(vec4<u32>(global0.a, 1197u, 15760u, u_input.c.x), vec4<u32>(16408u, 45577u, 94040u, global0.a)) % vec4<u32>(32u))), func_2(24101u)), func_2(select(~u_input.c.x, firstTrailingBit(max(0u, 1u)), all(vec3<bool>(true, true, true)))));
    global1 = u_input.a.x;
    global1 = reverseBits(-_wgslsmith_add_i32(33300i, u_input.a.x << (u_input.c.x % 32u))) & ~(~arg_1.x);
    let var_0 = select(-79804i, -12773i, max(~_wgslsmith_sub_u32(0u, global0.a), ~(u_input.c.x & 30709u)) <= 4982u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3, 311f))))))));
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    global0 = Struct_1(20012u);
    global1 = -9082i;
    global1 = u_input.b;
    var var_0 = Struct_4(Struct_2((arg_0.x & arg_3.x) | true, ~abs(u_input.c.x), all(arg_0) & !arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f * 1160f))))));
    global1 = -abs(u_input.b);
    return var_0.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1256f) == _wgslsmith_f_op_f32(func_4(!vec2<bool>(true, any(vec4<bool>(true, false, false, false))), true, !all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), select(vec4<bool>(true, true, -2147483647i <= u_input.a.x, true), vec4<bool>(func_1(-1000f, vec2<i32>(-15312i, u_input.b), -483f, 937f), true, func_1(1571f, vec2<i32>(u_input.b, 37828i), -284f, 1000f), true), vec4<bool>(true, true, true, true))));
    var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f))), vec2<i32>(u_input.b, u_input.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-625f, _wgslsmith_f_op_f32(f32(-1f) * -1448f))) + _wgslsmith_f_op_f32(select(295f, _wgslsmith_f_op_f32(select(-264f, -1088f, false)), u_input.c.x != u_input.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -751f) - _wgslsmith_f_op_f32(sign(1957f)))) - 2077f));
    let var_1 = _wgslsmith_mult_u32(~(global0.a | 1u), 4294967295u);
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(239f, 921f)), _wgslsmith_f_op_f32(f32(-1f) * -248f), _wgslsmith_f_op_f32(f32(-1f) * -273f))) * vec3<f32>(1615f, _wgslsmith_f_op_f32(sign(-491f)), _wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), false, all(vec2<bool>(false, false)), vec4<bool>(true, true, true, true)))))));
    let var_3 = Struct_2(select(false || select(func_1(695f, vec2<i32>(u_input.a.x, -2147483647i), var_2.x, var_2.x), true, false), all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), u_input.c.x, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * -1193f) * var_2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(vec2<bool>(true, false), true, false, vec4<bool>(false, true, true, true)))))))));
    var var_4 = select(!(!vec2<bool>(!var_3.c, any(vec2<bool>(false, var_3.a)))), vec2<bool>(true, true), var_3.a);
    let var_5 = _wgslsmith_f_op_vec2_f32(ceil(var_2.xx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.d))), var_2.x, var_2.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(833f, var_5.x, var_5.x), var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.x, 1000f, var_3.d) * vec3<f32>(-1000f, 246f, 1000f)))))), ~(~firstTrailingBit(~u_input.c)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x >> (var_3.b % 32u), 2147483647i, -45196i), vec4<i32>(countOneBits(-1i), ~(-2147483647i), 0i, u_input.a.x), all(vec2<bool>(var_4.x, var_4.x))), vec4<i32>(~(-1i), u_input.b ^ -7833i, -20293i, 2147483647i)));
}

