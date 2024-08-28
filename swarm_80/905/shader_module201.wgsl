struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: Struct_2 = Struct_2(-1832f, vec3<u32>(0u, 0u, 0u), -120f, vec3<u32>(45032u, 0u, 12537u), Struct_1(vec2<bool>(false, false)));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> vec4<bool> {
    global0 = array<f32, 9>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 9u)])))))));
    var var_1 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -39463i), vec2<i32>(1i, u_input.a) & _wgslsmith_sub_vec2_i32(vec2<i32>(-15469i, u_input.a), vec2<i32>(0i, -20186i))), ~(~(u_input.a & 0i))), _wgslsmith_sub_i32(~(-2147483647i), abs(_wgslsmith_clamp_i32(~u_input.a, 1i, firstLeadingBit(1i)))));
    global1 = Struct_2(var_0, ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, global1.b.x, global1.b.x), global1.d))), _wgslsmith_f_op_f32(var_0 - -1638f), global1.d, global1.e);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.b, 9u)], global0[_wgslsmith_index_u32(abs(1u), 9u)])) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global1.b.x, 9u)], 187f))), _wgslsmith_div_f32(var_0, _wgslsmith_div_f32(1742f, -1098f))))), _wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.b, global1.d.x, 35806u)), select(global1.d, vec3<u32>(~global1.b.x, 4294967295u, ~56445u), -954f >= global0[_wgslsmith_index_u32(~global1.b.x, 9u)])), -481f, vec3<u32>(~(~(~84349u)), 95141u, firstTrailingBit(_wgslsmith_sub_u32(5710u, u_input.b)) >> ((27248u & ~global1.b.x) % 32u)), Struct_1(vec2<bool>(!(!global2.a.x), false)));
    return vec4<bool>(var_2.e.a.x, var_2.e.a.x, !any(!select(vec2<bool>(true, true), vec2<bool>(global1.e.a.x, true), true)), false);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = abs(vec3<u32>(arg_1.d.x, 70335u >> (firstLeadingBit(28048u) % 32u), arg_1.b.x));
    global0 = array<f32, 9>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global0[_wgslsmith_index_u32(countOneBits(1u), 9u)]))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, var_0.x, u_input.b, global1.b.x), vec4<u32>(global1.b.x, arg_1.b.x, u_input.b, var_0.x) >> (vec4<u32>(4294967295u, arg_1.d.x, arg_1.d.x, 65830u) % vec4<u32>(32u))), 9u)], arg_1.a)) - arg_1.a), vec3<u32>(global1.b.x, _wgslsmith_dot_vec2_u32(~(~global1.b.zx), max(~vec2<u32>(4294967295u, 1u), firstTrailingBit(arg_1.d.xz))), ~_wgslsmith_clamp_u32(~1u, 0u, 39686u | var_0.x)), Struct_1(global2.a));
    return vec2<i32>(1i, u_input.a);
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = global2.a.x;
    var var_1 = !global2.a.x;
    var var_2 = 1u;
    var var_3 = -1000f;
    var_1 = all(select(!(!vec4<bool>(global2.a.x, true, global1.e.a.x, true)), vec4<bool>(global1.e.a.x, !global1.e.a.x, false, false || global2.a.x), vec4<bool>(true, true, true, !global2.a.x))) != global2.a.x;
    return Struct_1(vec2<bool>(arg_0.x != abs(select(u_input.a, -1i, global2.a.x)), any(!vec4<bool>(true, global1.e.a.x, global2.a.x, global1.e.a.x))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = min(countOneBits(1u), 1u);
    global2 = Struct_1(select(global2.a, vec2<bool>(global1.e.a.x, true), select(!select(global2.a, global2.a, global2.a), global1.e.a, true)));
    var var_1 = global1.e;
    global0 = array<f32, 9>();
    var var_2 = func_4(select(arg_0.xx, func_3(func_2(), Struct_2(global0[_wgslsmith_index_u32(u_input.b, 9u)], vec3<u32>(global1.d.x, u_input.b, u_input.b), -220f, vec3<u32>(1u, 23691u, global1.b.x), Struct_1(vec2<bool>(true, false))), Struct_1(var_1.a)), any(global1.e.a)) >> ((vec2<u32>(firstLeadingBit(4294967295u), ~0u) & max(~global1.d.xx, _wgslsmith_div_vec2_u32(global1.b.xx, vec2<u32>(global1.b.x, 43535u)))) % vec2<u32>(32u)));
    return Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global1.d, global1.b), 9u)], firstLeadingBit(_wgslsmith_add_vec3_u32(global1.b, ~global1.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f)), 1000f), global1.b & (vec3<u32>(~global1.d.x, 13441u, ~global1.d.x) & _wgslsmith_add_vec3_u32(global1.b, vec3<u32>(u_input.b, 4294967295u, var_0))), func_4(-abs(arg_0.yz)));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> i32 {
    global1 = func_1(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, u_input.a)), u_input.a), -2147483647i, ~_wgslsmith_add_i32(firstLeadingBit(-1i), _wgslsmith_sub_i32(57864i, u_input.a))));
    let var_0 = func_3(!func_2(), func_1(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, 0i), vec3<i32>(14767i, u_input.a, -27923i)) ^ firstLeadingBit(vec3<i32>(u_input.a, -19862i, 31516i)))), arg_0.e).x;
    global1 = arg_0;
    return firstTrailingBit(-1i);
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_2 {
    global0 = array<f32, 9>();
    let var_0 = global2.a.x;
    let var_1 = global1.e;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-global1.a), 531f);
    let var_3 = vec4<f32>(global1.a, -1301f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f))), _wgslsmith_f_op_f32(-var_2.x));
    return func_1(-countOneBits(-(vec3<i32>(-58207i, 2147483647i, 2147483647i) | vec3<i32>(u_input.a, 0i, 1i))));
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_i32(firstTrailingBit(0i), u_input.a & -(~0i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-505f, -153f, -840f) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], global1.a, 148f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, global1.a, global0[_wgslsmith_index_u32(10599u, 9u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1141f, -224f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, global0[_wgslsmith_index_u32(36895u, 9u)], -1121f) - vec3<f32>(global1.a, global0[_wgslsmith_index_u32(4294967295u, 9u)], -1025f)))))));
    var var_2 = all(select(vec4<bool>(_wgslsmith_div_f32(global1.c, arg_0.c) == _wgslsmith_f_op_f32(1272f - arg_0.c), -2030f >= _wgslsmith_div_f32(var_1.x, arg_0.a), func_4(~vec2<i32>(var_0, var_0)).a.x, global1.e.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.d.x <= global1.d.x, arg_0.e.a.x, arg_0.e.a.x, false), select(!vec4<bool>(true, false, global2.a.x, true), func_2(), any(global1.e.a))), select(!select(vec4<bool>(true, arg_0.e.a.x, false, global1.e.a.x), vec4<bool>(false, global1.e.a.x, global2.a.x, global1.e.a.x), vec4<bool>(true, true, true, global1.e.a.x)), select(!vec4<bool>(true, arg_0.e.a.x, global1.e.a.x, global2.a.x), !vec4<bool>(arg_0.e.a.x, false, true, global1.e.a.x), vec4<bool>(false, false, global1.e.a.x, false)), global1.e.a.x)));
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(abs(global1.d.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(41440u, 1u), 4294967295u >> (_wgslsmith_div_u32(0u, u_input.b) % 32u)), ~_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec3_u32(global1.b, arg_0.d))), vec3<u32>(_wgslsmith_mod_u32(select(1u, arg_0.b.x, true), _wgslsmith_mod_u32(u_input.b, 502u)), arg_0.d.x, ~(global1.d.x << (81550u % 32u))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(2262u), _wgslsmith_clamp_u32(22748u, global1.b.x, 4829u), ~4294967295u), ~global1.b & global1.b) % vec3<u32>(32u)));
    var_2 = global2.a.x;
    return func_4(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.a, var_0), 1i), vec2<i32>(_wgslsmith_add_i32(u_input.a, 0i), var_0), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 50955i), vec2<i32>(u_input.a, 0i)))), -(-vec2<i32>(1i, u_input.a) & _wgslsmith_mult_vec2_i32(vec2<i32>(-68461i, 1i), vec2<i32>(47524i, var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-399f, global1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(58583u << (u_input.b % 32u), 9u)] * global1.a), -460f, global1.e.a.x)), -1208f)));
    let var_1 = global2.a;
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    global2 = global1.e;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))) * -1047f), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(9042u, global1.d.x), (7449u << (0u % 32u)) | u_input.b, ~29096u), 9u)], var_0.x) + vec3<f32>(1502f, 539f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-542f, global1.c))));
    global2 = func_7(func_6(_wgslsmith_f_op_f32(trunc(828f)), u_input.a == func_5(func_1(vec3<i32>(0i, -3931i, 0i)), 65616u, func_1(vec3<i32>(26370i, 0i, -1i))), ~vec4<u32>(abs(4294967295u), ~u_input.b, abs(global1.d.x), u_input.b), global1.e.a));
    global2 = Struct_1(vec2<bool>(-11942i == _wgslsmith_sub_i32(u_input.a, 2147483647i), global1.e.a.x));
    global1 = func_1(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.a, -1i), _wgslsmith_sub_i32(-8631i, 0i), -21382i), countOneBits(-vec3<i32>(1i, u_input.a, u_input.a))), ~firstTrailingBit(~vec3<i32>(u_input.a, 31879i, 30126i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_2.zx, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(abs(var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1984f + -965f) + _wgslsmith_div_f32(1089f, var_0.x)), true)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, 26660u), 9u)], _wgslsmith_f_op_f32(select(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(567f + -2857f)), false))));
}

