struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<i32> = vec3<i32>(-12015i, -25845i, 1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    let var_0 = arg_2.c.zyx;
    global1 = u_input.c;
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1094f), _wgslsmith_f_op_f32(step(arg_0.c.b, -1000f)))), _wgslsmith_f_op_f32(floor(882f))))), !select(true, true, arg_1), Struct_3(countOneBits(arg_0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-238f * _wgslsmith_f_op_f32(f32(-1f) * -457f)) - arg_0.c.b)));
    var var_1 = firstTrailingBit(1u);
    let var_2 = Struct_3(select(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, global0.c.a), _wgslsmith_add_u32(arg_3.c.a ^ u_input.a.x, max(global0.c.a, 32426u)), arg_0.c.a), ~1u, any(var_0.xy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-644f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.c.b)) + global0.a.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b));
}

fn func_2() -> Struct_3 {
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1831f) * _wgslsmith_f_op_f32(func_3(Struct_4(vec2<f32>(global0.c.b, 392f), global0.b, Struct_3(u_input.a.x, 1000f)), false, Struct_1(vec2<bool>(global0.b, global0.b), vec4<f32>(-488f, global0.a.x, global0.c.b, global0.a.x), vec4<bool>(global0.b, true, false, true), global0.b), Struct_4(vec2<f32>(1000f, 107f), global0.b, Struct_3(u_input.a.x, -1399f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(670f * global0.a.x)))), true, Struct_3(reverseBits(1u), global0.a.x));
    let var_0 = ~global1.x;
    var var_1 = Struct_2(true, Struct_1(vec2<bool>(!(!global0.b), global0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-158f, -272f, global0.a.x, global0.c.b))))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-883f, global0.a.x, global0.c.b, global0.a.x)))), select(!vec4<bool>(false, global0.b, global0.b, global0.b), !select(vec4<bool>(true, false, global0.b, false), vec4<bool>(global0.b, false, global0.b, false), global0.b), all(select(vec3<bool>(global0.b, global0.b, true), vec3<bool>(false, true, false), global0.b))), !(!(!global0.b))));
    let var_2 = -(~u_input.c) >> (vec3<u32>(~reverseBits(global0.c.a) | global0.c.a, ~11167u, 0u) % vec3<u32>(32u));
    var var_3 = Struct_3(select(_wgslsmith_clamp_u32(reverseBits(max(0u, u_input.b.x)), 22078u, global0.c.a), ~1u | _wgslsmith_clamp_u32(16739u, ~40958u, _wgslsmith_mult_u32(1u, 24074u)), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(max(-1129f, -1046f)));
    return Struct_3(var_3.a, -582f);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_mult_vec2_i32(global1.zy, _wgslsmith_mod_vec2_i32(-(~global1.xx), global1.xx) << (_wgslsmith_mult_vec2_u32(min(vec2<u32>(arg_1.a, 4294967295u) | arg_2.xx, vec2<u32>(arg_0, arg_1.a)), u_input.b) % vec2<u32>(32u)));
    let var_1 = vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -131f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global0.c.b) + _wgslsmith_f_op_f32(-arg_1.b))))), arg_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec2<f32>(arg_1.b, global0.a.x), global0.b, arg_1), true && global0.b, Struct_1(vec2<bool>(false, true), vec4<f32>(279f, arg_1.b, -325f, arg_1.b), vec4<bool>(global0.b, global0.b, global0.b, false), global0.b), Struct_4(vec2<f32>(arg_1.b, 1074f), global0.b, Struct_3(global0.c.a, 525f))))))));
    var var_2 = func_2();
    global0 = Struct_4(vec2<f32>(-186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(var_1.x, var_1.x))) - var_1.x)), !global0.b, Struct_3(22888u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(795f + 1549f))));
    var_2 = func_2();
    return Struct_4(_wgslsmith_div_vec2_f32(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, _wgslsmith_f_op_f32(var_1.x + arg_1.b)))), false, func_2());
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<u32>) -> i32 {
    global0 = func_4(global0.c.a, func_2(), vec3<u32>(~_wgslsmith_mult_u32(30623u, arg_2.x) ^ u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(abs(u_input.b.x), _wgslsmith_mod_u32(0u, arg_2.x)), _wgslsmith_div_u32(~0u, 1u)), global0.c.a));
    global1 = ~vec3<i32>(-(~2147483647i), _wgslsmith_add_i32(select(-23336i, -arg_1, global0.b), global1.x), abs(u_input.c.x | 1i) & abs(min(5927i, 66410i)));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c.b)))) * global0.a.x), global0.c.b, _wgslsmith_f_op_f32(ceil(global0.c.b)));
    let var_1 = ~_wgslsmith_dot_vec2_i32(min(vec2<i32>(arg_1, u_input.c.x), ~vec2<i32>(2034i, -2147483647i)), -arg_0.xy) ^ -firstLeadingBit(~6492i);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(var_0));
    return min(arg_1, -1i << (~arg_2.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(6223i, func_1(u_input.c, -15407i, vec2<u32>(0u, global0.c.a)), -global1.x), -(u_input.c | vec3<i32>(1i, global1.x, -2477i))), -_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(2147483647i, global1.x, global1.x)), u_input.c));
    let var_0 = u_input.a;
    var var_1 = vec3<i32>(2147483647i, global1.x, (_wgslsmith_mult_i32(~global1.x, _wgslsmith_mult_i32(global1.x, -3020i)) << (1u % 32u)) << ((_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, u_input.b.x), var_0.yy), u_input.a.yx) & var_0.x) % 32u));
    var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-max(vec4<i32>(var_1.x, u_input.c.x, u_input.c.x, global1.x), vec4<i32>(-34373i, 19966i, global1.x, global1.x)), ~(-vec4<i32>(0i, -27301i, u_input.c.x, -2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1.x, -2147483647i, var_1.x, u_input.c.x), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, 19079i, -12226i, 44507i), vec4<i32>(0i, 30185i, 1i, 1i))))), global1.x, global1.x);
    var var_2 = Struct_1(vec2<bool>(global0.b, global0.c.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(713f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-256f, global0.c.b, global0.a.x, -1709f) - vec4<f32>(global0.a.x, 1357f, global0.c.b, global0.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-955f, -853f, global0.c.b, 471f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, -354f, -545f, global0.c.b), vec4<f32>(global0.a.x, -439f, -1057f, global0.c.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(394f, -248f, 1667f, -466f)))))), select(vec4<bool>(any(!vec4<bool>(true, false, global0.b, global0.b)), global0.b, false, true), select(vec4<bool>(select(global0.b, global0.b, global0.b), global0.b, func_4(global0.c.a, Struct_3(var_0.x, global0.c.b), var_0.zwz).b, true), vec4<bool>(!global0.b, true, global0.b, true), vec4<bool>(global0.b, any(vec2<bool>(global0.b, true)), global0.b & global0.b, global0.c.b <= 197f)), vec4<bool>(true, any(vec3<bool>(false, global0.b, global0.b)), false, all(!vec3<bool>(global0.b, global0.b, global0.b)))), true);
    global0 = Struct_4(var_2.b.zy, !var_2.c.x, func_4(~global0.c.a, func_2(), _wgslsmith_clamp_vec3_u32(u_input.a.www, ~u_input.a.ywz, u_input.a.wzx)).c);
    global1 = firstTrailingBit(firstTrailingBit(u_input.c)) | ~_wgslsmith_mult_vec3_i32(firstLeadingBit(u_input.c), vec3<i32>(9295i, var_1.x, ~global1.x));
    var var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(global0.c.a), ~var_0.x, _wgslsmith_f_op_f32(floor(var_2.b.x)));
}

