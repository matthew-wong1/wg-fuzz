struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<vec2<f32>, 19>;

var<private> global3: array<i32, 16>;

var<private> global4: f32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: bool, arg_3: u32) -> i32 {
    let var_0 = Struct_3(firstLeadingBit(abs(~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global3[_wgslsmith_index_u32(91423u, 16u)], arg_1.b, -1i, 8958i)))), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 25u)], false, ~arg_3), countOneBits(firstTrailingBit(u_input.b.wy)) << (~firstTrailingBit(vec2<u32>(u_input.c.x, arg_1.c.x) & vec2<u32>(9986u, u_input.b.x)) % vec2<u32>(32u)), arg_1.d);
    global1 = array<Struct_1, 25>();
    let var_1 = vec4<f32>(arg_1.d, var_0.d, -212f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(360f + -884f)))));
    return ~(2147483647i ^ _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, global3[_wgslsmith_index_u32(1u, 16u)]), firstLeadingBit(-24085i))) | -_wgslsmith_mod_i32(32703i, max(u_input.a.x, arg_1.b) >> (arg_3 % 32u));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec2<i32> {
    global2 = array<vec2<f32>, 19>();
    global2 = array<vec2<f32>, 19>();
    let var_0 = Struct_1(countOneBits((countOneBits(u_input.c.x) << (_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.b.x, arg_1.a)) % 32u)) ^ arg_1.a), vec3<u32>(u_input.c.x, _wgslsmith_clamp_u32(arg_1.a, 0u, u_input.b.x | u_input.b.x) & ~firstLeadingBit(30544u), ~arg_1.b.x ^ _wgslsmith_div_u32(_wgslsmith_add_u32(32441u, 97498u), u_input.b.x)));
    var var_1 = Struct_5(u_input.a.wxy, i32(-1i) * -35065i, firstTrailingBit(reverseBits(min(vec3<u32>(4294967295u, 0u, var_0.b.x), _wgslsmith_sub_vec3_u32(arg_1.b, var_0.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1587f), 344f, all(arg_0))), !(!vec3<bool>(true, any(arg_0), true)));
    var var_2 = Struct_5(~vec3<i32>(func_3(vec3<bool>(arg_0.x, arg_2, arg_0.x), Struct_5(vec3<i32>(13989i, -2045i, -2147483647i), arg_3, u_input.b.zwz, 719f, vec3<bool>(true, true, arg_2)), true, ~var_1.c.x), firstTrailingBit(min(arg_3, 1i)), 0i ^ global3[_wgslsmith_index_u32(~12494u, 16u)]), 1i | u_input.a.x, vec3<u32>(min(u_input.c.x, ~_wgslsmith_add_u32(var_0.a, 22749u)), var_0.b.x << (~_wgslsmith_div_u32(u_input.b.x, var_1.c.x) % 32u), reverseBits(~var_1.c.x & max(u_input.b.x, 11198u))), _wgslsmith_div_f32(_wgslsmith_div_f32(-366f, _wgslsmith_div_f32(-173f, _wgslsmith_f_op_f32(208f - var_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(-1424f * var_1.d)))), select(!select(select(var_1.e, arg_0.wxx, false), arg_0.xyw, select(var_1.e, vec3<bool>(arg_2, true, arg_0.x), arg_0.x)), select(arg_0.zzx, vec3<bool>(!arg_2, false, true), !arg_0.xzy), vec3<bool>((30360u <= var_0.b.x) | var_1.e.x, true, any(!var_1.e))));
    return _wgslsmith_sub_vec2_i32(var_2.a.zz, ~select(vec2<i32>(-1i) * -vec2<i32>(7101i, u_input.a.x), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-13619i, global3[_wgslsmith_index_u32(arg_1.a, 16u)])), ~var_2.a.xx), arg_2));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> i32 {
    var var_0 = true;
    var var_1 = Struct_4(10202i);
    let var_2 = (select(func_4(!vec4<bool>(false, arg_0, false, true), global1[_wgslsmith_index_u32(abs(u_input.b.x), 25u)], !arg_0, func_3(vec3<bool>(arg_0, arg_0, false), Struct_5(vec3<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], var_1.a, global3[_wgslsmith_index_u32(u_input.c.x, 16u)]), global3[_wgslsmith_index_u32(11606u, 16u)], vec3<u32>(u_input.c.x, 4294967295u, u_input.b.x), arg_1.x, vec3<bool>(arg_0, true, false)), true, 57478u)), ~func_4(vec4<bool>(arg_0, true, arg_0, true), global1[_wgslsmith_index_u32(u_input.c.x, 25u)], false, global3[_wgslsmith_index_u32(u_input.c.x, 16u)]), true) << (u_input.b.xw % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-firstTrailingBit(2147483647i), i32(-1i) * -2147483647i), ~u_input.a.xz, u_input.a.wz);
    let var_3 = Struct_3(select(var_1.a, var_1.a, !arg_0), Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(~u_input.c.x)), 25u)], !all(!vec3<bool>(false, arg_0, false)), _wgslsmith_dot_vec3_u32(abs(~u_input.b.zwy), u_input.b.xyx)), u_input.c << (~min(u_input.c, ~vec2<u32>(u_input.c.x, u_input.b.x)) % vec2<u32>(32u)), 482f);
    var var_4 = reverseBits(firstTrailingBit(~u_input.c.x));
    return _wgslsmith_dot_vec2_i32(countOneBits(~(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, 33524i), var_2) & _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), u_input.a.ww))), _wgslsmith_div_vec2_i32(abs(-var_2), u_input.a.wx));
}

fn func_1() -> u32 {
    var var_0 = ~(-19962i);
    var_0 = countOneBits(~(-(~global3[_wgslsmith_index_u32(44171u, 16u)] ^ 31198i)));
    let var_1 = ~u_input.c.x;
    var var_2 = vec3<i32>(-func_2(true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1552f, 664f, -116f, 1123f)))), 17179i, -global3[_wgslsmith_index_u32(var_1, 16u)]) >> (~u_input.b.xyw % vec3<u32>(32u));
    global1 = array<Struct_1, 25>();
    return _wgslsmith_clamp_u32(u_input.c.x, countOneBits(43661u), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!(any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)) || true), false, !((u_input.a.x >> (_wgslsmith_add_u32(18321u, u_input.c.x) % 32u)) >= 1i));
    var var_1 = false;
    var var_2 = 978f;
    var_0 = vec3<bool>(true, !all(!vec4<bool>(true, true, var_0.x, var_0.x)), var_0.x);
    let var_3 = ~_wgslsmith_dot_vec3_i32(max(_wgslsmith_add_vec3_i32(u_input.a.yyy, _wgslsmith_sub_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 16u)], -49042i, global3[_wgslsmith_index_u32(116404u, 16u)]), u_input.a.zwz)), _wgslsmith_add_vec3_i32(u_input.a.xxw, ~vec3<i32>(0i, -2147483647i, 0i))), _wgslsmith_div_vec3_i32(u_input.a.xzx, ~vec3<i32>(u_input.a.x, global3[_wgslsmith_index_u32(1u, 16u)], -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a.wyz), ~func_1());
}

