struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec4<u32>(9358u, 597u, 1668u, 0u)), -1308f, vec3<f32>(1000f, -2312f, -826f), Struct_2(vec4<u32>(4294967295u, 6123u, 4294967295u, 4294967295u)));

var<private> global1: vec3<bool>;

var<private> global2: vec4<u32> = vec4<u32>(64377u, 17286u, 0u, 1u);

var<private> global3: vec4<i32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<bool>) -> f32 {
    global1 = select(arg_3, vec3<bool>(-_wgslsmith_sub_i32(global3.x, 32374i) == ~_wgslsmith_clamp_i32(global3.x, -797i, global3.x), !arg_3.x && any(!vec4<bool>(false, false, global1.x, global1.x)), true), vec3<bool>(global1.x, !global1.x, any(!select(arg_3, vec3<bool>(false, false, false), global1.x))));
    global3 = arg_0.a;
    let var_0 = vec4<bool>(any(vec3<bool>(any(vec2<bool>(arg_3.x, arg_3.x)), all(vec4<bool>(true, true, true, true)), true)), true, 0i >= arg_0.a.x, select(global0.b > _wgslsmith_f_op_f32(-1000f - -611f), all(select(arg_3.yx, arg_3.yz, vec2<bool>(true, arg_3.x))), true) | any(select(select(vec2<bool>(global1.x, arg_3.x), vec2<bool>(true, true), true), select(arg_3.xy, global1.yy, false), true)));
    let var_1 = arg_1.a;
    var var_2 = 2147483647i;
    return _wgslsmith_f_op_f32(-arg_1.c.x);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>) -> vec2<bool> {
    global1 = !(!(!select(vec3<bool>(arg_1, global1.x, global1.x), vec3<bool>(arg_1, true, true), select(global1.x, global1.x, true))));
    let var_0 = ~vec3<u32>(34296u, countOneBits(firstTrailingBit(72917u)), ~(u_input.a.x >> (64373u % 32u)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(2476u, u_input.a.x, global2.x, arg_0.a.a.x), arg_0.a.a) % 32u));
    let var_1 = reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(global0.a.a.zyw, ~abs(u_input.a)), max(arg_0.a.a.yzz, min(global2.xyz & arg_0.d.a.zyy, vec3<u32>(arg_0.d.a.x, 13507u, global2.x)))));
    global1 = !vec3<bool>(true, true, arg_1);
    let var_2 = global3.x;
    return !(!(!vec2<bool>(all(vec4<bool>(false, false, true, global1.x)), false)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> Struct_3 {
    let var_0 = select(vec2<bool>(!select(global1.x, false, true), true), func_4(Struct_3(global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(global3.x, global3.x, global3.x, global3.x)), Struct_3(global0.d, global0.c.x, global0.c, Struct_2(global0.d.a)), Struct_3(Struct_2(vec4<u32>(global0.a.a.x, global0.a.a.x, 5195u, global2.x)), -930f, vec3<f32>(arg_0.x, 1673f, -956f), global0.d), vec3<bool>(global1.x, false, false)))), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)), Struct_2(vec4<u32>(u_input.a.x, arg_1, global0.d.a.x, u_input.a.x))), ~select(1u, global2.x, global1.x) < 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.c)))), !vec2<bool>(any(vec2<bool>(true, true)), !global1.x));
    global3 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(abs(global3.x), ~global3.x, min(global3.x, global3.x), _wgslsmith_mod_i32(2147483647i, global3.x)) << (~global0.a.a % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(global3.x, _wgslsmith_sub_i32(global3.x, global3.x)), -_wgslsmith_clamp_i32(-23002i, -1i, global3.x), -2147483647i, -global3.x >> ((arg_1 >> (global2.x % 32u)) % 32u)));
    var var_1 = Struct_1(vec4<i32>(0i, global3.x, -30620i, (global3.x | 54699i) & (-global3.x | _wgslsmith_sub_i32(17133i, 47847i))));
    var var_2 = _wgslsmith_mod_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(-2147483647i, -5888i, -2147483647i, var_1.a.x)), _wgslsmith_add_i32(var_1.a.x, global3.x)), -1i, 0i), countOneBits(-vec3<i32>(min(12403i, -60514i), _wgslsmith_clamp_i32(global3.x, var_1.a.x, 1i), -global3.x)));
    let var_3 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(-var_2.yz, vec2<i32>(-var_1.a.x, -18095i)), -var_1.a.x, global3.x);
    return Struct_3(global0.d, -2625f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.b), -898f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + 234f))), Struct_2(global0.d.a));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = vec2<u32>(global0.a.a.x, 42279u);
    var var_1 = Struct_3(global0.a, 614f, _wgslsmith_f_op_vec3_f32(sign(global0.c)), global0.a);
    var_1 = func_2(_wgslsmith_f_op_vec2_f32(max(var_1.c.yx, global0.c.xx)), ~u_input.a.x);
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global3.x, ~global3.x), 1i, abs(1i), _wgslsmith_dot_vec3_i32(global3.yyy, global3.zzw) & _wgslsmith_mod_i32(global3.x, global3.x)), vec4<i32>(59819i, global3.x, global3.x, _wgslsmith_dot_vec3_i32(global3.zzy, global3.yzw) << (abs(global2.x) % 32u))), countOneBits(vec4<i32>(global3.x, _wgslsmith_sub_i32(global3.x, ~global3.x), _wgslsmith_mult_i32(firstTrailingBit(global3.x), 23956i), 35865i)));
    var_2 = 46620i;
    return Struct_3(global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) + -277f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(236f, 186f, 1000f), global0.c, true)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, global0.c.x, arg_0.x), var_1.c)), _wgslsmith_div_vec3_f32(global0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-995f, -2240f, 625f))))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-790f, 854f)) + _wgslsmith_f_op_vec2_f32(-global0.c.yy)) + arg_0), _wgslsmith_mod_u32(~var_1.d.a.x, ~(~global2.x))).d);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = global1.x;
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(~(~vec4<i32>(-2147483647i, global3.x, -1i, global3.x)), -_wgslsmith_add_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, global3.x), vec4<i32>(41382i, global3.x, global3.x, global3.x))) << (~vec4<u32>(4294967295u, ~global2.x, ~u_input.a.x, _wgslsmith_clamp_u32(17259u, 53751u, 4294967295u)) % vec4<u32>(32u)));
    global3 = _wgslsmith_sub_vec4_i32(var_1.a, abs(vec4<i32>(-abs(global3.x), ~var_1.a.x, global3.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(24174i, var_1.a.x), firstTrailingBit(global3.x)))));
    global2 = _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(~global2.x, ~(~arg_1.a.a.x), arg_1.d.a.x, reverseBits(~7007u))), vec4<u32>(~reverseBits(abs(arg_1.d.a.x)), func_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(global0.c.x - -253f))).a.a.x, global2.x << (global2.x % 32u), global2.x));
    var var_2 = select(!vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1453f) >= arg_1.b, arg_0.x), !(!vec3<bool>(true, true, true & arg_0.x)), select(select(!vec3<bool>(global1.x, true, arg_0.x), vec3<bool>(arg_0.x, !arg_0.x, true), all(global1.xz)), vec3<bool>(global1.x, !global1.x == true, _wgslsmith_mod_i32(1800i, var_1.a.x) >= _wgslsmith_mod_i32(var_1.a.x, 1167i)), !vec3<bool>(true, all(global1.xx), true)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.x;
    var_0 = global3.x;
    var var_1 = select(countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(30588i, global3.x, -6354i, -1i), -vec4<i32>(global3.x, -1i, global3.x, global3.x)), abs(vec4<i32>(global3.x, -2147483647i, global3.x, global3.x) | vec4<i32>(-1i, 11639i, global3.x, 28142i)), select(_wgslsmith_div_vec4_i32(vec4<i32>(global3.x, -44907i, 2147483647i, 2147483647i), vec4<i32>(-1i, -7845i, 1i, global3.x)), vec4<i32>(global3.x, global3.x, 2147483647i, 16685i), true))), vec4<i32>(func_5(vec2<bool>(!global1.x, global1.x), func_1(global0.c.xz)), global3.x, 1i, _wgslsmith_mod_i32(abs(global3.x << (0u % 32u)), countOneBits(_wgslsmith_div_i32(global3.x, global3.x)))), all(global1.yx));
    let var_2 = global1.x;
    var_1 = _wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(~vec4<i32>(var_1.x, 10558i, global3.x, 33095i) >> (global0.d.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, 4271i), vec4<i32>(var_1.x, -2147483647i, global3.x, 42533i)) ^ -vec4<i32>(global3.x, 0i, global3.x, 1i)), ~vec4<i32>(var_1.x, 7341i, ~var_1.x, var_1.x));
    let var_3 = Struct_1(vec4<i32>(global3.x, 25518i, -36655i, _wgslsmith_clamp_i32(global3.x, global3.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(62853i, var_1.x), vec2<i32>(-1i, var_1.x), vec2<i32>(0i, 0i)), ~var_1.wx))));
    var var_4 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-511f - global0.b))), _wgslsmith_f_op_f32(-global0.b))), 31507u).d;
    var var_5 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(abs(_wgslsmith_add_u32(var_4.a.x, 35111u))), var_1.xy, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.b)) - global0.c.xy)), ~u_input.a.x).d.a.x, _wgslsmith_mult_vec3_u32(countOneBits(var_4.a.xyw), global0.d.a.yxz));
}

