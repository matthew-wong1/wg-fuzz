struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> bool {
    var var_0 = vec4<i32>(4297i, _wgslsmith_div_i32(arg_0, u_input.d.x), _wgslsmith_div_i32(arg_0, firstLeadingBit(~(~arg_0))), 1i);
    var_0 = vec4<i32>(countOneBits(0i), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(-2147483647i >> (0u % 32u), u_input.b), 32140i), firstLeadingBit(abs(u_input.d.x)), _wgslsmith_add_i32(u_input.d.x, var_0.x));
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -2205f) - vec2<f32>(1694f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-316f, 444f), vec2<f32>(-109f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-305f, -889f))))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(var_2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -407f) - vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -134f))), true)));
    return any(select(arg_1.yy, !arg_1.yx, !vec2<bool>(true, false || arg_1.x)));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_add_u32(arg_2.x, ~reverseBits(~1u) ^ select(22965u, u_input.a.x, arg_1.x));
    let var_1 = u_input.d.x << (reverseBits(firstLeadingBit(u_input.a.x)) % 32u);
    var var_2 = arg_1.x;
    var_2 = !arg_1.x;
    var_2 = arg_1.x;
    return vec2<bool>(arg_1.x, !(!func_3(firstLeadingBit(-1i), arg_1.zwz)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = any(select(!vec2<bool>(u_input.c > 4294967295u, true), vec2<bool>(true, true), !(!func_2(arg_0.x, vec4<bool>(true, false, true, true), u_input.a.zz, Struct_1(vec2<f32>(arg_2.a.x, arg_0.x))))));
    var_0 = all(vec4<bool>(-11516i == arg_1.x, !all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))), select(select(true, false, true), func_3(-26518i, vec3<bool>(false, true, true)), !func_3(u_input.b, vec3<bool>(false, false, true))), false));
    var var_1 = abs(-(countOneBits(vec4<i32>(2147483647i, 39594i, 14846i, u_input.d.x)) & (vec4<i32>(-2147483647i, arg_1.x, arg_1.x, arg_1.x) >> (u_input.a % vec4<u32>(32u)))) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, arg_1.x, _wgslsmith_mult_i32(-1i, 634i), _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-2147483647i, u_input.d.x))), max(_wgslsmith_mod_vec4_i32(vec4<i32>(17764i, arg_1.x, -2147483647i, u_input.b), vec4<i32>(2147483647i, arg_1.x, u_input.d.x, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_1.x, u_input.d.x, u_input.b), vec4<i32>(-2147483647i, -13355i, -7171i, -24065i))), _wgslsmith_div_vec4_i32(-vec4<i32>(-1i, -3860i, arg_1.x, 2147483647i), vec4<i32>(arg_1.x, u_input.d.x, arg_1.x, -1i) | vec4<i32>(-15634i, 2147483647i, -1i, arg_1.x))));
    var_0 = true;
    var_0 = !(!(!(!(-2999i > arg_1.x))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-715f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(step(655f, 953f))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1601f, arg_0.a.x)))))) * arg_0.a), -(~_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(1i, -26606i, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.b, 14460i), vec3<i32>(-24141i, u_input.b, 1i)))), arg_0);
    let var_1 = u_input.c;
    let var_2 = arg_0.a.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a, vec2<f32>(var_0.a.x, 1000f), _wgslsmith_f_op_f32(floor(arg_0.a.x)) >= _wgslsmith_f_op_f32(step(var_2, var_2))))));
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a);
    return func_4(var_0);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(vec2<f32>(func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-312f, 1239f))), vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.b), u_input.d.x, u_input.b), arg_0).a.x, -950f));
}

fn func_7(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !arg_0;
    var var_1 = Struct_1(arg_2.a);
    let var_2 = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a.x, 326f), vec2<f32>(-297f, var_1.a.x))), _wgslsmith_f_op_vec2_f32(-var_1.a))))));
    var var_3 = any(!func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(173f)), _wgslsmith_f_op_f32(select(var_2.a.x, 1000f, true))), vec4<bool>(all(vec2<bool>(arg_0, false)), func_3(u_input.d.x, vec3<bool>(arg_0, arg_0, false)), arg_0 | arg_0, true), vec2<u32>(u_input.a.x, u_input.c), Struct_1(vec2<f32>(arg_2.a.x, -934f))));
    var var_4 = var_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = func_7(false, _wgslsmith_add_u32(min(~var_0, _wgslsmith_div_u32(u_input.a.x, 7303u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(5725u, 0u, 16917u), vec3<u32>(var_0, var_0, var_0))) << (4294967295u % 32u), func_6(func_5(func_4(func_1(vec2<f32>(1606f, 948f), vec3<i32>(2147483647i, -21000i, u_input.b), Struct_1(vec2<f32>(192f, -1277f)))))));
    var var_2 = abs(~max(-2147483647i, firstTrailingBit(u_input.d.x)));
    var var_3 = ~firstTrailingBit(u_input.c);
    let var_4 = Struct_1(vec2<f32>(var_1.a.x, -253f));
    var var_5 = u_input.b;
    var var_6 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_div_vec2_f32(func_4(func_6(Struct_1(vec2<f32>(-552f, 454f)))).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(375f, 416f)) - vec2<f32>(var_1.a.x, var_4.a.x)))));
    var var_7 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), ~select(vec2<u32>(67127u, 1u), min(u_input.a.yx, vec2<u32>(var_0, u_input.a.x)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-805f * var_4.a.x), var_6.a.x)))) + 256f), u_input.b);
}

