struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> u32 {
    global0 = countOneBits(_wgslsmith_clamp_u32(max(arg_2.a.a, 1u), 1426u, ~_wgslsmith_dot_vec3_u32(u_input.b.xxx, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a, 4294967295u, arg_0.a), vec3<u32>(u_input.a.x, 1u, arg_0.a)))));
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_0.a, arg_2.a.a & abs(u_input.b.x), ~(~arg_1)), u_input.a), u_input.a);
    let var_0 = -1166f;
    let var_1 = vec2<bool>((true | !all(vec4<bool>(arg_2.a.c, true, arg_0.c, arg_2.a.c))) || (arg_2.a.c & true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-1785f + 468f))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))))));
    return 69060u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_mod_u32(37960u, u_input.a.x & 1u), vec2<i32>(select(0i, -1295i, false), ~(-35244i)), true), func_3(Struct_1(1u, ~vec2<i32>(-6001i, 1i), false), abs(~u_input.b.x), Struct_2(Struct_1(u_input.b.x, vec2<i32>(13247i, 9585i), false), max(0u, u_input.b.x)))), Struct_2(Struct_1(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) << (~u_input.b.x % 32u), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(24441i, -2147483647i, 0i, -2147483647i), vec4<i32>(1i, 0i, -7740i, -28353i)), 381i), true), abs(1u)));
    var var_1 = vec4<bool>(!var_0.b.a.c, true, all(vec3<bool>(var_0.b.a.c, true, false)), !var_0.b.a.c);
    let var_2 = vec4<f32>(-875f, -983f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-526f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(370f, 966f)) * 1406f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(954f)), _wgslsmith_f_op_f32(step(-693f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1326f)), _wgslsmith_f_op_f32(f32(-1f) * -1399f))))))));
    let var_3 = var_0.a;
    var var_4 = all(select(!var_1.xx, !vec2<bool>(any(vec2<bool>(var_3.a.c, var_1.x)), var_0.b.a.b.x > -13044i), var_1.yw));
    return var_0.b.a;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    global0 = u_input.b.x;
    var var_0 = false;
    var var_1 = func_2();
    var var_2 = arg_0.x;
    var var_3 = 1u;
    return Struct_2(Struct_1(_wgslsmith_mod_u32(var_1.a, 4294967295u) ^ u_input.b.x, var_1.b, true), u_input.b.x ^ ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.wz, vec2<u32>(u_input.b.x, u_input.b.x)), u_input.a.zz));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = 1u;
    var var_1 = max(min(abs(vec4<i32>(func_2().b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -33107i), vec3<i32>(arg_2.a.a.b.x, arg_2.a.a.b.x, -24605i)), arg_2.a.a.b.x, -24116i)), vec4<i32>(min(arg_0.a.a.b.x, arg_0.b.a.b.x) << (arg_2.a.a.a % 32u), -abs(arg_0.b.a.b.x), _wgslsmith_mult_i32(i32(-1i) * -18324i, ~arg_2.a.a.b.x), ~arg_0.a.a.b.x)), vec4<i32>(~arg_2.a.a.b.x, _wgslsmith_add_i32(firstTrailingBit(arg_1.b.x), ~arg_2.b.a.b.x & _wgslsmith_add_i32(2147483647i, -16117i)), countOneBits(_wgslsmith_div_i32(arg_1.b.x, ~arg_1.b.x)), arg_2.a.a.b.x));
    let var_2 = arg_1.a;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a.a.b.x, 2147483647i), ~vec2<i32>(1i, -6551i)) >> (~(vec2<u32>(13954u, 55183u) << (vec2<u32>(22205u, arg_0.b.b) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits((arg_1.b << (u_input.b.zy % vec2<u32>(32u))) & arg_0.a.a.b)), -arg_2.b.a.b.x);
    var_1 = firstLeadingBit(_wgslsmith_div_vec4_i32(firstLeadingBit(-vec4<i32>(arg_0.b.a.b.x, 41853i, -56119i, arg_2.b.a.b.x)), ~(-vec4<i32>(var_3, var_3, 5598i, -2147483647i))) | _wgslsmith_add_vec4_i32(-(vec4<i32>(1i, var_3, var_3, 2147483647i) | vec4<i32>(arg_1.b.x, arg_0.a.a.b.x, 2147483647i, var_1.x)), abs(vec4<i32>(25906i, var_3, arg_1.b.x, -40357i))));
    return _wgslsmith_mod_vec4_i32(firstLeadingBit(min(max(vec4<i32>(var_3, arg_2.a.a.b.x, -1i, 29021i), vec4<i32>(arg_1.b.x, arg_2.a.a.b.x, var_3, arg_2.b.a.b.x)) << (vec4<u32>(50388u, arg_0.a.b, var_0, 13492u) % vec4<u32>(32u)), abs(vec4<i32>(var_3, -19422i, 68669i, arg_0.a.a.b.x)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_1.x, -46385i, arg_1.b.x, 0i), -select(vec4<i32>(19826i, arg_0.b.a.b.x, arg_2.b.a.b.x, var_3), vec4<i32>(14725i, var_3, -26236i, var_1.x), vec4<bool>(true, false, true, true))), -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b.a.b.x, 1i, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b.a.b.x, arg_0.b.a.b.x, arg_0.a.a.b.x, -2147483647i), vec4<i32>(-27669i, arg_1.b.x, arg_2.a.a.b.x, var_3))), firstTrailingBit(vec4<i32>(arg_0.b.a.b.x, min(arg_2.b.a.b.x, arg_1.b.x), ~0i, arg_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mod_u32(abs(u_input.a.x), _wgslsmith_mult_u32(42846u, 41000u))), 29728u));
    let var_0 = vec4<i32>(-1i) * -func_4(Struct_3(func_1(vec3<f32>(846f, 1136f, -1458f)), Struct_2(Struct_1(u_input.a.x, vec2<i32>(5099i, 11316i), false), u_input.a.x)), func_2(), Struct_3(func_1(vec3<f32>(499f, -1557f, -825f)), func_1(vec3<f32>(-1591f, 450f, -545f))));
    var var_1 = u_input.b.x;
    var var_2 = func_1(vec3<f32>(-845f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1049f - 434f))).a;
    var var_3 = firstTrailingBit(6027u) ^ _wgslsmith_mod_u32(func_3(func_2(), var_2.a ^ abs(4294967295u), func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(738f, -1022f, -214f))))), var_2.a);
    global0 = firstLeadingBit(~firstLeadingBit(1u));
    var var_4 = 12025i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_2.a, 997f, firstTrailingBit(u_input.a.x));
}

