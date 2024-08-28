struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: vec2<i32> = vec2<i32>(27673i, -1i);

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<i32, 5> = array<i32, 5>(-27203i, i32(-2147483648), -25744i, 10587i, 1i);

var<private> global4: vec2<f32> = vec2<f32>(-144f, -493f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = abs(0u);
    var var_1 = ~_wgslsmith_sub_u32(0u, var_0);
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(23601u), abs(0u), ~64429u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 1u)], 1u)]), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(36381u, 4294967295u, var_0, 0u) | vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], 22934u, 1u)), _wgslsmith_div_vec4_u32(min(vec4<u32>(var_0, var_0, global0[_wgslsmith_index_u32(22269u, 1u)], 64476u) | vec4<u32>(var_0, var_0, 4294967295u, 18940u), select(vec4<u32>(0u, var_0, 1u, global0[_wgslsmith_index_u32(var_0, 1u)]), vec4<u32>(6419u, var_0, var_0, var_0), vec4<bool>(false, false, true, true))), firstTrailingBit(abs(vec4<u32>(4294967295u, 4294967295u, 83705u, 16210u))))));
    var var_3 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 5u)], 1i, max(-2147483647i, 43990i)) & -vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(var_0, 5u)], global1.x), vec3<i32>(~u_input.b.x, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(var_2, 1u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 1u)], 1u)], 1u)), 5u)], max(global1.x, global1.x)), 1i), max(u_input.b, abs(u_input.b))), u_input.b);
    let var_4 = Struct_4(!vec3<bool>(any(select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), false)), !global2.x, 1i <= abs(global1.x)), any(!select(vec4<bool>(global2.x, global2.x, false, global2.x), !vec4<bool>(global2.x, true, global2.x, global2.x), global2.x)), 0u, Struct_1((reverseBits(u_input.a) >> (~vec2<u32>(61599u, global0[_wgslsmith_index_u32(var_0, 1u)]) % vec2<u32>(32u))) >> (vec2<u32>(~0u, ~var_0) % vec2<u32>(32u)), vec4<u32>(1u, 4294967295u, 4294967295u, var_2), false, global2.x & false), Struct_3(~_wgslsmith_div_vec2_i32(vec2<i32>(-25823i, var_3.x), var_3.xy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-733f, global4.x)))), Struct_1(~var_3.zz, abs(vec4<u32>(19594u, 12857u, 510u, var_2)) << (~vec4<u32>(21162u, 0u, var_2, var_2) % vec4<u32>(32u)), true, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.x * global4.x))), Struct_2(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-23819i, 10470i), vec2<i32>(2147483647i, global1.x)), abs(vec4<u32>(55130u, var_0, 10459u, var_0)), all(vec3<bool>(true, global2.x, true)), true), var_0, Struct_1(var_3.zz, vec4<u32>(0u, 0u, 28125u, 47665u) | vec4<u32>(global0[_wgslsmith_index_u32(var_0, 1u)], 84329u, var_0, var_0), global2.x, global2.x), vec2<f32>(global4.x, global4.x))));
    return global2.x;
}

fn func_2() -> vec4<bool> {
    var var_0 = vec2<i32>(1i, _wgslsmith_div_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(29350i | u_input.b.x, u_input.a.x, i32(-1i) * -1i), -vec3<i32>(-63274i, u_input.b.x, 6685i) ^ vec3<i32>(1i, global1.x, -2147483647i))));
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1966f, -2838f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -666f), global4.x), false)))));
    global2 = vec2<bool>(global2.x, !any(vec4<bool>(func_3(), true, true, true)));
    let var_1 = global2.x;
    var_0 = reverseBits(u_input.a << (~vec2<u32>(countOneBits(1u), 0u | global0[_wgslsmith_index_u32(30511u, 1u)]) % vec2<u32>(32u)));
    return !(!(!select(select(vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), true), select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, true, true, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), true)));
}

fn func_1(arg_0: i32, arg_1: Struct_5) -> bool {
    var var_0 = select(!select(func_2(), select(!vec4<bool>(arg_1.b.c.c, arg_1.b.c.d, false, true), func_2(), vec4<bool>(global2.x, arg_1.b.c.d, true, global2.x)), vec4<bool>(!arg_1.b.a.c, true, false, true)), !vec4<bool>(all(!vec3<bool>(arg_1.b.c.c, true, global2.x)), !(global0[_wgslsmith_index_u32(6086u, 1u)] > global0[_wgslsmith_index_u32(arg_1.c, 1u)]), true, false), !any(vec3<bool>(global2.x, global2.x, arg_1.b.a.d)) | any(!select(vec4<bool>(false, arg_1.b.c.d, true, true), vec4<bool>(true, true, arg_1.b.a.c, arg_1.b.c.d), vec4<bool>(global2.x, true, arg_1.b.a.d, global2.x))));
    global3 = array<i32, 5>();
    global0 = array<u32, 1>();
    var var_1 = vec3<i32>(arg_1.b.c.a.x, arg_1.a, u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(floor(arg_1.b.d.x));
    return any(select(func_2().xx, select(!var_0.yx, var_0.zy, false), arg_1.c > 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.x;
    global3 = array<i32, 5>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1174f, 1997f)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-212f - 503f), -166f, func_1(-2897i, Struct_5(-6687i, Struct_2(Struct_1(vec2<i32>(-6077i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 5u)]), vec4<u32>(0u, 4294967295u, 1u, 1u), true, false), global0[_wgslsmith_index_u32(0u, 1u)], Struct_1(vec2<i32>(u_input.b.x, global1.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9490u, 1u)], 1u)], global0[_wgslsmith_index_u32(19405u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15022u, 1u)], 1u)], 1u)], 1u)], 1u)]), global2.x, false), vec2<f32>(1556f, global4.x)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1078f + 469f), global4.x), _wgslsmith_f_op_f32(-global4.x)))));
    global1 = _wgslsmith_add_vec2_i32(u_input.a, -u_input.a);
    let var_2 = -1000f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-712f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, global4.x)))))));
    global1 = abs(_wgslsmith_mult_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(min(vec2<i32>(-2147483647i, -1i), u_input.b.yy) & ~u_input.b.xx, vec2<i32>(firstLeadingBit(22495i), -u_input.a.x))));
    let var_4 = Struct_2(Struct_1(vec2<i32>(reverseBits(-50028i), max(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(45492u, 1u)], 27343u), 1u)], 5u)], -9721i)), min(_wgslsmith_add_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33337u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24122u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22711u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)]), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 19497u, 26142u, 4294967295u)), ~min(vec4<u32>(6436u, 30259u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31767u, 1u)], 1u)], 1u)], 1u)]), vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], 4294967295u, 22941u))), global2.x, global2.x), 56193u, Struct_1(u_input.a | _wgslsmith_mult_vec2_i32(u_input.a | vec2<i32>(-36751i, -44170i), u_input.b.yx), reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9318u, 1u)], 1u)], 1u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13769u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(1u, 1u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)]))), select(global2.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)], 151300u, 4294967295u), 1u)] != _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 8310u), vec2<u32>(global0[_wgslsmith_index_u32(82930u, 1u)], global0[_wgslsmith_index_u32(69835u, 1u)])), any(func_2().xww)), true), vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(531f, var_3)) * var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11051u, 1u)], 5u)], u_input.b.x, var_4.a.a.x, global1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42383u, 1u)], 5u)], global1.x, 14975i), abs(vec4<i32>(global1.x, 25826i, 42523i, -24415i)))), reverseBits(firstLeadingBit(-vec4<i32>(-2147483647i, u_input.a.x, global1.x, global3[_wgslsmith_index_u32(5953u, 5u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1356f, 2167f)))), _wgslsmith_mod_vec3_i32(vec3<i32>(-23552i, -(i32(-1i) * -12473i), -countOneBits(-2147483647i)), -(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -76488i, u_input.b.x), vec3<i32>(global3[_wgslsmith_index_u32(var_4.b, 5u)], 11344i, -1i)) | -vec3<i32>(var_4.a.a.x, -2147483647i, u_input.b.x))), vec4<f32>(_wgslsmith_f_op_f32(min(var_2, 1257f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(f32(-1f) * -503f))), -743f, global4.x), 1u);
}

