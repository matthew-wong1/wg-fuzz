struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
    d: Struct_3,
    e: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<i32>;

var<private> global2: array<bool, 16> = array<bool, 16>(true, false, false, true, false, false, true, false, false, false, true, true, true, false, false, true);

var<private> global3: array<Struct_2, 20>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<i32>) -> i32 {
    return abs(1i);
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(round(1357f)))), 556f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)));
    var var_1 = Struct_1(any(select(!select(vec4<bool>(global2[_wgslsmith_index_u32(24510u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(23599u, 16u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(91818u, 16u)], true, global2[_wgslsmith_index_u32(77981u, 16u)]), false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 16u)], true, global2[_wgslsmith_index_u32(abs(1u), 16u)], global2[_wgslsmith_index_u32(abs(62963u), 16u)]), vec4<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 16u)], true, global2[_wgslsmith_index_u32(1u, 16u)])), select(true, false, false), select(true, global2[_wgslsmith_index_u32(22118u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]), !global2[_wgslsmith_index_u32(85574u, 16u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))) * _wgslsmith_f_op_f32(step(-1270f, -727f))), _wgslsmith_sub_vec4_i32(vec4<i32>((u_input.a ^ -39601i) >> (firstTrailingBit(65946u) % 32u), 33757i, _wgslsmith_mult_i32(u_input.b, _wgslsmith_clamp_i32(3239i, -1i, -20390i)), abs(_wgslsmith_add_i32(11254i, u_input.b))), select(vec4<i32>(global1.x, 0i, 2147483647i, 1i), abs(vec4<i32>(-1i, 2147483647i, 32152i, global1.x)), true) >> (min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))), arg_0);
    var var_2 = Struct_5(true, Struct_2(Struct_1(var_1.a, -1103f, select(var_1.c, abs(vec4<i32>(1i, arg_1, -1i, arg_1)), vec4<bool>(true, true, true, true)), var_1.d), vec4<u32>(firstTrailingBit(975u), 4294967295u, ~(~0u), 24919u), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(87789u, 91117u), vec2<u32>(1u, 1u)), 0u), Struct_1(all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), vec4<i32>(0i, var_1.c.x, abs(2147483647i), _wgslsmith_mult_i32(2147483647i, 0i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_0, var_1.d)), arg_2))));
    var var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -38706i, firstTrailingBit(-2147483647i), -var_1.c.x, var_1.c.x), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(15785i, 12814i, var_2.b.a.c.x, global1.x), vec4<i32>(arg_1, -19105i, 575i, u_input.b), var_1.c), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -65010i, var_1.c.x, -2147483647i), vec4<i32>(global1.x, arg_1, -2147483647i, -2147483647i)), select(vec4<bool>(false, var_1.a, false, global2[_wgslsmith_index_u32(14401u, 16u)]), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(89468u, 16u)]), vec4<bool>(var_2.b.a.a, false, global2[_wgslsmith_index_u32(var_2.b.b.x, 16u)], global2[_wgslsmith_index_u32(var_2.b.b.x, 16u)]))), vec4<i32>(var_2.b.a.c.x, var_1.c.x, reverseBits(1i), 1i)), var_1.c), vec4<i32>(min(_wgslsmith_dot_vec2_i32(var_1.c.zz, vec2<i32>(-11607i, arg_1)), _wgslsmith_dot_vec4_i32(vec4<i32>(-63657i, 1152i, global1.x, 21280i), var_1.c)) << (_wgslsmith_dot_vec4_u32(~var_2.b.b, abs(vec4<u32>(6902u, var_2.b.c.x, 33877u, 35722u))) % 32u), -2147483647i, 1i, 2147483647i));
    let var_4 = abs(21065i);
    return _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.b.d.c.x, 22955i, var_3.x, -2147483647i), var_1.c) >> (var_2.b.b % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(var_2.b.a.c, ~var_1.c)), (~(-var_1.c) << (max(~var_2.b.b, ~vec4<u32>(0u, 0u, var_2.b.b.x, 17312u)) % vec4<u32>(32u))) << (reverseBits(_wgslsmith_sub_vec4_u32(~var_2.b.b, vec4<u32>(51086u, var_2.b.c.x, 1u, var_2.b.c.x))) % vec4<u32>(32u)));
}

fn func_2() -> Struct_3 {
    var var_0 = true;
    let var_1 = Struct_2(Struct_1(any(vec2<bool>(true, true)), -877f, ~_wgslsmith_clamp_vec4_i32(func_3(vec4<f32>(-228f, 146f, -193f, 496f), u_input.a, vec4<f32>(-1124f, -502f, 1009f, -107f)), vec4<i32>(global1.x, -3317i, -2096i, 2147483647i) >> (vec4<u32>(1u, 1u, 35352u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.b, -56900i, u_input.a, 2147483647i) << (vec4<u32>(1u, 0u, 0u, 4294967295u) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-247f)) - _wgslsmith_f_op_f32(338f * -623f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1293f + 236f))))), vec4<u32>(1u, countOneBits(~reverseBits(0u)), ~(~0u), countOneBits(~77379u)), vec2<u32>(~3038u, _wgslsmith_div_u32(min(56628u, 5631u), 8668u)), Struct_1(!global2[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), reverseBits(-func_3(vec4<f32>(1254f, 529f, -1000f, 897f), -25254i, vec4<f32>(-1318f, 227f, 137f, -840f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-511f, -165f, 684f, 1736f))))))));
    let var_2 = Struct_1(any(select(!(!vec4<bool>(false, false, var_1.d.a, var_1.a.a)), vec4<bool>(any(vec4<bool>(var_1.a.a, true, var_1.d.a, var_1.a.a)), var_1.a.a, true | global2[_wgslsmith_index_u32(4294967295u, 16u)], true), all(vec2<bool>(var_1.d.a, true)))), var_1.d.b, -_wgslsmith_clamp_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.d.c.x, u_input.b, -15617i, 2147483647i), vec4<i32>(global1.x, -49375i, 2147483647i, var_1.d.c.x)), vec4<i32>(global1.x, 0i, var_1.d.c.x, u_input.b) << (var_1.b % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_1.d.c.x, global1.x, 14060i), vec4<i32>(var_1.a.c.x, -2147483647i, -36855i, -6926i))), -var_1.a.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.b, var_1.a.b, -405f, var_1.a.b), var_1.a.d) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-568f, var_1.d.d.x, var_1.d.d.x, -1815f)))), vec4<f32>(-208f, 636f, _wgslsmith_f_op_f32(var_1.a.b + var_1.d.d.x), var_1.a.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(534f, _wgslsmith_f_op_f32(-var_1.d.b), var_1.d.b, var_1.d.b))));
    global3 = array<Struct_2, 20>();
    var var_3 = _wgslsmith_f_op_f32(-var_2.b);
    return Struct_3(vec3<u32>(var_1.c.x, _wgslsmith_add_u32(~1u, _wgslsmith_div_u32(var_1.b.x, 4294967295u) & firstTrailingBit(1876u)), var_1.b.x), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(select(0i, 1i & (global1.x ^ 24302i), true), ~1i) != (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -41527i, func_1(Struct_4(Struct_3(vec3<u32>(15277u, 13172u, 18686u), Struct_1(false, -962f, vec4<i32>(48388i, 10714i, -1i, global1.x), vec4<f32>(-203f, 317f, -209f, -983f))), Struct_3(vec3<u32>(1872u, 4294967295u, 21611u), Struct_1(false, 365f, vec4<i32>(-2147483647i, 2147483647i, 24500i, -2147483647i), vec4<f32>(-788f, -230f, 137f, -1000f))), global2[_wgslsmith_index_u32(56786u, 16u)], Struct_3(vec3<u32>(0u, 35635u, 4294967295u), Struct_1(true, -1032f, vec4<i32>(u_input.b, u_input.b, -1i, 4418i), vec4<f32>(916f, -456f, -308f, -325f))), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(1u, 85826u, 1u), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 16u)], -2544f, vec4<i32>(global1.x, u_input.a, 33131i, 0i), vec4<f32>(-1000f, 2608f, -785f, -703f))), vec3<i32>(global1.x, 0i, u_input.a))), vec4<i32>(0i, ~(-2147483647i), u_input.b, -10863i)) << (~_wgslsmith_dot_vec2_u32(~vec2<u32>(72639u, 0u), vec2<u32>(9658u, 0u)) % 32u));
    let var_0 = func_2();
    var var_1 = !var_0.b.a;
    global0 = true;
    let var_2 = var_0.b;
    let var_3 = Struct_4(func_2(), Struct_3(vec3<u32>(~_wgslsmith_clamp_u32(var_0.a.x, 41258u, 1u), var_0.a.x, ~var_0.a.x), func_2().b), false, Struct_3(var_0.a, var_0.b), vec4<u32>(~max(var_0.a.x | var_0.a.x, ~var_0.a.x), var_0.a.x, _wgslsmith_mod_u32(var_0.a.x, 4294967295u), ~var_0.a.x));
    global3 = array<Struct_2, 20>();
    global2 = array<bool, 16>();
    let var_4 = var_0.b.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e.x, var_0.a.zz, ~_wgslsmith_mult_vec3_u32(~vec3<u32>(30038u, 4294967295u, var_3.b.a.x), var_0.a));
}

