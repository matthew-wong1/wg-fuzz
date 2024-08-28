struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, false, true, true, false, true, false);

var<private> global2: vec3<f32> = vec3<f32>(576f, 1878f, -559f);

var<private> global3: Struct_1;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>, arg_3: f32) -> bool {
    let var_0 = vec2<bool>(!global1[_wgslsmith_index_u32(107041u, 8u)], arg_2.x);
    var var_1 = arg_0;
    var var_2 = u_input.d.x;
    global3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.e, global2.x))), 1f, !(!select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], global0.x), vec3<bool>(arg_0.c.x, false, var_0.x)), var_1.c, !arg_0.d.x)), !global3.d, _wgslsmith_f_op_f32(global2.x - arg_0.a));
    global0 = !(!vec3<bool>(any(arg_0.d.wzw), false, arg_2.x));
    return min(~arg_1, 7519u) < _wgslsmith_mult_u32(~(~4294967295u) >> (u_input.e.x % 32u), 1u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = global0.x;
    global3 = Struct_1(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(f32(-1f) * -545f), !select(arg_1, !vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 8u)], false, global0.x), true), global3.d, global2.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))) - 339f), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))), arg_1, select(!global3.d, vec4<bool>(global3.d.x, false, global0.x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + -425f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))), global2.x);
    let var_2 = Struct_1(399f, global2.x, !arg_1, !select(global3.d, global3.d, true), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(350f * _wgslsmith_f_op_f32(round(1540f))) * global3.a)));
    let var_3 = true;
    return Struct_1(990f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a))), global3.d.yzw, select(var_2.d, vec4<bool>(any(var_2.d.yxx), select(true, true, global3.c.x), false, true), vec4<bool>(func_3(Struct_1(global3.e, -385f, var_1.c, global3.d, var_2.b), firstLeadingBit(arg_0.x), select(var_1.d, var_1.d, true), _wgslsmith_f_op_f32(-var_2.b)), global1[_wgslsmith_index_u32(~max(13696u, 1u), 8u)], var_1.e < var_1.a, all(vec4<bool>(false, global0.x, false, false)))), -1007f);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = u_input.b;
    let var_1 = u_input.e.x;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_sub_i32(-(var_0 | countOneBits(-33046i)), var_0);
    var var_4 = -31370i;
    return var_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> bool {
    global4 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(firstLeadingBit(u_input.d.x ^ select(-26394i, u_input.c, global1[_wgslsmith_index_u32(0u, 8u)])), u_input.a), _wgslsmith_mult_i32(func_4(func_2(u_input.e.wxz, select(vec3<bool>(false, global0.x, true), global3.c, false))), u_input.b));
    var var_0 = func_2(countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.e.yww, ~u_input.e.xyy), select(vec3<u32>(u_input.e.x, u_input.e.x, 0u), vec3<u32>(10217u, 73269u, u_input.e.x) ^ vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), true))), select(func_2(vec3<u32>(0u, u_input.e.x, 56452u), select(!vec3<bool>(arg_2.x, false, false), !vec3<bool>(true, global0.x, false), true)).c, vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, 1u), 8u)], false, any(arg_0.zy)), arg_2.x));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.x, arg_1.x, global2.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-118f, global2.x, global3.b) + vec3<f32>(global3.b, 1171f, global3.b)))))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, 923f, -248f, 569f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.b, arg_1.x, arg_1.x) + vec4<f32>(694f, 122f, 105f, 512f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global3.e, _wgslsmith_f_op_f32(-229f * -1244f), global3.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.e * arg_1.x), _wgslsmith_f_op_f32(ceil(848f)), _wgslsmith_div_f32(-581f, 1691f), global3.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(131f, var_0.b, arg_1.x, 103f)))));
    let var_2 = ~(~_wgslsmith_dot_vec3_u32(u_input.e.xwz, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 20150u), abs(vec3<u32>(u_input.e.x, 1u, u_input.e.x)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(590f, global2.x, global3.c, select(select(global3.d, global3.d, vec4<bool>(any(vec4<bool>(global3.d.x, global1[_wgslsmith_index_u32(u_input.e.x, 8u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 8u)])), func_1(vec3<bool>(global3.d.x, true, global3.c.x), global2.zz, global3.c, vec4<i32>(-2147483647i, u_input.c, u_input.d.x, u_input.d.x)), global3.d.x, false)), global3.d, select(all(vec4<bool>(true, true, global0.x, false)), true, !all(global3.c))), global3.b);
    var var_0 = _wgslsmith_f_op_f32(sign(global3.b));
    global3 = func_2(~(~(u_input.e.xww & select(u_input.e.zww, u_input.e.xzw, global3.d.xxz))), select(global3.d.zyw, global3.c, !(!select(true, global0.x, global3.d.x))));
    global1 = array<bool, 8>();
    var var_1 = func_2(vec3<u32>(u_input.e.x, u_input.e.x, 1u), global3.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(func_2(vec3<u32>(1u, u_input.e.x << (u_input.e.x % 32u), u_input.e.x), func_2(max(u_input.e.xyy, vec3<u32>(1399u, u_input.e.x, 0u)), !vec3<bool>(true, true, global0.x)).c).e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b, 252f)) + _wgslsmith_f_op_f32(-global2.x)), var_1.b)))));
    global1 = array<bool, 8>();
    var var_3 = func_2(vec3<u32>(_wgslsmith_add_u32(4294967295u, ~u_input.e.x), 4294967295u, 4294967295u), global3.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -2147483647i) | vec4<i32>(15970i, 0i, u_input.a, u_input.d.x), max(vec4<i32>(-56061i, -8771i, 40398i, u_input.c), vec4<i32>(-8151i, -2147483647i, u_input.c, u_input.b)))));
}

