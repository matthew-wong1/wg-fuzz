struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<i32>(-14027i, 1i, 54342i, 1i), vec2<i32>(0i, i32(-2147483648)), vec3<f32>(2241f, -702f, -2112f)), Struct_1(vec4<i32>(0i, -8131i, 12407i, 45435i), vec2<i32>(1i, 1i), vec3<f32>(-466f, 394f, 608f)), vec4<u32>(4587u, 77696u, 1u, 28519u));

var<private> global1: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false));

var<private> global2: array<vec3<i32>, 9>;

var<private> global3: array<vec4<i32>, 17>;

var<private> global4: array<i32, 32> = array<i32, 32>(i32(-2147483648), -22165i, 3603i, 2147483647i, 0i, -1i, -1i, 2147483647i, i32(-2147483648), i32(-2147483648), -26814i, 0i, 1i, -21193i, i32(-2147483648), -20298i, 0i, i32(-2147483648), -27201i, -26474i, 1i, -1i, 6094i, 2147483647i, i32(-2147483648), 42345i, 0i, 17096i, 24015i, -23401i, -1i, -389i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global0 = Struct_2(Struct_1(arg_1.a, -(vec2<i32>(arg_2.a.b.x, global4[_wgslsmith_index_u32(1u, 32u)]) & global0.a.b) & (firstTrailingBit(global0.b.b) | vec2<i32>(arg_1.a.x, global0.a.b.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1349f, global0.a.c.x, global0.a.c.x), vec3<f32>(arg_1.c.x, -1138f, 276f))))), global0.b, firstLeadingBit(arg_2.c << (global0.c % vec4<u32>(32u))));
    global3 = array<vec4<i32>, 17>();
    let var_0 = _wgslsmith_sub_u32(abs(_wgslsmith_div_u32(1u, u_input.b)), ~(~(~global0.c.x) & 4294967295u));
    return abs(86886u);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<bool>, arg_3: vec3<u32>) -> i32 {
    var var_0 = !all(vec2<bool>(true, arg_0.x && (global0.b.a.x <= arg_1)));
    var var_1 = ~vec3<u32>(max(~arg_3.x, 4294967295u), min(~max(global0.c.x, 4294967295u), global0.c.x), func_3(select(!vec4<bool>(arg_0.x, true, false, arg_2.x), arg_0, select(vec4<bool>(arg_2.x, true, true, true), vec4<bool>(true, false, arg_2.x, false), vec4<bool>(true, arg_2.x, false, true))), global0.a, Struct_2(global0.b, Struct_1(global0.b.a, global0.a.a.yx, vec3<f32>(global0.b.c.x, global0.a.c.x, global0.a.c.x)), global0.c << (vec4<u32>(4294967295u, 1u, global0.c.x, 3011u) % vec4<u32>(32u)))));
    let var_2 = vec4<bool>(arg_2.x, true, (u_input.a.x ^ ~38185u) <= func_3(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(true, true, true, true), true), global0.b, Struct_2(global0.b, Struct_1(vec4<i32>(arg_1, u_input.c, 61232i, global4[_wgslsmith_index_u32(global0.c.x, 32u)]), vec2<i32>(-1i, 0i), vec3<f32>(-338f, global0.a.c.x, global0.b.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, global0.c.x, arg_3.x, var_1.x), vec4<u32>(var_1.x, 51981u, global0.c.x, 0u)))), any(vec2<bool>(true, false)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c.x)), 1004f, 940f, -1809f);
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(191f, global0.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.c.x)) - _wgslsmith_f_op_f32(876f + global0.a.c.x))), _wgslsmith_f_op_f32(global0.b.c.x - var_3.x), var_3.x != _wgslsmith_f_op_f32(trunc(-658f))));
    return -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    global2 = array<vec3<i32>, 9>();
    global3 = array<vec4<i32>, 17>();
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~1u, 94857u), _wgslsmith_dot_vec2_u32(min(arg_1.yx, vec2<u32>(global0.c.x, 4294967295u)), abs(u_input.a.xz))), select(u_input.b, reverseBits(~0u), true));
    global2 = array<vec3<i32>, 9>();
    let var_1 = Struct_2(global0.a, Struct_1((vec4<i32>(arg_0.b.x, -30228i, 68591i, -22034i) << (global0.c % vec4<u32>(32u))) >> (arg_2.c % vec4<u32>(32u)), ~(-arg_0.a.zy | global0.a.b), arg_0.c), vec4<u32>(min(var_0, arg_1.x), 1u, _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 1u)), var_0), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, ~arg_1.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 1u), vec2<u32>(44545u, u_input.a.x), u_input.a.xz))));
    return Struct_1((global3[_wgslsmith_index_u32(reverseBits(global0.c.x), 17u)] << (reverseBits(~arg_2.c) % vec4<u32>(32u))) >> (~(abs(arg_2.c) >> (~global0.c % vec4<u32>(32u))) % vec4<u32>(32u)), -reverseBits(~(~vec2<i32>(28574i, -2147483647i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.c.x))), arg_2.a.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1094f, -1480f, false))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1343f, _wgslsmith_f_op_f32(var_1.a.c.x - global0.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -178f)))));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = func_4(arg_0, ~vec3<u32>(1u, _wgslsmith_add_u32(2125u, ~4294967295u), firstTrailingBit(global0.c.x)), Struct_2(Struct_1(-vec4<i32>(arg_0.b.x, arg_0.a.x, 11014i, -2147483647i), countOneBits(_wgslsmith_sub_vec2_i32(global0.b.a.yz, vec2<i32>(2147483647i, -1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-821f, 284f, -313f))) * vec3<f32>(arg_0.c.x, -419f, arg_0.c.x))), Struct_1(_wgslsmith_mod_vec4_i32(-global3[_wgslsmith_index_u32(1u, 17u)], vec4<i32>(0i, 8696i, global4[_wgslsmith_index_u32(global0.c.x, 32u)], 1i)), -arg_0.a.wz, vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.c.x)), -1599f, _wgslsmith_div_f32(-1085f, 1000f))), ~countOneBits(vec4<u32>(32559u, u_input.a.x, global0.c.x, u_input.b) << (vec4<u32>(92024u, u_input.a.x, global0.c.x, 35568u) % vec4<u32>(32u))))).b.x;
    var var_1 = arg_0;
    global0 = Struct_2(global0.b, arg_0, select(global0.c, vec4<u32>(u_input.b, ~firstTrailingBit(global0.c.x), ~u_input.b, _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 4294967295u), u_input.a.x)), all(select(vec4<bool>(true, true, true, true), select(global1[_wgslsmith_index_u32(19914u, 5u)], global1[_wgslsmith_index_u32(55551u, 5u)], true), global1[_wgslsmith_index_u32(countOneBits(4294967295u), 5u)]))));
    var var_2 = select(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), true), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), vec3<bool>(any(vec3<bool>(true, false, true)), true, false));
    let var_3 = _wgslsmith_mod_u32(~(~abs(~u_input.b)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(30028u, ~max(30777u, global0.c.x)), func_3(!global1[_wgslsmith_index_u32(u_input.b, 5u)], func_4(func_4(Struct_1(global0.b.a, global0.b.b, vec3<f32>(global0.b.c.x, 1704f, global0.a.c.x)), u_input.a, Struct_2(Struct_1(vec4<i32>(arg_0.b.x, u_input.c, u_input.c, u_input.c), global0.b.b, arg_0.c), Struct_1(vec4<i32>(global0.b.b.x, -1i, 809i, 0i), global0.a.a.yy, var_1.c), global0.c)), vec3<u32>(u_input.a.x, global0.c.x, 23384u), Struct_2(Struct_1(global0.a.a, var_1.b, global0.b.c), Struct_1(var_1.a, arg_0.a.zw, vec3<f32>(arg_0.c.x, var_1.c.x, global0.b.c.x)), global0.c)), Struct_2(global0.b, Struct_1(global3[_wgslsmith_index_u32(global0.c.x, 17u)], arg_0.a.zy, arg_0.c), global0.c | global0.c)), select(0u, global0.c.x, select(false, var_2.x, true))));
    return Struct_2(func_4(func_4(Struct_1(global0.a.a | vec4<i32>(global4[_wgslsmith_index_u32(1u, 32u)], -2147483647i, global4[_wgslsmith_index_u32(global0.c.x, 32u)], arg_0.a.x), ~var_1.a.yy, vec3<f32>(-533f, -234f, 1015f)), global0.c.yyw, Struct_2(func_4(Struct_1(global0.a.a, var_1.a.xz, global0.b.c), vec3<u32>(0u, u_input.b, var_3), Struct_2(Struct_1(global3[_wgslsmith_index_u32(global0.c.x, 17u)], vec2<i32>(-2147483647i, 27755i), vec3<f32>(580f, -1000f, global0.b.c.x)), arg_0, vec4<u32>(var_3, 50083u, global0.c.x, var_3))), Struct_1(arg_0.a, vec2<i32>(u_input.c, var_1.b.x), vec3<f32>(var_1.c.x, var_1.c.x, 1893f)), abs(vec4<u32>(53573u, u_input.a.x, 0u, 13773u)))), vec3<u32>(~(~global0.c.x), 1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(var_3, var_3), min(var_3, 0u))), Struct_2(arg_0, global0.a, abs(global0.c))), arg_0, select(~vec4<u32>(~62718u, u_input.a.x, var_3, reverseBits(var_3)), reverseBits((global0.c << (global0.c % vec4<u32>(32u))) | global0.c), !var_2.x));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    global4 = array<i32, 32>();
    global4 = array<i32, 32>();
    global0 = func_5(func_4(Struct_1(global3[_wgslsmith_index_u32(arg_0, 17u)], vec2<i32>(arg_3.x, func_2(global1[_wgslsmith_index_u32(arg_0, 5u)], u_input.c, vec3<bool>(true, true, true), vec3<u32>(global0.c.x, 32545u, 4294967295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.b.c, global0.b.c, vec3<bool>(true, true, false))))), ~vec3<u32>(arg_0, ~21482u, _wgslsmith_add_u32(4294967295u, arg_0)), Struct_2(arg_1, arg_1, global0.c)));
    var var_0 = arg_1;
    var var_1 = !((all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))) & (global0.b.c.x >= _wgslsmith_div_f32(global0.b.c.x, -2696f))) || true);
    return -var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<i32>(-46846i, func_1(global0.c.x, global0.b, 0i, global0.a.a) << (4294967295u % 32u), u_input.c, u_input.c & -33705i) & -vec4<i32>(-10365i << (u_input.a.x % 32u), countOneBits(global4[_wgslsmith_index_u32(1u, 32u)]), global0.a.a.x, ~(-54737i)));
    var var_1 = -(~global0.a.b) << ((u_input.a.zz ^ vec2<u32>(global0.c.x, ~_wgslsmith_add_u32(0u, global0.c.x))) % vec2<u32>(32u));
    var var_2 = select(select(vec4<bool>(true, false, false, false), vec4<bool>(-global0.a.b.x > func_1(0u, global0.a, global4[_wgslsmith_index_u32(27190u, 32u)], vec4<i32>(var_0.x, var_0.x, var_1.x, var_0.x)), true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), ~global4[_wgslsmith_index_u32(global0.c.x, 32u)] == _wgslsmith_mod_i32(-1i, var_1.x)), all(vec2<bool>(true, true))), vec4<bool>(false, false, true, false), global1[_wgslsmith_index_u32(~25050u, 5u)]);
    let var_3 = ~_wgslsmith_div_u32(4294967295u, u_input.a.x);
    var var_4 = Struct_1(select(global0.a.a, _wgslsmith_div_vec4_i32(var_0, vec4<i32>(_wgslsmith_sub_i32(1i, 2147483647i), ~0i, -2147483647i, -27385i)), select(!vec4<bool>(var_2.x, true, true, var_2.x), !global1[_wgslsmith_index_u32(~96113u, 5u)], false)), var_0.yw | select(_wgslsmith_mod_vec2_i32(-var_0.xz, max(vec2<i32>(var_1.x, global0.b.b.x), vec2<i32>(var_1.x, 0i))), vec2<i32>(_wgslsmith_dot_vec2_i32(global0.b.b, vec2<i32>(32330i, var_1.x)), func_5(Struct_1(global0.a.a, vec2<i32>(global0.b.a.x, var_1.x), global0.b.c)).b.a.x), var_2.x), vec3<f32>(_wgslsmith_f_op_f32(sign(global0.b.c.x)), global0.b.c.x, _wgslsmith_f_op_f32(global0.a.c.x + global0.a.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec4<i32>(~u_input.c, _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(var_3, 32u)], -13896i), _wgslsmith_sub_i32(var_4.b.x, global4[_wgslsmith_index_u32(13277u, 32u)]), global0.a.a.x)), vec2<u32>(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, 4294967295u), 1u, countOneBits(global0.c.x))), _wgslsmith_mult_u32(~u_input.a.x & _wgslsmith_div_u32(u_input.a.x, 1u), ~(u_input.b << (var_3 % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.c.x - _wgslsmith_f_op_f32(global0.a.c.x + global0.a.c.x)))) * _wgslsmith_f_op_f32(-var_4.c.x)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 0u) & vec2<u32>(0u, _wgslsmith_mult_u32(var_3, u_input.a.x)), u_input.a.xx, abs(u_input.a.zz | func_5(Struct_1(global3[_wgslsmith_index_u32(var_3, 17u)], vec2<i32>(global0.b.a.x, 24737i), vec3<f32>(-1000f, -1280f, 1702f))).c.wz)), global0.a.a.x);
}

