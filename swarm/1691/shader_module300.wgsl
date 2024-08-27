struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(272i, vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(-27722i, vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(-1i, vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(-17983i, vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(-4692i, vec2<bool>(false, true), vec2<bool>(true, true)), Struct_1(0i, vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(-1i, vec2<bool>(false, true), vec2<bool>(true, false)), Struct_1(1i, vec2<bool>(true, true), vec2<bool>(false, false)));

var<private> global2: array<i32, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(~1u), 8u)];
    let var_1 = Struct_1(max(-1i, 1i), vec2<bool>(u_input.b.x != _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(u_input.a, u_input.b.x)), !var_0.b.x), var_0.b);
    global1 = array<Struct_1, 8>();
    global0 = array<vec2<bool>, 13>();
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_0.wy + vec2<f32>(-857f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-996f, 1003f) * -1000f) + arg_0.x)));
    return _wgslsmith_f_op_f32(trunc(var_2.x));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(abs(reverseBits(19264i)), firstLeadingBit(_wgslsmith_mult_i32(u_input.c, global2[_wgslsmith_index_u32(u_input.b.x, 5u)]))), 2147483647i));
    var_0 = _wgslsmith_add_i32(-1i, u_input.c);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(310f, -731f, -652f, -2031f) + vec4<f32>(-877f, -453f, -231f, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2058f, 1003f, -227f, -593f))), reverseBits(-u_input.c), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(55900u, u_input.b.x), 13u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-966f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1590f) + _wgslsmith_f_op_f32(floor(-809f))))));
    var_0 = u_input.c;
    let var_2 = ((~(u_input.b.zy ^ vec2<u32>(u_input.b.x, u_input.b.x)) >> (u_input.b.zx % vec2<u32>(32u))) & vec2<u32>(u_input.b.x, 1u)) ^ vec2<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b, abs(u_input.b)), 0u));
    return Struct_1(_wgslsmith_dot_vec3_i32(reverseBits(-countOneBits(vec3<i32>(28304i, 2147483647i, global2[_wgslsmith_index_u32(var_2.x, 5u)]))), -vec3<i32>(0i, 17566i, ~(-32151i))), global0[_wgslsmith_index_u32(~52293u, 13u)], !select(global0[_wgslsmith_index_u32(abs(u_input.a), 13u)], !select(vec2<bool>(true, false), vec2<bool>(true, true), false), global0[_wgslsmith_index_u32(~firstLeadingBit(0u), 13u)]));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(725f, 2358f), _wgslsmith_f_op_f32(func_3(vec4<f32>(-730f, 697f, 909f, -1058f), u_input.c, arg_1.c)), -1018f, _wgslsmith_f_op_f32(503f - 186f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-296f, -244f, 2001f, -386f) + vec4<f32>(869f, -278f, 765f, -763f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) * -463f), _wgslsmith_f_op_f32(trunc(-2115f)), 684f, 1000f))));
    let var_1 = -vec2<i32>(-1i << (0u % 32u), 0i);
    let var_2 = func_2();
    var var_3 = func_2().a;
    var var_4 = max(-1i, -(~arg_1.a));
    return vec4<bool>(arg_1.b.x, !(var_2.a == _wgslsmith_mod_i32(48746i, u_input.c)), false, !(!(global2[_wgslsmith_index_u32(1u, 5u)] < 47536i)) == !var_2.c.x);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global2 = array<i32, 5>();
    global0 = array<vec2<bool>, 13>();
    var var_0 = !(!select(vec4<bool>(true, arg_1.c.x, -2147483647i == u_input.c, arg_1.b.x), vec4<bool>(false || arg_1.c.x, false | arg_1.c.x, true, arg_1.c.x), func_4(~vec4<u32>(57580u, arg_0, arg_0, 3133u), func_2())));
    var var_1 = false;
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 8u)];
    return Struct_1(firstTrailingBit(-_wgslsmith_dot_vec3_i32(max(vec3<i32>(-35692i, 40807i, 31130i), vec3<i32>(32561i, u_input.c, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a, 29108i, global2[_wgslsmith_index_u32(arg_0, 5u)]), vec3<i32>(u_input.c, arg_1.a, 7375i)))), vec2<bool>(true, false), !var_0.wy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~31298u, 8u)];
    var var_1 = 0u;
    global1 = array<Struct_1, 8>();
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1173f, 606f, 318f, -199f) * vec4<f32>(790f, 946f, 1631f, 2157f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(626f, 2324f, 1000f, -1250f) + vec4<f32>(367f, -974f, 1000f, 1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -979f, -119f, 964f), vec4<f32>(-974f, 902f, 395f, -358f)), u_input.b.x <= u_input.b.x))))));
    let var_3 = func_1(u_input.b.x, global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 8u)]);
    let var_4 = vec4<u32>(~_wgslsmith_dot_vec2_u32(reverseBits(u_input.b.zy), ~u_input.b.yx), ~max(1u, firstTrailingBit(1u)), u_input.b.x, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))), 1f))), ((2147483647i >> (u_input.a % 32u)) << (u_input.a % 32u)) >> (~0u % 32u), (select(~vec2<u32>(var_4.x, 48027u), countOneBits(vec2<u32>(4294967295u, 11955u)), vec2<bool>(var_3.b.x, false)) >> ((var_4.xx ^ abs(var_4.xw)) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_u32(vec2<u32>(max(29560u, 1u), var_4.x), vec2<u32>(1u, u_input.b.x)), -449f, -_wgslsmith_mod_vec2_i32(-reverseBits(vec2<i32>(var_0.a, var_0.a)), (vec2<i32>(global2[_wgslsmith_index_u32(0u, 5u)], var_0.a) << (vec2<u32>(53660u, 4294967295u) % vec2<u32>(32u))) >> (vec2<u32>(var_4.x, u_input.a) % vec2<u32>(32u))));
}

