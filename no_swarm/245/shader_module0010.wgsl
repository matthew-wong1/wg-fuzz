struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<i32, 17> = array<i32, 17>(-68467i, 1i, -3568i, 8813i, 13386i, -1i, i32(-2147483648), -31898i, 0i, i32(-2147483648), 0i, 1i, 2147483647i, 1i, i32(-2147483648), 11896i, 4629i);

var<private> global2: array<Struct_4, 3>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mod_vec2_i32(max(vec2<i32>(_wgslsmith_div_i32(u_input.c, _wgslsmith_add_i32(-2147483647i, 43565i)), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(30959u, 17u)], 1i)), arg_2.c.xz), vec2<i32>(0i, firstLeadingBit(_wgslsmith_mult_i32(~(-38053i), 1i))));
    global1 = array<i32, 17>();
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(arg_0, arg_0), true, _wgslsmith_mult_vec4_i32(arg_2.c, firstTrailingBit(arg_2.c)));
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_2.a.x, var_1.a.x), ~arg_2.a.x), arg_2.a.x, arg_0.x, _wgslsmith_clamp_u32(53463u, firstTrailingBit(1u), arg_2.a.x ^ 4294967295u)) | firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, arg_0.x, 2347u, arg_0.x), arg_2.a, var_1.a) & (vec4<u32>(var_1.a.x, 27281u, arg_0.x, arg_2.a.x) << (u_input.b % vec4<u32>(32u)))), arg_2.b, _wgslsmith_div_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(var_1.c, var_1.c)), vec4<i32>(-countOneBits(1i), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(21898u << (var_1.a.x % 32u), 17u)], _wgslsmith_div_i32(u_input.c, var_1.c.x)), -2147483647i, 1i)));
    global1 = array<i32, 17>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(336f)) - _wgslsmith_f_op_f32(-global0.x)))))), _wgslsmith_f_op_f32(floor(-1000f)));
}

fn func_2() -> Struct_4 {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), 364f, _wgslsmith_f_op_f32(func_3(~vec4<u32>(1u, 0u, 0u, u_input.b.x), true, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.a.x), true, vec4<i32>(global1[_wgslsmith_index_u32(0u, 17u)], -1i, global1[_wgslsmith_index_u32(0u, 17u)], -2147483647i)))), -170f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-263f, global0.x, global0.x, 598f), vec4<f32>(1580f, 869f, 703f, 775f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1685f, -155f, global0.x, 1365f)))) * vec4<f32>(_wgslsmith_f_op_f32(step(1428f, 1000f)), _wgslsmith_f_op_f32(step(global0.x, 1000f)), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(1044f + 136f)))));
    let var_0 = true;
    var var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 3u)];
    var var_2 = global2[_wgslsmith_index_u32(~43778u, 3u)];
    var var_3 = var_1.b.d.x;
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~min(_wgslsmith_dot_vec2_u32(var_1.a.c.a.yw, vec2<u32>(52151u, var_1.b.c.x)), min(u_input.b.x >> (u_input.b.x % 32u), abs(u_input.b.x))), 41599u), 3u)];
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> Struct_2 {
    let var_0 = u_input.a.x;
    return Struct_2(vec2<f32>(arg_1.b.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.a.x), 267f))))), arg_1.b.b, arg_1.b.c, vec2<bool>(_wgslsmith_div_i32(1i, ~global1[_wgslsmith_index_u32(0u, 17u)]) > -(arg_1.b.b.x << (5993u % 32u)), all(!arg_1.b.d)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = func_4(44103u <= _wgslsmith_add_u32(~1u, u_input.a.x), func_2());
    let var_1 = abs(_wgslsmith_div_vec2_u32(countOneBits(var_0.c.zx >> (vec2<u32>(1409u, 4294967295u) % vec2<u32>(32u))), max(~_wgslsmith_sub_vec2_u32(var_0.c.xz, var_0.c.zx), ~select(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.a.x), var_0.d))));
    var var_2 = _wgslsmith_f_op_f32(floor(global0.x));
    var var_3 = select(var_0.d, vec2<bool>(true, true), !var_0.d);
    let var_4 = -195f;
    return Struct_2(var_0.a, var_0.b, u_input.b.zwz, vec2<bool>(false, var_0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(vec2<i32>(u_input.d.x, -(i32(-1i) * -68379i))), true, Struct_1((firstTrailingBit(u_input.a) & u_input.b) & vec4<u32>(_wgslsmith_mult_u32(1u, u_input.b.x), u_input.a.x ^ 31388u, _wgslsmith_div_u32(41985u, 62471u), _wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(u_input.b.x, 55866u))), true, firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-18072i, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 1i, -27444i) & vec4<i32>(19739i, global1[_wgslsmith_index_u32(16871u, 17u)], 2147483647i, 7868i), vec4<i32>(u_input.c, u_input.d.x, u_input.d.x, global1[_wgslsmith_index_u32(0u, 17u)]), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(26034u, 17u)], u_input.c, 2147483647i)))), Struct_1(u_input.a, false, vec4<i32>(-57885i, (-14773i >> (u_input.b.x % 32u)) >> (select(u_input.b.x, 0u, true) % 32u), _wgslsmith_dot_vec4_i32(func_2().a.d.c, -vec4<i32>(-29608i, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 16405i, global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.yxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1000f, 380f), global0.zxz))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(global0.wwx, global0.wwz, all(vec2<bool>(false, false))))))));
    let var_1 = any(vec2<bool>(true, true));
    global0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-535f, -869f))), var_0.e.x, var_0.e.x)));
    global1 = array<i32, 17>();
    var_0 = Struct_3(var_0.a, var_1, func_2().a.c, Struct_1(vec4<u32>(countOneBits(~u_input.b.x), ~(~u_input.a.x), 64021u, var_0.a.c.x), true, var_0.c.c), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(26714i, u_input.d.x)).a.x * func_1(vec2<i32>(-1i, 50237i)).a.x), func_2().a.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) * 621f), _wgslsmith_f_op_f32(f32(-1f) * -552f), var_1))));
    global2 = array<Struct_4, 3>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(var_0.a.a - global0.xy), u_input.d, ~vec3<u32>(var_0.a.c.x, 0u, func_1(~u_input.d.xy).c.x), var_0.a.d);
    let var_3 = -global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.c.a.x, 28615u), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(52198u, countOneBits(var_2.b.x), _wgslsmith_div_i32(_wgslsmith_div_i32(func_4(true, Struct_4(Struct_3(Struct_2(vec2<f32>(303f, global0.x), var_0.a.b, u_input.b.wyw, var_2.d), var_2.d.x, Struct_1(vec4<u32>(var_2.c.x, 32717u, u_input.b.x, 1u), false, var_0.c.c), var_0.d, vec3<f32>(978f, -1773f, var_0.a.a.x)), var_0.a)).b.x, -16190i), max(var_2.b.x >> (1u % 32u), select(2147483647i, 2147483647i, var_0.d.b)) ^ var_2.b.x), _wgslsmith_f_op_vec2_f32(-global0.xz), ~abs(u_input.b.x >> (0u % 32u)));
}

