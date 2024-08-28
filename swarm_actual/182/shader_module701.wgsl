struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, false, false, true, true, true, false, false, true, false, true, false, false, false, false, false, false, true, true);

var<private> global1: Struct_5 = Struct_5(Struct_2(vec3<u32>(19946u, 18718u, 1u), Struct_1(34402i, 4294967295u), Struct_1(1i, 4294967295u), vec3<u32>(22677u, 1u, 1u), false), i32(-2147483648), vec2<u32>(27778u, 2183u));

var<private> global2: vec2<bool>;

var<private> global3: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = global1.a.c;
    let var_1 = var_0.b | var_0.b;
    let var_2 = Struct_5(Struct_2(u_input.d.wxz, global1.a.c, Struct_1(_wgslsmith_sub_i32(var_0.a, _wgslsmith_add_i32(-2147483647i, 29620i)), ~(~64089u)), _wgslsmith_mod_vec3_u32(global1.a.a, abs(~vec3<u32>(1u, 4294967295u, 4294967295u))), global0[_wgslsmith_index_u32(62012u, 19u)]), ~((1i & u_input.b.x) ^ global1.a.c.a) | -2147483647i, select(u_input.d.zx, ~vec2<u32>(1u, 1u), !any(select(vec3<bool>(false, false, global1.a.e), vec3<bool>(global1.a.e, false, false), true))));
    var var_3 = Struct_5(var_2.a, u_input.e << (~(4294967295u ^ abs(var_2.c.x)) % 32u), u_input.d.ww);
    var var_4 = all(!select(!vec2<bool>(false, var_2.a.e), !vec2<bool>(global1.a.e, true), true)) | select(!(!global0[_wgslsmith_index_u32(u_input.d.x, 19u)] && global1.a.e), var_3.a.e, !(!global2.x));
    return ~(~_wgslsmith_div_vec3_u32(vec3<u32>(~var_0.b, var_1, 8626u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 62295u, 4294967295u), vec3<u32>(var_1, var_3.a.c.b, 1u) ^ vec3<u32>(0u, var_3.a.a.x, var_1))));
}

fn func_2(arg_0: f32) -> vec4<f32> {
    var var_0 = Struct_5(Struct_2(_wgslsmith_clamp_vec3_u32(select(u_input.d.zyw, vec3<u32>(4294967295u, global1.c.x, 1u), select(vec3<bool>(global1.a.e, true, true), vec3<bool>(global1.a.e, global0[_wgslsmith_index_u32(4294967295u, 19u)], global1.a.e), false)), vec3<u32>(29285u, ~939u, _wgslsmith_sub_u32(1u, global1.a.b.b)), func_3()), Struct_1(0i, ~(global1.a.c.b >> (1u % 32u))), global1.a.b, select(vec3<u32>(61984u, 41177u, _wgslsmith_add_u32(u_input.d.x, 32144u)), select(_wgslsmith_clamp_vec3_u32(global1.a.a, vec3<u32>(4294967295u, 59159u, u_input.d.x), u_input.d.xwy), global1.a.a, !vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 19u)])), global0[_wgslsmith_index_u32(16561u, 19u)]), !(!global0[_wgslsmith_index_u32(1u, 19u)])), -21971i, vec2<u32>(firstLeadingBit(1u ^ countOneBits(global1.a.a.x)), abs(_wgslsmith_clamp_u32(countOneBits(global1.a.b.b), _wgslsmith_sub_u32(4294967295u, u_input.d.x), firstLeadingBit(u_input.c)))));
    var_0 = Struct_5(var_0.a, global1.a.b.a, vec2<u32>(u_input.c >> (var_0.c.x % 32u), 32447u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-789f, _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_div_f32(arg_0, 1182f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1043f - 1979f))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1102f, 1000f)))))));
    let var_1 = Struct_5(Struct_2(arg_0.a, global1.a.c, global1.a.b, firstLeadingBit(countOneBits(arg_1.a)), -55893i != -arg_1.b.a), arg_0.c.a, u_input.d.zz);
    var var_2 = Struct_3(Struct_1(global1.b & u_input.b.x, _wgslsmith_mod_u32(u_input.c, u_input.c)));
    var var_3 = ~(-_wgslsmith_mod_i32(~u_input.e ^ (arg_0.b.a << (0u % 32u)), -10618i));
    var_3 = -_wgslsmith_mod_i32(min(i32(-1i) * -22197i, ~(-1i)) << (min(arg_1.a.x, _wgslsmith_mult_u32(arg_0.d.x, arg_0.a.x)) % 32u), var_1.b);
    return ~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(arg_0.a.x, arg_1.b.b) & abs(arg_0.b.b), arg_0.d.x);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> Struct_5 {
    let var_0 = global2.x;
    global2 = vec2<bool>(-1i != _wgslsmith_add_i32(u_input.a.x, u_input.b.x), global2.x);
    var var_1 = Struct_3(arg_1);
    let var_2 = 59458u;
    var var_3 = Struct_3(arg_1);
    return Struct_5(Struct_2(arg_2, var_3.a, var_3.a, _wgslsmith_mult_vec3_u32(reverseBits(max(arg_2, vec3<u32>(u_input.d.x, arg_1.b, arg_2.x))), ~vec3<u32>(u_input.d.x, arg_0, arg_0)), !(!(arg_0 != var_1.a.b))), -(~1i), min(vec2<u32>(var_2, max(global1.a.d.x & u_input.d.x, ~1u)), abs(countOneBits(_wgslsmith_mult_vec2_u32(global1.c, vec2<u32>(u_input.c, arg_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.b;
    let var_1 = u_input.d.x;
    global1 = func_4(24557u, global1.a.c, vec3<u32>(35540u, 0u, max(_wgslsmith_mult_u32(var_1, func_1(global1.a, global1.a)), 35132u)), 1f);
    var var_2 = vec3<u32>(global1.a.d.x, min(func_4(~(~4294967295u), func_4(_wgslsmith_div_u32(25060u, var_1), global1.a.b, vec3<u32>(global1.c.x, u_input.d.x, global1.a.d.x), _wgslsmith_f_op_f32(min(-577f, -1188f))).a.c, ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.a.x, 79797u, u_input.c), u_input.d.zxw), _wgslsmith_f_op_f32(f32(-1f) * -670f)).a.a.x, select(56856u, _wgslsmith_dot_vec2_u32(global1.c & global1.a.a.xy, u_input.d.xy | u_input.d.zy), true)), 1u);
    let var_3 = Struct_4(vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-695f)), _wgslsmith_f_op_f32(trunc(228f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1016f + 2176f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -888f))), any(select(vec3<bool>(!global2.x, global1.a.e, func_4(u_input.d.x, Struct_1(0i, global1.c.x), global1.a.a, 658f).a.e), vec3<bool>(true, !global2.x, true), all(vec3<bool>(true, true, true)))));
    var var_4 = global1.a.b;
    let var_5 = func_4(1u, global1.a.c, vec3<u32>(~(~4294967295u), 4294967295u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x - _wgslsmith_f_op_f32(-var_3.a.x))) * _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(select(427f, _wgslsmith_f_op_f32(trunc(838f)), true)))).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, 250f, var_3.b.x)))), var_3.a.x, vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(var_3.b.x * var_3.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-990f, -1757f, true)))), _wgslsmith_f_op_f32(1111f * _wgslsmith_f_op_f32(-var_3.a.x))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(~var_4.a, ~var_4.a, 1i & var_4.a), u_input.b, -firstTrailingBit(u_input.b)), var_0.b);
}

