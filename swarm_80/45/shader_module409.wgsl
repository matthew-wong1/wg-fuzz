struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(61290u, 4294967295u, 46907u, 4294967295u, 18479u, 4294967295u, 0u, 9393u, 0u, 50109u, 4294967295u);

var<private> global1: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b, -431f)));
    var var_1 = min(-vec4<i32>(arg_2.d, _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(-9606i, -26457i, 1i)), -(-1i & arg_0.b.x), max(2147483647i, -13594i)), arg_0.b);
    var var_2 = select(arg_1.zx, !select(vec2<bool>(true, true), arg_1.zw, arg_2.a.a), false);
    let var_3 = firstTrailingBit(abs(~_wgslsmith_clamp_vec3_u32(u_input.e, vec3<u32>(arg_0.c.c.x, 4294967295u, 0u), vec3<u32>(59133u, 0u, u_input.e.x))));
    let var_4 = arg_0.c;
    return select(select(vec3<bool>(true, !arg_3, true), !vec3<bool>(true, true, 34197u < arg_0.c.c.x), vec3<bool>(true, _wgslsmith_div_u32(4294967295u, var_3.x) >= var_3.x, select(select(true, var_4.b.a, true), 4294967295u == var_3.x, !arg_1.x))), select(arg_1.zyz, vec3<bool>(true, !arg_2.a.a | false, all(!vec3<bool>(arg_0.c.a.a, arg_1.x, false))), all(select(select(vec3<bool>(true, arg_0.c.d.a, arg_2.a.a), vec3<bool>(false, false, var_4.b.a), true), vec3<bool>(arg_1.x, var_2.x, var_2.x), arg_1.zxw))), arg_1.xxz);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> bool {
    let var_0 = all(vec2<bool>(true, _wgslsmith_f_op_f32(-arg_0) < arg_0));
    global0 = array<u32, 11>();
    global1 = any(arg_2.zz);
    global1 = var_0;
    global0 = array<u32, 11>();
    return all(select(select(arg_2.xy, vec2<bool>(var_0, !arg_1), true), arg_2.zz, func_3(Struct_3(Struct_1(true, vec3<f32>(arg_0, 1499f, arg_0)), vec4<i32>(1i, -19342i, arg_3, arg_3), Struct_2(Struct_1(arg_1, vec3<f32>(arg_0, arg_0, -1138f)), Struct_1(false, vec3<f32>(735f, arg_0, arg_0)), u_input.e.yx, Struct_1(true, vec3<f32>(arg_0, arg_0, 210f))), _wgslsmith_dot_vec3_u32(vec3<u32>(12774u, 1u, 19515u), vec3<u32>(533u, u_input.d, global0[_wgslsmith_index_u32(3543u, 11u)])), _wgslsmith_f_op_f32(-375f - -102f)), select(!vec4<bool>(var_0, true, true, arg_1), select(vec4<bool>(arg_2.x, true, arg_2.x, var_0), vec4<bool>(arg_2.x, arg_1, var_0, false), vec4<bool>(arg_1, arg_2.x, var_0, false)), vec4<bool>(true, true, true, true)), Struct_4(Struct_1(false, vec3<f32>(1000f, arg_0, -834f)), _wgslsmith_f_op_f32(min(-464f, arg_0)), abs(42862i), -arg_3), arg_1).zy));
}

fn func_2() -> vec3<bool> {
    global0 = array<u32, 11>();
    global1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(min(u_input.c.ww, u_input.c.zw), abs(vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)])))), 11u)] != reverseBits(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15874u, 11u)] >> (12920u % 32u), 11u)]));
    let var_0 = !(1640f < _wgslsmith_f_op_f32(floor(1487f)));
    let var_1 = max(vec2<u32>(abs(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 11u)], _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.e.x, 11u)], u_input.b))), ~4294967295u), vec2<u32>(u_input.b, u_input.c.x & ~21728u) >> (((~u_input.c.xw >> (_wgslsmith_mod_vec2_u32(u_input.e.xz, vec2<u32>(u_input.e.x, global0[_wgslsmith_index_u32(513u, 11u)])) % vec2<u32>(32u))) | select(countOneBits(vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8458u, 11u)], 11u)])), vec2<u32>(global0[_wgslsmith_index_u32(u_input.e.x, 11u)], u_input.d), vec2<bool>(false, true))) % vec2<u32>(32u)));
    global0 = array<u32, 11>();
    return vec3<bool>(select(true, !all(vec2<bool>(var_0, false)), u_input.a > 2147483647i), true, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-454f - 903f))), false, func_3(Struct_3(Struct_1(var_0, vec3<f32>(-1000f, -870f, 964f)), vec4<i32>(2147483647i, u_input.a, u_input.a, 40312i), Struct_2(Struct_1(true, vec3<f32>(-499f, -1177f, 2201f)), Struct_1(var_0, vec3<f32>(1360f, -498f, 885f)), var_1, Struct_1(var_0, vec3<f32>(-1000f, 373f, 404f))), ~var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -172f)), select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, false, true, false), var_0), Struct_4(Struct_1(true, vec3<f32>(484f, -856f, 1454f)), -364f, u_input.a, _wgslsmith_div_i32(u_input.a, 27287i)), any(!vec2<bool>(var_0, true))), firstLeadingBit(u_input.a)));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!vec3<bool>(0u > u_input.e.x, true, all(vec4<bool>(false, true, false, true))), func_1(Struct_1(true, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(287f, 1363f, 102f), vec3<f32>(901f, -1315f, 901f), true)))), func_1(Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1831f, -1264f, -914f)))));
    let var_1 = Struct_2(Struct_1(all(select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true), false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, true, var_0.x, false)), true)), vec3<f32>(-1220f, 2350f, _wgslsmith_f_op_f32(-2390f + -1193f))), Struct_1(all(vec4<bool>(var_0.x, true, var_0.x, false)), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1177f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-401f)), -1000f))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.e.yz, min(u_input.e.zx, u_input.e.xz)), countOneBits(abs(~vec2<u32>(u_input.d, global0[_wgslsmith_index_u32(u_input.d, 11u)]))), abs(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7543u, 11u)], 11u)]), vec2<u32>(0u, 4294967295u))))), Struct_1(any(func_3(Struct_3(Struct_1(var_0.x, vec3<f32>(-1182f, -986f, -170f)), vec4<i32>(18851i, -11608i, u_input.a, 2147483647i), Struct_2(Struct_1(var_0.x, vec3<f32>(1000f, -168f, 327f)), Struct_1(false, vec3<f32>(-1404f, 1703f, -196f)), vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(24546u, 11u)]), Struct_1(false, vec3<f32>(1022f, -159f, -609f))), 1u, -152f), vec4<bool>(true, var_0.x, true, false), Struct_4(Struct_1(false, vec3<f32>(-1217f, 1292f, -1000f)), -276f, -1i, u_input.a), var_0.x).xy), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(905f + -644f), 113f, _wgslsmith_f_op_f32(1884f + -107f)), vec3<f32>(_wgslsmith_f_op_f32(500f * 1850f), -416f, _wgslsmith_f_op_f32(f32(-1f) * -1814f))))));
    let var_2 = !var_0.x;
    global0 = array<u32, 11>();
    let var_3 = var_1.b;
    let var_4 = vec3<i32>(~_wgslsmith_mod_i32(firstLeadingBit(~u_input.a), -u_input.a), u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-500f - var_1.b.b.x) + -1186f)), 143f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_3.b.x + 469f)));
}

