struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    global0 = select(select(!(!vec3<bool>(global0.x, global0.x, false)), select(!(!vec3<bool>(global0.x, global0.x, true)), vec3<bool>(true, any(vec2<bool>(true, global0.x)), true), global0.x), true), select(vec3<bool>(true, global0.x, true), !vec3<bool>(global0.x, global0.x, global0.x), true), vec3<bool>((abs(u_input.d.x) & ~u_input.d.x) != _wgslsmith_dot_vec4_u32(reverseBits(u_input.d), u_input.d), global0.x, !global0.x || (select(u_input.a, u_input.b, true) <= u_input.b)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1892f, -2024f, -2053f), vec3<f32>(-618f, -378f, 746f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-184f, 1331f, 1439f)))))));
    let var_1 = select(select(!select(vec4<bool>(false, true, global0.x, global0.x), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, true, global0.x, false), vec4<bool>(true, false, global0.x, global0.x)), true), !(!(!vec4<bool>(global0.x, true, true, true))), !(2147483647i > u_input.a)), select(vec4<bool>(global0.x, all(vec4<bool>(true, global0.x, true, false)), global0.x, (var_0.x <= var_0.x) == false), !(!(!vec4<bool>(global0.x, global0.x, global0.x, false))), true), any(select(vec4<bool>(global0.x, u_input.d.x != 2912u, any(vec4<bool>(true, false, false, global0.x)), !global0.x), vec4<bool>(!global0.x, true, false, global0.x), true)));
    var_0 = vec3<f32>(262f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), var_0.x)))), var_0.x);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1438f))))), -min(-vec2<i32>(34728i, u_input.b) & _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.a, -2351i)), vec2<i32>(u_input.a, -1i)), abs(~_wgslsmith_mod_i32(countOneBits(40804i), _wgslsmith_mod_i32(u_input.a, -750i))), max(39118i, countOneBits(-min(15804i, -1i))), ~u_input.d.x);
    return _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, max(0i, -36923i)), var_2.b);
}

fn func_2(arg_0: i32) -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-1790f + _wgslsmith_f_op_f32(f32(-1f) * -662f))), func_3(u_input.d.x), i32(-1i) * -2147483647i, 1i, ~(~1u)), Struct_1(-240f), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-376f, 700f))), (-vec2<i32>(-29594i, arg_0) & min(vec2<i32>(arg_0, arg_0), vec2<i32>(u_input.a, 2147483647i))) & (vec2<i32>(-1i) * -vec2<i32>(-1i, arg_0)), u_input.b, 1i, u_input.d.x));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = -vec3<i32>(arg_2.a.d, arg_0, u_input.a);
    let var_1 = ~_wgslsmith_div_vec4_u32(u_input.d, _wgslsmith_sub_vec4_u32(abs(~u_input.d), select(vec4<u32>(u_input.d.x, u_input.d.x, 1u, 35990u), u_input.d, !vec4<bool>(true, global0.x, global0.x, global0.x))));
    var var_2 = Struct_3(arg_2.a, arg_2.b, arg_2.a);
    let var_3 = firstTrailingBit(-2147483647i);
    let var_4 = ~arg_1.x;
    return func_2(firstTrailingBit(_wgslsmith_sub_i32(u_input.a, u_input.a & arg_0) | func_2(10847i).a.c)).c;
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> f32 {
    global0 = select(vec3<bool>(reverseBits(func_3(11592u).x) <= 0i, !select(global0.x, global0.x, global0.x & global0.x), any(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, true, false), !vec3<bool>(false, global0.x, true)))), !vec3<bool>(~1i == arg_0, global0.x, global0.x), false);
    let var_0 = Struct_1(-576f);
    return _wgslsmith_f_op_f32(f32(-1f) * -815f);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<i32>(-u_input.c, -(3327i << (arg_3 % 32u))), arg_1.b.x, 0i, arg_1.c.x), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_1.a)), arg_0.x)), -501f))), Struct_2(func_4(-11068i, min(vec3<i32>(41398i, 0i, -2147483647i), vec3<i32>(arg_1.b.x, 1i, -7205i)) ^ -arg_1.b.wxy, func_2(-12679i)).a, _wgslsmith_sub_vec2_i32(arg_1.b.zy, func_3(arg_1.c.x)), ~(-2147483647i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(37920i, arg_1.b.x), _wgslsmith_mult_i32(arg_1.b.x, arg_1.b.x)), -_wgslsmith_add_i32(27610i, 1i)), _wgslsmith_dot_vec3_u32(u_input.d.xzy, u_input.d.xzw)));
    var var_1 = arg_1;
    var_0 = Struct_3(Struct_2(func_2(firstLeadingBit(~var_1.b.x)).a.a, -vec2<i32>(1i, i32(-1i) * -23174i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_1.b.zy >> (arg_1.c % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(var_1.b.zz, vec2<i32>(arg_1.b.x, -2147483647i))), var_0.a.b), 4500i, max(1u, ~58994u) & ~(arg_1.c.x << (arg_1.c.x % 32u))), func_4(var_1.b.x, vec3<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(2147483647i, var_1.b.x)), ~(-12861i), _wgslsmith_mult_i32(2147483647i, u_input.c)), Struct_3(Struct_2(func_4(-41773i, arg_1.b.yxw, Struct_3(var_0.a, Struct_1(1446f), var_0.a)).a, firstLeadingBit(var_0.c.b), var_1.b.x ^ 0i, _wgslsmith_mult_i32(arg_1.b.x, 18761i), u_input.d.x ^ var_0.a.e), var_0.b, Struct_2(Struct_1(1223f), func_4(-1i, arg_1.b.zyy, Struct_3(var_0.a, Struct_1(var_1.a), var_0.c)).b, ~var_1.b.x, countOneBits(-1i), arg_1.c.x))).a, Struct_2(Struct_1(var_1.a), reverseBits(~firstLeadingBit(arg_1.b.zz)), -2147483647i, 0i, 0u));
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_0.xw + arg_0.yw);
    var_1 = Struct_4(1347f, -var_1.b, vec2<u32>(countOneBits(4294967295u), ~(u_input.d.x << (var_0.c.e % 32u))));
    return Struct_4(arg_0.x, vec4<i32>(min(_wgslsmith_sub_i32(i32(-1i) * -1i, var_1.b.x ^ arg_1.b.x), countOneBits(-2147483647i) >> (func_2(-58354i).c.e % 32u)), 25553i, -1674i, var_0.c.d), select(var_1.c, u_input.d.xx, vec2<bool>(!global0.x, all(!vec4<bool>(true, global0.x, global0.x, false)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_4 {
    return func_6(vec4<f32>(_wgslsmith_f_op_f32(func_5(arg_2.c.c, func_4(12797i << (arg_0.e % 32u), vec3<i32>(arg_0.b.x, u_input.c, arg_2.a.b.x) << (u_input.d.zww % vec3<u32>(32u)), func_2(-2147483647i)))), _wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0.a.a)))), -1045f), Struct_4(-630f, -abs(vec4<i32>(6434i, arg_0.c, arg_2.c.d, u_input.c)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.zy, u_input.d.zx), u_input.d.ww)), func_4(u_input.a, firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(18455i, arg_2.c.b.x, -1i), vec3<i32>(-52988i, -23195i, -45517i)) << (u_input.d.yzx % vec3<u32>(32u))), Struct_3(func_2(arg_2.a.c).c, arg_0.a, Struct_2(arg_0.a, vec2<i32>(25392i, arg_2.c.b.x) >> (u_input.d.yx % vec2<u32>(32u)), arg_2.c.b.x, select(arg_2.a.d, arg_2.c.c, arg_1.x), arg_2.c.e | arg_2.a.e))).a, ~_wgslsmith_div_u32(u_input.d.x, firstTrailingBit(arg_2.a.e)) ^ _wgslsmith_add_u32(arg_2.a.e, abs(~1u)));
}

fn func_7(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-584f, 551f, arg_1.a, arg_2.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -1422f, -803f, -439f))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(3508f, arg_2.a, arg_1.a, arg_1.a), vec4<f32>(-335f, arg_2.a, arg_1.a, 1892f))))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(~arg_2.b.x, func_2(-1i).a)))), arg_1.a, -600f, -599f)));
    global0 = !select(vec3<bool>(false, !(!global0.x), global0.x), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, true, true)), !(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x))));
    global0 = !(!vec3<bool>(!(!global0.x), global0.x, all(vec3<bool>(true, true, true))));
    global0 = select(select(!vec3<bool>(true, any(vec3<bool>(global0.x, true, global0.x)), true), select(vec3<bool>(global0.x, false, any(vec4<bool>(global0.x, global0.x, true, false))), vec3<bool>(select(global0.x, global0.x, global0.x), false && global0.x, any(vec3<bool>(true, false, global0.x))), !select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, global0.x), global0.x)), all(!(!vec3<bool>(global0.x, global0.x, global0.x)))), select(vec3<bool>(!global0.x, any(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, true))), true), vec3<bool>(all(global0.yz), true, !any(global0.yy)), !select(!vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, false, global0.x))), !vec3<bool>(false, !(!global0.x), all(!vec4<bool>(global0.x, global0.x, false, false))));
    global0 = !vec3<bool>(all(!select(global0.zz, global0.zz, global0.zy)), any(select(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, global0.x, global0.x), false), !vec4<bool>(global0.x, global0.x, false, false), !vec4<bool>(global0.x, false, global0.x, global0.x))), global0.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(-1000f), vec2<i32>(2147483647i, -_wgslsmith_sub_i32(-71146i, -u_input.b)), ~u_input.b, abs(u_input.c), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, abs(4294967295u), u_input.d.x)), u_input.d.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(1406f + _wgslsmith_f_op_f32(f32(-1f) * -2135f)), var_0.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(552f, -205f, true)))), var_0.a.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-154f, var_0.a.a, -2461f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1219f, var_0.a.a, var_0.a.a))) - vec3<f32>(var_0.a.a, 1988f, _wgslsmith_f_op_f32(f32(-1f) * -737f))))));
    global0 = vec3<bool>(false, global0.x, any(select(select(global0.yz, select(vec2<bool>(true, false), global0.xz, vec2<bool>(global0.x, false)), global0.yx), select(global0.xz, !global0.xy, false), false)));
    let var_2 = _wgslsmith_add_i32(-reverseBits(~_wgslsmith_mult_i32(var_0.d, var_0.c)), ~(-1i));
    var var_3 = -737f;
    var var_4 = any(!vec3<bool>(false, any(!vec3<bool>(global0.x, global0.x, false)), global0.x));
    let var_5 = u_input.d.zxz;
    var_3 = var_0.a.a;
    var var_6 = select(!select(vec3<bool>(false, select(false, global0.x, false), false), !(!vec3<bool>(true, global0.x, false)), select(!vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, true, false)), global0.x || global0.x)), !vec3<bool>(func_7(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 57915u), Struct_4(var_1.x, vec4<i32>(u_input.b, 7363i, var_2, u_input.a), var_5.zy), func_1(Struct_2(Struct_1(var_0.a.a), var_0.b, var_2, 24098i, 6893u), vec2<bool>(false, global0.x), Struct_3(var_0, Struct_1(var_0.a.a), Struct_2(Struct_1(538f), var_0.b, u_input.c, var_2, 25691u)))), all(vec3<bool>(false, global0.x, global0.x)), true), !select(vec3<bool>(false, !global0.x, true), select(vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), global0.x), global0.x), true == (4294967295u >= var_5.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, func_4(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(17738i, var_2), var_0.b ^ var_0.b), select(vec2<i32>(var_0.c, 16571i), var_0.b, vec2<bool>(global0.x, false)) >> (var_5.yz % vec2<u32>(32u))), vec3<i32>(0i, _wgslsmith_dot_vec2_i32(var_0.b, var_0.b), -var_2), Struct_3(var_0, func_2(u_input.b).c.a, Struct_2(Struct_1(902f), firstTrailingBit(vec2<i32>(u_input.c, 1i)), -5298i, u_input.c ^ 1i, abs(u_input.d.x)))).e, select(~u_input.d, u_input.d, select(global0.x, var_6.x & true, any(vec4<bool>(global0.x, true, global0.x, var_6.x)))), ~func_1(var_0, vec2<bool>(!global0.x, any(vec4<bool>(var_6.x, false, false, global0.x))), Struct_3(func_4(u_input.a, vec3<i32>(u_input.c, var_2, var_0.d), Struct_3(Struct_2(Struct_1(var_1.x), var_0.b, 3657i, var_2, var_5.x), var_0.a, var_0)), Struct_1(624f), var_0)).b, var_0.a.a);
}

