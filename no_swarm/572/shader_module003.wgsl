struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = Struct_1(u_input.a & (i32(-1i) * -2147483647i), i32(-1i) * -3559i);
    var var_1 = Struct_1(countOneBits(35516i), _wgslsmith_sub_i32(~0i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.b << (u_input.c % 32u), 0i, arg_0 << (u_input.c % 32u)), arg_0)));
    var var_2 = true;
    var_1 = var_0;
    var var_3 = true;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1134f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1500f, _wgslsmith_f_op_f32(select(-1000f, -573f, false))))))));
}

fn func_1() -> bool {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-u_input.a)) - _wgslsmith_f_op_f32(max(1102f, _wgslsmith_f_op_f32(f32(-1f) * -3756f))))) + _wgslsmith_f_op_f32(func_2(u_input.a)));
    let var_2 = Struct_1(firstLeadingBit(9691i) >> (u_input.c % 32u), -66105i);
    let var_3 = var_2;
    var_1 = 1f;
    return var_0;
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> StorageBuffer {
    return StorageBuffer(~vec4<i32>(firstTrailingBit(arg_1), i32(-1i) * -2147483647i, arg_3.b, ~0i), -32123i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(vec2<i32>(u_input.a, _wgslsmith_mult_i32(1i, u_input.a)) | ~vec2<i32>(abs(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(-88830i, u_input.a))), u_input.a ^ _wgslsmith_add_i32(-_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a), vec2<bool>(!func_1(), true), Struct_1(-(~(-1i ^ u_input.a)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 36226i)), reverseBits(~vec4<i32>(14652i, -1i, 50082i, u_input.a)))));
}

