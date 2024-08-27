struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> bool {
    var var_0 = 34771i;
    global0 = array<i32, 15>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1420f + _wgslsmith_f_op_f32(global2.a.x * 1114f)), 894f);
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(588f, _wgslsmith_f_op_f32(-449f - -456f))), global2.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1841f - global2.b.x))))), global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i >> (u_input.a % 32u)), max(global0[_wgslsmith_index_u32(~u_input.a, 15u)], _wgslsmith_sub_i32(0i, arg_1))), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(43852i, 40394i)), abs(u_input.c.xx) & u_input.c.wz, -vec2<i32>(global2.d, 1i))));
    var var_2 = Struct_4(arg_0.a);
    return global1.x;
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    global1 = !vec4<bool>(all(vec4<bool>(func_3(Struct_4(17357u), global0[_wgslsmith_index_u32(67910u, 15u)]), global2.c & true, true, global2.c)), true, !func_3(Struct_4(1u), _wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.wx)), true);
    global2 = Struct_1(global2.a, global2.b, false, firstTrailingBit(0i));
    global2 = Struct_1(global2.a, global2.b, global1.x, i32(-1i) * -_wgslsmith_mult_i32(10098i, -2387i));
    let var_0 = -u_input.c.zy;
    let var_1 = 36866u;
    return 21980i;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(518f, arg_0.x, arg_0.x, 1295f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1040f, global2.b.x, arg_0.x, arg_2)))))));
    global0 = array<i32, 15>();
    let var_1 = Struct_4(6296u);
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-1027f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f))), global2.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global2.b.x)), -827f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-120f - _wgslsmith_f_op_f32(min(arg_0.x, 565f))), 523f))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0.x)), 226f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(393f, -1266f)), 849f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a.x, 662f, true)))))), !any(vec3<bool>(any(vec4<bool>(global2.c, true, global1.x, global1.x)), true, any(vec4<bool>(global2.c, true, global1.x, global2.c))))));
    let var_2 = -1548f;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(601f, arg_2)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-305f, _wgslsmith_f_op_f32(-var_0.x), 881f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global2.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, var_2, 246f) * vec3<f32>(-705f, 687f, 1488f))), !global1.x)), !select(true, true, true), global2.d << (var_1.a % 32u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    global2 = arg_0.a;
    let var_0 = vec2<u32>(0u, u_input.a);
    global2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global2.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global2.a.x)))), false)), 1000f), _wgslsmith_sub_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(u_input.c.wx, vec2<i32>(global2.d, 2147483647i)) | select(vec2<i32>(-30140i, global2.d), vec2<i32>(u_input.d, global2.d), global1.x)), u_input.c.wx << ((vec2<u32>(0u, u_input.a) & (var_0 | var_0)) % vec2<u32>(32u))), arg_0.a.a.x).a;
    var var_1 = Struct_3(-(vec4<i32>(-global2.d, arg_0.a.d, global2.d, countOneBits(arg_0.a.d)) | select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], 2147483647i, -2147483647i, global2.d), u_input.c, u_input.c), vec4<i32>(-1i, global0[_wgslsmith_index_u32(1u, 15u)], arg_0.a.d, -47719i), !vec4<bool>(true, false, global2.c, false))));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, -261f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(976f, global2.a.x)))) * _wgslsmith_f_op_vec2_f32(ceil(arg_1.xz))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 379f) + 1114f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), arg_0.a.b.x), true, 2147483647i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1312f, 1116f)), vec2<f32>(1559f, global2.a.x))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, arg_1.x) + vec2<f32>(-2472f, arg_0.a.b.x))), abs(abs(var_1.a.wy)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.b.x)))).a.a, vec2<bool>(!all(vec2<bool>(global1.x, global1.x)), abs(11662i) == _wgslsmith_clamp_i32(global2.d, global2.d, -1i)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) * _wgslsmith_f_op_f32(1958f * global2.a.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.a.x)), _wgslsmith_f_op_f32(global2.a.x - 1667f), -358f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1740f, global2.b.x, global2.a.x) + vec3<f32>(-595f, -665f, arg_0.a.b.x)))), all(vec4<bool>(all(vec3<bool>(false, global1.x, true)), global2.c | false, arg_0.a.c && true, 1i != var_1.a.x)) & true, 21879i);
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    global2 = func_5(func_4(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global2.a.x)), _wgslsmith_f_op_f32(global2.b.x * global2.b.x))), -1108f), vec2<i32>(select(global2.d, global0[_wgslsmith_index_u32(countOneBits(4873u), 15u)], true | global2.c), func_2(min(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.b, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(exp2(global2.a.x))))), _wgslsmith_div_vec3_f32(global2.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2451f, global2.a.x, global2.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(602f, global2.a.x, -303f)))), all(vec3<bool>(global2.c, global2.c, false))))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, global2.a.x) - global2.b.yz), vec2<f32>(global2.a.x, -400f))))), global2.b, !(select(arg_1, 0u, false) <= ~4294967295u), 0i));
    var var_1 = u_input.c.x;
    let var_2 = countOneBits(1628u);
    var var_3 = !var_0.a.c;
    return all(global1.ww);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec4<bool>(func_1(true, u_input.b << (u_input.a % 32u)), true, func_5(Struct_2(Struct_1(vec2<f32>(443f, global2.a.x), global2.b, global1.x, u_input.d)), _wgslsmith_f_op_vec3_f32(global2.b + _wgslsmith_f_op_vec3_f32(-global2.b))).c, func_5(Struct_2(func_5(Struct_2(Struct_1(global2.b.zz, vec3<f32>(140f, global2.b.x, 1351f), global2.c, global0[_wgslsmith_index_u32(6755u, 15u)])), global2.b)), _wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(-217f, 360f, global2.b.x))).c);
    var var_0 = Struct_4(max(countOneBits(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(46222u, u_input.a), vec2<u32>(64139u, 0u)))), 16798u));
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(24848u, var_0.a)))), _wgslsmith_mod_u32(~13928u ^ (var_0.a ^ 0u), _wgslsmith_mult_u32(u_input.b, ~6395u)), 1u, u_input.b), u_input.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(~(u_input.b | var_0.a), 15u)], ~5323i), _wgslsmith_dot_vec4_i32(u_input.c, -(u_input.c ^ u_input.c))), 1i << (((1u >> (abs(var_0.a) % 32u)) ^ ~(var_0.a | u_input.a)) % 32u));
}

