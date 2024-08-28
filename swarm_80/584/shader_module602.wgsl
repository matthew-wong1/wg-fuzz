struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(1i, 715f, 0u, -1i, vec3<u32>(0u, 9854u, 1u)), Struct_2(22970i, -128f, 30997u, 2147483647i, vec3<u32>(0u, 6984u, 55866u)), Struct_2(i32(-2147483648), 399f, 1u, 3604i, vec3<u32>(8379u, 1u, 1u)), Struct_2(-1i, -809f, 1u, 2147483647i, vec3<u32>(7908u, 1u, 37751u)));

var<private> global3: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<f32> {
    let var_0 = select(select(any(global1.xy), !(reverseBits(-19i) >= firstTrailingBit(u_input.a)), _wgslsmith_mult_i32(-1i & u_input.b, reverseBits(u_input.b)) <= 0i), true && ((_wgslsmith_f_op_f32(trunc(381f)) < _wgslsmith_f_op_f32(f32(-1f) * -1771f)) | (global1.x || !global1.x)), !global1.x);
    var var_1 = -vec4<i32>(16593i, _wgslsmith_add_i32(1i, ~u_input.b), u_input.a, 2147483647i) >> (select(reverseBits(vec4<u32>(abs(1u), 1u, 10108u, 42031u)), vec4<u32>(1u, 1u, 1u, 1u), false) % vec4<u32>(32u));
    global2 = array<Struct_2, 4>();
    global3 = (_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 73235u), firstTrailingBit(7007u)), 0u) > ~max(max(1u, 23178u), max(50638u, 4294967295u))) | global1.x;
    global1 = select(select(vec3<bool>(all(vec4<bool>(true, true, var_0, global1.x)), false, any(vec4<bool>(global1.x, false, var_0, true))), select(select(!vec3<bool>(global1.x, false, var_0), select(vec3<bool>(var_0, global1.x, global1.x), vec3<bool>(true, false, global1.x), vec3<bool>(var_0, var_0, global1.x)), any(vec4<bool>(global1.x, var_0, var_0, global1.x))), select(!vec3<bool>(var_0, var_0, false), select(vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, false, global1.x), global1.x), select(vec3<bool>(false, var_0, false), vec3<bool>(false, global1.x, var_0), false)), var_0), vec3<bool>(all(!vec3<bool>(true, false, var_0)), select(!global1.x, var_0, select(false, true, false)), true)), !select(vec3<bool>(var_0, all(vec4<bool>(var_0, true, false, true)), select(var_0, false, global1.x)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(var_0, true, true)), true), vec3<bool>(global1.x, !(!(true | global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - global0.x), global0.x, global1.x && true)) > -2404f));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.x, 380f), _wgslsmith_f_op_f32(sign(global0.x)), -164f, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1725f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) + _wgslsmith_f_op_f32(f32(-1f) * -939f)), _wgslsmith_f_op_f32(f32(-1f) * -139f))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3());
    var var_1 = !global1.x;
    global1 = !vec3<bool>(global1.x, all(vec4<bool>(true, global1.x != true, any(vec3<bool>(false, false, global1.x)), all(vec4<bool>(false, false, false, global1.x)))), global1.x);
    let var_2 = !global1.x;
    return Struct_1(~_wgslsmith_add_u32(~(~0u), arg_2.x), vec4<u32>(1u, abs(4294967295u), _wgslsmith_dot_vec3_u32(reverseBits(arg_2), arg_2), arg_2.x), ~_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_sub_i32(max(0i, -1i), ~(-1i)), u_input.a), 0u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    global3 = global1.x;
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(740f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(100f + _wgslsmith_f_op_f32(f32(-1f) * -597f)), _wgslsmith_f_op_f32(max(var_0, var_0)))));
    let var_2 = select(~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-1i, u_input.a), _wgslsmith_sub_i32(u_input.a, arg_0.c), arg_0.c << (24068u % 32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(21048i, -2147483647i, 2147483647i), -vec3<i32>(u_input.a, arg_0.c, u_input.a))), _wgslsmith_sub_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(u_input.a, -48747i, arg_0.c)) | ~vec3<i32>(2147483647i, -26639i, 1i)), vec3<i32>(u_input.a, arg_0.c, _wgslsmith_mult_i32(-1836i, 33596i)) ^ min(~vec3<i32>(-1i, 2147483647i, arg_1.c), -vec3<i32>(-4030i, arg_0.c, arg_1.c))), !select(vec3<bool>(!arg_2, arg_2, true), vec3<bool>(true, true, true), true));
    let var_3 = ~(~min(42175u, ~(0u | arg_0.a)));
    return select(!(!vec2<bool>(true, any(vec3<bool>(global1.x, false, true)))), global1.zx, global1.x);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = global0.x;
    global3 = false;
    var var_1 = min(vec4<i32>(reverseBits(-(~arg_0.c)), u_input.b, u_input.a, _wgslsmith_add_i32(abs(min(u_input.b, arg_0.c)), firstTrailingBit(u_input.b))), vec4<i32>(_wgslsmith_mod_i32(arg_0.c, -_wgslsmith_mod_i32(u_input.b, u_input.a)), -49862i, _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -24660i), vec2<i32>(arg_0.c, u_input.a)), ~(-vec2<i32>(2147483647i, u_input.a))), 0i));
    var var_2 = _wgslsmith_add_i32(i32(-1i) * -1i, ~(-max(var_1.x, -38896i)));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-226f, global0.x), vec2<f32>(-1011f, 608f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(423f, global0.x))), !global1.x)) - vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(840f, 2071f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1238f, global0.x) * vec2<f32>(global0.x, -1744f))))))), select(global1.zz, func_4(Struct_1(~arg_0.b.x, ~vec4<u32>(arg_0.a, arg_0.b.x, arg_0.b.x, arg_0.b.x), -1290i, ~4306u), func_2(vec3<f32>(global0.x, global0.x, global0.x), -1i, arg_0.b.xxy), !(!global1.x)), all(select(!vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, true), false)))));
    return _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-357f - -405f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(59525u, vec4<u32>(56274u, 25049u, 0u, 21224u), u_input.a, 0u)))))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1376f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f * 1709f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), global0.x, global1.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-442f, -316f))))) * _wgslsmith_f_op_f32(global0.x + global0.x)));
    var var_1 = vec4<f32>(189f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, global0.x))))) - _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(abs(1208f)));
    let var_2 = vec4<u32>(_wgslsmith_div_u32(select(firstTrailingBit(~29065u), ~4294967295u, !global1.x), 1u), ~(1u & (0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 51876u, 1u), vec3<u32>(1u, 1u, 1u)))), ~1u, select(firstTrailingBit(10779u) & ~(~0u), 15860u, false));
    var var_3 = firstLeadingBit(max(min(_wgslsmith_sub_u32(select(var_2.x, var_2.x, false), var_2.x), var_2.x), _wgslsmith_add_u32(24460u, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(6280i | ~func_2(_wgslsmith_div_vec3_f32(var_1.zyx, vec3<f32>(-964f, var_1.x, 289f)), 0i, ~var_2.yzz).c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(207f, 1211f, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(318f, var_1.x, 736f, 568f) * vec4<f32>(183f, var_0.x, var_1.x, -410f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, -535f, 531f, global0.x))))))), abs(685u), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 13145i), -_wgslsmith_clamp_vec2_i32(min(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.b, 0i)), countOneBits(vec2<i32>(u_input.b, u_input.a)), countOneBits(vec2<i32>(u_input.a, -214i)))), ~(~((var_2.x & 4294967295u) & var_2.x)));
}

