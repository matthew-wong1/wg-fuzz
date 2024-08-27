struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: vec4<i32> = vec4<i32>(-1i, -19865i, 1i, -59427i);

var<private> global2: Struct_2;

var<private> global3: array<f32, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2161f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)))), -(u_input.c << (vec4<u32>(global2.a.b.x, ~16072u, 0u, 47432u) % vec4<u32>(32u))));
    var var_1 = abs(~_wgslsmith_add_u32(u_input.a.x, abs(13393u)));
    let var_2 = arg_2.c.x;
    return var_0.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(func_3(arg_0.yy, Struct_5(1i), Struct_3(arg_1, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3[_wgslsmith_index_u32(103903u, 31u)], 871f, -419f))), vec4<u32>(0u, 121520u, 0u, 74536u) >> (vec4<u32>(global2.a.b.x, arg_2, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<bool>(global2.a.c.x, true, arg_1.c.x, false), arg_0.yz)))));
    var var_1 = global2.a.c.x;
    var var_2 = global2.a.c.x;
    global2 = global0[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(abs(firstTrailingBit(17293u)), 19376u), global2.a.b.x, arg_1.c.x), 32u)];
    global0 = array<Struct_2, 32>();
    return u_input.a;
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    let var_0 = Struct_5(~(~2147483647i));
    let var_1 = Struct_4(global3[_wgslsmith_index_u32(~(~(~min(74008u, arg_1.x))), 31u)], _wgslsmith_add_vec4_i32(u_input.c, _wgslsmith_add_vec4_i32(-u_input.c, vec4<i32>(_wgslsmith_dot_vec3_i32(global1.wxx, global1.xwx), global2.a.a.x, -29027i >> (arg_1.x % 32u), 0i))));
    var var_2 = select(func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a)) + _wgslsmith_f_op_f32(ceil(-170f))), global3[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.b.x, 37742u, global2.a.b.x, arg_2.x), vec4<u32>(66300u, 1u, 9271u, u_input.a.x)), 31u)])), global2.a, 89293u).x, max(~_wgslsmith_sub_u32(arg_2.x, u_input.a.x), global2.a.b.x) | _wgslsmith_dot_vec2_u32(~global2.a.b.zx, ~(~arg_2.xx)), arg_3);
    var var_3 = Struct_3(Struct_1(global1.xz, vec3<u32>(reverseBits(select(65318u, 15228u, arg_0)), firstTrailingBit(1u) ^ firstTrailingBit(99066u), min(1u, _wgslsmith_mod_u32(arg_2.x, 39328u))), select(vec3<bool>(arg_0 && global2.a.c.x, arg_3, all(global2.a.c)), select(vec3<bool>(true, arg_3, arg_3), select(vec3<bool>(arg_3, true, arg_3), global2.a.c, false), !arg_0), global2.a.c)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(517f, -483f, var_1.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_1.x, 31u)], -2127f, global3[_wgslsmith_index_u32(4294967295u, 31u)]) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_1.a), vec3<f32>(var_1.a, var_1.a, -707f))) + vec3<f32>(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(4294967295u, 31u)])), var_1.a, 463f)))), ~firstLeadingBit(~(~vec4<u32>(12616u, arg_2.x, arg_1.x, 27514u))), vec4<bool>(all(vec2<bool>(false, arg_0)), arg_0, true, !global2.a.c.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(firstTrailingBit(31761u), 31u)]))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~(~0u), 31u)] + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_1.x << (41759u % 32u), 31u)]))));
    global0 = array<Struct_2, 32>();
    return 0u;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = u_input.a;
    global0 = array<Struct_2, 32>();
    let var_1 = select(4294967295u, func_5(!(1i < global1.x) == global2.a.c.x, vec2<u32>(select(~4294967295u, 1u, true), ~abs(37246u)), func_4(vec3<f32>(-1930f, _wgslsmith_f_op_f32(func_3(vec2<f32>(global3[_wgslsmith_index_u32(61755u, 31u)], 3059f), Struct_5(u_input.c.x), Struct_3(global2.a, vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 31u)], -1008f, global3[_wgslsmith_index_u32(21738u, 31u)]), vec4<u32>(var_0.x, global2.a.b.x, global2.a.b.x, var_0.x), vec4<bool>(global2.a.c.x, true, global2.a.c.x, global2.a.c.x), vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 31u)], global3[_wgslsmith_index_u32(global2.a.b.x, 31u)])))), -1311f), Struct_1(-vec2<i32>(global1.x, global2.a.a.x), abs(u_input.a), global2.a.c), 4294967295u), false), true);
    global1 = u_input.c;
    let var_2 = ~var_0.x << (1u % 32u);
    return select(!vec4<bool>(global2.a.c.x, any(select(vec4<bool>(global2.a.c.x, global2.a.c.x, global2.a.c.x, true), vec4<bool>(global2.a.c.x, global2.a.c.x, global2.a.c.x, false), vec4<bool>(global2.a.c.x, global2.a.c.x, global2.a.c.x, false))), global2.a.c.x, global2.a.c.x & (27094u <= u_input.a.x)), !(!vec4<bool>(false, global2.a.c.x, global2.a.c.x || global2.a.c.x, all(vec4<bool>(global2.a.c.x, global2.a.c.x, false, true)))), !(!select(true, true, true)));
}

fn func_1() -> i32 {
    global2 = global0[_wgslsmith_index_u32(u_input.a.x & ~15043u, 32u)];
    let var_0 = any(select(func_2(u_input.a.x), !select(!vec4<bool>(global2.a.c.x, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(global2.a.c.x, true, global2.a.c.x, global2.a.c.x), vec4<bool>(global2.a.c.x, true, global2.a.c.x, false)), false), global2.a.c.x));
    global1 = u_input.c;
    var var_1 = Struct_5(u_input.b);
    let var_2 = true;
    return ~countOneBits(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mult_i32(u_input.b, func_1()));
    let var_1 = Struct_2(global2.a);
    global3 = array<f32, 31>();
    global0 = array<Struct_2, 32>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(554f, global3[_wgslsmith_index_u32(~u_input.a.x, 31u)])) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(0u, 31u)]))))))));
    var var_3 = Struct_1(reverseBits(vec2<i32>(u_input.b, ~(~u_input.c.x))), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.a.b.x, ~35658u, ~global2.a.b.x), ~(~vec3<u32>(0u, 1u, 4294967295u)), _wgslsmith_sub_vec3_u32(firstTrailingBit(u_input.a), ~vec3<u32>(var_1.a.b.x, u_input.a.x, 0u))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.a.b.x, u_input.a.x, 4294967295u), ~global2.a.b)), global2.a.c);
    var var_4 = Struct_4(604f, _wgslsmith_add_vec4_i32(select(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, u_input.c), vec4<i32>(0i, global2.a.a.x, -14476i, var_1.a.a.x), countOneBits(vec4<i32>(var_1.a.a.x, -1i, 5275i, global1.x))), u_input.c, vec4<bool>(global2.a.c.x, true, var_1.a.c.x || var_3.c.x, !var_1.a.c.x)), vec4<i32>(~0i, 0i, ~_wgslsmith_mod_i32(global2.a.a.x, 2147483647i), -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, global1.zyy, 1035f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<i32>(var_4.b.x, global1.x, var_4.b.x, u_input.c.x));
}

