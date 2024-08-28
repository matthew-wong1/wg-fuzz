struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: array<bool, 2>;

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(true, false, 1u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 3>();
    global1 = array<bool, 2>();
    var var_0 = _wgslsmith_add_i32(~(-min(firstTrailingBit(-19325i), -u_input.a)), firstTrailingBit(u_input.a));
    global0 = array<Struct_2, 3>();
    let var_1 = Struct_3(select(min(vec2<u32>(global3.c, 65136u), select(vec2<u32>(7999u, 2848u), vec2<u32>(4294967295u, global3.c), vec2<bool>(global1[_wgslsmith_index_u32(16235u, 2u)], true))), _wgslsmith_mod_vec2_u32(vec2<u32>(8178u, global3.c) ^ vec2<u32>(73799u, global3.c), ~vec2<u32>(49496u, global3.c)), vec2<bool>(all(vec3<bool>(true, global3.a, global1[_wgslsmith_index_u32(46452u, 2u)])), false)) >> (_wgslsmith_mult_vec2_u32(~(vec2<u32>(global3.c, 4294967295u) | vec2<u32>(global3.c, global3.c)), vec2<u32>(_wgslsmith_div_u32(global3.c, global3.c), ~0u)) % vec2<u32>(32u)), 120467u, global0[_wgslsmith_index_u32(global3.c, 3u)]);
    return abs(49616u << (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(53060u, var_1.c.a.c, global3.c), vec3<u32>(var_1.a.x, 27261u, global3.c)), max(vec3<u32>(global3.c, 21436u, 33548u), vec3<u32>(4294967295u, 0u, global3.c))), 0u) % 32u));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1191f) * _wgslsmith_f_op_f32(-1000f + 863f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(283f * -1507f)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(), 4294967295u, 0u), vec3<u32>(4294967295u, ~66154u, ~4294967295u & _wgslsmith_mod_u32(1u, reverseBits(global3.c)))), 3u)];
    let var_2 = Struct_3(firstTrailingBit(firstTrailingBit(vec2<u32>(global3.c, 19608u)) ^ select(_wgslsmith_clamp_vec2_u32(vec2<u32>(global3.c, 1u), vec2<u32>(global3.c, var_1.a.c), vec2<u32>(9170u, 12514u)), vec2<u32>(global3.c, global3.c), vec2<bool>(false, true))), 1u, global0[_wgslsmith_index_u32(var_1.a.c, 3u)]);
    var var_3 = Struct_3(~vec2<u32>(_wgslsmith_mult_u32(abs(0u), abs(133737u)), ~(~23626u)), global3.c, var_2.c);
    let var_4 = !vec2<bool>(!var_2.c.e.x, global3.a);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.c.d.x, 1541f))), var_3.c.c));
}

fn func_1(arg_0: Struct_4) -> u32 {
    var var_0 = arg_0.a.d;
    var var_1 = arg_0.a.b;
    var var_2 = _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_div_f32(990f, var_0.x));
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-905f * var_0.x), 1392f, all(arg_0.c.e.wxy))), 1124f));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(ceil(1417f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x))))), arg_0.d, _wgslsmith_f_op_f32(func_2()));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u) >> (firstLeadingBit(~vec2<u32>(global3.c, 45593u)) % vec2<u32>(32u)), vec2<u32>(global3.c, abs(func_1(Struct_4(global0[_wgslsmith_index_u32(50515u, 3u)], vec2<f32>(-1091f, -371f), Struct_2(Struct_1(global3.a, global3.a, 70573u), 12128i, 940f, vec4<f32>(-1083f, 1000f, -702f, 1526f), vec4<bool>(global3.b, false, global1[_wgslsmith_index_u32(global3.c, 2u)], global3.a)), 1699f, vec4<u32>(global3.c, 79721u, 0u, global3.c)))))), max(~4294967295u, _wgslsmith_mult_u32(~21763u >> (firstLeadingBit(global3.c) % 32u), _wgslsmith_mod_u32(global3.c, global3.c) & countOneBits(0u))), Struct_2(Struct_1(global3.b, !(!global1[_wgslsmith_index_u32(0u, 2u)]), select(firstLeadingBit(global3.c), global3.c, true)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1710f + 714f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -703f, 564f, -1055f) + vec4<f32>(-489f, 596f, 1291f, -554f)))))), vec4<bool>(true, any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(select(438f, -198f, global3.a)) == _wgslsmith_f_op_f32(min(1294f, -878f)), true)));
    var var_1 = min(_wgslsmith_mod_u32(12428u, _wgslsmith_mod_u32(_wgslsmith_add_u32(81369u, 0u), var_0.a.x)) ^ var_0.b, func_3());
    var var_2 = i32(-1i) * -(i32(-1i) * -15037i);
    let var_3 = select(select(!(!select(var_0.c.e.wwz, var_0.c.e.yzz, vec3<bool>(false, true, var_0.c.a.a))), var_0.c.e.zyx, !select(var_0.c.e.x, all(var_0.c.e.wxw), !var_0.c.e.x)), select(select(!vec3<bool>(global3.b, false, false), select(!vec3<bool>(var_0.c.a.b, global3.a, false), !vec3<bool>(var_0.c.e.x, global1[_wgslsmith_index_u32(4294967295u, 2u)], global3.a), select(var_0.c.e.zxw, vec3<bool>(true, true, true), vec3<bool>(global3.a, var_0.c.a.a, var_0.c.e.x))), !all(var_0.c.e.xw)), !(!select(vec3<bool>(global1[_wgslsmith_index_u32(6132u, 2u)], global1[_wgslsmith_index_u32(global3.c, 2u)], var_0.c.e.x), var_0.c.e.xyw, false)), true & !(var_0.c.c >= -339f)), vec3<bool>(any(!vec3<bool>(global1[_wgslsmith_index_u32(63116u, 2u)], var_0.c.e.x, true)), !all(vec4<bool>(global3.b, false, true, global3.b)) && !(671u == var_0.b), all(vec4<bool>(-666f < var_0.c.c, true, false, true))));
    let var_4 = -1572f;
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.c.d.zz))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-310f, 1000f) + _wgslsmith_f_op_vec2_f32(select(var_0.c.d.wy, vec2<f32>(var_4, 222f), vec2<bool>(true, global3.a)))))) + vec2<f32>(-256f, var_0.c.c));
    let var_6 = Struct_5(var_0.c, Struct_1(all(vec2<bool>(var_3.x, true)), any(vec2<bool>(true, true)), ~(~37278u)), var_0.c.d.wwz, var_0.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-var_4))), var_6.a.d.x, 335f, var_4)));
}

