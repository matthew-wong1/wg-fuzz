struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 0u, 1u);

var<private> global1: array<vec4<i32>, 23>;

var<private> global2: array<f32, 13>;

var<private> global3: u32 = 1u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = -405f;
    var var_1 = global1[_wgslsmith_index_u32(65663u, 23u)];
    global2 = array<f32, 13>();
    global2 = array<f32, 13>();
    let var_2 = ~u_input.b.xwy;
    return vec2<bool>(!arg_1.x, (~reverseBits(u_input.b.x) | _wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, global0.x), countOneBits(global0.x), 0u)) >= 0u);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = false;
    let var_1 = arg_0.yzx;
    global3 = u_input.b.x;
    let var_2 = select(select(arg_0, !select(select(arg_0, vec4<bool>(false, arg_2.a.b.x, var_1.x, false), vec4<bool>(arg_1.b.x, var_0, true, arg_0.x)), arg_0, var_0), arg_0), !arg_0, select(select(arg_0, !(!arg_0), select(select(arg_0, vec4<bool>(false, false, arg_2.a.b.x, var_1.x), true), vec4<bool>(false, arg_1.b.x, arg_1.b.x, false), arg_1.b.x)), arg_0, true));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(888f)), _wgslsmith_f_op_f32(f32(-1f) * -593f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 13u)]), vec2<f32>(global2[_wgslsmith_index_u32(global0.x, 13u)], global2[_wgslsmith_index_u32(32953u, 13u)]))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-785f + _wgslsmith_f_op_f32(2457f * -650f))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: i32) -> i32 {
    let var_0 = global0.x;
    let var_1 = vec2<i32>(18455i, -1i);
    var var_2 = _wgslsmith_f_op_f32(func_4(vec4<bool>(!(~arg_2.c == -arg_3), (0i < _wgslsmith_dot_vec2_i32(var_1, arg_0.zz)) || arg_2.a, any(!vec2<bool>(true, arg_2.a)), 484f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 13u)])))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 17445i, 27227i), arg_0), !func_3(vec3<bool>(false, false, true), select(vec3<bool>(true, arg_2.b, arg_2.b), vec3<bool>(arg_2.a, arg_2.b, true), vec3<bool>(arg_2.b, arg_2.a, true)), -u_input.a, arg_2)), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c, 9039i, arg_3, arg_0.x), global1[_wgslsmith_index_u32(1u, 23u)] | vec4<i32>(-14645i, u_input.a, 17692i, 2147483647i)), select(func_3(vec3<bool>(true, arg_2.a, false), vec3<bool>(arg_2.a, arg_2.b, arg_2.a), var_1.x, arg_2), select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(true, false), vec2<bool>(false, true)), select(arg_2.a, false, true)))), arg_3));
    var var_3 = reverseBits(vec3<u32>(0u, 4294967295u, reverseBits(global0.x)));
    global0 = ~(~select(min(~vec3<u32>(global0.x, global0.x, global0.x), select(u_input.b.xxy, vec3<u32>(global0.x, 1u, 57424u), vec3<bool>(arg_2.a, arg_2.b, arg_2.a))), vec3<u32>(u_input.b.x, var_3.x, firstLeadingBit(u_input.b.x)), true));
    return u_input.a;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(u_input.a, vec2<bool>(true, true));
    global2 = array<f32, 13>();
    global0 = ~vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(0u, reverseBits(4294967295u)), 15041u) << (u_input.b.xxw % vec3<u32>(32u));
    let var_1 = Struct_1(var_0.a, var_0.b);
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, var_0.a), reverseBits(func_2(_wgslsmith_add_vec3_i32(vec3<i32>(-72277i, 1518i, var_0.a) >> (u_input.b.xyz % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, var_0.a, 0i), vec3<i32>(-2147483647i, u_input.a, -17052i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], -1249f, -2406f, 245f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-658f, global2[_wgslsmith_index_u32(16752u, 13u)], 1016f, 351f)))), Struct_3(true, false, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], vec4<i32>(1056i, 2147483647i, -11262i, 13217i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(400f, -818f, global2[_wgslsmith_index_u32(u_input.b.x, 13u)], 418f) - vec4<f32>(-1481f, -160f, 1074f, -534f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(global0.x, 13u)])))), u_input.a)));
    return Struct_3(var_0.b.x, all(select(!vec3<bool>(var_1.b.x, true, false), select(vec3<bool>(true, false, var_1.b.x), vec3<bool>(true, false, var_0.b.x), u_input.a == 2147483647i), select(!vec3<bool>(false, var_0.b.x, true), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(var_0.b.x, var_1.b.x, var_1.b.x))))), -2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-913f, _wgslsmith_f_op_f32(ceil(1101f))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x >> (global0.x % 32u), 13u)] + 269f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(79681u, 87736u, 48905u), 13u)])))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(957f, 205f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1676f, global2[_wgslsmith_index_u32(global0.x, 13u)]), vec2<f32>(global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(41102u, 13u)]), var_1.b))))))));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = func_1();
    let var_1 = Struct_1(min(2147483647i, arg_0.c) & func_2(vec3<i32>(arg_0.c, -2147483647i, ~u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(631f, -294f, arg_0.e.x, global2[_wgslsmith_index_u32(global0.x, 13u)])), arg_0, -26861i), select(!(!func_3(vec3<bool>(arg_0.b, arg_0.a, false), vec3<bool>(false, var_0.a, var_0.a), var_0.c, arg_0)), !vec2<bool>(false | arg_1, true), var_0.b));
    let var_2 = min(75226u, u_input.b.x);
    var var_3 = Struct_3(any(!vec3<bool>(true, select(var_1.b.x, false, var_0.b), var_0.c > -39454i)), _wgslsmith_f_op_f32(floor(-802f)) > var_0.e.x, -min((var_0.c ^ var_1.a) << (_wgslsmith_clamp_u32(u_input.b.x, global0.x, 14592u) % 32u), 2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0.d)) * _wgslsmith_f_op_vec4_f32(var_0.d + arg_0.d)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.d * arg_0.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(91145u, 13u)], 310f, 1164f, var_0.e.x)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.e.x)))), -572f));
    let var_4 = var_1;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 23>();
    global1 = array<vec4<i32>, 23>();
    var var_0 = global0.x;
    var_0 = _wgslsmith_sub_u32(4294967295u, 20109u);
    global0 = u_input.b.xxw >> (_wgslsmith_mult_vec3_u32(select(~vec3<u32>(64581u, global0.x, 0u), ~vec3<u32>(1u, global0.x, global0.x), 66472u < u_input.b.x) ^ u_input.b.yxw, ~(~u_input.b.xzw)) % vec3<u32>(32u));
    var var_1 = func_5(func_1(), all(vec3<bool>(true, true, global0.x == 16922u))) > ~u_input.b.x;
    var var_2 = 57163u;
    var_0 = ~(~global0.x);
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(reverseBits(u_input.b.x), global0.x), global0.x, u_input.b.x));
}

