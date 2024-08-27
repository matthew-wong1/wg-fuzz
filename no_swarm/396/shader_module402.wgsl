struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    global1 = Struct_2(~vec4<i32>(global1.a.x, select(1i, -76464i, global0.c.a), min(-1i, arg_2), min(global1.a.x | global1.a.x, global0.a.x ^ arg_2)), _wgslsmith_dot_vec2_u32(~arg_0.b.xx, global0.c.b.xz << (arg_0.b.yy % vec2<u32>(32u))), arg_0, -831f);
    let var_0 = Struct_1(true, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(~global1.c.b), select(global1.c.b, vec3<u32>(u_input.a, u_input.a, 42003u), true) & select(vec3<u32>(u_input.a, arg_0.b.x, arg_1.b.x), vec3<u32>(65837u, 0u, arg_1.b.x), vec3<bool>(arg_0.a, global1.c.a, true))), global1.c.b));
    global1 = Struct_2(~(~vec4<i32>(~global1.a.x, abs(global1.a.x), abs(arg_2), reverseBits(30240i))), max(9092u, min(arg_1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.x, arg_1.b.x), global1.c.b.xz))) & (u_input.a & ~global1.b), Struct_1(global1.c.a, global0.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1237f - _wgslsmith_f_op_f32(sign(global1.d))))) + _wgslsmith_div_f32(global1.d, global1.d)));
    var var_1 = _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(global1.a.x, global1.a.x, -2147483647i), 0i)), vec2<i32>(-(~(-7382i)), ~_wgslsmith_sub_i32(global0.a.x, i32(-1i) * -2147483647i)));
    let var_2 = Struct_1(any(select(vec2<bool>(true, true), !select(vec2<bool>(var_0.a, true), vec2<bool>(global0.c.a, arg_0.a), arg_0.a), all(select(vec3<bool>(false, arg_1.a, arg_0.a), vec3<bool>(false, false, global0.c.a), vec3<bool>(global1.c.a, false, arg_0.a))))), var_0.b);
    return ~1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    return Struct_2(global1.a, func_3(Struct_1(arg_0.a, arg_0.b), global1.c, -arg_1.x) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, 0u) ^ arg_0.b.yx, global0.c.b.zy) << (~u_input.a % 32u)) % 32u), Struct_1(false, reverseBits(abs(~vec3<u32>(4294967295u, global0.b, global0.c.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = func_2(global0.c, -countOneBits(_wgslsmith_sub_vec2_i32(global0.a.xw, global0.a.ww)));
    global0 = arg_2;
    global0 = func_2(func_2(func_2(global1.c, vec2<i32>(38145i, i32(-1i) * -49501i)).c, select(_wgslsmith_sub_vec2_i32(vec2<i32>(-18516i, var_0.a.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.x, -32539i), arg_2.a.zy, var_0.a.zy)), ~arg_1.a.wz, var_0.c.a)).c, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, global0.a.x), ~37566i), ~_wgslsmith_clamp_i32(1i, global0.a.x, 1i)), ~arg_1.a.xw, firstTrailingBit(abs(arg_1.a.xw)) | abs(vec2<i32>(global1.a.x, 76817i))));
    let var_1 = arg_2;
    var var_2 = Struct_2(var_1.a, ~countOneBits(~40488u), global1.c, _wgslsmith_f_op_f32(1f - global0.d));
    return func_2(Struct_1(true, ~vec3<u32>(_wgslsmith_sub_u32(4294967295u, arg_2.b), ~0u, ~1u)), func_2(func_2(func_2(Struct_1(false, vec3<u32>(arg_2.b, 43038u, 82757u)), reverseBits(var_0.a.xy)).c, vec2<i32>(~arg_2.a.x, abs(var_2.a.x))).c, -arg_1.a.zy).a.yx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, abs(global1.b)), 47557u), Struct_2(vec4<i32>(0i, _wgslsmith_mult_i32(global1.a.x, -1501i), reverseBits(abs(-1i)), -13665i), 31664u, global1.c, _wgslsmith_f_op_f32(abs(-1229f))), Struct_2(global1.a, _wgslsmith_add_u32(max(34147u, global1.c.b.x), 0u), Struct_1(global1.c.a, global0.c.b), 240f), select(reverseBits(select(global1.c.b, global1.c.b, true)), ~(~(global0.c.b ^ vec3<u32>(1u, 4294967295u, global1.b))), !global0.c.a));
    var var_0 = 1394f;
    var var_1 = _wgslsmith_f_op_f32(ceil(global0.d));
    let var_2 = !vec4<bool>(true, all(select(select(vec2<bool>(global1.c.a, global0.c.a), vec2<bool>(global0.c.a, true), global1.c.a), vec2<bool>(true, global0.c.a), true)), all(!vec4<bool>(global0.c.a, global1.c.a, true, global0.c.a)) & any(select(vec4<bool>(global1.c.a, false, false, true), vec4<bool>(true, true, false, false), true)), func_2(global1.c, select(global1.a.yw, vec2<i32>(global1.a.x, global0.a.x) & vec2<i32>(-2147483647i, -15021i), select(vec2<bool>(global1.c.a, false), vec2<bool>(global0.c.a, global0.c.a), global1.c.a))).c.a);
    let var_3 = (min(1i, global0.a.x) & (0i ^ -countOneBits(global0.a.x))) >= ~global1.a.x;
    var_0 = 1564f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.d)), _wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global1.d)))))));
    global0 = Struct_2(vec4<i32>(firstLeadingBit(global0.a.x ^ 7118i), 1i, -40307i, global0.a.x << ((~global1.c.b.x >> (18426u % 32u)) % 32u)), ~u_input.a, func_2(func_1(_wgslsmith_mod_u32(select(0u, u_input.a, true), ~38194u), func_1(_wgslsmith_mod_u32(4294967295u, 46583u), func_2(Struct_1(true, global1.c.b), vec2<i32>(-7361i, 0i)), Struct_2(global1.a, global1.b, Struct_1(global1.c.a, vec3<u32>(1u, global1.c.b.x, 19611u)), global1.d), global0.c.b), func_1(1u, func_2(Struct_1(true, vec3<u32>(global0.b, u_input.a, 4294967295u)), vec2<i32>(global1.a.x, 1i)), Struct_2(vec4<i32>(-2678i, global0.a.x, -2147483647i, global0.a.x), u_input.a, Struct_1(false, global0.c.b), -1588f), vec3<u32>(4294967295u, u_input.a, 1u)), abs(abs(global1.c.b))).c, global1.a.zw).c, -1622f);
    let var_4 = 77418u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~global1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(769f, global1.d, global0.d), vec3<f32>(1067f, global1.d, 431f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(704f, -169f, global1.d)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(512f * 112f) * _wgslsmith_div_f32(global0.d, global0.d)), _wgslsmith_f_op_f32(exp2(global1.d)), global1.d)), func_2(Struct_1(any(vec2<bool>(global0.c.a, false)), global0.c.b), global1.a.xw).d, func_3(Struct_1(var_2.x, global1.c.b), global1.c, 2147483647i), vec2<i32>(firstLeadingBit(-2661i), -2147483647i));
}

