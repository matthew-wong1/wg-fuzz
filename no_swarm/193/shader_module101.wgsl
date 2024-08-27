struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: i32 = 6437i;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<bool> {
    var var_0 = 0u << (_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.a, u_input.a), ~arg_1.a), 4294967295u << (arg_1.a % 32u)) % 32u);
    let var_1 = firstLeadingBit(~vec2<u32>(min(arg_1.a >> (16718u % 32u), u_input.a.x), 0u));
    var var_2 = abs(_wgslsmith_clamp_vec4_i32(arg_2, vec4<i32>(_wgslsmith_add_i32(-1i | arg_0, arg_2.x), arg_0, 1i, arg_2.x), arg_2));
    let var_3 = arg_1.d;
    var var_4 = Struct_2(reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(1u, 33437u))), arg_1.b, var_3.b.x, var_3);
    return select(!select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, arg_1.d.b.x, var_4.d.a), true), select(vec4<bool>(var_4.d.b.x, arg_1.c, arg_1.d.c, var_3.b.x), vec4<bool>(false, false, arg_1.c, false), var_4.d.b.x), var_4.c), vec4<bool>(any(vec2<bool>(arg_1.c, var_4.d.a)), all(vec2<bool>(true, var_3.c)), var_3.c, all(vec3<bool>(var_3.c, false, false))), true), select(!select(!vec4<bool>(false, var_3.a, true, true), select(vec4<bool>(var_4.d.b.x, true, false, false), vec4<bool>(false, var_3.c, var_4.c, true), var_3.a), var_4.c || arg_1.c), select(!select(vec4<bool>(false, arg_1.c, true, false), vec4<bool>(var_4.c, true, var_3.c, false), true), vec4<bool>(false, true, !var_3.b.x, all(arg_1.d.b)), vec4<bool>(arg_1.d.b.x, true, var_4.d.a || var_3.a, arg_1.d.a)), ~0u == ~firstTrailingBit(arg_1.a)), !arg_1.d.b.x);
}

fn func_2() -> vec4<u32> {
    global0 = array<f32, 19>();
    global1 = 1i;
    let var_0 = Struct_2(1u, -(~(-41465i << (u_input.a.x % 32u)) | _wgslsmith_mod_i32(~1i, 1i)), !any(func_3(1i, Struct_2(u_input.a.x, 14123i, true, Struct_1(true, vec3<bool>(false, false, true), true)), vec4<i32>(17758i, 1i, -2147483647i, 1i))), Struct_1(true, func_3(~reverseBits(21164i), Struct_2(~u_input.a.x, select(64274i, -29046i, false), 339f < global0[_wgslsmith_index_u32(1u, 19u)], Struct_1(true, vec3<bool>(false, true, false), true)), vec4<i32>(1i, 1i, 1i, 1i)).zxy, any(vec2<bool>(true, true))));
    let var_1 = Struct_1(-19011i < var_0.b, var_0.d.b, select(!var_0.d.c, true, var_0.c));
    let var_2 = ~var_0.a != (_wgslsmith_mult_u32(11247u, _wgslsmith_sub_u32(min(1u, 26362u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 11109u), vec3<u32>(u_input.a.x, 23476u, u_input.a.x)))) << (~reverseBits(_wgslsmith_mult_u32(var_0.a, var_0.a)) % 32u));
    return ~(~(~max(~vec4<u32>(1u, 4294967295u, u_input.a.x, 4294967295u), select(vec4<u32>(0u, var_0.a, 0u, 54182u), vec4<u32>(var_0.a, 4294967295u, 11866u, u_input.a.x), vec4<bool>(false, true, var_1.c, var_1.b.x)))));
}

fn func_1() -> Struct_2 {
    let var_0 = ~(-2147483647i << ((14670u ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x), func_2())) % 32u));
    global1 = _wgslsmith_sub_i32(var_0, 274i);
    return Struct_2(_wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 32276u, 72828u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, 0u)), min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<u32>(8305u, 47289u, 1u), vec3<u32>(u_input.a.x, 58548u, u_input.a.x)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))), countOneBits(func_2().wxx)), firstTrailingBit(-37887i), !(!(!all(vec4<bool>(true, false, false, true)))), Struct_1(!(!select(false, true, false)), vec3<bool>(func_3(var_0, Struct_2(1u, 38909i, false, Struct_1(false, vec3<bool>(false, true, false), false)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1i, var_0, -1i), vec4<i32>(var_0, -1i, var_0, var_0))).x, all(vec4<bool>(true, true, true, true)), false), true));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(4294967295u, 25052u)), _wgslsmith_mult_vec2_u32(vec2<u32>(30794u, 29407u), vec2<u32>(arg_0.a, u_input.a.x)))), 19u)])), _wgslsmith_f_op_f32(max(-1123f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(72312u, u_input.a.x, arg_0.a, arg_0.a), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, arg_0.a) ^ vec4<u32>(4294967295u, 3169u, u_input.a.x, 28515u)) >> (arg_0.a % 32u), 19u)])));
    let var_1 = ~(~countOneBits(max(vec4<i32>(-33732i, 42800i, arg_0.b, arg_0.b), vec4<i32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b))) & ~((vec4<i32>(1i, 0i, 12422i, -2147483647i) << (vec4<u32>(arg_0.a, 34270u, arg_0.a, arg_0.a) % vec4<u32>(32u))) ^ (vec4<i32>(arg_0.b, 21776i, arg_0.b, 11003i) | vec4<i32>(-2147483647i, arg_0.b, arg_0.b, arg_0.b))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-528f + -2296f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(411f * global0[_wgslsmith_index_u32(arg_0.a, 19u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(161f)))))))) - _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 19u)])));
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1226f + global0[_wgslsmith_index_u32(arg_0.a, 19u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(arg_0.a, 19u)], 181f)))), global0[_wgslsmith_index_u32(0u, 19u)], 1i <= abs(var_1.x)))));
    var var_3 = all(func_1().d.b) || (true != all(!arg_0.d.b.yx));
    return Struct_1(false, select(arg_0.d.b, vec3<bool>(true, !arg_0.d.c, true), any(select(func_1().d.b.xz, vec2<bool>(true, arg_0.d.a), arg_0.d.a || arg_0.d.a))), false);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_2 {
    global1 = i32(-1i) * -1i;
    let var_0 = 22092u;
    global1 = max(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, 28191i), 1i) | max(max(-28421i, 49996i), _wgslsmith_dot_vec4_i32(vec4<i32>(-34643i, -1i, -71460i, -1i), vec4<i32>(2147483647i, 0i, 4785i, 0i))), 2147483647i), -2147483647i);
    let var_1 = func_1();
    global1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(~var_1.b ^ -1i, func_1().b, ~1i >> (_wgslsmith_clamp_u32(0u, 1u, 4294967295u) % 32u)), vec3<i32>(-7301i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 1158i, var_1.b), vec4<i32>(var_1.b, var_1.b, -24660i, var_1.b)), ~1i), ~(~var_1.b)));
    return Struct_2(3604u, abs(var_1.b), arg_0.b.x, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1()), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, -267f, -518f)))), ~countOneBits(~vec3<u32>(u_input.a.x, u_input.a.x, 67800u) >> ((vec3<u32>(4294967295u, u_input.a.x, 13388u) << (vec3<u32>(92557u, 17593u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(func_2().x >> (u_input.a.x % 32u), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(243f - 366f))) + 677f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 19u)], 524f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 19u)]) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a, 19u)])))));
    global0 = array<f32, 19>();
    global1 = countOneBits(_wgslsmith_add_i32(_wgslsmith_add_i32(firstLeadingBit(var_0.b), 1i), 1i) & -var_0.b);
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    var var_2 = vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(~(~1u), 1u) << (0u % 32u), abs(_wgslsmith_dot_vec4_u32(select(vec4<u32>(20976u, 0u, var_0.a, 4294967295u) | vec4<u32>(4294967295u, var_0.a, 23173u, var_0.a), ~vec4<u32>(1u, u_input.a.x, 4294967295u, var_0.a), func_4(Struct_2(var_0.a, var_0.b, false, Struct_1(var_0.c, var_0.d.b, true))).c), (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 28328u) ^ vec4<u32>(104101u, var_0.a, u_input.a.x, var_0.a)) >> (firstTrailingBit(vec4<u32>(var_0.a, 1945u, 1u, 1u)) % vec4<u32>(32u)))), ~var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(firstLeadingBit(10538u & u_input.a.x), 19u)], -367f, var_0.d.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), global0[_wgslsmith_index_u32(select(abs(var_0.a), reverseBits(u_input.a.x), false), 19u)], any(select(func_3(var_0.b, Struct_2(var_2.x, var_0.b, var_0.c, var_0.d), vec4<i32>(-8435i, -67348i, var_0.b, var_0.b)), !vec4<bool>(var_0.c, false, var_0.d.b.x, var_0.d.c), !vec4<bool>(true, var_0.c, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -426f)))));
}

