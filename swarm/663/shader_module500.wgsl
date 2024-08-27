struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_mod_i32(123i, var_0.d) <= u_input.e;
    let var_2 = arg_1;
    let var_3 = arg_0.x;
    var var_4 = var_2;
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(arg_2.a, _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-33760i, arg_0.d << (15986u % 32u), arg_2.b), u_input.e), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-2147483647i, arg_2.d, -14784i) << (u_input.c.xwy % vec3<u32>(32u))), firstLeadingBit(vec3<i32>(arg_2.d, -2147483647i, arg_0.d)))), func_3(u_input.a >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 13872u, 4643u), u_input.a) % vec3<u32>(32u)), arg_0), _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.e, -2147483647i, arg_2.d) | vec3<i32>(-3051i, u_input.e, arg_0.d)), vec3<i32>(u_input.e, _wgslsmith_clamp_i32(-2240i, arg_0.b, arg_0.d), ~u_input.e)) << (u_input.d % 32u));
    var var_1 = arg_2;
    let var_2 = arg_2;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f)))), abs(~(~(~1i))), all(vec3<bool>(!global1[_wgslsmith_index_u32(5395u, 1u)], arg_2.c, arg_0.c)), arg_2.d);
    var_1 = var_0;
    return reverseBits(_wgslsmith_dot_vec3_i32(~firstTrailingBit(~vec3<i32>(-28013i, 3640i, -2147483647i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b, var_3.b, -1i) & vec3<i32>(2841i, var_2.d, arg_0.d), select(vec3<i32>(13021i, -1i, var_0.d), vec3<i32>(25476i, 21435i, 1i), false))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    return Struct_1(arg_2.a, _wgslsmith_div_i32(-14585i, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(-13521i), 16609i | arg_2.d, -29404i), _wgslsmith_add_vec3_i32(-vec3<i32>(-32939i, -2147483647i, arg_2.b), _wgslsmith_add_vec3_i32(vec3<i32>(arg_3.x, arg_1.b, arg_3.x), vec3<i32>(arg_1.d, -9057i, u_input.e))))), false, u_input.e);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(9830u, 1u)];
    let var_1 = func_4(_wgslsmith_mod_u32(33038u, u_input.a.x), arg_2, Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a)))), ~24124i, !any(!global0.xx), -(~(-46129i))), vec2<i32>(u_input.e | select(arg_2.d, func_2(Struct_1(arg_2.a, arg_2.d, global0.x, -2147483647i), global0.zxz, Struct_1(vec2<f32>(arg_1, arg_1), 1i, global0.x, u_input.e)), true), 0i));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    var var_0 = Struct_1(vec2<f32>(func_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_2.a.x)), -1610f, _wgslsmith_f_op_f32(1023f * arg_0.a.x)), _wgslsmith_f_op_f32(min(arg_0.a.x, -651f)), arg_2).a.x, arg_2.a.x), u_input.e ^ -6086i, any(vec2<bool>(1i != arg_2.b, all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 1u)], false, true), vec4<bool>(false, true, false, arg_0.c), vec4<bool>(true, true, arg_0.c, global0.x))))), firstLeadingBit(-arg_2.b));
    let var_1 = func_4(4294967295u | arg_1.x, func_4(u_input.b, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.a, vec2<f32>(var_0.a.x, arg_2.a.x), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(arg_2.a - var_0.a)), -_wgslsmith_dot_vec4_i32(vec4<i32>(41380i, -21730i, arg_0.d, arg_0.d), vec4<i32>(u_input.e, 3074i, var_0.b, arg_0.d)), arg_3.x, _wgslsmith_mod_i32(arg_0.b & arg_2.b, 2147483647i)), func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1666f, -762f, var_0.a.x)), vec3<f32>(-1006f, -822f, 384f), select(vec3<bool>(arg_3.x, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)]), vec3<bool>(true, true, var_0.c), true))), _wgslsmith_f_op_f32(sign(351f)), arg_2), vec2<i32>(_wgslsmith_sub_i32(~2147483647i, -1i), abs(_wgslsmith_clamp_i32(2147483647i, 1i, 43035i)))), arg_2, min(vec2<i32>(var_0.d, arg_0.d), vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, -2147483647i), vec2<i32>(-2147483647i, arg_0.b))), 2147483647i)));
    let var_2 = select(var_1.a.x < arg_0.a.x, true, select(func_3(vec3<u32>(u_input.a.x, 0u, ~0u), func_4(4294967295u, Struct_1(vec2<f32>(arg_0.a.x, 995f), -2147483647i, false, arg_0.b), Struct_1(vec2<f32>(509f, arg_0.a.x), u_input.e, arg_3.x, 0i), -vec2<i32>(arg_2.b, 20498i))), !any(select(arg_3, vec3<bool>(true, false, var_1.c), vec3<bool>(true, var_0.c, global1[_wgslsmith_index_u32(6950u, 1u)]))), !global0.x));
    global1 = array<bool, 1>();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(floor(-1342f)))) - -1034f), -495f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(sign(var_0.a.x))))), -412f);
    return _wgslsmith_clamp_i32(var_0.d, i32(-1i) * -21534i, arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 1>();
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-830f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1406f)) - 1000f)), 1222f), firstLeadingBit(reverseBits(-u_input.e >> (max(u_input.d, 4294967295u) % 32u))), false, -abs(u_input.e) << (4294967295u % 32u));
    let var_1 = ~(u_input.e | min(22192i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e, 2147483647i, var_0.b, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0.b, u_input.e, 25570i), vec4<i32>(var_0.d, 1i, u_input.e, -1i)))));
    let var_2 = vec4<i32>(firstTrailingBit(-48646i), min(_wgslsmith_mod_i32(u_input.e, ~u_input.e), func_5(Struct_1(vec2<f32>(var_0.a.x, 874f), u_input.e, true, -1408i), ~vec2<u32>(u_input.a.x, u_input.a.x), func_1(vec3<f32>(var_0.a.x, var_0.a.x, -265f), -861f, var_0), vec3<bool>(false, var_0.c, true))), var_0.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, var_1), (vec2<i32>(-47244i, -1i) & vec2<i32>(var_1, u_input.e)) ^ ~vec2<i32>(var_0.b, 31218i))) >> (vec4<u32>(~u_input.b, _wgslsmith_mult_u32(16566u, 10227u), reverseBits(firstLeadingBit(11929u >> (u_input.b % 32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(max(u_input.b, 21555u), select(126u, u_input.c.x, var_0.c), u_input.d, u_input.d), abs(u_input.c))) % vec4<u32>(32u));
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1426f, var_0.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1195f, -1497f)))), _wgslsmith_f_op_f32(min(-576f, _wgslsmith_div_f32(-677f, var_0.a.x))))), -275f, Struct_1(var_0.a, 1i, func_1(vec3<f32>(1219f, _wgslsmith_f_op_f32(sign(var_0.a.x)), var_0.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.a.x)), 1000f)), var_0).c, -var_2.x));
    var var_4 = 2147483647i;
    var_4 = _wgslsmith_div_i32(13205i, -abs(_wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(var_0.d, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(_wgslsmith_mult_u32(0u, 1u) >> ((0u >> (1u % 32u)) % 32u)), _wgslsmith_clamp_u32(35210u, ~_wgslsmith_add_u32(19695u, 16241u), abs(~4294967295u)), u_input.c.x, 1u), 1031f, _wgslsmith_dot_vec4_u32(select(vec4<u32>(~u_input.c.x, 1u, 0u, u_input.a.x), vec4<u32>(u_input.d, u_input.a.x >> (u_input.c.x % 32u), 68157u, u_input.b), select(global1[_wgslsmith_index_u32(u_input.b, 1u)], global1[_wgslsmith_index_u32(u_input.c.x, 1u)], true) | any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], true, var_3.c, var_3.c))), u_input.c), u_input.a, -u_input.e);
}

