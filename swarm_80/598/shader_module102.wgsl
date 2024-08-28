struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 87361u;

var<private> global1: f32;

var<private> global2: f32;

var<private> global3: array<f32, 12>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, true, false), 5245i, vec4<f32>(-2171f, -1980f, 880f, 1654f)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, true, true), 24268i, vec4<f32>(-246f, 799f, 569f, -191f)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    return u_input.b;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = arg_3.e.xy;
    global1 = global4.b.d.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(arg_0.x, 12u)])) - -2798f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a, arg_3.d.a.d.x)))));
    var var_1 = vec4<u32>(1u, u_input.a, countOneBits(1u), _wgslsmith_dot_vec4_u32(max(arg_3.e, min(~arg_3.e, _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 75485u, 4294967295u, 17496u), vec4<u32>(1u, arg_3.e.x, 50185u, 91090u)))), vec4<u32>(4294967295u, u_input.a, 9079u, 81679u)));
    var var_2 = -54152i;
    return arg_3.d.a.b.xzz;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    let var_0 = Struct_1(select(select(vec3<bool>(true, true, true), global4.b.b.xww, !global4.b.b.xyy), func_3(func_2(Struct_2(global4.b, Struct_1(global4.b.a, vec4<bool>(global4.a.a.x, true, false, false), 1i, vec4<f32>(arg_0.x, global4.a.d.x, global4.a.d.x, -340f)))), vec4<i32>(u_input.c ^ u_input.c, global4.b.c, global4.a.c, -19879i), 0i, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a.c, u_input.c), vec2<i32>(u_input.c, -1i)), i32(-1i) * -4116i, Struct_2(global4.a, Struct_1(global4.a.b.yzx, vec4<bool>(true, global4.b.a.x, global4.a.a.x, global4.a.b.x), 2147483647i, vec4<f32>(-631f, arg_0.x, arg_0.x, 360f))), max(u_input.b, u_input.b))), true), global4.b.b, global4.b.c, _wgslsmith_f_op_vec4_f32(-arg_0));
    var var_1 = countOneBits(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.a));
    global3 = array<f32, 12>();
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2339f + _wgslsmith_div_f32(-121f, _wgslsmith_f_op_f32(min(989f, _wgslsmith_f_op_f32(ceil(arg_0.x)))))), global3[_wgslsmith_index_u32(u_input.a, 12u)]));
    return -2714f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(vec3<bool>(true, global4.a.a.x & true, global4.b.a.x), global4.a.b.yxw, vec3<bool>(any(global4.b.b), all(vec2<bool>(false, false)), any(global4.b.b.xyx))), global4.b.b, u_input.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global4.b.d.x, -568f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 12u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 12u)], global3[_wgslsmith_index_u32(u_input.b.x, 12u)], 497f, 1488f), _wgslsmith_sub_u32(u_input.a, 0u))) * _wgslsmith_f_op_f32(-671f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 12u)] + 564f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.a.d.x, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(47614u, u_input.b.x), 12u)], any(vec3<bool>(true, false, global4.a.b.x)))) * _wgslsmith_f_op_f32(-global4.b.d.x)), _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(29424u, 12u)]))));
    global1 = _wgslsmith_f_op_f32(abs(var_0.d.x));
    let var_1 = var_0;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mult_i32(var_0.c, _wgslsmith_add_i32(var_0.c, -6043i)), -u_input.c, Struct_2(Struct_1(var_0.a, select(var_0.b, vec4<bool>(false, var_0.b.x, true, false), vec4<bool>(var_0.a.x, false, false, var_0.a.x)), ~countOneBits(global4.a.c), global4.a.d), var_1), u_input.b);
    var var_3 = !all(vec2<bool>(true, !var_1.a.x));
    var_3 = _wgslsmith_f_op_f32(select(441f, -739f, !select(!var_1.a.x, true, any(vec4<bool>(false, false, var_0.a.x, true))))) > -203f;
    global0 = ~u_input.b.x;
    global4 = var_2.d;
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(var_2.e.zwx, _wgslsmith_add_vec3_u32(u_input.b.wxz, ~vec3<u32>(7785u, 23617u, 31197u)) & countOneBits(var_2.e.yyz)), vec4<i32>(-16360i, _wgslsmith_dot_vec3_i32(vec3<i32>(-27183i, global4.b.c, 1i), -vec3<i32>(-1i, var_4.b, u_input.c)), var_4.b, var_4.c) | ~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(2147483647i, 1071i, var_2.c, var_0.c), vec4<i32>(global4.b.c, -2147483647i, global4.b.c, u_input.c), var_4.d.b.a.x), ~vec4<i32>(-1i, 1i, global4.b.c, -13176i), -vec4<i32>(-2147483647i, 1i, var_4.c, var_2.d.a.c)), _wgslsmith_dot_vec2_i32(~firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -2240i), vec2<i32>(var_4.d.b.c, 2147483647i))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global4.a.c, 0i), vec2<i32>(var_2.c, -1i)) >> (~vec2<u32>(16497u, 0u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(var_1.c, 4381i)), vec2<i32>(39301i, global4.b.c)))));
}

