struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = 2023f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(810f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-443f - -754f) - -179f))) * _wgslsmith_f_op_f32(614f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(664f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(148f)), _wgslsmith_f_op_f32(618f * 958f))), arg_1.c.x))));
    return 28584i;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    global0 = Struct_2(global0.a, global0.b, !(!global0.c));
    global1 = -22301i ^ _wgslsmith_sub_i32(-13168i, _wgslsmith_sub_i32(u_input.c, 0i));
    global0 = Struct_2(Struct_1(arg_1.a | -vec2<i32>(-1i, global0.b.x), global0.b.x), -reverseBits(~(-vec4<i32>(u_input.b.x, arg_1.b, u_input.c, -31678i))), global0.c);
    let var_0 = func_3(vec2<bool>(true, true), Struct_2(global0.a, -vec4<i32>(u_input.b.x >> (4294967295u % 32u), -29855i << (0u % 32u), arg_1.b >> (u_input.d.x % 32u), reverseBits(arg_1.b)), global0.c), Struct_2(global0.a, -(global0.b ^ vec4<i32>(global0.b.x, u_input.b.x, 0i, u_input.b.x)) ^ ((global0.b ^ vec4<i32>(arg_1.a.x, -1i, -76257i, 2147483647i)) | vec4<i32>(arg_1.a.x, -71332i, 2147483647i, u_input.b.x)), global0.c));
    let var_1 = arg_1;
    return Struct_2(Struct_1(vec2<i32>(var_0, ~1i), -arg_1.b), ~max(-vec4<i32>(var_1.a.x, global0.a.b, -2147483647i, -14014i) ^ -global0.b, vec4<i32>(_wgslsmith_clamp_i32(arg_1.b, 1i, -1726i), var_0, _wgslsmith_clamp_i32(21071i, var_1.b, -27769i), var_0)), select(!select(global0.c, !vec4<bool>(arg_0.x, false, true, arg_0.x), true), vec4<bool>(arg_0.x, !all(vec4<bool>(false, arg_0.x, global0.c.x, false)), false, global0.c.x), arg_0.x));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_2 {
    global1 = -2147483647i;
    var var_0 = Struct_3(arg_0.a);
    let var_1 = var_0.a;
    var_0 = Struct_3(func_2(arg_0.a.c.zx, func_2(!func_2(vec2<bool>(arg_3.a.c.x, var_1.c.x), arg_3.a.a).c.xw, Struct_1(arg_3.a.b.zw, global0.a.b)).a));
    let var_2 = 2147483647i;
    return func_2(select(!select(select(vec2<bool>(var_1.c.x, false), vec2<bool>(var_1.c.x, var_1.c.x), true), vec2<bool>(false, false), select(global0.c.yz, var_1.c.wz, vec2<bool>(var_1.c.x, var_1.c.x))), arg_0.a.c.yx, !var_1.c.x), global0.a);
}

fn func_1() -> f32 {
    global0 = func_4(Struct_3(func_2(vec2<bool>(true, true), Struct_1(vec2<i32>(u_input.c, global0.a.a.x) >> (u_input.d % vec2<u32>(32u)), firstTrailingBit(0i)))), u_input.a.x, firstLeadingBit(~vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(22031u, 1u, 5193u, u_input.d.x), vec4<u32>(u_input.a.x, 1u, 42147u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.a), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 0u)))), Struct_3(Struct_2(Struct_1(firstLeadingBit(vec2<i32>(u_input.c, global0.b.x)), 20974i), max(max(vec4<i32>(-41095i, 13108i, 9822i, 0i), global0.b), vec4<i32>(u_input.c, global0.b.x, -41277i, global0.a.a.x)), global0.c)));
    global0 = func_4(Struct_3(func_4(Struct_3(func_4(Struct_3(Struct_2(global0.a, global0.b, vec4<bool>(false, global0.c.x, true, global0.c.x))), 36709u, vec4<u32>(125082u, u_input.d.x, u_input.a.x, u_input.d.x), Struct_3(Struct_2(Struct_1(u_input.b, global0.a.b), vec4<i32>(u_input.c, u_input.c, 39377i, 2147483647i), vec4<bool>(true, global0.c.x, false, global0.c.x))))), _wgslsmith_mult_u32(u_input.a.x ^ u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), ~(~vec4<u32>(u_input.a.x, 1u, u_input.d.x, 61367u)), Struct_3(Struct_2(Struct_1(global0.a.a, global0.a.a.x), global0.b, vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(2485u, u_input.a.x, 22610u, 20829u), vec4<u32>(u_input.a.x, u_input.d.x, u_input.a.x, u_input.d.x)), 1u, ~u_input.d.x, max(u_input.d.x, u_input.d.x)), vec4<u32>(u_input.a.x ^ u_input.d.x, 1u, ~u_input.a.x, ~u_input.a.x)), firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 4294967295u), u_input.d.x, ~(~67006u), min(u_input.a.x, 1u) << (32303u % 32u))), Struct_3(func_4(Struct_3(func_2(global0.c.xz, Struct_1(vec2<i32>(global0.b.x, global0.b.x), global0.b.x))), firstTrailingBit(32956u) | _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 0u)), max(vec4<u32>(4294967295u, u_input.d.x, u_input.a.x, u_input.a.x), ~vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.a.x)), Struct_3(Struct_2(Struct_1(global0.b.xx, u_input.b.x), vec4<i32>(global0.b.x, -26136i, -1i, u_input.c), global0.c)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-552f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1876f, 892f))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-849f, -117f)))), -348f, 1f));
    let var_1 = -2147483647i;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1499f)))), var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1503f));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-962f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) + _wgslsmith_f_op_f32(max(-1192f, -931f))))))));
    let var_1 = !vec2<bool>(any(vec4<bool>(global0.c.x, true, false, global0.c.x)) | global0.c.x, true);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(203f))))) - _wgslsmith_div_f32(-387f, _wgslsmith_f_op_f32(abs(-869f))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(691f - 236f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-239f + -493f))) - _wgslsmith_f_op_f32(-var_2)));
    let var_4 = any(select(global0.c.wwz, !select(!global0.c.zzw, func_2(global0.c.zw, Struct_1(u_input.b, u_input.c)).c.zyx, func_2(vec2<bool>(false, global0.c.x), global0.a).c.wxx), (false || select(false, var_1.x, false)) || true));
    let var_5 = -(vec2<i32>(-1i) * -countOneBits(-global0.a.a));
    global0 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(firstTrailingBit(max(var_5, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_5.x, global0.a.b), vec2<i32>(11634i, var_5.x))), 1i), func_4(Struct_3(Struct_2(Struct_1(u_input.b, u_input.b.x), vec4<i32>(25027i, 2147483647i, global0.b.x, 2147483647i), global0.c)), u_input.d.x, _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(27479u, 0u, 46681u, u_input.a.x), vec4<u32>(u_input.d.x, u_input.a.x, 0u, 46879u), vec4<u32>(92728u, u_input.d.x, 40972u, 64526u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 110211u, 1u)), Struct_3(func_2(vec2<bool>(true, true), global0.a))).b ^ select(select(firstTrailingBit(vec4<i32>(-50010i, 58377i, -2147483647i, u_input.c)), func_2(vec2<bool>(global0.c.x, var_1.x), Struct_1(u_input.b, var_5.x)).b, !global0.c), -vec4<i32>(1i, 2147483647i, var_5.x, u_input.c), global0.c), func_2(func_2(func_2(global0.c.xx, global0.a).c.zy, global0.a).c.yw, func_2(select(!vec2<bool>(var_1.x, var_1.x), !global0.c.yz, !global0.c.xw), global0.a).a).c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -firstLeadingBit(global0.b));
}

