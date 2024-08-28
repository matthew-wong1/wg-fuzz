struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-936f, 403f, -1059f, 1874f), vec2<bool>(false, true), 0i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) * _wgslsmith_f_op_f32(global0.a.x + global0.a.x)), global0.a.x)), 1176f, 165f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -566f)))));
}

fn func_2() -> bool {
    global0 = Struct_1(global0.a, vec2<bool>(!any(select(vec4<bool>(false, global0.b.x, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, global0.b.x, global0.b.x))), true), -17139i);
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.a.zyz, vec3<f32>(global0.a.x, global0.a.x, global0.a.x)))) - global0.a.xyx) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.a.yxx, global0.a.yyw))), global0.a.ywy)))));
    var var_1 = vec2<bool>(global0.b.x, true);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec2_u32(u_input.c, u_input.c), vec4<bool>(false, true, true, var_1.x))), _wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(-721f, var_0.x, 478f, global0.a.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(trunc(1032f)), 1441f, _wgslsmith_f_op_f32(-153f + var_0.x)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.x, 2086f, 1542f, 500f))))))), global0.b, u_input.a.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(528f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - global0.a.x) * global0.a.x), global0.a.x))), !(!(!select(global0.b, vec2<bool>(var_1.x, false), false))), _wgslsmith_mod_i32(-_wgslsmith_div_i32(countOneBits(1i), u_input.a.x), ~(-_wgslsmith_clamp_i32(0i, 0i, 15922i))));
    return !global0.b.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = true;
    var_0 = func_2();
    var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x))), arg_0.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f)) * arg_0.a.x));
    global0 = arg_0;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - global0.a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1112f, 1000f, 317f, 1000f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.a.x, var_1, global0.a.x)), !(!vec4<bool>(arg_0.b.x, true, true, global0.b.x))))), !vec2<bool>(u_input.c.x <= ~u_input.c.x, true), -16551i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(468f, 2020f, -1545f, global0.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1736f, 343f, 1000f, global0.a.x)))), !(!(!vec2<bool>(global0.b.x, global0.b.x))), ~(_wgslsmith_mod_i32(7658i, -22611i) ^ _wgslsmith_div_i32(u_input.a.x, u_input.a.x))));
    global0 = func_1(func_1(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(select(global0.a.x, 158f, global0.b.x)), _wgslsmith_f_op_f32(global0.a.x + global0.a.x), global0.a.x), vec2<bool>(global0.b.x, func_2()), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, 1i, global0.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2905i, -1i, -2147483647i), vec3<i32>(-2147483647i, global0.c, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, 23215i))))));
    var var_0 = !select(select(select(vec4<bool>(global0.b.x, true, false, global0.b.x), select(vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), vec4<bool>(false, false, true, global0.b.x), vec4<bool>(false, true, true, true)), true), !(!vec4<bool>(global0.b.x, false, false, global0.b.x)), vec4<bool>(global0.b.x, u_input.c.x < 20326u, 0u > u_input.c.x, all(vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x)))), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), false), !vec4<bool>(global0.b.x, global0.b.x, false, false), !global0.b.x), !vec4<bool>(false, global0.b.x, false, global0.b.x), !select(vec4<bool>(global0.b.x, false, global0.b.x, false), vec4<bool>(true, global0.b.x, true, true), vec4<bool>(false, true, true, true))), true);
    var_0 = !(!(!(!select(vec4<bool>(true, global0.b.x, false, global0.b.x), vec4<bool>(false, false, false, false), global0.b.x))));
    var var_1 = -839f;
    var var_2 = select(vec4<bool>(func_2(), countOneBits(~1u) == u_input.c.x, global0.b.x, global0.b.x), !(!vec4<bool>(u_input.c.x < u_input.b, var_0.x, true, func_1(Struct_1(global0.a, vec2<bool>(false, true), global0.c)).b.x)), !vec4<bool>(false, false, false, var_0.x));
    let var_3 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstTrailingBit(~_wgslsmith_div_u32(u_input.b, u_input.c.x)), countOneBits(u_input.c.x), u_input.b, ~(~u_input.c.x)), -2197f, _wgslsmith_div_vec4_u32(~select(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.b), vec4<u32>(18264u, u_input.c.x, u_input.c.x, u_input.b), vec4<bool>(var_2.x, true, var_2.x, true)), ~vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.b) & vec4<u32>(12369u, u_input.c.x, 1u, 1u)) >> (select(countOneBits(vec4<u32>(u_input.b, 18344u, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.c.x, 77958u, u_input.b, u_input.c.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 0u), u_input.c.x | 4294967295u, 1206u, 14603u), vec4<bool>(var_0.x, false, any(var_2.ywx), true == var_2.x)) % vec4<u32>(32u)), global0.a.xz);
}

