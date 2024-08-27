struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    var var_0 = global1.c;
    var var_1 = vec3<bool>(any(select(vec4<bool>(any(vec2<bool>(arg_0, true)), true, true, all(vec4<bool>(var_0.a, global1.c.a, true, true))), !(!vec4<bool>(true, arg_0, false, false)), !vec4<bool>(true, global1.a.a, arg_0, false))), any(vec4<bool>(global0.x && arg_0, all(!vec2<bool>(true, arg_0)), global0.x, select(global0.x & false, global0.x, true))), !(!arg_0));
    let var_2 = u_input.b;
    var var_3 = vec3<i32>(~(~1i), firstTrailingBit(-1i), -8138i);
    var_1 = !select(select(vec3<bool>(true, global0.x, any(vec3<bool>(false, var_0.a, var_0.a))), vec3<bool>(global0.x, true, true), global1.a.a), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, global1.a.a, false), var_1.x), vec3<bool>(true, true, true), !vec3<bool>(true, var_0.a, true)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global1.a.c.xxy, vec3<i32>(var_3.x, -17689i, global1.c.c.x)), vec3<i32>(1i, 2147483647i, var_0.c.x)) < _wgslsmith_dot_vec2_i32(vec2<i32>(-37639i, u_input.b), vec2<i32>(var_2, 2147483647i) & var_0.c.yx));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, global1.c.d.x, 1000f, var_0.d.x)))))));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: vec4<bool>, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = Struct_4(Struct_3(arg_0.c.c.x >= ~global1.c.c.x, global1.a.b, -arg_0.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(false)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.a.d, vec4<f32>(137f, 1000f, global1.c.d.x, global1.c.d.x), true)) - _wgslsmith_f_op_vec4_f32(max(arg_0.a.d, global1.c.d))))), vec4<i32>((global1.a.c.x << (1583u % 32u)) & 21389i, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 1i), vec2<i32>(u_input.b, global1.c.c.x)), 1i, arg_1) | firstTrailingBit(global1.b), Struct_3(false, _wgslsmith_sub_vec4_u32(vec4<u32>(59526u, 1984u, 4294967295u, u_input.a), vec4<u32>(1u, 4294967295u, arg_0.a.b.x, global1.a.b.x)) << (~abs(vec4<u32>(arg_0.c.b.x, global1.a.b.x, global1.a.b.x, 88972u)) % vec4<u32>(32u)), min(vec4<i32>(-49054i, -2147483647i, _wgslsmith_clamp_i32(0i, 67020i, global1.c.c.x), -23136i), global1.a.c), arg_0.a.d));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(136f, -1639f))))) >= _wgslsmith_f_op_f32(round(-2173f)), true, (~(~17098u) == ~(24982u << (global1.c.b.x % 32u))) & !arg_3.x);
    let var_2 = arg_1;
    global0 = !(!vec3<bool>(false, !(!var_0.c.a), _wgslsmith_f_op_f32(global1.c.d.x + -2590f) < _wgslsmith_div_f32(-1038f, var_0.a.d.x)));
    var_1 = arg_3.xwz;
    return vec3<bool>(var_2 != -(~(~var_0.a.c.x)), false, true);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>) -> u32 {
    global0 = !(!select(!vec3<bool>(global0.x, false, true), !vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(arg_1.a, false, true), select(vec3<bool>(arg_1.a, global1.c.a, true), vec3<bool>(global1.c.a, global0.x, global1.c.a), vec3<bool>(true, arg_1.a, arg_1.a)), !vec3<bool>(global0.x, global1.a.a, false))));
    var var_0 = ~vec3<u32>(arg_1.b.x, global1.a.b.x, ~(~4294967295u));
    global0 = select(select(vec3<bool>(_wgslsmith_dot_vec3_i32(global1.b.zww, vec3<i32>(arg_1.c.x, 17784i, global1.b.x)) < (i32(-1i) * -2147483647i), all(!vec4<bool>(true, global0.x, false, false)), true), select(vec3<bool>(true, true, global0.x), !(!vec3<bool>(arg_1.a, true, global1.a.a)), !any(global0.yy)), false), select(select(vec3<bool>(!arg_1.a, !global0.x, any(vec4<bool>(false, global1.c.a, arg_1.a, arg_1.a))), vec3<bool>(true, true, true), global1.c.a), select(!vec3<bool>(false, global0.x, true), select(!vec3<bool>(arg_1.a, false, false), func_2(Struct_4(global1.c, arg_1.c, Struct_3(global0.x, global1.a.b, arg_1.c, vec4<f32>(406f, 685f, arg_1.d.x, -1614f))), arg_1.c.x, vec4<bool>(global1.a.a, global0.x, global0.x, false), vec4<bool>(global0.x, arg_1.a, global1.c.a, arg_1.a)), arg_1.a), vec3<bool>(0u <= arg_1.b.x, arg_1.a, global0.x)), arg_1.a), vec3<bool>(any(vec4<bool>(!global1.c.a, arg_1.a, all(vec3<bool>(arg_1.a, global0.x, arg_1.a)), arg_1.d.x == global1.a.d.x)), any(func_2(Struct_4(global1.a, arg_1.c, Struct_3(true, vec4<u32>(arg_1.b.x, 28190u, 0u, global1.c.b.x), global1.c.c, vec4<f32>(-620f, -621f, 898f, 823f))), 43424i, vec4<bool>(global1.a.a, global0.x, false, true), vec4<bool>(false, global1.a.a, global0.x, false)).yz), !(arg_1.a || true)));
    return ~firstTrailingBit(1u) >> (~reverseBits(~1u) % 32u);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_4(Struct_3(global0.x && (!global0.x || arg_1.a), global1.a.b, _wgslsmith_mod_vec4_i32(arg_1.c, firstTrailingBit(-arg_1.c)), global1.a.d), abs(-vec4<i32>(16024i, 0i, arg_1.c.x, arg_1.c.x)) & min(global1.c.c, vec4<i32>(1i, -79983i, 0i << (arg_0 % 32u), ~38191i)), Struct_3(!global1.c.a, vec4<u32>(arg_0, _wgslsmith_add_u32(arg_1.b.x, _wgslsmith_dot_vec3_u32(arg_1.b.wyw, arg_1.b.xyz)), 1u, _wgslsmith_add_u32(arg_1.b.x, arg_1.b.x)), firstLeadingBit(_wgslsmith_mult_vec4_i32(-arg_1.c, abs(vec4<i32>(-1i, 40701i, -42246i, arg_2)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(398f, 271f, 830f, 250f))))));
    global1 = Struct_4(Struct_3(any(vec2<bool>(true, true)), arg_1.b, vec4<i32>(~var_0.c.c.x, u_input.b, _wgslsmith_dot_vec2_i32(arg_1.c.yx, _wgslsmith_mod_vec2_i32(var_0.c.c.zy, global1.c.c.wz)), -_wgslsmith_sub_i32(79053i, u_input.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.c.d.x), var_0.a.d.x, _wgslsmith_div_f32(var_0.a.d.x, -1054f), _wgslsmith_f_op_f32(-103f + 769f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-379f, -177f, arg_1.d.x, -1324f), vec4<f32>(arg_1.d.x, var_0.a.d.x, arg_1.d.x, arg_1.d.x))))), var_0.c.c, arg_1);
    global0 = vec3<bool>(true, true, var_0.a.a);
    var var_1 = vec2<bool>(true, false != global1.a.a);
    let var_2 = true;
    return Struct_4(Struct_3(!(!(!global0.x)), _wgslsmith_sub_vec4_u32(global1.a.b, global1.c.b), _wgslsmith_clamp_vec4_i32(-(vec4<i32>(arg_1.c.x, -38192i, 34609i, -1i) >> (vec4<u32>(4294967295u, arg_3, 4294967295u, 0u) % vec4<u32>(32u))), min(vec4<i32>(u_input.b, arg_1.c.x, global1.b.x, 1i), vec4<i32>(31487i, 2147483647i, global1.b.x, arg_2)), arg_1.c), vec4<f32>(_wgslsmith_f_op_f32(499f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -892f), _wgslsmith_f_op_f32(2098f + 477f), _wgslsmith_f_op_f32(-1006f * 1000f))), var_0.c.c, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(u_input.a, Struct_3(true == (any(global0.yz) && false), vec4<u32>(u_input.a, ~global1.a.b.x, _wgslsmith_mult_u32(firstTrailingBit(u_input.a), func_1(1i, Struct_3(global0.x, global1.c.b, global1.a.c, global1.a.d), vec2<i32>(31865i, global1.b.x))), 63906u), _wgslsmith_div_vec4_i32(~vec4<i32>(7119i, u_input.b, u_input.b, u_input.b), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, global1.b.x, global1.b.x, u_input.b), vec4<i32>(u_input.b, global1.c.c.x, u_input.b, -2147483647i)), global1.c.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global1.a.d, vec4<f32>(global1.c.d.x, 1000f, 1481f, global1.a.d.x), vec4<bool>(global1.c.a, global1.c.a, true, true))))) * vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, 1430f, global0.x)), _wgslsmith_f_op_f32(-global1.a.d.x), _wgslsmith_f_op_f32(-1124f + global1.a.d.x), _wgslsmith_f_op_f32(min(1000f, global1.a.d.x))))), -reverseBits(0i ^ _wgslsmith_div_i32(15619i, u_input.b)), u_input.a);
    var var_0 = false;
    var var_1 = u_input.b;
    var var_2 = vec2<bool>(false, all(select(!vec3<bool>(global1.c.a, global1.a.a, global0.x), select(vec3<bool>(false, global1.a.a, global0.x), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global1.c.a, false, global0.x), global1.c.a), select(vec3<bool>(global1.c.a, global1.c.a, global1.c.a), vec3<bool>(global1.a.a, global0.x, false), vec3<bool>(global1.a.a, false, true))), any(select(vec4<bool>(global1.a.a, true, false, global0.x), vec4<bool>(true, global0.x, false, global0.x), true)))));
    let var_3 = global1.a.d.x;
    var_0 = ~u_input.a > ~_wgslsmith_clamp_u32(abs(firstTrailingBit(global1.c.b.x)), global1.c.b.x, 0u);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(global1.c.d.x + global1.a.d.x), global1.a.d.x, -110f, 1528f);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u & u_input.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_4(20697u, global1.c, 0i, global1.c.b.x).c.d.zxz)))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, firstLeadingBit(u_input.b)), -5021i), abs(~vec4<u32>(min(u_input.a, u_input.a), ~50771u, 4294967295u, 1u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a.d.x, 1019f, var_4.x))));
}

