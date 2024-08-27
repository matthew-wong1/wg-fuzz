struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(0u, 16420u, 4294967295u, 0u, 1u, 1u, 1u, 0u, 27351u, 34948u, 11414u, 0u, 1u, 72156u, 37916u, 4294967295u, 0u, 29931u);

var<private> global1: array<Struct_5, 19>;

var<private> global2: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(true);
    global1 = array<Struct_5, 19>();
    global1 = array<Struct_5, 19>();
    var var_1 = vec3<f32>(-1304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-643f)) - 2013f), _wgslsmith_f_op_f32(floor(129f)));
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), 31367u), global0[_wgslsmith_index_u32(0u, 18u)]);
    return _wgslsmith_f_op_f32(var_1.x * var_1.x);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(455f)) * _wgslsmith_f_op_f32(1555f - 977f)))), _wgslsmith_f_op_f32(696f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1644f)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(162f * 1000f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-467f + 1518f)))), 817f, -1583f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-537f)))))));
    var var_1 = Struct_3(false);
    var var_2 = ~1u;
    var_2 = reverseBits(25440u);
    global2 = vec3<i32>(~(-43141i), _wgslsmith_mod_i32(0i, (global2.x & u_input.b.x) & select(u_input.b.x, 39646i, var_1.a)), u_input.b.x) << (vec3<u32>(_wgslsmith_sub_u32(~max(global0[_wgslsmith_index_u32(4294967295u, 18u)], 5132u), 4294967295u), firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(30289u, u_input.c.x, global0[_wgslsmith_index_u32(1u, 18u)]), min(u_input.c.yxx, vec3<u32>(0u, 4294967295u, u_input.a.x)))), 3113u) % vec3<u32>(32u));
    return Struct_2(abs(1u), Struct_1(_wgslsmith_f_op_f32(-var_0.x), firstTrailingBit(vec3<i32>(max(u_input.b.x, global2.x), 26523i, firstTrailingBit(u_input.b.x))), ~global2.x));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = arg_0.b;
    global1 = array<Struct_5, 19>();
    let var_1 = Struct_4(arg_0, any(vec2<bool>(true, true)), Struct_3(all(vec2<bool>(true, true))));
    let var_2 = false;
    let var_3 = vec4<i32>(min(var_1.a.b.b.x, 27258i), _wgslsmith_mod_i32(-_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, u_input.b.x), 2147483647i), var_1.a.b.b.x), _wgslsmith_mod_i32(-2147483647i, global2.x), (u_input.b.x & max(2147483647i, ~var_0.b.x)) >> (var_1.a.a % 32u));
    return Struct_3(var_2);
}

fn func_1(arg_0: u32) -> vec3<i32> {
    global0 = array<u32, 18>();
    global2 = ~(abs(u_input.b) << (vec3<u32>(~71297u, _wgslsmith_add_u32(~u_input.c.x, u_input.a.x), u_input.c.x) % vec3<u32>(32u)));
    let var_0 = true;
    var var_1 = func_4(func_2());
    global1 = array<Struct_5, 19>();
    return _wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_mod_vec2_i32(global2.yz, u_input.b.zx)), -22699i, _wgslsmith_dot_vec3_i32(min(u_input.b, u_input.b), abs(u_input.b)) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24094u, 18u)], 18u)], 62794u), u_input.c.zx), ~0u) % 32u)), vec3<i32>(_wgslsmith_add_i32(min(max(global2.x, 2147483647i), firstTrailingBit(u_input.b.x)), -38355i << (u_input.a.x % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, 2147483647i) & vec3<i32>(2147483647i, global2.x, -1i), -u_input.b), abs(~vec3<i32>(u_input.b.x, global2.x, global2.x))), max(2147483647i, _wgslsmith_mult_i32(i32(-1i) * -25755i, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 19>();
    let var_0 = (_wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(28236i, 40453i, 2147483647i), u_input.b, func_1(u_input.c.x))) == -u_input.b.x) & ((_wgslsmith_add_i32(1i, u_input.b.x) == global2.x) & any(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_div_vec3_u32(reverseBits(~select(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74040u, 18u)], 18u)], 1u), ~u_input.a, true)), ~reverseBits(u_input.c.yyw));
    let var_2 = abs(~(global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.c.x), 18u)] | 1u));
    let var_3 = Struct_2(_wgslsmith_div_u32(~func_2().a, var_2), Struct_1(func_2().b.a, u_input.b & select(max(vec3<i32>(63291i, global2.x, global2.x), u_input.b), u_input.b | u_input.b, any(vec4<bool>(var_0, true, false, true))), ~(~(~global2.x))));
    global1 = array<Struct_5, 19>();
    let var_4 = Struct_4(var_3, var_0, Struct_3(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, var_4.a.b.a, u_input.b.x, u_input.c.x, _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.a.xz), 4294967295u & var_2), abs(u_input.c)));
}

