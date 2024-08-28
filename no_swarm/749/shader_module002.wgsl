struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i, Struct_1(vec4<u32>(1u, 38482u, 1u, 4294967295u), vec2<f32>(348f, -313f), -1i, false), 33234u, 76347u);

var<private> global1: u32 = 44532u;

var<private> global2: vec4<u32>;

var<private> global3: Struct_3;

var<private> global4: array<u32, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global1 = ~u_input.b << (11130u % 32u);
    global4 = array<u32, 4>();
    var var_0 = global0.b.a;
    var var_1 = Struct_3(select(select(global3.a, vec4<bool>(!global0.b.d, true, true, true), true), vec4<bool>(any(vec3<bool>(global3.a.x, global0.b.d, global0.b.d)), all(vec2<bool>(true, true)), u_input.d.x == ~(-13463i), global0.b.d), any(select(vec4<bool>(global0.b.d, global3.a.x, false, global0.b.d), vec4<bool>(true, global0.b.d, global3.a.x, global0.b.d), select(false, true, false)))), 1i);
    var_0 = vec4<u32>(0u, global2.x, ~var_0.x, ~(~_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(33304u, 4u)], 4u)], global2.x, global0.b.a.x ^ 85146u)));
    return _wgslsmith_f_op_f32(-global0.b.b.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_4 {
    var var_0 = 16908u;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1466f, global0.b.b.x, _wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(func_3())))), vec4<f32>(_wgslsmith_f_op_f32(step(arg_1, arg_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-907f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1352f), -878f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)))))));
    var var_2 = countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.yzy, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(24253u, u_input.b, global4[_wgslsmith_index_u32(38479u, 4u)], u_input.b), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 0u, 0u, global4[_wgslsmith_index_u32(0u, 4u)])), firstTrailingBit(4294967295u), global0.d)), u_input.a.yzx >> (reverseBits(abs(vec3<u32>(1u, 1645u, global4[_wgslsmith_index_u32(63064u, 4u)]))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(~global0.c, global0.c, ~4294967295u), ~u_input.a.yyx)));
    var var_3 = global0.c;
    let var_4 = global0.b;
    return Struct_4(vec3<u32>(~4294967295u, ~(reverseBits(global2.x) ^ _wgslsmith_mod_u32(var_4.a.x, 77361u)), 51344u), min(0u, var_4.a.x) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 4294967295u, global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 44630u), vec4<u32>(global4[_wgslsmith_index_u32(3128u, 4u)], global0.c, 31291u, 59438u)), select(1u, ~min(~global4[_wgslsmith_index_u32(3505u, 4u)], 12776u | u_input.a.x), false), u_input.a.yxz);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = arg_2;
    global1 = ~reverseBits(arg_3.x);
    var var_1 = vec2<bool>(global0.b.d, arg_2.b.d);
    var var_2 = ~_wgslsmith_mult_vec2_i32(u_input.c, ~select(vec2<i32>(-36335i, -1i), countOneBits(u_input.d.zz), !vec2<bool>(var_0.b.d, global0.b.d)));
    var var_3 = -1948f;
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = abs(reverseBits(~vec4<i32>(~global3.b, min(global3.b, arg_0.c), ~(-19241i), ~global3.b)));
    global4 = array<u32, 4>();
    let var_1 = func_4(~vec2<u32>(~(~u_input.b), global2.x), func_2(global3.a.xx, _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x)))), Struct_2(var_0.x & arg_0.c, Struct_1(vec4<u32>(0u ^ u_input.b, _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(arg_0.a.x, 4u)], global2.x), _wgslsmith_sub_u32(60557u, 1u), ~4294967295u), arg_1.yz, firstLeadingBit(0i << (arg_0.a.x % 32u)), _wgslsmith_f_op_f32(abs(-410f)) == arg_1.x), ~(~global0.d), ~countOneBits(~1u)), vec2<u32>(global4[_wgslsmith_index_u32(1u, 4u)], 69594u) << (vec2<u32>(global0.b.a.x & global4[_wgslsmith_index_u32(firstLeadingBit(arg_0.a.x), 4u)], _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(1u, 4u)] >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_u32(global0.b.a, vec4<u32>(82185u, global4[_wgslsmith_index_u32(global0.c, 4u)], 0u, global4[_wgslsmith_index_u32(arg_0.a.x, 4u)])))) % vec2<u32>(32u)));
    global4 = array<u32, 4>();
    global3 = Struct_3(select(select(global3.a, select(vec4<bool>(false, global3.a.x, var_1.b.d, arg_0.d), !global3.a, select(global3.a, global3.a, false)), !select(vec4<bool>(global0.b.d, true, true, true), global3.a, vec4<bool>(false, true, global0.b.d, var_1.b.d))), !(!global3.a), select(vec4<bool>(true, true, !global3.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(39651u, 4u)], 4u)] == 40481u), vec4<bool>(arg_0.d == global0.b.d, !var_1.b.d, true, global0.b.d || false), arg_0.d)), var_0.x);
    return Struct_3(!select(global3.a, !global3.a, !var_1.b.d), var_1.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_add_vec4_u32(global0.b.a, global0.b.a), global0.b.b, -u_input.d.x, select(global0.b.d, global0.b.d, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(905f, 1758f, 1040f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1127f, global0.b.b.x, -228f) * vec3<f32>(global0.b.b.x, 1681f, 613f))))));
    let var_1 = Struct_3(!global3.a, global3.b);
    let var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.b, abs(var_1.b)), u_input.c), vec2<i32>(_wgslsmith_div_i32(u_input.d.x << (global0.d % 32u), var_0.b), u_input.c.x));
    global2 = ~func_4((global2.ww << ((vec2<u32>(84349u, 1u) & u_input.a.zy) % vec2<u32>(32u))) | global2.xz, Struct_4(vec3<u32>(global0.d, 91354u, abs(1u)), firstTrailingBit(34954u ^ global2.x), 80182u, ~(vec3<u32>(u_input.a.x, u_input.b, 4294967295u) | global2.yyy)), func_4(global2.wy, Struct_4(select(global0.b.a.ywx, vec3<u32>(1u, 29710u, 22365u), vec3<bool>(var_1.a.x, global3.a.x, true)), _wgslsmith_add_u32(1u, global0.d), _wgslsmith_div_u32(4294967295u, u_input.b), ~u_input.a.www), Struct_2(global0.b.c, global0.b, min(4294967295u, 97385u), u_input.a.x), _wgslsmith_clamp_vec2_u32(select(global2.wy, vec2<u32>(1u, 0u), var_1.a.zz), vec2<u32>(u_input.b, u_input.b) & global2.xx, vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 4u)], 4u)], 0u))), vec2<u32>(~(~global0.d), func_2(vec2<bool>(true, var_0.a.x), _wgslsmith_f_op_f32(-209f - global0.b.b.x)).d.x)).b.a;
    global0 = Struct_2(_wgslsmith_sub_i32(i32(-1i) * -17295i, -u_input.d.x), Struct_1(_wgslsmith_mult_vec4_u32(~abs(global0.b.a), u_input.a), vec2<f32>(_wgslsmith_f_op_f32(abs(702f)), -830f), 1i, all(vec3<bool>(true, global3.a.x, global4[_wgslsmith_index_u32(global0.b.a.x, 4u)] != global0.c))), 15063u, u_input.b);
    global2 = _wgslsmith_add_vec4_u32(~u_input.a, ~(~min(u_input.a, global0.b.a ^ u_input.a)));
    let var_3 = -u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d);
}

