struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(1u, 48191u), 1u, false, false, Struct_1(-1i, vec4<f32>(-2425f, -687f, -1527f, -445f), vec4<f32>(1000f, -1000f, -1916f, -1162f), vec2<f32>(2502f, -1245f), vec2<i32>(69522i, 60172i)));

var<private> global1: array<u32, 25> = array<u32, 25>(4294967295u, 1u, 1u, 0u, 10210u, 0u, 4294967295u, 1u, 239u, 4294967295u, 0u, 37986u, 26593u, 4294967295u, 22828u, 2535u, 0u, 1u, 20453u, 25720u, 32817u, 0u, 4294967295u, 18566u, 1u);

var<private> global2: u32 = 4294967295u;

var<private> global3: vec3<i32>;

var<private> global4: array<Struct_1, 17>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(-731f, _wgslsmith_f_op_f32(ceil(548f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1523f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.d.x + 464f))))));
    var var_1 = ~firstTrailingBit(~(~vec3<i32>(-2147483647i, global0.e.e.x, 0i)) ^ -(vec3<i32>(arg_1.a, global3.x, arg_1.a) << (u_input.a % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)));
    global1 = array<u32, 25>();
    let var_3 = arg_0;
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = Struct_2(vec2<u32>(global0.b, min(~1u, 5803u)), ~(~(~(u_input.a.x << (39685u % 32u)))), all(!(!vec3<bool>(true, false, global0.c))), all(vec3<bool>(global0.c, true, !global0.d)) && !(!global0.c), func_2(arg_0, Struct_1(19731i, global0.e.c, global0.e.b, arg_0.b.wz, -_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.e.x, global3.x), vec2<i32>(global3.x, -1i)))));
    global3 = max(vec3<i32>(abs(arg_2), _wgslsmith_div_i32(arg_2, -32269i | (global3.x & 20417i)), -_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, -2147483647i), reverseBits(1i))), ~firstTrailingBit(firstLeadingBit(~vec3<i32>(arg_2, -1i, -1i))));
    global1 = array<u32, 25>();
    var var_1 = var_0;
    var var_2 = func_2(Struct_1(var_0.e.e.x, vec4<f32>(global0.e.b.x, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.c.x - -1459f)), arg_0.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(492f, 1231f, -637f, -1197f), var_0.e.c)) + arg_0.c), var_1.e.d, vec2<i32>(-1i) * -vec2<i32>(-17201i, var_1.e.e.x)), func_2(arg_0, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(max(firstLeadingBit(59802u), abs(25429u)), u_input.a.x), 17u)]));
    return true;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<u32> {
    global1 = array<u32, 25>();
    global0 = Struct_2(vec2<u32>(global1[_wgslsmith_index_u32(~1u, 25u)], 1u), ~(~global0.b), global0.d, select(false, arg_0.x, select(global0.c, (arg_0.x & true) == (39066u != global0.a.x), arg_0.x)), arg_1);
    let var_0 = all(vec4<bool>(all(!vec2<bool>(true, arg_0.x)) && false, !(!global0.c), func_3(func_2(Struct_1(arg_1.e.x, vec4<f32>(arg_1.c.x, global0.e.d.x, arg_1.d.x, arg_1.d.x), arg_1.b, vec2<f32>(-2034f, 693f), global3.xz), global0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * -179f) - _wgslsmith_div_f32(-185f, 1584f)), 0i), global0.c));
    return select(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b, 0u, ~global1[_wgslsmith_index_u32(global0.b, 25u)]), vec3<u32>(0u >> (global1[_wgslsmith_index_u32(2235u, 25u)] % 32u), global0.a.x | u_input.a.x, ~0u)), ~u_input.a, vec3<bool>(func_3(func_2(Struct_1(global0.e.e.x, vec4<f32>(-1000f, 1464f, -1000f, -717f), arg_1.b, vec2<f32>(arg_1.c.x, global0.e.c.x), arg_1.e), Struct_1(1i, vec4<f32>(arg_1.b.x, global0.e.c.x, 2028f, global0.e.b.x), vec4<f32>(global0.e.c.x, 2879f, -1209f, 1510f), vec2<f32>(-996f, global0.e.d.x), vec2<i32>(global0.e.e.x, 23585i))), arg_1.b.x, _wgslsmith_mult_i32(global0.e.e.x, global3.x)), false, true)) >> (u_input.a % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~global3.x);
    var var_1 = global0.e;
    global3 = max(-(~vec3<i32>(var_1.a, 11100i, var_0)), _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(global3.x), global0.e.e.x, -29194i), -vec3<i32>(global0.e.e.x, global0.e.a, 2147483647i))) << (func_1(select(!select(vec2<bool>(global0.c, true), vec2<bool>(global0.d, true), true), !(!vec2<bool>(global0.d, true)), !(!vec2<bool>(global0.d, global0.d))), Struct_1(-1i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.e.d.x, global0.e.d.x, 881f, -201f), var_1.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.c.x, -1442f, 1244f, -374f) * var_1.b) - global0.e.b), vec2<f32>(_wgslsmith_f_op_f32(sign(-175f)), 1715f), ~_wgslsmith_add_vec2_i32(vec2<i32>(-29977i, global0.e.a), vec2<i32>(var_1.a, -32718i)))) % vec3<u32>(32u));
    let var_2 = select(vec2<bool>(!global0.c && (86457u < (global0.b << (u_input.a.x % 32u))), global0.d), select(select(!select(vec2<bool>(true, global0.c), vec2<bool>(global0.d, global0.c), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(global0.d, global0.c, global0.c)), true), !(!select(vec2<bool>(global0.c, global0.c), vec2<bool>(true, false), global0.c)), true), select(vec2<bool>(global0.c, true), select(select(vec2<bool>(false, global0.c), vec2<bool>(true, global0.d), !vec2<bool>(false, global0.c)), !select(vec2<bool>(global0.d, true), vec2<bool>(global0.c, false), true), select(vec2<bool>(global0.c, true), vec2<bool>(true, global0.d), false)), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(global0.c, true), global0.d)), func_3(global0.e, _wgslsmith_f_op_f32(abs(600f)), _wgslsmith_sub_i32(-2147483647i, -1i)))));
    var_1 = Struct_1(global3.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(121f, -340f, func_2(global0.e, global0.e).c.x, var_1.c.x) - vec4<f32>(_wgslsmith_f_op_f32(1222f * 666f), -724f, _wgslsmith_f_op_f32(-global0.e.c.x), _wgslsmith_f_op_f32(ceil(-457f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-702f)))), _wgslsmith_f_op_f32(global0.e.d.x - _wgslsmith_f_op_f32(f32(-1f) * -1080f)), _wgslsmith_f_op_f32(-120f + _wgslsmith_f_op_f32(step(var_1.b.x, var_1.d.x)))) * vec4<f32>(-548f, _wgslsmith_f_op_f32(-var_1.c.x), -1281f, -1678f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1641f, -328f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.wy))))), ~vec2<i32>(-32197i, global0.e.a) >> (vec2<u32>(_wgslsmith_mult_u32(24218u ^ global0.b, u_input.a.x), reverseBits(u_input.a.x) & ~u_input.a.x) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.e.c.x, firstLeadingBit(_wgslsmith_clamp_vec2_u32(~u_input.a.xz & vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global0.a.x), u_input.a.yx, firstTrailingBit(~vec2<u32>(85474u, global0.b)))), max(firstLeadingBit(countOneBits(-vec3<i32>(-31116i, 1i, global0.e.a))), reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, var_0, -1i, 6874i), vec4<i32>(-25459i, global0.e.e.x, -12310i, 44299i)), _wgslsmith_sub_i32(var_0, global0.e.e.x), -var_0))));
}

