struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_2 = Struct_2(Struct_1(494f), vec4<bool>(false, true, true, true), Struct_1(-907f), Struct_1(-127f));

var<private> global2: f32 = 105f;

var<private> global3: array<Struct_1, 23>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = global1.d.a;
    global3 = array<Struct_1, 23>();
    var var_1 = Struct_4(~vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 0u), u_input.c.x >> (u_input.b % 32u), u_input.a.x >> (1u % 32u), 51125u), ~(u_input.b & 0u) | (u_input.b | u_input.c.x), select(vec2<bool>(global0.x | (global0.x | global0.x), all(!vec4<bool>(true, false, false, global0.x))), !(!vec2<bool>(false, global0.x)), global1.b.yy), global1.d.a);
    var var_2 = var_1.c.x;
    var var_3 = -u_input.d << (u_input.c.x % 32u);
    return 1729f;
}

fn func_2() -> Struct_3 {
    let var_0 = -1i;
    global3 = array<Struct_1, 23>();
    global0 = vec2<bool>(true, !any(vec3<bool>(global1.b.x, false & global1.b.x, all(global1.b.xy))));
    global1 = Struct_2(global1.d, select(!vec4<bool>(true, var_0 < 29052i, !global0.x, all(global1.b.zzx)), global1.b, any(global1.b)), global1.d, Struct_1(-428f));
    global3 = array<Struct_1, 23>();
    return Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x ^ ~4294967295u, _wgslsmith_dot_vec2_u32(select(u_input.a.xz, vec2<u32>(u_input.c.x, u_input.b), global1.b.yy), _wgslsmith_mod_vec2_u32(vec2<u32>(2672u, u_input.b), u_input.a.zy))), _wgslsmith_add_vec3_u32(reverseBits(u_input.a), u_input.a)), -(~((u_input.d & u_input.d) & (var_0 | -13793i))), vec4<bool>(global0.x || (_wgslsmith_f_op_f32(-global1.d.a) >= _wgslsmith_f_op_f32(func_3(u_input.d))), false, true, global1.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.c.a, 368f, -134f, arg_0.a))) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.a, global1.c.a, arg_0.a, -304f), vec4<f32>(1535f, global1.c.a, -866f, arg_0.a))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.d.a, 358f, 934f, global1.a.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-664f, _wgslsmith_f_op_f32(abs(2379f)), -1512f, -1168f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(599f, global1.d.a, arg_0.a, 1000f), vec4<f32>(-1298f, global1.d.a, -1606f, arg_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(727f, -687f, 219f, arg_0.a) - vec4<f32>(arg_0.a, global1.a.a, arg_0.a, -671f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-210f, global1.d.a, arg_0.a, 1081f)))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(516f)))), _wgslsmith_f_op_f32(2439f - 297f), 659f, _wgslsmith_f_op_f32(floor(global1.c.a))))));
    var var_1 = abs(~((~vec4<u32>(73686u, 1u, 36311u, u_input.c.x) | (vec4<u32>(arg_1.a, arg_1.a, 4294967295u, u_input.a.x) & vec4<u32>(arg_1.a, arg_1.a, 4294967295u, 14614u))) >> (~(vec4<u32>(1u, arg_1.a, 0u, 8106u) ^ vec4<u32>(arg_1.a, u_input.c.x, 59010u, arg_1.a)) % vec4<u32>(32u))));
    var var_2 = var_0.x;
    let var_3 = u_input.d;
    global1 = Struct_2(Struct_1(-207f), arg_1.c, global1.d, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1059f)), var_0.x))));
    return select(global1.b.yx, vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.a, 1000f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f)), global1.b.x), true);
}

fn func_1(arg_0: i32, arg_1: Struct_5) -> vec2<bool> {
    var var_0 = Struct_2(global1.d, !(!select(select(vec4<bool>(global1.b.x, global0.x, global1.b.x, true), global1.b, false), global1.b, global0.x)), global1.c, Struct_1(global1.d.a));
    global0 = var_0.b.wx;
    return func_4(var_0.d, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.a, global1.c.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1013f, global1.d.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, global1.d.a))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.c.a, global1.c.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.a, global1.a.a) + vec2<f32>(198f, global1.d.a)))))));
    global0 = select(global1.b.zx, select(vec2<bool>(all(select(global1.b.zxw, global1.b.xwz, vec3<bool>(false, global1.b.x, true))), any(vec4<bool>(true, global1.b.x, global1.b.x, false))), select(func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -1i, u_input.d), vec3<i32>(-19379i, u_input.d, u_input.d)), Struct_5(-33320i)), global1.b.wx, select(any(global1.b.zw), global0.x, !global0.x)), global1.b.x), func_1(_wgslsmith_sub_i32(-u_input.d, -11189i), Struct_5(-2147483647i)).x);
    var var_1 = u_input.c.zx;
    var var_2 = true;
    global3 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-vec2<i32>(u_input.d, 1i) >> (_wgslsmith_mod_vec2_u32(u_input.a.yz, u_input.a.xx) % vec2<u32>(32u)))));
}

