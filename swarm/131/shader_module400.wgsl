struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<i32>;

var<private> global2: vec4<bool>;

var<private> global3: array<i32, 12> = array<i32, 12>(2147483647i, 49467i, 26309i, i32(-2147483648), 2147483647i, 28507i, 0i, -1171i, -27100i, 22955i, -37391i, -50392i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = global0.b.c;
    var var_1 = false;
    global0 = Struct_3(!(!select(global0.a, false, var_0.b.x)) && true, Struct_2(Struct_1(arg_2.c.a, select(select(vec4<bool>(global0.a, var_0.b.x, false, arg_2.b.b.x), vec4<bool>(false, false, false, global0.b.e.b.x), false), !var_0.b, var_0.b.x | false)), global0.b.a, global0.b.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(829f)), _wgslsmith_div_f32(arg_1, 1000f), -429f, _wgslsmith_f_op_f32(-119f - var_0.a.x)), select(vec4<bool>(false, global2.x, true, false), vec4<bool>(global2.x, false, var_0.b.x, false), true)), arg_2.a), arg_1);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(var_0.a)))), vec4<bool>(all(!(!global2.wzz)), var_0.b.x, var_0.b.x, !select(u_input.b != 4294967295u, 1066f < global0.c, any(global0.b.a.b.xz))));
    let var_3 = _wgslsmith_sub_vec3_u32(~reverseBits(~select(u_input.d.zww, u_input.d.yxz, var_0.b.x)), vec3<u32>(_wgslsmith_clamp_u32(~u_input.b, (1u & u_input.b) >> (_wgslsmith_div_u32(u_input.d.x, u_input.b) % 32u), 225u), min(select(u_input.d.x, 1u, var_2.b.x) >> (min(0u, 11368u) % 32u), (u_input.d.x >> (u_input.b % 32u)) | max(u_input.b, u_input.d.x)), _wgslsmith_mod_u32(4294967295u, u_input.d.x)));
    return firstTrailingBit(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(max(var_3.x, 10227u), firstLeadingBit(11968u)), ~(u_input.b | u_input.b)), 12u)]);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = select(u_input.b, _wgslsmith_sub_u32(u_input.b, max(~u_input.d.x | 1u, u_input.d.x)), false);
    let var_1 = global0.b;
    global1 = _wgslsmith_mod_vec3_i32(vec3<i32>(~select(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, global1.x), u_input.c), -global3[_wgslsmith_index_u32(7265u, 12u)], !global0.a), select(_wgslsmith_sub_i32(arg_2, ~0i), arg_2, true), -func_3(vec2<i32>(global1.x, 25238i), var_1.e.a.x, Struct_2(var_1.c, Struct_1(vec4<f32>(-1074f, 226f, -1000f, -146f), global0.b.d.b), global0.b.e, Struct_1(vec4<f32>(arg_1, arg_1, arg_1, -769f), vec4<bool>(false, true, global0.b.d.b.x, false)), Struct_1(global0.b.d.a, vec4<bool>(var_1.d.b.x, global0.a, false, true))))), vec3<i32>(-global1.x, -2147483647i, -2147483647i));
    var var_2 = global0.b;
    var var_3 = u_input.d.xzw;
    return global0.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = arg_2;
    var var_1 = global0.b.e.a;
    var var_2 = ~u_input.d.yxw;
    var_1 = vec4<f32>(arg_0.b.b.a.x, -191f, -1145f, -1000f);
    let var_3 = Struct_2(func_2(global0.b.d.b.x, arg_0.c, _wgslsmith_div_i32(0i, 11895i)).a, func_2(false || !(arg_0.b.a.a.x != -2026f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.b.a.x, var_1.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1423f))))), global1.x).b, arg_0.b.e, Struct_1(arg_0.b.b.a, !(!(!arg_0.b.b.b))), arg_0.b.e);
    return select(global0.b.c.b, select(select(!func_2(arg_1.x, -1179f, -22203i).c.b, vec4<bool>(arg_0.b.a.b.x, any(var_3.c.b.yx), func_2(var_3.c.b.x, arg_0.b.d.a.x, u_input.e.x).d.b.x, 36348u != var_2.x), arg_1.x), !select(arg_0.b.c.b, global0.b.c.b, !vec4<bool>(global0.b.b.b.x, true, global0.a, global2.x)), select(global0.b.c.b, !arg_0.b.b.b, global2.x)), !vec4<bool>(select(arg_0.a, global0.a, false), true, global0.b.b.b.x, func_2(arg_1.x, -201f, 57349i).d.b.x | any(vec3<bool>(true, false, global2.x))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> vec3<i32> {
    global2 = select(func_4(Struct_3(all(select(arg_0.b.wy, vec2<bool>(arg_1.b.x, global2.x), arg_0.b.x)), func_2(!arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -957f), 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * -245f)), vec2<bool>(false, !(!arg_1.b.x)), select(firstLeadingBit(select(vec3<u32>(0u, 15469u, 34829u), vec3<u32>(u_input.b, u_input.d.x, 20305u), vec3<bool>(arg_0.b.x, arg_1.b.x, arg_0.b.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, arg_2.x, 108632u), vec3<u32>(arg_2.x, arg_2.x, u_input.b)), func_2(all(global0.b.c.b), -1000f, global1.x).e.b.wzy)), arg_0.b, arg_0.b.x);
    global0 = Struct_3(all(vec3<bool>(arg_0.b.x, true, arg_1.b.x != true)), func_2(!global0.a, global0.c, u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-673f + _wgslsmith_f_op_f32(arg_3 * arg_1.a.x)), _wgslsmith_f_op_f32(-global0.c)))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-266f - arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -763f), -1185f, -1203f)), select(!func_2(true, -619f, 21520i).d.b, !vec4<bool>(true, false, true, global2.x), true)), Struct_1(global0.b.d.a, select(select(func_2(true, global0.c, -13410i).c.b, arg_0.b, global0.b.c.b), func_2(true, arg_3, -2147483647i).e.b, !vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x))), func_2(!all(!arg_0.b), 494f, -2147483647i).a, global0.b.e, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.c.a)), func_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b.b.a.x))), 0i).b.b));
    global0 = Struct_3(all(vec4<bool>(var_0.c.b.x | global0.b.b.b.x, true, var_0.d.a.x != -325f, true)) != !var_0.a.b.x, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1838f - arg_3), _wgslsmith_f_op_f32(f32(-1f) * -955f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(433f, arg_1.a.x)))));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_2.x), arg_2.yz), arg_2.zy), ~u_input.d.x), arg_2.x);
    return (vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(13260i, global1.x), -10053i, 1i)) << (vec3<u32>(firstTrailingBit(0u), ~arg_2.x, ~(~(u_input.b >> (1u % 32u)))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global0.b.c, global0.b.e, abs(u_input.d.yyx), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(global0.b.d.a.x + global0.b.d.a.x)));
    let var_0 = Struct_3(true, func_2(true, global0.c, 0i), -1919f);
    var var_1 = firstLeadingBit(-vec4<i32>(_wgslsmith_add_i32(global1.x, global1.x) & global1.x, -11249i, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.a.x, u_input.e.x, global1.x)) | 22610i, global3[_wgslsmith_index_u32(92606u, 12u)]));
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(244f - global0.c), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.d.a.x, -233f), _wgslsmith_f_op_f32(floor(global0.c))), -232f, global0.b.d.a.x), var_0.b.a.b), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.b.d.a), _wgslsmith_f_op_vec4_f32(select(var_0.b.e.a, global0.b.e.a, false)), !var_0.b.d.b)))), global0.b.e.b), func_2(!all(!vec3<bool>(true, true, var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-738f - var_0.b.e.a.x)), global3[_wgslsmith_index_u32(u_input.d.x, 12u)]).e, Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -147f, var_0.c, var_0.c))), vec4<f32>(1077f, 215f, _wgslsmith_f_op_f32(f32(-1f) * -1571f), _wgslsmith_f_op_f32(192f + var_0.b.e.a.x)))), vec4<bool>(var_0.b.a.b.x, true, !global0.b.a.b.x, _wgslsmith_f_op_f32(global0.c * global0.c) <= _wgslsmith_f_op_f32(f32(-1f) * -890f))), func_2(true, _wgslsmith_div_f32(180f, -1000f), -firstLeadingBit(2147483647i)).b);
    var var_3 = global0.b.d;
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.x + var_2.e.a.x), _wgslsmith_f_op_f32(1000f - -117f)), global0.c))), 105f));
    let var_5 = abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), ~u_input.b, ~6558u, 12384u), ~vec4<u32>(16122u, 4294967295u, u_input.d.x, 59515u) & u_input.d));
    let var_6 = var_1.x;
    let var_7 = func_2(any(vec3<bool>(any(global2.zwz), !var_0.a, var_2.b.b.x)) || any(func_4(var_0, func_2(false, -386f, 2147483647i).c.b.zw, ~vec3<u32>(1u, 4294967295u, 13948u)).xyz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1401f, -702f)) + -1041f) * 733f), u_input.c.x).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x * var_7.a.x) + _wgslsmith_f_op_f32(-var_3.a.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_div_f32(1534f, -949f))))), reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_1.x, global1.x), vec2<i32>(global1.x, var_1.x), u_input.a ^ vec2<i32>(1i, -19862i)), ~(u_input.e | vec2<i32>(u_input.e.x, global3[_wgslsmith_index_u32(u_input.d.x, 12u)])))), _wgslsmith_dot_vec4_i32(vec4<i32>(-(~2147483647i), -1i, u_input.a.x, 1i), -((vec4<i32>(-3536i, global1.x, var_1.x, global1.x) << (vec4<u32>(4294967295u, 4294967295u, 269u, 0u) % vec4<u32>(32u))) & vec4<i32>(-2147483647i, 1692i, global3[_wgslsmith_index_u32(32973u, 12u)], 2147483647i))));
}

