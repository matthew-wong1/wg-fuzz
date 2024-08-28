struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = arg_0;
    let var_1 = Struct_3(arg_0);
    let var_2 = vec3<i32>(var_0.b.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(var_1.a.b.c.x, arg_0.b.c.x, -38196i, var_0.b.c.x)), -vec4<i32>(877i, u_input.a, -34963i, var_0.b.c.x)), vec4<i32>(_wgslsmith_mult_i32(var_1.a.b.c.x, i32(-1i) * -28910i), var_1.a.b.c.x, 8350i, 1i)), -2408i);
    global0 = array<f32, 22>();
    var var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(abs(max(countOneBits(arg_0.b.c), vec3<i32>(u_input.a, u_input.a, var_2.x))), select(var_1.a.b.c, arg_0.b.c, !var_0.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(-68993i, i32(-1i) * -19038i, -13759i), countOneBits(arg_0.b.c)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(25496u, 22u)], -1431f, var_0.b.a)))), vec3<f32>(606f, _wgslsmith_f_op_f32(-442f * var_0.b.a), 1656f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3(Struct_2(true, arg_0)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_1, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - arg_1), arg_1))) - arg_1));
    var var_1 = ~u_input.c;
    var_0 = arg_1;
    var var_2 = -483f;
    return firstTrailingBit(u_input.a) >> (arg_0.d % 32u);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    let var_0 = abs(42532u);
    global0 = array<f32, 22>();
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1873f, global0[_wgslsmith_index_u32(46572u, 22u)]), vec2<f32>(arg_1.b.a, arg_2.a.b.a), vec2<bool>(false, arg_1.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a.b.b, global0[_wgslsmith_index_u32(var_0, 22u)]), vec2<f32>(arg_3, arg_2.a.b.b)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1278f, arg_2.a.b.b))), vec2<f32>(arg_2.a.b.b, _wgslsmith_div_f32(-629f, 822f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-970f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(74779u, 22u)] + arg_3)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_2.a.b.b, 125f)), -1580f)))));
    var var_2 = arg_1.b.d;
    global0 = array<f32, 22>();
    return arg_1;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_3(func_4(min(select(countOneBits(0i), _wgslsmith_add_i32(u_input.a, u_input.a), false), func_2(Struct_1(458f, 1000f, vec3<i32>(-1i, 13546i, 15770i), arg_0.x), vec3<f32>(global0[_wgslsmith_index_u32(0u, 22u)], -492f, global0[_wgslsmith_index_u32(3415u, 22u)]), vec4<bool>(true, true, true, true)) & (u_input.a << (arg_0.x % 32u))), Struct_2(true, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -438f), 1280f, vec3<i32>(u_input.a, 1i, -21915i) & vec3<i32>(u_input.a, 8459i, 2147483647i), arg_0.x)), Struct_3(Struct_2(all(vec4<bool>(false, true, false, true)), Struct_1(-2488f, 1473f, vec3<i32>(-8461i, 2147483647i, 50859i), arg_0.x))), _wgslsmith_f_op_f32(max(-191f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_0.x, 22u)], 343f, false))))))));
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a.b.a), 120f, vec3<i32>(~(-func_4(2147483647i, var_0.a, Struct_3(Struct_2(true, Struct_1(1191f, global0[_wgslsmith_index_u32(22674u, 22u)], var_0.a.b.c, arg_0.x))), global0[_wgslsmith_index_u32(var_0.a.b.d, 22u)]).b.c.x), i32(-1i) * -2147483647i, 0i), ~45736u);
    let var_2 = var_0.a.a;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_f32(-822f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(28822u, u_input.c)))) - _wgslsmith_f_op_f32(min(3004f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 22u)]))))), global0[_wgslsmith_index_u32(u_input.b ^ u_input.b, 22u)], abs(_wgslsmith_mult_vec3_i32(min(max(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(-2147483647i, 50619i, u_input.a)), vec3<i32>(u_input.a, 0i, 2147483647i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, 0i, -31379i), vec3<i32>(-1i, u_input.a, u_input.a)))), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, max(u_input.b, 35724u), func_4(6559i, Struct_2(true, Struct_1(760f, global0[_wgslsmith_index_u32(u_input.b, 22u)], vec3<i32>(u_input.a, 1i, u_input.a), u_input.b)), Struct_3(Struct_2(false, Struct_1(-1409f, global0[_wgslsmith_index_u32(1u, 22u)], vec3<i32>(u_input.a, u_input.a, 64524i), 0u))), -165f).b.d, abs(u_input.b)) ^ countOneBits(vec4<u32>(88511u, u_input.c, u_input.c, 0u)), ~min(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.b), vec4<u32>(48226u, 51835u, u_input.c, u_input.b) << (vec4<u32>(4294967295u, u_input.b, 0u, u_input.c) % vec4<u32>(32u)))));
    global0 = array<f32, 22>();
    let var_1 = func_4(u_input.a, Struct_2(true, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.b, var_0.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b, var_0.a))), vec3<i32>(-u_input.a, ~16403i, _wgslsmith_sub_i32(3263i, -527i)), ~0u)), Struct_3(func_4(_wgslsmith_div_i32(0i << (u_input.b % 32u), 0i), func_4(-22705i, Struct_2(true, Struct_1(-469f, 1000f, vec3<i32>(var_0.c.x, var_0.c.x, u_input.a), u_input.b)), Struct_3(Struct_2(false, Struct_1(global0[_wgslsmith_index_u32(31415u, 22u)], -1126f, vec3<i32>(var_0.c.x, var_0.c.x, u_input.a), u_input.b))), 1000f), Struct_3(func_4(35540i, Struct_2(false, Struct_1(global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], vec3<i32>(u_input.a, var_0.c.x, u_input.a), 0u)), Struct_3(Struct_2(true, var_0)), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, global0[_wgslsmith_index_u32(26145u, 22u)])))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.b, 22u)])).b;
    let var_2 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true)), !vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 22u)] != -933f, false), any(vec2<bool>(true, true))), select(vec3<bool>(all(vec2<bool>(false, true)), select(true, false, true), false), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), 2147483647i > var_0.c.x), false), true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), 82769i != var_0.c.x), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, false, true))), vec3<bool>(!(global0[_wgslsmith_index_u32(var_1.d, 22u)] == -156f), false, true)));
    global0 = array<f32, 22>();
    let var_3 = select(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u) & ~vec2<u32>(u_input.b, var_0.d), vec2<u32>(_wgslsmith_mod_u32(15299u, 70743u), 4294967295u)), ~60301u, var_2.x);
    let var_4 = vec2<f32>(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4620u, 22u)]))))), _wgslsmith_f_op_f32(-1071f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(26278u, 22u)])))));
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(-543f, var_1.d, vec3<i32>(max(u_input.a, var_1.c.x), -var_1.c.x, select(_wgslsmith_mod_i32(var_0.c.x, var_1.c.x), 58425i, 0u < var_1.d) | u_input.a));
}

