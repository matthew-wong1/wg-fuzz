struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1i, vec3<f32>(-300f, 1309f, 864f));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<u32>(0u, 1u, 1u), 1000f, false, -599f), Struct_1(vec3<u32>(1u, 1u, 4294967295u), 1036f, true, 1002f), Struct_1(vec3<u32>(39871u, 0u, 25939u), 515f, false, 200f), Struct_1(vec3<u32>(0u, 60329u, 0u), -2314f, true, 957f), Struct_1(vec3<u32>(14213u, 4294967295u, 89166u), -533f, false, 1000f), Struct_1(vec3<u32>(4294967295u, 33508u, 0u), -373f, false, 1114f), Struct_1(vec3<u32>(11792u, 1u, 0u), -1189f, true, -801f), Struct_1(vec3<u32>(4399u, 4294967295u, 4294967295u), 2484f, false, -958f), Struct_1(vec3<u32>(9981u, 52797u, 28590u), -796f, false, -1000f), Struct_1(vec3<u32>(25702u, 1u, 42957u), -206f, false, -407f), Struct_1(vec3<u32>(36666u, 4294967295u, 11767u), -437f, true, 841f), Struct_1(vec3<u32>(54706u, 23612u, 44715u), 651f, false, 797f), Struct_1(vec3<u32>(35727u, 10523u, 0u), -791f, false, -941f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32) -> bool {
    global1 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_mod_vec3_u32(~u_input.b, vec3<u32>(abs(_wgslsmith_div_u32(arg_2, u_input.b.x)), arg_1.a.x | ~u_input.a, ~0u) | vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(17091u, u_input.b.x, 0u, 0u) ^ vec4<u32>(0u, 0u, arg_2, 11472u), vec4<u32>(u_input.b.x, arg_2, 4294967295u, 1u)), u_input.b.x, arg_2));
    global0 = arg_0.a;
    var var_1 = 200f;
    var var_2 = Struct_1(_wgslsmith_sub_vec3_u32(u_input.b, ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(35014u, arg_2, 4294967295u), vec3<u32>(14123u, 42042u, 5020u)), ~arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.b.x)) - 1000f), !(!arg_1.c), 337f);
    return false;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_mod_vec3_u32(reverseBits(u_input.b), ~vec3<u32>(_wgslsmith_sub_u32(arg_1.a.x, _wgslsmith_clamp_u32(arg_1.a.x, u_input.a, 4294967295u)), _wgslsmith_clamp_u32(52347u, arg_1.a.x, arg_1.a.x) >> (24222u % 32u), arg_1.a.x));
    global1 = array<Struct_1, 13>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.d)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -786f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * 660f) * _wgslsmith_f_op_f32(ceil(-641f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) - -1397f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f - arg_2) + _wgslsmith_f_op_f32(min(-631f, arg_2)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1618f, -2885f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(global0.b.yz, vec2<f32>(arg_1.b, arg_2)))))))));
    let var_3 = Struct_1(~vec3<u32>(countOneBits(~arg_1.a.x), 1u, _wgslsmith_mod_u32(firstTrailingBit(1u), countOneBits(arg_1.a.x))), global0.b.x, any(vec2<bool>(false, arg_1.c)), arg_2);
    return arg_0.x;
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 13>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, 4294967295u, 0u)), select(u_input.b, select(vec3<u32>(u_input.b.x, 0u, u_input.a), vec3<u32>(u_input.b.x, u_input.b.x, 1u), false), true)), -504f, (_wgslsmith_div_i32(-29392i, -19994i) | _wgslsmith_clamp_i32(27456i, 727i, 2147483647i)) > (_wgslsmith_mod_i32(global0.a, global0.a) >> (113124u % 32u)), 314f), (countOneBits(_wgslsmith_div_i32(-2147483647i, -2147483647i)) ^ func_4(~vec3<i32>(1i, global0.a, global0.a), global1[_wgslsmith_index_u32(u_input.a >> (1u % 32u), 13u)], -128f, func_3(Struct_4(Struct_3(global0.a, vec3<f32>(-2089f, global0.b.x, 1000f)), vec3<i32>(global0.a, global0.a, 0i)), global1[_wgslsmith_index_u32(70064u, 13u)], 4294967295u))) ^ 0i);
    var var_1 = vec4<f32>(-2480f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d - 613f) * _wgslsmith_f_op_f32(global0.b.x * var_0.a.d)), _wgslsmith_f_op_f32(abs(808f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b.x)) * _wgslsmith_f_op_f32(-var_0.a.b)))) + -1000f), -1056f);
    var var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(min(~(~vec4<u32>(u_input.b.x, 0u, 1u, u_input.a)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 25736u, 57846u, var_0.a.a.x), vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 20819u))), (_wgslsmith_mod_vec4_u32(vec4<u32>(29280u, var_0.a.a.x, var_0.a.a.x, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b.x)) ^ vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.a)) & ~(vec4<u32>(var_0.a.a.x, 66368u, 57871u, var_0.a.a.x) ^ vec4<u32>(1u, var_0.a.a.x, 76493u, 0u))), 1u & var_0.a.a.x);
    let var_3 = Struct_4(Struct_3(-1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.b)))), -_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.a, global0.a, global0.a), vec3<i32>(var_0.b, 7969i, 1i)) >> (~vec3<u32>(var_0.a.a.x, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)));
    return _wgslsmith_f_op_f32(var_0.a.d + _wgslsmith_f_op_f32(sign(-445f)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global1 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = global0.b.x;
    global1 = array<Struct_1, 13>();
    var var_2 = -vec4<i32>(arg_0.b, func_4(-(vec3<i32>(global0.a, arg_0.b, arg_0.b) << (u_input.b % vec3<u32>(32u))), global1[_wgslsmith_index_u32(~0u, 13u)], _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1754f, 989f))), any(select(vec2<bool>(arg_0.a.c, true), vec2<bool>(arg_0.a.c, arg_0.a.c), vec2<bool>(false, arg_0.a.c)))), -8602i, 2147483647i);
    return arg_0;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: Struct_2) -> vec3<f32> {
    global0 = Struct_3(-31598i, global0.b);
    var var_0 = global0.b;
    global1 = array<Struct_1, 13>();
    let var_1 = !any(vec2<bool>(true, true)) | select(true, !(any(vec4<bool>(true, true, arg_2.a.c, false)) || true), true);
    global1 = array<Struct_1, 13>();
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1181f), arg_2.a.b) - vec3<f32>(arg_1.a.a.b, arg_1.a.a.d, -688f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(268f, 278f, _wgslsmith_f_op_f32(-var_0.x)), global0.b) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(404f, global0.b.x, global0.b.x))))))), !(!(!(-614f < var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global0.b + global0.b))) - _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, global0.a), vec2<i32>(global0.a, global0.a)), Struct_5(Struct_2(global1[_wgslsmith_index_u32(u_input.a, 13u)], global0.a)), func_1(Struct_2(Struct_1(u_input.b, 1199f, true, global0.b.x), 1i)))))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global0.a, global0.a, global0.a, global0.a)), firstTrailingBit(vec4<i32>(global0.a, global0.a, global0.a, -42518i))), -55204i, -24989i));
    global0 = var_0.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(var_0.b.zx, Struct_5(Struct_2(global1[_wgslsmith_index_u32(0u, 13u)], 2147483647i)), Struct_2(Struct_1(u_input.b, var_0.a.b.x, true, -394f), 36112i)))))));
    global0 = Struct_3(1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.b.x, global0.b.x, var_0.a.b.x), var_0.a.b))) + global0.b) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)), _wgslsmith_f_op_f32(func_1(Struct_2(global1[_wgslsmith_index_u32(1u, 13u)], var_0.b.x)).a.b * _wgslsmith_f_op_f32(var_0.a.b.x - var_0.a.b.x)), _wgslsmith_f_op_f32(trunc(-972f)))));
    let var_2 = select(select(!vec2<bool>(false, all(vec2<bool>(false, false))), vec2<bool>(true, false || select(false, false, false)), vec2<bool>(true, true)), vec2<bool>(true, true), false);
    let var_3 = select(~(~var_0.b.x >> (_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.yx) % 32u)), ~global0.a, any(!(!var_2))) ^ (var_0.a.a << (1u % 32u));
    let var_4 = _wgslsmith_f_op_f32(var_1.x * var_0.a.b.x);
    var_0 = Struct_4(var_0.a, var_0.b);
    var var_5 = _wgslsmith_f_op_f32(var_1.x * -333f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, ~var_0.b.xz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(621f * global0.b.x)), -1000f), 0u, ~1i);
}

