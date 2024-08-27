struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> f32 {
    var var_0 = -1i;
    let var_1 = vec2<bool>(true, !(!all(vec4<bool>(true, true, true, true)) || any(vec3<bool>(false, false, true))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-736f, 445f)) + 1000f))) - _wgslsmith_f_op_f32(433f - _wgslsmith_f_op_f32(829f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f - -1000f) * _wgslsmith_f_op_f32(trunc(250f))))));
    let var_3 = false;
    var_0 = ~countOneBits(i32(-1i) * -(~(-7711i)));
    return _wgslsmith_f_op_f32(-278f * _wgslsmith_f_op_f32(floor(-792f)));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = Struct_2(true, ~vec3<i32>(-13988i << (countOneBits(arg_0.x) % 32u), abs(15817i), ~(2147483647i << (0u % 32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_2()));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(-1246f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(259f)))));
    var_2 = var_0;
    return _wgslsmith_clamp_i32(i32(-1i) * -1i, -1i, -47731i);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.a)) * _wgslsmith_f_op_f32(665f + 153f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.a)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.a, -154f, 908f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, arg_2.a) + vec3<f32>(var_0, -169f, -305f)))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1366f, arg_2.a, -1131f)))))))));
    let var_2 = arg_1.b.x;
    let var_3 = arg_1;
    var var_4 = any(vec2<bool>(var_3.a, all(select(select(vec2<bool>(true, true), vec2<bool>(var_3.a, var_3.a), var_3.a), select(vec2<bool>(var_3.a, true), vec2<bool>(false, arg_1.a), false), vec2<bool>(true, true)))));
    return Struct_2(false, ~(~((arg_1.b & vec3<i32>(-13092i, -41326i, 17500i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(23290u, 4294967295u, 8507u), vec3<u32>(u_input.a, 2304u, 4294967295u)) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(1i, Struct_2(-104f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1616f + 521f))), vec3<i32>(func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(20256u, u_input.a), vec2<u32>(78817u, u_input.a))), firstTrailingBit(~(-2147483647i)), max(2147483647i, firstLeadingBit(-2147483647i)))), Struct_1(493f));
    let var_1 = ~vec3<u32>(~u_input.a, u_input.a, 42581u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))));
    var var_3 = Struct_1(var_2.a);
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-874f, -734f) * _wgslsmith_f_op_f32(round(var_2.a)))), true)));
    let var_5 = -var_0.b.x >> (var_1.x % 32u);
    var_4 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a - var_2.a), var_2.a)))));
    var var_6 = Struct_1(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.a, var_2.a), vec2<f32>(var_4.a, var_3.a))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(823f, 800f), vec2<f32>(var_4.a, 359f), vec2<bool>(var_0.a, false))))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(414f, var_6.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_4.a)), 466f) + vec2<f32>(-1251f, _wgslsmith_f_op_f32(-var_4.a))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a * 845f), 762f)), _wgslsmith_mult_vec3_u32(var_1, vec3<u32>(u_input.a, ~19962u >> (u_input.a % 32u), _wgslsmith_add_u32(u_input.a, max(u_input.a, var_1.x)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(trunc(1160f)))), _wgslsmith_f_op_f32(f32(-1f) * -546f)), _wgslsmith_f_op_f32(-var_3.a)), abs(var_5));
}

