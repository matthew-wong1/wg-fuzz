struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<i32>) -> vec2<f32> {
    return arg_1;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.yx) * arg_2.a.xy);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), var_0.x), _wgslsmith_f_op_f32(arg_0.x + var_0.x))) * _wgslsmith_f_op_vec2_f32(arg_2.a.xx + vec2<f32>(-761f, var_0.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, arg_1), vec3<u32>(56997u, arg_1, 30384u)) & select(arg_1, 1u, arg_2.c), arg_2.a.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.b.x, arg_2.b.x) & vec2<i32>(-17597i, -2985i), _wgslsmith_mult_vec2_i32(arg_2.b, arg_2.b)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(-var_0.x)) - arg_2.a.xz)) + arg_2.a.yx);
    var_0 = arg_2.a.xz;
    let var_1 = vec4<u32>(~(~max(u_input.a.x >> (u_input.a.x % 32u), ~u_input.a.x)), ~1u, countOneBits(48686u), 4294967295u);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0, arg_2.a) - arg_2.a))))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(688f, -1150f, -717f), vec3<f32>(989f, 154f, -1947f), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-807f, -1338f, -358f) + vec3<f32>(-689f, 574f, -1102f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, -174f, -1044f)) - _wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(1117f, -1147f, 132f), 1u, Struct_1(vec3<f32>(812f, 1518f, 309f), vec2<i32>(9531i, -1i), true, 352f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-934f, -153f, 1000f) + vec3<f32>(986f, 448f, -1689f)))))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(true, true, all(vec4<bool>(true, false, true, true)))))), vec2<i32>(_wgslsmith_add_i32(0i, _wgslsmith_div_i32(i32(-1i) * -56907i, abs(-2147483647i))), select(~countOneBits(0i), min(abs(-13846i), max(-260i, 6795i)), true)), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) && true, -976f);
    var var_1 = ~select(~(~var_0.b.x), var_0.b.x, -var_0.b.x <= -71894i) < -6770i;
    var_0 = Struct_1(var_0.a, abs((var_0.b << (u_input.a.xy % vec2<u32>(32u))) & (-vec2<i32>(var_0.b.x, var_0.b.x) | ~var_0.b)), (!var_0.c & select(all(vec3<bool>(false, false, var_0.c)), var_0.c, false)) & all(select(!vec3<bool>(var_0.c, true, false), select(vec3<bool>(true, true, var_0.c), vec3<bool>(true, var_0.c, true), vec3<bool>(false, var_0.c, var_0.c)), !vec3<bool>(false, var_0.c, var_0.c))), var_0.d);
    let var_2 = Struct_2(u_input.a.zy >> (u_input.a.yx % vec2<u32>(32u)), 0u, _wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-var_0.a)), var_0.b);
    let var_3 = Struct_3(u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -364f)), ~(~0u), Struct_1(var_0.a, select(vec2<i32>(var_2.d.x, -2400i), vec2<i32>(2147483647i, 0i), true), any(vec3<bool>(true, false, var_0.c)), -746f))).x)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 360f;
    var var_1 = func_1(28612u);
    let var_2 = ~_wgslsmith_sub_vec3_i32(~vec3<i32>(reverseBits(0i), _wgslsmith_mult_i32(var_1.d.x, var_1.d.x), abs(-30274i)), min(countOneBits(vec3<i32>(var_1.d.x, var_1.d.x, -33399i)) | -vec3<i32>(-5407i, 0i, var_1.d.x), countOneBits(vec3<i32>(11645i, -60189i, -16750i))));
    var_1 = func_1(~1u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.x)));
    let var_4 = func_1(u_input.a.x);
    let var_5 = -2147483647i;
    var var_6 = firstLeadingBit(vec2<i32>(-51144i, ~reverseBits(~var_1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(~vec2<i32>(-2724i, var_1.d.x), vec2<i32>(_wgslsmith_div_i32(var_5, -2147483647i), -17561i & var_4.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1027f, _wgslsmith_f_op_f32(ceil(1289f)), _wgslsmith_f_op_f32(var_1.c.x - 2437f), var_1.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.c.x, var_0, var_4.c.x, var_0))))))));
}

