struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-274f)) + -285f), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -890f, 1000f, _wgslsmith_f_op_f32(max(-348f, -1346f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(576f, 268f, 415f, -362f), vec4<f32>(1000f, 1081f, -1139f, -1767f), vec4<bool>(false, false, true, true))), vec4<f32>(1f, 1f, 1f, 1f)))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false)), true), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false)), !vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-251f)), _wgslsmith_f_op_f32(f32(-1f) * -881f)))))), ~(-_wgslsmith_mod_vec2_i32(select(u_input.a.ww, u_input.a.xz, vec2<bool>(false, true)), vec2<i32>(u_input.a.x, u_input.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1611f, -441f, 848f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -453f), -1318f)))));
    var var_1 = vec3<bool>(true, !(!(_wgslsmith_div_i32(var_0.d.x, 49919i) != abs(1i))), !(!var_0.b.x));
    var var_2 = (-_wgslsmith_mult_vec3_i32(~vec3<i32>(20100i, -2147483647i, u_input.d), vec3<i32>(20122i, u_input.a.x, 2147483647i)) >> ((select(_wgslsmith_mult_vec3_u32(vec3<u32>(16612u, 20064u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), abs(vec3<u32>(76489u, u_input.c.x, 0u)), select(vec3<bool>(true, true, var_0.b.x), var_0.b.yxx, var_0.b.x)) ^ ~vec3<u32>(u_input.c.x, 0u, u_input.c.x)) % vec3<u32>(32u))) >> (reverseBits(u_input.c) % vec3<u32>(32u));
    let var_3 = Struct_3(var_0.a);
    var_1 = select(var_0.b.zxy, vec3<bool>(true, var_0.b.x, var_1.x), ~_wgslsmith_clamp_i32(-2147483647i, -54466i, _wgslsmith_clamp_i32(var_0.d.x, var_0.d.x, 16067i)) >= 1i);
    return 721f;
}

fn func_2(arg_0: u32, arg_1: f32) -> vec3<u32> {
    let var_0 = vec2<bool>(select(all(vec3<bool>(true, true, true)), true, true), false);
    var var_1 = u_input.a;
    var var_2 = arg_1;
    var_1 = vec4<i32>(2147483647i, u_input.a.x, 0i, ~(~u_input.d));
    var_2 = _wgslsmith_f_op_f32(func_3());
    return u_input.c;
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = func_2(23436u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(233f)))));
    let var_1 = !select(!vec4<bool>(any(vec3<bool>(false, true, false)), arg_0, true, false || arg_0), select(!vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(any(vec2<bool>(false, arg_0)), true, any(vec2<bool>(arg_0, arg_0)), true), !(!vec4<bool>(true, true, arg_0, arg_0))), !select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, true)), arg_0));
    var var_2 = -84164i;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -369f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-505f, 212f, -304f, 956f), vec4<f32>(-677f, 861f, 2112f, -406f))))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(237f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.a.b.x * var_3.a.a), -120f, arg_0))), vec4<f32>(-1996f, _wgslsmith_f_op_f32(var_3.a.b.x + 1061f), var_3.a.b.x, _wgslsmith_f_op_f32(ceil(var_3.a.a)))), select(select(!(!var_1), select(!vec4<bool>(arg_0, var_1.x, true, var_1.x), select(var_1, var_1, vec4<bool>(false, true, false, arg_0)), true), any(select(vec4<bool>(false, arg_0, var_1.x, false), vec4<bool>(var_1.x, false, arg_0, false), var_1))), vec4<bool>(!(var_0.x <= 1u), any(var_1.wx), _wgslsmith_div_f32(var_3.a.a, -1185f) > var_3.a.a, any(vec2<bool>(var_1.x, var_1.x))), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.a.b.x, _wgslsmith_f_op_f32(-var_3.a.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-127f)))), u_input.a.zx, vec3<f32>(var_3.a.a, var_3.a.a, var_3.a.a));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.a) - _wgslsmith_f_op_f32(-107f + -611f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.a, 455f, var_4.a.b.x, 1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(~(~u_input.a.x))) ^ countOneBits(_wgslsmith_sub_i32(-(~2147483647i), reverseBits(70793i)));
    var_0 = u_input.a.x;
    var var_1 = func_1(true);
    var var_2 = false;
    var_0 = ~(~_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(-2147483647i, u_input.b, 1i, -2147483647i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, u_input.d, 1i, -4539i), vec4<i32>(0i, 0i, 7312i, -35692i))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec4<u32>(firstTrailingBit(4294967295u), 104663u, u_input.c.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a)), -u_input.b ^ abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 2147483647i, u_input.b, 22513i), vec4<i32>(u_input.b, -1i, u_input.a.x, u_input.a.x))), u_input.c.x);
}

