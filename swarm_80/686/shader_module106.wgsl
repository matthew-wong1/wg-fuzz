struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 31>;

var<private> global2: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: vec2<u32>) -> i32 {
    let var_0 = max(vec3<i32>(arg_1.c.c.b, ~2147483647i, 1i), vec3<i32>(-1i, arg_1.a.a.b, firstTrailingBit(i32(-1i) * -42134i))) ^ -arg_1.a.b.xyy;
    global2 = select(firstLeadingBit(-93418i), abs(firstLeadingBit(arg_1.c.a.b)), global1[_wgslsmith_index_u32(~(~(~u_input.b >> (abs(arg_3.x) % 32u))), 31u)]);
    global2 = 0i;
    global1 = array<bool, 31>();
    global0 = -39328i;
    return min(var_0.x, (min(124i, 43112i) << (u_input.b % 32u)) << (0u % 32u));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(~u_input.a, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, u_input.b), vec4<u32>(u_input.a, 62563u, 78017u, u_input.b)), 31u)], true, global1[_wgslsmith_index_u32(u_input.a, 31u)] | global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_add_i32(select(-1i, 0i, global1[_wgslsmith_index_u32(u_input.b, 31u)]), 0i)), ~vec4<i32>(~0i, -25494i, 2147483647i, -9509i), Struct_1(select(vec4<bool>(false, global1[_wgslsmith_index_u32(40982u, 31u)], global1[_wgslsmith_index_u32(16738u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)]), !vec4<bool>(global1[_wgslsmith_index_u32(23488u, 31u)], true, true, false), select(vec4<bool>(global1[_wgslsmith_index_u32(34091u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], false, global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(56324u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], false, false), false)), max(2147483647i, 2147483647i)), vec4<bool>(global1[_wgslsmith_index_u32(~4294967295u, 31u)], false, !(!global1[_wgslsmith_index_u32(u_input.b, 31u)]), false)), -361f, u_input.b, Struct_2(Struct_1(select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(0u, 31u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 31u)], true, global1[_wgslsmith_index_u32(u_input.a, 31u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(39275u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 31u)], false, global1[_wgslsmith_index_u32(u_input.b, 31u)]), true)), (i32(-1i) * -24705i) >> (u_input.b % 32u)), -vec4<i32>(func_3(32635i, Struct_3(Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(36534u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)]), -2147483647i), vec4<i32>(-2147483647i, -63740i, -19667i, -28319i), Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 31u)], false, global1[_wgslsmith_index_u32(4294967295u, 31u)]), -2147483647i), vec4<bool>(false, global1[_wgslsmith_index_u32(79719u, 31u)], false, global1[_wgslsmith_index_u32(u_input.a, 31u)])), 1365f, Struct_2(Struct_1(vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(29261u, 31u)]), 34087i), vec4<i32>(60492i, 1i, 1i, 0i), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(0u, 31u)], true, global1[_wgslsmith_index_u32(u_input.a, 31u)], false), 1i), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.b, 31u)]))), global1[_wgslsmith_index_u32(u_input.a, 31u)], vec2<u32>(0u, u_input.a)), 4479i >> (u_input.b % 32u), 0i, ~(-71541i)), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)] | true, !global1[_wgslsmith_index_u32(4294967295u, 31u)], select(global1[_wgslsmith_index_u32(46390u, 31u)], false, global1[_wgslsmith_index_u32(1u, 31u)]), select(global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)], false)), func_3(-18457i, Struct_3(Struct_2(Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)], false), 25018i), vec4<i32>(-2147483647i, 2147483647i, -52363i, 3944i), Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 31u)], true, false), -1i), vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(33783u, 31u)])), -1555f, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(69316u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], true), 0i), vec4<i32>(20106i, 14621i, 73692i, 0i), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(57735u, 31u)], global1[_wgslsmith_index_u32(30851u, 31u)], global1[_wgslsmith_index_u32(51054u, 31u)], true), -1i), vec4<bool>(global1[_wgslsmith_index_u32(30470u, 31u)], global1[_wgslsmith_index_u32(51256u, 31u)], false, true))), global1[_wgslsmith_index_u32(countOneBits(u_input.b), 31u)], vec2<u32>(u_input.a, u_input.a))), !select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(55736u, 31u)], true, true), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(42622u, 31u)], false), global1[_wgslsmith_index_u32(countOneBits(15663u), 31u)])));
    var_0 = Struct_4(var_0.d, Struct_2(Struct_1(!select(vec4<bool>(var_0.e.a.a.x, false, true, global1[_wgslsmith_index_u32(2011u, 31u)]), vec4<bool>(var_0.b.c.a.x, var_0.b.a.a.x, global1[_wgslsmith_index_u32(u_input.b, 31u)], false), global1[_wgslsmith_index_u32(u_input.a, 31u)]), var_0.b.a.b), var_0.b.b, Struct_1(var_0.b.a.a, 17202i), var_0.b.c.a), var_0.c, var_0.a, var_0.e);
    var var_1 = var_0.b.b << (firstTrailingBit(~((vec4<u32>(var_0.d, var_0.a, var_0.a, 4294967295u) | vec4<u32>(u_input.a, 73792u, var_0.d, 4294967295u)) & ~vec4<u32>(0u, u_input.b, u_input.a, 52673u))) % vec4<u32>(32u));
    let var_2 = Struct_3(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)) - _wgslsmith_f_op_f32(ceil(1f))), var_0.b);
    let var_3 = vec4<i32>(var_1.x, ~1i, 31017i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(~(-var_1.x), func_3(var_2.a.c.b, var_2, global1[_wgslsmith_index_u32(u_input.b, 31u)], vec2<u32>(1u, 4294967295u)) ^ var_1.x), ~select(_wgslsmith_dot_vec4_i32(var_2.c.b, vec4<i32>(0i, var_2.c.b.x, var_0.b.b.x, var_2.c.a.b)), _wgslsmith_div_i32(var_1.x, var_1.x), global1[_wgslsmith_index_u32(~4294967295u, 31u)])));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = func_2().c.c.a.wyw;
    let var_1 = func_2().c;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, 875f, -1224f), vec3<f32>(871f, arg_0.b, -1152f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 229f, 267f)))))));
    var var_3 = (any(!vec2<bool>(false, var_1.d.x)) == (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, -472f)) <= arg_0.b)) != any(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 10924u, u_input.b), vec4<u32>(35699u, u_input.b, 4294967295u, u_input.a))), 31u)], !(-666f < arg_0.b), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, select(88400u, 27500u, true)), 31u)], func_2().b >= _wgslsmith_f_op_f32(-arg_0.b)));
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(max(~arg_2, i32(-1i) * -2147483647i), arg_1.b.x), arg_3);
    return vec4<bool>(global1[_wgslsmith_index_u32(~u_input.a, 31u)], !(var_2.x >= 1000f), !(~0i < ~var_1.c.b), !any(vec4<bool>(any(arg_0.c.a.a.zzy), u_input.a <= u_input.b, global1[_wgslsmith_index_u32(0u, 31u)], true)));
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    global0 = _wgslsmith_mod_i32(arg_0.e.a.b >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(select(vec3<u32>(arg_0.d, u_input.b, arg_0.d), vec3<u32>(u_input.b, u_input.a, 4513u), vec3<bool>(global1[_wgslsmith_index_u32(0u, 31u)], true, global1[_wgslsmith_index_u32(arg_0.d, 31u)]))), select(vec3<u32>(arg_0.a, 1u, arg_0.d), firstTrailingBit(vec3<u32>(arg_0.a, u_input.b, 0u)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], arg_0.b.a.a.x, false), vec3<bool>(global1[_wgslsmith_index_u32(24876u, 31u)], false, global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b, 31u)])))) % 32u), -15041i);
    global2 = arg_0.e.c.b;
    global2 = 0i;
    global0 = arg_0.b.a.b;
    return vec4<bool>(true, arg_0.d > 65704u, global1[_wgslsmith_index_u32(0u, 31u)], any(func_4(func_2(), func_2().c, -select(-11666i, -11517i, false), vec2<i32>(firstTrailingBit(-11072i), ~arg_0.b.c.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(Struct_1(select(func_1(Struct_4(96656u, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], true, global1[_wgslsmith_index_u32(u_input.b, 31u)], true), -6560i), vec4<i32>(-20391i, -36024i, -1i, 8896i), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(12767u, 31u)], global1[_wgslsmith_index_u32(1851u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)], false), -2147483647i), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)], false)), 1381f, u_input.a, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(1426u, 31u)], global1[_wgslsmith_index_u32(11567u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)], true), -22586i), vec4<i32>(-52558i, -2147483647i, -9626i, -28146i), Struct_1(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 31u)], false), -33536i), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)])))), !vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(u_input.a, 31u)]), true || global1[_wgslsmith_index_u32(u_input.b, 31u)]), 0i), max(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(30829i, 2147483647i, -30132i, 28010i)), vec4<i32>(i32(-1i) * -1i, 2147483647i, 1i, ~2147483647i)), Struct_1(vec4<bool>(!global1[_wgslsmith_index_u32(u_input.b, 31u)], true, true, any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(13696u, 31u)]))), 0i), !vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24966u, u_input.a, 1u, u_input.a), vec4<u32>(0u, 0u, u_input.a, u_input.a)), 31u)], all(vec2<bool>(true, true)), true, global1[_wgslsmith_index_u32(~u_input.a, 31u)])), 588f, Struct_2(func_2().c.c, _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -11684i, -1i, 20943i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(~0i, func_3(1i, Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(4294967295u, 31u)]), 2147483647i), vec4<i32>(-67028i, -60948i, -4234i, 4086i), Struct_1(vec4<bool>(true, true, true, true), 56140i), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(86405u, 31u)], global1[_wgslsmith_index_u32(8040u, 31u)])), -800f, Struct_2(Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(42358u, 31u)], global1[_wgslsmith_index_u32(20194u, 31u)]), 1i), vec4<i32>(0i, 25726i, 0i, -370i), Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)]), -27063i), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(9361u, 31u)]))), true, vec2<u32>(22005u, u_input.b)), abs(-74125i), -1i)), Struct_1(func_4(func_2(), Struct_2(Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(1u, 31u)]), -39363i), vec4<i32>(-1i, -2147483647i, -1i, 1i), Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(6314u, 31u)]), -60665i), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 31u)], true)), 5910i, min(vec2<i32>(-39694i, 1i), vec2<i32>(-12i, 2147483647i))), -61946i), !select(func_4(Struct_3(Struct_2(Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 31u)], false, false), 46131i), vec4<i32>(-1i, -2147483647i, 20959i, -18319i), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], true, true, true), -34290i), vec4<bool>(false, true, global1[_wgslsmith_index_u32(26188u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)])), 1005f, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], false, global1[_wgslsmith_index_u32(1u, 31u)]), 0i), vec4<i32>(56816i, -1i, 2147483647i, -54993i), Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(24779u, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)]), -2147483647i), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 31u)], false, false))), Struct_2(Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(32224u, 31u)], global1[_wgslsmith_index_u32(16244u, 31u)], false), 1i), vec4<i32>(1i, 1i, -2147483647i, 20242i), Struct_1(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(14163u, 31u)]), 0i), vec4<bool>(false, true, false, false)), -31423i, vec2<i32>(-26775i, -7956i)), vec4<bool>(global1[_wgslsmith_index_u32(16057u, 31u)], true, true, false), func_4(Struct_3(Struct_2(Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(27391u, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]), 2147483647i), vec4<i32>(-1i, -17719i, -22903i, -4908i), Struct_1(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 31u)], true), 0i), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(17792u, 31u)], false, false)), -1543f, Struct_2(Struct_1(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(13772u, 31u)]), -57467i), vec4<i32>(-2398i, 28982i, -1i, -2147483647i), Struct_1(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(4294967295u, 31u)]), 1i), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], false, global1[_wgslsmith_index_u32(58166u, 31u)], false))), Struct_2(Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(21466u, 31u)]), 28240i), vec4<i32>(0i, 11103i, -1i, 1i), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], true, global1[_wgslsmith_index_u32(u_input.b, 31u)], true), 17096i), vec4<bool>(false, true, false, false)), -30584i, vec2<i32>(-1018i, -8539i)))));
    var var_1 = Struct_2(func_2().c.a, _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1084i, 0i, var_0.c.a.b, var_0.a.c.b), vec4<i32>(-2147483647i, -27679i, var_0.c.a.b, var_0.a.c.b)), vec4<i32>(firstLeadingBit(var_0.c.c.b), -1i | var_0.c.a.b, 0i, 57716i)) >> (max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, u_input.b), vec4<u32>(41718u, 1u, 0u, 1u)) | abs(vec4<u32>(4294967295u, 1u, 1u, 0u)), select(vec4<u32>(u_input.a, 1u, 36932u, u_input.b), firstLeadingBit(vec4<u32>(163u, 0u, 4294967295u, 16694u)), false)) % vec4<u32>(32u)), var_0.a.a, func_4(Struct_3(func_2().c, _wgslsmith_div_f32(173f, _wgslsmith_f_op_f32(ceil(var_0.b))), func_2().a), Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], var_0.c.d.x, true, false), -var_0.a.b.x), var_0.a.b, func_2().a.a, vec4<bool>(global1[_wgslsmith_index_u32(min(u_input.b, u_input.a), 31u)], select(false, global1[_wgslsmith_index_u32(21501u, 31u)], true), global1[_wgslsmith_index_u32(u_input.a, 31u)], any(var_0.a.c.a.xw))), -11394i, vec2<i32>(func_3(min(var_0.a.a.b, -2147483647i), func_2(), any(var_0.a.d.wyw), countOneBits(vec2<u32>(0u, u_input.b))), countOneBits(func_3(var_0.a.c.b, Struct_3(var_0.c, var_0.b, Struct_2(Struct_1(var_0.c.a.a, 2147483647i), var_0.c.b, Struct_1(vec4<bool>(var_0.a.c.a.x, global1[_wgslsmith_index_u32(4294967295u, 31u)], false, false), var_0.c.a.b), vec4<bool>(true, var_0.c.c.a.x, var_0.c.c.a.x, var_0.c.d.x))), var_0.a.c.a.x, vec2<u32>(0u, 0u))))));
    let var_2 = Struct_1(vec4<bool>((abs(-30115i) << (_wgslsmith_mult_u32(u_input.b, 11574u) % 32u)) >= ~(-var_1.b.x), true, !(!all(vec3<bool>(true, var_1.a.a.x, global1[_wgslsmith_index_u32(4294967295u, 31u)]))), var_1.a.a.x), -1372i);
    global2 = ~reverseBits(abs(reverseBits(-48639i)));
    var var_3 = vec4<u32>(1u, 0u, 1u, firstLeadingBit(firstTrailingBit(abs(4294967295u))));
    var var_4 = 1u;
    var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 56057u | reverseBits(_wgslsmith_div_u32(4294967295u, var_3.x)), firstLeadingBit(abs(var_3.x) ^ 1u), ~var_3.x), reverseBits(vec4<u32>(u_input.b, ~1u, 25166u, _wgslsmith_mod_u32(u_input.a, var_3.x))), firstTrailingBit(vec4<u32>(~(~90906u), _wgslsmith_mult_u32(~22910u, 1u << (var_3.x % 32u)), abs(1u), 60950u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(~var_3.x, var_3.x, 72586u)), reverseBits(_wgslsmith_sub_vec3_u32(var_3.yyw, vec3<u32>(u_input.a, u_input.b, 4294967295u)))), min(_wgslsmith_sub_vec4_i32(-var_1.b & (var_0.a.b << (vec4<u32>(var_3.x, 14379u, var_3.x, 1u) % vec4<u32>(32u))), select(vec4<i32>(-1i, -34416i, 1i, 4590i), var_1.b, true) >> (vec4<u32>(u_input.b, u_input.b, 20257u, 0u) % vec4<u32>(32u))), -vec4<i32>(_wgslsmith_mult_i32(-1i, -20631i), -35995i, var_2.b, func_3(-27080i, Struct_3(Struct_2(var_1.c, vec4<i32>(var_0.a.c.b, var_1.a.b, -2147483647i, -27932i), Struct_1(var_2.a, var_2.b), vec4<bool>(false, true, var_1.c.a.x, var_2.a.x)), var_0.b, Struct_2(Struct_1(var_0.a.a.a, -2362i), vec4<i32>(var_0.a.b.x, 22017i, 2147483647i, var_2.b), Struct_1(var_2.a, var_2.b), var_2.a)), true, var_3.zw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(-530f)), var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1369f) + vec2<f32>(var_0.b, -1000f))), vec2<bool>(var_2.a.x, true)))), vec2<f32>(1540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1941f, var_0.b) + -981f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))))), -abs(var_1.b.x));
}

