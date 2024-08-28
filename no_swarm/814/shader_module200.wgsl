struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(1i, 1i, i32(-2147483648)), Struct_1(0u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> i32 {
    var var_0 = arg_1;
    let var_1 = vec3<i32>(-1i, global0.a.x, -3970i | ~_wgslsmith_dot_vec2_i32(global0.a.yz, -vec2<i32>(-2857i, -21857i)));
    let var_2 = Struct_2(var_1.x, ~u_input.a.x);
    global0 = Struct_3(select(~arg_1.a, vec3<i32>(-41328i, -18587i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, 33864i, var_0.a.x, var_0.a.x), vec4<i32>(var_1.x, -3212i, 1i, 2147483647i)), arg_0.x, 7144i)), any(vec3<bool>(true, any(vec2<bool>(false, false)), true))), Struct_1(abs(_wgslsmith_dot_vec2_u32(u_input.a.xz & u_input.a.yx, ~vec2<u32>(var_0.b.a, 68206u)))));
    global0 = arg_1;
    return 1i;
}

fn func_2(arg_0: f32) -> Struct_3 {
    global0 = Struct_3(vec3<i32>(reverseBits(global0.a.x), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-23469i, ~2147483647i, _wgslsmith_sub_i32(global0.a.x, 517i)), ~func_3(global0.a.yz, Struct_3(global0.a, global0.b))), -16105i), global0.b);
    var var_0 = 13448u;
    var var_1 = u_input.a.zy;
    var var_2 = ~1i;
    let var_3 = arg_0;
    return Struct_3(max(global0.a, select(vec3<i32>(global0.a.x ^ global0.a.x, firstTrailingBit(global0.a.x), 2296i), -global0.a, select(true, false, true) | any(vec2<bool>(true, false)))), global0.b);
}

fn func_4(arg_0: Struct_3) -> f32 {
    global0 = Struct_3(~arg_0.a, arg_0.b);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 823f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x)))))), _wgslsmith_f_op_f32(max(-318f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1510f, 1173f))))));
    let var_2 = func_2(_wgslsmith_f_op_f32(floor(890f))).b;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x))))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -532f) + _wgslsmith_f_op_f32(-880f - -862f)), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), any(vec4<bool>(false, false, true, false)))))), -1337f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2144f)));
}

fn func_5(arg_0: f32) -> Struct_3 {
    let var_0 = vec3<i32>(0i >> (~firstTrailingBit(66869u) % 32u), _wgslsmith_mod_i32(select(0i, ~(-9898i) ^ global0.a.x, select(any(vec4<bool>(true, true, true, false)), true, false)), select(3741i, abs(_wgslsmith_mult_i32(global0.a.x, global0.a.x)), true && any(vec3<bool>(false, true, true)))), -reverseBits(global0.a.x));
    let var_1 = vec2<bool>(all(vec4<bool>(true, (-26874i | global0.a.x) == ~(-1645i), true, all(vec4<bool>(false, false, true, true)))), true);
    let var_2 = false;
    var var_3 = true;
    let var_4 = u_input.a.x;
    return func_2(arg_0);
}

fn func_1() -> Struct_2 {
    let var_0 = select(true, true, true);
    global0 = func_5(_wgslsmith_f_op_f32(func_4(func_2(-1091f))));
    global0 = Struct_3(global0.a, Struct_1(global0.b.a));
    global0 = Struct_3(~global0.a, global0.b);
    let var_1 = firstTrailingBit(vec4<i32>(~(-_wgslsmith_dot_vec2_i32(global0.a.zy, vec2<i32>(global0.a.x, 1i))), abs(global0.a.x), 1i, func_5(-1305f).a.x));
    return Struct_2(-20426i, global0.b.a);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = true;
    let var_1 = Struct_2(1i, global0.b.a);
    let var_2 = var_1;
    let var_3 = 15866i;
    var var_4 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(26380i, var_1.a), (_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, arg_2.a, var_1.a, arg_1), vec4<i32>(arg_2.a, 0i, 2147483647i, global0.a.x)) | ~2147483647i) & 37345i), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-303f - 1175f) - _wgslsmith_div_f32(858f, -128f)))).a.x, _wgslsmith_add_i32(0i, countOneBits(_wgslsmith_clamp_i32(-25337i, 1i, var_1.a))) | 59680i);
    return ~(-global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(global0.b, global0.a.x, func_1(), Struct_3(firstLeadingBit(vec3<i32>(global0.a.x, global0.a.x, global0.a.x) & global0.a), func_5(_wgslsmith_f_op_f32(-463f + 863f)).b)), Struct_1(global0.b.a));
    global0 = var_0;
    var var_1 = func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(232f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_0)) - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1484f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-822f, -1349f) - _wgslsmith_f_op_f32(func_4(var_0))))))).b.a;
    var var_2 = u_input.a;
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(min(15718i, _wgslsmith_mod_i32((var_0.a.x | -15990i) ^ -36455i, -38033i)));
}

