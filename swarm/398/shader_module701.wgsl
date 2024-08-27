struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: i32,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: vec3<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5) -> vec3<u32> {
    return arg_1.e.b;
}

fn func_3() -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 26u)];
    global0 = array<f32, 26>();
    var var_1 = abs(u_input.c.x);
    let var_2 = ~max(vec2<i32>(u_input.e, 1i), -global1.yy | ~(global1.xx | vec2<i32>(u_input.e, global1.x)));
    return vec4<bool>(all(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(any(vec4<bool>(true, false, false, false)), all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), true), vec4<bool>(true, true, 1161f <= global0[_wgslsmith_index_u32(u_input.a.x, 26u)], false))), true, true, select(true | (u_input.b <= u_input.c.x), true, true) & ((_wgslsmith_div_u32(1u, u_input.c.x) ^ u_input.a.x) <= (1u << (firstLeadingBit(u_input.a.x) % 32u))));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> bool {
    let var_0 = Struct_1(func_3(), vec3<u32>(~(~(~4294967295u)), 4294967295u, _wgslsmith_mod_u32(~1u, u_input.c.x)), global0[_wgslsmith_index_u32(func_1(Struct_3(true), Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)]))), 1000f, 2147483647i, Struct_3(u_input.c.x <= 1u), Struct_1(vec4<bool>(false, false, false, false), ~vec3<u32>(44992u, 0u, u_input.c.x), -427f, true, vec3<bool>(true, false, true)))).x, 26u)], false, !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), func_3().zwy, any(func_3())));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c + 1161f))), -2603f, select(max(countOneBits(arg_0.x), global1.x), arg_0.x, func_3().x), Struct_3((any(vec4<bool>(true, false, true, false)) && var_0.e.x) & true), var_0);
    var var_2 = any(var_0.a.ww);
    var var_3 = _wgslsmith_mult_i32(-var_1.c, _wgslsmith_clamp_i32(-(abs(var_1.c) | arg_0.x), 2147483647i, 0i));
    let var_4 = Struct_4(var_1.e.a.x);
    return var_1.e.e.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> bool {
    let var_0 = Struct_1(func_3(), reverseBits(max(~vec3<u32>(58187u, 65800u, 4294967295u), ~arg_0 >> (~vec3<u32>(u_input.c.x, arg_0.x, u_input.b) % vec3<u32>(32u)))), -725f, !(-856f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 26u)]), _wgslsmith_f_op_f32(-466f + global0[_wgslsmith_index_u32(3071u, 26u)]))), !func_3().wyw);
    var var_1 = arg_1;
    var var_2 = vec3<bool>((arg_1.a & var_1.a) == func_2(_wgslsmith_mult_vec2_i32(global1.yx << (vec2<u32>(u_input.c.x, 38231u) % vec2<u32>(32u)), vec2<i32>(35753i, 28928i)), -select(global1.x, -1i, true)), true & !var_0.a.x, false);
    var var_3 = max(select(abs(~abs(vec3<u32>(43266u, u_input.a.x, 26837u))), max(var_0.b, vec3<u32>(4294967295u, 4294967295u | var_0.b.x, firstLeadingBit(1u))), !func_2(vec2<i32>(u_input.e, u_input.e), i32(-1i) * -25832i)), func_1(Struct_3(true), Struct_5(_wgslsmith_f_op_f32(1713f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 26u)])), _wgslsmith_f_op_f32(-var_0.c), reverseBits(2147483647i), Struct_3(true), var_0)));
    let var_4 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(17253u, _wgslsmith_div_u32(1u, u_input.a.x) << (~1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(17644u, u_input.b, 3376u), var_0.b & arg_0)), firstLeadingBit(var_0.b)), 4294967295u, ~(abs(~19456u) >> (max(~4294967295u, u_input.b) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(firstLeadingBit(1u)), 749u, ~var_0.b.x), var_0.b));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 26u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1f)), -1037f)));
    var var_1 = Struct_3(func_4(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u) | vec3<u32>(u_input.a.x, 4294967295u, u_input.b), vec3<u32>(u_input.a.x, u_input.b, 1u), func_1(Struct_3(true), Struct_5(var_0.x, 721f, 2147483647i, Struct_3(false), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(u_input.b, 51064u, 4294967295u), 1000f, false, vec3<bool>(true, false, true)))))), Struct_3(func_2(vec2<i32>(-48777i, u_input.d.x) << (u_input.c % vec2<u32>(32u)), max(-18495i, global1.x)))));
    var var_2 = u_input.a;
    global1 = vec3<i32>(-u_input.d.x, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(min(_wgslsmith_dot_vec2_i32(u_input.d.yz, vec2<i32>(global1.x, global1.x)), ~u_input.e), select(-global1.x, select(0i, global1.x, var_1.a), true), 58792i, global1.x), vec4<i32>(-1i | min(u_input.d.x, u_input.d.x), (global1.x << (u_input.c.x % 32u)) ^ ~34867i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(7143i, 1i), u_input.d.zx)), u_input.e)));
    var var_3 = u_input.d;
    global1 = -(~u_input.d);
    let var_4 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-943f, 540f)) * -998f) * _wgslsmith_f_op_f32(-382f * var_0.x)), -1000f, global1.x, Struct_3(var_1.a), Struct_1(func_3(), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(63796u, 4294967295u, var_2.x), vec3<u32>(u_input.c.x, u_input.c.x, 99610u)), ~vec3<u32>(1u, 76439u, u_input.a.x)) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, var_2.x), vec3<u32>(var_2.x, var_2.x, 28723u), vec3<u32>(18596u, var_2.x, 40100u)), vec3<u32>(0u, 55797u, u_input.b), func_1(Struct_3(var_1.a), Struct_5(global0[_wgslsmith_index_u32(var_2.x, 26u)], 1000f, global1.x, Struct_3(true), Struct_1(vec4<bool>(false, var_1.a, false, var_1.a), vec3<u32>(var_2.x, u_input.c.x, var_2.x), -387f, var_1.a, vec3<bool>(false, true, var_1.a))))) % vec3<u32>(32u)), -2089f, var_1.a, func_3().zyy));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -912f) + 607f), -616f, -1504f);
    let var_6 = ~6317i;
    let x = u_input.a;
    s_output = StorageBuffer(~17959u, min(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_3.x, 18967i, var_4.c, var_4.c), -vec4<i32>(var_3.x, -17152i, 1i, var_3.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_4.c, 17749i, var_4.c, u_input.d.x) & vec4<i32>(15224i, var_3.x, 2147483647i, u_input.d.x), vec4<i32>(1i, var_3.x, global1.x, -15381i))) >> (_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(0u, var_4.e.b.x, 1u, var_2.x)), vec4<u32>(var_4.e.b.x, 0u, _wgslsmith_mult_u32(u_input.c.x, 0u), 26697u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_2.x, 26u)], 1000f)), _wgslsmith_f_op_f32(max(576f, _wgslsmith_f_op_f32(trunc(-2147f))))))), vec2<u32>((~u_input.c.x | 4294967295u) << (4294967295u % 32u), _wgslsmith_clamp_u32(0u, func_1(var_4.d, var_4).x, ~_wgslsmith_div_u32(var_2.x, 1u))), 19342i);
}

