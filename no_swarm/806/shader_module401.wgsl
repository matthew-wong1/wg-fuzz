struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_1(1287f, vec2<i32>(-9452i, 3164i)), -14383i, Struct_1(1528f, vec2<i32>(1i, 13454i)), vec2<u32>(24399u, 12971u), vec2<bool>(true, true)), Struct_3(Struct_1(-626f, vec2<i32>(2147483647i, 0i)), 9554i, Struct_1(-870f, vec2<i32>(i32(-2147483648), 0i)), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false)), Struct_3(Struct_1(-573f, vec2<i32>(4071i, -27983i)), 42069i, Struct_1(-1000f, vec2<i32>(i32(-2147483648), -1i)), vec2<u32>(59568u, 4294967295u), vec2<bool>(true, true)), Struct_3(Struct_1(165f, vec2<i32>(-21050i, 1i)), 1i, Struct_1(-503f, vec2<i32>(0i, 2147483647i)), vec2<u32>(39462u, 1u), vec2<bool>(true, true)), Struct_3(Struct_1(-450f, vec2<i32>(2147483647i, 2147483647i)), 32845i, Struct_1(385f, vec2<i32>(-1i, -3535i)), vec2<u32>(52337u, 36910u), vec2<bool>(false, true)), Struct_3(Struct_1(-172f, vec2<i32>(2147483647i, 33244i)), 37582i, Struct_1(-337f, vec2<i32>(i32(-2147483648), 48927i)), vec2<u32>(18338u, 107226u), vec2<bool>(true, true)), Struct_3(Struct_1(1621f, vec2<i32>(i32(-2147483648), -1i)), -1i, Struct_1(-1554f, vec2<i32>(-9397i, 24143i)), vec2<u32>(0u, 9463u), vec2<bool>(false, false)));

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<f32>, 2>;

var<private> global3: Struct_2 = Struct_2(-45003i, 49717i, Struct_1(412f, vec2<i32>(0i, i32(-2147483648))), vec4<bool>(false, false, true, true), Struct_1(-759f, vec2<i32>(66885i, 23101i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1224f, _wgslsmith_f_op_f32(global3.c.a * _wgslsmith_div_f32(-1000f, arg_2)), _wgslsmith_f_op_f32(max(global3.e.a, 2082f)), _wgslsmith_f_op_f32(ceil(-1206f)))))));
    let var_1 = _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(7092u, arg_0.x), select(countOneBits(arg_0.xy), arg_0.yy, vec2<bool>(false, true))), u_input.a & vec2<u32>(3116u, u_input.a.x));
    var var_2 = -global3.c.b;
    let var_3 = !(true | (~(var_1.x ^ 48297u) > _wgslsmith_sub_u32(1u, u_input.b.x)));
    global0 = array<Struct_3, 7>();
    return _wgslsmith_sub_u32(_wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 34448u), u_input.a.x)), _wgslsmith_add_u32(u_input.a.x, 13701u)) & 18449u;
}

fn func_3() -> i32 {
    let var_0 = vec3<i32>(~(~(-countOneBits(u_input.c))), -_wgslsmith_sub_i32(~(-51575i), u_input.c) >> (30475u % 32u), -select(_wgslsmith_add_i32(2147483647i, global3.b) ^ -8927i, ~firstLeadingBit(u_input.c), global1.x));
    global3 = Struct_2(-25112i, (-firstTrailingBit(57458i) ^ u_input.c) ^ reverseBits(~global3.e.b.x), global3.e, select(select(select(global3.d, vec4<bool>(false, global1.x, false, true), false), select(global3.d, global3.d, all(vec4<bool>(global3.d.x, global3.d.x, global1.x, global3.d.x))), global1.x), !vec4<bool>(true, true, true, var_0.x < 2147483647i), global3.d), Struct_1(_wgslsmith_f_op_f32(min(1816f, -1106f)), var_0.zy));
    var var_1 = !vec3<bool>(all(vec4<bool>(any(global3.d.wz), any(vec4<bool>(global1.x, global1.x, global1.x, false)), true, u_input.b.x != u_input.a.x)), true, global1.x);
    var_1 = select(vec3<bool>(var_1.x, false, !((false || global1.x) && var_1.x)), select(select(select(vec3<bool>(global3.d.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, global3.d.x, false), global3.d.xxy, vec3<bool>(false, true, global3.d.x)), true), select(vec3<bool>(true, var_1.x, global3.d.x), global3.d.yyx, var_1.x), !global3.d.yyw), vec3<bool>(!all(global3.d), false, all(global3.d.wz)), global1.x), !(~u_input.c <= -35731i) == (1i > _wgslsmith_mult_i32(i32(-1i) * -24060i, var_0.x)));
    global3 = Struct_2(1i, ~var_0.x, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1250f, global3.c.a, true)) * 419f))), firstTrailingBit(vec2<i32>(global3.c.b.x, var_0.x) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))) << (u_input.a % vec2<u32>(32u))), select(vec4<bool>(select(all(global3.d), true, true), !(global3.e.a == 1273f), false, var_1.x), !(!select(global3.d, vec4<bool>(var_1.x, false, var_1.x, global3.d.x), false)), all(vec2<bool>(true, true))), Struct_1(-917f, _wgslsmith_add_vec2_i32(var_0.xz, global3.e.b)));
    return -2147483647i >> ((~(~u_input.b.x) << (~(min(u_input.b.x, 3111u) << ((u_input.a.x | 4294967295u) % 32u)) % 32u)) % 32u);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(func_3(), func_3(), global3.c, !select(!global3.d, global3.d, global3.c.b.x < _wgslsmith_mod_i32(-26576i, u_input.c)), Struct_1(_wgslsmith_f_op_f32(max(global3.c.a, -257f)), vec2<i32>(i32(-1i) * -global3.e.b.x, 3869i)));
    var var_1 = global3.c;
    var var_2 = reverseBits(_wgslsmith_add_vec2_i32(global3.c.b, var_0.e.b)) ^ abs(_wgslsmith_sub_vec2_i32(global3.c.b, var_0.e.b));
    let var_3 = ~(~u_input.b.x);
    var var_4 = u_input.b.x;
    return global0[_wgslsmith_index_u32(u_input.b.x, 7u)];
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> i32 {
    global2 = array<vec4<f32>, 2>();
    var var_0 = ~(~(max(~vec2<u32>(u_input.b.x, arg_0.x), ~u_input.b.zw) >> (vec2<u32>(u_input.b.x, countOneBits(u_input.a.x)) % vec2<u32>(32u))));
    let var_1 = 4294967295u;
    let var_2 = arg_1.d.x;
    var_0 = ~select(arg_1.d, vec2<u32>(max(42075u & arg_1.d.x, ~66246u), reverseBits(var_1)), arg_1.e.x);
    return -u_input.c << (~_wgslsmith_div_u32(0u, 4294967295u | select(4294967295u, 0u, arg_3)) % 32u);
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: i32, arg_3: bool) -> Struct_3 {
    let var_0 = Struct_3(func_2().a, abs(arg_2), global3.c, ~vec2<u32>(~arg_0.x, 17601u), !(!(!(!vec2<bool>(true, global3.d.x)))));
    let var_1 = func_2();
    var var_2 = abs(global3.a);
    var_2 = ~reverseBits(~_wgslsmith_mult_i32(u_input.c, 1i) << (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(58063u, arg_0.x, var_0.d.x), ~var_1.d.x, _wgslsmith_dot_vec2_u32(arg_0.zw, var_1.d)) % 32u));
    var var_3 = (((~vec4<i32>(1i, 18207i, -1i, var_1.c.b.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_0.d.x, var_1.d.x, 14229u), u_input.b) % vec4<u32>(32u))) | ~(~vec4<i32>(u_input.c, var_0.a.b.x, 0i, 9498i))) >> (~vec4<u32>(28712u, arg_0.x, _wgslsmith_sub_u32(arg_0.x, 4294967295u), ~u_input.b.x) % vec4<u32>(32u))) ^ vec4<i32>(max(u_input.c, 2147483647i), -_wgslsmith_mult_i32(u_input.c, abs(-3097i)), -3778i, global3.a);
    return Struct_3(var_1.c, _wgslsmith_clamp_i32(0i, ~(~(~u_input.c)), countOneBits(~(-2147483647i)) & abs(u_input.c ^ arg_2)), Struct_1(var_1.a.a, var_0.c.b), var_0.d, !select(global3.d.yx, !(!var_0.e), select(select(vec2<bool>(true, true), global3.d.zz, true), global3.d.yw, vec2<bool>(true, arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.d;
    var var_1 = func_5(~vec4<u32>(u_input.a.x, func_1(~vec3<u32>(1u, 66738u, 18525u), !vec4<bool>(true, var_0.x, global1.x, true), _wgslsmith_f_op_f32(518f + 1545f)), u_input.b.x, firstLeadingBit(22742u) >> (u_input.a.x % 32u)), false, min(func_4(min(vec4<u32>(u_input.b.x, u_input.a.x, 191u, u_input.a.x), firstTrailingBit(u_input.b)), func_2(), any(!global3.d.yxx), func_2().e.x), -(~23353i | _wgslsmith_add_i32(global3.a, 2147483647i))), true);
    let var_2 = vec2<u32>(~10286u, 4294967295u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(131f * var_1.a.a), global3.e.a, true))) * var_1.a.a));
    var var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a, -1000f, var_3)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 1394f, -533f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(160f, -1000f, -1499f))))))));
    var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 181f, global3.c.a) + vec3<f32>(824f, var_1.a.a, -621f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1251f, -1145f, 1509f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-985f, var_3, 872f)), var_0.ywx)) + vec3<f32>(_wgslsmith_f_op_f32(335f * global3.c.a), -486f, _wgslsmith_f_op_f32(581f - var_3))))));
    var var_5 = Struct_2(var_1.b, global3.a, Struct_1(_wgslsmith_f_op_f32(func_2().a.a + -1000f), firstTrailingBit(global3.c.b >> (vec2<u32>(var_1.d.x, 300u) % vec2<u32>(32u))) >> (vec2<u32>(func_5(u_input.b, true, global3.a, global1.x).d.x, _wgslsmith_sub_u32(0u, u_input.a.x)) % vec2<u32>(32u))), vec4<bool>(var_0.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(164f - global3.c.a)) < global3.c.a, var_1.e.x), global3.e);
    var var_6 = u_input.b.xyy;
    var var_7 = Struct_3(Struct_1(global3.c.a, _wgslsmith_add_vec2_i32(var_5.e.b, _wgslsmith_mod_vec2_i32(~vec2<i32>(-2147483647i, 2147483647i), -vec2<i32>(1i, global3.e.b.x)))), var_5.b, func_5(u_input.b, var_5.d.x, -2848i, var_3 == _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.e.a)), var_5.c.a)).c, vec2<u32>(var_6.x, var_1.d.x), func_5(u_input.b, global3.d.x, global3.a, true).e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(2414f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + var_3))), !var_7.e.x)), 2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(firstTrailingBit(26542u), 2u)], _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(var_2.x, 2u)], global2[_wgslsmith_index_u32(var_1.d.x, 2u)], vec4<bool>(true, global3.d.x, true, true)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3, global3.e.a))), _wgslsmith_f_op_f32(floor(-937f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - var_5.c.a)), 1f)));
}

