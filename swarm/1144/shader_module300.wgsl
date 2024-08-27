struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: Struct_1 = Struct_1(false, true, 41064u);

var<private> global2: vec4<i32>;

var<private> global3: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global4: vec3<i32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> vec2<bool> {
    global2 = u_input.a ^ _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(6695i, arg_1.x, -38396i, u_input.b)), vec4<i32>(u_input.a.x, 0i, global4.x, 19035i)), u_input.a << (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(2558u, u_input.d, global1.c, global1.c)), ~vec4<u32>(26406u, global1.c, u_input.d, global1.c)) % vec4<u32>(32u)));
    let var_0 = !(!select(!vec2<bool>(false, global1.b), select(!vec2<bool>(global1.b, global1.b), vec2<bool>(true, true), all(vec4<bool>(true, global1.a, global1.b, global1.b))), !(!vec2<bool>(true, global1.a))));
    var var_1 = Struct_1(any(global3[_wgslsmith_index_u32(108837u, 4u)]), 27031u < _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c, global1.c), ~vec2<u32>(u_input.d, global1.c)), 9095u), abs(min(~0u ^ u_input.d, ~u_input.c)));
    let var_2 = 1u & ~firstTrailingBit(~countOneBits(1u));
    let var_3 = 4294967295u;
    return select(!select(select(var_0, select(var_0, vec2<bool>(var_0.x, true), var_0), !var_0), !select(var_0, vec2<bool>(true, global1.b), true), vec2<bool>(all(vec4<bool>(false, global1.b, var_0.x, global1.b)), global4.x <= -50199i)), !vec2<bool>(!(!var_1.b), !(var_1.b == var_1.b)), var_0);
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = global4.zx;
    var var_1 = select(!select(select(func_3(-1015f, u_input.a.zzx), vec2<bool>(global1.a, global1.b), select(vec2<bool>(global1.a, global1.b), vec2<bool>(global1.b, global1.a), global1.b)), select(func_3(1019f, u_input.a.yzx), select(vec2<bool>(false, false), vec2<bool>(global1.b, global1.a), vec2<bool>(true, true)), !vec2<bool>(global1.b, true)), true), vec2<bool>(true, true), -12651i < _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.zzx, vec3<i32>(10849i, -9824i, -25741i)), vec3<i32>(-2147483647i, u_input.a.x, 10290i)), reverseBits(vec3<i32>(var_0.x, global2.x, var_0.x) >> (vec3<u32>(global1.c, u_input.d, global1.c) % vec3<u32>(32u)))));
    var var_2 = Struct_1(var_1.x, global1.b, 88102u);
    let var_3 = global0[_wgslsmith_index_u32(~(~0u) << (min(reverseBits(4294967295u), firstLeadingBit(select(global1.c, 1u, true)) & (~u_input.c & (var_2.c >> (global1.c % 32u)))) % 32u), 31u)];
    let var_4 = select(!(!select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.c, 14860u), 4u)], select(vec3<bool>(true, false, false), global3[_wgslsmith_index_u32(1u, 4u)], false), vec3<bool>(var_1.x, true, var_1.x))), !vec3<bool>(true, _wgslsmith_clamp_i32(1i, global4.x, 54390i) != global4.x, select(var_2.a, global1.b, func_3(178f, vec3<i32>(-9905i, 0i, -2147483647i)).x)), global3[_wgslsmith_index_u32(27263u, 4u)]);
    return 1i <= var_0.x;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global2 = abs(select(vec4<i32>(reverseBits(1i), ~global2.x << (4294967295u % 32u), u_input.a.x, ~global2.x), -u_input.a, vec4<bool>(true, !(!global1.a), global1.b, true)));
    var var_0 = Struct_1(any(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c, min(global1.c, 1u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(33392u, global1.c), vec2<u32>(83702u, 75637u))), 4u)]), false, 0u);
    let var_1 = select(vec3<bool>(select(any(select(vec2<bool>(false, true), vec2<bool>(true, true), arg_0)), !var_0.a | !global1.a, select(var_0.b, true, true)), true, arg_0), vec3<bool>(any(!vec4<bool>(true, false, var_0.a, var_0.b)), select(arg_0, false, func_2(-146f)) || (!arg_0 & true), any(vec4<bool>(true, true, true, true)) & var_0.b), global3[_wgslsmith_index_u32(min(~(~0u), u_input.d), 4u)]);
    let var_2 = Struct_1(false, true, 1u);
    var var_3 = select(-vec4<i32>(14974i, global2.x, _wgslsmith_mult_i32(22980i, firstTrailingBit(global2.x)), _wgslsmith_add_i32(~global2.x, -44912i)), abs(u_input.a), vec4<bool>(arg_0, var_0.b & any(vec3<bool>(true, var_1.x, false)), arg_0, var_0.b));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = !global3[_wgslsmith_index_u32(26123u, 4u)];
    global1 = arg_0;
    var var_3 = Struct_1(any(vec4<bool>(false, 1i >= -global2.x, !(!arg_0.a), !(0u != var_1.c))), true, var_1.c);
    return min(global4.x, abs(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = max(u_input.a.xyz | _wgslsmith_mod_vec3_i32(u_input.a.xzy, _wgslsmith_mult_vec3_i32(~global2.xzy, _wgslsmith_add_vec3_i32(vec3<i32>(global4.x, u_input.a.x, 1987i), vec3<i32>(13023i, global2.x, -2147483647i)))), vec3<i32>(-func_4(func_1(true), func_1(true), _wgslsmith_f_op_f32(select(-1363f, 1326f, false))), _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(global2.yz, global4.xz), global2.x), 0i));
    let var_0 = !vec4<bool>(global1.a, global1.a, false, all(vec3<bool>(global1.b, func_1(true).b, true)));
    let var_1 = ~(~(~(~(~vec3<u32>(global1.c, global1.c, u_input.d)))));
    global1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(894f * 990f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-568f)))) <= _wgslsmith_f_op_f32(f32(-1f) * -244f), true, 43057u);
    var var_2 = max(4294967295u, ~_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(10902u, var_1.x, 23949u, 12286u), vec4<u32>(1u, var_1.x, 17155u, 12923u)), abs(vec4<u32>(u_input.c, 1335u, var_1.x, 33669u) & vec4<u32>(global1.c, global1.c, 38112u, global1.c))));
    var var_3 = func_1(var_0.x);
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(626f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1200f + _wgslsmith_f_op_f32(select(1685f, -1237f, true))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(420f)), _wgslsmith_div_f32(-387f, 2106f), true)))))));
    var var_5 = func_1(func_1(true).b);
    var var_6 = Struct_1(all(select(select(var_0.zz, var_0.yy, vec2<bool>(var_5.a, global1.a)), select(select(vec2<bool>(true, false), var_0.yw, var_0.zy), select(var_0.xz, var_0.zx, false), select(var_0.zx, var_0.zx, var_0.yy)), !vec2<bool>(true, var_5.b))), func_3(-870f, global2.zzz).x, select(4294967295u, 0u, all(var_0.zw)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global4.x, global2.x, _wgslsmith_div_i32(select(-2147483647i | global4.x, ~global2.x, any(var_0.wwy)), -7727i)), _wgslsmith_mult_vec2_u32(var_1.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(select(23933u, 4294967295u, var_6.a), ~4056u), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.xy, var_1.xy, vec2<u32>(4294967295u, 384u)), ~var_1.yx), vec2<u32>(8732u, min(var_3.c, 1u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(698f, 496f))), _wgslsmith_f_op_f32(965f * _wgslsmith_f_op_f32(-313f - -1617f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1239f * 1017f) - 1246f))));
}

