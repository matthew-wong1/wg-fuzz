struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -193f;

var<private> global1: array<u32, 20>;

var<private> global2: vec2<i32> = vec2<i32>(-48745i, 2147483647i);

var<private> global3: array<vec2<f32>, 24>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> i32 {
    global1 = array<u32, 20>();
    global2 = u_input.e;
    global1 = array<u32, 20>();
    return firstTrailingBit(_wgslsmith_add_i32(~(~64535i) >> (u_input.a % 32u), firstTrailingBit(min(~1i, -12048i))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_i32(-6894i, -global2.x) << (38335u % 32u);
    var var_1 = ~min(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(0i, global2.x, global2.x), ~vec3<i32>(20835i, var_0, 1i)), -vec3<i32>(global2.x, var_0, 1i), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(22019i, global2.x, var_0)), ~vec3<i32>(u_input.c, var_0, u_input.c))), ~(~vec3<i32>(-45096i, global2.x, global2.x)));
    var_1 = -vec3<i32>(_wgslsmith_mult_i32(u_input.e.x, func_3(u_input.a != global1[_wgslsmith_index_u32(113801u, 20u)])), global2.x, i32(-1i) * -2147483647i);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 303f, arg_0)))))))));
    let var_3 = Struct_2(Struct_1(true, select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), !any(vec2<bool>(false, true))), arg_1));
    return ~(~arg_1);
}

fn func_1() -> Struct_1 {
    var var_0 = !vec2<bool>(true && (u_input.d.x >= _wgslsmith_div_i32(-4796i, global2.x)), false);
    let var_1 = Struct_4(Struct_1(!(-1i <= global2.x), vec3<bool>(u_input.d.x > _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, u_input.e.x, global2.x, u_input.b.x), vec4<i32>(6021i, u_input.d.x, global2.x, 2147483647i)), true, true | (var_0.x || false)), ~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 40901u, u_input.a), func_2(113f, vec3<u32>(4294967295u, u_input.a, 1u)))), vec3<u32>(countOneBits(24173u) | func_2(_wgslsmith_f_op_f32(sign(927f)), ~vec3<u32>(u_input.a, 22800u, global1[_wgslsmith_index_u32(49002u, 20u)])).x, abs(1u), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_add_u32(4294967295u, global1[_wgslsmith_index_u32(0u, 20u)])), 38357u)));
    let var_2 = ~vec3<u32>(global1[_wgslsmith_index_u32(var_1.b.x, 20u)], _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_1.a.c & var_1.b, vec3<u32>(13997u, global1[_wgslsmith_index_u32(0u, 20u)], u_input.a)), var_1.a.c), abs(1u << (var_1.b.x % 32u)));
    return Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-580f))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -202f)))), vec3<bool>(!select(false, true, all(vec3<bool>(false, var_0.x, false))), global2.x != ~_wgslsmith_mod_i32(4821i, -2147483647i), false), var_1.b);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_3(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(65423u, global1[_wgslsmith_index_u32(51639u, 20u)], 4294967295u, 4294967295u), arg_3.a, vec4<bool>(arg_0.b.a, true, arg_3.e.b.x, arg_3.e.b.x)) >> (abs(vec4<u32>(arg_2, 4294967295u, global1[_wgslsmith_index_u32(21781u, 20u)], arg_1)) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, arg_0.a.x, arg_0.e.c.x), arg_3.a)), func_1(), 0u, vec3<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(global2.x, 1i, arg_3.d.x, -13755i), vec4<i32>(arg_3.d.x, 1i, 2398i, 2147483647i)), countOneBits(vec4<i32>(2147483647i, arg_3.d.x, 0i, 2147483647i))) | global2.x, countOneBits(u_input.b.x), -u_input.e.x), func_1());
    var var_1 = -1404f;
    global2 = _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.d.x, abs(_wgslsmith_clamp_i32(1i, 31222i, var_0.d.x))) ^ select(_wgslsmith_sub_vec2_i32(u_input.b, ~var_0.d.yz), ~_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.d.x, u_input.c), arg_0.d.yx), arg_0.b.b.zx), select(vec2<i32>(~(arg_0.d.x & -16455i), min(-43746i, arg_3.d.x) & arg_0.d.x), _wgslsmith_sub_vec2_i32(arg_0.d.zx, vec2<i32>(1i, 1i)) << (vec2<u32>(2369u, 1u) % vec2<u32>(32u)), true));
    var var_2 = var_0.b.b.zz;
    var var_3 = 0u;
    return Struct_2(func_1());
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 20>();
    var var_0 = func_4(Struct_3(abs(~(vec4<u32>(0u, 21423u, 1u, 63028u) ^ vec4<u32>(1u, 100114u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(76768u, 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2643u, 20u)], 20u)]))), func_1(), global1[_wgslsmith_index_u32(4294967295u, 20u)], vec3<i32>(u_input.d.x, -2785i, firstTrailingBit(firstLeadingBit(-1i))), func_1()), u_input.a, u_input.a, Struct_3(~(vec4<u32>(27390u, u_input.a, u_input.a, 8702u) >> (~vec4<u32>(u_input.a, 44419u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 20u)]) % vec4<u32>(32u))), Struct_1(true & func_1().b.x, vec3<bool>(all(vec4<bool>(true, false, true, false)), any(vec3<bool>(false, true, true)), all(vec2<bool>(true, true))), ~reverseBits(vec3<u32>(45244u, 4294967295u, 13779u))), ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(54681u, 20u)], u_input.a, 64288u), u_input.a), 20u)], select(-vec3<i32>(u_input.d.x, u_input.c, global2.x), vec3<i32>(u_input.e.x, -7788i, u_input.b.x), true) >> (vec3<u32>(func_1().c.x, ~0u, u_input.a | u_input.a) % vec3<u32>(32u)), Struct_1(true, vec3<bool>(false, true, select(true, true, false)), ~(~vec3<u32>(u_input.a, 0u, 37697u)))));
    let var_1 = Struct_4(var_0.a, var_0.a.c);
    let var_2 = var_1;
    var var_3 = Struct_2(var_1.a);
    global3 = array<vec2<f32>, 24>();
    let var_4 = vec3<bool>(var_2.a.a, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~select(1036u, 4294967295u, var_3.a.a), 20u)], u_input.a) <= _wgslsmith_mod_u32(var_2.b.x, firstLeadingBit(func_1().c.x)), all(!var_1.a.b.xz));
    global1 = array<u32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(vec3<i32>(-1i) * -vec3<i32>(global2.x, -20974i, global2.x)), ~(countOneBits(vec3<i32>(global2.x, -60128i, u_input.b.x)) | -vec3<i32>(-12835i, -10902i, 0i)), var_3.a.a), 38227u, min(vec2<i32>(56787i, ~_wgslsmith_mult_i32(u_input.d.x, u_input.b.x)), vec2<i32>(1i, global2.x) >> (vec2<u32>(var_3.a.c.x, 10905u) % vec2<u32>(32u))), -_wgslsmith_mult_i32(select(0i, -40749i, false), ~reverseBits(global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-696f, -484f), _wgslsmith_f_op_f32(-620f + -878f), -500f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-994f, -1009f, 795f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-739f, -857f, -1000f))))))));
}

