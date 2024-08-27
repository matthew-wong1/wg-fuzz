struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = global0.b;
    let var_1 = Struct_1(global0.a, global0.b);
    global0 = var_1;
    let var_2 = vec3<i32>(-1480i, -88i, 2147483647i);
    return ~vec3<u32>(~(~4294967295u), u_input.a.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)) | (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) | vec4<u32>(1u, 12270u, 8452u, u_input.a.x)), (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) & vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)) << (abs(vec4<u32>(u_input.a.x, 5226u, 1u, 4294967295u)) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(global0.a + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.a)))), u_input.a.x < _wgslsmith_dot_vec3_u32(func_3(), max(vec3<u32>(arg_1, u_input.a.x, 0u), vec3<u32>(63623u, arg_1, 32744u)))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1195f, _wgslsmith_f_op_f32(f32(-1f) * -211f), global0.a.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.a)))), select(false, -257f > global0.a.x, global0.b) & all(select(vec4<bool>(false, true, global0.b, false), vec4<bool>(true, true, true, false), global0.b))), _wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, arg_1, u_input.a.x, ~_wgslsmith_mod_u32(58490u, u_input.a.x)), abs(vec4<u32>(22565u, _wgslsmith_mod_u32(12744u, 1324u), 0u, 4294967295u))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.a), vec3<f32>(_wgslsmith_f_op_f32(global0.a.x + 1000f), 1000f, _wgslsmith_f_op_f32(global0.a.x * 411f)), select(!vec3<bool>(true, var_0.b.b, var_0.b.b), select(vec3<bool>(global0.b, true, var_0.b.b), vec3<bool>(true, false, var_0.b.b), vec3<bool>(false, var_0.a.b, true)), !vec3<bool>(var_0.a.b, var_0.b.b, var_0.b.b))))), all(vec2<bool>(any(!vec3<bool>(false, var_0.a.b, false)), select(global0.b && var_0.b.b, any(vec2<bool>(global0.b, global0.b)), !var_0.b.b))));
    let var_1 = var_0.b;
    let var_2 = u_input.a;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1595f, -412f, 1420f), _wgslsmith_f_op_vec3_f32(step(var_0.b.a, var_1.a)), select(vec3<bool>(var_0.a.b, true, var_1.b), vec3<bool>(var_0.a.b, true, false), vec3<bool>(false, var_1.b, false)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, -176f, 1286f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 1074f, global0.a.x) - vec3<f32>(var_1.a.x, -241f, -256f)))), false), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(var_1.a)))))), any(select(vec2<bool>(true, false), !vec2<bool>(false, var_1.b), select(vec2<bool>(false, false), vec2<bool>(var_1.b, var_1.b), true)))), var_0.c);
    return vec4<bool>(true, any(!(!vec4<bool>(global0.b, false, false, var_0.b.b))), true, any(!(!(!vec4<bool>(false, false, global0.b, true)))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    return Struct_1(global0.a, false);
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> i32 {
    global0 = Struct_1(global0.a, all(vec3<bool>(!global0.b && all(vec4<bool>(arg_1.a, global0.b, false, arg_1.a)), all(!vec4<bool>(global0.b, arg_1.a, arg_1.a, false)), arg_1.a)));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-465f, global0.a.x, false)) - 1433f))), 1302f, arg_1.a)), global0.a.x, global0.a.x, _wgslsmith_f_op_f32(-837f + _wgslsmith_f_op_f32(max(-669f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x)))))));
    let var_1 = ~vec2<i32>(abs(0i), 2147483647i) | _wgslsmith_mod_vec2_i32(~(-_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(arg_0, arg_0))), vec2<i32>(-arg_0 << (u_input.a.x % 32u), arg_0));
    let var_2 = Struct_2(func_4(any(func_2(abs(vec3<i32>(2147483647i, 2147483647i, -645i)), u_input.a.x & 17952u)), select(select(func_2(vec3<i32>(-2147483647i, 2147483647i, var_1.x), u_input.a.x), vec4<bool>(global0.b, true, arg_1.a, false), !vec4<bool>(global0.b, arg_1.a, true, false)), func_2(_wgslsmith_add_vec3_i32(vec3<i32>(10295i, var_1.x, var_1.x), vec3<i32>(2147483647i, 27657i, 57620i)), _wgslsmith_dot_vec4_u32(vec4<u32>(67748u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 19662u, 4294967295u))), _wgslsmith_f_op_f32(600f - 367f) >= var_0.x), ~(~select(u_input.a.x, 4294967295u, arg_1.a)), _wgslsmith_div_vec2_f32(var_0.xz, vec2<f32>(-721f, _wgslsmith_f_op_f32(global0.a.x - arg_1.c)))), func_4(false, vec4<bool>(_wgslsmith_mod_i32(var_1.x, 1i) < var_1.x, true, global0.b, global0.b), 10607u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(311f, arg_1.b)), 1093f)), vec4<u32>(~_wgslsmith_add_u32(1u, 26400u), u_input.a.x, ~abs(u_input.a.x), 53462u << (1u % 32u)) | (vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 4294967295u), abs(u_input.a.x), u_input.a.x, ~u_input.a.x) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 8097u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 77u), vec4<u32>(37461u, u_input.a.x, 36823u, 47720u)))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.a.x), 426f), _wgslsmith_f_op_f32(760f + var_0.x), _wgslsmith_f_op_f32(-195f - 1568f), var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.a.x, 117f, -732f, var_0.x), vec4<f32>(arg_1.b, -552f, 416f, arg_1.c))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, var_2.a.a.x, 1028f)) - vec4<f32>(global0.a.x, global0.a.x, var_2.a.a.x, arg_1.b))), vec4<bool>(func_4(all(vec2<bool>(true, false)), vec4<bool>(false, false, arg_1.a, true), var_2.c.x | u_input.a.x, var_0.wz).b, false, !(arg_1.b >= 774f), func_4(!var_2.b.b, vec4<bool>(global0.b, var_2.a.b, var_2.a.b, true), u_input.a.x, var_2.b.a.zy).b)))));
    return -2147483647i;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = func_4(global0.b, !(!(!vec4<bool>(arg_0.b, arg_0.b, false, global0.b))), u_input.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.xz), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(973f)))), 1f)));
    let var_0 = ~u_input.a;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0.a)) + _wgslsmith_f_op_vec3_f32(-arg_0.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-994f, global0.a.x, -641f), vec3<f32>(-1028f, arg_0.a.x, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(909f, 1000f, -588f) * global0.a))), all(select(vec3<bool>(arg_0.b, true, arg_0.b), !vec3<bool>(true, false, global0.b), true))), func_4(true, vec4<bool>(any(vec4<bool>(arg_0.b, true, false, false)), !global0.b, var_0.x <= _wgslsmith_mult_u32(var_0.x, var_0.x), func_4(true, func_2(vec3<i32>(22190i, 3574i, 2147483647i), 4294967295u), _wgslsmith_div_u32(4294967295u, 8733u), vec2<f32>(arg_0.a.x, arg_0.a.x)).b), u_input.a.x << ((func_3().x << (0u % 32u)) % 32u), vec2<f32>(-1260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), vec4<u32>(var_0.x, func_3().x, ~4294967295u, var_0.x));
    global0 = func_4(true, !vec4<bool>(var_1.a.b, func_2(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1, 36876i, 7654i), vec3<i32>(-1i, arg_1, 83343i)), 78726u).x, all(vec4<bool>(arg_0.b, false, var_1.a.b, global0.b)), any(vec3<bool>(global0.b, false, true)) | true), 31532u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1524f, 1282f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.b.a.zy * var_1.a.a.yx), arg_0.a.xx)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.a.yx - global0.a.zx))))));
    let var_2 = 79018u;
    return Struct_1(vec3<f32>(_wgslsmith_div_f32(arg_0.a.x, -442f), _wgslsmith_div_f32(var_1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -540f)), arg_0.a.x), (_wgslsmith_f_op_f32(f32(-1f) * -318f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1455f - var_1.a.a.x) + _wgslsmith_f_op_f32(floor(var_1.b.a.x)))) || (var_2 > 103151u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.a))), abs(u_input.a.x) <= max(u_input.a.x, 9412u)), func_1(-15722i, Struct_3(!global0.b, global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -319f)))), func_4(func_4(false, select(!vec4<bool>(global0.b, true, true, global0.b), select(vec4<bool>(false, false, false, global0.b), vec4<bool>(false, global0.b, global0.b, global0.b), vec4<bool>(global0.b, global0.b, false, global0.b)), vec4<bool>(global0.b, true, false, global0.b)), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 67871u), vec4<u32>(984u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1567f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-482f, global0.a.x)))).b, vec4<bool>(!any(vec4<bool>(true, true, global0.b, global0.b)), any(select(vec4<bool>(false, global0.b, false, global0.b), vec4<bool>(global0.b, global0.b, false, global0.b), global0.b)), false, global0.b), _wgslsmith_mult_u32(firstTrailingBit(1u) >> (~15484u % 32u), ~u_input.a.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global0.a.zx + global0.a.yx)))))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(91586u, u_input.a.x, u_input.a.x, 82208u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 21334u) % vec4<u32>(32u)), vec4<u32>(1u, 8826u, u_input.a.x, u_input.a.x)), ~u_input.a.x, firstLeadingBit(u_input.a.x), firstLeadingBit(1u)) ^ ((vec4<u32>(55823u, 4294967295u, u_input.a.x, 1u) ^ reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 7706u))) | (~vec4<u32>(14472u, u_input.a.x, u_input.a.x, 1u) >> (reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 24800u)) % vec4<u32>(32u)))));
    global0 = func_5(var_0.a, _wgslsmith_mult_i32(-24212i | firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-20009i, 35148i), vec2<i32>(14418i, 1i))), i32(-1i) * -(~32910i)));
    var var_1 = func_4(!func_5(var_0.a, min(abs(-37358i), i32(-1i) * -2147483647i)).b, select(select(select(select(vec4<bool>(false, true, true, var_0.b.b), vec4<bool>(true, global0.b, false, true), false), vec4<bool>(var_0.a.b, var_0.a.b, true, false), all(vec2<bool>(global0.b, true))), func_2(vec3<i32>(-26790i, 16194i, 99i), firstTrailingBit(u_input.a.x)), !(!var_0.a.b)), vec4<bool>(func_5(Struct_1(vec3<f32>(var_0.a.a.x, var_0.a.a.x, -419f), true), select(-7297i, -9652i, global0.b)).b, !(global0.b == global0.b), all(!vec3<bool>(true, global0.b, var_0.b.b)), global0.b || true), vec4<bool>(any(func_2(vec3<i32>(0i, -1i, 1i), u_input.a.x).yxy), false, true, true)), var_0.c.x >> (abs(u_input.a.x) % 32u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(max(996f, var_0.b.a.x)), all(vec2<bool>(global0.b, global0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1343f, var_0.a.a.x, false)), _wgslsmith_f_op_f32(trunc(var_0.a.a.x)))))).b;
    global0 = var_0.a;
    let var_2 = vec4<u32>(~0u, var_0.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(97326u, ~0u), abs(reverseBits(var_0.c.zw) >> (var_0.c.yz % vec2<u32>(32u)))), ~(~14223u));
    global0 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(1550f + 1049f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.x * 1560f))))), ~vec3<i32>(1i, 1i, max(2448i, 3486i)), vec2<u32>(12248u, var_0.c.x));
}

