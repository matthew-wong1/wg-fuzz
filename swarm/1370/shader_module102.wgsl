struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(-26743i, vec3<i32>(30465i, 15462i, 1i)), 0u), Struct_2(Struct_1(1i, vec3<i32>(3615i, 1i, -26904i)), 1u), Struct_2(Struct_1(-9031i, vec3<i32>(-470i, 38960i, 2147483647i)), 4294967295u), Struct_2(Struct_1(56350i, vec3<i32>(0i, -5440i, -13946i)), 0u), Struct_2(Struct_1(2147483647i, vec3<i32>(-1i, 0i, 0i)), 1u), Struct_2(Struct_1(-1i, vec3<i32>(2147483647i, i32(-2147483648), 0i)), 37304u), Struct_2(Struct_1(-40759i, vec3<i32>(0i, 23795i, -38347i)), 28548u), Struct_2(Struct_1(2147483647i, vec3<i32>(-48074i, -1i, 28454i)), 101836u), Struct_2(Struct_1(1i, vec3<i32>(1i, 3133i, -6856i)), 0u), Struct_2(Struct_1(29335i, vec3<i32>(-26226i, -19502i, -1i)), 23862u), Struct_2(Struct_1(25635i, vec3<i32>(2147483647i, 25756i, 2147483647i)), 4294967295u), Struct_2(Struct_1(3966i, vec3<i32>(-1i, 34198i, 51951i)), 4294967295u), Struct_2(Struct_1(0i, vec3<i32>(-27685i, -21046i, -933i)), 50107u), Struct_2(Struct_1(-1i, vec3<i32>(23847i, 0i, 1i)), 161u), Struct_2(Struct_1(19517i, vec3<i32>(i32(-2147483648), -13084i, 38645i)), 29899u), Struct_2(Struct_1(2147483647i, vec3<i32>(5058i, -35772i, -1i)), 4294967295u), Struct_2(Struct_1(1i, vec3<i32>(-12531i, -1i, 22949i)), 0u), Struct_2(Struct_1(2147483647i, vec3<i32>(-36335i, -28894i, -59884i)), 3192u), Struct_2(Struct_1(-11561i, vec3<i32>(-1i, -10749i, 0i)), 0u), Struct_2(Struct_1(2147483647i, vec3<i32>(9573i, -4635i, 1747i)), 56569u), Struct_2(Struct_1(1i, vec3<i32>(1i, 1i, -49176i)), 4294967295u), Struct_2(Struct_1(i32(-2147483648), vec3<i32>(-20182i, 0i, 45274i)), 1u), Struct_2(Struct_1(16699i, vec3<i32>(1i, 3890i, -48714i)), 0u), Struct_2(Struct_1(-1i, vec3<i32>(-26649i, 77281i, -23676i)), 7596u), Struct_2(Struct_1(-36021i, vec3<i32>(0i, -20287i, 2147483647i)), 0u), Struct_2(Struct_1(i32(-2147483648), vec3<i32>(44805i, -1i, -80876i)), 1u), Struct_2(Struct_1(48002i, vec3<i32>(-9958i, -1i, 2147483647i)), 30462u), Struct_2(Struct_1(-57245i, vec3<i32>(19502i, 14717i, -9039i)), 4294967295u), Struct_2(Struct_1(-1i, vec3<i32>(-18781i, 7063i, 2147483647i)), 561u), Struct_2(Struct_1(0i, vec3<i32>(1i, 17975i, 0i)), 1u), Struct_2(Struct_1(-30166i, vec3<i32>(-19379i, -1i, 16506i)), 4294967295u), Struct_2(Struct_1(-1i, vec3<i32>(8703i, 1i, 0i)), 52733u));

var<private> global1: Struct_2 = Struct_2(Struct_1(-8307i, vec3<i32>(-18101i, 2147483647i, 1i)), 0u);

var<private> global2: f32 = -820f;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-449f, -512f, 398f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2887f, 1000f, 1346f) + vec3<f32>(1438f, -246f, 1000f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(237f, 616f, 1757f), vec3<f32>(301f, 436f, -526f), true))) + vec3<f32>(_wgslsmith_f_op_f32(-807f - -450f), -1278f, _wgslsmith_f_op_f32(f32(-1f) * -164f)))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    global1 = arg_2.c;
    global2 = -365f;
    var var_0 = arg_2.a.x;
    let var_1 = _wgslsmith_sub_vec2_u32(arg_2.d.xy, select(_wgslsmith_sub_vec2_u32(arg_2.d.zw, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_3.b, 40492u), max(arg_2.d.xy, vec2<u32>(arg_0.b, 31728u)))), ~vec2<u32>(43953u, reverseBits(arg_2.d.x)), !vec2<bool>(all(arg_2.a.xy), true)));
    var var_2 = Struct_1(global1.a.a, _wgslsmith_sub_vec3_i32(arg_3.a.b, arg_0.a.b));
    return (~(var_1.x | 33104u) ^ _wgslsmith_mult_u32(~firstTrailingBit(u_input.a), abs(~0u))) ^ abs(max(abs(var_1.x), arg_0.b) >> ((~4294967295u | arg_3.b) % 32u));
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~max(37864u, 23u) << (func_3(Struct_2(global1.a, ~(~4294967295u)), !arg_0.a.x, arg_0, Struct_2(Struct_1(0i, _wgslsmith_add_vec3_i32(vec3<i32>(59392i, global1.a.a, arg_0.c.a.b.x), global1.a.b)), 0u)) % 32u), 32u)];
    var var_1 = Struct_1(-2147483647i, firstLeadingBit(~reverseBits(-u_input.b.wxx)));
    let var_2 = global1.a;
    var_1 = Struct_1(_wgslsmith_add_i32(13840i, firstTrailingBit(-1683i)), arg_0.c.a.b);
    let var_3 = min(_wgslsmith_mult_i32(min(_wgslsmith_clamp_i32(max(u_input.c, -49685i), 1i, ~18467i), countOneBits(~240i)), abs(-2147483647i | var_0.a.a)), 34162i);
    return min(70880u, global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f)))) - 280f);
    let var_1 = ~u_input.a << (u_input.a % 32u);
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(-358f)), -901f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1239f, 1000f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(659f, 365f)), _wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(374f, -210f), -1827f, true)))));
    var var_4 = 1u;
    let var_5 = Struct_1(41193i, -vec3<i32>(i32(-1i) * -69867i, ~(-68531i), -global1.a.b.x) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(54386u, u_input.a, 0u), vec3<u32>(u_input.a, 0u, var_1) | vec3<u32>(1u, u_input.a, 17765u)) % vec3<u32>(32u)));
    let var_6 = global1.a;
    var var_7 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -684f))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-836f * var_3.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1119f)))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(func_2(Struct_3(vec4<bool>(false, true, true, true), u_input.b, Struct_2(global1.a, 36556u), vec4<u32>(global1.b, 1u, global1.b, 0u), Struct_1(var_6.a, var_5.b))), _wgslsmith_mult_u32(global1.b, 4294967295u)), global1.b | func_2(Struct_3(vec4<bool>(false, false, false, false), vec4<i32>(global1.a.b.x, var_5.a, -1i, global1.a.a), Struct_2(global1.a, global1.b), vec4<u32>(u_input.a, 41691u, 0u, global1.b), Struct_1(var_6.b.x, u_input.b.xzy)))) ^ max(func_2(Struct_3(vec4<bool>(false, true, true, true), vec4<i32>(u_input.c, u_input.c, var_6.a, 25562i), Struct_2(var_5, 27443u), vec4<u32>(1u, global1.b, 0u, u_input.a), Struct_1(global1.a.b.x, vec3<i32>(18436i, u_input.b.x, var_5.b.x)))), global1.b), firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(2147483647i, -2147483647i), var_6.b.x, u_input.c, max(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), _wgslsmith_div_i32(54451i, 8460i)))));
}

