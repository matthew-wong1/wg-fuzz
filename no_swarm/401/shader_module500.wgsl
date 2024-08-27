struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-74525i, 19506i);

var<private> global1: Struct_2 = Struct_2(Struct_1(11072u), vec3<i32>(1i, 29915i, -1i), -35389i, false);

var<private> global2: bool = false;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<i32> {
    global1 = Struct_2(arg_2, vec3<i32>(~2147483647i, global1.b.x, ~countOneBits(38158i)) & global1.b, 0i, false);
    return _wgslsmith_add_vec3_i32(vec3<i32>(~21106i, 1i | select(-global1.c, -1i >> (1u % 32u), !arg_0), _wgslsmith_mult_i32(-_wgslsmith_sub_i32(1i, global1.c), ~global1.c)), global1.b);
}

fn func_3() -> bool {
    global2 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1651f, 877f))) > -1979f));
    global2 = select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(350f - -889f))) - 538f) == _wgslsmith_div_f32(-1484f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1260f)))), any(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), global1.d)), -global0.x != _wgslsmith_mod_i32(-72062i, global1.b.x), true, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(134f - -332f))))) > 241f);
    let var_0 = Struct_2(global1.a, global1.b, _wgslsmith_add_i32(i32(-1i) * -global0.x, global0.x), any(vec3<bool>(true, global0.x >= -2147483647i, true)) | global1.d);
    global2 = true;
    global1 = Struct_2(Struct_1(abs(firstTrailingBit(45208u))), var_0.b, 2147483647i, !(var_0.a.a != global1.a.a));
    return !(!any(select(!vec4<bool>(var_0.d, false, global1.d, false), select(vec4<bool>(global1.d, false, true, true), vec4<bool>(global1.d, global1.d, var_0.d, global1.d), vec4<bool>(true, true, true, global1.d)), !vec4<bool>(global1.d, true, false, var_0.d))));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global1 = Struct_2(Struct_1(65630u), _wgslsmith_div_vec3_i32(~(vec3<i32>(global1.c, 0i, global1.b.x) | global1.b), global1.b), global0.x, func_3());
    global0 = _wgslsmith_mult_vec2_i32(~global1.b.zx, global1.b.xz);
    let var_0 = global1.d;
    var var_1 = any(select(vec2<bool>(true, global1.d), !select(!vec2<bool>(global1.d, global1.d), vec2<bool>(false, global1.d), vec2<bool>(global1.d, false)), false));
    global2 = global1.d;
    return all(vec4<bool>(true, all(!select(vec3<bool>(global1.d, global1.d, true), vec3<bool>(global1.d, global1.d, global1.d), vec3<bool>(global1.d, global1.d, false))), global1.d, ~firstTrailingBit(u_input.a) > _wgslsmith_sub_u32(81486u, max(arg_0.x, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.a >> (u_input.a % 32u));
    global1 = Struct_2(global1.a, _wgslsmith_div_vec3_i32(global1.b ^ vec3<i32>(max(global1.b.x, 44669i), global1.c, global1.b.x), abs(-global1.b | func_1(global1.d, vec2<u32>(1u, 17478u), Struct_1(96736u)))), -func_1(!func_2(vec3<u32>(3990u, global1.a.a, u_input.a)), countOneBits(~vec2<u32>(global1.a.a, 100986u)), Struct_1(0u)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-881f))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f - 235f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-437f)) + _wgslsmith_f_op_f32(floor(690f))), global1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1508f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1221f * -417f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2005f, -630f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(839f, 126f), vec2<f32>(373f, 454f), vec2<bool>(true, global1.d)))))))));
}

