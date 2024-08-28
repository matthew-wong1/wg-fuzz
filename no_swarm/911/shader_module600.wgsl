struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_u32(1u, ~u_input.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(294f + -1850f) + 1000f))), _wgslsmith_f_op_f32(-2175f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) * 262f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = any(vec3<bool>(true, any(vec2<bool>(true, all(vec4<bool>(false, false, false, false)))), !any(vec3<bool>(true, false, true))));
    let var_1 = Struct_1(!vec2<bool>(!var_0, var_0 && var_0));
    let var_2 = false;
    var var_3 = reverseBits(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~(-2627i), 2147483647i, 1i), ~(1i >> (0u % 32u))));
    var_3 = 2147483647i;
    return select(!(!vec4<bool>(!var_0, true, false, true)), vec4<bool>(true, !any(select(vec3<bool>(false, true, true), vec3<bool>(true, var_0, var_1.a.x), vec3<bool>(var_2, var_1.a.x, true))), 957f == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-471f)))), false | any(!vec3<bool>(false, var_1.a.x, false))), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-68429i, 1i), -19993i >> (u_input.a.x % 32u)), 1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-14297i, 0i, -33664i), vec3<i32>(4975i, 2659i, 57271i))) & _wgslsmith_mult_vec4_i32(-(~vec4<i32>(44993i, 36527i, -7569i, -3515i)), _wgslsmith_mod_vec4_i32(max(vec4<i32>(16097i, 6335i, 0i, 0i), vec4<i32>(2147483647i, 1i, -41059i, 1i)), vec4<i32>(-1i, 27165i, 2147483647i, -3588i))), ~(~(-select(vec4<i32>(0i, 0i, 23671i, 15109i), vec4<i32>(-22708i, -3562i, -8327i, 37522i), arg_0))));
    var var_1 = arg_1;
    let var_2 = Struct_1(var_1.a);
    let var_3 = var_2;
    var var_4 = _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_clamp_u32(~39027u, 1u, _wgslsmith_div_u32(0u, u_input.a.x))));
    return var_3;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = func_4(select(vec4<bool>(true, false, true, _wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)))) <= _wgslsmith_f_op_f32(abs(-282f))), select(vec4<bool>(false, false, any(vec4<bool>(true, false, false, false)), true), !func_3(u_input.a.x), all(vec4<bool>(false, false, true, true)) | true), vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) < firstTrailingBit(u_input.a.x), false)), func_3(14170u).yyz, false);
    var var_1 = arg_1;
    let var_2 = func_3(select(5919u, 60806u & max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, u_input.a.x), arg_2), u_input.a.x), false));
    var var_3 = var_0.a.x;
    var var_4 = var_0;
    return func_4(select(select(!select(var_2, var_2, vec4<bool>(true, var_2.x, true, true)), vec4<bool>(var_4.a.x, false, var_4.a.x, true), all(vec3<bool>(false, true, false))), vec4<bool>(var_2.x, select(true, true, all(var_2.wyw)), var_4.a.x, _wgslsmith_div_f32(-210f, 539f) > _wgslsmith_f_op_f32(-arg_1)), !(!all(var_2.yzy))), Struct_1(var_4.a), !func_3(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_2.x, u_input.a.x), 9853u)).wyw, any(!vec2<bool>(var_2.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) + -1864f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(342f + -1144f) * 2371f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(162f + 1423f) - -627f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f) + _wgslsmith_f_op_f32(f32(-1f) * -1199f)))), u_input.a, 1009f);
    var var_1 = Struct_1(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(0i, 0i, -26810i, 0i), vec4<i32>(0i, -1i, 25973i, 12136i)), abs(vec4<i32>(12882i, 55542i, 2147483647i, -55971i))) | _wgslsmith_div_vec4_i32(countOneBits(select(vec4<i32>(-17685i, -1i, -1i, 38909i), vec4<i32>(2147483647i, -1i, -1i, 0i), vec4<bool>(true, true, false, var_1.a.x))), reverseBits(vec4<i32>(-4735i, 1i, 2147483647i, 18763i))));
}

