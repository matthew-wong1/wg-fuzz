struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<u32>(0u, 1u), vec2<bool>(true, false), vec2<i32>(24597i, 1i), vec2<f32>(361f, -1000f), vec4<i32>(9277i, 0i, -1i, 2147483647i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = vec4<i32>(arg_0, u_input.a.x, 1i, -23256i);
    return select(vec2<bool>(all(vec4<bool>(arg_0 > var_0.x, u_input.b == u_input.b, true, u_input.a.x >= var_0.x)), true), vec2<bool>((78978u << ((66649u ^ u_input.b) % 32u)) >= u_input.b, all(vec2<bool>(true, all(vec4<bool>(false, true, false, true))))), select(true, arg_1.x == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)) && all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
}

fn func_2() -> vec4<bool> {
    var var_0 = u_input.a;
    var var_1 = Struct_3(vec2<u32>(1u, ~u_input.b), 0u, Struct_2(all(vec4<bool>(all(vec3<bool>(false, true, false)), true, all(vec3<bool>(true, true, false)), true)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-345f, -225f))))))));
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_div_u32(~var_1.a.x & 1u, ~_wgslsmith_div_u32(1u, 53762u)), 35742u), select(select(select(vec2<bool>(var_1.c.a, true), vec2<bool>(var_1.c.a, var_1.c.a), vec2<bool>(true, true)), vec2<bool>(u_input.a.x >= 15752i, true), vec2<bool>(false, any(vec4<bool>(false, var_1.c.a, true, var_1.c.a)))), !(!func_3(-13792i, vec4<f32>(var_1.c.b.x, -1000f, var_1.c.b.x, var_1.c.b.x))), !(!func_3(var_0.x, vec4<f32>(var_1.c.b.x, -343f, var_1.c.b.x, -1461f)))), -reverseBits(select(vec2<i32>(u_input.a.x, 2147483647i), ~vec2<i32>(var_0.x, 51609i), false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.b.x), _wgslsmith_f_op_f32(round(384f))))), 1f), vec4<i32>(-1i) * -abs(~vec4<i32>(u_input.a.x, var_0.x, -2147483647i, var_0.x)));
    var var_3 = Struct_2(true, vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_1.c.b.x))))));
    var_0 = _wgslsmith_sub_vec2_i32(var_2.e.xz, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -1i) & var_2.e.yyz, -firstLeadingBit(vec3<i32>(-1i, u_input.a.x, 35291i))), reverseBits(2147483647i)));
    return !(!(!(!select(vec4<bool>(true, var_1.c.a, var_1.c.a, false), vec4<bool>(false, false, false, var_3.a), var_1.c.a))));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = all(!select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, true, false), false), !func_2(), !any(vec3<bool>(true, false, true))));
    var var_1 = true;
    global0 = array<Struct_1, 1>();
    var var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(2033f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0), false))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 2244f) + vec2<f32>(arg_0, 1000f)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 2557f) * vec2<f32>(-1014f, 265f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1295f)) + vec2<f32>(1000f, arg_0)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(671f, arg_0)))))), var_0)));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(func_1(453f) >> (10861u % 32u), min(firstLeadingBit(1u) << (1u % 32u), abs(max(1643u, 6395u)))), ~u_input.b, u_input.b);
    let var_1 = vec2<u32>(~21461u, 0u);
    var var_2 = Struct_3(~(~vec2<u32>(max(29186u, u_input.b), 23796u)), 1u, Struct_2(false, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1462f)) + 1f), -1048f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.b.x, var_2.c.b.x, -481f, 1000f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.c.b.x, var_2.c.b.x, var_2.c.b.x, var_2.c.b.x), vec4<f32>(398f, var_2.c.b.x, 412f, var_2.c.b.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, var_2.c.b.x, 465f, var_2.c.b.x) - vec4<f32>(var_2.c.b.x, var_2.c.b.x, -1915f, var_2.c.b.x))), vec4<f32>(_wgslsmith_f_op_f32(976f - -1523f), 937f, _wgslsmith_f_op_f32(-var_2.c.b.x), var_2.c.b.x), true)))));
    let var_4 = global0[_wgslsmith_index_u32(~4294967295u, 1u)];
    let var_5 = var_3.zyx;
    let x = u_input.a;
    s_output = StorageBuffer(478f, _wgslsmith_add_vec2_i32(abs(vec2<i32>(-56830i, firstTrailingBit(var_4.c.x))), min(select(max(var_4.c, u_input.a), -var_4.e.yz, !vec2<bool>(var_4.b.x, true)), ~vec2<i32>(u_input.a.x, u_input.a.x) << (abs(var_1) % vec2<u32>(32u)))));
}

