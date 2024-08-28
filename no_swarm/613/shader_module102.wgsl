struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: bool = true;

var<private> global2: i32;

var<private> global3: vec2<f32> = vec2<f32>(1000f, -978f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    var var_0 = Struct_2(!(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), true)), min(vec3<u32>(_wgslsmith_mod_u32(u_input.b.x << (20801u % 32u), 1u), u_input.b.x, 15848u), ~vec3<u32>(u_input.a.x << (6148u % 32u), 1u, firstTrailingBit(u_input.b.x))), vec3<i32>(abs(abs(~arg_0)), 1i, -2147483647i));
    let var_1 = 2147483647i;
    global1 = true;
    var var_2 = Struct_1(1u, var_0.b.x & abs(_wgslsmith_dot_vec2_u32(vec2<u32>(115706u, 1u), vec2<u32>(0u, u_input.b.x))), ~_wgslsmith_mod_vec3_u32(~(~var_0.b), var_0.b));
    var_2 = Struct_1(countOneBits(u_input.a.x), abs(u_input.a.x), abs(vec3<u32>(var_0.b.x, max(0u, 0u), 1u) & ~var_2.c));
    return _wgslsmith_mod_i32(_wgslsmith_mult_i32(min(-18049i >> (1u % 32u), var_1), _wgslsmith_mult_i32(var_0.c.x | -14700i, ~arg_0)) >> (var_0.b.x % 32u), _wgslsmith_sub_i32(abs(-1i) ^ ~arg_0, _wgslsmith_mod_i32(1i, -2147483647i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<i32> {
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.x * 1573f)))))), 568f);
    var var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(countOneBits(-1i), i32(-1i) * -global0[_wgslsmith_index_u32(arg_1.b, 23u)]), vec2<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(16334i, -1i), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 23u)])), firstLeadingBit(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~4294967295u, 23u)], 0i))));
    let var_1 = func_3(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), ~_wgslsmith_div_i32(_wgslsmith_sub_i32(-10271i, 48825i), _wgslsmith_sub_i32(-1i, -71222i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1030f, -941f) * vec3<f32>(global3.x, arg_0, -343f)))), global3.x);
    var var_2 = 0u;
    let var_3 = ((reverseBits(-vec3<i32>(var_1, var_0.x, 2342i)) ^ _wgslsmith_sub_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(arg_1.c.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], 0i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(arg_1.c.x, 23u)], 5920i))) ^ vec3<i32>(-(var_0.x & var_0.x), firstLeadingBit(i32(-1i) * -1440i), ~var_1)) | (vec3<i32>(var_1, var_1, firstTrailingBit(var_0.x | -15304i)) >> ((vec3<u32>(4294967295u, 19782u, ~0u) << (((vec3<u32>(69908u, u_input.b.x, u_input.b.x) | arg_1.c) ^ (arg_1.c << (arg_1.c % vec3<u32>(32u)))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return -_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(~u_input.a.x, 23u)], -1i), -5300i), _wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, 7834i), ~var_3.yx));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(min(global0[_wgslsmith_index_u32(117358u, 23u)], _wgslsmith_div_i32(1i >> (u_input.b.x % 32u), global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 1i), min(vec2<i32>(global0[_wgslsmith_index_u32(42544u, 23u)], -44898i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 23u)], 28128i)), func_2(global3.x, Struct_1(10546u, 4294967295u, vec3<u32>(19496u, u_input.a.x, 17590u)))), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1832i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec2<i32>(-9874i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), -vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)])))));
    var var_1 = Struct_2(select(vec4<bool>(false != (2147483647i <= global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), true, select(false, false, true) != all(vec2<bool>(false, true)), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), !all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)))), vec3<u32>(18675u, 8320u >> (~u_input.a.x % 32u), ~4294967295u) << (vec3<u32>(u_input.a.x, u_input.b.x, ~countOneBits(u_input.b.x)) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 2147483647i, 22969i)), vec3<i32>(var_0, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(68949u, 23u)]), _wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 12345i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], -2147483647i))), vec3<i32>(-27051i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], -9245i, -34559i, var_0), vec4<i32>(var_0, -1i, var_0, 28984i)), abs(global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))));
    var_1 = Struct_2(vec4<bool>(!var_1.a.x, true || !(!var_1.a.x), true, var_1.a.x), var_1.b, vec3<i32>(_wgslsmith_div_i32(var_0, 1752i), ~((global0[_wgslsmith_index_u32(42343u, 23u)] ^ 31815i) << (~0u % 32u)), 2147483647i << (u_input.b.x % 32u)));
    return Struct_2(var_1.a, _wgslsmith_clamp_vec3_u32(~(vec3<u32>(37083u, 4294967295u, u_input.b.x) | vec3<u32>(1u, var_1.b.x, var_1.b.x)), ~vec3<u32>(u_input.a.x, 16608u, 4294967295u) >> (vec3<u32>(u_input.b.x, 1u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(max(var_1.b.x, var_1.b.x), ~u_input.a.x, 92390u)) << (~var_1.b % vec3<u32>(32u)), max(reverseBits(~abs(var_1.c)), reverseBits(~var_1.c)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = true;
    var var_1 = Struct_1(arg_3.b, 0u, _wgslsmith_sub_vec3_u32(arg_3.c, arg_3.c));
    var var_2 = global0[_wgslsmith_index_u32(~arg_0.b.x, 23u)];
    let var_3 = global3.x;
    var var_4 = firstTrailingBit(arg_0.c.x);
    return 957f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 16068i;
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1130f)) - 117f))));
    let var_1 = u_input.a.x;
    global3 = vec2<f32>(global3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), vec2<bool>(true, true), Struct_1(var_1, 4294967295u, vec3<u32>(var_1, 4294967295u, 26605u))))))));
    var var_2 = _wgslsmith_f_op_f32(-550f - _wgslsmith_f_op_f32(floor(422f)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), global3.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(293f, global3.x, 1212f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.x, 517f, global3.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, -175f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, 2020f, global3.x), vec3<f32>(-970f, global3.x, -2736f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-643f, _wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(max(1293f, global3.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-608f, -343f, 3078f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -472f)), var_4.x)))), countOneBits(reverseBits(_wgslsmith_mult_i32(2147483647i, var_0)) << (23850u % 32u)));
}

