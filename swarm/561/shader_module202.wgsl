struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1287f, 1000f);

var<private> global1: array<bool, 20>;

var<private> global2: array<f32, 30> = array<f32, 30>(-1135f, 520f, 1199f, -786f, -468f, -1333f, 1184f, -1136f, -176f, 249f, 1746f, -1338f, 599f, -554f, -214f, -1097f, 2164f, 258f, -276f, 1726f, -167f, 878f, 867f, 1000f, -484f, -712f, 178f, 2382f, 619f, -1304f);

var<private> global3: Struct_1;

var<private> global4: array<bool, 29> = array<bool, 29>(false, false, false, false, false, false, true, false, true, false, true, false, true, false, true, false, true, false, false, false, false, false, false, false, true, false, false, true, false);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1108f))), _wgslsmith_f_op_f32(-global0.x), 1316f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(min(-721f, global3.a.x))))))), _wgslsmith_div_f32(_wgslsmith_div_f32(361f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(floor(-237f)))), -1357f));
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -481f)), _wgslsmith_f_op_f32(-917f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-213f, -341f))), global2[_wgslsmith_index_u32(~(u_input.c & u_input.e), 30u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3.b)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(u_input.c, u_input.d), 30u)] - _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 30u)]))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(114f)))), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 1u, u_input.d), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.e, 27133u), vec3<u32>(u_input.e, u_input.d, u_input.c))), 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 30u)] + 687f))))));
    var var_1 = ~(~(~4294967295u));
    global2 = array<f32, 30>();
    return _wgslsmith_sub_vec3_i32(reverseBits(max(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-217i, 1i, 2674i), vec3<i32>(0i, -4707i, arg_0))), vec3<i32>(arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(9661i, 1i, -1i), vec3<i32>(u_input.a, u_input.a, arg_0)), firstTrailingBit(-30806i)))), countOneBits(vec3<i32>(~u_input.b, u_input.a, ~(-19857i))) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, 12154i, arg_0) << ((vec3<u32>(4294967295u, u_input.d, u_input.e) & vec3<u32>(u_input.d, 26797u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-45217i, -2147483647i), vec2<i32>(-1i, -2147483647i)), ~(-2147483647i)), vec3<i32>(_wgslsmith_add_i32(arg_0, arg_0), -1i, arg_0)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    var var_0 = Struct_5(arg_3.a, arg_3.a, Struct_3(_wgslsmith_add_vec4_i32(~(~vec4<i32>(0i, -1i, 14466i, -43010i)), vec4<i32>(0i, 0i, arg_3.a.a.x << (4294967295u % 32u), -63692i)), abs(u_input.a)), _wgslsmith_mult_vec3_i32(func_3(arg_3.a.a.x), select(~vec3<i32>(-22061i, 79676i, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, arg_3.a.a.x, -1i), arg_0.ywy), !vec3<bool>(arg_3.a.c.x, global4[_wgslsmith_index_u32(0u, 29u)], true)) | arg_3.a.a.xwx));
    let var_1 = _wgslsmith_sub_u32(u_input.d, reverseBits(abs(~(~1u))));
    let var_2 = global3.a;
    var var_3 = !(!var_0.a.c.xy);
    global1 = array<bool, 20>();
    return arg_3.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_1) -> vec3<bool> {
    global4 = array<bool, 29>();
    var var_0 = select(vec3<u32>(u_input.c, u_input.e, ~_wgslsmith_add_u32(~1u, min(0u, u_input.d))), abs(~vec3<u32>(max(70040u, 1u), _wgslsmith_sub_u32(u_input.e, 1u), u_input.d ^ 0u)), all(arg_2.a.c.zy));
    var_0 = _wgslsmith_div_vec3_u32(abs(~(~vec3<u32>(4294967295u, var_0.x, 42842u))), (vec3<u32>(_wgslsmith_sub_u32(u_input.d, 0u), 4294967295u, 5767u) ^ ~(~vec3<u32>(4294967295u, u_input.e, 5566u))) << (~abs(~vec3<u32>(68435u, 1u, 1u)) % vec3<u32>(32u)));
    let var_1 = arg_0.a.wz;
    var_0 = select(~(~vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(var_0.xy, var_0.yz), 1u)), countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 0u, var_0.x), vec3<u32>(var_0.x, u_input.d, 30578u)), ~vec3<u32>(20203u, 23399u, u_input.c)) ^ ~(vec3<u32>(var_0.x, 42419u, var_0.x) << (vec3<u32>(0u, var_0.x, var_0.x) % vec3<u32>(32u)))), vec3<bool>(!all(select(vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 20u)]), arg_0.c.yw, global1[_wgslsmith_index_u32(var_0.x, 20u)])), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, (var_0.x << (0u % 32u)) << (_wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(42133u, 4294967295u)) % 32u)), 20u)], false));
    return arg_2.a.c.xzz;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>) -> i32 {
    global2 = array<f32, 30>();
    var var_0 = any(select(!func_4(func_2(vec4<i32>(arg_0.a.x, 3976i, u_input.b, arg_0.a.x), vec3<f32>(-298f, -685f, global2[_wgslsmith_index_u32(u_input.d, 30u)]), global4[_wgslsmith_index_u32(u_input.e, 29u)], Struct_4(arg_0)), Struct_1(vec4<f32>(arg_2.x, 412f, -1182f, global0.x), -206f), Struct_4(Struct_2(vec4<i32>(arg_0.a.x, u_input.b, u_input.b, -8589i), -559f, vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 20u)], true, true, arg_0.c.x))), Struct_1(global3.a, 146f)), vec3<bool>(select(false, true, true), global4[_wgslsmith_index_u32(35116u, 29u)], any(arg_0.c)), select(!arg_0.c.xzy, vec3<bool>(140f == arg_1, false, true), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u << (u_input.d % 32u), 29u)], true, !global1[_wgslsmith_index_u32(u_input.d, 20u)]))));
    var var_1 = select(func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.x, min(arg_0.a.x, -25150i), -4711i, firstTrailingBit(39452i)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_0.a.x, 0i, -2147483647i, u_input.a), arg_0.a, arg_0.c), ~vec4<i32>(u_input.b, -11589i, 3011i, u_input.a))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global3.a.wxx * global3.a.xwx))), false, Struct_4(Struct_2(func_2(vec4<i32>(arg_0.a.x, u_input.a, 0i, arg_0.a.x), global3.a.zzx, global4[_wgslsmith_index_u32(1u, 29u)], Struct_4(arg_0)).a, global2[_wgslsmith_index_u32(23141u, 30u)], arg_0.c))).c, !vec4<bool>(all(vec2<bool>(true, true)), false, global1[_wgslsmith_index_u32(~(~1653u), 20u)], true), !arg_0.c.x);
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_div_f32(-1325f, 1f);
    return -40124i;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(firstLeadingBit(~func_1(Struct_2(vec4<i32>(41i, -5024i, -18157i, u_input.b), 200f, vec4<bool>(global1[_wgslsmith_index_u32(51648u, 20u)], false, true, true)), global0.x, global3.a.zw)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global3.a))), 1000f));
    global2 = array<f32, 30>();
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, _wgslsmith_f_op_f32(global3.b + global2[_wgslsmith_index_u32(0u, 30u)]), -956f, 258f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.b, global0.x))));
    let var_0 = Struct_3(select(_wgslsmith_div_vec4_i32(func_2(vec4<i32>(1i, u_input.b, u_input.a, u_input.a), global3.a.xzz, true, Struct_4(Struct_2(vec4<i32>(-2147483647i, u_input.a, u_input.a, -1i), 321f, vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 20u)], false, global4[_wgslsmith_index_u32(0u, 29u)])))).a, min(vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, -13314i, -1i, u_input.a))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, u_input.b), vec4<i32>(-2147483647i, u_input.a, u_input.b, 2147483647i)), -1i > countOneBits(u_input.a)) | vec4<i32>(0i, 39889i, u_input.a, -(~(-46056i))), 2147483647i);
    let var_1 = (u_input.c | ~u_input.e) & u_input.c;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, global3.b, global0.x, global0.x) + _wgslsmith_f_op_vec4_f32(global3.a + vec4<f32>(211f, global2[_wgslsmith_index_u32(14273u, 30u)], -410f, global0.x))), global3.a, select(true, global1[_wgslsmith_index_u32(countOneBits(30619u), 20u)], true))))), _wgslsmith_f_op_f32(step(global3.b, _wgslsmith_f_op_f32(292f + _wgslsmith_f_op_f32(step(global0.x, func_2(var_0.a, global3.a.zxx, global4[_wgslsmith_index_u32(51483u, 29u)], Struct_4(Struct_2(vec4<i32>(-87472i, 1i, 22917i, var_0.b), global2[_wgslsmith_index_u32(4294967295u, 30u)], vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.e, 29u)], global4[_wgslsmith_index_u32(var_1, 29u)], global4[_wgslsmith_index_u32(var_1, 29u)])))).b))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(234f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1448f + global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -func_3(_wgslsmith_div_i32(var_0.b, var_0.a.x)).x);
}

