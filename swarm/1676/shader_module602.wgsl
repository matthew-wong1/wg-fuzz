struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: u32;

var<private> global2: array<u32, 4>;

var<private> global3: Struct_4 = Struct_4(1i, 53286u, vec2<bool>(true, true), vec2<bool>(false, false), vec3<i32>(2147483647i, 36102i, 41125i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4) -> Struct_2 {
    global2 = array<u32, 4>();
    let var_0 = Struct_2(-arg_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(627f - _wgslsmith_f_op_f32(-arg_0.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(562f, -1172f)) + _wgslsmith_f_op_f32(f32(-1f) * -761f))), arg_0.b)));
    let var_1 = arg_1.b;
    var var_2 = true;
    global1 = 4294967295u;
    return var_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global2 = array<u32, 4>();
    var var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_mod_i32(-_wgslsmith_mult_i32(13668i, ~u_input.d), select(-1486i, ~2703i, true));
    var var_3 = arg_0.a;
    return arg_0.b;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + -280f))) - _wgslsmith_f_op_f32(f32(-1f) * -149f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1381f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-667f + 163f) - _wgslsmith_f_op_f32(1652f * 2199f)), _wgslsmith_f_op_f32(func_3(func_2(Struct_2(vec4<i32>(-2147483647i, -31511i, global3.a, global3.a), -308f), Struct_4(global3.a, 1u, global3.d, global3.c, vec3<i32>(29120i, u_input.b.x, u_input.a))), Struct_1(global3.e.zx, u_input.d))))));
    global1 = abs(u_input.c);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2(Struct_2(vec4<i32>(u_input.b.x, u_input.b.x, u_input.d, u_input.d), 695f), Struct_4(u_input.d, u_input.c, vec2<bool>(true, global3.d.x), vec2<bool>(true, global3.c.x), vec3<i32>(u_input.a, u_input.d, -2147483647i))), Struct_1(firstTrailingBit(vec2<i32>(global3.e.x, global3.a)), ~(-50507i))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(214f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(577f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-159f, _wgslsmith_f_op_f32(850f - 940f)) * _wgslsmith_f_op_f32(f32(-1f) * -1590f))));
    let var_2 = Struct_3(Struct_1(u_input.b.yy, 0i));
    var var_3 = func_2(Struct_2(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 11673i, -17906i, var_2.a.b), vec4<i32>(76220i, 2147483647i, u_input.a, global3.a), vec4<i32>(1i, global3.e.x, var_2.a.b, u_input.b.x)) & vec4<i32>(var_2.a.a.x, var_2.a.b, 72975i, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, -30934i, u_input.a), -vec4<i32>(var_2.a.a.x, 13909i, -26622i, -4504i))), _wgslsmith_f_op_f32(trunc(var_1))), Struct_4(1i, abs(~global3.b) ^ _wgslsmith_dot_vec2_u32(max(vec2<u32>(global2[_wgslsmith_index_u32(global3.b, 4u)], 41535u), vec2<u32>(0u, 1u)), select(vec2<u32>(22130u, 20724u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)]), false)), global3.c, select(!select(global3.d, global3.d, vec2<bool>(global3.d.x, true)), vec2<bool>(global3.d.x, global3.d.x), select(!global3.c, !vec2<bool>(true, global3.c.x), global3.d)), global3.e));
    return -778f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -670f) * _wgslsmith_f_op_f32(ceil(-131f)));
    global0 = array<vec2<f32>, 31>();
    var var_2 = (-_wgslsmith_mod_i32(i32(-1i) * -24684i, firstLeadingBit(global3.e.x)) >> (u_input.c % 32u)) <= firstLeadingBit(_wgslsmith_sub_i32(-25954i << (u_input.c % 32u), i32(-1i) * -17493i));
    let var_3 = Struct_2(select(~abs(vec4<i32>(-1i, -12791i, u_input.b.x, -20570i)) << (vec4<u32>(~global2[_wgslsmith_index_u32(global3.b, 4u)], u_input.c, global3.b >> (global3.b % 32u), ~1u) % vec4<u32>(32u)), reverseBits(~_wgslsmith_div_vec4_i32(vec4<i32>(global3.a, u_input.d, 26380i, -27536i), vec4<i32>(-41714i, 1i, u_input.a, global3.e.x))), all(!(!vec4<bool>(global3.d.x, global3.d.x, global3.d.x, global3.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(-var_0)), -111f));
    var var_4 = Struct_1(var_3.a.wz, global3.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, _wgslsmith_add_vec3_i32(vec3<i32>(-(~var_4.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-5953i, var_4.b), vec2<i32>(-2147483647i, global3.a)) >> (firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c, 4u)]) % 32u), (23327i | u_input.b.x) >> (1u % 32u)), u_input.b), 1u ^ (global3.b & 75555u), 22272i, var_3.a);
}

