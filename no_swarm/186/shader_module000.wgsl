struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1070f + _wgslsmith_f_op_f32(f32(-1f) * -1039f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + 776f)))), _wgslsmith_f_op_f32(227f + -1000f)));
    let var_1 = -1i >= _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(~(-1i)), -23271i), i32(-1i) * -firstTrailingBit(44907i), 16062i);
    let var_2 = Struct_1(vec3<i32>(~(-select(-25436i, 1i, var_1)), _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, -17927i, 23246i), vec4<i32>(0i, -17548i, -39031i, 1i))), vec4<i32>(1i, 1i, 1i, 1i) << (vec4<u32>(76026u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-32786i, 1417i, 47833i, 8630i), ~vec4<i32>(46759i, 449i, -2147483647i, -13526i), !vec4<bool>(true, false, var_1, var_1)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 12820i, -53980i, 39670i), vec4<i32>(-2147483647i, 2147483647i, 1i, -4030i)) >> (vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-338f, -1263f) + vec2<f32>(1163f, 824f))))));
    var_0 = var_2.b.x;
    var var_3 = var_2;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.b.x, -1815f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(554f, -204f) * _wgslsmith_f_op_f32(max(var_2.b.x, 467f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(596f * var_3.b.x) - _wgslsmith_f_op_f32(var_3.b.x - -496f)), -559f)));
}

fn func_2(arg_0: vec3<u32>) -> StorageBuffer {
    return StorageBuffer(reverseBits(countOneBits(vec2<i32>(-1i) * -vec2<i32>(13164i, 24033i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(1f))), 6550u);
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: bool, arg_3: u32) -> StorageBuffer {
    return func_2(vec3<u32>(~0u, 54815u, 32793u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(i32(-1i) * -2147483647i, countOneBits(~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), false, ~firstTrailingBit(1u));
}

