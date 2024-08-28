struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 18>;

var<private> global2: vec2<i32> = vec2<i32>(1i, 0i);

var<private> global3: array<vec4<u32>, 30>;

var<private> global4: array<vec3<u32>, 31>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = ~(~u_input.b.yw);
    let var_1 = vec4<f32>(arg_0.b.e, _wgslsmith_f_op_f32(-arg_0.b.e), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.e * -740f)));
    global4 = array<vec3<u32>, 31>();
    global0 = Struct_2(_wgslsmith_clamp_vec3_i32(abs(global0.a), global0.a, vec3<i32>(global2.x, -select(global2.x, global0.a.x, global1[_wgslsmith_index_u32(4294967295u, 18u)]), -59932i)), any(!vec3<bool>(any(vec3<bool>(false, false, global1[_wgslsmith_index_u32(13536u, 18u)])), !global1[_wgslsmith_index_u32(arg_0.b.b, 18u)], !arg_0.b.d)));
    let var_2 = arg_0.b;
    return var_2.e;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = ~(0u << (arg_1.a.b.b % 32u)) <= ~abs(arg_0.a.x);
    global0 = arg_3;
    let var_1 = vec4<bool>(any(!select(vec2<bool>(true, false), !vec2<bool>(false, arg_3.b), vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a.b.b, 18u)], global1[_wgslsmith_index_u32(arg_0.a.x, 18u)]))), true, global0.b == !all(select(vec2<bool>(arg_3.b, true), vec2<bool>(global0.b, false), vec2<bool>(true, false))), -42199i < select(-2147483647i, countOneBits(min(global2.x, -2147483647i)), arg_1.b));
    let var_2 = Struct_2(_wgslsmith_add_vec3_i32(-abs(~arg_2.zyw), min(arg_3.a, vec3<i32>(global2.x, arg_1.a.b.a.x, arg_3.a.x))), false);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.d))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_3(global0.b, Struct_1(arg_2.wy, arg_1.a.b.b, 2147483647i, var_2.b, -1296f)))), _wgslsmith_f_op_f32(ceil(-986f)))))), 1861f)) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, -619f))), _wgslsmith_f_op_f32(round(arg_1.a.b.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1512f * -204f)), all(var_1.xw)));
    return ~0u ^ ~max(~countOneBits(arg_0.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(global3[_wgslsmith_index_u32(17755u, 30u)], vec4<u32>(u_input.a, 46033u, 4294967295u, 4294967295u)), _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(arg_0.a.x, arg_1.a.b.b, 63697u, arg_1.a.b.b))));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = ~vec4<u32>(~arg_0.x, 4294967295u, ~arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, _wgslsmith_div_u32(1u, 1u), ~33656u), global4[_wgslsmith_index_u32(~func_2(Struct_5(u_input.b.yz), Struct_4(Struct_3(global0.b, Struct_1(vec2<i32>(global0.a.x, -3826i), 8077u, global2.x, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 1000f)), true, -201f, -317f), vec4<i32>(global0.a.x, global0.a.x, global0.a.x, -1i), Struct_2(global0.a, global0.b)), 31u)]));
    var var_1 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), 1631u, 0u, ~0u), firstTrailingBit(u_input.b)), var_0.x);
    var var_2 = vec2<bool>(true, true);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2015f, 348f, 278f, 869f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(536f, 824f, 106f, -1798f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-381f, -493f, -2077f, -2337f))), vec4<f32>(-1052f, 950f, -150f, -992f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(988f, 177f, 539f, 116f), vec4<f32>(-543f, -171f, 769f, -1477f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, -563f, -750f, -762f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1789f, -705f, 1539f, 794f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1071f, 196f, -1000f, 547f))))));
    let var_4 = _wgslsmith_clamp_vec4_u32(~global3[_wgslsmith_index_u32(1u, 30u)] << (u_input.b % vec4<u32>(32u)), u_input.b, ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(83222u, 0u, 44921u, var_0.x), ~vec4<u32>(0u, var_0.x, 0u, var_0.x)), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.x, var_0.x, var_0.x), global3[_wgslsmith_index_u32(arg_0.x, 30u)]))));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1262f, 1361f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-198f, 1127f))))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(844f - 1386f), _wgslsmith_f_op_f32(f32(-1f) * -2852f))), _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec3_u32(global4[_wgslsmith_index_u32(u_input.a, 31u)], u_input.b.zxw)))), _wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f + 362f)))));
    let var_1 = Struct_3(true, Struct_1(global0.a.yz << (u_input.b.zx % vec2<u32>(32u)), ~(countOneBits(u_input.b.x) << (~u_input.a % 32u)), global2.x, global1[_wgslsmith_index_u32(min(firstTrailingBit(~u_input.a), func_2(Struct_5(vec2<u32>(u_input.b.x, u_input.a)), Struct_4(Struct_3(false, Struct_1(vec2<i32>(global0.a.x, -32686i), 0u, -8359i, false, var_0.x)), false, var_0.x, var_0.x), vec4<i32>(-2147483647i, global0.a.x, global0.a.x, -1i), Struct_2(global0.a, false))), 18u)], 714f));
    let var_2 = Struct_5(~vec2<u32>(_wgslsmith_add_u32(var_1.b.b, _wgslsmith_clamp_u32(var_1.b.b, var_1.b.b, var_1.b.b)), var_1.b.b));
    var var_3 = Struct_1(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a.x ^ -14312i, min(global0.a.x, -1i)), select(vec2<i32>(global2.x, global0.a.x), global0.a.zx, !vec2<bool>(var_1.a, global0.b)), var_1.b.a), ~16944u, reverseBits(~firstLeadingBit(~2147483647i)), var_1.a, -402f);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.e, var_3.e)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yy * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.e, -444f) * vec2<f32>(var_3.e, var_1.b.e)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-885f * _wgslsmith_f_op_f32(-var_0.x)))))), vec4<i32>(-21274i, global2.x, (global2.x ^ firstLeadingBit(global0.a.x)) & ~0i, ~(~global2.x ^ _wgslsmith_mod_i32(var_3.c, -2147483647i))), i32(-1i) * -min(var_3.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(75742i, 25207i, -29336i), vec3<i32>(1648i, 73298i, var_3.c))));
}

