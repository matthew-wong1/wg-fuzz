struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_div_f32(3181f, 184f);
    var var_1 = !all(!vec2<bool>(true, any(vec2<bool>(true, true))));
    var var_2 = i32(-1i) * -min(2147483647i, ~37249i);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f), var_0) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(636f, _wgslsmith_f_op_f32(-1000f - var_0))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1547f)))));
    var var_4 = countOneBits(abs(reverseBits(_wgslsmith_div_vec4_i32(-vec4<i32>(5936i, u_input.c.x, u_input.b.x, u_input.c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 45288i, 48204i, 2147483647i), vec4<i32>(u_input.b.x, u_input.c.x, -2147483647i, u_input.b.x), vec4<i32>(-33795i, 47095i, -15082i, u_input.b.x))))));
    return select(!vec2<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), vec2<bool>(false, true), select(vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), all(vec3<bool>(false, false, true))), vec2<bool>(-10632i > _wgslsmith_clamp_i32(-2147483647i, var_4.x, var_4.x), true), true));
}

fn func_2() -> vec2<bool> {
    let var_0 = true;
    let var_1 = Struct_1(vec2<bool>(!var_0, var_0), -1693f, ~u_input.c.x);
    var var_2 = select(vec2<i32>(62720i, var_1.c), -_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.b.x, 23046i), _wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(32041i, -26594i), vec2<i32>(36232i, -2147483647i))), var_0) | _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.yz, vec2<i32>(-15286i >> (u_input.a % 32u), -3042i)), vec2<i32>(53215i, var_1.c));
    var_2 = ~(vec2<i32>(_wgslsmith_clamp_i32(~var_1.c, var_1.c, var_1.c), max(select(var_1.c, var_2.x, false), -1i)) | vec2<i32>(~1i, var_2.x));
    var var_3 = Struct_1(!(!(!(!vec2<bool>(var_1.a.x, var_1.a.x)))), -1000f, ~var_2.x);
    return func_3();
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    return Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b))), 807i), arg_0.a.x, u_input.a, Struct_1(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2723f, 1696f)), _wgslsmith_f_op_f32(-arg_0.b)) + _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-arg_0.b))), arg_0.c));
}

fn func_1() -> bool {
    let var_0 = func_4(Struct_1(!(!func_2()), -1384f, _wgslsmith_dot_vec3_i32(-vec3<i32>(-26394i, -2147483647i, 37986i), abs(vec3<i32>(-33531i, u_input.c.x, u_input.c.x) ^ u_input.b))), u_input.a);
    let var_1 = u_input.a;
    var var_2 = false;
    var_2 = func_2().x;
    var_2 = !(false != !all(!vec3<bool>(false, var_0.a.a.x, var_0.d.a.x)));
    return var_1 <= (func_4(var_0.d, firstLeadingBit(1u)).c << (~4294967295u % 32u));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))));
    var_0 = -604f;
    let var_1 = 1u;
    var var_2 = !func_4(func_4(func_4(Struct_1(vec2<bool>(true, false), 179f, arg_1), 1u).d, ~abs(12766u)).a, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(18995u, var_1, 4294967295u, 82370u) >> (vec4<u32>(var_1, 56918u, 76820u, var_1) % vec4<u32>(32u))), ~vec4<u32>(1u, var_1, 50911u, 6664u))).d.a;
    let var_3 = Struct_1(vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(35618u, 60183u, u_input.a), firstTrailingBit(vec3<u32>(68407u, 1u, 4294967295u))) >= (0u & u_input.a), !arg_0), _wgslsmith_f_op_f32(f32(-1f) * -700f), firstTrailingBit(-_wgslsmith_add_i32(-53598i, abs(-2147483647i))));
    return Struct_1(func_4(Struct_1(func_2(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(585f)), -570f), var_3.c), 0u).a.a, -177f, _wgslsmith_mod_i32(_wgslsmith_add_i32(-arg_1 & _wgslsmith_clamp_i32(u_input.c.x, arg_2, u_input.c.x), max(var_3.c, 0i) ^ ~var_3.c), ~u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), u_input.c.x, ~(-u_input.c.x));
    let var_1 = func_4(var_0, 4294967295u);
    let var_2 = _wgslsmith_f_op_f32(var_1.a.b + -924f);
    let var_3 = func_4(var_0, select(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(14116u, 26786u, 0u, 4294967295u), vec4<u32>(1u, u_input.a, var_1.c, var_1.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(var_1.c, 4294967295u, 4294967295u, 4294967295u))), ~vec4<u32>(u_input.a, u_input.a, var_1.c, 43509u)), ~(~var_1.c), (_wgslsmith_f_op_f32(var_0.b * var_0.b) == 1489f) || var_0.a.x));
    var var_4 = vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.b * var_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - var_1.a.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, 1i, ~(~(~(~var_3.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.b, var_1.a.b, var_3.d.b), vec3<f32>(var_4.x, -1486f, var_4.x), var_1.d.a.x)) - vec3<f32>(326f, var_3.a.b, -1341f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1869f, var_1.d.b, 1202f), vec3<f32>(-1174f, 1047f, var_1.a.b))) + vec3<f32>(var_2, -861f, 2143f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.b)), var_1.d.b), true)), 37149i);
}

