struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<i32>, 29>;

var<private> global2: vec4<i32> = vec4<i32>(1i, -67566i, -57017i, 48179i);

var<private> global3: Struct_3 = Struct_3(-338f, Struct_2(-2551f, vec2<bool>(true, true), 1815f, 70475u, Struct_1(vec4<i32>(-50999i, 0i, 2147483647i, 0i), vec2<i32>(41693i, 0i))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_4(Struct_3(global3.b.c, Struct_2(global3.b.c, select(global3.b.b, select(global3.b.b, vec2<bool>(global3.b.b.x, true), true), select(vec2<bool>(global3.b.b.x, false), vec2<bool>(global3.b.b.x, global3.b.b.x), global3.b.b.x)), _wgslsmith_f_op_f32(-global3.a), u_input.a.x, Struct_1(global3.b.e.a, global2.xx))));
    var var_1 = any(select(vec2<bool>(true, false), !(!var_0.a.b.b), var_0.a.b.b)) | true;
    var var_2 = Struct_1(~var_0.a.b.e.a, ~vec2<i32>(34197i, max(max(arg_0, u_input.b), _wgslsmith_mod_i32(0i, 2147483647i))));
    let var_3 = Struct_1(_wgslsmith_add_vec4_i32(var_2.a, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), var_0.a.b.e.a.zx);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.b.a)))) + _wgslsmith_f_op_f32(abs(-639f))), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-907f, 381f)) * -945f))), global3.b.b, -211f, u_input.a.x, global3.b.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1601f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1;
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-10746i)) - -1013f), arg_1));
    global1 = array<vec4<i32>, 29>();
    let var_2 = all(select(select(!(!vec2<bool>(true, arg_1.b.x)), var_1.a.b.b, all(vec4<bool>(var_1.a.b.b.x, global3.b.b.x, global3.b.b.x, false))), vec2<bool>(true && any(vec2<bool>(var_0.b.x, var_0.b.x)), true), arg_1.b.x));
    let var_3 = ~vec4<u32>(_wgslsmith_clamp_u32(~1u, var_1.a.b.d, 0u) ^ var_0.d, ~(arg_1.d << (10068u % 32u)) ^ reverseBits(abs(17468u)), u_input.a.x, _wgslsmith_mod_u32((var_0.d << (1u % 32u)) ^ ~u_input.c.x, 72809u));
    return -global2.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_div_i32(-10271i, func_2(arg_1.a, Struct_2(global3.b.a, vec2<bool>(global3.b.b.x, arg_0), 587f, 0u, Struct_1(vec4<i32>(-1i, -55959i, 1i, -1i), vec2<i32>(-1i, arg_1.b.x))))), global3.b.e.b.x);
    let var_1 = global3.b.e;
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(global3.b.c * -861f), global3.b));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.a), 215f);
    let var_4 = _wgslsmith_div_f32(global3.b.a, 1207f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.b.c))) * _wgslsmith_f_op_f32(floor(var_2.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1026f))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(925f, -212f)), global3.b.e)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(536f - -992f))))));
    let var_1 = Struct_3(var_0, global3.b);
    var var_2 = u_input.a.x;
    let var_3 = 1i;
    let var_4 = Struct_4(var_1);
    let var_5 = Struct_3(388f, Struct_2(var_0, !select(!var_1.b.b, global3.b.b, any(vec2<bool>(false, var_1.b.b.x))), var_1.b.a, var_1.b.d, var_1.b.e));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(abs(~global3.b.d), var_1.b.d, 1u, 44249u), _wgslsmith_div_u32(_wgslsmith_mod_u32(~0u, 3857u), 9970u));
}

