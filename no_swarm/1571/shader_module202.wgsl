struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<i32>(-1i, 1i, 2147483647i), vec2<bool>(true, false), 4294967295u, vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec4<u32>(10399u, 28953u, 39008u, 4294967295u)), Struct_1(vec3<i32>(i32(-2147483648), 30682i, 2147483647i), vec2<bool>(true, true), 20669u, vec3<i32>(-1i, -49039i, -21744i), vec4<u32>(48255u, 83088u, 4294967295u, 4294967295u)), Struct_1(vec3<i32>(-60974i, 12531i, 0i), vec2<bool>(true, false), 1u, vec3<i32>(5050i, 1i, i32(-2147483648)), vec4<u32>(0u, 34832u, 0u, 0u)), Struct_1(vec3<i32>(1i, 21610i, 0i), vec2<bool>(false, false), 17774u, vec3<i32>(-1i, -32480i, -56304i), vec4<u32>(1u, 4294967295u, 49043u, 0u)), Struct_1(vec3<i32>(0i, 0i, -1i), vec2<bool>(true, false), 1u, vec3<i32>(-1i, 2147483647i, -25559i), vec4<u32>(56768u, 4294967295u, 0u, 2324u)), Struct_1(vec3<i32>(39584i, -47909i, 43915i), vec2<bool>(false, false), 33968u, vec3<i32>(6811i, 1i, 1i), vec4<u32>(4294967295u, 15309u, 4294967295u, 1u)), Struct_1(vec3<i32>(12683i, -1i, 26264i), vec2<bool>(true, false), 1u, vec3<i32>(i32(-2147483648), -7969i, 1i), vec4<u32>(1u, 75839u, 36408u, 2539u)));

var<private> global2: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(Struct_3(vec3<f32>(373f, -1222f, 577f), vec3<i32>(-1i, i32(-2147483648), 17881i)), 1u), Struct_4(Struct_3(vec3<f32>(-731f, -661f, 742f), vec3<i32>(33359i, -44891i, -15950i)), 19995u), Struct_4(Struct_3(vec3<f32>(-303f, 2333f, -1207f), vec3<i32>(-5577i, -1i, -52823i)), 97248u), Struct_4(Struct_3(vec3<f32>(-1000f, -2026f, -463f), vec3<i32>(-8214i, 651i, -3701i)), 9728u), Struct_4(Struct_3(vec3<f32>(1153f, 303f, 427f), vec3<i32>(1i, -47164i, 0i)), 4294967295u), Struct_4(Struct_3(vec3<f32>(345f, -585f, 230f), vec3<i32>(1i, i32(-2147483648), -25366i)), 88376u), Struct_4(Struct_3(vec3<f32>(269f, 209f, -506f), vec3<i32>(-432i, -7692i, 2900i)), 38932u), Struct_4(Struct_3(vec3<f32>(1751f, -960f, 726f), vec3<i32>(-65196i, -8539i, 2147483647i)), 3218u), Struct_4(Struct_3(vec3<f32>(-1388f, 140f, -1794f), vec3<i32>(17504i, 45422i, -5920i)), 56459u), Struct_4(Struct_3(vec3<f32>(-1000f, 878f, 724f), vec3<i32>(i32(-2147483648), 38280i, 25276i)), 42014u), Struct_4(Struct_3(vec3<f32>(-370f, -1000f, -290f), vec3<i32>(-1i, -1i, -1i)), 4294967295u), Struct_4(Struct_3(vec3<f32>(-740f, -1057f, -106f), vec3<i32>(32400i, 1i, 31890i)), 1u), Struct_4(Struct_3(vec3<f32>(841f, 1641f, -1641f), vec3<i32>(-18878i, i32(-2147483648), 1i)), 4294967295u));

var<private> global3: array<vec3<i32>, 17>;

var<private> global4: array<vec2<u32>, 9>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> vec3<bool> {
    return vec3<bool>(any(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), false))), true, all(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), true)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec3<u32>) -> vec3<u32> {
    global4 = array<vec2<u32>, 9>();
    return vec3<u32>(0u, arg_1.b, _wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(6267u, arg_2.x, 1u) >> (vec3<u32>(arg_1.b, arg_2.x, 50852u) % vec3<u32>(32u)), arg_2, ~vec3<u32>(arg_2.x, 12994u, 1u)), vec3<u32>(93367u, select(arg_2.x, u_input.a.x, false), arg_2.x | u_input.a.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-794f, -822f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-333f, 1779f))))))));
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 13u)];
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(select(global3[_wgslsmith_index_u32(0u, 17u)], countOneBits(vec3<i32>(var_1.a.b.x, 26508i, var_1.a.b.x)), true), var_1.a.b), global3[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(var_1.a.a.x >= var_1.a.a.x, all(!(!vec4<bool>(arg_1, false, arg_1, arg_1)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, var_1.b, select(1u, 0u, arg_1)), firstTrailingBit(vec4<u32>(49057u, u_input.a.x, var_1.b, u_input.a.x))), vec3<i32>(var_1.a.b.x, _wgslsmith_div_i32(var_1.a.b.x, -2147483647i), var_1.a.b.x), ~(countOneBits(vec4<u32>(var_1.b, u_input.a.x, u_input.a.x, arg_0.x)) ^ vec4<u32>(func_3(-2147483647i, global2[_wgslsmith_index_u32(10921u, 13u)], vec3<u32>(u_input.a.x, var_1.b, 4294967295u)).x, ~arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_0.x, arg_0.x), vec3<u32>(62963u, u_input.a.x, u_input.a.x)), 6559u)));
    let var_3 = Struct_2(var_1.a.a.x, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1483f + _wgslsmith_f_op_f32(var_1.a.a.x - var_1.a.a.x)), _wgslsmith_f_op_f32(max(var_1.a.a.x, _wgslsmith_f_op_f32(round(var_1.a.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f + var_1.a.a.x)))));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) + var_1.a.a.x), _wgslsmith_div_f32(var_3.a, var_3.a)));
    return -8137i;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~(~4151u), 7u)];
    var var_1 = 354f;
    global0 = -670f;
    var var_2 = !(!(!var_0.b.x));
    var var_3 = vec2<i32>(2147483647i, reverseBits(_wgslsmith_mult_i32(1i, func_4(func_3(-1i, global2[_wgslsmith_index_u32(1091u, 13u)], vec3<u32>(4294967295u, 1u, 4294967295u)), false))));
    return var_0.e;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_4) -> Struct_4 {
    global0 = 1302f;
    let var_0 = Struct_2(arg_1.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_3.a.a.x) - _wgslsmith_f_op_vec2_f32(exp2(arg_3.a.a.xz))) + _wgslsmith_f_op_vec2_f32(-arg_2.xx)))));
    var var_1 = 2147483647i;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(737f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1219f))), arg_3.a.a.xy) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a, 1014f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.b.x, 1000f)))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(var_0.a * arg_3.a.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.a.x, -874f) - vec2<f32>(-738f, -797f)))))));
    let var_3 = ~vec4<u32>(~(~(~arg_0.c)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13301u, 36302u, 33486u, u_input.a.x), ~arg_0.e), reverseBits(countOneBits(arg_3.b))), ~arg_0.c, 14533u);
    return Struct_4(arg_3.a, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-386f + -1122f)));
    global0 = -601f;
    var var_0 = func_1();
    global3 = array<vec3<i32>, 17>();
    var var_1 = func_5(Struct_1(firstTrailingBit(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a.x, 0u), 17u)]), vec2<bool>(any(vec3<bool>(true, true, true)), true), u_input.a.x, ~(-max(vec3<i32>(17803i, -40668i, 8696i), global3[_wgslsmith_index_u32(45874u, 17u)])), ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), func_2(vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x), u_input.a.x), ~vec4<u32>(1u, u_input.a.x, u_input.a.x, 29316u))), Struct_2(_wgslsmith_f_op_f32(-1f), vec2<f32>(715f, 299f)), vec3<f32>(_wgslsmith_div_f32(-188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-813f - 147f))), 149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-277f))) - 541f)), Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(step(1901f, 202f)), _wgslsmith_f_op_f32(f32(-1f) * -1403f), _wgslsmith_f_op_f32(-988f - 1102f)), global3[_wgslsmith_index_u32(~u_input.a.x, 17u)]), abs(select(1u, u_input.a.x, var_0.x))));
    var var_2 = global1[_wgslsmith_index_u32(0u & var_1.b, 7u)];
    global4 = array<vec2<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(800f, reverseBits(func_3(-2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(u_input.a.x, u_input.a.x, var_2.b.x), _wgslsmith_mult_u32(49353u, 1u)), 13u)], ~var_2.e.zxy)), max(~max(var_2.d.x, 0i) & var_2.a.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-3758i, abs(10750i), _wgslsmith_dot_vec4_i32(vec4<i32>(10876i, -2730i, 1i, var_2.a.x), vec4<i32>(var_1.a.b.x, 32180i, var_1.a.b.x, var_1.a.b.x))), _wgslsmith_dot_vec2_i32(select(var_1.a.b.xz, vec2<i32>(var_2.d.x, var_2.d.x), vec2<bool>(false, true)), select(vec2<i32>(var_2.d.x, 2147483647i), vec2<i32>(0i, var_2.a.x), vec2<bool>(var_2.b.x, false))))), var_2.a.x, var_2.e.wxy);
}

