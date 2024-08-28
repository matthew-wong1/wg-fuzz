struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(750f, vec3<i32>(-7284i, 2147483647i, 0i), vec2<u32>(4294967295u, 4294967295u));

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(2453u, 1u), vec2<u32>(56426u, 15901u), vec2<u32>(0u, 0u), vec2<u32>(9882u, 0u), vec2<u32>(27646u, 133572u), vec2<u32>(63049u, 1u), vec2<u32>(165112u, 0u), vec2<u32>(48348u, 5357u), vec2<u32>(19603u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(19189u, 0u), vec2<u32>(43807u, 17504u), vec2<u32>(0u, 107223u), vec2<u32>(1u, 4294967295u), vec2<u32>(26867u, 4531u));

var<private> global3: bool = false;

var<private> global4: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: i32) -> f32 {
    var var_0 = ~min(vec4<u32>(31919u, _wgslsmith_sub_u32(~u_input.c.x, 14979u ^ global0.c.x), 11697u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(1u, 15u)], vec2<u32>(0u, 0u)), firstLeadingBit(0u), firstLeadingBit(1u), 13337u << (global0.c.x % 32u)), vec4<u32>(0u, 4665u, arg_1.x, 22498u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c.x, arg_1.x, 1u), vec4<u32>(u_input.d.x, global1.c.x, u_input.c.x, global1.c.x)) % vec4<u32>(32u))));
    var var_1 = true;
    var_1 = all(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, true)), any(vec4<bool>(false, true, false, true)) | true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))));
    global1 = Struct_1(global1.a, vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(46554i, 24420i, arg_2)), abs(global1.c));
    global0 = Struct_1(global1.a, global0.b, arg_1.yy);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1529f), -1000f)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global4 = min(-13271i, 985i);
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(1u << (global0.c.x % 32u), 15u)], select(vec3<u32>(10745u, 11349u, arg_2), vec3<u32>(arg_1.c.x, 1u, 38595u), all(vec2<bool>(false, true))), _wgslsmith_div_i32(u_input.a, u_input.a) ^ -2147483647i)), 579f), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, global1.b.x, ~(-2147483647i)), -u_input.e), max(min(reverseBits(vec3<i32>(global1.b.x, global0.b.x, 2147483647i)), global1.b), ~(~global1.b))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, ~arg_0)), ~u_input.d.zx, ~global1.c));
    global4 = -34883i & _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(-20417i, firstTrailingBit(global1.b.x)), 26387i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, var_0.b.x, 0i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -52325i, 19810i, var_0.b.x), vec4<i32>(0i, arg_1.b.x, global0.b.x, -2147483647i)))));
    let var_1 = firstTrailingBit(vec3<u32>(arg_0, arg_0, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_1.c.x, global0.c.x, global1.c.x), vec4<u32>(arg_1.c.x, arg_1.c.x, global1.c.x, 62627u))) << (abs(~u_input.d ^ _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_0.c.x), vec3<u32>(global1.c.x, arg_0, 4294967295u))) % vec3<u32>(32u)));
    var var_2 = arg_1.b.x;
    return Struct_1(global1.a, -(~(arg_1.b << (vec3<u32>(arg_1.c.x, 23160u, 24662u) % vec3<u32>(32u)))), ~global1.c << (global0.c % vec2<u32>(32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(723f * 1324f)) * global0.a))), global1.b, vec2<u32>(~global1.c.x, ~41633u));
    global2 = array<vec2<u32>, 15>();
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(589f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) + var_0.a), _wgslsmith_f_op_f32(min(var_0.a, global1.a)))));
    var var_2 = var_0;
    var var_3 = func_2(~31803u, var_0, 1u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = func_2(_wgslsmith_clamp_u32(global1.c.x, global1.c.x, _wgslsmith_dot_vec2_u32(abs(min(vec2<u32>(63175u, u_input.c.x), vec2<u32>(global1.c.x, global1.c.x))), select(~global1.c, ~global0.c, vec2<bool>(true, true)))), func_2(75324u, func_1(), _wgslsmith_mult_u32(~4294967295u, 87851u)), ~global0.c.x | firstTrailingBit(32688u));
    var var_0 = Struct_1(_wgslsmith_div_f32(372f, global0.a), ~vec3<i32>(firstTrailingBit(-u_input.e.x), u_input.a, -reverseBits(-2147483647i)), vec2<u32>(~4294967295u, 14463u));
    global4 = var_0.b.x;
    var var_1 = var_0.c;
    var_1 = vec2<u32>(~(~63302u) >> (~4294967295u % 32u), ~4294967295u);
    var var_2 = !(!all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))) || (~var_1.x < ~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(global1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1339f, -552f, 183f, -1021f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global0.a, -856f, -1000f) + vec4<f32>(-1214f, global0.a, 1212f, var_0.a))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1463f, -538f, 1668f, 2819f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - -690f))))));
}

