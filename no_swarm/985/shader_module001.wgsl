struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(914f, false, true, 2147483647i, vec4<i32>(i32(-2147483648), i32(-2147483648), 38031i, i32(-2147483648)));

var<private> global1: f32 = -1694f;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global4 = array<vec4<bool>, 10>();
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -307f))), true, true, -29611i, (vec4<i32>(-2147483647i, abs(4936i), u_input.c.x, 14644i ^ global2.e.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, u_input.b.x, 50591u, u_input.a.x), u_input.b) % vec4<u32>(32u))) << (~vec4<u32>(~69518u, 79858u, ~arg_0.x, firstTrailingBit(arg_0.x)) % vec4<u32>(32u)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, -1000f)) - -1079f), !(!(!any(vec2<bool>(global2.c, false)))), true, ~12560i, vec4<i32>(~u_input.d.x, ~u_input.d.x, abs(u_input.d.x) & -61164i, -73037i));
    let var_1 = ~select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 3597u, u_input.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, 0u), u_input.b.zyy)), _wgslsmith_mult_vec3_u32(u_input.b.zxy, vec3<u32>(4294967295u, 1u, 13779u)), !(!global3.b)) | (u_input.b.xzy | u_input.b.zzw);
    let var_2 = any(vec2<bool>(all(!vec3<bool>(global0.b, global3.c, false)), false)) | (var_0.a < _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(676f, _wgslsmith_f_op_f32(-350f - var_0.a)))));
    return _wgslsmith_f_op_f32(round(global2.a));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(0u, 32824u)))) + _wgslsmith_f_op_f32(1351f - global2.a))), false, false, 105730i, _wgslsmith_sub_vec4_i32(vec4<i32>(select(_wgslsmith_mult_i32(1i, global0.d), global3.e.x, !global3.c), -(global2.e.x >> (23260u % 32u)), 2147483647i, _wgslsmith_add_i32(-2147483647i | u_input.c.x, ~(-2147483647i))), select(global3.e, ~(vec4<i32>(4161i, -1i, 0i, u_input.d.x) << (u_input.b % vec4<u32>(32u))), vec4<bool>(global2.c, true, any(vec2<bool>(true, global0.b)), select(true, global3.c, global2.c)))));
    var var_1 = u_input.d.x;
    var_1 = _wgslsmith_mod_i32(1i, firstTrailingBit(_wgslsmith_div_i32((var_0.d | 37695i) << ((0u << (arg_0 % 32u)) % 32u), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(global0.e.x, global0.d, 1i)))));
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * -1495f)), -513f)))), true, !global3.c, var_0.e.x, select(global0.e, global2.e, global3.b));
}

fn func_1() -> vec3<bool> {
    global0 = func_2(47896u);
    global2 = Struct_1(_wgslsmith_f_op_f32(1388f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f + global0.a)), _wgslsmith_f_op_f32(1416f + -581f)))), false, global0.c, 58356i, (firstTrailingBit(reverseBits(u_input.c)) | vec4<i32>(2147483647i, u_input.d.x, 1i, 2160i)) >> (u_input.b % vec4<u32>(32u)));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -895f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(floor(-635f))), u_input.b.x < u_input.b.x, true, 20405i, vec4<i32>(reverseBits(global0.d), _wgslsmith_dot_vec4_i32(abs(global2.e), vec4<i32>(u_input.d.x, ~u_input.c.x, -u_input.c.x, global3.d)), u_input.c.x, -20719i));
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global3.a, var_0))))))), false, !global2.c, select(1i, u_input.d.x, false), vec4<i32>(reverseBits(global2.d), -abs(global0.d), -global3.d, global0.e.x ^ ~global2.d));
    return vec3<bool>(any(vec2<bool>(true, all(vec2<bool>(global2.b, true)))), true, global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(), vec3<bool>(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)) >= _wgslsmith_f_op_f32(round(-1144f))), func_1());
    global1 = _wgslsmith_f_op_f32(abs(global0.a));
    var var_1 = ~1u;
    var var_2 = !(!func_1());
    global3 = func_2(1u & u_input.a.x);
    var var_3 = Struct_1(global2.a, any(vec4<bool>(!global2.b, global3.b, var_0.x, any(global4[_wgslsmith_index_u32(firstLeadingBit(110187u), 10u)]))), any(select(!vec2<bool>(var_0.x, true), !func_1().zz, !(global2.c || var_2.x))), 1i, vec4<i32>(2147483647i, reverseBits((global2.d << (0u % 32u)) | _wgslsmith_clamp_i32(-2147483647i, global0.e.x, -16039i)), reverseBits(reverseBits(global2.d)), -max(global2.e.x ^ -1i, -u_input.c.x)));
    let var_4 = func_2(1u);
    global2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -199f), false, true, global3.e.x, var_3.e);
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mult_vec2_i32(var_4.e.wx ^ vec2<i32>(var_4.d, var_4.d), var_3.e.xw >> (u_input.a % vec2<u32>(32u)))), 1367i & ~global0.e.x, 29362u, vec3<u32>(u_input.b.x << (1u % 32u), (reverseBits(u_input.b.x) >> (u_input.b.x % 32u)) | u_input.a.x, ~u_input.a.x), vec2<f32>(-1064f, 632f));
}

