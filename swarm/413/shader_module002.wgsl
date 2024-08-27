struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-835f + _wgslsmith_div_f32(-661f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1333f, -177f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-351f + 1336f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -919f) + _wgslsmith_f_op_f32(ceil(-296f))), _wgslsmith_f_op_f32(ceil(591f)))));
    var var_1 = 5561i;
    var var_2 = abs(~(select(u_input.a.wxz, u_input.a.xzy << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), vec3<bool>(false, false, false)) | u_input.a.xxw));
    var_2 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.a.x, var_2.x, firstTrailingBit(51831u)), _wgslsmith_mod_vec3_u32(abs(u_input.a.yxx), select(vec3<u32>(var_2.x, 34747u, 27509u), vec3<u32>(u_input.a.x, 0u, 32508u), vec3<bool>(false, false, false))))) << (u_input.a.yzy % vec3<u32>(32u));
    var_2 = ~vec3<u32>(u_input.a.x, var_2.x, reverseBits(var_2.x));
    return var_0.a;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1959f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-864f, -1252f))));
    var var_2 = _wgslsmith_f_op_f32(631f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), var_1.b));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.a)), var_1.a) + var_1.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-984f - var_1.a), -582f) * var_1.b))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_4 = Struct_1(var_1.b, var_3.b);
    return -150i;
}

fn func_1() -> Struct_1 {
    var var_0 = min(vec3<i32>(13832i, func_2(vec3<i32>(2147483647i, select(5104i, 10169i, false), -26014i)), ~(i32(-1i) * -38072i)), vec3<i32>(-1i, 5796i, countOneBits(-26562i)) ^ select(vec3<i32>(-30817i, firstLeadingBit(1i), -12644i), vec3<i32>(reverseBits(-30353i), min(-1i, 0i), i32(-1i) * -1i), all(vec2<bool>(false, false)) | true));
    let var_1 = ~u_input.a.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2003f - -1000f), _wgslsmith_f_op_f32(step(-427f, -309f))), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1846f, -1000f))))));
    var var_3 = var_2;
    var_3 = Struct_1(385f, var_3.b);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(916f, var_0.a)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.b)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 1182f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_0.a) * vec2<f32>(1731f, var_0.b))))));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~32233u, ~firstLeadingBit(~u_input.a.x), u_input.a.x), select(reverseBits(vec2<i32>(_wgslsmith_div_i32(35468i, -1i), -2147483647i)), ~(min(vec2<i32>(-1i, -51894i), vec2<i32>(-70471i, -1i)) >> (firstTrailingBit(vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u))), vec2<bool>(true, all(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * -377f), 334f) + var_2.x));
}

