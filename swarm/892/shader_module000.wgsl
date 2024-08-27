struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-1106f, 575f, 830f, 1069f), vec3<f32>(-1000f, -206f, -250f), vec2<f32>(-1755f, 355f), true, vec2<f32>(-940f, 1000f));

var<private> global3: array<bool, 5>;

var<private> global4: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = ~(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(17343u, 0u)), _wgslsmith_mult_u32(0u, 4294967295u)), ~1u) ^ _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(67131u, 25982u, 3341u, 1u)), vec4<u32>(1u, 30208u >> (1u % 32u), 61278u, ~40087u)));
    global4 = arg_0;
    global3 = array<bool, 5>();
    let var_1 = arg_0;
    var var_2 = Struct_3(var_1.a, arg_0.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.b.b.x - -647f), _wgslsmith_f_op_f32(step(-335f, 1195f)), _wgslsmith_f_op_f32(arg_0.c.x + global2.e.x), _wgslsmith_f_op_f32(-var_1.b.e.x)) + arg_0.b.a)));
    return 15330u;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-444f, arg_0.e.x))));
    global4 = Struct_3(Struct_2(global4.a.a, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1314f, global2.b.x, global4.a.b.e.x, -1000f))), vec4<f32>(global4.c.x, global4.a.b.a.x, 560f, 1064f)), vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(arg_0.a.x - arg_0.c.x), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.b.e)), !all(vec3<bool>(global4.a.b.d, false, false)), vec2<f32>(global4.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -389f))), global4.a.c), arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(global2.e.x, 372f, global4.a.c.x)), _wgslsmith_f_op_f32(-arg_0.a.x), 485f, -860f)));
    global1 = countOneBits(u_input.a);
    global0 = true;
    global3 = array<bool, 5>();
    return (abs(27074u) >> (6u % 32u)) | (firstLeadingBit(select(func_3(Struct_3(Struct_2(global2.d, arg_0, vec2<bool>(false, global4.a.b.d)), Struct_1(vec4<f32>(arg_0.c.x, 1066f, -736f, global2.b.x), arg_0.b, global2.b.yx, global2.d, arg_0.e), arg_0.a)), 1u, !global4.a.a)) >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 13376u, 38237u, 26791u), vec4<u32>(0u, 4294967295u, 1u, 59283u), vec4<u32>(77240u, 1u, 4294967295u, 73363u))), ~vec4<u32>(1u, 1u, 1u, 1u)) % 32u));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(-76024i, firstTrailingBit(-1i), u_input.a);
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global4.a.b.a - _wgslsmith_f_op_vec4_f32(-global4.b.a)))), _wgslsmith_f_op_vec3_f32(-global2.a.www), global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x)) < _wgslsmith_f_op_f32(ceil(148f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-503f, -950f) + vec2<f32>(-586f, global4.b.c.x)))));
    var var_2 = 0u;
    var var_3 = global4.a;
    var_0 = _wgslsmith_div_i32(-2147483647i, -u_input.a);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_3.b.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-804f, -593f, 798f, var_3.b.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.e.x, _wgslsmith_div_f32(var_3.b.a.x, global4.a.b.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2312f)), _wgslsmith_f_op_f32(min(global2.c.x, 1424f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.x + global4.b.e.x) * _wgslsmith_f_op_f32(-global4.c.x))), -367f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.e.x, global4.c.x) * _wgslsmith_f_op_vec2_f32(global4.b.a.zw - global2.c)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_3.b.a.x, 977f, true)), -238f) + _wgslsmith_f_op_vec2_f32(max(global4.c.xw, global4.a.b.a.zy)))), true, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.e.x - var_3.b.e.x), _wgslsmith_f_op_f32(-1000f - global4.a.b.a.x))), _wgslsmith_f_op_f32(-var_3.b.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(global4.a, func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global4.a.b.e.x, global2.a.x, global4.b.c.x) - global2.a)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1549f, -300f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.b.c.x), 988f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.e.x - global4.b.e.x), _wgslsmith_div_f32(global4.c.x, -880f)), _wgslsmith_f_op_f32(select(global2.e.x, -722f, true)))));
    var var_0 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~(select(vec4<i32>(u_input.a, -2147483647i, 67229i, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<bool>(true, false, false, true)) & min(vec4<i32>(-24343i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a))), reverseBits(~(vec4<i32>(0i, u_input.a, u_input.a, 2147483647i) | vec4<i32>(u_input.a, -2147483647i, 2147483647i, 19626i)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(-306f)), -2880f, var_0.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(abs(vec4<u32>(1u, 1u, 1u, 1u)))), func_1().a.wy, ~(~vec4<u32>(36407u, 4294967295u, 37367u, 0u) << (select(firstLeadingBit(vec4<u32>(4294967295u, 0u, 21926u, 11231u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 195u), vec4<u32>(1u, 1u, 4294967295u, 23717u)), vec4<bool>(true, global3[_wgslsmith_index_u32(46813u, 5u)], false, global2.d)) % vec4<u32>(32u))));
}

