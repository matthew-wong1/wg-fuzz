struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec3<u32>(0u, 0u, 70713u), vec4<f32>(575f, -312f, 930f, -163f), 4405u);

var<private> global1: Struct_1 = Struct_1(4294967295u, vec3<u32>(61336u, 12728u, 60784u), vec4<f32>(301f, -561f, -943f, -730f), 41807u);

var<private> global2: array<bool, 3>;

var<private> global3: bool = true;

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> vec3<bool> {
    return !vec3<bool>(any(!vec3<bool>(false, global2[_wgslsmith_index_u32(global1.d, 3u)], global2[_wgslsmith_index_u32(0u, 3u)])), global2[_wgslsmith_index_u32(1u, 3u)], (min(0u, global1.b.x) ^ _wgslsmith_add_u32(4294967295u, global4.x)) <= _wgslsmith_div_u32(global1.a | global1.a, 21086u | global4.x));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    let var_0 = Struct_4(firstLeadingBit(vec4<i32>(firstLeadingBit(-35147i), -u_input.b.x | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), u_input.b), 4630i, -(u_input.a.x ^ 2529i))), Struct_2(Struct_1(~arg_0.x, vec3<u32>(global0.a, arg_0.x & global4.x, _wgslsmith_mult_u32(46486u, 73754u)), global1.c, max(global0.a, ~1u)), (u_input.b.x << (4294967295u % 32u)) >= ~(-8331i)));
    let var_1 = Struct_3(arg_1);
    global4 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(global1.d, 0u), _wgslsmith_dot_vec2_u32(var_0.b.a.b.yz, global0.b.xx)), vec2<u32>(~global0.a, _wgslsmith_clamp_u32(9537u, global4.x, 17561u)) >> (~global1.b.xy % vec2<u32>(32u))), global0.b.yz);
    global2 = array<bool, 3>();
    let var_2 = vec2<bool>(true, any(!func_2().zy));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, 28669u, 43680u), ~(~_wgslsmith_sub_vec3_u32(var_0.b.a.b, global1.b))), 0u);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_3 {
    let var_0 = arg_2;
    let var_1 = !func_2();
    let var_2 = _wgslsmith_mult_u32(reverseBits(0u) | (~func_3(vec2<u32>(47427u, 35450u), arg_0) ^ 4294967295u), 37260u);
    global3 = true;
    let var_3 = Struct_1(global0.a, vec3<u32>(~max(var_2, _wgslsmith_mult_u32(global1.b.x, global4.x)), global4.x, ~(~(~22897u))), vec4<f32>(-1712f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(516f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -714f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-884f, -386f) + _wgslsmith_f_op_f32(1327f + 574f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global0.a, 21993u), ~(~1u), func_3(vec2<u32>(arg_1.x, 24167u), -271f), ~global4.x), arg_1));
    return Struct_3(794f);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: f32) -> Struct_1 {
    let var_0 = func_1(arg_3, ~vec4<u32>(~global0.d, ~(global0.a >> (4294967295u % 32u)), 1u, abs(min(global0.a, arg_2.b.a.d))), i32(-1i) * -2147483647i);
    let var_1 = Struct_2(arg_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a)))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1.c.x)))))));
    global2 = array<bool, 3>();
    global2 = array<bool, 3>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1270f, _wgslsmith_f_op_f32(step(global1.c.x, _wgslsmith_f_op_f32(var_0.a + -1068f))), true)) - arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.c.x)) + _wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1641f)))), _wgslsmith_f_op_f32(674f + -1564f), 216f);
    return var_1.a;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_4(~(~(-abs(vec4<i32>(-1i, 33058i, u_input.b.x, -1i)))), arg_1);
    var var_1 = ~max(arg_0.wy, ~var_0.b.a.b.zy << (arg_0.xx % vec2<u32>(32u)));
    var var_2 = ~_wgslsmith_sub_vec3_i32(var_0.a.zzy, -vec3<i32>(~u_input.a.x, ~18269i, u_input.b.x));
    var var_3 = vec3<u32>(max(~(func_4(Struct_3(var_0.b.a.c.x), vec4<f32>(473f, global1.c.x, global0.c.x, global1.c.x), var_0, arg_1.a.c.x).d << (firstTrailingBit(0u) % 32u)), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(abs(global0.b.yy), arg_1.a.b.yx))), 4294967295u, var_0.b.a.b.x | 27777u);
    var var_4 = global0.c.x;
    return Struct_1(abs(_wgslsmith_dot_vec2_u32(arg_0.yw, var_0.b.a.b.zy)), global0.b, arg_1.a.c, global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 3>();
    global0 = func_5(_wgslsmith_mult_vec4_u32(~vec4<u32>(~51000u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.d, global1.b.x), vec2<u32>(global1.a, global4.x)), 31683u, _wgslsmith_mult_u32(global1.b.x, 4294967295u)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(12438u, 1u, 4294967295u, 45247u), vec4<u32>(1u, 4294967295u, global0.d, 1u))), Struct_2(func_4(func_1(541f, _wgslsmith_mod_vec4_u32(vec4<u32>(73584u, global0.d, 70834u, global0.a), vec4<u32>(global4.x, global4.x, global0.a, 1005u)), -1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-515f, -884f, global0.c.x, global1.c.x))) - _wgslsmith_f_op_vec4_f32(round(global1.c))), Struct_4(vec4<i32>(-2137i, u_input.a.x, u_input.b.x, u_input.b.x) & vec4<i32>(0i, 0i, u_input.a.x, -36235i), Struct_2(Struct_1(47691u, global0.b, global0.c, 25061u), global2[_wgslsmith_index_u32(63199u, 3u)])), _wgslsmith_f_op_f32(round(994f))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.d, 25802u), 3u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, -1242f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global0.c.x)), true || global2[_wgslsmith_index_u32(global4.x, 3u)])), vec2<f32>(-980f, global0.c.x)) * global0.c.xw));
    let var_0 = Struct_4(_wgslsmith_mult_vec4_i32(-(~(~vec4<i32>(-25724i, u_input.b.x, u_input.a.x, u_input.a.x))), ~vec4<i32>(~u_input.b.x, select(45058i, 9465i, global2[_wgslsmith_index_u32(1u, 3u)]), firstLeadingBit(u_input.a.x), -1i)), Struct_2(func_5(~(~vec4<u32>(global1.b.x, global1.a, 59871u, 4294967295u)), Struct_2(Struct_1(22350u, global1.b, vec4<f32>(696f, global1.c.x, -1130f, -103f), global0.d), global2[_wgslsmith_index_u32(~global0.b.x, 3u)]), _wgslsmith_f_op_vec2_f32(-global1.c.wy)), !global2[_wgslsmith_index_u32(reverseBits(4294967295u), 3u)]));
    var var_1 = !(!(!vec3<bool>(var_0.b.b, var_0.b.b, global2[_wgslsmith_index_u32(global0.d, 3u)])));
    var var_2 = _wgslsmith_f_op_vec4_f32(var_0.b.a.c * var_0.b.a.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(min(var_2.xyz, _wgslsmith_f_op_vec3_f32(-var_2.yyz)));
    global2 = array<bool, 3>();
    let var_4 = global0.c.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(select(-vec2<i32>(-6353i, u_input.a.x), vec2<i32>(var_0.a.x, 14270i), func_2().x), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -var_0.a.xw, max(vec2<i32>(29415i, var_0.a.x), _wgslsmith_clamp_vec2_i32(u_input.b.zx, u_input.b.zy, var_0.a.yz)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b.a.c * _wgslsmith_f_op_vec4_f32(-global0.c)), var_0.b.a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -976f, -221f, -134f)) * vec4<f32>(var_4.x, 1666f, var_2.x, global0.c.x)))), global0.c.x, vec2<i32>(u_input.b.x, ~(0i << (_wgslsmith_mult_u32(0u, global1.b.x) % 32u))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_3.x * 995f), _wgslsmith_f_op_f32(-347f + -1552f)), vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(579f - var_2.x)))))));
}

