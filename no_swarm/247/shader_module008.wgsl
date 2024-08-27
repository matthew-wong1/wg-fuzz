struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> bool {
    var var_0 = 0i;
    var_0 = -_wgslsmith_mult_i32(i32(-1i) * -(u_input.a.x | u_input.a.x), u_input.a.x);
    var var_1 = Struct_1(any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(105f, -466f)) + vec2<f32>(429f, -1000f)), vec2<f32>(1794f, _wgslsmith_f_op_f32(f32(-1f) * -1833f))))), vec2<bool>(!(!all(vec4<bool>(false, true, false, true))), any(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1044f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + var_1.b.x))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-var_1.b.x))));
    var var_3 = u_input.b.x;
    return all(vec4<bool>(true, !var_1.a, -1867f <= _wgslsmith_f_op_f32(var_1.b.x * 134f), _wgslsmith_f_op_f32(-var_1.b.x) < var_1.b.x));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_2(firstLeadingBit(u_input.a.wz), Struct_1(true, vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-600f)) + _wgslsmith_f_op_f32(floor(-1202f)))), vec2<bool>(true, _wgslsmith_sub_u32(u_input.b.x, 2568u) >= ~u_input.b.x)), Struct_1(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-606f, -813f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-186f, 1438f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(141f, -433f)))), !vec2<bool>(all(vec2<bool>(false, true)), true)));
    let var_1 = true;
    var_0 = Struct_2(firstTrailingBit(-(u_input.a.zx & var_0.a)), var_0.b, var_0.c);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.b.x + -752f), _wgslsmith_div_f32(1000f, var_0.b.b.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(429f, 232f), var_0.c.b, var_0.c.c)))), var_0.c.b, select(!select(vec2<bool>(var_0.c.a, false), var_0.b.c, false), vec2<bool>(true, true), var_0.c.a))), var_0.c);
    let var_3 = Struct_4(Struct_2(var_0.a, var_0.b, var_0.b), Struct_2(u_input.a.zz, var_2.b, var_0.b));
    return var_3.b.a.x;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -737f));
    let var_1 = -1000f;
    let var_2 = Struct_2(vec2<i32>(countOneBits((u_input.a.x >> (1u % 32u)) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x))), func_3(16389i)), Struct_1(true | !(u_input.a.x > u_input.a.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(921f, var_0))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, var_1), vec2<f32>(-505f, -551f), vec2<bool>(true, true))))))), vec2<bool>(true, true)), Struct_1(true, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -691f) - vec2<f32>(-187f, -1017f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), select(vec2<bool>(false, true), vec2<bool>(true, false), false))))), vec2<bool>(true, true)));
    let var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -(~u_input.a.x), var_2.a.x), -u_input.a.yz, ~u_input.a.yz);
    var var_4 = !func_1();
    return i32(-1i) * -var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1204f + _wgslsmith_f_op_f32(trunc(836f))))));
    let var_1 = _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-723f * _wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0)))) + -454f)))));
    var var_2 = !(var_0 >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(2613f, -132f))))) || !(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))) && func_1());
    var var_3 = _wgslsmith_div_u32(39054u, u_input.b.x);
    var var_4 = vec2<i32>(min(func_2(), ~23006i), -41770i);
    var_4 = -(~u_input.a.yz);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.zwz, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, 1u, u_input.b.x)), countOneBits(vec3<u32>(1u, u_input.b.x, u_input.b.x))), _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 50087u))) ^ u_input.b.x, u_input.b.zz, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(1000f + var_0), true)), _wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_0))))));
}

