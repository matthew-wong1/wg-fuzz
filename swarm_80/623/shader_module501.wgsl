struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<i32>, 24>;

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<u32> {
    global1 = array<vec3<i32>, 24>();
    global0 = vec2<u32>(select(9339u, ~global0.x, all(select(select(vec3<bool>(global2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.x), !vec3<bool>(false, false, arg_2.x), select(vec3<bool>(arg_2.x, false, true), vec3<bool>(true, false, global2.x), false)))), abs(_wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(u_input.b, 19993u), reverseBits(arg_1.b))) | 27801u);
    let var_0 = false;
    let var_1 = -1264f;
    var var_2 = abs(44375u);
    return _wgslsmith_mod_vec4_u32(~arg_1.a, vec4<u32>(arg_1.a.x, 1u, ~_wgslsmith_sub_u32(u_input.b, countOneBits(53981u)), _wgslsmith_mod_u32(~4294967295u, 18235u)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = u_input.c;
    var var_1 = Struct_1(vec4<u32>(~arg_0.b | _wgslsmith_mult_u32(u_input.b, 0u), arg_0.a.x, 1u, global0.x) & ~_wgslsmith_div_vec4_u32(arg_0.a | vec4<u32>(global0.x, 44308u, 4294967295u, global0.x), vec4<u32>(62072u, 66463u, 0u, arg_0.a.x)), _wgslsmith_mod_u32(46104u, firstTrailingBit(reverseBits(1u)) << (~1u % 32u)), -376f, _wgslsmith_mult_vec3_i32(arg_0.d, -_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1459i, arg_0.d.x, arg_0.d.x), global1[_wgslsmith_index_u32(19675u, 24u)]), arg_0.d)), arg_0.e);
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_add_u32(arg_0.a.x, u_input.b), 4294967295u | _wgslsmith_mod_u32(0u, arg_0.a.x), arg_0.b, global0.x) & _wgslsmith_mod_vec4_u32(var_1.a, ~(vec4<u32>(arg_0.b, 1u, arg_0.a.x, global0.x) << (vec4<u32>(32704u, arg_0.b, 64462u, global0.x) % vec4<u32>(32u)))), max(~(~arg_0.b), ~(~u_input.b)) >> (u_input.b % 32u), 1135f, _wgslsmith_mod_vec3_i32(arg_0.d, _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c, -37277i, var_1.d.x), global1[_wgslsmith_index_u32(u_input.b << (44689u % 32u), 24u)]), vec3<i32>(abs(u_input.a), arg_0.d.x, arg_0.d.x))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(757f, arg_0.c))))), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-143f, _wgslsmith_f_op_f32(select(1088f, var_1.c, true)))) - arg_0.e.x)));
    var var_3 = vec4<i32>(~firstTrailingBit(~(i32(-1i) * -64947i)), ~1i, _wgslsmith_mod_i32(-1i, select(2147483647i, -_wgslsmith_mod_i32(0i, -8871i), global2.x)), abs(min(-2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-53875i, -70998i), min(arg_0.d.zy, var_1.d.zz)))));
    let var_4 = vec3<bool>(!any(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, true, true), vec3<bool>(true, global2.x, global2.x))), any(!vec3<bool>(global2.x, !global2.x, any(global2.yy))), 4294967295u == countOneBits(abs(~global0.x)));
    return var_2.a;
}

fn func_1(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(firstLeadingBit(func_2(vec3<u32>(global0.x, u_input.b, 42637u), Struct_1(vec4<u32>(41540u, 18117u, global0.x, u_input.b), 0u, arg_0.x, global1[_wgslsmith_index_u32(86482u, 24u)], vec3<f32>(-1228f, -1036f, arg_0.x)), vec2<bool>(global2.x, false))), select(vec4<u32>(1u, global0.x, u_input.b, 1u), func_3(Struct_1(vec4<u32>(global0.x, 47149u, u_input.b, global0.x), u_input.b, arg_0.x, vec3<i32>(u_input.a, 0i, 0i), arg_0)), arg_0.x > -1188f)) >> (reverseBits(vec4<u32>(7077u, u_input.b, ~4294967295u, u_input.b | u_input.b)) % vec4<u32>(32u)), _wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.b, ~u_input.b), 0u)), arg_0.x, -_wgslsmith_mod_vec3_i32(global1[_wgslsmith_index_u32(abs(u_input.b), 24u)], vec3<i32>(-6268i, -u_input.a, _wgslsmith_clamp_i32(u_input.a, 1i, -43363i))), vec3<f32>(_wgslsmith_f_op_f32(select(1773f, 1049f, true || all(vec3<bool>(false, global2.x, true)))), _wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x));
    global1 = array<vec3<i32>, 24>();
    let var_1 = countOneBits(_wgslsmith_sub_vec2_i32(~vec2<i32>(abs(25684i), ~(-20664i)), -((var_0.d.zz & var_0.d.yz) >> (func_3(var_0).zw % vec2<u32>(32u)))));
    var var_2 = false;
    let var_3 = max(u_input.a << (~var_0.a.x % 32u), firstLeadingBit(var_1.x));
    return vec4<u32>(0u, firstLeadingBit(9761u), 101230u, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~_wgslsmith_clamp_vec4_u32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(554f, -1696f, 1270f) + vec3<f32>(1000f, -231f, 644f))), ~func_1(vec3<f32>(1253f, 845f, 1154f)), (vec4<u32>(4294967295u, global0.x, u_input.b, 0u) << (vec4<u32>(1u, global0.x, 1242u, 4294967295u) % vec4<u32>(32u))) << (~vec4<u32>(global0.x, 61983u, global0.x, 4294967295u) % vec4<u32>(32u))), func_3(Struct_1(select(vec4<u32>(1u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, global0.x, 0u, global0.x), true), 0u, -609f, max(global1[_wgslsmith_index_u32(101240u, 24u)], vec3<i32>(0i, 29898i, 20879i)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(392f, -1000f, -370f), vec3<f32>(-288f, 798f, 602f))))).x << (u_input.b % 32u), 170f, vec3<i32>(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, u_input.a, u_input.c, -1855i), _wgslsmith_div_vec4_i32(vec4<i32>(35773i, 30545i, u_input.c, 18290i), vec4<i32>(u_input.a, 81553i, u_input.c, 1i))), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.c, -19657i, u_input.c), vec4<i32>(u_input.a, u_input.c, 64681i, u_input.c))), i32(-1i) * -countOneBits(1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1001f, _wgslsmith_f_op_f32(abs(-364f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-656f * 311f)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(241f, -1404f, 163f)))), true))));
    var var_1 = var_0.a.x;
    var var_2 = vec3<u32>(1u, global0.x, 1u);
    let var_3 = ~var_2.yz;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_f32(-var_0.e.x), func_2(~(~(~vec3<u32>(4127u, 0u, var_3.x))), Struct_1(var_0.a, u_input.b, var_0.c, vec3<i32>(var_0.d.x | -68322i, ~u_input.a, abs(u_input.c)), vec3<f32>(var_0.c, _wgslsmith_f_op_f32(trunc(var_0.e.x)), -1711f)), !(!select(vec2<bool>(global2.x, true), global2.zy, vec2<bool>(global2.x, true)))).x);
}

