struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 75288u;

var<private> global1: u32 = 1u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_1(u_input.d.xyw);
    var var_1 = Struct_2(firstLeadingBit(arg_0.xx ^ vec2<i32>(~arg_0.x, _wgslsmith_clamp_i32(arg_0.x, -30929i, arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(f32(-1f) * -557f)));
    let var_2 = var_0;
    var var_3 = var_0;
    let var_4 = vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(round(672f)), var_1.b.x);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, var_4.x) + _wgslsmith_f_op_f32(round(var_1.b.x))))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_2(arg_0.xz, arg_1.b);
    let var_1 = ~u_input.d.x;
    var var_2 = 1u;
    let var_3 = select(-abs(max(arg_1.a, ~vec2<i32>(arg_1.a.x, 0i))), arg_0.wy, vec2<bool>(true, true));
    var var_4 = 76129u;
    return _wgslsmith_mult_u32(var_1, var_1);
}

fn func_2() -> bool {
    global0 = 25710u;
    global0 = ~func_3(~(-countOneBits(vec4<i32>(-1i, -1i, 15345i, 1i))), Struct_2(~(-vec2<i32>(25863i, 21492i)), vec2<f32>(-1016f, _wgslsmith_f_op_f32(f32(-1f) * -376f))));
    let var_0 = firstTrailingBit(reverseBits(vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.b) >> (~u_input.d % vec4<u32>(32u))) >> (~(~u_input.d << (abs(vec4<u32>(u_input.d.x, u_input.b, 1u, u_input.d.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = false;
    let var_2 = var_0.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(_wgslsmith_f_op_f32(round(468f)) == _wgslsmith_f_op_f32(func_1(vec3<i32>(-1i, 2147483647i, -14612i))), true, true & func_2()));
    var var_1 = u_input.b;
    global0 = max(u_input.a, firstLeadingBit(u_input.a | ~abs(38162u)));
    var var_2 = u_input.d.wx;
    let var_3 = !(!select(select(select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, var_0.x, true), true), true), select(vec3<bool>(var_0.x, false, true), !vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(true, var_0.x, true)));
    var_0 = vec3<bool>(select(!func_2(), true, var_3.x), true, (max(1i, _wgslsmith_div_i32(-25226i, -62894i)) > _wgslsmith_add_i32(~(-1i), _wgslsmith_clamp_i32(-2517i, 1i, -1i))) & (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d.zy, u_input.d.zy, vec2<u32>(var_2.x, var_2.x)), vec2<u32>(var_2.x, var_2.x)) >= 0u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(168f, -1271f)))))));
}

