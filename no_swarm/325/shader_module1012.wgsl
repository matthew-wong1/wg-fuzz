struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = select(!vec3<bool>(select(any(vec2<bool>(global0.b.a, arg_1.a)), true, global0.b.a || arg_1.a), !(!arg_1.a), false), select(vec3<bool>(global0.a.a, true, true), select(select(!vec3<bool>(true, arg_1.a, global0.b.a), !vec3<bool>(arg_1.a, false, global0.a.a), !vec3<bool>(false, true, global0.b.a)), select(vec3<bool>(global0.b.a, true, global0.b.a), !vec3<bool>(arg_1.a, global0.a.a, false), arg_1.a && false), true), vec3<bool>(global0.d <= ~4294967295u, any(select(vec3<bool>(false, false, true), vec3<bool>(global0.b.a, arg_1.a, false), true)), !(arg_1.a && true))), vec3<bool>(true, true, !(true && global0.b.a)));
    var var_1 = _wgslsmith_f_op_f32(select(-184f, 598f, true && global0.a.a));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-375f, global0.b.b) + global0.a.b));
    var_0 = !(!(!(!(!vec3<bool>(arg_1.a, true, true)))));
    let var_2 = global0.b;
    return 1u;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_2(global0.a, Struct_1(global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.b, 1993f)))), global0.c, max(abs(func_3(-474f, global0.b)), 1u));
    var var_1 = global0.c.wy;
    var var_2 = (vec2<u32>(1u, 4294967295u ^ (11629u ^ u_input.b)) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(32346u, 0u)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(global0.d, u_input.b), vec2<u32>(var_0.d, 37596u)) % vec2<u32>(32u)), vec2<u32>(u_input.b, global0.d), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, var_0.d), vec2<u32>(var_0.d, u_input.b))) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d, 4294967295u) >> (vec2<u32>(u_input.b & 0u, u_input.b & var_0.d) % vec2<u32>(32u)), vec2<u32>(func_3(global0.b.b, var_0.a), max(var_0.d, u_input.b) | global0.d));
    let var_3 = Struct_1(!global0.a.a, 179f);
    var_1 = vec2<i32>(~(var_0.c.x | ~25814i), countOneBits(var_1.x));
    return Struct_1(arg_0 && false, _wgslsmith_f_op_f32(f32(-1f) * -1553f));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: vec4<u32>) -> Struct_2 {
    global0 = Struct_2(global0.a, func_2(!any(!arg_1.xz), _wgslsmith_f_op_vec2_f32(vec2<f32>(-867f, _wgslsmith_f_op_f32(global0.b.b * 226f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-266f, -444f)))), countOneBits(vec4<i32>(38653i >> (u_input.b % 32u), 1i, global0.c.x & -2147483647i, _wgslsmith_div_i32(global0.c.x, 2147483647i))) | (~(-global0.c) ^ vec4<i32>(firstTrailingBit(-32170i), _wgslsmith_mod_i32(global0.c.x, global0.c.x), 1i, -6987i)), 102252u >> (u_input.b % 32u));
    global0 = Struct_2(arg_0, arg_0, -(~vec4<i32>(-global0.c.x, firstTrailingBit(u_input.a), _wgslsmith_add_i32(27276i, u_input.a), -u_input.a)), ~max(25296u, ~reverseBits(4294967295u)));
    var var_0 = Struct_1(!(!arg_0.a), 196f);
    let var_1 = arg_0;
    var var_2 = -(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 27477i, 265i, 55440i), vec4<i32>(u_input.a, u_input.a, global0.c.x, -23242i)), ~global0.c), min(~global0.c, global0.c)) & global0.c.x);
    return Struct_2(func_2(!(!(false & var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1392f, var_1.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-714f, var_1.b) + vec2<f32>(559f, -1000f))) + vec2<f32>(689f, var_1.b))), Struct_1(false, -1344f), firstLeadingBit(-firstLeadingBit(global0.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~u_input.b), firstLeadingBit(u_input.b), arg_3.x), arg_3.zyz));
}

fn func_1() -> Struct_1 {
    let var_0 = global0.c.zwx;
    global0 = func_4(func_2(true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, global0.b.b)))), select(vec3<bool>(!(!global0.b.a), true, all(vec2<bool>(true, false))), vec3<bool>(func_2(any(vec3<bool>(global0.a.a, global0.a.a, global0.a.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, global0.a.b))).a, global0.a.a, func_2(global0.a.a, vec2<f32>(global0.a.b, 1000f)).a || func_2(global0.a.a, vec2<f32>(-703f, global0.a.b)).a), select(!vec3<bool>(global0.a.a, global0.a.a, global0.b.a), select(select(vec3<bool>(global0.a.a, global0.b.a, true), vec3<bool>(false, global0.b.a, global0.a.a), global0.b.a), select(vec3<bool>(global0.a.a, false, false), vec3<bool>(global0.a.a, true, global0.b.a), global0.b.a), vec3<bool>(global0.b.a, false, global0.b.a)), any(!vec2<bool>(true, global0.b.a)))), !vec3<bool>(global0.a.a, global0.b.b < _wgslsmith_f_op_f32(-global0.b.b), _wgslsmith_f_op_f32(-1182f - 402f) <= global0.b.b), ~(_wgslsmith_add_vec4_u32(vec4<u32>(global0.d, u_input.b, 123786u, 1u), max(vec4<u32>(u_input.b, 25555u, u_input.b, 9560u), vec4<u32>(55979u, 4294967295u, 0u, u_input.b))) << (min(vec4<u32>(11132u, 23412u, 50860u, 0u), vec4<u32>(30001u, 79676u, 4294967295u, global0.d)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.b, _wgslsmith_f_op_f32(select(global0.b.b, -365f, global0.b.a)))))));
    var_1 = _wgslsmith_f_op_f32(max(global0.b.b, _wgslsmith_f_op_f32(sign(func_2(false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(924f, -251f)))))).b))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-672f, -424f, -428f, global0.b.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1787f, -555f, 133f, 781f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1034f, 2162f, global0.a.b, -223f) - vec4<f32>(global0.a.b, -857f, global0.b.b, 223f))), !(!vec4<bool>(false, global0.b.a, global0.a.a, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b.b, 1056f, 2075f, -1376f)))))));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    var_0 = global0.b;
    let var_1 = Struct_2(func_1(), global0.a, global0.c, u_input.b);
    var_0 = func_1();
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-347f, _wgslsmith_f_op_f32(ceil(1058f))) * _wgslsmith_f_op_f32(-var_1.a.b)) == _wgslsmith_f_op_f32(f32(-1f) * -379f), var_1.a.b);
    let var_2 = vec2<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_1.c.x), vec2<i32>(u_input.a, global0.c.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c.x, global0.c.x), vec2<i32>(var_1.c.x, -1i), vec2<i32>(-2147483647i, -1i))), var_1.c.xy), -2147483647i);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, 660f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1014f) + vec2<f32>(599f, -731f)), vec2<bool>(global0.a.a, var_1.b.a))))))));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, func_4(Struct_1(_wgslsmith_div_f32(366f, var_3.x) < 1061f, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(f32(-1f) * -1324f))), vec3<bool>(func_4(var_4.b, vec3<bool>(true, true, true), !vec3<bool>(var_0.a, global0.b.a, var_0.a), vec4<u32>(global0.d, var_1.d, 13218u, 4294967295u)).a.a, global0.a.a, all(vec3<bool>(var_4.b.a, false, false))), vec3<bool>(false, true, global0.a.a), reverseBits(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(634u, global0.d, 29759u, 4294967295u), vec4<u32>(1u, 70973u, 0u, 58499u), vec4<u32>(var_1.d, 4294967295u, 3752u, var_4.d)), vec4<u32>(global0.d, 65010u, var_4.d, u_input.b), !vec4<bool>(true, global0.b.a, var_0.a, var_0.a)))).d, global0.c.zyw);
}

