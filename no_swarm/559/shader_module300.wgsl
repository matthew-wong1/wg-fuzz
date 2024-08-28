struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-25735i, 10346i, 50355i), vec3<i32>(i32(-2147483648), 31578i, i32(-2147483648)), vec3<i32>(107968i, -30205i, 1i), vec3<i32>(-42171i, 9806i, -45346i), vec3<i32>(2147483647i, -4002i, 29243i));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(4294967295u, 92776u, 0u, 55646u), 29756i, 766i);

var<private> global2: bool;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1395f);
    global2 = true;
    let var_1 = -531f;
    var var_2 = arg_0.b;
    var var_3 = 1u;
    return vec3<f32>(var_1, var_1, _wgslsmith_f_op_f32(-var_1));
}

fn func_3(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = ~(u_input.b << (~global1.a.x % 32u));
    let var_1 = u_input.b;
    global0 = array<vec3<i32>, 5>();
    var var_2 = ~(~(~(36771u << (u_input.a % 32u)))) <= 23504u;
    global1 = Struct_1((_wgslsmith_clamp_vec4_u32(~global1.a, global1.a, ~global1.a) >> ((~vec4<u32>(u_input.a, u_input.a, 4294967295u, 56351u) ^ _wgslsmith_add_vec4_u32(global1.a, global1.a)) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global1.a.x, u_input.a, 44662u), global1.a) | global1.a, ~vec4<u32>(global1.a.x, 1u, 1u, global1.a.x)), _wgslsmith_dot_vec2_i32(-(select(vec2<i32>(-1i, u_input.b), vec2<i32>(var_1, var_1), true) | ~vec2<i32>(20400i, -5647i)), _wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.b, 0i)), abs(~vec2<i32>(0i, var_1)))), reverseBits(-max(-3262i, countOneBits(var_1))));
    return Struct_1(min(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(global1.a, vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 0u)), vec4<u32>(global1.a.x, 20898u, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(global1.a << (global1.a % vec4<u32>(32u)), vec4<u32>(global1.a.x, 4294967295u, global1.a.x, global1.a.x))) << (abs(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(36296u, global1.a.x, 4294967295u, u_input.a), global1.a))) % vec4<u32>(32u)), -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(2147483647i, 0i), vec2<i32>(u_input.b, var_1)), vec2<i32>(global1.c, -1088i) & vec2<i32>(var_1, -2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1, 31009i), vec2<i32>(-2147483647i, 0i), vec2<i32>(var_1, 2147483647i))), reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global1.c) >> (global1.a.wx % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1), vec2<i32>(398i, global1.b)), vec2<i32>(7864i, var_1)))));
}

fn func_1() -> vec4<u32> {
    global1 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-824f, -406f, -190f) - _wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec4<u32>(42354u, global1.a.x, 4536u, global1.a.x), u_input.b, 0i)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-677f, -1000f, 219f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1410f, -783f, 1000f)))) * vec3<f32>(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec4<u32>(global1.a.x, 4294967295u, u_input.a, 29197u), -2147483647i, 2147483647i))).x, 246f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1333f * 716f), _wgslsmith_f_op_f32(215f + -193f)))));
    global1 = func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-521f + _wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec4<u32>(global1.a.x, u_input.a, 4294967295u, 0u), u_input.b, global1.b))).x)), -961f, _wgslsmith_f_op_f32(ceil(-101f))));
    var var_0 = vec2<f32>(-380f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(810f - _wgslsmith_f_op_f32(f32(-1f) * -2467f))) * _wgslsmith_f_op_f32(f32(-1f) * -118f)));
    var var_1 = u_input.a;
    var var_2 = ~(~global1.a.wz);
    return global1.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_1 {
    global1 = arg_0;
    let var_0 = Struct_1(~(vec4<u32>(1u, global1.a.x, global1.a.x, firstLeadingBit(arg_0.a.x)) & arg_1.a), arg_3.x, (_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_1.c, -1i, 47654i, arg_0.b), vec4<i32>(-1i, -7067i, u_input.b, 1i), true), firstTrailingBit(vec4<i32>(u_input.b, arg_3.x, u_input.b, 1i))) & 0i) >> (~u_input.a % 32u));
    var var_1 = Struct_1(firstTrailingBit(func_1()), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.c, arg_3.x), -u_input.b), func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-267f, 702f, 1193f))), vec3<f32>(-387f, _wgslsmith_f_op_f32(abs(406f)), _wgslsmith_div_f32(-203f, -158f)))).b);
    let var_2 = ~vec3<u32>(u_input.a, 4294967295u, arg_1.a.x);
    var var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~(~(var_0.a ^ vec4<u32>(arg_1.a.x, arg_2.x, 38194u, 0u))), vec4<u32>((1u >> (var_2.x % 32u)) ^ 2826u, ~func_3(vec3<f32>(-156f, -1773f, 340f)).a.x, _wgslsmith_add_u32(min(1614u, arg_0.a.x), var_1.a.x), ~(var_1.a.x << (arg_2.x % 32u)))), var_0.a);
    return Struct_1(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, ~4294967295u, var_0.a.x), arg_0.a)), u_input.b, max(_wgslsmith_sub_i32(min(arg_3.x, 13573i | u_input.b), _wgslsmith_mult_i32(max(var_1.b, u_input.b), _wgslsmith_mult_i32(var_0.c, arg_1.b))), 3731i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~global1.a, -1i, ~(-2147483647i));
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(u_input.a), 5u)];
    var var_2 = global1.a.ywx;
    let var_3 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))));
    global2 = false;
    global2 = var_3.x;
    var_2 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 85854u), ~global1.a.x), 51322u, reverseBits(_wgslsmith_dot_vec2_u32(global1.a.yy, vec2<u32>(4294967295u, global1.a.x)))), max(vec3<u32>(var_0.a.x, ~u_input.a, ~0u), firstLeadingBit(vec3<u32>(4294967295u, 0u, u_input.a))));
    var var_4 = func_4(Struct_1(~func_1(), global1.c, -global1.b), Struct_1(~_wgslsmith_add_vec4_u32(~global1.a, ~global1.a), -3781i, 5590i), vec2<u32>(~38519u, 23265u), global0[_wgslsmith_index_u32(37813u, 5u)]);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~u_input.a | ~162061u), _wgslsmith_f_op_f32(462f - -1348f));
}

