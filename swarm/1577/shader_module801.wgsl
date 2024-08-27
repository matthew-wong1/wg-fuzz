struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, true, true, false, false, false, true, true, true, false, true, true, true, true);

var<private> global1: Struct_4 = Struct_4(vec3<bool>(false, false, true));

var<private> global2: array<bool, 2> = array<bool, 2>(true, false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_3(arg_0.a ^ 0i, vec2<bool>(!(!any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)]))), any(select(global1.a, select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(arg_2.x, 2u)], global0[_wgslsmith_index_u32(arg_2.x, 14u)]), vec3<bool>(true, arg_0.b.x, global0[_wgslsmith_index_u32(2161u, 14u)]), arg_0.b.x), true))));
    let var_1 = !(!(!any(select(vec2<bool>(true, global2[_wgslsmith_index_u32(arg_1.x, 2u)]), vec2<bool>(var_0.b.x, true), var_0.b))));
    var var_2 = _wgslsmith_add_vec2_u32(arg_1.zy, select(arg_1.xz, arg_1.wx, any(vec2<bool>(!global0[_wgslsmith_index_u32(74614u, 14u)], false))));
    let var_3 = _wgslsmith_dot_vec2_u32(~arg_1.zw, abs((vec2<u32>(31490u, 3876u) << (u_input.a.xx % vec2<u32>(32u))) & ~u_input.a.yx)) ^ 0u;
    let var_4 = -_wgslsmith_mod_i32(~(u_input.b.x << (firstTrailingBit(var_2.x) % 32u)), countOneBits(var_0.a));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1030f)))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    let var_0 = vec3<u32>(29001u, countOneBits(~_wgslsmith_div_u32(abs(arg_2), _wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.a.wz))), arg_2);
    global1 = Struct_4(arg_0.xyw);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(firstLeadingBit(64060i), vec2<bool>(false, true)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 15811u, var_0.x, var_0.x), u_input.a), ~vec4<u32>(0u, var_0.x, 4294967295u, 26576u)), ~u_input.a.xz)) - 1478f), 1157f);
    var var_2 = ~u_input.a.zw;
    var var_3 = vec4<i32>(_wgslsmith_div_i32(min(_wgslsmith_mult_i32(abs(u_input.c.x), ~u_input.b.x), max(1i, 20877i ^ u_input.c.x)), _wgslsmith_dot_vec2_i32(abs(~u_input.c.wx), vec2<i32>(i32(-1i) * -26514i, -u_input.b.x))), ~min(10167i, u_input.c.x), 2147483647i, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(9065i, -2147483647i, arg_1.a, u_input.c.x), vec4<i32>(-11619i, arg_1.a, -27701i, u_input.b.x))));
    return Struct_4(vec3<bool>(any(select(select(arg_0, arg_0, global2[_wgslsmith_index_u32(var_2.x, 2u)]), select(arg_0, arg_0, arg_0.x), select(arg_0, vec4<bool>(global2[_wgslsmith_index_u32(1u, 2u)], true, global1.a.x, global2[_wgslsmith_index_u32(var_2.x, 2u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(var_2.x, 2u)], true)))), true, all(vec3<bool>(false, global2[_wgslsmith_index_u32(6320u, 2u)], arg_0.x)) == true));
}

fn func_1(arg_0: f32) -> Struct_4 {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    var var_0 = countOneBits(u_input.c.yxw);
    var var_1 = !global1.a.yx;
    return func_2(!select(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], var_1.x, global0[_wgslsmith_index_u32(77528u, 14u)], true)), !(!vec4<bool>(global1.a.x, true, false, false)), vec4<bool>(true, true, any(global1.a.xx), !global2[_wgslsmith_index_u32(u_input.a.x, 2u)])), Struct_3(u_input.b.x, !select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], false), vec2<bool>(var_1.x, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), !global1.a.xx)), ~(~u_input.a.x));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = Struct_1(select(select(arg_1, select(!vec4<bool>(false, global1.a.x, arg_1.x, true), select(vec4<bool>(global1.a.x, global1.a.x, true, false), vec4<bool>(arg_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], true, true), arg_1), select(vec4<bool>(false, arg_0.a.x, true, false), vec4<bool>(global0[_wgslsmith_index_u32(23913u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global1.a.x, false), arg_1.x)), !select(arg_1, vec4<bool>(false, global1.a.x, true, global2[_wgslsmith_index_u32(28780u, 2u)]), false)), select(arg_1, arg_1, vec4<bool>(all(vec2<bool>(true, true)), global2[_wgslsmith_index_u32(46816u, 2u)] || global2[_wgslsmith_index_u32(1u, 2u)], true, true)), arg_1), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -136f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(173f, 578f))), _wgslsmith_f_op_f32(-2190f * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(select(-452f, -119f, _wgslsmith_f_op_f32(floor(1274f)) > _wgslsmith_f_op_f32(trunc(-206f))))));
    let var_1 = reverseBits(u_input.a.x);
    let var_2 = Struct_3(-10410i, func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(u_input.c.x, vec2<bool>(arg_1.x, false)), u_input.a, u_input.a.yy)) - _wgslsmith_f_op_f32(sign(1346f))), var_0.b.x))).a.zy);
    var_0 = Struct_1(select(vec4<bool>(all(select(var_0.a.yz, vec2<bool>(global2[_wgslsmith_index_u32(87805u, 2u)], true), vec2<bool>(var_2.b.x, false))), true, all(global1.a.xy), !(global1.a.x | true)), var_0.a, var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.b.x, -1014f), _wgslsmith_f_op_f32(func_3(var_2, vec4<u32>(u_input.a.x, 0u, var_1, var_1), ~u_input.a.zy)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))), 1726f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b.wy, _wgslsmith_f_op_vec2_f32(-var_0.b.ww), func_1(_wgslsmith_f_op_f32(func_3(var_2, u_input.a, ~vec2<u32>(u_input.a.x, u_input.a.x)))).a.x)) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1336f, -390f) + _wgslsmith_f_op_f32(1142f * var_0.b.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(652f, var_0.b.x), _wgslsmith_f_op_f32(ceil(-266f))))), var_0.b.x));
    return select(select(vec2<bool>(any(select(vec4<bool>(true, var_2.b.x, var_0.a.x, true), var_0.a, vec4<bool>(global0[_wgslsmith_index_u32(var_1, 14u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], false))), arg_0.a.x), vec2<bool>(any(!global1.a), false), vec2<bool>(false, true)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - -492f))).a.yx, var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, -_wgslsmith_sub_i32(u_input.b.x, u_input.c.x)), reverseBits(_wgslsmith_add_i32(~u_input.b.x, ~u_input.b.x))), firstTrailingBit(-26014i));
    let var_1 = select(select(func_4(func_1(1789f), select(select(vec4<bool>(false, true, false, false), vec4<bool>(global2[_wgslsmith_index_u32(23314u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)], false), vec4<bool>(false, global1.a.x, false, global1.a.x)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], false, global1.a.x), u_input.a.x == 19159u)), global1.a.yy, false), !global1.a.xx, !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 14u)]);
    global0 = array<bool, 14>();
    global2 = array<bool, 2>();
    let var_2 = Struct_3(u_input.b.x, select(vec2<bool>(true, any(global1.a)), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)] != global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global1.a.x), all(select(!vec4<bool>(var_1.x, true, var_1.x, global2[_wgslsmith_index_u32(0u, 2u)]), select(vec4<bool>(true, var_1.x, false, global1.a.x), vec4<bool>(false, false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(9721u, 2u)], false, false, true)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1300f)) - _wgslsmith_f_op_f32(f32(-1f) * -170f)) * _wgslsmith_f_op_f32(abs(-340f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), max(select(vec2<u32>(select(442u, 8234u, false), ~u_input.a.x), u_input.a.yy >> (u_input.a.xy % vec2<u32>(32u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 5097u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), 2u)]), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, u_input.a.x), ~79850u, 4294967295u), 52055u)));
}

