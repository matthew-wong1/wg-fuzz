struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<f32, 6> = array<f32, 6>(1316f, 626f, -530f, -1466f, -731f, -1388f);

var<private> global3: array<f32, 31> = array<f32, 31>(305f, -2049f, 952f, 1473f, 1000f, -575f, 1103f, -1001f, -906f, -1130f, 327f, 702f, -1073f, -134f, 532f, 397f, -901f, -994f, 589f, -1000f, 429f, -188f, -613f, -111f, 105f, -499f, 230f, -751f, -779f, 1000f, 191f);

var<private> global4: u32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<f32> {
    var var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(86120u, 30u)] >> (4294967295u % 32u)), 30u)], 4u)];
    var var_1 = Struct_1(~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -1i, var_0.a.x, var_0.d), -var_0.a), _wgslsmith_clamp_vec4_i32(~var_0.a, vec4<i32>(37340i, -2147483647i, var_0.a.x, 2147483647i), u_input.d)), 392f, select(select(var_0.c, select(!vec4<bool>(false, false, var_0.c.x, var_0.c.x), vec4<bool>(false, false, false, var_0.c.x), var_0.c), !var_0.c.x), !vec4<bool>(any(var_0.c.yxz), true, false, true), false), -8772i);
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~4294967295u, 4294967295u), 4u)];
    var var_3 = firstTrailingBit(19805u);
    var var_4 = Struct_1(-var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(36502u, 6u)] * 506f) * _wgslsmith_f_op_f32(ceil(-469f)))))), !select(!vec4<bool>(true, var_0.c.x, var_0.c.x, var_1.c.x), select(vec4<bool>(var_2.c.x, true, false, false), vec4<bool>(true, true, true, true), var_2.c), true && var_2.c.x), _wgslsmith_div_i32(i32(-1i) * -abs(18952i), 1i));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(arg_0, arg_0))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.x, 31u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.x, 31u)] - -2216f), global2[_wgslsmith_index_u32(arg_1.x, 6u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.e, 31u)] + 340f) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 30u)], 30u)], 6u)] * global2[_wgslsmith_index_u32(4294967295u, 6u)])), true)) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global2[_wgslsmith_index_u32(arg_0.x, 6u)]) - _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(0u, 31u)], -677f))))), 1011f, -1120f);
    var var_1 = u_input.c < u_input.a;
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(global3[_wgslsmith_index_u32(51992u, 31u)], global2[_wgslsmith_index_u32(arg_0.x, 6u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65114u, 30u)], 6u)], 1107f)))))))));
    global0 = array<u32, 30>();
    var var_2 = vec2<bool>(true, true);
    return arg_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = ~(~select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(18920u, u_input.a), vec2<u32>(4294967295u, u_input.c)), 1u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(6861u, u_input.e), 30u)], global0[_wgslsmith_index_u32(abs(4294967295u), 30u)]), abs(select(vec4<u32>(u_input.c, 1u, 0u, 58589u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(u_input.c, 30u)]), arg_0.x)), arg_1.c));
    var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_0.x, 30u)], u_input.c, 72574u) << (var_0.zzx % vec3<u32>(32u)), vec3<u32>(1u, 4294967295u, u_input.e) >> (vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u))), ~(~1u), _wgslsmith_div_u32(~1u, global0[_wgslsmith_index_u32(var_0.x ^ global0[_wgslsmith_index_u32(u_input.a, 30u)], 30u)]), 32494u), min(vec4<u32>(u_input.c, var_0.x, ~global0[_wgslsmith_index_u32(u_input.e, 30u)], 0u), ~min(vec4<u32>(u_input.e, 0u, 1u, 1u), vec4<u32>(u_input.e, 4294967295u, u_input.e, var_0.x))), select(vec4<u32>(var_0.x | 65490u, ~global0[_wgslsmith_index_u32(1u, 30u)], 4350u, firstLeadingBit(var_0.x)), vec4<u32>(firstLeadingBit(51972u), ~30458u, global0[_wgslsmith_index_u32(46190u, 30u)], _wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x)), true)) << (countOneBits(func_2(~reverseBits(var_0.zzw), ~firstLeadingBit(vec4<u32>(4294967295u, var_0.x, 0u, u_input.c)))) % vec4<u32>(32u));
    var var_1 = var_0.xx;
    var var_2 = !(!any(!(!arg_2.c.wx)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-495f, 194f)))))));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.b.x & -2147483647i) | -75747i;
    let var_1 = -2147483647i;
    global1 = array<Struct_1, 4>();
    let var_2 = Struct_1(vec4<i32>(var_1, _wgslsmith_add_i32(var_1, ~(-2147483647i) & var_0), 0i & ~max(var_0, var_1), max(-(var_0 ^ var_1), i32(-1i) * -1i)), -1675f, func_1(!vec3<bool>(select(true, false, false), false, true), Struct_1(firstTrailingBit(max(vec4<i32>(-1i, -20106i, var_1, 0i), u_input.d)), 745f, vec4<bool>(true, true, true, true), _wgslsmith_add_i32(2147483647i, var_0)), global1[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(var_1, -13943i, -27297i, u_input.b.x), u_input.d)), vec4<i32>(_wgslsmith_add_i32(var_0, -19512i), u_input.b.x, u_input.b.x, ~var_0), u_input.d | abs(u_input.d)), vec4<i32>(~25006i, _wgslsmith_div_i32(firstTrailingBit(9377i), -21595i & var_1), max(var_1, var_1), _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0, -3146i), _wgslsmith_mod_i32(u_input.d.x, 2147483647i)))));
    let var_3 = Struct_1(vec4<i32>(0i, _wgslsmith_mult_i32(-1i, countOneBits(var_2.d)), -39582i, 0i), 1235f, var_2.c, reverseBits(u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, u_input.a, _wgslsmith_add_u32(countOneBits(func_2(vec3<u32>(9107u, 21299u, u_input.e), vec4<u32>(4294967295u, 1u, 31988u, global0[_wgslsmith_index_u32(u_input.c, 30u)])).x & 1u), 7136u));
}

