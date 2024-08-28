struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
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

var<private> global0: f32;

var<private> global1: array<f32, 6> = array<f32, 6>(1406f, -348f, -1268f, -964f, 686f, -106f);

var<private> global2: i32 = 1i;

var<private> global3: i32;

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(select(arg_1, 1u, arg_2), firstTrailingBit(u_input.a.x)) >> (vec2<u32>(max(_wgslsmith_mult_u32(arg_1, arg_3.x), 1u), _wgslsmith_add_u32(~arg_3.x, ~1u)) % vec2<u32>(32u)), vec2<u32>(arg_1, _wgslsmith_div_u32(~2066u, _wgslsmith_add_u32(101427u, 48890u))) ^ arg_0.d.xx, ~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d.wyz, vec3<u32>(u_input.a.x, 21469u, 0u)), 19777u << ((arg_0.d.x & arg_3.x) % 32u)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2058f)))), _wgslsmith_f_op_f32(-arg_0.b));
    var var_2 = Struct_2(arg_0.b, Struct_1(vec3<u32>(30447u, reverseBits(firstTrailingBit(arg_1)), 1u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1187f + arg_0.b)))), ~_wgslsmith_mult_u32(~29196u, 1u), ~firstLeadingBit(~vec3<u32>(50977u, var_0.x, 4294967295u))), reverseBits(~firstLeadingBit(vec3<i32>(-1i, u_input.e, -25168i) | u_input.b.yyx)), vec4<f32>(531f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(arg_0.b, -289f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(max(var_1.x, 143f)))));
    var var_3 = 1u;
    let var_4 = var_2.d;
    return firstTrailingBit(16795i);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    let var_0 = all(!(!vec3<bool>(false, any(vec4<bool>(false, true, false, false)), true)));
    let var_1 = vec4<i32>(arg_2.x, -38243i >> (u_input.d.x % 32u), ~_wgslsmith_mult_i32(arg_2.x, max(-arg_1, u_input.b.x)), arg_2.x);
    global3 = var_1.x;
    global4 = global1[_wgslsmith_index_u32(~0u, 6u)];
    let var_2 = 175f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1869f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 6u)]) * global1[_wgslsmith_index_u32(~arg_0.d.a.x, 6u)]) * 1681f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.b - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(45957u, 6u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.a.x, arg_0.a, 40335u, u_input.d.x)), 6u)], var_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-305f, arg_0.c.b.b)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_mod_u32(11982u, 41163u);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_4(~arg_1, -4708i, Struct_2(arg_2.b, Struct_1(u_input.a, arg_3, u_input.d.x, vec3<u32>(arg_2.c, arg_2.a.x, arg_2.d.x)), vec3<i32>(-21479i, arg_0.x, 1i), vec4<f32>(global1[_wgslsmith_index_u32(5688u, 6u)], arg_3, arg_2.b, -1591f)), Struct_1(u_input.a, -1044f, 106298u, vec3<u32>(arg_2.c, u_input.a.x, arg_2.c))), func_3(Struct_1(vec3<u32>(arg_1, 79018u, 4294967295u), 1253f, 1u, vec3<u32>(arg_1, 24236u, 30099u)), 23748u, true, min(u_input.a, vec3<u32>(arg_1, 0u, u_input.a.x))), min(vec3<i32>(19078i, u_input.b.x, arg_0.x) & u_input.b.ywy, vec3<i32>(1i, 2147483647i, u_input.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.b + arg_3))) * -1101f)));
    let var_2 = !(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), 30442i >= u_input.c), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, false), true)));
    let var_3 = 265f;
    return Struct_3(u_input.a.x, arg_1);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> i32 {
    let var_0 = func_2(vec3<i32>(max(18018i, abs(21532i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.e, u_input.b.x, -69586i), arg_0.c.c), -2147483647i) & -arg_0.c.c, arg_1.b << (arg_1.b % 32u), Struct_1(u_input.a, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], ~(u_input.a.x << (u_input.a.x % 32u)), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-182f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-138f + global1[_wgslsmith_index_u32(u_input.d.x, 6u)]))))));
    global1 = array<f32, 6>();
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(~firstTrailingBit(~u_input.d.xww), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.b, 6u)] + arg_0.d.b) + arg_0.c.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(968f))))), arg_1.b, arg_0.c.b.d);
    var var_2 = 1i;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1150f - -667f)) - 1f), _wgslsmith_div_f32(arg_0.d.b, global1[_wgslsmith_index_u32(var_1.d.x, 6u)])) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-156f, var_1.b), -916f)));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-(-27344i | _wgslsmith_mult_i32(u_input.e, arg_0.b)), (i32(-1i) * -1i) & u_input.c, -18168i), vec3<i32>(~((u_input.c | 1i) << (1u % 32u)), -u_input.b.x, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 6>();
    var var_0 = u_input.b.yz;
    var_0 = select(vec2<i32>(~reverseBits(_wgslsmith_div_i32(var_0.x, var_0.x)), -u_input.e), vec2<i32>(_wgslsmith_div_i32(max(1i, var_0.x), 1i), abs(func_1(Struct_4(37781u, -21218i, Struct_2(226f, Struct_1(vec3<u32>(u_input.d.x, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(6861u, 6u)], u_input.a.x, u_input.a), u_input.b.xyw, vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], 539f, global1[_wgslsmith_index_u32(u_input.d.x, 6u)], 124f)), Struct_1(u_input.a, 2164f, 43999u, u_input.d.xyy)), Struct_3(10235u, 0u))) ^ _wgslsmith_add_i32(~46909i, 37799i)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, all(vec3<bool>(true, false, true))), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 6u)], 641f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1000f), vec2<f32>(418f, -1575f), false)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)]) - vec2<f32>(-830f, global1[_wgslsmith_index_u32(u_input.d.x, 6u)]))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 451f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], -989f)), vec2<f32>(1f, 1f))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))))));
    var var_2 = select(!vec3<bool>(!any(vec3<bool>(true, false, true)), min(-20894i, 3624i) < (-54874i & u_input.e), false), select(vec3<bool>(true, true, true), !vec3<bool>(any(vec4<bool>(true, false, false, false)), select(false, false, true), true), !((1199f != var_1.x) && true)), !(true & any(vec2<bool>(true, false))));
    var var_3 = true;
    var_3 = !(u_input.a.x >= _wgslsmith_mod_u32(u_input.d.x, 80623u));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

