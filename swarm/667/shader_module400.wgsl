struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_3 = Struct_3(vec4<f32>(-821f, -1433f, 467f, -1000f), 62240u, 32634i);

var<private> global2: Struct_2 = Struct_2(false, Struct_1(false), true, Struct_1(false), true);

var<private> global3: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>) -> u32 {
    global1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * 104f)), -341f, global1.a.x) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1.a)) - _wgslsmith_f_op_vec4_f32(-global1.a))))), 4294967295u, firstTrailingBit(~countOneBits(global3.x)));
    global3 = -(~select(_wgslsmith_add_vec3_i32(-vec3<i32>(global1.c, 1i, global3.x), vec3<i32>(global1.c, -49151i, u_input.c)), select(vec3<i32>(global1.c, 0i, -3750i) & vec3<i32>(global1.c, 18114i, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, 2147483647i), vec3<i32>(global1.c, u_input.c, 1i)), select(vec3<bool>(true, global2.e, true), vec3<bool>(true, global2.d.a, true), vec3<bool>(true, true, global2.e))), min(arg_1.x, 0u) >= abs(21593u)));
    let var_0 = Struct_4(_wgslsmith_f_op_f32(select(-318f, global1.a.x, global2.e)));
    let var_1 = !(!vec4<bool>(4294967295u != arg_1.x, _wgslsmith_mod_u32(u_input.b.x, 1u) <= arg_1.x, all(!vec3<bool>(global2.c, false, global2.a)), global2.b.a | global2.b.a));
    global0 = var_1.x;
    return firstTrailingBit(105207u);
}

fn func_2() -> Struct_2 {
    return Struct_2(global2.b.a, Struct_1(func_3(~vec4<u32>(33777u, global1.b, u_input.b.x, u_input.b.x), select(vec4<u32>(u_input.a.x, u_input.a.x, 1u, global1.b), vec4<u32>(global1.b, 41988u, global1.b, 16532u), vec4<bool>(global2.b.a, global2.d.a, true, global2.c))) != ~(~global1.b)), any(!vec2<bool>(global2.a, global2.d.a)), global2.b, -665f > _wgslsmith_f_op_f32(-global1.a.x));
}

fn func_1(arg_0: u32) -> u32 {
    global2 = func_2();
    let var_0 = u_input.b;
    let var_1 = Struct_1(272f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(541f + _wgslsmith_f_op_f32(-global1.a.x)))));
    let var_2 = all(select(vec2<bool>(!var_1.a, reverseBits(1i) != max(-30164i, global3.x)), !(!select(vec2<bool>(false, var_1.a), vec2<bool>(false, false), var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, global1.a.x) + _wgslsmith_f_op_f32(round(-2321f))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global1.a.x))))));
    let var_3 = Struct_4(-1576f);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -(vec3<i32>(u_input.c, _wgslsmith_add_i32(17798i, _wgslsmith_clamp_i32(global1.c, global3.x, 2147483647i)), _wgslsmith_div_i32(global3.x, abs(global3.x))) | vec3<i32>(_wgslsmith_mod_i32(u_input.c, -2147483647i << (u_input.a.x % 32u)), -2147483647i, _wgslsmith_mult_i32(abs(0i), ~u_input.c)));
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.x + -1159f), _wgslsmith_f_op_f32(round(global1.a.x))))));
    global0 = !(global2.e || global2.a);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(-660f, var_0, true)), var_0, -1494f, global1.a.x))), u_input.b.x, -1i);
    var var_2 = vec4<bool>(true, !(!global2.c), _wgslsmith_clamp_u32(~2145u, global1.b, abs(0u)) != func_1(var_1.b), global2.a);
    var var_3 = ~max(vec4<u32>(0u, _wgslsmith_mod_u32(u_input.a.x, var_1.b), _wgslsmith_dot_vec3_u32(u_input.b.xzx, vec3<u32>(var_1.b, global1.b, 0u)), 1u), u_input.a) >> (firstLeadingBit(~firstTrailingBit(vec4<u32>(u_input.a.x, global1.b, 4294967295u, var_1.b)) & _wgslsmith_mod_vec4_u32(u_input.a, reverseBits(vec4<u32>(26030u, 70840u, 24912u, var_1.b)))) % vec4<u32>(32u));
    var var_4 = true;
    let var_5 = select(_wgslsmith_add_u32(1u, u_input.a.x) & 72582u, 37169u, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(global1.a, vec4<f32>(_wgslsmith_div_f32(var_0, var_1.a.x), var_0, _wgslsmith_f_op_f32(-335f - var_0), _wgslsmith_f_op_f32(abs(global1.a.x))))), var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), -401f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.a.zwy, vec3<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-241f + 800f), global1.a.x), select(!vec3<bool>(global2.e, true, global2.b.a), vec3<bool>(global2.e, false, true), vec3<bool>(true, global2.b.a, false))))), -41344i);
}

