struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-912f, 1231f, 343f, 1204f, -1152f, 631f, 1000f, -567f, 339f, -1040f, 128f, -1152f, -1549f, 600f, -2363f, 1000f, -456f, -288f, -2469f, 222f, -1330f, -725f, -177f, 131f, -211f, 1428f, 227f, -214f);

var<private> global1: vec4<f32>;

var<private> global2: array<bool, 31>;

var<private> global3: array<i32, 14>;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = Struct_2(4294967295u < ~firstLeadingBit(_wgslsmith_clamp_u32(30877u, 33563u, arg_0.x)), countOneBits(_wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, u_input.a), vec2<u32>(24617u, 104819u)), vec2<u32>(5020u, 32169u)), vec2<u32>(~27904u, 4294967295u))), -2147483647i, vec2<bool>(global4.a, global2[_wgslsmith_index_u32(~(arg_0.x | u_input.a) ^ ~firstTrailingBit(u_input.a), 31u)]));
    let var_1 = u_input.d;
    let var_2 = Struct_1(u_input.c, ~vec3<u32>(26393u, 0u, reverseBits(_wgslsmith_div_u32(45889u, var_1))), !(!(!global4.a)), ~vec4<u32>(arg_0.x, ~global4.b, var_1, ~4294967295u) & ~vec4<u32>(~2297u, ~4294967295u, abs(arg_0.x), 4294967295u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.x, ~var_0.b, abs(arg_0.x)) ^ select(global4.b, abs(1u), true), 18728u));
    let var_3 = ~vec3<u32>(~global4.b, abs(var_2.e), 0u);
    var var_4 = Struct_2(global4.d.x, 18861u, -var_2.a, !select(!vec2<bool>(false, var_0.d.x), global4.d, all(!global4.d)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(global1.x - arg_1.x));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global3 = array<i32, 14>();
    global2 = array<bool, 31>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global4.b, 28u)]), _wgslsmith_f_op_f32(func_3(~vec4<u32>(46801u, 0u, global4.b, global4.b), vec4<f32>(-905f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global1.x, 325f))), global1.x, global0[_wgslsmith_index_u32(~(~global4.b), 28u)]) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(147f, 150f, global1.x, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 28u)] - -1889f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(global1.x + global0[_wgslsmith_index_u32(u_input.d, 28u)])))));
    global0 = array<f32, 28>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1149f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~(4294967295u | global4.b)), 28u)] + 1599f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global4.b, 76259u, 133554u), 28u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.x, global0[_wgslsmith_index_u32(global4.b, 28u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global4.b, 28u)])));
    return _wgslsmith_mult_u32(~(~u_input.b.x), global4.b);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(32406u, 28u)];
    let var_1 = ~u_input.b.zx;
    var var_2 = 0u;
    var var_3 = Struct_1(-_wgslsmith_dot_vec3_i32(min(min(vec3<i32>(global3[_wgslsmith_index_u32(arg_3.x, 14u)], 2147483647i, -1i), vec3<i32>(arg_1, u_input.c, global3[_wgslsmith_index_u32(4372u, 14u)])), select(vec3<i32>(global4.c, -1i, global3[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<i32>(-9379i, -39972i, -3810i), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], global4.d.x))), vec3<i32>(-2147483647i << (var_1.x % 32u), -global3[_wgslsmith_index_u32(arg_3.x, 14u)], -arg_1)), _wgslsmith_mult_vec3_u32(u_input.b, u_input.b), !any(select(select(global4.d, vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 31u)]), global2[_wgslsmith_index_u32(41215u, 31u)]), global4.d, any(vec3<bool>(arg_2, true, global4.d.x)))), ~firstTrailingBit(vec4<u32>(~57035u, var_1.x, ~var_1.x, 22296u)), var_1.x);
    global0 = array<f32, 28>();
    return Struct_1(_wgslsmith_dot_vec2_i32(-min(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(1i, arg_1)) & max(abs(vec2<i32>(global4.c, -42944i)), vec2<i32>(u_input.c, global4.c)), select(vec2<i32>(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(0u, 14u)], 57494i), u_input.c | u_input.c), -vec2<i32>(2147483647i, 1i), vec2<bool>(false, true))), select(~var_3.b, vec3<u32>(select(38020u, var_1.x, global2[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_add_u32(_wgslsmith_div_u32(arg_3.x, 47180u), ~u_input.b.x), 1u), false), select(!all(!global4.d), global2[_wgslsmith_index_u32(0u, 31u)], true), ~var_3.d, 1u);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = false;
    let var_1 = Struct_2(!global4.a, ~(~_wgslsmith_add_u32(arg_0.d.x, u_input.d)) ^ firstTrailingBit(u_input.d), 1i, vec2<bool>(arg_0.c, true));
    var var_2 = arg_0;
    var var_3 = var_1;
    var var_4 = abs(-22099i);
    return arg_0;
}

fn func_1(arg_0: f32) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, global0[_wgslsmith_index_u32(global4.b, 28u)], 1383f, -512f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1698f)), _wgslsmith_f_op_f32(f32(-1f) * -860f), 422f, _wgslsmith_f_op_f32(-global1.x))))) * vec4<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a ^ 0u, 28u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(979f * global0[_wgslsmith_index_u32(0u, 28u)]))), arg_0, _wgslsmith_f_op_f32(min(global1.x, arg_0))));
    var var_0 = func_5(func_4(countOneBits(func_2(vec2<i32>(38393i, global3[_wgslsmith_index_u32(u_input.b.x, 14u)]))), reverseBits(u_input.c), global1.x != 1631f, ~u_input.b));
    var var_1 = Struct_2(false, global4.b, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(var_0.d.x ^ _wgslsmith_sub_u32(var_0.d.x & u_input.d, _wgslsmith_sub_u32(u_input.d, var_0.e)), 14u)], _wgslsmith_clamp_i32(min(_wgslsmith_mult_i32(global4.c, var_0.a), func_4(u_input.d, global3[_wgslsmith_index_u32(u_input.b.x, 14u)], true, vec3<u32>(58154u, u_input.a, var_0.b.x)).a), -2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-1843i, global4.c)))), global4.d);
    var var_2 = global2[_wgslsmith_index_u32(var_0.d.x, 31u)];
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(20820u, 28u)])), arg_0));
    return _wgslsmith_f_op_f32(abs(-720f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-371f, global0[_wgslsmith_index_u32(1u, 28u)])) * global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(7920u, global4.b), 28u)])));
    global3 = array<i32, 14>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(-105f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -454f))) * _wgslsmith_f_op_f32(select(-1214f, _wgslsmith_f_op_f32(-global1.x), !global4.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) * global1.x))), 680f, _wgslsmith_f_op_f32(790f * -292f));
    global1 = vec4<f32>(global0[_wgslsmith_index_u32(113988u & global4.b, 28u)], _wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -1722f), -706f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-189f, global0[_wgslsmith_index_u32(1u, 28u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1460f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 28u)], 706f)))))));
    global3 = array<i32, 14>();
    global4 = Struct_2(global4.a, ~_wgslsmith_dot_vec2_u32(func_4(u_input.b.x | 0u, global3[_wgslsmith_index_u32(global4.b, 14u)], true, ~u_input.b).b.zz, ~vec2<u32>(u_input.b.x, 11184u)), -29511i, select(global4.d, vec2<bool>(true, _wgslsmith_f_op_f32(sign(843f)) != var_0), all(global4.d)));
    let x = u_input.a;
    s_output = StorageBuffer(333f, abs(vec4<i32>(1i, 1i, 1i, 1i)) | vec4<i32>(global3[_wgslsmith_index_u32(~19017u, 14u)], global3[_wgslsmith_index_u32(global4.b, 14u)], _wgslsmith_mult_i32(_wgslsmith_div_i32(-44566i, -1i), global4.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 8311i, -37649i), select(vec3<i32>(u_input.c, 1i, -2147483647i), vec3<i32>(global4.c, 0i, global4.c), global4.d.x))), 806f, abs(-_wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(global4.b, 14u)], u_input.c), firstTrailingBit(vec2<i32>(global3[_wgslsmith_index_u32(13049u, 14u)], 16120i)), firstLeadingBit(vec2<i32>(0i, global3[_wgslsmith_index_u32(50951u, 14u)])))));
}

