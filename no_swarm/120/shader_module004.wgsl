struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: Struct_4 = Struct_4(vec2<i32>(-3562i, -5096i), vec3<i32>(-7653i, 1i, -6578i), Struct_3(Struct_2(vec4<u32>(26442u, 0u, 48455u, 38812u), 0i, Struct_1(vec3<f32>(-1028f, 1612f, -788f), -1259f, vec3<i32>(-13041i, 1i, -5838i), vec4<i32>(15328i, 0i, -38824i, -6982i))), false, Struct_1(vec3<f32>(488f, 1091f, -1219f), -1648f, vec3<i32>(-1i, -18331i, 46617i), vec4<i32>(2147483647i, i32(-2147483648), -2348i, -32915i))));

var<private> global2: vec4<u32>;

var<private> global3: array<bool, 16> = array<bool, 16>(false, false, false, false, true, false, false, false, false, false, false, false, false, true, true, true);

var<private> global4: array<vec4<f32>, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<i32> {
    global2 = _wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, ~(~max(37629u, global1.c.a.a.x)), 56884u, min(global1.c.a.a.x, 1u & _wgslsmith_add_u32(global2.x, global2.x))), countOneBits(~global1.c.a.a));
    global2 = vec4<u32>(1u, abs(0u), global2.x & global2.x, 27720u ^ firstLeadingBit(global1.c.a.a.x | global2.x));
    global3 = array<bool, 16>();
    var var_0 = global2.x;
    var var_1 = vec4<f32>(global1.c.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -181f), -574f, _wgslsmith_f_op_f32(-global1.c.c.a.x));
    return global1.b;
}

fn func_2() -> Struct_1 {
    let var_0 = ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(7186u, global2.x, 27295u, 43515u) << (~vec4<u32>(0u, u_input.b.x, 30241u, global2.x) % vec4<u32>(32u)), u_input.b) ^ 4294967295u);
    global1 = Struct_4(vec2<i32>(_wgslsmith_sub_i32(~countOneBits(1i), _wgslsmith_add_i32(global1.b.x, 1i << (global2.x % 32u))), global1.c.c.c.x), min(func_3(), min(_wgslsmith_add_vec3_i32(-global1.c.c.d.wxy, abs(global1.b)), global1.b)), Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 24138u), 18u)], !(global3[_wgslsmith_index_u32(42842u, 16u)] & all(vec3<bool>(global1.c.b, global3[_wgslsmith_index_u32(61192u, 16u)], true))), global1.c.c));
    global3 = array<bool, 16>();
    global4 = array<vec4<f32>, 15>();
    var var_1 = global1.c.c;
    return global1.c.a.c;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_2(global1.c.a.a, _wgslsmith_mult_i32(1i, 2147483647i), func_2());
    global0 = array<Struct_2, 18>();
    var var_1 = global1.c.c;
    global3 = array<bool, 16>();
    global2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(global2.x), u_input.b.x, ~_wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, ~1u), 0u), _wgslsmith_mult_vec4_u32(firstTrailingBit(~_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(47997u, 65922u, 1u, 0u))), ~vec4<u32>(79237u, global2.x, var_0.a.x, var_0.a.x) >> (reverseBits(vec4<u32>(u_input.b.x, var_0.a.x, arg_0.x, arg_0.x)) % vec4<u32>(32u))), var_0.a);
    return !(!select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(12627u, 16u)], true, false), vec3<bool>(true, global3[_wgslsmith_index_u32(global2.x, 16u)], global1.c.b), vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 16u)], global3[_wgslsmith_index_u32(18708u, 16u)], true)), vec3<bool>(global3[_wgslsmith_index_u32(arg_0.x, 16u)], global3[_wgslsmith_index_u32(global2.x, 16u)], global1.c.b), vec3<bool>(false, true, true)), vec3<bool>(global1.c.b | global1.c.b, true, global3[_wgslsmith_index_u32(var_0.a.x, 16u)]), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(26283u, u_input.b.x, ~global2.x, u_input.b.x)), max(vec4<u32>(~5896u, ~0u, global1.c.a.a.x & global2.x, global1.c.a.a.x), ~(~vec4<u32>(global1.c.a.a.x, 0u, 13319u, 1u))), vec4<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(0u, global1.c.a.a.x)), 21201u, u_input.b.x, ~1u)));
    global4 = array<vec4<f32>, 15>();
    let var_1 = select(select(!select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], false, true), select(vec3<bool>(global3[_wgslsmith_index_u32(78127u, 16u)], false, global1.c.b), vec3<bool>(global1.c.b, false, global3[_wgslsmith_index_u32(global2.x, 16u)]), global1.c.b), global1.c.b), vec3<bool>(true, ~global1.a.x > select(41779i, -16955i, false), any(select(vec4<bool>(global1.c.b, global1.c.b, true, false), vec4<bool>(global1.c.b, false, false, global1.c.b), vec4<bool>(false, true, global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(1u, 16u)])))), select(vec3<bool>(true, global3[_wgslsmith_index_u32(46363u, 16u)], !global3[_wgslsmith_index_u32(global2.x, 16u)]), select(select(vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 16u)], global1.c.b, false), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 16u)], false, false), true), vec3<bool>(false, true, global1.c.b), select(vec3<bool>(global3[_wgslsmith_index_u32(672u, 16u)], true, true), vec3<bool>(true, false, true), false)), false)), !select(!vec3<bool>(global1.c.b, global3[_wgslsmith_index_u32(global2.x, 16u)], global1.c.b), func_1(abs(global2.yyx), _wgslsmith_f_op_vec2_f32(global1.c.a.c.a.yz + global1.c.c.a.yz)), !select(vec3<bool>(global3[_wgslsmith_index_u32(16832u, 16u)], global3[_wgslsmith_index_u32(global1.c.a.a.x, 16u)], global1.c.b), vec3<bool>(true, false, false), global3[_wgslsmith_index_u32(global2.x, 16u)])), select(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1.c.a.a, firstTrailingBit(var_0)), 16u)], global3[_wgslsmith_index_u32(u_input.b.x, 16u)], true), select(vec3<bool>(func_1(vec3<u32>(u_input.b.x, u_input.b.x, 48032u), global1.c.a.c.a.zz).x, all(vec4<bool>(global1.c.b, global1.c.b, global1.c.b, global3[_wgslsmith_index_u32(21646u, 16u)])), true), !func_1(global2.wzw, global1.c.a.c.a.xz), !func_1(vec3<u32>(global1.c.a.a.x, global1.c.a.a.x, 11432u), vec2<f32>(192f, global1.c.c.a.x))), func_1(vec3<u32>(_wgslsmith_sub_u32(1u, global2.x), global1.c.a.a.x, ~25796u), vec2<f32>(global1.c.a.c.b, _wgslsmith_div_f32(global1.c.c.b, 127f)))));
    var var_2 = global1.c.a.c.d;
    global4 = array<vec4<f32>, 15>();
    let var_3 = _wgslsmith_mod_u32(global2.x >> (reverseBits(~4294967295u) % 32u), _wgslsmith_dot_vec4_u32(global1.c.a.a, vec4<u32>(select(min(var_0.x, 1u), global1.c.a.a.x, true), global2.x >> (_wgslsmith_mult_u32(5831u, 0u) % 32u), u_input.b.x, 1u)));
    global2 = countOneBits(~(~min(u_input.b, var_0) ^ abs(u_input.b)));
    var var_4 = vec2<f32>(-212f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.c.b))))));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(max(-vec4<i32>(i32(-1i) * -8156i, _wgslsmith_div_i32(global1.a.x, u_input.a.x), u_input.a.x, ~2147483647i), ~(-global1.c.a.c.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.a.c.a.x), -186f), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(20666i, ~var_2.x, i32(-1i) * -1i, _wgslsmith_div_i32(-1i, 23130i)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.a.x, u_input.a.x, 59374i, -2147483647i), vec4<i32>(u_input.a.x, var_2.x, var_2.x, -1i))), vec4<i32>(~31856i, u_input.a.x, global1.b.x, ~(~global1.b.x))), -2161f, var_2.zzw);
}

