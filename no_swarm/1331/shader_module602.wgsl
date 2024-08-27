struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: Struct_1 = Struct_1(0i, vec3<i32>(23424i, 1i, 1i), 0i, vec2<i32>(0i, -32887i));

var<private> global2: f32 = -365f;

var<private> global3: array<bool, 3>;

var<private> global4: Struct_2 = Struct_2(134f, vec3<i32>(6340i, 8994i, -62918i), 30387u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> i32 {
    global1 = Struct_1(global1.d.x, _wgslsmith_mult_vec3_i32(~(u_input.a | max(global4.b, global4.b)), u_input.a), _wgslsmith_add_i32(~(-50931i), _wgslsmith_sub_i32(global4.b.x, ~(-6792i))), global4.b.xy & global1.b.zx);
    global0 = array<f32, 16>();
    return -2147483647i;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(128f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a - 1021f))))), _wgslsmith_mod_vec3_i32(global1.b, ~(~global4.b)) << (vec3<u32>(u_input.b.x, 1u, ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_0.c, arg_0.c, u_input.c))) % vec3<u32>(32u)), _wgslsmith_mod_u32(~(~global4.c), ~u_input.b.x & _wgslsmith_add_u32(80379u, 0u)) >> ((~(~global4.c) >> (~1u % 32u)) % 32u));
    return vec4<bool>(any(!(!(!arg_1.zzx))), global3[_wgslsmith_index_u32(u_input.c, 3u)] && arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 16u)])), -1020f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a * -563f) + -886f)) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1886f, global4.a)), 0u < _wgslsmith_sub_u32(1u, firstLeadingBit(select(45292u, var_0.c, true))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec4<f32> {
    global3 = array<bool, 3>();
    var var_0 = Struct_1(arg_0.x, vec3<i32>(global4.b.x, u_input.a.x, global1.a), ~global4.b.x >> (~(~select(global4.c, u_input.c, true)) % 32u), u_input.a.yx);
    let var_1 = 1u;
    let var_2 = Struct_1(firstLeadingBit(2147483647i), var_0.b, -56633i, _wgslsmith_sub_vec2_i32(~(arg_0.xx >> (vec2<u32>(var_1, global4.c) % vec2<u32>(32u))) >> (u_input.b.xz % vec2<u32>(32u)), global1.d));
    var_0 = Struct_1(-(~func_2()), ~vec3<i32>(15823i, _wgslsmith_add_i32(global1.c, -17158i) & var_2.c, ~var_2.d.x), _wgslsmith_clamp_i32(var_0.b.x, ~(~(-17705i)), -30916i & _wgslsmith_mult_i32(~var_2.d.x, _wgslsmith_mod_i32(arg_0.x, 31944i))), countOneBits(~vec2<i32>(-global1.c, var_0.a << (var_1 % 32u))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-613f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 16u)])), -456f, 832f)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = array<f32, 16>();
    let var_0 = Struct_1(arg_0.x << (global4.c % 32u), select(select(_wgslsmith_div_vec3_i32(arg_2.b, vec3<i32>(3446i, global4.b.x, u_input.a.x)) ^ vec3<i32>(0i, arg_3.c, 27449i), arg_2.b, !(!global3[_wgslsmith_index_u32(23372u, 3u)])), min(arg_3.b, vec3<i32>(arg_0.x, -1i, 0i)) << (firstTrailingBit(u_input.b) % vec3<u32>(32u)), any(vec3<bool>(true, false, arg_1))), global1.a, global4.b.yz);
    let var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(-vec4<i32>(-func_2(), var_1, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.a, global4.b.x), vec2<i32>(global1.c, global4.b.x)), abs(1i)), select(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_1, false, global3[_wgslsmith_index_u32(global4.c, 3u)]), true), !vec4<bool>(false, true, global3[_wgslsmith_index_u32(0u, 3u)], true), select(vec4<bool>(false, arg_1, false, true), func_3(Struct_2(global4.a, vec3<i32>(arg_3.c, u_input.a.x, 1i), u_input.b.x), vec4<bool>(false, arg_1, arg_1, true), arg_0.x, arg_2), true)), select(vec4<bool>(all(vec2<bool>(true, global3[_wgslsmith_index_u32(30680u, 3u)])), global3[_wgslsmith_index_u32(7213u << (global4.c % 32u), 3u)], true, false), vec4<bool>(global3[_wgslsmith_index_u32(1u, 3u)] | true, true, !global3[_wgslsmith_index_u32(57884u, 3u)], false), vec4<bool>(all(vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 3u)], false)), true, all(vec3<bool>(true, arg_1, global3[_wgslsmith_index_u32(4294967295u, 3u)])), 1i >= global4.b.x)), select(vec4<bool>(false & global3[_wgslsmith_index_u32(1627u, 3u)], true, arg_1 & global3[_wgslsmith_index_u32(global4.c, 3u)], global3[_wgslsmith_index_u32(u_input.c, 3u)] & arg_1), select(select(vec4<bool>(false, arg_1, true, true), vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 3u)], arg_1, global3[_wgslsmith_index_u32(u_input.b.x, 3u)])), !vec4<bool>(arg_1, true, global3[_wgslsmith_index_u32(global4.c, 3u)], true), vec4<bool>(false, false, true, true)), !(!global3[_wgslsmith_index_u32(global4.c, 3u)])))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-326f * var_2.x) * global0[_wgslsmith_index_u32(global4.c, 16u)]))) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global4.c, firstLeadingBit(global4.c)), vec3<u32>(_wgslsmith_add_u32(25261u, global4.c), abs(1u), _wgslsmith_add_u32(16881u, 1u))), 16u)]));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = 11375u;
    var var_2 = 51211u;
    var var_3 = 11288u;
    var var_4 = Struct_1(2147483647i, -_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-3528i, global4.b.x, 2147483647i), _wgslsmith_mult_vec3_i32(global1.b, global1.b)), ~(~vec3<i32>(u_input.a.x, u_input.a.x, global4.b.x)), select(vec3<i32>(-2172i, global1.a, global4.b.x), max(u_input.a, vec3<i32>(global4.b.x, global1.d.x, global1.a)), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 3u)], true, global3[_wgslsmith_index_u32(886u, 3u)]))), u_input.a.x, vec2<i32>(i32(-1i) * -global4.b.x, 30268i));
    var var_5 = _wgslsmith_f_op_f32(-global4.a);
    var var_6 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-887f, global4.a) + _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(66639u, 16u)]))) * global0[_wgslsmith_index_u32(func_1(_wgslsmith_add_vec2_i32(vec2<i32>(21029i, u_input.a.x), var_4.b.zz), global3[_wgslsmith_index_u32(firstTrailingBit(1u), 3u)], Struct_1(21618i, vec3<i32>(var_4.c, 1i, -1i), u_input.a.x, u_input.a.zz), Struct_1(var_4.d.x, global4.b, global1.b.x, global4.b.zz)), 16u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global4.a)), global0[_wgslsmith_index_u32(4294967295u << (u_input.b.x % 32u), 16u)])))), min(global4.b, vec3<i32>(-1i, global4.b.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(-50688i, 1i), var_4.d))), ~(~abs(~var_0.x)));
    var var_7 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_6.a - -1000f), var_6.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(459f + var_6.a) * -763f))))), select(u_input.a, -vec3<i32>(4501i, u_input.a.x, 17034i) | _wgslsmith_div_vec3_i32(-global4.b, u_input.a >> (vec3<u32>(37665u, var_0.x, 12544u) % vec3<u32>(32u))), false), ~(~var_6.c));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c >> (~var_7.c % 32u), select(_wgslsmith_mod_u32(1u, global4.c), u_input.c, any(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.c, 3u)], global3[_wgslsmith_index_u32(9218u, 3u)])))), select(vec2<u32>(4294967295u, 4294967295u) & (vec2<u32>(0u, 1u) ^ u_input.b.xy), countOneBits(~vec2<u32>(var_0.x, 56292u)), true)), -8583i, global1.b.x, reverseBits(global1.b.xy) >> (firstTrailingBit(_wgslsmith_add_vec2_u32(var_0.yx, ~vec2<u32>(15906u, var_0.x))) % vec2<u32>(32u)));
}

