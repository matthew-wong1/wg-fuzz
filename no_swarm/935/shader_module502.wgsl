struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> vec3<i32> {
    let var_0 = abs(u_input.b);
    return vec3<i32>(-(~_wgslsmith_clamp_i32(4336i, -12499i, i32(-1i) * -2147483647i)), ~abs(_wgslsmith_div_i32(u_input.b | var_0, _wgslsmith_sub_i32(-58240i, 0i))), 74690i | var_0);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec4<u32> {
    let var_0 = 35454u;
    var var_1 = _wgslsmith_div_u32(firstLeadingBit(4294967295u), abs(_wgslsmith_mult_u32(var_0, ~0u))) >= var_0;
    let var_2 = u_input.b;
    let var_3 = ~vec3<i32>(u_input.b, -var_2, -22338i);
    var var_4 = ~(~(~(~reverseBits(vec2<u32>(1u, arg_1)))));
    return ~countOneBits(~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 20117u, 0u, var_0), vec4<u32>(arg_1, arg_1, u_input.a, arg_1))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: u32) -> Struct_2 {
    global0 = array<vec2<bool>, 20>();
    global0 = array<vec2<bool>, 20>();
    let var_0 = _wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(-vec3<i32>(-9795i, -6519i, u_input.b) & -vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.b, 43620i, u_input.b), vec3<i32>(u_input.b, u_input.b, -23317i), arg_1), vec3<i32>(u_input.b, 0i, u_input.b))), vec3<i32>(u_input.b, -2147483647i, _wgslsmith_mod_i32(u_input.b, -u_input.b)) ^ select(vec3<i32>(54277i, 7232i, u_input.b) << (~vec3<u32>(u_input.a, arg_2, arg_2) % vec3<u32>(32u)), func_2(), vec3<bool>(true, true, true)));
    var var_1 = Struct_3(vec3<bool>(!arg_1 | arg_1, any(vec3<bool>(true, any(vec4<bool>(false, arg_1, false, false)), true)), any(!(!vec4<bool>(arg_1, arg_1, true, true)))), _wgslsmith_f_op_f32(sign(330f)));
    var var_2 = vec4<bool>(~u_input.a <= 53975u, true, var_1.a.x, true);
    return Struct_2(arg_1, vec4<i32>(u_input.b, func_2().x, ~(-_wgslsmith_clamp_i32(var_0.x, -2147483647i, u_input.b)), var_0.x), ~func_3(Struct_3(!var_1.a, _wgslsmith_f_op_f32(var_1.b * var_1.b)), 0u), !(!var_1.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = 17229i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-190f - 329f))))))));
    global0 = array<vec2<bool>, 20>();
    let var_2 = !vec3<bool>(all(select(vec2<bool>(true, arg_0.d), global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)])) & true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1617f + 1233f)) != _wgslsmith_f_op_f32(var_1 - 337f), true);
    let var_3 = Struct_1(-vec4<i32>(_wgslsmith_mod_i32(arg_0.b.x | -55101i, abs(arg_1.a.x)), 2147483647i, ~arg_0.b.x & -2147483647i, 2147483647i), arg_1.b & 45039i, _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(~u_input.a), arg_0.c.x & abs(45219u)), vec2<u32>(max(4294967295u, arg_0.c.x), 1u) | max(func_3(Struct_3(var_2, var_1), 4294967295u).xy, vec2<u32>(23370u, u_input.a))));
    return ~arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(-vec3<i32>(~u_input.b, 0i, u_input.b), ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i) & vec3<i32>(0i, u_input.b, u_input.b), select(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(u_input.b, -19374i, -2147483647i), vec3<bool>(true, false, true)))));
    var var_1 = Struct_3(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, any(global0[_wgslsmith_index_u32(66979u, 20u)])), 4294967295u <= firstLeadingBit(u_input.a)), !vec3<bool>(u_input.b >= -32505i, true, select(true, true, true)), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1474f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(338f, 326f))))));
    var var_2 = func_4(func_1(var_1.a.x | !any(vec4<bool>(var_1.a.x, true, true, var_1.a.x)), !any(vec4<bool>(true, true, var_1.a.x, var_1.a.x)), _wgslsmith_add_u32(~countOneBits(6428u), reverseBits(u_input.a))), Struct_1(vec4<i32>(min(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.x, 1i), vec3<i32>(-1i, u_input.b, u_input.b))), -2829i, countOneBits(firstTrailingBit(u_input.b)), _wgslsmith_div_i32(abs(var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -1i), var_0.zx))), -25816i, _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), vec2<u32>(u_input.a, ~1u))));
    let var_3 = Struct_2(true, ~(~vec4<i32>(0i, 10746i, 1i, ~var_0.x)), ~(min(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(2782u, u_input.a, 1u, 0u)), ~vec4<u32>(u_input.a, u_input.a, 19898u, u_input.a)) & ~reverseBits(vec4<u32>(u_input.a, 1u, u_input.a, 27789u))), false);
    var var_4 = Struct_1(min(min(_wgslsmith_mod_vec4_i32(vec4<i32>(40296i, u_input.b, -2147483647i, u_input.b), vec4<i32>(2147483647i, -1i, u_input.b, 2147483647i)), var_3.b >> (var_3.c % vec4<u32>(32u))) << (var_3.c % vec4<u32>(32u)), vec4<i32>(-func_2().x, select(57967i, ~var_0.x, false), ~firstLeadingBit(17751i), u_input.b)), -var_3.b.x, var_3.c.x);
    var_0 = ~var_4.a.zxx;
    var var_5 = Struct_1(vec4<i32>(~u_input.b, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_3.b.ywz, var_3.b.xwy), var_4.b), select(_wgslsmith_dot_vec2_i32(max(var_0.xx, var_0.yz), abs(var_0.zx)), select(_wgslsmith_div_i32(var_3.b.x, 0i), ~(-2147483647i), var_3.a), any(vec2<bool>(var_3.d, var_3.d)) | var_3.a), i32(-1i) * -firstTrailingBit(-2147483647i)), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, abs(var_3.b.x)), var_3.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~var_3.c.zw, func_3(Struct_3(var_1.a, -500f), ~31768u).yw), max(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_4.c, u_input.a), var_3.c.wx), ~(~var_3.c.xy))));
    let var_6 = vec3<bool>(var_3.d, !any(vec4<bool>(true, true, false, func_1(false, true, u_input.a).d)), var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(var_4.a.x, var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.b, 1i, 22278i, var_0.x) << (vec4<u32>(4294967295u, 1u, 50179u, 18309u) % vec4<u32>(32u)), max(var_5.a, var_4.a)), 1i), vec4<i32>(var_4.a.x, func_2().x, 56833i, var_5.b)));
}

