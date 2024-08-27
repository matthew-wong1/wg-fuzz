struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(1i, i32(-2147483648)), 4294967295u, vec3<bool>(false, false, true));

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -min(arg_2.a, vec2<i32>(abs(abs(20551i)), arg_2.a.x));
    global0 = arg_2;
    var var_1 = arg_0.x;
    global1 = global0.c.x;
    global1 = !(!arg_2.c.x);
    return arg_2;
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = arg_3;
    let var_1 = Struct_1(var_0.a, 17291u, vec3<bool>(!(all(vec2<bool>(true, arg_3.c.x)) & var_0.c.x), any(select(arg_0, !vec4<bool>(arg_0.x, true, global0.c.x, global0.c.x), true)), var_0.c.x));
    var var_2 = Struct_1(var_1.a, ~21284u, global0.c);
    var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_div_f32(arg_2.x, -2001f), arg_2.x, _wgslsmith_f_op_f32(-308f - arg_1))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_2), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -683f), arg_2.x, _wgslsmith_f_op_f32(min(-313f, arg_1)), 1830f))))));
    return arg_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1268f, -1000f, arg_0.x)))), !arg_3.c.x & all(arg_2.c.xx))), !(!(!select(vec4<bool>(true, true, true, global0.c.x), vec4<bool>(true, false, arg_2.c.x, arg_2.c.x), true))), arg_3);
    global1 = false;
    global0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(591f, 2980f, -1823f))))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), -692f, _wgslsmith_f_op_f32(-201f - -649f))))), select(select(func_3(select(vec4<bool>(var_0.c.x, true, false, true), vec4<bool>(arg_2.c.x, var_0.c.x, arg_3.c.x, false), vec4<bool>(true, var_0.c.x, false, false)), _wgslsmith_f_op_f32(-549f + -1229f), vec4<f32>(arg_0.x, 919f, 1173f, arg_0.x), Struct_1(vec2<i32>(2147483647i, arg_3.a.x), 73436u, var_0.c)), vec4<bool>(false, any(vec2<bool>(arg_2.c.x, arg_3.c.x)), var_0.c.x, !arg_3.c.x), vec4<bool>(true, true && global0.c.x, arg_2.c.x, !arg_1)), vec4<bool>(true, true, var_0.a.x <= _wgslsmith_clamp_i32(global0.a.x, -1i, 10574i), true), arg_3.c.x), Struct_1(vec2<i32>(arg_2.a.x, arg_3.a.x), _wgslsmith_div_u32(arg_3.b, _wgslsmith_sub_u32(abs(arg_2.b), _wgslsmith_div_u32(1u, 4294967295u))), vec3<bool>(true, any(vec4<bool>(false, true, false, true)), !(!global0.c.x))));
    global1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-332f, 822f, -561f))) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -925f, arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1803f, arg_0.x)))) - vec3<f32>(-450f, arg_0.x, arg_0.x)), !(!vec4<bool>(select(true, arg_2.c.x, true), arg_1, arg_2.c.x, true)), arg_2).c.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(-2076f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x));
    return max(~select(vec4<i32>(u_input.c, 113873i, -2774i, u_input.c) | -vec4<i32>(u_input.c, 827i, global0.a.x, global0.a.x), vec4<i32>(firstLeadingBit(6052i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, arg_2.a.x, 13792i), vec3<i32>(arg_2.a.x, 4586i, -3946i)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), global0.a), _wgslsmith_mult_i32(global0.a.x, var_0.a.x)), -810f != _wgslsmith_f_op_f32(ceil(arg_0.x))), ~(~(~select(vec4<i32>(1438i, arg_2.a.x, arg_2.a.x, -1i), vec4<i32>(var_0.a.x, -24606i, -17149i, u_input.c), vec4<bool>(true, true, var_0.c.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c.xz;
    var var_1 = (func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(555f, -303f), vec2<f32>(-1130f, 305f)))), _wgslsmith_f_op_f32(round(-1268f)) < _wgslsmith_f_op_f32(f32(-1f) * -1351f), Struct_1(global0.a, u_input.b.x | u_input.a.x, !global0.c), Struct_1(vec2<i32>(0i, global0.a.x), u_input.a.x, vec3<bool>(true, global0.c.x, false))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(36215u, 104742u, 0u, 20293u), u_input.a) % vec4<u32>(32u))) ^ vec4<i32>(u_input.c, -2147483647i, reverseBits(~_wgslsmith_div_i32(u_input.c, -2147483647i)), _wgslsmith_mult_i32(abs(global0.a.x), global0.a.x));
    let var_2 = Struct_1(vec2<i32>(1i, -2147483647i), _wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(u_input.a.x, global0.b)), ~firstLeadingBit(17979u)), vec3<bool>(func_3(vec4<bool>(global0.c.x, global0.c.x, true, true), _wgslsmith_f_op_f32(-2514f + -727f), vec4<f32>(-1257f, 269f, -978f, -1761f), Struct_1(var_1.zz, global0.b, vec3<bool>(var_0.x, global0.c.x, false))).x && global0.c.x, true & !global0.c.x, all(select(!vec4<bool>(var_0.x, global0.c.x, true, global0.c.x), func_3(vec4<bool>(false, global0.c.x, global0.c.x, global0.c.x), 1789f, vec4<f32>(-1000f, -124f, -206f, 1015f), Struct_1(global0.a, 1u, global0.c)), !vec4<bool>(true, var_0.x, true, global0.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~0u & countOneBits(u_input.b.x))), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, 461f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(164f, -1000f, 406f) * vec3<f32>(224f, 620f, -1070f)))), select(vec4<bool>(var_2.c.x & var_2.c.x, var_2.c.x, true, true), func_3(select(vec4<bool>(true, global0.c.x, var_2.c.x, true), vec4<bool>(true, true, false, false), global0.c.x), _wgslsmith_f_op_f32(-569f - 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(228f, -1346f, -362f, 664f)), func_2(vec3<f32>(-2372f, 489f, -407f), vec4<bool>(var_2.c.x, var_2.c.x, true, global0.c.x), var_2)), select(select(vec4<bool>(var_2.c.x, false, true, false), vec4<bool>(var_0.x, global0.c.x, false, global0.c.x), false), vec4<bool>(var_2.c.x, false, var_0.x, var_0.x), true)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(970f, -1000f, 269f), vec3<f32>(-1570f, -340f, 954f))), vec4<bool>(var_2.c.x, var_0.x, true, true), func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(944f, 1144f, 795f), vec3<f32>(-1149f, 423f, 645f))), func_3(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false), -1129f, vec4<f32>(256f, 326f, 3105f, 1293f), var_2), Struct_1(vec2<i32>(53181i, global0.a.x), 72811u, global0.c)))).b, countOneBits(~2163u));
}

