struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(47696u, 4916u);

var<private> global1: array<u32, 14> = array<u32, 14>(1u, 4294967295u, 1u, 39772u, 0u, 4294967295u, 10539u, 67949u, 4294967295u, 1u, 1u, 6781u, 0u, 107945u);

var<private> global2: vec3<bool>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    global1 = array<u32, 14>();
    let var_0 = -(~abs(~(-vec2<i32>(u_input.d, 1i))));
    let var_1 = Struct_2(arg_3, u_input.c.yy);
    let var_2 = !select(select(select(vec4<bool>(global2.x, global2.x, false, global2.x), select(vec4<bool>(global2.x, false, false, true), vec4<bool>(global2.x, false, global2.x, false), global2.x), 10062u > arg_1.a.x), select(!vec4<bool>(global2.x, true, false, global2.x), !vec4<bool>(true, true, global2.x, global2.x), !vec4<bool>(true, global2.x, global2.x, global2.x)), !(!vec4<bool>(true, false, true, global2.x))), vec4<bool>(any(!vec4<bool>(global2.x, true, true, global2.x)), global2.x, select(true, true, !global2.x), global2.x), select(global2.x, global2.x, !any(vec4<bool>(global2.x, global2.x, global2.x, false))));
    global2 = vec3<bool>(var_2.x | any(vec3<bool>(false, !var_2.x, all(vec2<bool>(global2.x, global2.x)))), true, var_2.x | true);
    return u_input.d;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(-(~1i), -1i);
    var var_1 = Struct_2(Struct_1(vec3<u32>(96237u, select(18314u, ~global0.x, any(vec3<bool>(global2.x, global2.x, false))), 4294967295u), u_input.d), reverseBits(u_input.c.xy) << (reverseBits(abs(u_input.c.xx)) % vec2<u32>(32u)));
    var var_2 = Struct_1(~vec3<u32>(var_1.b.x, var_1.a.a.x, 4294967295u >> (firstLeadingBit(4294967295u) % 32u)), -19171i);
    var var_3 = vec3<bool>(true, -46595i > ~_wgslsmith_sub_i32(func_3(152f, Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(0u, 14u)], 104180u, 0u), -10402i), vec2<f32>(-601f, -2006f), var_1.a), i32(-1i) * -14752i), true || global2.x);
    var_0 = 1i;
    return Struct_2(Struct_1(~(~(~vec3<u32>(global0.x, global1[_wgslsmith_index_u32(1u, 14u)], 4294967295u))), abs(-var_1.a.b)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(1u, global1[_wgslsmith_index_u32(var_2.a.x, 14u)])), u_input.c.x | var_2.a.x), u_input.c.yw), vec2<u32>(0u, ~var_2.a.x), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(87283u, u_input.c.x, 1u, 47133u), max(u_input.c, u_input.c)), _wgslsmith_dot_vec3_u32(u_input.c.zyx, vec3<u32>(1229u, global0.x, 98165u) & var_1.a.a))));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    global1 = array<u32, 14>();
    global2 = vec3<bool>(false, true, !(_wgslsmith_mult_u32(1u, global0.x ^ 11339u) <= abs(50763u)));
    var var_0 = vec3<bool>(!(true != (_wgslsmith_mod_u32(arg_1, arg_1) <= _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(68794u, 14u)], 31964u))), true, !global2.x);
    let var_1 = firstTrailingBit(~vec2<i32>(arg_2.a.b, ~_wgslsmith_mult_i32(10396i, arg_0.x)));
    let var_2 = _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -229f), false)))));
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_vec3_u32(~min(vec3<u32>(32661u, 59765u, 22369u), arg_1.a), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.a), countOneBits(vec3<u32>(4294967295u, arg_1.a.x, 3172u)))), u_input.d), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(13746u, 14u)], global1[_wgslsmith_index_u32(global0.x, 14u)]), u_input.c.yx)), arg_1.a.yx));
    var var_1 = func_4(-countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, -12010i), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.b, arg_0, 8467i), vec3<i32>(var_0.a.b, -1i, arg_0)))), var_0.a.a.x, func_2());
    let var_2 = arg_1.b;
    global2 = vec3<bool>(~max(firstTrailingBit(1u), 1u) <= (countOneBits(1u) >> (max(~47904u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(var_0.b.x, 14u)], 53740u)) % 32u)), any(!vec4<bool>(global2.x, !global2.x, true, global2.x)), all(vec2<bool>(any(!vec4<bool>(false, false, global2.x, false)), global2.x)));
    let var_3 = var_1.a.a.x;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d & _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, 22793i), 2022i);
    global2 = !vec3<bool>(global2.x | (u_input.d < _wgslsmith_mult_i32(u_input.d, u_input.d)), true, select(false, global0.x >= 1u, global2.x) || global2.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(u_input.c.xww, u_input.c.wwz), countOneBits(~2147483647i)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.xz), global0.x << (4294967295u % 32u)) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(global0.x, 14u)]), ~vec2<u32>(2811u, 17355u)), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 14u)], 14u)], 35440u, 6174u), u_input.c), func_1(0i, Struct_1(u_input.c.zyw, u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -1215f)))));
    global1 = array<u32, 14>();
    var_1 = func_4(vec3<i32>(-1i) * -(max(vec3<i32>(29568i, -1i, u_input.d), vec3<i32>(u_input.d, u_input.d, -1i)) & select(vec3<i32>(1i, -42105i, 0i), vec3<i32>(0i, 0i, u_input.d), vec3<bool>(true, false, false))), u_input.a, Struct_2(Struct_1(_wgslsmith_div_vec3_u32(u_input.c.xzw, vec3<u32>(0u, 1u, var_1.b.x)) & reverseBits(u_input.c.zwz), _wgslsmith_sub_i32(~var_1.a.b, reverseBits(var_1.a.b))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, ~0u), select(var_1.b, u_input.c.xy, global2.x))));
    var_1 = func_4(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.a.b ^ u_input.d, func_3(889f, Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(1u, 14u)], var_1.b.x, u_input.b), u_input.d), vec2<f32>(-2558f, -1320f), var_1.a), var_1.a.b), vec3<i32>(var_1.a.b, countOneBits(var_1.a.b << (1u % 32u)), var_1.a.b)), 76501u, Struct_2(Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(~u_input.b, 14u)], ~1110u, _wgslsmith_sub_u32(global0.x, global1[_wgslsmith_index_u32(u_input.c.x, 14u)])), -var_1.a.b), reverseBits(select(~vec2<u32>(1u, 47158u), ~vec2<u32>(u_input.a, u_input.b), select(global2.xx, vec2<bool>(global2.x, global2.x), global2.xy)))));
    let var_2 = abs(reverseBits(vec4<i32>(~(u_input.d ^ 2147483647i), (-1i << (global0.x % 32u)) >> (_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 14u)], 14u)], 55034u) % 32u), u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.b, 0i, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(-5611i, 53540i, -1i), vec3<i32>(2147483647i, u_input.d, -25331i))))));
    var var_3 = Struct_2(var_1.a, vec2<u32>(88814u, u_input.b));
    global0 = vec2<u32>(~var_3.a.a.x, 53858u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(338f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1548f + -381f)))), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), select(vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(false, global2.x, false, true), true), true)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(764f, -1455f)))), _wgslsmith_f_op_f32(-166f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1746f + -1417f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1158f + -1128f) * _wgslsmith_div_f32(-103f, -604f)) - _wgslsmith_f_op_f32(-234f * _wgslsmith_f_op_f32(f32(-1f) * -374f))), 248f), ~2147483647i, select(45986u, 0u, !global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(828f)) - _wgslsmith_f_op_f32(sign(858f))) - 1f) + _wgslsmith_f_op_f32(f32(-1f) * -493f)));
}

