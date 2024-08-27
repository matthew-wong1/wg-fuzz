struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-1154f, -112f), true, Struct_2(630f, 0u, -1i, 838f));

var<private> global1: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(12691i, 1i, 19365i), vec3<i32>(7126i, i32(-2147483648), 27289i), vec3<i32>(i32(-2147483648), -8148i, -1i), vec3<i32>(6784i, 2147483647i, -34564i), vec3<i32>(1i, 1i, -97160i), vec3<i32>(-22419i, 2147483647i, -8719i), vec3<i32>(-10786i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(1i, 2147483647i, -1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-(~_wgslsmith_div_vec2_i32(vec2<i32>(global0.c.c, u_input.c), vec2<i32>(u_input.a, u_input.a))), min(countOneBits(~vec2<i32>(-16516i, -1i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 10771i), vec2<i32>(-22596i, global0.c.c)))), ~countOneBits(firstTrailingBit(-vec2<i32>(-2147483647i, -29724i))));
    var var_1 = Struct_5(true, -4892i, _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(14261u, 52347u, u_input.b.x), u_input.b.xzz) ^ _wgslsmith_clamp_vec3_u32(u_input.b.xyz, arg_1, vec3<u32>(18206u, 4294967295u, arg_1.x)), _wgslsmith_sub_vec3_u32(u_input.b.yyw & arg_1, arg_1 & vec3<u32>(44630u, global0.c.b, arg_1.x))) << (select(~_wgslsmith_add_vec3_u32(u_input.b.yyz, arg_1), vec3<u32>(min(global0.c.b, 14348u), global0.c.b, u_input.b.x | global0.c.b), true) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 591f, arg_0.x) + arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1326f, global0.c.d, -983f)), vec3<f32>(arg_0.x, -465f, -636f)))));
    let var_2 = vec2<u32>(~(u_input.b.x | (~arg_1.x & (arg_1.x >> (26779u % 32u)))), global0.c.b);
    let var_3 = ~vec2<i32>(var_1.b, 1i);
    var var_4 = -_wgslsmith_dot_vec2_i32(var_3 & var_3, var_3);
    return vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(round(global0.c.a)));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(arg_0.zz * _wgslsmith_f_op_vec2_f32(func_3(arg_0.yxz, u_input.b.xyy))), !(_wgslsmith_f_op_f32(abs(-702f)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.x - global0.c.d)))), global0.c);
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1585f * 483f))))), 926f);
    global1 = array<vec3<i32>, 9>();
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.c)), vec2<i32>(29107i, u_input.a)), global0.c.c)), 0i, u_input.c, -1i ^ (firstLeadingBit(~0i) >> ((abs(u_input.b.x) | (u_input.b.x & global0.c.b)) % 32u)));
    let var_2 = var_1.x;
    return (_wgslsmith_sub_i32(min(u_input.c, -14818i >> (u_input.b.x % 32u)), i32(-1i) * -49824i) != _wgslsmith_div_i32(_wgslsmith_mult_i32(-var_1.x, _wgslsmith_clamp_i32(2147483647i, 0i, u_input.c)), var_2)) | true;
}

fn func_1(arg_0: bool, arg_1: Struct_5) -> Struct_3 {
    global0 = Struct_3(arg_1.d.xy, arg_0 && func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -458f, 534f, global0.a.x))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f - _wgslsmith_f_op_f32(-arg_1.d.x))), 50189u, -global0.c.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f - arg_1.d.x))))));
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(-vec4<i32>(0i, -1i, 15498i, -26113i)), vec4<i32>(firstLeadingBit(2147483647i), i32(-1i) * -16674i, _wgslsmith_add_i32(-2147483647i, arg_1.b), ~49372i)), vec4<i32>(~countOneBits(-1i), u_input.c, 23068i, -arg_1.b)) ^ (~(~max(vec4<i32>(3663i, 43541i, -17258i, 23571i), vec4<i32>(arg_1.b, arg_1.b, arg_1.b, u_input.c))) & ~abs(vec4<i32>(global0.c.c, global0.c.c, -7088i, 2147483647i)));
    let var_1 = Struct_1(~u_input.b.zyy, any(vec2<bool>(global0.c.a <= arg_1.d.x, !(true | arg_1.a))), !(!(!global0.b)), !any(select(select(vec3<bool>(arg_0, false, true), vec3<bool>(false, true, false), vec3<bool>(true, arg_1.a, true)), !vec3<bool>(global0.b, true, true), !global0.b)), ~4294967295u);
    var var_2 = false;
    global1 = array<vec3<i32>, 9>();
    return Struct_3(_wgslsmith_div_vec2_f32(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(126f, 390f))) + vec2<f32>(arg_1.d.x, 305f)))), select(!any(vec2<bool>(true, true)), global0.b, _wgslsmith_dot_vec4_i32(var_0 << (vec4<u32>(global0.c.b, global0.c.b, 0u, u_input.b.x) % vec4<u32>(32u)), abs(var_0)) >= ~firstLeadingBit(var_0.x)), global0.c);
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1026f, _wgslsmith_f_op_f32(min(global0.c.d, -726f))) * arg_0.a);
    global1 = array<vec3<i32>, 9>();
    global1 = array<vec3<i32>, 9>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-435f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-global0.a.x))), all(vec3<bool>(true, global0.b, false))))) + arg_0.c.a);
    global1 = array<vec3<i32>, 9>();
    return select(select(!select(!vec3<bool>(global0.b, false, arg_0.b), select(vec3<bool>(false, true, global0.b), vec3<bool>(global0.b, global0.b, arg_0.b), vec3<bool>(false, arg_0.b, false)), vec3<bool>(false, false, arg_0.b)), !select(select(vec3<bool>(global0.b, false, arg_0.b), vec3<bool>(false, global0.b, arg_0.b), vec3<bool>(arg_0.b, global0.b, arg_0.b)), !vec3<bool>(global0.b, false, global0.b), select(vec3<bool>(false, false, arg_0.b), vec3<bool>(global0.b, false, global0.b), vec3<bool>(false, false, arg_0.b))), any(vec3<bool>(arg_0.b, arg_0.b, global0.b))), vec3<bool>(!((true && arg_0.b) & true), false, false), !arg_0.b);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>) -> StorageBuffer {
    var var_0 = any(vec2<bool>(!(arg_0.c.b && false), all(vec4<bool>(func_2(vec4<f32>(-824f, arg_0.a.x, global0.a.x, global0.c.a)), arg_0.c.c && arg_1.x, !arg_1.x, any(vec4<bool>(arg_0.c.b, false, false, true))))));
    var var_1 = vec4<bool>(true, select(any(vec2<bool>(arg_0.c.d, !global0.b)), func_2(vec4<f32>(1003f, _wgslsmith_f_op_f32(floor(global0.c.a)), _wgslsmith_f_op_f32(325f + arg_0.a.x), _wgslsmith_f_op_f32(step(arg_0.a.x, 2564f)))), func_4(func_1(true, Struct_5(arg_0.c.b, global0.c.c, arg_0.c.a, vec3<f32>(-145f, global0.c.d, global0.a.x)))).x), arg_1.x, true);
    var_0 = !arg_0.c.c;
    var var_2 = !arg_1.yx;
    let var_3 = global0.c.a;
    return StorageBuffer(firstLeadingBit(~_wgslsmith_dot_vec2_u32(arg_0.c.a.xx | vec2<u32>(arg_0.c.e, 1u), firstTrailingBit(arg_0.c.a.xx))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 9>();
    var var_0 = !(global0.b && global0.b);
    let x = u_input.a;
    s_output = func_5(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a))), global1[_wgslsmith_index_u32(78038u, 9u)], Struct_1(vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, global0.c.b), 1u), global0.b, true, true, u_input.b.x)), select(vec3<bool>(global0.b, any(select(vec4<bool>(global0.b, false, true, global0.b), vec4<bool>(true, global0.b, global0.b, global0.b), false)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, global0.b), vec3<bool>(global0.b, false, true)))), func_4(func_1(all(vec2<bool>(true, global0.b)), Struct_5(global0.b, u_input.c, vec3<u32>(global0.c.b, 0u, 89891u), vec3<f32>(-3163f, global0.c.a, global0.a.x)))), true));
}

