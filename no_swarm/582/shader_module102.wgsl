struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 39704u;

var<private> global2: Struct_1 = Struct_1(265f, vec3<i32>(i32(-2147483648), 0i, 19585i), vec3<u32>(0u, 4294967295u, 21339u), vec3<f32>(1544f, -757f, 907f));

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    var var_0 = ~u_input.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(global2.a + 130f), -u_input.b.wyw, firstTrailingBit(~_wgslsmith_div_vec3_u32(~global2.c, select(global2.c, global2.c, vec3<bool>(arg_0.x, true, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(586f, 944f, -256f)), true)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global2.d - vec3<f32>(295f, 1076f, global2.a)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, 178f, global2.a))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1177f)) - _wgslsmith_f_op_f32(min(var_1.d.x, global2.d.x)))))) * global2.d.x);
    let var_3 = var_1.c;
    var var_4 = u_input.b.x;
    return countOneBits(~vec3<i32>(_wgslsmith_add_i32(-21866i, max(2147483647i, -12957i)), _wgslsmith_add_i32(1i, -58521i), _wgslsmith_mod_i32(u_input.b.x, global2.b.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = countOneBits(_wgslsmith_div_vec2_i32(~abs(-vec2<i32>(-2147483647i, -30146i)), vec2<i32>(17089i, max(_wgslsmith_dot_vec2_i32(global2.b.yy, arg_3.b.zx), 1i))));
    global3 = array<Struct_1, 5>();
    var var_1 = arg_3;
    let var_2 = select(select(arg_0, vec4<bool>(true && arg_0.x, !(arg_0.x & arg_0.x), !select(arg_0.x, arg_0.x, false), _wgslsmith_f_op_f32(min(global2.a, arg_3.d.x)) <= arg_3.d.x), select(select(arg_0, arg_0, vec4<bool>(true, arg_0.x, true, true)), select(arg_0, !arg_0, false), arg_0)), !select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), !(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), false), !select(arg_0, !arg_0, select(arg_0, select(arg_0, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), arg_0)));
    let var_3 = global3[_wgslsmith_index_u32(u_input.a, 5u)];
    return countOneBits(firstLeadingBit(_wgslsmith_sub_u32(firstTrailingBit(global2.c.x), ~1u) ^ (var_3.c.x ^ 1u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = Struct_1(-1000f, _wgslsmith_add_vec3_i32(select(~vec3<i32>(2147483647i, arg_1.b.x, u_input.c), global2.b, arg_3.xww), _wgslsmith_div_vec3_i32(~global2.b, min(arg_1.b, vec3<i32>(0i, -2147483647i, u_input.b.x)))) << (~(vec3<u32>(70621u, u_input.a, 53621u) & vec3<u32>(0u, global2.c.x, 107149u)) % vec3<u32>(32u)), select(firstLeadingBit(abs(arg_1.c)) ^ (~global2.c ^ global2.c), ~(~select(global2.c, vec3<u32>(238u, global2.c.x, 35548u), true)), arg_3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, _wgslsmith_f_op_f32(-global2.a), -1423f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1222f, _wgslsmith_div_f32(arg_1.a, 617f), _wgslsmith_f_op_f32(select(1000f, 725f, true))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1341f, _wgslsmith_f_op_f32(-global2.d.x)) + vec2<f32>(_wgslsmith_f_op_f32(step(var_0.a, 621f)), arg_0.x)) + _wgslsmith_div_vec2_f32(var_0.d.xy, vec2<f32>(713f, _wgslsmith_f_op_f32(var_0.a + global2.a)))) * global2.d.xy);
    var var_2 = abs(arg_1.c.x);
    let var_3 = global3[_wgslsmith_index_u32(func_4(!(!(!vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x))), Struct_1(576f, vec3<i32>(global2.b.x, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), global2.b.x), ~(~vec3<u32>(var_0.c.x, 0u, 1u) ^ var_0.c), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, -735f, _wgslsmith_div_f32(-545f, global2.d.x))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-8250i, -2147483647i, 2147483647i), select(var_0.b, vec3<i32>(u_input.b.x, arg_1.b.x, 18676i), false) ^ func_3(vec4<bool>(false, true, arg_3.x, arg_3.x)), ~u_input.b.yyy) ^ ~vec3<i32>(-global2.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(102630i, 1i, global2.b.x), vec3<i32>(var_0.b.x, global2.b.x, var_0.b.x)), arg_1.b.x), Struct_1(-2830f, var_0.b, arg_1.c, _wgslsmith_f_op_vec3_f32(trunc(arg_1.d)))), 5u)];
    var var_4 = 1i;
    return countOneBits(var_3.b) | select(u_input.b.wyy, abs(abs(u_input.b.xzw >> (arg_1.c % vec3<u32>(32u)))), true);
}

fn func_1() -> f32 {
    let var_0 = Struct_1(global2.a, _wgslsmith_sub_vec3_i32(~(~u_input.b.ywx), max(u_input.b.xzx, _wgslsmith_mult_vec3_i32(-global2.b, func_2(vec4<f32>(global2.a, global2.a, 224f, -165f), Struct_1(-104f, vec3<i32>(u_input.c, -26970i, global2.b.x), global2.c, vec3<f32>(1150f, -658f, -1830f)), u_input.a, vec4<bool>(true, true, false, true))))), ~(~global2.c & _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, global2.c.x), vec3<u32>(27266u, u_input.a, 4294967295u))) | vec3<u32>(reverseBits(_wgslsmith_add_u32(71330u, global2.c.x)), 4294967295u, reverseBits(u_input.a)), vec3<f32>(-228f, 746f, global2.a));
    global2 = var_0;
    global3 = array<Struct_1, 5>();
    var var_1 = !(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))));
    global3 = array<Struct_1, 5>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.d.x;
    let var_1 = _wgslsmith_f_op_f32(-global2.d.x);
    global2 = Struct_1(_wgslsmith_f_op_f32(func_1()), min(global2.b, vec3<i32>(u_input.b.x << (func_4(vec4<bool>(false, true, true, true), Struct_1(global2.a, u_input.b.wwz, vec3<u32>(u_input.a, u_input.a, 1u), vec3<f32>(191f, 1685f, global2.a)), u_input.b.xxz, Struct_1(var_1, vec3<i32>(0i, 2147483647i, 13155i), vec3<u32>(u_input.a, 29595u, global2.c.x), global2.d)) % 32u), _wgslsmith_div_i32(u_input.c, abs(27262i)), reverseBits(-48119i))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(global2.c, global2.c, global2.c), global2.c), vec3<f32>(_wgslsmith_f_op_f32(global2.d.x + -576f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 - global2.a))))), var_1));
    let var_2 = var_1;
    var var_3 = global2.b.yz;
    var var_4 = abs(var_3.x);
    let var_5 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a))) - _wgslsmith_f_op_f32(step(var_2, 1f)))), global2.b, max(~_wgslsmith_add_vec3_u32(vec3<u32>(15569u, global2.c.x, 0u) | global2.c, select(global2.c, vec3<u32>(u_input.a, global2.c.x, global2.c.x), false)), ~global2.c), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-2780f, _wgslsmith_f_op_f32(f32(-1f) * -1807f), -1488f), vec3<f32>(-2050f, _wgslsmith_f_op_f32(var_1 * 1000f), _wgslsmith_f_op_f32(641f - -156f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1168f, var_1, var_2), global2.d)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, -426f, var_1)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.d, vec3<f32>(-1803f, var_1, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2381f, 397f, var_1)))))));
    var var_6 = u_input.b.x >= -var_5.b.x;
    var var_7 = select(func_3(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, false), true)).yz, countOneBits(reverseBits(_wgslsmith_sub_vec2_i32(u_input.b.yz, vec2<i32>(u_input.c, u_input.c) & vec2<i32>(var_3.x, u_input.b.x)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1093f), min(_wgslsmith_sub_u32(~0u, 61567u), countOneBits(var_5.c.x) | ~abs(8183u)));
}

