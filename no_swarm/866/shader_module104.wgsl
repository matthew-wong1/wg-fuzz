struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(1296f, 448f), Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, true, true, false), 1426f, 0u, -1831f), vec2<i32>(-1i, 37649i), false);

var<private> global2: array<Struct_2, 2>;

var<private> global3: array<Struct_4, 31>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = abs(u_input.a.x);
    var var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(~global1.b.d, u_input.c.x) >> (min(countOneBits(select(u_input.c.zy, u_input.a, arg_3.b.b.b.yy)), _wgslsmith_mult_vec2_u32(~u_input.a, u_input.a)) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_u32(select(reverseBits(vec2<u32>(global1.b.d, 61925u)), abs(u_input.c.xy), global1.d), vec2<u32>(~22467u, 1u)));
    let var_2 = global1.b.b.x;
    global0 = array<i32, 7>();
    var var_3 = select(global1.b.b.zz, !(!(!vec2<bool>(false, global1.b.b.x))), select(select(vec2<bool>(false, true), !select(global1.b.a.yz, arg_3.b.b.a.yy, vec2<bool>(global1.d, true)), !select(arg_3.b.b.b.wy, vec2<bool>(false, false), global1.b.a.yy)), !arg_3.b.b.b.xx, !(!(!vec2<bool>(arg_3.a, global1.d)))));
    return vec3<i32>(-arg_3.b.c.x, firstTrailingBit(0i), 0i);
}

fn func_2() -> Struct_4 {
    global2 = array<Struct_2, 2>();
    let var_0 = global2[_wgslsmith_index_u32(69848u, 2u)];
    global0 = array<i32, 7>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.x)))))));
    var var_2 = _wgslsmith_dot_vec3_i32(~vec3<i32>(global1.c.x, abs(global0[_wgslsmith_index_u32(~global1.b.d, 7u)]), 1i), ~func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, global1.a.x)), -_wgslsmith_mod_i32(15940i, global0[_wgslsmith_index_u32(global1.b.d, 7u)]), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 891f, var_0.a.x))), Struct_3(true, Struct_2(vec2<f32>(-1661f, 1000f), Struct_1(global1.b.b.xwz, global1.b.b, -1434f, 730u, 1041f), vec2<i32>(global1.c.x, -2147483647i), var_0.b.a.x))));
    return global3[_wgslsmith_index_u32(~firstTrailingBit(64890u), 31u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_3 {
    var var_0 = 1u;
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    global2 = array<Struct_2, 2>();
    let var_1 = ~_wgslsmith_mult_u32(global1.b.d, 4294967295u);
    return Struct_3(select(any(arg_2.b.b.a.zy), !(!(false || global1.d)), select(true, !(!global1.d), arg_2.a)), Struct_2(global1.a, global1.b, _wgslsmith_add_vec2_i32(select(vec2<i32>(-1i, 1i), vec2<i32>(u_input.b, arg_0.x), global1.b.b.x), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-41762i, 1i), global1.c, vec2<i32>(2147483647i, 15492i)))), false));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = arg_0.a;
    var var_1 = func_4(vec4<i32>(arg_3.x, -58461i, _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(48333i, global1.c.x, 2147483647i, u_input.b), vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -1i, -1i)), vec4<i32>(_wgslsmith_sub_i32(u_input.b, -22602i), -1i & global1.c.x, ~global0[_wgslsmith_index_u32(global1.b.d, 7u)], -global1.c.x)), 8648i), func_2(), Struct_3(true, Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1684f, 935f), var_0.xz)), Struct_1(vec3<bool>(global1.d, false, arg_2.x), select(vec4<bool>(arg_2.x, true, true, global1.d), global1.b.b, arg_2), -635f, _wgslsmith_dot_vec2_u32(vec2<u32>(42878u, 44974u), u_input.a), -978f), select(~global1.c, countOneBits(arg_3), true), true)));
    var_0 = arg_0.a;
    let var_2 = func_2();
    let var_3 = func_4(vec4<i32>(-_wgslsmith_add_i32(42833i, select(arg_3.x, var_1.b.c.x, true)), ~1i, _wgslsmith_mod_i32(-(~(-2147483647i)), -2147483647i), _wgslsmith_add_i32(~(~arg_3.x), -_wgslsmith_sub_i32(-2147483647i, -17119i))), func_2(), Struct_3(global1.d, func_4(vec4<i32>(u_input.b, -13187i, _wgslsmith_clamp_i32(20131i, var_1.b.c.x, u_input.b), countOneBits(-67084i)), var_2, func_4(abs(vec4<i32>(var_1.b.c.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], 8137i, -2147483647i)), func_2(), Struct_3(true, Struct_2(vec2<f32>(var_0.x, var_1.b.b.c), Struct_1(vec3<bool>(arg_2.x, global1.d, arg_2.x), var_1.b.b.b, arg_0.a.x, u_input.a.x, 1310f), global1.c, var_1.a)))).b));
    return global2[_wgslsmith_index_u32(~1u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 31>();
    global1 = global2[_wgslsmith_index_u32(global1.b.d, 2u)];
    global1 = func_1(global3[_wgslsmith_index_u32(global1.b.d, 31u)], _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1984f, 1622f, 2339f, global1.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a.x, global1.b.c, 637f, -486f), vec4<f32>(global1.b.e, 718f, 346f, global1.b.c))))))), select(global1.b.b, !(!(!global1.b.b)), global1.b.b), firstTrailingBit(global1.c << (u_input.a % vec2<u32>(32u))));
    let var_0 = func_1(Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.e, 383f, global1.b.e), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1511f, -1000f, -1345f))))), !func_1(Struct_4(vec3<f32>(727f, global1.a.x, -1253f)), vec4<f32>(134f, -1082f, 1032f, -1894f), vec4<bool>(global1.b.b.x, false, global1.b.b.x, true), vec2<i32>(u_input.b, 20381i)).b.a))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.a.x, global1.b.e), _wgslsmith_f_op_f32(-global1.a.x), 378f, _wgslsmith_f_op_f32(-global1.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + -800f)), global1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1741f * global1.a.x))), _wgslsmith_f_op_f32(global1.a.x - global1.a.x)))), !(!global1.b.b), vec2<i32>(0i, 0i ^ _wgslsmith_dot_vec2_i32(global1.c, vec2<i32>(-16769i, 81202i))));
    var var_1 = var_0.a;
    global3 = array<Struct_4, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, 1u);
}

