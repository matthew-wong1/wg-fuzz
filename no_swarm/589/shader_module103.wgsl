struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23>;

var<private> global1: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<i32>) -> f32 {
    global1 = Struct_3(Struct_2(global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(arg_0.x + arg_0.x))), global1.a.c, !all(!vec3<bool>(false, true, global1.a.c.x)), min(_wgslsmith_div_vec3_u32(abs(u_input.c), max(vec3<u32>(81153u, global1.a.e.x, arg_1), vec3<u32>(35845u, 4294967295u, 1u))), ~vec3<u32>(u_input.a.x, 9062u, u_input.a.x))), vec3<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(-1i), _wgslsmith_div_i32(0i, arg_2.x), global1.b.x), global1.b)), _wgslsmith_f_op_f32(min(arg_0.x, 1626f)));
    var var_0 = ~arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(step(-993f, 105f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global1.c))))), _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(vec3<f32>(1686f, -712f, -577f) - _wgslsmith_f_op_vec3_f32(arg_0 + arg_0))))));
    let var_2 = select(!vec2<bool>(select(all(vec4<bool>(false, true, true, global1.a.d)), true, all(vec3<bool>(global1.a.d, global1.a.c.x, global1.a.c.x))), true), global1.a.c, u_input.a.x > ~countOneBits(u_input.c.x ^ u_input.c.x));
    let var_3 = vec3<bool>(var_2.x, false, !all(vec2<bool>(var_2.x, all(vec4<bool>(true, true, var_2.x, false)))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, 401f)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_3 {
    global1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, 2224f, 1000f) + vec3<f32>(-1060f, global1.c, global1.c)), _wgslsmith_div_u32(global1.a.e.x, 33682u), vec3<i32>(global1.b.x, u_input.b, 2982i))), _wgslsmith_f_op_f32(round(-396f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(global0[_wgslsmith_index_u32(39108u, 23u)]))))), _wgslsmith_f_op_f32(-global1.a.b), vec2<bool>(all(!vec4<bool>(arg_1.x, true, false, true)), !any(vec3<bool>(true, false, global1.a.c.x))), arg_1.x, u_input.c), vec3<i32>(u_input.b & 1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global1.b.xx, reverseBits(global1.b.xx)), u_input.b), u_input.b), 149f);
    global0 = array<vec2<f32>, 23>();
    var var_0 = min(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global1.b.yy, -(global1.b.xz & vec2<i32>(u_input.b, -54281i))), -firstLeadingBit(firstTrailingBit(u_input.b))), -23843i);
    var var_1 = true;
    var var_2 = select(arg_1, vec3<bool>(!(_wgslsmith_f_op_f32(global1.a.a.a + arg_2.c.x) < 344f), global1.a.d, false), !(-302f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-589f)))));
    return Struct_3(Struct_2(arg_2, arg_2.b, !vec2<bool>(arg_1.x, !global1.a.d), all(vec4<bool>(!var_2.x, true, 1000f >= arg_2.c.x, arg_1.x || false)), vec3<u32>(u_input.c.x, global1.a.e.x, _wgslsmith_add_u32(arg_0, _wgslsmith_add_u32(34876u, 1u)))), ~vec3<i32>(u_input.b, -2147483647i, _wgslsmith_div_i32(11148i, 19394i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-7157i, u_input.b, u_input.b, -1i), vec4<i32>(global1.b.x, -21099i, -26112i, global1.b.x))), -296f);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> u32 {
    global0 = array<vec2<f32>, 23>();
    var var_0 = global1.a;
    global1 = func_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.e.x, 22911u, arg_1.a.e.x) ^ max(select(arg_1.a.e, arg_1.a.e, vec3<bool>(global1.a.c.x, true, var_0.c.x)), abs(vec3<u32>(16136u, 7395u, arg_1.a.e.x))), vec3<u32>(63070u, ~(~var_0.e.x), 62342u)), !(!vec3<bool>(global1.a.c.x, global1.a.d, !var_0.d)), func_2(~_wgslsmith_mult_u32(var_0.e.x, ~u_input.c.x), select(!select(vec3<bool>(false, arg_1.a.d, var_0.d), vec3<bool>(true, true, var_0.c.x), vec3<bool>(arg_1.a.d, false, arg_1.a.d)), vec3<bool>(true, true, true), vec3<bool>(global1.a.d, arg_0.x != u_input.b, 0i == u_input.b)), global1.a.a).a.a);
    var var_1 = !(!(!(!(!vec4<bool>(var_0.d, true, var_0.c.x, true)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-359f, arg_1.c))), 1000f, vec2<f32>(_wgslsmith_div_f32(575f, -2459f), -1030f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.a * global1.a.a.b), _wgslsmith_f_op_f32(max(-843f, arg_1.a.a.a)))))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(673f, _wgslsmith_f_op_f32(min(global1.c, var_0.a.c.x))) - _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(trunc(arg_1.c)), func_2(arg_1.a.e.x, vec3<bool>(var_0.d, var_0.d, var_1.x), arg_1.a.a).a.c.x)))), select(!select(vec2<bool>(var_1.x, true), vec2<bool>(true, true), func_2(19342u, vec3<bool>(true, var_1.x, var_0.c.x), arg_1.a.a).a.c), !func_2(16816u, var_1.yxx, global1.a.a).a.c, all(var_1.wyw)), !(1i > _wgslsmith_mult_i32(global1.b.x, _wgslsmith_dot_vec2_i32(arg_1.b.zz, global1.b.zx))), ~(~(~u_input.c)));
    return (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(select(var_0.e.yy, vec2<u32>(22011u, var_0.e.x), global1.a.c.x), func_2(24942u, var_1.wyw, var_2.a).a.e.xy), var_0.e.x) >> (~select(max(0u, global1.a.e.x), reverseBits(1u), false) % 32u)) >> (23247u % 32u);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    var var_0 = !select(vec4<bool>(!all(vec2<bool>(arg_1.c.x, arg_1.d)), countOneBits(u_input.b) != global1.b.x, arg_1.d, true), select(!select(vec4<bool>(true, global1.a.c.x, true, true), vec4<bool>(arg_1.c.x, global1.a.c.x, global1.a.c.x, false), arg_1.c.x), select(!vec4<bool>(false, arg_1.d, global1.a.d, arg_1.d), !vec4<bool>(false, arg_1.d, true, false), vec4<bool>(false, true, global1.a.d, false)), select(vec4<bool>(global1.a.d, false, false, global1.a.c.x), !vec4<bool>(true, global1.a.d, arg_1.c.x, arg_1.c.x), select(vec4<bool>(arg_1.c.x, global1.a.c.x, arg_1.c.x, true), vec4<bool>(false, arg_1.d, false, true), global1.a.c.x))), false);
    let var_1 = ~max(min(_wgslsmith_sub_u32(arg_1.e.x, arg_1.e.x), select(firstTrailingBit(arg_0.x), 1u, true)), func_4(-vec4<i32>(global1.b.x, u_input.b, -2147483647i, u_input.b), func_2(~global1.a.e.x, !vec3<bool>(global1.a.c.x, arg_1.d, var_0.x), Struct_1(1000f, 296f, arg_1.a.c))));
    let var_2 = Struct_3(global1.a, abs(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, -49140i, u_input.b) >> (arg_1.e % vec3<u32>(32u))), firstLeadingBit(select(global1.b, vec3<i32>(57896i, -2147483647i, -2147483647i), var_0.xxx)))), _wgslsmith_f_op_f32(-arg_1.a.a));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(firstTrailingBit(u_input.c), global1.a, firstLeadingBit(vec3<u32>(abs(~49504u), 1u, _wgslsmith_div_u32(~1u, 63406u))));
    global0 = array<vec2<f32>, 23>();
    global1 = func_2(_wgslsmith_mod_u32(abs(~u_input.c.x), u_input.a.x), vec3<bool>(global1.a.d, 790i <= u_input.b, (global1.a.a.c.x < -722f) || all(select(vec4<bool>(true, global1.a.d, global1.a.c.x, global1.a.c.x), vec4<bool>(global1.a.c.x, true, global1.a.d, global1.a.d), vec4<bool>(false, global1.a.c.x, global1.a.c.x, false)))), Struct_1(_wgslsmith_f_op_f32(global1.c * global1.a.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(round(-2915f))) - -253f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-395f, global1.a.b)))));
    global0 = array<vec2<f32>, 23>();
    let var_1 = Struct_2(global1.a.a, global1.c, vec2<bool>(global1.a.d, global1.a.d), !global1.a.d, reverseBits(u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_1.e.zy), var_1.a.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -137f, 1769f) - vec3<f32>(var_1.a.b, 1566f, -237f))), vec3<f32>(537f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2532f * global1.a.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(629f, global1.a.b) - _wgslsmith_f_op_f32(var_1.b * 1271f))))), ~abs(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(global1.b.x, -1i), global1.b.yx))));
}

