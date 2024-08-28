struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, vec2<i32>(2147483647i, -1i), 30188u, true);

var<private> global1: array<Struct_1, 12>;

var<private> global2: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mod_u32(~firstTrailingBit((u_input.a.x << (u_input.a.x % 32u)) << (global0.a % 32u)), global0.c);
    global1 = array<Struct_1, 12>();
    let var_1 = Struct_4(abs(_wgslsmith_dot_vec3_i32(abs(countOneBits(vec3<i32>(2147483647i, -90635i, global0.b.x))), -vec3<i32>(global0.b.x, global0.b.x, global0.b.x))), 0u, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-155f, -1000f, true))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(121f - -740f), -1937f), vec3<bool>(global0.d, !(!global0.d), any(global2.b.yy) || all(global2.b)), select(select(global2.c, global2.c, all(global2.b.yz)), vec4<bool>(true, true, global2.a, all(global2.c.zyz)), !global2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1476f, 147f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1072f - 605f) + 810f), _wgslsmith_f_op_f32(f32(-1f) * -1294f))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.d.zx, vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.d.x)))))), vec2<f32>(104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -905f))));
    var var_3 = select(vec3<bool>(true, ~min(var_0, 4294967295u) > global0.a, false), vec3<bool>(true, !global2.a, false), false);
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(~select(vec3<u32>(33923u, global0.c, var_1.b), vec3<u32>(var_1.b, 3000u, 50737u), vec3<bool>(true, var_1.c.c.x, false)), vec3<u32>(abs(global0.a), 35155u ^ global0.a, firstTrailingBit(0u))), _wgslsmith_div_vec3_u32(firstLeadingBit(abs(vec3<u32>(0u, var_1.b, global0.c))), ~vec3<u32>(var_0, global0.c, 0u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.a.x, 1u, ~var_1.b), min(~vec3<u32>(var_1.b, u_input.a.x, 47786u), ~vec3<u32>(7392u, var_0, var_1.b)), ~vec3<u32>(u_input.a.x, 16948u, u_input.a.x)) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_2(4294967295u, firstLeadingBit(min(vec2<i32>(global0.b.x, 54084i) << (arg_0.xz % vec2<u32>(32u)), countOneBits(vec2<i32>(6443i, -15611i))) << (~vec2<u32>(14052u, arg_0.x) % vec2<u32>(32u))), func_3(), any(!global2.c));
    let var_1 = Struct_3((var_0.a << ((_wgslsmith_add_u32(u_input.a.x, 70218u) >> (~arg_0.x % 32u)) % 32u)) <= 36360u, select(!global2.b, !(!(!global2.c.wxx)), !global2.b.x && var_0.d), vec4<bool>(any(select(select(vec2<bool>(global0.d, global2.a), global2.b.yy, false), select(global2.b.zy, vec2<bool>(global2.b.x, true), vec2<bool>(var_0.d, var_0.d)), !global2.b.yx)), var_0.d, true, true));
    let var_2 = Struct_2(u_input.a.x, -select(-firstTrailingBit(global0.b), global0.b, global2.b.yz), firstTrailingBit(53762u), var_0.d);
    global2 = var_1;
    var var_3 = i32(-1i) * -max(-1i >> ((1u | var_2.a) % 32u), -2147483647i);
    return Struct_3(!var_0.d, !(!vec3<bool>(all(vec3<bool>(true, var_0.d, false)), any(vec2<bool>(false, var_2.d)), global0.d)), vec4<bool>(0u != select(~0u, min(var_2.c, global0.a), true), global2.a, select(var_0.d || !var_1.c.x, all(!global2.c), var_0.d), true));
}

fn func_1() -> vec3<i32> {
    global1 = array<Struct_1, 12>();
    global0 = Struct_2(global0.c, global0.b, ~(~4294967295u) ^ global0.c, !all(global2.c.yy));
    global1 = array<Struct_1, 12>();
    let var_0 = 1u;
    let var_1 = Struct_5(global1[_wgslsmith_index_u32(global0.c, 12u)], true, false, func_2(countOneBits(_wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, 7565u, 62894u, var_0)), ~vec4<u32>(29817u, global0.c, 30923u, var_0))), firstLeadingBit(u_input.a.x)));
    return vec3<i32>(_wgslsmith_div_i32(global0.b.x << (16914u % 32u), 20654i), global0.b.x, _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(-2147483647i, global0.b.x, global0.b.x, global0.b.x) << (vec4<u32>(19251u, var_1.a.c, 13577u, global0.a) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(-select(vec4<i32>(global0.b.x, global0.b.x, 12645i, global0.b.x), vec4<i32>(global0.b.x, 13061i, 22512i, 9206i), true), vec4<i32>(-1i) * -vec4<i32>(30833i, -44641i, global0.b.x, global0.b.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_2 {
    var var_0 = func_2((abs(vec4<u32>(u_input.a.x, 1u, global0.c, 73197u)) & ~(~vec4<u32>(0u, 45562u, global0.a, 17268u))) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.a, global0.a, u_input.a.x) << (vec4<u32>(global0.c, global0.a, 4294967295u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c, global0.c, 46238u, 4294967295u), vec4<u32>(107258u, u_input.a.x, 47375u, 43625u), vec4<u32>(0u, 4294967295u, 57422u, 17744u))), abs(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u)), vec4<u32>(1u, ~u_input.a.x, 35589u >> (0u % 32u), 4294967295u)) % vec4<u32>(32u)), 4294967295u >> (~global0.a % 32u));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -2318f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-278f * 363f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-858f, 1000f)) - -384f)), select(global2.b, global2.b, global2.b.x), select(vec4<bool>(false, all(!global2.b), true, select(var_0.b.x, false, true)), select(!select(vec4<bool>(arg_2, true, var_0.c.x, false), global2.c, arg_2), !(!global2.c), select(vec4<bool>(false, false, arg_2, var_0.c.x), !vec4<bool>(false, false, arg_2, arg_3), vec4<bool>(true, global0.d, false, false))), !(!select(global2.c, global2.c, false))));
    return Struct_2(abs(~0u), firstTrailingBit(select(-vec2<i32>(arg_0.x, -31113i) ^ global0.b, select(arg_0.xy, arg_0.yx & global0.b, vec2<bool>(true, true)), !any(var_1.b))), 17304u | firstLeadingBit(global0.c), all(var_1.b));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = global1[_wgslsmith_index_u32(~arg_2.a, 12u)];
    let var_1 = ~countOneBits(~vec4<u32>(~arg_1.c, u_input.a.x >> (44607u % 32u), 45629u, ~8107u));
    global1 = array<Struct_1, 12>();
    let var_2 = func_2(~vec4<u32>((global0.c >> (1u % 32u)) >> (~u_input.a.x % 32u), ~1u, _wgslsmith_mult_u32(40028u, ~u_input.a.x), reverseBits(_wgslsmith_mult_u32(61010u, 0u))), _wgslsmith_mult_u32(global0.a, func_4(vec3<i32>(global0.b.x, arg_2.b.x, 23349i), -44895i, any(var_0.b), var_0.b.x).a << (_wgslsmith_add_u32(35370u, 0u) % 32u)));
    let var_3 = Struct_1(arg_1.a, arg_3.c.yx, ~24826u, 482f);
    return var_3.a.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_5(1890f, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~u_input.a.x), 12u)], func_4(func_1(), 1i, true, global0.d), func_2(~vec4<u32>(global0.c, 11316u, 35804u, u_input.a.x), global0.c))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1387f, -402f))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-788f, 557f))))))));
    var var_1 = select(!vec4<bool>(true, any(global2.c), !global2.b.x, !global2.c.x), !vec4<bool>(any(vec4<bool>(false, global2.c.x, true, global2.a)), !global2.b.x, global2.c.x, false), vec4<bool>(false, true, global2.a, global0.d));
    let var_2 = Struct_4(global0.b.x, _wgslsmith_sub_u32(~(~(~global0.a)), u_input.a.x), Struct_3(true, select(global2.b, var_1.yzw, !select(global0.d, true, global0.d)), vec4<bool>(true, true, true, func_2(countOneBits(vec4<u32>(u_input.a.x, 33796u, 29123u, 37513u)), 91268u).c.x)), vec3<f32>(-214f, _wgslsmith_f_op_f32(1058f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(900f)))), var_0.x));
    global0 = func_4(vec3<i32>(-global0.b.x, _wgslsmith_dot_vec3_i32(-(vec3<i32>(-2147483647i, var_2.a, -18516i) ^ vec3<i32>(-98887i, global0.b.x, 16878i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-7016i, global0.b.x, var_2.a), vec3<i32>(-6395i, var_2.a, 52762i), select(vec3<i32>(global0.b.x, global0.b.x, 5541i), vec3<i32>(0i, var_2.a, 2147483647i), true))), var_2.a), 1i, !var_1.x, false);
    global1 = array<Struct_1, 12>();
    let var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_2.a, 11758i), _wgslsmith_clamp_i32(abs(-var_2.a), 0i, -1i | _wgslsmith_add_i32(2147483647i, var_2.a)), var_2.a, var_2.a << (var_2.b % 32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_2.a, ~var_2.a, 2147483647i) & vec4<i32>(func_1().x, -28989i, global0.b.x, global0.b.x | 1i), -(~vec4<i32>(34366i, var_2.a, -10867i, var_2.a)) | select(~vec4<i32>(-24930i, -45668i, 2147483647i, 1i), select(vec4<i32>(25375i, -37860i, global0.b.x, -2147483647i), vec4<i32>(var_2.a, global0.b.x, var_2.a, global0.b.x), var_2.c.b.x), vec4<bool>(true, var_2.c.b.x, true, var_2.c.b.x)), reverseBits(min(vec4<i32>(var_2.a, global0.b.x, global0.b.x, -33049i), vec4<i32>(var_2.a, -52298i, var_2.a, global0.b.x) & vec4<i32>(global0.b.x, var_2.a, 16658i, global0.b.x)))));
    var_1 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, u_input.a.x, _wgslsmith_mod_i32(-1i, global0.b.x));
}

