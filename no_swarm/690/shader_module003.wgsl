struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    return !(!(!(!vec3<bool>(false, global0.x, true))));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<u32>) -> bool {
    global0 = !vec3<bool>(!any(func_1(false).yz), true, global0.x);
    let var_0 = 4294967295u;
    var var_1 = !(!(!all(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, true), true))));
    global0 = !select(vec3<bool>(all(func_1(global0.x)), global0.x, !(0i >= u_input.b.x)), vec3<bool>(true, (true && global0.x) && (var_0 >= 49075u), global0.x), !func_1(func_1(true).x));
    var var_2 = select(!global0.x, any(func_1((i32(-1i) * -2147483647i) == -u_input.b.x).xz), func_1(global0.x).x);
    return global0.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> vec3<f32> {
    let var_0 = Struct_1(!vec3<bool>(all(select(vec4<bool>(true, true, global0.x, true), vec4<bool>(false, false, false, global0.x), vec4<bool>(false, false, arg_1, true))), select(all(vec4<bool>(false, false, global0.x, global0.x)), arg_1 | global0.x, false), any(!vec3<bool>(arg_1, true, false))), !(arg_0.x < ~arg_0.x), _wgslsmith_div_i32(u_input.b.x, _wgslsmith_add_i32(~_wgslsmith_mult_i32(-80610i, u_input.b.x), u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -383f) - _wgslsmith_f_op_f32(max(301f, -2251f))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(step(-176f, 288f))))))), global0.x);
    var var_1 = Struct_1(vec3<bool>(arg_1, !global0.x || (global0.x || arg_1), func_1(global0.x & func_3(vec4<f32>(-472f, -185f, var_0.d, var_0.d), -730f, vec4<u32>(arg_0.x, 16644u, arg_0.x, 1u))).x), (global0.x & (any(vec2<bool>(arg_1, true)) || global0.x)) | global0.x, (5992i | firstLeadingBit(_wgslsmith_div_i32(u_input.a, -2147483647i))) & ~_wgslsmith_mult_i32(firstTrailingBit(u_input.b.x), u_input.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-641f + -740f))))), !any(var_0.a.zy));
    var var_2 = var_1.b;
    var var_3 = var_0;
    let var_4 = 1u;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(224f + 104f), -1311f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d) * _wgslsmith_f_op_f32(-var_0.d)), var_1.b)))), 1000f);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    global0 = !select(vec3<bool>(global0.x, true, arg_1.x & select(false, false, arg_0.e)), arg_1, vec3<bool>(true, !(arg_3 < arg_3), true));
    var var_0 = firstTrailingBit(~u_input.b.zy);
    global0 = !select(vec3<bool>(false, arg_0.d >= _wgslsmith_f_op_f32(arg_2.x + arg_2.x), false), !(!(!vec3<bool>(arg_0.b, false, false))), global0.x);
    var_0 = select(u_input.b.ww, countOneBits(vec2<i32>(~14827i, -2147483647i)), any(select(arg_0.a.xy, !vec2<bool>(arg_0.b, arg_1.x), arg_1.x)));
    global0 = select(vec3<bool>(global0.x, arg_2.x == arg_0.d, all(arg_0.a)), func_1(false), arg_1);
    return Struct_1(arg_0.a, false, 2147483647i, 1986f, all(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x))), all(!func_1(global0.x)), -(~2147483647i), 1f, select(false, 1u != _wgslsmith_dot_vec3_u32(vec3<u32>(62491u, 1u, 77085u), vec3<u32>(0u, 36413u, 0u)), func_1(false).x)), select(vec3<bool>(global0.x, !global0.x, func_1(select(false, global0.x, true)).x), vec3<bool>(!(!global0.x), true, false), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-696f + 1000f)), _wgslsmith_f_op_f32(abs(-1228f))) - _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mult_vec4_u32(select(vec4<u32>(10153u, 1u, 0u, 84382u), vec4<u32>(1u, 0u, 32911u, 0u), true), vec4<u32>(42270u, 57813u, 23076u, 0u)), all(vec3<bool>(false, true, global0.x))))), reverseBits(_wgslsmith_add_u32(~(~32319u), max(6269u, 1u))));
    var var_1 = !(!global0.x);
    var var_2 = ~_wgslsmith_mod_i32(u_input.b.x, ~1i);
    global0 = !select(var_0.a, var_0.a, var_0.a);
    var var_3 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-700f))), _wgslsmith_f_op_vec3_f32(func_2(~(~(~vec4<u32>(2100u, 4294967295u, 51135u, 20011u))), var_0.a.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(-418f)), 489f, _wgslsmith_f_op_f32(trunc(602f))), vec3<f32>(-371f, var_0.d, -929f))), vec3<f32>(_wgslsmith_f_op_f32(-1f), var_0.d, var_0.d))), var_0.c ^ 2147483647i, -var_0.c);
}

