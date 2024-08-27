struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1i, Struct_1(vec4<i32>(-11840i, 2147483647i, 4596i, 0i), 41949u, 2147483647i, vec2<bool>(true, false), -31551i), Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, 0i), 0u, 40671i, vec2<bool>(true, false), 2147483647i));

var<private> global1: array<Struct_5, 17>;

var<private> global2: vec4<bool>;

var<private> global3: vec2<u32> = vec2<u32>(9523u, 56387u);

var<private> global4: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec4<i32>(42359i, -65446i, -64356i, -14876i)), Struct_3(vec4<i32>(1i, -9167i, 12539i, i32(-2147483648))), Struct_3(vec4<i32>(-22115i, -1i, i32(-2147483648), 16321i)), Struct_3(vec4<i32>(i32(-2147483648), 239i, 1i, -22713i)), Struct_3(vec4<i32>(0i, 0i, i32(-2147483648), 1i)), Struct_3(vec4<i32>(1i, 31287i, 2147483647i, 25152i)), Struct_3(vec4<i32>(-1i, 0i, 2147483647i, -7763i)), Struct_3(vec4<i32>(18770i, -1i, 0i, 41822i)), Struct_3(vec4<i32>(26551i, 22251i, 1i, 4541i)), Struct_3(vec4<i32>(34129i, -1i, 2147483647i, 1i)), Struct_3(vec4<i32>(2147483647i, -14566i, 24865i, i32(-2147483648))), Struct_3(vec4<i32>(0i, 54446i, 28361i, -39762i)), Struct_3(vec4<i32>(-8570i, -6626i, 0i, 1i)), Struct_3(vec4<i32>(2147483647i, -30388i, i32(-2147483648), 2147483647i)), Struct_3(vec4<i32>(i32(-2147483648), 1i, 8222i, 0i)), Struct_3(vec4<i32>(-1i, -12230i, i32(-2147483648), 0i)), Struct_3(vec4<i32>(-50793i, -22066i, 1i, 0i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: u32) -> i32 {
    let var_0 = Struct_2(-2147483647i, Struct_1(arg_0, ~(~98543u | (u_input.a.x & global0.c.b)), -1i, !(!select(vec2<bool>(global0.c.d.x, global0.c.d.x), global0.c.d, vec2<bool>(global0.b.d.x, true))), ~arg_0.x), global0.c);
    var var_1 = global3.x;
    let var_2 = global0.c.a.x;
    let var_3 = global4[_wgslsmith_index_u32(1u, 17u)];
    let var_4 = !(!select(select(!vec4<bool>(false, false, var_0.b.d.x, true), !vec4<bool>(global0.c.d.x, global0.b.d.x, true, true), false), vec4<bool>(any(global2.zyz), !global0.b.d.x, global0.c.d.x, !global2.x), !select(vec4<bool>(var_0.b.d.x, false, true, false), vec4<bool>(true, global2.x, true, false), vec4<bool>(false, var_0.b.d.x, false, false))));
    return 1i;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_1(-vec4<i32>(-2147483647i, -23295i, ~(arg_0.c.a.x >> (19954u % 32u)), func_3(firstLeadingBit(vec4<i32>(-1i, global0.c.c, global0.b.c, global0.c.a.x)), vec3<f32>(839f, -1115f, -401f), _wgslsmith_f_op_f32(-657f - -353f), ~u_input.a.x)), ~abs(arg_0.c.b), reverseBits(firstLeadingBit(_wgslsmith_mod_i32(arg_0.b.c | arg_0.a, -53921i))), vec2<bool>(any(vec2<bool>(false, !global2.x)), true), select(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~global0.b.a.x, select(arg_1.x, global0.c.e, global2.x)), -20995i), -27764i, arg_0.c.d.x));
    let var_1 = vec4<bool>(global2.x, any(select(global2.xyw, select(global2.wyz, select(global2.xyz, vec3<bool>(false, var_0.d.x, true), global0.b.d.x), !global0.c.d.x), true)), all(select(select(select(vec4<bool>(arg_0.b.d.x, true, true, var_0.d.x), vec4<bool>(var_0.d.x, true, global0.c.d.x, var_0.d.x), arg_0.b.d.x), !vec4<bool>(false, false, global0.b.d.x, true), !vec4<bool>(var_0.d.x, var_0.d.x, false, false)), !vec4<bool>(global2.x, true, true, true), vec4<bool>(true, global2.x, global2.x, true))), select(select(!var_0.d.x, global2.x, var_0.d.x) || (_wgslsmith_dot_vec3_i32(arg_1, arg_1) != reverseBits(arg_0.b.a.x)), false, !any(vec4<bool>(false, arg_0.c.d.x, true, arg_0.b.d.x))));
    global2 = vec4<bool>(any(var_1.zzy) && false, !var_1.x & select(false, global2.x || (global2.x & global2.x), all(select(var_1, vec4<bool>(true, true, global0.c.d.x, var_1.x), var_1))), global0.b.d.x, select(!(var_0.b < ~global3.x), (~67689u >= min(36104u, arg_0.c.b)) && true, all(var_1.zyx)));
    global2 = select(vec4<bool>(false, any(vec2<bool>(!global0.b.d.x, all(vec2<bool>(true, false)))), true, true), var_1, !var_1);
    let var_2 = u_input.a.zz;
    return -arg_1.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_i32(arg_0.c.a.x << (1u % 32u), _wgslsmith_sub_i32(global0.b.e | ~(-37339i), -(i32(-1i) * -96i)));
    global3 = ~(vec2<u32>(~(~global3.x), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a) ^ ~global0.b.b) >> (u_input.a.xz % vec2<u32>(32u)));
    let var_1 = abs(39467i);
    global3 = u_input.a.xz & firstTrailingBit(abs(firstTrailingBit(vec2<u32>(43286u, global0.c.b))));
    global2 = !vec4<bool>(!(!global0.b.d.x), false & arg_1.b.d.x, all(vec4<bool>(any(global2.xyx), all(global2.yzw), true, select(false, global2.x, false))), !(!arg_1.c.d.x));
    return Struct_1(_wgslsmith_mult_vec4_i32(reverseBits(global0.c.a), arg_1.c.a), _wgslsmith_sub_u32(11171u, global3.x), abs(var_1), select(!(!global0.b.d), vec2<bool>(all(select(vec2<bool>(global0.c.d.x, arg_1.c.d.x), arg_1.b.d, vec2<bool>(global0.c.d.x, true))), arg_1.b.d.x), global0.b.d.x), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(21495i, arg_0.c.c), arg_0.b.a.zw), global0.a) & var_1);
}

fn func_1(arg_0: u32, arg_1: Struct_5) -> u32 {
    global0 = Struct_2(global0.b.a.x, func_4(Struct_2(func_2(Struct_2(-1i, Struct_1(global0.b.a, global0.b.b, -13951i, global2.xx, 20401i), Struct_1(vec4<i32>(global0.b.c, -2147483647i, -7369i, arg_1.b.a), global0.b.b, global0.a, global0.b.d, arg_1.b.a)), -vec3<i32>(-4571i, arg_1.b.a, 2147483647i)), Struct_1(-global0.b.a, ~u_input.a.x, func_2(Struct_2(2147483647i, Struct_1(global0.c.a, 1u, -1i, global2.ww, global0.c.a.x), global0.c), vec3<i32>(global0.b.e, global0.b.a.x, 5217i)), global0.c.d, _wgslsmith_mod_i32(-12183i, global0.b.c)), global0.b), Struct_2(37182i, global0.b, global0.b)), func_4(Struct_2(-5576i, Struct_1(-global0.c.a, global3.x, -13265i, select(vec2<bool>(true, false), vec2<bool>(global0.c.d.x, global0.b.d.x), global0.b.d), -arg_1.b.a), func_4(Struct_2(-62161i, global0.c, global0.c), Struct_2(38873i, global0.c, global0.c))), Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.a), vec2<i32>(arg_1.b.a, -55436i)), abs(global0.a)), Struct_1(firstLeadingBit(vec4<i32>(global0.a, -52118i, arg_1.b.a, -2147483647i)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3.x, 205u), vec3<u32>(6870u, arg_0, 84708u)), 1i, !vec2<bool>(arg_1.b.b, false), ~(-3095i)), global0.c)));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.a.x)), 1228f) + _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(-arg_1.a.x))), 584f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a.x))));
    let var_1 = select(!(!(_wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x)) != _wgslsmith_f_op_f32(-1356f * arg_1.a.x))), !any(!vec2<bool>(global2.x, global2.x)), any(vec3<bool>(select(!global0.b.d.x, arg_1.b.b, any(vec3<bool>(false, global2.x, global2.x))), arg_1.b.b, true)));
    global2 = !vec4<bool>(all(select(!vec4<bool>(true, true, var_1, true), !vec4<bool>(var_0, false, var_0, true), true)), !arg_1.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2403f) - _wgslsmith_f_op_f32(-arg_1.a.x)) <= 630f, global0.b.d.x && arg_1.b.b);
    return reverseBits(arg_0);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = global2.wy;
    global0 = Struct_2(_wgslsmith_div_i32(arg_2.a.x, 23445i), global0.b, global0.c);
    let var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(~global3.x, 4294967295u, _wgslsmith_sub_u32(global3.x, 26523u)), vec3<u32>(25655u, _wgslsmith_sub_u32(~arg_1, 4294967295u), 18277u)), vec3<u32>(global3.x, arg_1, 74466u), abs(~vec3<u32>(4294967295u, u_input.a.x, global0.b.b >> (4294967295u % 32u))));
    let var_2 = ~vec2<u32>(arg_1, arg_1 >> (_wgslsmith_sub_u32(~global0.c.b, global3.x >> (u_input.a.x % 32u)) % 32u));
    let var_3 = select(_wgslsmith_add_vec4_i32((min(vec4<i32>(0i, arg_2.a.x, 20082i, global0.b.a.x), vec4<i32>(global0.b.c, arg_2.a.x, -34090i, arg_2.a.x)) ^ reverseBits(vec4<i32>(arg_2.a.x, global0.a, global0.b.e, global0.a))) | _wgslsmith_div_vec4_i32(global0.b.a, global0.c.a), arg_2.a), -vec4<i32>(-1i, arg_2.a.x, arg_2.a.x, reverseBits(global0.c.a.x & arg_2.a.x)), global0.b.d.x);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(-131f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(400f)), var_3.x <= arg_2.a.x)))) + vec3<f32>(-1191f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(-659f, firstLeadingBit(func_1(u_input.a.x, global1[_wgslsmith_index_u32(global3.x, 17u)])), Struct_3(vec4<i32>(min(22502i, 27413i), -8034i, _wgslsmith_sub_i32(0i, -2323i), ~global0.b.e)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -910f)) + -114f) - var_0.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.x)), -1310f))), -1000f);
    let var_2 = global0.a;
    var var_3 = global0.c.a.xyx;
    var var_4 = u_input.a.yx >> (vec2<u32>(72283u, global0.b.b) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global0.c.a.zw), select(1u, firstLeadingBit(66774u), true), ~select(vec3<u32>(~u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 1403u, 18297u), min(0u, 4294967295u)), select(u_input.a, u_input.a, vec3<bool>(true, false, global0.b.d.x)) << (u_input.a % vec3<u32>(32u)), vec3<bool>(true, true, global0.b.d.x | true)));
}

