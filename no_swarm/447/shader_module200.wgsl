struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true));

var<private> global1: array<vec3<f32>, 16>;

var<private> global2: array<u32, 1>;

var<private> global3: array<f32, 17> = array<f32, 17>(-1000f, 192f, 1158f, 1022f, 727f, 1017f, 694f, -1529f, -540f, -1558f, -2216f, -2123f, 2208f, -671f, 1000f, -343f, 1000f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> vec3<bool> {
    var var_0 = max(select(abs(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.d, u_input.b), select(vec2<i32>(u_input.b, 32211i), vec2<i32>(u_input.d, 83766i), true), ~vec2<i32>(u_input.d, 2147483647i))), reverseBits(vec2<i32>(u_input.b, u_input.b)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)]), vec2<u32>(u_input.c.x, u_input.a) >> (vec2<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], 27735u) % vec2<u32>(32u))) % vec2<u32>(32u)), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec2<i32>(~u_input.d, u_input.d));
    var var_1 = -(~min(select(vec4<i32>(var_0.x, u_input.b, 2147483647i, var_0.x), vec4<i32>(2147483647i, -1i, u_input.b, -16532i), vec4<bool>(false, true, false, false)) >> (~u_input.c % vec4<u32>(32u)), vec4<i32>(-59558i, ~3093i, 1i, firstTrailingBit(20339i))));
    global2 = array<u32, 1>();
    let var_2 = vec2<i32>(30432i, ~(-1i));
    var var_3 = Struct_3(-(u_input.d << ((u_input.c.x << (~92123u % 32u)) % 32u)), vec4<bool>(true, true, all(select(select(vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(21827u, 6u)], vec4<bool>(true, true, true, true)), select(global0[_wgslsmith_index_u32(1u, 6u)], vec4<bool>(false, false, false, true), true), false)), false), ~1u);
    return vec3<bool>(!all(var_3.b) && !var_3.b.x, all(!select(!vec2<bool>(var_3.b.x, false), var_3.b.xw, select(vec2<bool>(var_3.b.x, var_3.b.x), var_3.b.zz, var_3.b.wy))), u_input.a == u_input.a);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<u32>, arg_3: u32) -> vec3<bool> {
    var var_0 = Struct_2(u_input.c.yxw, vec2<bool>(true, any(vec3<bool>(all(vec2<bool>(false, true)), false, true))), -(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(57264i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 2147483647i, u_input.b, 1i))));
    let var_1 = Struct_2(var_0.a, select(!(!(!vec2<bool>(var_0.b.x, var_0.b.x))), select(select(var_0.b, var_0.b, !vec2<bool>(true, var_0.b.x)), select(!vec2<bool>(false, var_0.b.x), var_0.b, var_0.b), var_0.b), select(!(!var_0.b), var_0.b, true)), -1i);
    let var_2 = Struct_3(-min(u_input.b, -1i) >> (arg_3 % 32u), vec4<bool>((_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.a.x, 17u)]) <= -654f) | var_0.b.x, true, true, var_1.b.x), ~u_input.a);
    var var_3 = vec4<i32>(_wgslsmith_sub_i32(-21632i, -reverseBits(_wgslsmith_mod_i32(var_1.c, -34573i))), u_input.b, ((u_input.d >> (~var_2.c % 32u)) << (u_input.a % 32u)) | _wgslsmith_sub_i32(-var_0.c, -(~(-41956i))), u_input.b);
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1020f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(step(1970f, arg_0))))), 1463f)));
    return select(vec3<bool>(true, all(var_2.b.wxz), !var_2.b.x && !any(var_0.b)), func_1(), var_0.b.x);
}

fn func_2(arg_0: u32) -> Struct_3 {
    global2 = array<u32, 1>();
    global2 = array<u32, 1>();
    global0 = array<vec4<bool>, 6>();
    let var_0 = -u_input.d;
    var var_1 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c | vec4<u32>(1u, 892u, 25538u, u_input.a)), 17u)]), global3[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(58613u, 1u), 17u)] - global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, u_input.c.x, global2[_wgslsmith_index_u32(1u, 1u)]), u_input.c << (vec4<u32>(0u, 1u, 1698u, arg_0) % vec4<u32>(32u))), 17u)]), abs(reverseBits(_wgslsmith_div_vec2_u32(u_input.c.zx, vec2<u32>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)])))) & u_input.c.zz, firstTrailingBit(min(~54161u, arg_0)));
    return Struct_3(_wgslsmith_add_i32(-9147i, _wgslsmith_mult_i32(-2147483647i, var_0)), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(~u_input.a, reverseBits(24016u << (u_input.c.x % 32u)))), 6u)], 1u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    let var_0 = ~global2[_wgslsmith_index_u32(arg_0.c, 1u)];
    return arg_0.b.wyy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, true, true), func_1(), func_4(func_2(9258u), Struct_1(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(1u, 17u)]))), Struct_1(global3[_wgslsmith_index_u32(u_input.a & 39626u, 17u)]), 1000f)), !vec3<bool>(!all(global0[_wgslsmith_index_u32(u_input.a, 6u)]), false, abs(u_input.b) > u_input.b), true);
    global0 = array<vec4<bool>, 6>();
    global2 = array<u32, 1>();
    global3 = array<f32, 17>();
    global0 = array<vec4<bool>, 6>();
    var var_1 = vec4<bool>(true, true && !(_wgslsmith_mult_i32(u_input.b, 1i) >= 2147483647i), !var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 17u)]), _wgslsmith_div_f32(694f, global3[_wgslsmith_index_u32(22229u, 17u)]))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2468f - global3[_wgslsmith_index_u32(u_input.c.x, 17u)]), 971f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 600f))))) * vec2<f32>(_wgslsmith_f_op_f32(266f + global3[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 17u)] * global3[_wgslsmith_index_u32(38673u, 17u)])))), vec2<i32>(-81942i, _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, u_input.b, -1i), vec3<i32>(u_input.b, u_input.b, u_input.d)), vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.d, u_input.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(799f, global3[_wgslsmith_index_u32(43354u, 17u)]), _wgslsmith_f_op_f32(round(306f)), global3[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], 1u), 17u)]))), countOneBits(~(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.b, 1i), vec3<i32>(u_input.b, u_input.b, u_input.d)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 28393u), u_input.c.zzy, u_input.c.xxw) % vec3<u32>(32u)))));
}

