struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
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

var<private> global0: array<u32, 25> = array<u32, 25>(0u, 1u, 8693u, 0u, 23141u, 13104u, 51953u, 1u, 35720u, 1u, 1u, 82886u, 0u, 1u, 4294967295u, 1u, 4294967295u, 0u, 0u, 36985u, 31020u, 69201u, 1u, 7371u, 6867u);

var<private> global1: Struct_5;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    global0 = array<u32, 25>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-849f, global1.d.b)), -824f, global1.d.b) - vec4<f32>(_wgslsmith_f_op_f32(sign(1079f)), -194f, global1.d.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(528f + global1.d.b), -195f))));
    let var_1 = global1.a.x;
    let var_2 = vec4<u32>(abs(~4294967295u), 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(~firstLeadingBit(40380u)), 25u)], 25u)], 33443u);
    let var_3 = var_2;
    return countOneBits(_wgslsmith_sub_vec4_i32(u_input.b, u_input.b));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<i32>) -> vec4<bool> {
    global1 = Struct_5(vec4<bool>(false && (global0[_wgslsmith_index_u32(global1.d.a, 25u)] == (38594u & global1.d.a)), _wgslsmith_mod_u32(global1.d.a >> (global0[_wgslsmith_index_u32(global1.d.a, 25u)] % 32u), 1u) < 1u, all(select(global1.a.xxy, global1.a.wzx, global1.b.zwz)) == false, arg_0), vec4<bool>(all(vec4<bool>(all(global1.a), true, global1.b.x, true)), any(global1.a.xy), (global1.d.a >= 11620u) && true, global1.d.a > abs(1u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.d.a, 25u)], 25u)])), !any(vec2<bool>(true, arg_0)), Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(33259u, global1.d.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 25u)], global1.d.a), vec2<u32>(global0[_wgslsmith_index_u32(global1.d.a, 25u)], 1u), vec2<u32>(global0[_wgslsmith_index_u32(global1.d.a, 25u)], 1u))), -601f));
    var var_0 = Struct_1(arg_2.x);
    let var_1 = Struct_3(abs(vec3<i32>(_wgslsmith_div_i32(u_input.a, arg_2.x) << (abs(0u) % 32u), firstTrailingBit(1i) >> (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(4212u, 25u)]), 25u)] % 32u), var_0.a)));
    let var_2 = _wgslsmith_f_op_f32(-global1.d.b);
    let var_3 = Struct_1(21324i);
    return global1.b;
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 25>();
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.c.zx & u_input.c.xy, u_input.c.xz));
    global1 = Struct_5(global1.a, select(global1.b, global1.b, select(!vec4<bool>(false, global1.a.x, false, global1.c), !vec4<bool>(global1.c, global1.a.x, global1.b.x, false), vec4<bool>(false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50161u, 25u)], 25u)], 25u)], 25u)], 25u)], 25u)] >= global0[_wgslsmith_index_u32(4294967295u, 25u)], true & global1.a.x, true))), global1.a.x, Struct_2(~_wgslsmith_sub_u32(44352u, ~global0[_wgslsmith_index_u32(global1.d.a, 25u)]), -808f));
    var var_1 = Struct_5(global1.a, select(vec4<bool>(any(vec3<bool>(true, true, global1.a.x)), global1.c, true, true), !func_4(true, vec2<f32>(global1.d.b, 828f), func_3()), global1.b), global1.b.x, global1.d);
    var var_2 = select(vec4<bool>(!(!(-474f == var_1.d.b)), true, false, var_1.a.x), !(!var_1.a), any(var_1.b.yxz));
    return Struct_1(-u_input.a);
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_5 {
    let var_0 = Struct_2(~7852u, global1.d.b);
    var var_1 = Struct_1(-(u_input.c.x << (~(var_0.a & arg_1.x) % 32u)));
    var var_2 = Struct_5(vec4<bool>(any(vec2<bool>(global1.c, true)), !global1.b.x, global1.c, true), !func_4(all(!global1.b.yw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(986f, 817f), vec2<f32>(var_0.b, -233f))), _wgslsmith_mult_vec4_i32(u_input.b | u_input.b, u_input.b)), true, Struct_2(arg_1.x, 1733f));
    let var_3 = Struct_4(Struct_2(max(abs(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 25u)])), var_0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b)))))), 1i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1632f, -824f)) - _wgslsmith_f_op_f32(var_0.b - global1.d.b)) + _wgslsmith_div_f32(var_0.b, var_2.d.b)), _wgslsmith_f_op_f32(-global1.d.b), 798f));
    var var_4 = any(global1.a.zw);
    return Struct_5(var_2.b, var_2.a, !any(select(!vec4<bool>(true, true, false, global1.c), global1.a, !vec4<bool>(global1.c, true, false, global1.b.x))), var_2.d);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> i32 {
    global1 = func_5(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.b.x), _wgslsmith_mult_i32(-25383i, 0i), max(53656i, 2147483647i), firstLeadingBit(0i))), _wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(-1i, 2147483647i, -52680i, 1338i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-11668i, u_input.c.x, 4034i, u_input.b.x), vec4<i32>(30009i, 12669i, u_input.a, u_input.c.x)))), vec4<u32>(4294967295u, 1u, countOneBits(85073u & _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global1.d.a, 25u)], 0u)), _wgslsmith_add_u32(abs(1u), countOneBits(7765u))), func_2());
    global1 = Struct_5(func_5(max(min(1i, ~u_input.c.x), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b.wxz, vec3<i32>(-46722i, u_input.b.x, -57075i)), _wgslsmith_div_i32(-1162i, u_input.c.x))), vec4<u32>(reverseBits(~arg_0.a), global1.d.a, ~(~0u), arg_0.a), func_2()).b, global1.a, true, func_5(max(~u_input.a, func_3().x), firstLeadingBit(vec4<u32>(~22382u, arg_0.a, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(56771u, arg_0.a, global1.d.a, 4294967295u), vec4<u32>(arg_0.a, global0[_wgslsmith_index_u32(arg_0.a, 25u)], arg_0.a, 27568u)))), func_2()).d);
    let var_0 = func_3().xy;
    var var_1 = Struct_2(min(min(~arg_0.a, 0u), firstLeadingBit(1u) >> (global0[_wgslsmith_index_u32(global1.d.a, 25u)] % 32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-695f + _wgslsmith_f_op_f32(arg_2 - arg_2))), arg_2)));
    global1 = Struct_5(!vec4<bool>(arg_0.b > _wgslsmith_div_f32(arg_0.b, var_1.b), !arg_1, all(!global1.b), all(select(global1.b.xz, vec2<bool>(false, false), arg_1))), vec4<bool>(!(!(u_input.b.x == u_input.b.x)), global1.b.x, true && arg_1, any(select(global1.a, select(global1.a, global1.b, vec4<bool>(true, true, global1.a.x, global1.a.x)), select(global1.b, global1.b, false)))), true, global1.d);
    return func_3().x;
}

fn func_6(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(func_5(u_input.a, arg_1, func_2()).d.a, 25u)], min(~55259u, 15416u), countOneBits(min(global0[_wgslsmith_index_u32(arg_1.x, 25u)], global0[_wgslsmith_index_u32(96752u, 25u)]))) & firstTrailingBit(_wgslsmith_mult_vec4_u32(countOneBits(arg_1), vec4<u32>(global1.d.a, 4294967295u, 48673u, global0[_wgslsmith_index_u32(arg_1.x, 25u)]))), ~reverseBits(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global1.d.a, 25u)], global1.d.a, 1u, global0[_wgslsmith_index_u32(23215u, 25u)]))), vec4<u32>(6111u, countOneBits(max(arg_1.x, abs(1u))), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, arg_1.x), abs(5461u)), max(abs(_wgslsmith_dot_vec2_u32(arg_1.xz, vec2<u32>(4294967295u, arg_1.x))), ~0u)));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1721f, 1173f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -926f), 824f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.d.b)), _wgslsmith_f_op_f32(global1.d.b - 886f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.d.b, global1.d.b), vec2<f32>(-1456f, -444f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(330f, -577f)))))), true & all(vec3<bool>(true, arg_0, false)))));
    var var_2 = _wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(firstLeadingBit(abs(33061u)), 25u)]);
    var var_3 = true;
    var var_4 = Struct_5(func_5(countOneBits(~38095i), countOneBits(~arg_1), func_2()).a, vec4<bool>(arg_0, arg_0, all(vec4<bool>(global1.b.x, true, 4294967295u >= var_0.x, !global1.c)), !(!(arg_0 || global1.c))), true, global1.d);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b.x >> (_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 25u)], 29749u)), ~global0[_wgslsmith_index_u32(4294967295u, 25u)]) % 32u));
    let var_1 = 56085u;
    var_0 = func_6((max(~(-12027i), var_0.a) << (global0[_wgslsmith_index_u32(1u, 25u)] % 32u)) <= func_1(Struct_2(global1.d.a, _wgslsmith_f_op_f32(287f * global1.d.b)), global1.d.b == -2532f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.b))), countOneBits(~(~vec4<u32>(var_1, 0u, 5114u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]))));
    var_0 = Struct_1(var_0.a);
    let var_2 = false;
    var var_3 = ~abs(abs(~vec2<u32>(31209u, global1.d.a) << (vec2<u32>(var_1, 0u) % vec2<u32>(32u))));
    let var_4 = firstLeadingBit((reverseBits(vec4<u32>(global1.d.a, 11115u, 1u, 52606u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.d.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 25u)], 25u)], 4294967295u, 25226u) << (vec4<u32>(4294967295u, 46352u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]) % vec4<u32>(32u)), ~vec4<u32>(var_1, var_1, 21189u, 4294967295u), select(vec4<u32>(0u, 63950u, var_3.x, global0[_wgslsmith_index_u32(15662u, 25u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74844u, 25u)], 25u)], 0u, 6195u), global1.a.x))) ^ vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(global1.d.a, global1.d.a), ~global0[_wgslsmith_index_u32(48111u, 25u)]), 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(12887u, 0u, 4294967295u, var_3.x), vec4<u32>(global1.d.a, 1u, global1.d.a, var_3.x)), firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(var_3.x, 25u)], var_3.x, 3427u, 26023u))), firstLeadingBit(~102468u)));
    global1 = Struct_5(!global1.a, global1.a, false, global1.d);
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(vec4<i32>(var_0.a, 1130i, 1i, var_0.a) << (vec4<u32>(1463u, 144612u, 3178u, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(43758i, -18409i, u_input.a, var_0.a)), global1.c)));
}

