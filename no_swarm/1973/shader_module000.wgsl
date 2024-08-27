struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: u32 = 0u;

var<private> global2: array<vec4<f32>, 28>;

var<private> global3: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2() -> vec3<bool> {
    global1 = u_input.c;
    let var_0 = global3.d;
    var var_1 = u_input.b.x;
    var var_2 = global3.c.c.zxw;
    let var_3 = global0[_wgslsmith_index_u32(8676u, 1u)];
    return var_3.d.zww;
}

fn func_1() -> f32 {
    var var_0 = !select(!vec3<bool>(false & global3.d.x, all(global3.d), u_input.d == global3.e.c.x), global3.d.yyy, true);
    let var_1 = firstLeadingBit(-66694i);
    var_0 = func_2();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~global3.c.c.x, ~global3.c.c.x), 22921u), 28u)]));
    var var_3 = vec4<i32>(countOneBits(_wgslsmith_div_i32(var_1, 2147483647i)), u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1808i, var_1, -1i >> (global3.c.c.x % 32u)), reverseBits(vec3<i32>(var_1, u_input.b.x, -4546i))), ~u_input.b.x);
    return global3.c.a.x;
}

fn func_3() -> f32 {
    var var_0 = ~(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, ~u_input.b.x, ~(-10458i)), (vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x) & vec4<i32>(50637i, 41456i, 2147483647i, u_input.b.x)) & (vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<i32>(u_input.b.x, -5093i, u_input.b.x, u_input.b.x))) | vec4<i32>(~u_input.b.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2080i, u_input.b.x), vec4<i32>(-35558i, u_input.b.x, -1i, 0i)), u_input.b.x, -(~u_input.b.x)));
    var var_1 = !global3.d.xyx;
    let var_2 = select(false, !var_1.x, false) | all(vec3<bool>(true, !global3.d.x, true));
    var var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(~var_0.x, ~var_0.x), _wgslsmith_mult_i32(2147483647i, var_0.x), u_input.b.x, _wgslsmith_clamp_i32(var_0.x, _wgslsmith_mult_i32(var_0.x, var_0.x), var_0.x)), vec4<i32>(1i, abs(20340i ^ var_0.x), abs(var_0.x), ~reverseBits(-2147483647i))), ~(~(-19111i)), firstLeadingBit(~min(u_input.b.x, ~2147483647i)), reverseBits(u_input.b.x));
    global3 = global0[_wgslsmith_index_u32(3148u, 1u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.b.x, -543f))) - -971f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 1>();
    global3 = Struct_2(vec4<u32>(~1u, ~(~global3.c.c.x) & _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c, 4294967295u), u_input.c | 1u), 19638u, global3.c.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.e.a.x, 768f, 1250f), vec3<f32>(global3.e.b, global3.c.b, 972f))) + vec3<f32>(global3.e.b, global3.b.x, global3.b.x))) * vec3<f32>(global3.b.x, global3.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * 1582f))), Struct_1(global3.e.a, _wgslsmith_f_op_f32(select(-346f, _wgslsmith_f_op_f32(func_3()), true)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(global3.e.c) ^ ~global3.e.c, max(~vec4<u32>(global3.c.c.x, u_input.c, global3.e.c.x, 42365u), global3.c.c), ~(~global3.c.c))), global3.d, global3.c);
    var var_0 = Struct_3(global3.d.x, _wgslsmith_sub_vec4_i32(countOneBits(~firstTrailingBit(vec4<i32>(30434i, u_input.b.x, -18335i, u_input.b.x))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, -68410i, u_input.b.x, -46537i)), vec4<i32>(u_input.b.x, 77007i, 61462i, u_input.b.x) | vec4<i32>(-23367i, u_input.b.x, -2147483647i, u_input.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-25279i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 21717i, u_input.b.x, u_input.b.x)) & -vec4<i32>(u_input.b.x, 1i, -1i, u_input.b.x))), !any(vec4<bool>(false, global3.d.x, all(global3.d.wy), global3.d.x)), firstLeadingBit(global3.e.c.www), abs(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.b.x, 2147483647i, 0i), vec4<i32>(-2147483647i, 29857i, -2147483647i, u_input.b.x), vec4<i32>(13232i, 23076i, u_input.b.x, u_input.b.x)), abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i)))) & vec4<i32>(-53537i >> (_wgslsmith_add_u32(0u, u_input.a.x) % 32u), -min(1i, 0i), -select(u_input.b.x, u_input.b.x, global3.d.x), u_input.b.x));
    var var_1 = Struct_3(true, -var_0.e, !(!all(vec3<bool>(false, true, true))) || true, var_0.d, ~vec4<i32>(~22466i, 23911i >> (u_input.d % 32u), reverseBits(-35328i), abs(u_input.b.x)) ^ countOneBits(vec4<i32>(-11720i, var_0.e.x, u_input.b.x, 1i)));
    global0 = array<Struct_2, 1>();
    var var_2 = 47827u > ~global3.c.c.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.e.a.x, 1389f)), vec2<f32>(1026f, _wgslsmith_f_op_f32(step(1913f, global3.e.a.x))))), global3.b.x, global3.c.c);
    var_0 = Struct_3(var_0.c, var_1.e | var_0.b, true, (~_wgslsmith_mult_vec3_u32(vec3<u32>(12439u, 1u, var_0.d.x), var_1.d) | var_3.c.yyx) ^ ~_wgslsmith_clamp_vec3_u32(~global3.c.c.ywz, vec3<u32>(7045u, global3.e.c.x, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.c.x, var_0.d.x, 43900u), vec3<u32>(37446u, 4294967295u, u_input.a.x))), reverseBits(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 22980i), var_1.b)) << (vec4<u32>(abs(23147u), firstTrailingBit(10741u), ~32546u, ~var_0.d.x) % vec4<u32>(32u))));
    let var_4 = vec2<i32>(_wgslsmith_div_i32(u_input.b.x, 1i ^ u_input.b.x), -(u_input.b.x >> (0u % 32u))) << (abs(vec2<u32>(1u, _wgslsmith_clamp_u32(global3.e.c.x, u_input.d, 48466u)) >> (~(~var_3.c.wy) % vec2<u32>(32u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.d.x, 51183u, 38047u));
}

