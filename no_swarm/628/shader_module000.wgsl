struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(1i, -1225i), vec2<i32>(2147483647i, 0i), vec2<i32>(42946i, -1i), vec2<i32>(1i, 0i), vec2<i32>(-33051i, -64758i), vec2<i32>(2147483647i, 0i), vec2<i32>(5509i, 13376i), vec2<i32>(-54850i, i32(-2147483648)), vec2<i32>(1i, 53176i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(23398i, -1i), vec2<i32>(9058i, -23815i), vec2<i32>(583i, -1i), vec2<i32>(-30265i, 0i), vec2<i32>(39638i, -34377i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(2339i, 16536i), vec2<i32>(11260i, 14229i), vec2<i32>(344i, 1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, 43265i), vec2<i32>(1i, -66162i), vec2<i32>(16813i, i32(-2147483648)), vec2<i32>(7081i, 40090i), vec2<i32>(-58474i, -9904i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -26975i), vec2<i32>(10597i, 31698i), vec2<i32>(1i, -1i));

var<private> global2: array<vec3<i32>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = Struct_1(select(all(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, global0.a), vec2<bool>(true, global0.a))), select(any(vec4<bool>(false, false, arg_0, false)), true, ~4294967295u < ~global0.b.x), true), _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.d.x, global0.b.x << (abs(u_input.d.x) % 32u), firstTrailingBit(1u) & global0.b.x), vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, global0.b.x), global0.b.yy, vec2<bool>(false, global0.a)), global0.b.yy), firstLeadingBit(global0.b.x) ^ select(global0.b.x, global0.b.x, global0.a), ~(~global0.b.x))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, u_input.c.x), vec3<i32>(0i, -global0.d.x, u_input.c.x >> (4294967295u % 32u))), vec3<i32>(global0.d.x, _wgslsmith_clamp_i32(global0.c.x >> (u_input.d.x % 32u), 19017i, firstLeadingBit(u_input.c.x)), -42273i)), vec3<i32>(u_input.c.x, 1i, -reverseBits(-9876i)));
    var var_1 = u_input.a;
    let var_2 = any(select(vec2<bool>(all(vec2<bool>(var_0.a, arg_0)), var_0.d.x > (0i ^ global0.d.x)), select(select(select(vec2<bool>(var_0.a, true), vec2<bool>(true, global0.a), arg_0), select(vec2<bool>(var_0.a, global0.a), vec2<bool>(false, arg_0), vec2<bool>(global0.a, true)), arg_0), vec2<bool>(!global0.a, all(vec3<bool>(arg_0, true, true))), vec2<bool>(u_input.b <= global0.b.x, var_0.a)), all(!(!vec3<bool>(false, arg_0, arg_0)))));
    let var_3 = 965i;
    let var_4 = vec4<bool>(arg_0, global0.a, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1025f, 650f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1249f)))), any(select(vec2<bool>(var_2, var_2), !select(vec2<bool>(true, arg_0), vec2<bool>(true, false), var_2), true)));
    return !var_0.a && (!any(vec2<bool>(var_4.x, true)) | global0.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global2 = array<vec3<i32>, 2>();
    var var_0 = Struct_1(global0.a, vec3<u32>(1u, arg_1.b.x, _wgslsmith_sub_u32(20097u, _wgslsmith_add_u32(global0.b.x ^ 0u, countOneBits(global0.b.x)))), vec3<i32>(arg_0.c.x, firstTrailingBit(~(~u_input.c.x)), ~_wgslsmith_div_i32(_wgslsmith_add_i32(1i, arg_0.d.x), u_input.a.x)), select(vec3<i32>(-2147483647i & global0.c.x, arg_1.c.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.a.x, u_input.c.x)) & _wgslsmith_mult_vec3_i32(vec3<i32>(-63589i, global0.c.x, -30475i), ~vec3<i32>(arg_1.c.x, -2147483647i, arg_1.d.x)), global0.d, firstTrailingBit(39002i) >= u_input.c.x));
    let var_1 = Struct_1(!(!arg_0.a), ~arg_0.b, vec3<i32>(firstLeadingBit(var_0.c.x), 1i, ~countOneBits(countOneBits(var_0.c.x))), abs(vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(0i, global0.d.x)), arg_0.c.x, ~var_0.c.x ^ 0i)));
    let var_2 = 53660u;
    let var_3 = Struct_1(false, ~arg_0.b, select(min(-vec3<i32>(var_0.d.x, 34796i, -19152i), vec3<i32>(1i ^ arg_1.d.x, -23092i, reverseBits(-59566i))), var_0.c >> ((vec3<u32>(6426u, 4294967295u, u_input.d.x) & var_1.b) % vec3<u32>(32u)), func_3(!arg_1.a)), abs(~(global2[_wgslsmith_index_u32(max(u_input.b, arg_1.b.x), 2u)] ^ (vec3<i32>(arg_1.c.x, 1i, -74330i) & vec3<i32>(47454i, -31115i, u_input.a.x)))));
    return firstTrailingBit(~vec3<u32>(~(~4294967295u), u_input.b, 70853u));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(true, func_4(Struct_1(!global0.a && true, global0.b, vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-7871i, u_input.a.x, u_input.c.x) << (_wgslsmith_div_vec3_u32(global0.b, vec3<u32>(u_input.b, u_input.d.x, 0u)) % vec3<u32>(32u))), Struct_1(func_3(true), ~vec3<u32>(global0.b.x, u_input.d.x, 9540u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 32317u, 87313u), vec3<u32>(4294967295u, u_input.d.x, 32370u)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, -1i), vec3<i32>(global0.c.x, global0.d.x, 1i)), global0.c)), u_input.a.wzy, vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(1i, ~u_input.a.x), select(-43204i, -2147483647i, !any(vec3<bool>(global0.a, global0.a, false)))));
    let var_1 = Struct_1(!(!global0.a), ~min(func_4(Struct_1(var_0.a, vec3<u32>(global0.b.x, 1u, global0.b.x), var_0.c, u_input.c), Struct_1(false, vec3<u32>(1u, 4294967295u, var_0.b.x), vec3<i32>(global0.d.x, 1i, var_0.d.x), global2[_wgslsmith_index_u32(global0.b.x, 2u)])), ~(~vec3<u32>(var_0.b.x, 6272u, var_0.b.x))), vec3<i32>(~var_0.d.x, min(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(56472i, var_0.c.x, u_input.c.x), var_0.c)), -1i), abs(-max(_wgslsmith_add_vec3_i32(global0.d, vec3<i32>(var_0.d.x, 1i, global0.c.x)), global2[_wgslsmith_index_u32(0u, 2u)] & vec3<i32>(-78355i, 43582i, global0.c.x))));
    global0 = var_1;
    global1 = array<vec2<i32>, 31>();
    global2 = array<vec3<i32>, 2>();
    return Struct_1(!all(!select(vec4<bool>(var_1.a, true, false, global0.a), vec4<bool>(var_1.a, var_1.a, var_1.a, true), vec4<bool>(global0.a, false, var_0.a, var_1.a))), ~func_4(var_1, Struct_1(true, ~vec3<u32>(1u, var_0.b.x, 39474u), vec3<i32>(global0.d.x, 2147483647i, -22319i), abs(var_1.d))), max(u_input.a.yzy, vec3<i32>(~10197i, 1i, global0.d.x)), var_0.d);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> Struct_1 {
    global1 = array<vec2<i32>, 31>();
    let var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(596f, -539f)) * -156f))))));
    global0 = Struct_1(all(select(!vec3<bool>(false, false, arg_1.a), select(vec3<bool>(arg_1.a, true, false), select(vec3<bool>(arg_1.a, global0.a, global0.a), vec3<bool>(global0.a, false, global0.a), false), true), vec3<bool>(true, global0.a, all(vec4<bool>(arg_1.a, false, false, arg_1.a))))), ~select(vec3<u32>(u_input.b, _wgslsmith_div_u32(u_input.b, 6589u), _wgslsmith_dot_vec2_u32(global0.b.yx, global0.b.zx)), arg_1.b, false), u_input.a.yyy, min(-global2[_wgslsmith_index_u32(countOneBits(global0.b.x), 2u)], abs(u_input.c)) & ~vec3<i32>(_wgslsmith_sub_i32(global0.c.x, arg_1.c.x), ~global0.c.x, _wgslsmith_mod_i32(1i, arg_0)));
    global0 = Struct_1(select(true, any(vec2<bool>(true, true)), all(vec4<bool>(!arg_1.a, true, true, arg_0 < arg_1.c.x))), select(vec3<u32>(global0.b.x, _wgslsmith_sub_u32(~11813u, ~global0.b.x), 89716u), _wgslsmith_mod_vec3_u32(global0.b, vec3<u32>(0u, min(4294967295u, 1u), 37012u)), arg_1.a), arg_1.d, -(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 2u)] >> (~global0.b % vec3<u32>(32u))) >> (~vec3<u32>(firstTrailingBit(arg_1.b.x), ~0u, firstLeadingBit(1u)) % vec3<u32>(32u)));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !(!select(vec3<bool>(arg_0.a, func_3(false), func_3(false)), vec3<bool>(true, any(vec2<bool>(true, arg_2.a)), func_3(true)), select(vec3<bool>(false, arg_2.a, arg_2.a), !vec3<bool>(true, global0.a, arg_2.a), select(vec3<bool>(false, arg_2.a, global0.a), vec3<bool>(arg_2.a, true, global0.a), vec3<bool>(false, arg_0.a, arg_2.a)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(876f, 1021f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -836f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-837f + 1308f))))));
    let var_2 = ~(~arg_0.b.x);
    let var_3 = -1000f;
    var var_4 = select(var_0.zx, vec2<bool>(true, true), false);
    return func_1(u_input.a.x | _wgslsmith_mod_i32(-7636i, 2147483647i), arg_2, arg_2.b.x, _wgslsmith_sub_u32(countOneBits(_wgslsmith_div_u32(func_2().b.x, 1u << (var_2 % 32u))), 1u));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = Struct_1(arg_2.x, ~func_4(arg_0, Struct_1(var_0.a, vec3<u32>(global0.b.x, 64364u, 1u), -vec3<i32>(-10839i, global0.d.x, u_input.c.x), global2[_wgslsmith_index_u32(arg_0.b.x, 2u)])), max(arg_0.d >> (~global0.b % vec3<u32>(32u)), -vec3<i32>(arg_0.d.x, -2147483647i, u_input.c.x) << (var_0.b % vec3<u32>(32u))) >> (~(~_wgslsmith_div_vec3_u32(global0.b, vec3<u32>(arg_0.b.x, 42761u, 35844u))) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-var_0.d.x, abs(_wgslsmith_clamp_i32(arg_0.d.x, u_input.a.x, 41586i)), ~(~global0.d.x))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -910f);
    let var_3 = firstTrailingBit(1i);
    global0 = Struct_1(arg_2.x, ~select(select(abs(vec3<u32>(global0.b.x, arg_0.b.x, u_input.b)), vec3<u32>(4294967295u, 4508u, 41844u), var_1.a), var_1.b, !global0.a && true), vec3<i32>(~countOneBits(global0.d.x), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, var_0.d), -vec3<i32>(-2147483647i, arg_0.c.x, var_1.d.x)), -2147483647i), func_2().c.x), vec3<i32>(var_1.c.x, reverseBits(var_1.d.x), _wgslsmith_mod_i32(var_3, ~var_3) & u_input.a.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(func_1(u_input.a.x, Struct_1(!global0.a, global0.b, global2[_wgslsmith_index_u32(~0u, 2u)], global0.c), ~12018u, reverseBits(global0.b.x)), abs(func_1(0i, Struct_1(false, vec3<u32>(13912u, global0.b.x, u_input.b), vec3<i32>(global0.c.x, global0.c.x, global0.c.x), global2[_wgslsmith_index_u32(u_input.d.x, 2u)]), 4294967295u, func_2().b.x).c.x), func_2()), 913f, vec4<bool>(global0.a || func_5(func_5(Struct_1(global0.a, vec3<u32>(1u, 35976u, global0.b.x), global2[_wgslsmith_index_u32(15030u, 2u)], global0.d), u_input.a.x, Struct_1(global0.a, vec3<u32>(u_input.b, global0.b.x, 0u), vec3<i32>(1i, -12170i, 2147483647i), global0.c)), u_input.a.x, func_1(global0.d.x, Struct_1(true, vec3<u32>(14666u, u_input.b, 0u), vec3<i32>(-1i, -14882i, 1i), u_input.a.ywy), u_input.d.x, 6575u)).a, true, func_3(all(vec3<bool>(true, true, true))), global0.a));
    let var_0 = func_1(global0.d.x, func_2(), 39753u, u_input.d.x);
    global0 = func_6(func_6(var_0, _wgslsmith_div_f32(-431f, 1549f), vec4<bool>(global0.a, global0.a, func_5(var_0, -1i, var_0).b.x < _wgslsmith_mult_u32(var_0.b.x, 1u), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(498f - -556f), _wgslsmith_f_op_f32(select(-1000f, -437f, var_0.a)))) * _wgslsmith_f_op_f32(931f - -196f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(550f, -283f)) * -633f)), !vec4<bool>(!func_6(Struct_1(true, global0.b, vec3<i32>(-1i, global0.d.x, 5310i), vec3<i32>(var_0.c.x, 49052i, var_0.d.x)), 641f, vec4<bool>(global0.a, true, true, global0.a)).a, true, var_0.a || any(vec3<bool>(var_0.a, false, var_0.a)), var_0.a));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1373f)))))))));
    let var_2 = ~(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.d.x, var_0.b.x, var_0.b.x), vec4<u32>(0u, global0.b.x, 4294967295u, global0.b.x)), max(firstTrailingBit(vec4<u32>(27127u, global0.b.x, 36489u, u_input.b)), ~vec4<u32>(1u, u_input.d.x, var_0.b.x, var_0.b.x)), firstLeadingBit(~vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, var_0.b.x))) << (vec4<u32>(_wgslsmith_mod_u32(~43902u, func_5(var_0, global0.c.x, var_0).b.x), global0.b.x, ~func_6(var_0, var_1, vec4<bool>(global0.a, global0.a, false, global0.a)).b.x, firstTrailingBit(reverseBits(8980u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

