struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    let var_0 = ~(~vec2<u32>(14440u, 31555u));
    let var_1 = any(select(!(!vec2<bool>(arg_0, true)), vec2<bool>(any(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, arg_0, false, true), vec4<bool>(false, false, arg_0, arg_0))), arg_0), !(any(vec3<bool>(arg_0, arg_0, true)) | (arg_0 && arg_0))));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -944f) - _wgslsmith_f_op_f32(-222f - 641f))))), _wgslsmith_f_op_f32(abs(-831f))));
    var var_3 = -860f;
    let var_4 = Struct_3(all(select(select(select(vec4<bool>(true, var_1, arg_0, arg_0), vec4<bool>(arg_0, true, true, false), false), !vec4<bool>(true, true, true, arg_0), !var_1), vec4<bool>(true, true, -2102i < u_input.c.x, any(vec3<bool>(false, false, true))), any(select(vec2<bool>(true, arg_0), vec2<bool>(true, var_1), false)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2))), _wgslsmith_f_op_f32(max(-1050f, _wgslsmith_f_op_f32(min(765f, var_2))))))));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(true)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1287f, -577f, 870f) * vec3<f32>(-933f, -2229f, -559f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(372f, -1386f, -1000f), vec3<f32>(-515f, -248f, -1717f))))), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-48192i, -36961i, u_input.c.x, u_input.c.x), vec4<i32>(-8657i, -1i, 20731i, 0i), vec4<i32>(2147483647i, u_input.a, u_input.a, -1i)), vec4<i32>(-2147483647i, 1856i, -10708i, -20901i)), -1i, reverseBits(-2147483647i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.c.x, u_input.a)), vec4<i32>(u_input.a, -2147483647i, u_input.c.x, u_input.a))), -332f));
    var var_1 = firstLeadingBit((_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(var_0.a.c.x, -2147483647i)), _wgslsmith_sub_vec2_i32(u_input.c, u_input.c)) << (abs(~u_input.b) % 32u)) ^ abs(var_0.a.c.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.d, _wgslsmith_f_op_f32(-var_0.a.d)))));
    let var_3 = var_0;
    var var_4 = Struct_1(select(!select(vec3<bool>(var_3.a.a.x, false, false), var_0.a.a, vec3<bool>(var_0.a.a.x, false, var_0.a.a.x)), !select(select(vec3<bool>(true, false, var_3.a.a.x), var_3.a.a, false), var_3.a.a, var_0.a.a), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(539f, -184f)) * _wgslsmith_div_f32(var_2.x, var_0.a.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x * var_0.a.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_2.x))))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.a.b.x)))), var_0.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1280f), _wgslsmith_f_op_f32(ceil(var_2.x))))), _wgslsmith_add_vec4_i32(var_0.a.c, var_3.a.c), 1276f);
    return 0u;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(vec3<bool>(func_2() >= ~0u, u_input.e.x < _wgslsmith_clamp_u32(27540u, 47214u, ~u_input.e.x), all(vec4<bool>(all(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, false, true)), true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, _wgslsmith_f_op_f32(722f * 1000f), 1f)))), -(_wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, 41661i, u_input.a, u_input.c.x), vec4<i32>(-1i, -14482i, 2147483647i, u_input.c.x), vec4<bool>(true, true, false, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-15633i, u_input.a, -2147483647i, u_input.c.x))) >> (u_input.e % vec4<u32>(32u))), 348f);
    let var_1 = Struct_1(select(select(select(var_0.a, vec3<bool>(true, var_0.a.x, false), select(var_0.a.x, true, var_0.a.x)), select(vec3<bool>(false, var_0.a.x, var_0.a.x), select(var_0.a, var_0.a, var_0.a.x), vec3<bool>(var_0.a.x, false, false)), !var_0.a), var_0.a, var_0.a.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d, var_0.b.x, -570f), var_0.b, vec3<bool>(true, true, true))), _wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(635f, -1014f, var_0.d)))))), -(~vec4<i32>(u_input.a, 0i, 3254i, -38620i)) ^ var_0.c, 1007f);
    var_0 = var_1;
    var var_2 = var_1.c.xz;
    var var_3 = select(vec2<bool>(select(false, var_1.a.x, all(select(vec4<bool>(true, var_1.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, var_0.a.x, true, var_0.a.x), true))), !var_0.a.x), select(vec2<bool>(true, true), var_1.a.yx, false), !(var_0.a.x | var_0.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2472f) + var_0.b.x);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = 139638u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_1.x)))));
    let var_2 = all(select(vec2<bool>(arg_0, all(vec4<bool>(true, arg_0, false, arg_2))), select(select(arg_3.a.zy, vec2<bool>(arg_3.a.x, arg_2), true), arg_3.a.yy, !arg_3.a.yz), vec2<bool>(any(select(vec4<bool>(true, arg_3.a.x, arg_3.a.x, true), vec4<bool>(arg_2, true, true, true), vec4<bool>(arg_2, arg_0, false, arg_3.a.x))), ~u_input.d < (var_0 << (24685u % 32u)))));
    let var_3 = countOneBits(vec2<u32>(4294967295u, 60505u));
    var var_4 = Struct_1(!select(!vec3<bool>(arg_3.a.x, true, arg_0), !(!arg_3.a), true), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(select(var_1, arg_3.d, var_2))), arg_3.b.x, -280f), _wgslsmith_div_vec3_f32(arg_1.zxw, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(arg_1.zww, vec3<f32>(668f, -1689f, -1000f))))))), ~vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a), -(arg_3.c.x | -26951i), _wgslsmith_dot_vec2_i32(vec2<i32>(3802i, u_input.a), -vec2<i32>(u_input.a, u_input.a)), 76344i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(round(arg_3.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1.x, 314f, false)), _wgslsmith_f_op_f32(arg_3.d * -208f), false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, 739f)) * _wgslsmith_div_f32(arg_1.x, 1000f)))));
    return _wgslsmith_f_op_f32(-1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    var var_1 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(750f)), 677f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1606f + -2081f) * _wgslsmith_f_op_f32(step(130f, 136f)))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(600f - 233f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f) + _wgslsmith_f_op_f32(1431f - 223f))), any(vec2<bool>(true, true)), true);
    var var_2 = _wgslsmith_f_op_f32(func_4(var_1.x, vec4<f32>(_wgslsmith_f_op_f32(func_1()), -304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, 799f)), -466f)), -1557f), select(!(-1689f <= _wgslsmith_f_op_f32(sign(1799f))), true, all(vec4<bool>(true, any(vec2<bool>(var_1.x, var_1.x)), all(vec2<bool>(false, true)), all(var_1.zz)))), Struct_1(vec3<bool>(all(select(vec3<bool>(true, var_1.x, false), vec3<bool>(false, var_1.x, true), var_1.x)), var_1.x, true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(806f, 1651f, 993f) * vec3<f32>(-1385f, -340f, -1050f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-796f, -871f, -143f) * vec3<f32>(-543f, 1465f, 1419f))))), ~(-vec4<i32>(u_input.c.x, -12947i, u_input.c.x, 5313i) | (vec4<i32>(2147483647i, u_input.a, 998i, u_input.a) << (u_input.e % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-184f)) - _wgslsmith_f_op_f32(func_1())))));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -45230i, -6124i, -1i), vec4<i32>(u_input.c.x, -50470i, -13609i, u_input.c.x))) | -1i), vec3<i32>(-477i, u_input.a, u_input.a), ~(-57095i), u_input.c.x);
}

