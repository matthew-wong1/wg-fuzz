struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(4294967295u), Struct_2(Struct_1(1u), 0i));

var<private> global1: Struct_2 = Struct_2(Struct_1(44123u), 20268i);

var<private> global2: Struct_1 = Struct_1(4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: bool) -> vec3<u32> {
    let var_0 = false;
    let var_1 = Struct_3(global0.a, global0.b);
    global1 = Struct_2(var_1.b.a, firstTrailingBit(arg_0.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - -427f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1119f)))), -1000f)));
    let var_3 = var_1.b;
    return _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.b.a.a, var_1.a.a, 10328u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.a.a, u_input.a, 49363u), vec3<u32>(arg_1, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)) & ~vec3<u32>(19358u, 52894u, arg_1), vec3<u32>(arg_1 & global2.a, _wgslsmith_dot_vec3_u32(vec3<u32>(2513u, 5110u, global1.a.a), vec3<u32>(global0.a.a, 34904u, 21156u)), firstLeadingBit(var_1.b.a.a))), ~(vec3<u32>(0u, 46681u, global1.a.a) >> (vec3<u32>(4294967295u, global2.a, global0.b.a.a) % vec3<u32>(32u))) << (vec3<u32>(global0.b.a.a, ~global0.b.a.a, ~global1.a.a) % vec3<u32>(32u))), vec3<u32>(99138u, global2.a, arg_1));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-28527i, (u_input.b & -31480i) | -1i, u_input.b << (~u_input.a % 32u)), abs(~vec3<i32>(1i, global0.b.b, -54662i))) >> (abs(func_3(~vec3<i32>(u_input.b, global0.b.b, u_input.b), _wgslsmith_div_u32(max(global0.a.a, 31426u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(global0.a.a, 4294967295u, 1u))), arg_0.x)) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1568f + -538f), _wgslsmith_f_op_f32(1758f * 476f)), vec2<f32>(1f, 1f), arg_0.x))))));
    let var_2 = select(select(vec3<bool>(~53585u < _wgslsmith_mod_u32(global2.a, 4294967295u), all(vec2<bool>(true, false)), arg_0.x), vec3<bool>(true, -global0.b.b < var_0.x, true), !select(!vec3<bool>(arg_0.x, true, true), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), true), select(vec3<bool>(true, arg_0.x, true), vec3<bool>(false, true, false), vec3<bool>(false, arg_0.x, arg_0.x)))), select(!(!vec3<bool>(true, arg_0.x, false)), vec3<bool>(!arg_0.x, u_input.b < ~2147483647i, arg_0.x), any(!select(vec2<bool>(false, false), arg_0, false))), true);
    var var_3 = global0.a;
    let var_4 = Struct_3(global0.a, global0.b);
    return Struct_3(global0.a, var_4.b);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = ~(~firstTrailingBit(~(~vec3<u32>(global1.a.a, arg_1.a.a, arg_1.a.a))));
    let var_1 = ~24860u < ((_wgslsmith_add_u32(~global2.a, firstTrailingBit(global0.b.a.a)) & 0u) | _wgslsmith_div_u32(~_wgslsmith_sub_u32(56880u, u_input.a), global0.b.a.a));
    var_0 = vec3<u32>(28193u, 22932u, _wgslsmith_dot_vec3_u32(min(abs(~vec3<u32>(15136u, 1u, global2.a)), vec3<u32>(global2.a, 0u, arg_1.a.a) ^ ~vec3<u32>(1u, arg_1.b.a.a, 0u)), vec3<u32>(_wgslsmith_mult_u32(var_0.x << (global0.b.a.a % 32u), _wgslsmith_dot_vec2_u32(var_0.xz, var_0.yy)), firstLeadingBit(~0u), 1u)));
    let var_2 = _wgslsmith_div_i32(-10760i, ~select(-10380i, 0i, all(vec2<bool>(true, var_1)) || false));
    let var_3 = var_1 & any(select(select(vec2<bool>(true, false), select(vec2<bool>(true, var_1), vec2<bool>(false, var_1), var_1), select(vec2<bool>(true, var_1), vec2<bool>(true, false), var_1)), select(!vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), vec2<bool>(true, true)), select(vec2<bool>(true, true), !vec2<bool>(true, var_1), !vec2<bool>(false, var_1))));
    return func_2(select(!vec2<bool>(!var_3, true), select(select(select(vec2<bool>(true, var_3), vec2<bool>(var_3, var_1), vec2<bool>(true, var_1)), vec2<bool>(var_1, var_1), !vec2<bool>(var_1, var_3)), select(!vec2<bool>(true, var_1), vec2<bool>(false, var_1), var_1), all(vec3<bool>(false, true, var_3))), !select(vec2<bool>(true, true), select(vec2<bool>(var_3, var_3), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(var_1, var_1)))).a;
}

fn func_1() -> bool {
    let var_0 = Struct_3(func_4(func_2(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), func_2(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-186f, -285f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -163f))))) * vec2<f32>(1f, 1f))), func_2(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(0u <= u_input.a, true), true || all(vec4<bool>(false, false, true, true)))).b);
    global2 = Struct_1(0u);
    var var_1 = -firstTrailingBit(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(29647i, global0.b.b, -23279i, -44294i)));
    global2 = func_2(vec2<bool>(!select(all(vec2<bool>(false, true)), all(vec4<bool>(false, true, true, true)), true), true)).a;
    global1 = var_0.b;
    return any(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), (0u >= global2.a) || true), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), true), vec2<bool>(!any(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(select(false, any(vec4<bool>(true, false, true, true)), true), select(all(vec4<bool>(false, false, false, true)), false, any(vec4<bool>(false, false, false, true))), true), select(vec3<bool>(select(false, false, true), true, true), vec3<bool>(false, func_1(), all(vec3<bool>(false, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), true);
    var var_1 = abs(reverseBits(abs(vec4<i32>(global0.b.b, global0.b.b, 0i, 2147483647i) >> (vec4<u32>(10579u, 6365u, 40381u, u_input.a) % vec4<u32>(32u))) ^ abs(vec4<i32>(global0.b.b, global1.b, 2147483647i, u_input.b) ^ vec4<i32>(global0.b.b, 31468i, global1.b, 3095i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(1464i >> (global1.a.a % 32u), 56562i, -2147483647i), ~(var_1.yyy >> (vec3<u32>(u_input.a, global1.a.a, 15544u) % vec3<u32>(32u)))), 948f, _wgslsmith_dot_vec4_i32(vec4<i32>(11761i, global0.b.b, 2147483647i, global1.b & -1i), _wgslsmith_mod_vec4_i32(~max(vec4<i32>(global0.b.b, global1.b, global1.b, -1i), vec4<i32>(global1.b, -2147483647i, -1i, -1i)), -vec4<i32>(var_1.x, -1i, global1.b, var_1.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(615f, 1857f, -1266f))), vec3<f32>(_wgslsmith_f_op_f32(sign(-154f)), -341f, _wgslsmith_f_op_f32(1474f - 1585f)), !any(vec2<bool>(var_0.x, false)))))));
}

