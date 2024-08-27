struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: Struct_5;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<f32>, arg_3: vec2<i32>) -> bool {
    let var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global1.b.x), ~_wgslsmith_mod_vec2_u32(arg_0.yx, vec2<u32>(55345u, 1u)), _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(exp2(global1.b.x))))), min(countOneBits(-(u_input.a.xwy | vec3<i32>(arg_3.x, global1.a, 0i))), u_input.a.zyz));
    var var_2 = min(~_wgslsmith_clamp_vec3_u32(abs(max(vec3<u32>(arg_0.x, global1.e, 4294967295u), arg_0)), ~vec3<u32>(1u, 13797u, 1u) ^ select(arg_0, arg_0, vec3<bool>(arg_1, true, var_0)), arg_0), _wgslsmith_mod_vec3_u32(reverseBits(~_wgslsmith_sub_vec3_u32(arg_0, vec3<u32>(var_1.b.x, u_input.b, 1u))), _wgslsmith_mod_vec3_u32(min(arg_0, vec3<u32>(4294967295u, 4294967295u, 24899u)), _wgslsmith_mod_vec3_u32(arg_0, vec3<u32>(1u, 0u, 4294967295u))) << (~vec3<u32>(53175u, arg_0.x, 0u) % vec3<u32>(32u))));
    var var_3 = arg_3.x;
    var var_4 = Struct_4(arg_2.x, _wgslsmith_f_op_vec3_f32(arg_2.zyw - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.ywz), global1.b), arg_2.wxz)), vec2<bool>(all(vec2<bool>(true, true)), !var_0), select(reverseBits(~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global1.e, 19u)])), var_1.b, all(select(vec2<bool>(true, true), vec2<bool>(arg_1, var_0), true)) && (~var_2.x <= ~var_1.b.x)));
    return all(select(var_4.c, var_4.c, !select(any(vec4<bool>(var_4.c.x, var_4.c.x, true, var_4.c.x)), !arg_1, !var_0)));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    global0 = array<u32, 19>();
    let var_0 = Struct_4(arg_0, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x - arg_0)), _wgslsmith_f_op_f32(round(523f)), 916f))), select(vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(func_3(vec3<u32>(3306u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], 1u) & vec3<u32>(5340u, 1u, u_input.b), true, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b.x, -469f, 240f, -1432f), vec4<f32>(-196f, global1.b.x, global1.b.x, global1.b.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(27837i, u_input.a.x), vec2<i32>(u_input.a.x, 0i))), all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, abs(27324u)), ~(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], global1.e) ^ vec2<u32>(global0[_wgslsmith_index_u32(0u, 19u)], 3928u)) << (max(countOneBits(vec2<u32>(0u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global1.e, 19u)]), vec2<u32>(u_input.b, 23116u), vec2<u32>(u_input.b, 0u))) % vec2<u32>(32u))));
    global1 = Struct_5(-40427i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, 2067f) * var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(659f)) + 1267f), _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(385f * 532f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(select(global1.b, global1.b, false)))))), ~u_input.a.xz << ((vec2<u32>(~4102u, u_input.b) | ~select(vec2<u32>(0u, 71706u), vec2<u32>(98864u, u_input.b), vec2<bool>(true, false))) % vec2<u32>(32u)), i32(-1i) * -_wgslsmith_sub_i32(1i, reverseBits(u_input.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~min(vec4<u32>(var_0.d.x, 24922u, u_input.b, 1723u), vec4<u32>(5970u, var_0.d.x, global1.e, global0[_wgslsmith_index_u32(62020u, 19u)])), reverseBits(vec4<u32>(12429u, 12448u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], 19u)], 1u))), ~vec4<u32>(global0[_wgslsmith_index_u32(reverseBits(1u), 19u)], ~global0[_wgslsmith_index_u32(u_input.b, 19u)], 44550u, firstTrailingBit(1u))));
    let var_1 = Struct_2(33478u << (u_input.b % 32u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_div_f32(var_0.b.x, arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b.x, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(floor(var_0.b)))));
    global1 = Struct_5(~global1.c.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-852f, arg_0, arg_0) + var_1.b), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -1530f, 1042f), var_0.b))), var_1.b, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(171f, var_0.b.x, var_0.a)))), vec3<bool>(!(var_0.c.x | true), all(!vec3<bool>(true, var_0.c.x, var_0.c.x)), true))), -vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global1.a), u_input.a.wyz), global1.c.x), 2147483647i), ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, u_input.a.x), ~global1.a), -2147483647i, ~global1.a & u_input.a.x), _wgslsmith_add_u32(~global1.e, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(u_input.b, u_input.b)) << (u_input.b % 32u), 19u)]));
    return firstTrailingBit(_wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, global1.a, global1.a, 6040i), vec4<i32>(u_input.a.x, 1i, -41830i, 2147483647i), vec4<i32>(-8302i, global1.d, global1.c.x, 0i))), vec4<i32>(countOneBits(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x)), firstTrailingBit(~30780i), global1.a, u_input.a.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_4) -> vec2<u32> {
    global0 = array<u32, 19>();
    var var_0 = max(func_2(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-global1.b.x))) & ((~vec4<i32>(3661i, 1i, global1.c.x, 47849i) >> (~vec4<u32>(22079u, 4294967295u, 67351u, arg_2.d.x) % vec4<u32>(32u))) | max(-vec4<i32>(1i, global1.a, 22180i, -15631i), select(vec4<i32>(0i, global1.d, 0i, global1.d), u_input.a, arg_2.c.x))), -_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(func_2(arg_2.b.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, -2147483647i)), vec4<i32>(~(-1i), u_input.a.x, min(-21908i, -32599i), global1.c.x)));
    var_0 = u_input.a;
    let var_1 = Struct_5(min(max(0i, var_0.x >> (global1.e % 32u)), var_0.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(select(arg_2.a, arg_2.b.x, arg_2.c.x)), 343f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-192f, arg_2.a, 1007f) - arg_0.wwx), vec3<bool>(arg_2.c.x, any(vec3<bool>(true, true, true)), true))))), -vec2<i32>((var_0.x << (0u % 32u)) >> (reverseBits(arg_1.x) % 32u), -global1.d), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 11160i, global1.d, u_input.a.x), vec4<i32>(global1.a, -2147483647i, 3655i, -6076i), u_input.a), abs(u_input.a)) & countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -56600i, var_0.x, -39164i), vec4<i32>(-48942i, u_input.a.x, 7914i, 87050i))), u_input.a), ~arg_2.d.x);
    var var_2 = select(select(!(!select(vec2<bool>(false, arg_2.c.x), arg_2.c, arg_2.c)), !select(!vec2<bool>(arg_2.c.x, true), arg_2.c, true), !arg_2.c.x), arg_2.c, arg_2.c);
    return ~(~reverseBits(arg_1.xz));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: u32) -> i32 {
    let var_0 = select(vec3<bool>(func_3(~vec3<u32>(u_input.b, u_input.b, 24958u) & vec3<u32>(global1.e, 60597u, global0[_wgslsmith_index_u32(4294967295u, 19u)]), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1160f, -883f, arg_1, arg_1)), vec4<f32>(global1.b.x, 272f, 1000f, -1390f)), vec2<i32>(select(global1.d, u_input.a.x, true), -u_input.a.x)), !func_3(vec3<u32>(global1.e, 68758u, arg_0.x) & vec3<u32>(u_input.b, 82032u, 45364u), true, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1236f, global1.b.x, -971f, global1.b.x))), u_input.a.wy), _wgslsmith_sub_i32(~(-9338i), 2147483647i) == (select(global1.a, 0i, true) ^ -1i)), vec3<bool>(_wgslsmith_mult_i32(u_input.a.x, 1i) < min(global1.a, _wgslsmith_mod_i32(u_input.a.x, global1.a)), -_wgslsmith_add_i32(global1.a, -33815i) < u_input.a.x, arg_2 < 0u), !(arg_1 >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global1.b.x, arg_1, false))))));
    var var_1 = Struct_4(1830f, vec3<f32>(_wgslsmith_f_op_f32(trunc(1107f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1672f)), _wgslsmith_f_op_f32(arg_1 + arg_1)), select(!vec2<bool>(var_0.x, all(var_0)), !var_0.zz, ~arg_2 == arg_2), vec2<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~max(33203u, arg_2), 19u)], _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 2196u, arg_0.x), vec3<u32>(1u, 4294967295u, global1.e)), vec3<u32>(1u, 1u, 1u))), global1.e));
    global0 = array<u32, 19>();
    global1 = Struct_5(_wgslsmith_mod_i32(~(-1i), reverseBits(u_input.a.x >> (~28246u % 32u))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) * arg_1), _wgslsmith_f_op_f32(sign(arg_1)))), 1000f, -1057f), ~(~(~vec2<i32>(-21631i, 1i)) << ((~vec2<u32>(arg_0.x, 0u) >> (vec2<u32>(21633u, arg_2) % vec2<u32>(32u))) % vec2<u32>(32u))), 1i, _wgslsmith_mod_u32(_wgslsmith_div_u32(57027u, ~arg_0.x), _wgslsmith_add_u32(firstTrailingBit(36459u), var_1.d.x)) ^ countOneBits(78103u << (u_input.b % 32u)));
    global1 = Struct_5(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -u_input.a.x, 0i, -_wgslsmith_dot_vec3_i32(u_input.a.xzx, u_input.a.xzy)), firstLeadingBit(~u_input.a)), _wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.x, var_1.a) * arg_1), -133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1595f))))), ~min(firstLeadingBit(vec2<i32>(u_input.a.x, global1.d)) >> (var_1.d % vec2<u32>(32u)), countOneBits(global1.c)), global1.c.x, ~max(~var_1.d.x, var_1.d.x));
    return -28069i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_5(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-max(global1.d, u_input.a.x), 37980i, i32(-1i) * -43655i), firstLeadingBit(~u_input.a.x & -31674i), u_input.a.x), vec3<f32>(1286f, global1.b.x, _wgslsmith_f_op_f32(round(-133f))), global1.c, firstLeadingBit(i32(-1i) * -18498i), ~0u);
    global0 = array<u32, 19>();
    global1 = Struct_5(~func_4(~func_1(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, 106f), vec4<u32>(global0[_wgslsmith_index_u32(16086u, 19u)], 29367u, 0u, 6600u), Struct_4(950f, global1.b, vec2<bool>(true, false), vec2<u32>(101718u, 4991u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x * global1.b.x) + _wgslsmith_f_op_f32(select(global1.b.x, global1.b.x, true))), _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(u_input.b, 19u)], u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.b)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.b), _wgslsmith_f_op_vec3_f32(min(global1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-967f, -622f, -976f))))))), vec2<i32>(-39765i, -1i), 1i, global1.e);
    global0 = array<u32, 19>();
    var var_0 = global1.a;
    var var_1 = Struct_5(-11007i, vec3<f32>(_wgslsmith_f_op_f32(select(global1.b.x, global1.b.x, select(true, true, 1i < global1.c.x))), -554f, 527f), u_input.a.wx, func_4(vec2<u32>(~(~global0[_wgslsmith_index_u32(98066u, 19u)]), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.e, 92257u, global1.e, 45844u), vec4<u32>(global0[_wgslsmith_index_u32(50545u, 19u)], 12828u, global0[_wgslsmith_index_u32(1u, 19u)], u_input.b)), ~vec4<u32>(u_input.b, 59916u, global1.e, global0[_wgslsmith_index_u32(1u, 19u)]))), _wgslsmith_f_op_f32(floor(-620f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.e, ~1u), 19u)]), ~(~1u));
    var var_2 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(false, true, false), all(vec4<bool>(false, false, true, true)))), vec3<bool>(true, !any(vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), !select(false, true, true)));
    var_2 = select(vec3<bool>(all(vec3<bool>(var_1.b.x <= -1033f, 1i >= global1.c.x, true)), var_2.x, true), select(vec3<bool>(func_3(vec3<u32>(u_input.b, var_1.e, global1.e), any(vec3<bool>(true, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -644f, -105f, global1.b.x)), ~u_input.a.wx), var_2.x & any(var_2.zx), var_2.x), !select(vec3<bool>(var_2.x, false, false), !vec3<bool>(false, true, var_2.x), var_2.x), vec3<bool>(var_2.x | true, !(!var_2.x), true)), !vec3<bool>(true, true, (global1.e > global0[_wgslsmith_index_u32(5665u, 19u)]) && all(vec4<bool>(var_2.x, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - -255f) * global1.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-429f, var_1.b.x)), _wgslsmith_f_op_f32(global1.b.x * 639f)))))), select(u_input.a.wzy, ~_wgslsmith_add_vec3_i32(u_input.a.wxz, u_input.a.wwy), select(!select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, var_2.x, var_2.x)), !(!vec3<bool>(var_2.x, var_2.x, false)), all(!vec4<bool>(true, true, true, var_2.x)))), 2147483647i, firstLeadingBit(-_wgslsmith_mult_i32(firstLeadingBit(global1.d), var_1.d)), global1.b.x);
}

