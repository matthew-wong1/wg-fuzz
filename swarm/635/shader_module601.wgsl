struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 6295u;

var<private> global1: Struct_5 = Struct_5(-843f, vec3<f32>(-179f, -669f, 1526f), Struct_4(Struct_2(Struct_1(vec3<f32>(2308f, 803f, -593f), 17592u, 4227i), Struct_1(vec3<f32>(926f, -951f, -178f), 73951u, -39174i), 14889u, vec4<u32>(0u, 4294967295u, 35724u, 1u)), vec3<f32>(446f, 731f, -831f)));

var<private> global2: bool;

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<f32>(-123f, 1000f, 872f), 0u, 32175i), Struct_1(vec3<f32>(-610f, -738f, -1000f), 0u, 2046i), 1u, vec4<u32>(0u, 0u, 16407u, 58549u)), 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> bool {
    let var_0 = ~(~(~(~vec3<i32>(global1.c.a.b.c, global1.c.a.a.c, 1i) << (_wgslsmith_clamp_vec3_u32(global1.c.a.d.zyx, global3.a.d.yyw, vec3<u32>(global3.a.a.b, 68596u, 44307u)) % vec3<u32>(32u)))));
    let var_1 = -22133i;
    var var_2 = Struct_1(global3.a.b.a, global1.c.a.c, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, 12659i), -1i), -2147483647i << (u_input.a % 32u)));
    return false;
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = global3.b;
    var_0 = u_input.a;
    let var_1 = Struct_5(_wgslsmith_div_f32(global3.a.b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.c.a.b.a.x)), _wgslsmith_f_op_vec3_f32(global3.a.a.a + _wgslsmith_f_op_vec3_f32(ceil(global3.a.a.a))), global1.c);
    global0 = firstLeadingBit(51841u);
    var var_2 = Struct_4(var_1.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-879f, _wgslsmith_f_op_f32(round(global1.b.x)), _wgslsmith_f_op_f32(max(global3.a.a.a.x, -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.b.x)), _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(min(var_1.b.x, 822f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1045f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-365f, _wgslsmith_f_op_f32(abs(-300f)))), global3.a.b.a.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(max(vec3<i32>(-global3.a.a.c, -5759i, ~global1.c.a.a.c), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, global1.c.a.a.c, 1i), -vec3<i32>(global3.a.a.c, 2147483647i, global3.a.a.c), vec3<i32>(global1.c.a.a.c, 0i, global3.a.b.c))))));
    global0 = ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(67274u, 18285u), global3.a.d.zz), global3.b, reverseBits(global1.c.a.d.x)) | _wgslsmith_clamp_u32(1u, global3.a.a.b << (global1.c.a.a.b % 32u), select(u_input.a, global3.b, arg_1)), global1.c.a.d.x);
    let var_1 = -(~_wgslsmith_clamp_i32(global3.a.b.c, 55412i, global3.a.b.c));
    var var_2 = Struct_3(global1.c.a, _wgslsmith_clamp_u32(select(1u, _wgslsmith_add_u32(global3.a.d.x, global1.c.a.b.b), arg_1), min(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 11778u, 4294967295u, 1u), global1.c.a.d), ~40409u), select(22765u, 35247u, var_1 < -19982i)), ~global3.b));
    var var_3 = _wgslsmith_f_op_vec3_f32(global1.c.a.a.a * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(global1.c.b, global3.a.b.a))))))));
    return Struct_3(global1.c.a, ~88782u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.b.a.x), _wgslsmith_f_op_f32(-global3.a.b.a.x)) + 220f)) - -558f);
    global3 = func_2(vec3<bool>(false, true, false), func_1());
    let var_1 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, 157f >= global3.a.b.a.x, global3.a.c == 0u), vec3<bool>(true, true, true)), _wgslsmith_add_i32(global3.a.b.c, global3.a.b.c) > _wgslsmith_div_i32(-2147483647i, -global3.a.a.c)), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(false, false, true), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), func_1()), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), true));
    var_0 = global3.a.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(~(-1i)), global3.a.a.c, global1.c.a.b.c >> (1u % 32u), global1.c.a.b.c), func_2(var_1, false).a.a.a.yy, vec3<u32>(67279u, ~16141u, global3.b & max(109910u, min(0u, global3.a.c))), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(1u, u_input.a), 1u));
}

