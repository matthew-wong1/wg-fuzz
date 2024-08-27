struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 28> = array<u32, 28>(60546u, 4294967295u, 1u, 4294967295u, 63702u, 1u, 40694u, 1u, 60423u, 20480u, 120957u, 0u, 63507u, 32501u, 40003u, 4294967295u, 1u, 33804u, 59984u, 4294967295u, 1u, 35474u, 28367u, 1u, 10487u, 4294967295u, 14422u, 0u);

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global3: Struct_3 = Struct_3(-2435f);

var<private> global4: Struct_1 = Struct_1(vec4<f32>(-197f, 362f, 301f, 2257f), -295f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = Struct_3(global3.a);
    var var_1 = true;
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-274f, -735f, global0.x, global4.a.x) - global4.a)))) - global4.a), _wgslsmith_f_op_f32(-var_0.a));
    let var_2 = -u_input.b;
    var var_3 = vec4<bool>(!(!all(global2.xy) == (abs(u_input.c) > _wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.c, 28u)], global1[_wgslsmith_index_u32(u_input.c, 28u)]))), true, arg_0 == 25447i, !(!(all(vec2<bool>(true, true)) != all(vec3<bool>(true, global2.x, true)))));
    return u_input.d.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> bool {
    var var_0 = select(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.c, 20960u), ~arg_1.zx, u_input.e > -1i), ~vec2<u32>(4294967295u, arg_2.a.x), ~firstLeadingBit(u_input.d.yy)), arg_1.xx, !global2.zz) << (max(arg_2.a << (~(~vec2<u32>(4294967295u, 17678u)) % vec2<u32>(32u)), select(_wgslsmith_mod_vec2_u32(u_input.d.zx >> (arg_1.xw % vec2<u32>(32u)), u_input.d.zy), vec2<u32>(0u, 31834u), true)) % vec2<u32>(32u));
    var var_1 = 2147483647i;
    var var_2 = 1u;
    var var_3 = global2.xx;
    var_1 = (-36345i ^ firstTrailingBit(arg_0.x << (_wgslsmith_add_u32(u_input.c, var_0.x) % 32u))) & ~6626i;
    return !any(select(global2.yzx, select(global2.xzz, select(vec3<bool>(false, false, var_3.x), global2.xzz, vec3<bool>(var_3.x, var_3.x, false)), global2.x | var_3.x), !all(vec4<bool>(var_3.x, true, false, true))));
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 21883i, u_input.b.x, -41606i), _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(u_input.e, u_input.b.x, 6376i, 1i))), global2.x), 4294967295u), u_input.d.x, ~u_input.c, abs(1u));
    let var_1 = all(vec4<bool>(_wgslsmith_f_op_f32(global4.a.x - _wgslsmith_f_op_f32(select(global0.x, global3.a, true))) != _wgslsmith_f_op_f32(round(635f)), (func_3(vec3<i32>(u_input.b.x, u_input.e, 2147483647i), var_0, Struct_2(u_input.d.zx, Struct_1(global4.a, global3.a), global4.a)) != true) && global2.x, false, !(u_input.e <= -36500i) | (firstTrailingBit(-44735i) > -1i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * 712f)))), 884f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b, -128f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 212f))))));
    let var_3 = vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, max(u_input.b.x, u_input.a.x)), -2147483647i) & u_input.b.x);
    global0 = vec2<f32>(global0.x, 1f);
    return _wgslsmith_add_u32(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, var_0.x, var_0.x, 18638u), _wgslsmith_mod_vec4_u32(var_0, var_0)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19181u, global1[_wgslsmith_index_u32(u_input.c, 28u)]), u_input.d.yy), reverseBits(u_input.c)))), 28u)], ~u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.d.zx, Struct_1(_wgslsmith_f_op_vec4_f32(-global4.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1381f, -674f, global3.a, global0.x)) * global4.a)) + vec4<f32>(global0.x, global3.a, 1051f, _wgslsmith_f_op_f32(f32(-1f) * -1983f))));
    var var_1 = select(global2.zw, !select(!(!global2.xy), select(global2.zy, !global2.wx, vec2<bool>(false, false)), global2.x), !vec2<bool>(true | any(global2.xyx), true));
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(var_0.a.x, 28u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 28u)] & var_0.a.x, 28u)] % 32u), 12365u), select(~13552u, global1[_wgslsmith_index_u32(var_0.a.x, 28u)], true & var_1.x) << (4294967295u % 32u)), firstTrailingBit(~func_1(any(vec4<bool>(true, global2.x, global2.x, var_1.x)), true && global2.x)), (var_0.a.x ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 4294967295u), var_0.a.x, 0u)) & func_1(any(select(global2.ywy, vec3<bool>(false, false, var_1.x), false)), any(select(vec3<bool>(global2.x, true, true), global2.zyx, vec3<bool>(var_1.x, true, false)))), ~firstTrailingBit(17057u));
    let var_3 = _wgslsmith_div_vec3_i32(~(firstTrailingBit(firstTrailingBit(vec3<i32>(u_input.a.x, 7220i, 59855i))) | u_input.b.wwz), _wgslsmith_sub_vec3_i32(u_input.b.xyw, firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.b.xxz, _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -1i, 2147483647i), u_input.b.xyx)))));
    let var_4 = select(select(vec2<bool>(true, select(any(vec3<bool>(global2.x, true, true)), false, true)), !(!select(global2.yy, vec2<bool>(var_1.x, global2.x), true)), var_1.x), !(!select(global2.zx, global2.yy, any(vec2<bool>(global2.x, false)))), false);
    var var_5 = !var_4;
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-396f, global4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(208f, -1000f))), -1116f)), -544f);
    var var_6 = global1[_wgslsmith_index_u32(var_0.a.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3, var_0.c.yy);
}

