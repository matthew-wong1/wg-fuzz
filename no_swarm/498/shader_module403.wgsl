struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26>;

var<private> global1: bool;

var<private> global2: vec3<f32> = vec3<f32>(-374f, 1000f, -155f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: u32, arg_3: vec4<f32>) -> vec3<i32> {
    var var_0 = 1u;
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(1i, 44825i, 44877i)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -71540i, -9237i), _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a.x, 0i), vec3<i32>(-23781i, -2147483647i, 1i)), vec3<i32>(u_input.a.x, 1i, u_input.a.x)), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(14013i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -22520i, u_input.a.x)), ~vec3<i32>(-28442i, u_input.a.x, -2147483647i)), _wgslsmith_sub_i32(u_input.a.x, -55534i))), u_input.a.x, u_input.a.x);
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(~(u_input.b.x ^ arg_2) & ((u_input.c.x >> (arg_2 % 32u)) << ((arg_2 << (u_input.c.x % 32u)) % 32u)), 56292u, select(u_input.c.x, 1u, any(vec2<bool>(arg_1.x, true))) & u_input.c.x, u_input.c.x), ~vec4<u32>(u_input.b.x, 1u, ~(~u_input.c.x), ~(~u_input.c.x)));
    let var_3 = ~u_input.a.x < (-1i ^ max(select(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.a.x, 2147483647i), var_1), true), ~34095i));
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_3.zyw)), vec3<f32>(arg_0, arg_3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-285f - -902f))))));
    return abs(_wgslsmith_mod_vec3_i32(abs(~(var_1 & var_1)), _wgslsmith_add_vec3_i32(select(var_1, ~var_1, true), _wgslsmith_mult_vec3_i32(firstTrailingBit(var_1), vec3<i32>(u_input.a.x, u_input.a.x, var_1.x)))));
}

fn func_2() -> Struct_5 {
    let var_0 = -229f;
    let var_1 = Struct_2(Struct_1(global2.xz, ~(~func_3(1046f, vec2<bool>(false, false), u_input.c.x, vec4<f32>(var_0, global2.x, -1378f, var_0))), var_0, !any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false)), select(!global0[_wgslsmith_index_u32(26670u, 26u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 71950u, u_input.b.x), ~vec3<u32>(73434u, u_input.c.x, 1u)), 26u)], true)), Struct_1(_wgslsmith_f_op_vec2_f32(-global2.zy), -abs(vec3<i32>(1i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(920f - _wgslsmith_f_op_f32(max(global2.x, -541f)))), false, select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)], true), all(vec4<bool>(true, false, false, true))), true)), 16375u);
    let var_2 = select(reverseBits(vec2<u32>(abs(u_input.b.x ^ var_1.c), u_input.b.x)), u_input.c, vec2<bool>(var_1.b.e.x, var_1.a.d));
    global0 = array<vec2<bool>, 26>();
    let var_3 = _wgslsmith_f_op_f32(-var_0);
    return Struct_5(var_1.a, ~vec2<i32>(25847i, _wgslsmith_div_i32(var_1.a.b.x, u_input.a.x)));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = ~u_input.b;
    let var_1 = func_2();
    var_0 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(~var_0.x), 53571u, 1u), select(vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, var_0.x, var_0.x), _wgslsmith_mod_u32(53437u, 1u), 32916u), vec3<u32>(7775u, u_input.c.x, 23158u), select(vec3<bool>(true, false, var_1.a.d), vec3<bool>(var_1.a.d, var_1.a.e.x, false), true)), max(reverseBits(vec3<u32>(var_0.x, 4294967295u, u_input.b.x)), ~u_input.b) << (~countOneBits(u_input.b) % vec3<u32>(32u)));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~u_input.b.x, 42668u), _wgslsmith_add_u32(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(7251u, 17504u, u_input.c.x), vec3<u32>(6809u, var_0.x, 20090u)))), _wgslsmith_mult_vec2_u32(firstLeadingBit(var_0.yz), vec2<u32>(49336u, var_0.x) ^ abs(vec2<u32>(62041u, var_0.x)))), _wgslsmith_clamp_u32(92455u, ~(u_input.c.x ^ ~u_input.c.x), var_0.x));
    global1 = true;
    return _wgslsmith_mod_u32(~_wgslsmith_div_u32(abs(var_2.x >> (32193u % 32u)), min(var_2.x, 22798u)), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 26>();
    var var_0 = -_wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x);
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(-1340f * global2.x), -944f);
    let var_1 = Struct_5(Struct_1(global2.zx, max(~vec3<i32>(u_input.a.x, u_input.a.x, 1i), -vec3<i32>(u_input.a.x, 14100i, u_input.a.x) ^ vec3<i32>(1i, 0i, -38229i)), global2.x, !(true && (global2.x >= global2.x)), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(firstLeadingBit(u_input.c.x), ~23774u), 26u)]), vec2<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)));
    var var_2 = var_1.a.e.x;
    var_0 = 1i;
    let var_3 = !(!vec3<bool>(var_1.a.d, var_1.a.d, false));
    var var_4 = ~(~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-12041i, min(abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_1.a.b.x, 1i, 33108i), vec4<i32>(2147483647i, -1999i, u_input.a.x, var_1.a.b.x))), select(~(vec4<i32>(2147483647i, -1i, var_1.a.b.x, -18627i) & vec4<i32>(u_input.a.x, 36268i, var_4.x, var_1.a.b.x)), vec4<i32>(0i, 3174i, -17767i, var_4.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.b.x, 1u, 30280u, 10486u)) % vec4<u32>(32u)), var_1.a.e.x)), firstTrailingBit(vec4<i32>(~firstTrailingBit(var_4.x), -205i, -2147483647i, var_4.x)), reverseBits(func_1(_wgslsmith_f_op_f32(-global2.x))), vec3<i32>(-2147483647i, _wgslsmith_add_i32(u_input.a.x, firstTrailingBit(-74812i)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.b.x, -71653i, var_4.x, -2147483647i), vec4<i32>(u_input.a.x, var_1.a.b.x, -7667i, u_input.a.x)), vec4<i32>(-2147483647i, 0i, -1i, -12374i))) & vec3<i32>(var_4.x, -min(var_4.x, var_1.b.x), var_4.x));
}

