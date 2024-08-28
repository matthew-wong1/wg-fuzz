struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 89794u, 22102u, 5976u);

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(2147483647i, 0i, 4736i), 23616u, vec2<bool>(false, false)), Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(16528i, 21658i, 1i), 44307u, vec2<bool>(false, false)), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(-2398i, -54016i, -29571i), 62221u, vec2<bool>(false, false))), Struct_3(Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(0i, -7682i, 1i), 0u, vec2<bool>(true, true)), Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(-57611i, i32(-2147483648), i32(-2147483648)), 1u, vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(-8882i, 0i, 31393i), 109063u, vec2<bool>(false, false))));

var<private> global2: vec2<i32> = vec2<i32>(-17012i, 20720i);

var<private> global3: vec4<i32> = vec4<i32>(-20626i, -1i, -1i, i32(-2147483648));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: u32) -> vec4<u32> {
    var var_0 = global0.x;
    var_0 = reverseBits(global0.x);
    let var_1 = u_input.a.x;
    let var_2 = ~(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-51360i, 11566i, 2147483647i)), global3.yyw));
    let var_3 = -(1i & var_2);
    return ~(~(~(min(vec4<u32>(arg_2, 4294967295u, u_input.b, arg_2), vec4<u32>(var_1, 64472u, u_input.a.x, var_1)) & ~vec4<u32>(global0.x, arg_2, 4294967295u, u_input.a.x))));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> vec3<f32> {
    var var_0 = 18996u;
    global2 = _wgslsmith_sub_vec2_i32(~u_input.c, global3.yz);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(561f + arg_1) - _wgslsmith_f_op_f32(round(280f)));
    global2 = vec2<i32>(_wgslsmith_add_i32(68832i, max(reverseBits(-4361i), -32832i)), _wgslsmith_div_i32(-global3.x, 0i));
    var var_2 = reverseBits(global0.xwy);
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-379f * _wgslsmith_f_op_f32(arg_1 + arg_0.x)))), 1124f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(arg_1, -1043f, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)))), vec3<bool>(false & all(vec3<bool>(true, true, true)), !((1i >> (var_2.x % 32u)) <= ~global3.x), true)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    let var_0 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(770f, 2306f, arg_2), -339f)) * vec3<f32>(-1204f, -1382f, 703f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1241f), arg_2, arg_2), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -322f), arg_2, _wgslsmith_f_op_f32(trunc(arg_2)))))));
    global2 = global3.yw & -u_input.c;
    global0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(global0.x, 29759u), ~0u), 1u, _wgslsmith_mult_u32(arg_0.x, ~28101u), ~(~(~global0.x << (~87579u % 32u))));
    let var_1 = _wgslsmith_f_op_f32(select(arg_2, 1508f, arg_1.x));
    global1 = array<Struct_3, 2>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~reverseBits(u_input.a.x) >> (50123u % 32u));
    var var_1 = -u_input.c.x;
    global0 = max(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_0, var_0, 0u, var_0)), abs(func_1(vec2<bool>(true, true), global3.x, 44088u))) >> (vec4<u32>(73465u, _wgslsmith_mod_u32(48194u, 1u), 4294967295u, func_1(vec2<bool>(false, true), u_input.c.x, 1u).x << (_wgslsmith_mult_u32(var_0, global0.x) % 32u)) % vec4<u32>(32u)), ~(~(~vec4<u32>(global0.x, 4294967295u, global0.x, 19289u) >> ((vec4<u32>(var_0, var_0, var_0, var_0) << (vec4<u32>(var_0, 8832u, 19504u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    let var_2 = global2.x;
    global3 = vec4<i32>(global2.x >> (1u % 32u), countOneBits(~0i), global2.x, 35198i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, u_input.a.x, ~86360u, ~(~(~u_input.b))), ~0u, vec3<i32>(1i, -18836i, abs(-1i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(510f)), _wgslsmith_f_op_f32(f32(-1f) * -309f), 1000f) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(143f, 2152f, -833f) - vec3<f32>(440f, -1439f, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(func_2(vec3<u32>(var_0, var_0, 4294967295u), vec4<bool>(true, true, true, true), 1376f)), _wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(209f, 404f, 445f), _wgslsmith_f_op_f32(func_2(vec3<u32>(global0.x, 26103u, global0.x), vec4<bool>(false, false, true, false), 308f)))).x, _wgslsmith_f_op_f32(f32(-1f) * -1374f)))));
}

