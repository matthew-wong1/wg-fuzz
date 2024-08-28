struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: Struct_3,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> i32 {
    return _wgslsmith_mult_i32(66095i << ((reverseBits(u_input.e.x) & 21535u) % 32u), 23819i);
}

fn func_2() -> Struct_4 {
    let var_0 = vec4<i32>(u_input.b.x, -1i, ~(~u_input.c), ~_wgslsmith_add_i32(_wgslsmith_div_i32(func_3(Struct_3(Struct_1(u_input.e.x, u_input.b.x, vec2<i32>(-40492i, 2147483647i)), global0.xzx, 8238u, Struct_2(117f), -47677i)), abs(-1i)), _wgslsmith_add_i32(-33739i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))));
    return Struct_4(_wgslsmith_dot_vec4_i32(min(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.a, -var_0), (u_input.b << (vec4<u32>(39044u, u_input.e.x, 1u, 43179u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.e.x, 42855u, u_input.e.x, 0u) % vec4<u32>(32u))), vec4<i32>(min(38018i, -2147483647i), _wgslsmith_dot_vec3_i32(u_input.b.wwx, _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -1i, 1i), vec3<i32>(1i, u_input.b.x, var_0.x))), -(~2147483647i), 23261i)), ~u_input.e.yy, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(719f)) * _wgslsmith_f_op_f32(-1727f * 307f)))), u_input.b.yxz);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = vec4<bool>(global0.x, any(vec2<bool>(func_2().b.x <= ~4294967295u, global0.x)), true, !(!((false & global0.x) || !global0.x)));
    var var_1 = arg_0.d.x;
    var var_2 = func_2();
    var_2 = arg_0;
    var_2 = Struct_4(~var_2.d.x, ((vec2<u32>(11144u, var_2.b.x) >> (vec2<u32>(86071u, var_2.b.x) % vec2<u32>(32u))) ^ ~(~vec2<u32>(45505u, 21627u))) | select(abs(arg_0.b), ~(~var_2.b), !select(vec2<bool>(var_0.x, true), global0.zw, global0.x)), var_2.c, -arg_0.d);
    return func_2();
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = func_4(func_2(), u_input.d.x, select(_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), ~vec3<u32>(1u, u_input.e.x, u_input.e.x), any(vec3<bool>(true, global0.x, arg_0.x))), _wgslsmith_div_vec3_u32(u_input.e, u_input.e)), abs(abs(~u_input.e)), select(!select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, false), global0.x), select(select(vec3<bool>(global0.x, false, arg_0.x), arg_0.wzw, vec3<bool>(true, arg_0.x, false)), arg_0.zyz, select(arg_0.yzw, vec3<bool>(global0.x, arg_0.x, global0.x), arg_0.x)), select(select(arg_0.yyx, global0.www, arg_0.x), select(global0.yxx, vec3<bool>(arg_0.x, true, global0.x), false), false))));
    global0 = !select(vec4<bool>(arg_0.x, u_input.e.x <= var_0.b.x, global0.x, !all(vec2<bool>(false, arg_0.x))), select(arg_0, vec4<bool>(false, global0.x, global0.x, arg_0.x), select(!arg_0, select(arg_0, vec4<bool>(global0.x, global0.x, false, global0.x), false), !vec4<bool>(arg_0.x, global0.x, false, arg_0.x))), !arg_0);
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_add_u32(~(~_wgslsmith_div_u32(4294967295u, 63981u)) >> (_wgslsmith_div_u32(u_input.e.x, 0u) % 32u), firstLeadingBit(~(~max(42231u, u_input.e.x))));
    let var_3 = _wgslsmith_sub_i32(47439i, 0i);
    return Struct_1(_wgslsmith_mult_u32(min(49203u, reverseBits(var_2)) ^ max(~var_2, 101824u), ~19448u), var_3, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!vec4<bool>(true, global0.x, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2008f, -2167f, 1000f), vec3<f32>(975f, -833f, -229f))))))));
    global0 = !select(!select(!vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), any(vec3<bool>(global0.x, true, false))), select(vec4<bool>(select(global0.x, false, global0.x), true, !global0.x, true), select(select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(false, global0.x, true, global0.x), true), !vec4<bool>(global0.x, false, false, global0.x), !global0.x), true), select(!select(vec4<bool>(true, true, global0.x, false), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, true, true, true)), vec4<bool>(global0.x, global0.x == false, !global0.x, global0.x), vec4<bool>(false, false, global0.x, !global0.x)));
    global0 = !select(vec4<bool>(all(global0.xwy), global0.x, true, global0.x), vec4<bool>(any(vec4<bool>(false, true, global0.x, global0.x)), global0.x, global0.x, (-111930i & var_0.b) >= u_input.b.x), false);
    let var_1 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 0u, u_input.e.x, var_0.a), max(vec4<u32>(var_0.a, 6150u, var_0.a, var_0.a), vec4<u32>(1u, 0u, 18184u, var_0.a)), ~vec4<u32>(u_input.e.x, 9401u, u_input.e.x, var_0.a)) & max(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 29854u, var_0.a, u_input.e.x) >> (vec4<u32>(var_0.a, 37756u, var_0.a, 0u) % vec4<u32>(32u)), max(vec4<u32>(u_input.e.x, u_input.e.x, 0u, u_input.e.x), vec4<u32>(u_input.e.x, 35313u, 1u, 0u))), min(vec4<u32>(98092u, 4294967295u, 28814u, var_0.a) >> (vec4<u32>(u_input.e.x, var_0.a, var_0.a, 35230u) % vec4<u32>(32u)), ~vec4<u32>(var_0.a, u_input.e.x, var_0.a, 1u))));
    let var_2 = all(select(vec4<bool>(global0.x, any(select(global0.zw, vec2<bool>(true, true), vec2<bool>(true, global0.x))), global0.x, global0.x), select(!vec4<bool>(true, global0.x, false, true), select(!vec4<bool>(true, global0.x, true, false), vec4<bool>(true, global0.x, global0.x, global0.x), all(global0.wy)), !all(global0.zw)), global0.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 725f, 367f, -441f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1010f + -384f)), 1469f, 328f, _wgslsmith_div_f32(360f, func_4(Struct_4(u_input.d.x, var_1.yz, Struct_2(365f), vec3<i32>(u_input.d.x, 2147483647i, 0i)), u_input.d.x, var_1.xzy).c.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-515f, 1000f, -118f, -319f)) - vec4<f32>(1f, 1f, 1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-198f, var_3.x, -928f, var_3.x), vec4<f32>(1000f, -1429f, -473f, 1111f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1327f, 1000f, var_3.x, var_3.x), var_3))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_3), var_3, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) * 1262f), ~(~u_input.e.x));
}

