struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, false, true), vec3<u32>(1u, 5067u, 52689u), Struct_1(vec2<f32>(829f, -1143f), vec2<i32>(-6137i, 11259i)), Struct_1(vec2<f32>(-649f, -131f), vec2<i32>(i32(-2147483648), -28771i)));

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<u32, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), 692f), arg_1));
    global2 = array<Struct_2, 1>();
    var var_1 = Struct_2(select(global1.a, global1.a, global1.a), _wgslsmith_mod_vec3_u32(global1.b, ~global1.b) & ~min(max(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(112985u, 7u)], 7u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), global1.b), min(global1.b, vec3<u32>(9201u, 10227u, 37508u))), Struct_1(global1.d.a, select(firstTrailingBit(vec2<i32>(u_input.a, global1.d.b.x)), vec2<i32>(u_input.a, ~(-1i)), global1.a.xy)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1470f), 239f), vec2<i32>(-60288i, 29275i)));
    let var_2 = Struct_2(var_1.a, ~global1.b, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1001f, 699f)), 566f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.a * vec2<f32>(global1.c.a.x, 193f)) + vec2<f32>(105f, -1000f))), vec2<i32>(~(-28387i), -1i)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_1, vec2<f32>(var_1.c.a.x, arg_1.x)), _wgslsmith_div_vec2_f32(arg_1, vec2<f32>(var_1.c.a.x, var_1.c.a.x)), global1.a.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.d.b.x, global1.d.b.x) & -vec2<i32>(var_1.d.b.x, -1247i), select(firstLeadingBit(vec2<i32>(20248i, global1.d.b.x)), global1.d.b | u_input.b.zz, u_input.b.x <= 41639i))));
    global1 = Struct_2(var_2.a, ~vec3<u32>(select(41051u, _wgslsmith_sub_u32(0u, var_1.b.x), arg_1.x <= arg_1.x), select(var_1.b.x, 1u, false) >> (var_1.b.x % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(42839u, var_1.b.x, var_1.b.x, var_1.b.x), vec4<u32>(49705u, 0u, 1u, 30287u))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.d.a.x, arg_0)))) + vec2<f32>(_wgslsmith_f_op_f32(var_2.d.a.x * var_2.d.a.x), _wgslsmith_f_op_f32(abs(var_1.d.a.x)))), var_2.c.b), var_2.c);
    return arg_1;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global1.a, ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(global1.b, vec3<u32>(global1.b.x, global3[_wgslsmith_index_u32(83315u, 7u)], global1.b.x)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 4294967295u), global1.b), global1.b), global1.c, global0[_wgslsmith_index_u32(~global1.b.x, 32u)]);
    global2 = array<Struct_2, 1>();
    var var_1 = !global1.a.x;
    global0 = array<Struct_1, 32>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(var_0.c.a.x, vec2<f32>(_wgslsmith_f_op_f32(step(var_0.d.a.x, _wgslsmith_f_op_f32(max(global1.c.a.x, var_0.d.a.x)))), global1.d.a.x))), var_0.c.b);
    return Struct_2(!(!select(!var_0.a, vec3<bool>(global1.a.x, true, false), select(var_0.a, var_0.a, true))), _wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(var_0.b, vec3<u32>(global3[_wgslsmith_index_u32(28682u, 7u)], 7586u, 0u)), min(vec3<u32>(var_0.b.x, var_0.b.x, 1u), vec3<u32>(var_0.b.x, 4294967295u, global1.b.x)))), global1.b), var_0.d, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global1.c.a)) + _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(func_3(453f, vec2<f32>(-628f, 360f))).x, _wgslsmith_f_op_vec2_f32(-global1.c.a)))), _wgslsmith_div_vec2_i32(var_2.b, -vec2<i32>(-51791i, -1i)) ^ firstTrailingBit(firstTrailingBit(vec2<i32>(0i, -12639i)))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(5711u, 7u)], _wgslsmith_mod_u32(global1.b.x, 41287u));
    global2 = array<Struct_2, 1>();
    var var_1 = ~max(vec4<i32>(_wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(0i, global1.d.b.x)), _wgslsmith_dot_vec4_i32(u_input.b << (vec4<u32>(global3[_wgslsmith_index_u32(50369u, 7u)], global1.b.x, global1.b.x, 0u) % vec4<u32>(32u)), -u_input.b), _wgslsmith_add_i32(global1.c.b.x, -2147483647i) ^ ~u_input.a, u_input.b.x), -u_input.b << (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.b.x, 7u)], 7u)], 1u, global3[_wgslsmith_index_u32(global1.b.x, 7u)], 15112u), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global1.b.x, 7u)], global3[_wgslsmith_index_u32(3998u, 7u)], 13050u)), vec4<u32>(1u, global1.b.x, 23135u, global3[_wgslsmith_index_u32(4294967295u, 7u)])) % vec4<u32>(32u)));
    global1 = func_2();
    var var_2 = _wgslsmith_div_u32(global1.b.x, reverseBits(50702u));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(~(~global1.b)), vec3<u32>(~global3[_wgslsmith_index_u32(42008u, 7u)], func_2().b.x, 55443u & global1.b.x) << (vec3<u32>(4294967295u << (0u % 32u), _wgslsmith_add_u32(19875u, 1u), ~global1.b.x) % vec3<u32>(32u))), ~(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 44837u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.b.x, 7u)], 7u)]), vec3<u32>(global1.b.x, global1.b.x, 81293u), global1.b), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 7u)], 67114u, 1u)) & ~reverseBits(global1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(global1.b.x, 0u), vec2<u32>(func_1(), global1.b.x));
    let var_1 = global0[_wgslsmith_index_u32(~global1.b.x, 32u)];
    var var_2 = ((select(-vec4<i32>(-13267i, global1.d.b.x, 1i, var_1.b.x), u_input.b, global1.a.x) ^ ~u_input.b) ^ u_input.b) | abs(firstTrailingBit(abs(~vec4<i32>(0i, -30843i, global1.d.b.x, 26577i))));
    let var_3 = u_input.b.wz;
    var var_4 = Struct_2(func_2().a, vec3<u32>(1u, ~(firstLeadingBit(var_0.x) & 1u), 1u), global0[_wgslsmith_index_u32(min(~_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global1.b.x, 7u)] & 0u, var_0.x, ~1u), global1.b.x), 32u)], func_2().c);
    var var_5 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(var_0.x), 5383u, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0.x, max(var_4.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.b.x, 7u)], 7u)], 7u)])), 7u)], global3[_wgslsmith_index_u32(abs(global1.b.x), 7u)]), ~(~(~vec4<u32>(var_4.b.x, var_4.b.x, 1u, 1u))), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 4294967295u, 38646u), vec4<u32>(52672u, _wgslsmith_clamp_u32(1u, 1u, 7716u), var_4.b.x, var_0.x))), countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(19603u, var_4.b.x, var_0.x, 13834u), vec4<u32>(var_0.x, var_0.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], var_4.b.x)), ~vec4<u32>(1u, 0u, global3[_wgslsmith_index_u32(4294967295u, 7u)], var_0.x)) ^ select(_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(var_4.b.x, 7u)], global3[_wgslsmith_index_u32(var_0.x, 7u)], global1.b.x), vec4<u32>(var_0.x, 17800u, global1.b.x, 1u)), vec4<u32>(global3[_wgslsmith_index_u32(global1.b.x, 7u)], 10630u, 0u, var_4.b.x) << (vec4<u32>(5824u, var_4.b.x, 90176u, global1.b.x) % vec4<u32>(32u)), any(vec2<bool>(true, var_4.a.x)))));
    global2 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(203f, var_4.d.a.x)), global1.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-(~(-31347i)), _wgslsmith_dot_vec2_i32(var_2.yx, select(global1.d.b, vec2<i32>(var_4.c.b.x, var_2.x), true)), _wgslsmith_div_i32(var_2.x << (var_4.b.x % 32u), u_input.a), _wgslsmith_clamp_i32(i32(-1i) * -60994i, var_4.c.b.x >> (0u % 32u), _wgslsmith_add_i32(var_1.b.x, -27467i)))), 4294967295u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1968f * -1110f)))), var_1.a.x)));
}

