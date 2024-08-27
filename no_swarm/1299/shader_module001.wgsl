struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 1>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.a, -vec3<i32>(select(-1i, -10515i, select(true, false, true)), i32(-1i) * -28848i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(0i, -18392i, 41188i))), select(~(~_wgslsmith_add_i32(-12990i, 2147483647i)), 36875i, true), select(vec2<bool>(true, true), select(vec2<bool>(u_input.b > 4294967295u, true), vec2<bool>(true, true), false && func_3()), true));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-806f - 133f) * _wgslsmith_f_op_f32(-1538f + -649f)), _wgslsmith_f_op_f32(f32(-1f) * -483f))), Struct_4(Struct_2(false)), var_0.d.x, Struct_2(func_3()));
    var_0 = Struct_1(0u, _wgslsmith_add_vec3_i32(var_0.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_0.c, var_0.c), vec3<i32>(var_0.c, -1i, var_0.b.x), var_0.b) & -vec3<i32>(2147483647i, var_0.c, -1i)) | -vec3<i32>(reverseBits(1i), -11177i, -var_0.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(9521i, var_0.b.x, 54514i, var_0.c), vec4<i32>(var_0.c, var_0.b.x, var_0.b.x, 23467i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-10759i, var_0.b.x, var_0.b.x, 15175i), vec4<i32>(var_0.c, 2147483647i, 33466i, var_0.b.x)), abs(~vec4<i32>(var_0.c, var_0.b.x, -31200i, -1i))) ^ min(var_0.c, var_0.b.x), !(!var_0.d));
    var var_2 = -256f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-521f, var_1.a.x)))) + _wgslsmith_f_op_f32(step(-1121f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1694f)) + _wgslsmith_f_op_f32(-var_1.a.x)))))));
    return Struct_1(_wgslsmith_sub_u32(u_input.b, 4294967295u), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(max(vec3<i32>(29141i, var_0.c, -5399i), var_0.b), _wgslsmith_mult_vec3_i32(var_0.b, var_0.b) << (~vec3<u32>(u_input.b, 0u, 69941u) % vec3<u32>(32u))), vec3<i32>(countOneBits(-44395i), -1471i, _wgslsmith_sub_i32(var_0.b.x ^ 0i, -16901i))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-1i, var_0.b.x)), var_0.b.zx) & var_0.b.xx, vec2<i32>(-1i) * -reverseBits(var_0.b.zz)), !(!var_0.d));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_3 {
    global1 = array<Struct_4, 1>();
    let var_0 = func_2();
    let var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(731f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2902f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1271f)), _wgslsmith_f_op_f32(-716f * 1110f)))));
    global0 = true;
    return Struct_3(func_2(), var_0, ~min(~1u >> (u_input.a % 32u), max(u_input.a, 43751u) ^ 38371u), Struct_2(func_3()), _wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(var_0.b.x, 14763i, -8666i)), vec3<i32>(_wgslsmith_mod_i32(var_0.b.x >> (4294967295u % 32u), 437i), var_0.c, _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, -1i), -10997i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_u32(abs(~(~3330u)), u_input.a);
    var var_1 = func_1(-_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-2679i, 2366i, 1i, -2147483647i)), ~vec4<i32>(-22160i, -1i, 1i, 2925i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1208f, -136f, false))))) == _wgslsmith_f_op_f32(f32(-1f) * -1102f));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(777f, 421f, -1621f, -2138f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1771f, -1000f, -401f, 761f), vec4<f32>(-1006f, -311f, -2142f, -525f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(565f, -636f, -248f, -1466f), vec4<f32>(750f, 1000f, -1000f, 1276f), vec4<bool>(var_1.b.d.x, var_1.d.a, false, var_1.a.d.x))))))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2822f))), _wgslsmith_f_op_f32(floor(1000f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(178f, _wgslsmith_div_f32(158f, -1067f))))));
    let var_3 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(min(var_2.x, 425f)))), 1f), global1[_wgslsmith_index_u32(~u_input.b, 1u)], func_3(), Struct_2(false || (var_1.b.c <= -2147483647i)));
    let var_4 = select(select(vec3<bool>(any(vec3<bool>(false, var_1.b.d.x, var_1.a.d.x)) && true, all(vec4<bool>(true, true, true, true)), !(u_input.b < u_input.b)), !(!(!vec3<bool>(false, var_1.a.d.x, var_1.a.d.x))), all(vec4<bool>(var_1.d.a, var_1.d.a, var_1.b.d.x, true)) & true), !vec3<bool>(_wgslsmith_f_op_f32(-var_2.x) >= _wgslsmith_f_op_f32(-127f - -659f), !(var_3.c && true), true), (~var_1.e & var_1.b.b.x) != -47434i);
    var_1 = Struct_3(func_2(), func_1(vec4<i32>(var_1.b.c, abs(_wgslsmith_clamp_i32(13409i, var_1.e, -7732i)), _wgslsmith_div_i32(var_1.e, 16746i), 31540i), !(!all(vec4<bool>(var_3.d.a, true, false, var_3.c)))).b, var_1.c, var_1.d, var_1.a.b.x);
    let var_5 = var_1.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(countOneBits(var_0))));
}

