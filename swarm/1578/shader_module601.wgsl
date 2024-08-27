struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -50440i, 0i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: u32, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = arg_1.e;
    var_0 = arg_1.e;
    let var_1 = false;
    var var_2 = !arg_1.a.a;
    var_0 = arg_1.e;
    return Struct_2(arg_1.a.a);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    global0 = select(abs(_wgslsmith_sub_vec3_i32(min(vec3<i32>(-1i, u_input.a, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(12436i, u_input.b, global0.x), vec3<i32>(2147483647i, global0.x, u_input.d))), -vec3<i32>(global0.x, u_input.d, 19016i))), vec3<i32>(1i, 8075i, i32(-1i) * -global0.x), select(select(select(vec3<bool>(arg_1.a.x, true, false), !vec3<bool>(false, false, arg_1.a.x), arg_1.a.x & arg_1.a.x), !select(vec3<bool>(arg_1.a.x, arg_1.a.x, true), vec3<bool>(false, arg_1.a.x, arg_1.a.x), arg_1.a.x), arg_1.a.x), vec3<bool>(arg_1.a.x, true, arg_1.a.x || true), !vec3<bool>(true, arg_1.a.x, all(vec3<bool>(arg_1.a.x, arg_1.a.x, true)))));
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(u_input.c.yz, firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(44820u, 4294967295u), vec2<u32>(u_input.e, u_input.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -122f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(182f, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))), arg_0.x), !(!select(vec3<bool>(arg_1.a.x, false, arg_1.a.x), select(vec3<bool>(arg_1.a.x, true, arg_1.a.x), vec3<bool>(arg_1.a.x, arg_1.a.x, false), arg_1.a.x), all(arg_1.a))));
    global0 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(2147483647i, 0i, global0.x >> (21779u % 32u))), vec3<i32>(-43090i >> ((var_0.a.x | var_0.a.x) % 32u), 825i, (-2417i >> (u_input.e % 32u)) >> (abs(0u) % 32u))), vec3<i32>(_wgslsmith_add_i32(countOneBits(-1i), global0.x), _wgslsmith_mult_i32(-11333i, global0.x | 0i), _wgslsmith_clamp_i32(~17652i, -12490i >> (_wgslsmith_mult_u32(u_input.e, var_0.a.x) % 32u), ~(~u_input.b))));
    let var_1 = ~firstLeadingBit(global0.zy);
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(-27706i, ~(-1i), u_input.b | var_1.x), global0.x), _wgslsmith_clamp_i32(0i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(9164i, var_1.x, 0i, u_input.d), vec4<i32>(var_1.x, var_1.x, global0.x, u_input.a)) & 1i), -17257i));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(countOneBits(-2147483647i), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-25408i, 1i, global0.x), vec3<i32>(u_input.a, -22656i, 53731i)), _wgslsmith_dot_vec2_i32(global0.yz, vec2<i32>(global0.x, u_input.a))))), -1i, 65544i);
    var_0 = vec3<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_mult_i32(var_0.x, global0.x)), firstTrailingBit(-61357i) << (min(u_input.c.x, 4294967295u) % 32u)), _wgslsmith_mod_i32(firstLeadingBit(~u_input.b), var_0.x), global0.x) | _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, func_3(arg_0.xwy, func_2(arg_0.x, Struct_4(Struct_2(vec2<bool>(false, false)), vec2<u32>(1u, 0u), vec4<u32>(18332u, 0u, 1u, 23805u), u_input.e, Struct_1(u_input.c.xy, vec3<f32>(1042f, arg_0.x, arg_0.x), vec3<bool>(true, false, true))), 5610u, vec3<i32>(u_input.b, 58027i, 28230i))), _wgslsmith_mult_i32(var_0.x, firstLeadingBit(global0.x))), vec3<i32>(var_0.x, -1i, min(_wgslsmith_mod_i32(u_input.a, -9515i), -13514i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2149f), arg_0.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-104f)), 667f))), 719f)) + _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-824f, _wgslsmith_f_op_f32(floor(-408f)))), 915f)));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)))))))));
    return !arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(u_input.b, abs(_wgslsmith_sub_i32(-u_input.a, 2147483647i)), 1i & _wgslsmith_mult_i32(global0.x, i32(-1i) * -10860i));
    var var_0 = select(-u_input.d, ~(-1i), !func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, -191f, 1279f, 852f))), Struct_2(vec2<bool>(true, true))));
    var var_1 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))));
    var_0 = u_input.a;
    let var_2 = _wgslsmith_div_vec4_u32(select(~_wgslsmith_mod_vec4_u32(vec4<u32>(50816u, u_input.e, 4294967295u, u_input.e), vec4<u32>(u_input.e, u_input.e, 1u, 5533u)) & vec4<u32>(4294967295u, ~u_input.e, 1u, 1u), vec4<u32>(4294967295u, _wgslsmith_mod_u32(~20519u, _wgslsmith_sub_u32(u_input.c.x, 1u)), ~1u, ~u_input.c.x), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, true)), -35185i == u_input.a, true, false), vec4<bool>(func_1(vec4<f32>(309f, 3434f, -1637f, -1945f), Struct_2(vec2<bool>(false, true))), false, any(vec3<bool>(false, false, false)), true))), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.e, 4294967295u, u_input.c.x, 1u) >> (vec4<u32>(20992u, 32294u, u_input.e, 1u) % vec4<u32>(32u))) << (countOneBits(vec4<u32>(u_input.e, 37992u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, ~(~u_input.e), 56797u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(147f)), -1094f)), -795f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f * -348f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1053f * 1046f))))), min(~(_wgslsmith_div_i32(-20798i, u_input.b) >> (60462u % 32u)), 1i), 8894u);
}

