struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = 1458f;
    let var_1 = _wgslsmith_f_op_f32(ceil(var_0));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(136f - var_1), 410f, var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(296f + _wgslsmith_f_op_f32(f32(-1f) * -596f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -176f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-241f)))))));
    var var_3 = Struct_1(~_wgslsmith_add_i32(arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, arg_2.x, arg_0.x), -vec4<i32>(arg_2.x, -18098i, arg_0.x, arg_2.x))), vec3<bool>(any(select(vec2<bool>(true, true), select(arg_3, arg_3, false), false)), any(vec4<bool>(arg_3.x, arg_3.x, false, true)) || false, all(vec3<bool>(true, true, true))));
    let var_4 = ~arg_0.x | -abs(abs(~arg_0.x));
    return Struct_1(arg_0.x, var_3.b);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec2<bool>) -> bool {
    global0 = u_input.d;
    global0 = -2796i;
    var var_0 = select(u_input.e.xx, _wgslsmith_clamp_vec2_u32(~(~(~u_input.a.wy)), vec2<u32>(~(~arg_0.a), arg_0.a), u_input.c), false);
    var var_1 = Struct_1(_wgslsmith_div_i32(select(abs(27435i), 0i, 1u > ~arg_0.a), arg_1 ^ func_1(vec3<i32>(arg_1, 13227i, 2147483647i), _wgslsmith_f_op_f32(514f * -1000f), vec3<i32>(arg_1, arg_1, arg_1), func_1(vec3<i32>(arg_1, 56278i, arg_1), -1752f, vec3<i32>(15727i, 55194i, arg_1), vec2<bool>(false, arg_2.x)).b.yx).a), vec3<bool>(arg_2.x, (any(vec4<bool>(false, false, true, arg_2.x)) & arg_2.x) | (arg_2.x | any(vec4<bool>(true, false, arg_2.x, arg_2.x))), true));
    var_0 = firstTrailingBit(_wgslsmith_sub_vec2_u32(reverseBits(~vec2<u32>(arg_0.a, 1u) ^ vec2<u32>(69073u, u_input.c.x)), _wgslsmith_sub_vec2_u32(u_input.c, select(vec2<u32>(10339u, arg_0.a) ^ u_input.e.xy, min(u_input.c, u_input.c), func_1(vec3<i32>(-2147483647i, -52060i, -1i), -1146f, vec3<i32>(var_1.a, -9979i, -4136i), vec2<bool>(true, arg_2.x)).b.zy))));
    return ((all(select(vec4<bool>(var_1.b.x, false, arg_2.x, true), vec4<bool>(true, arg_2.x, true, false), arg_2.x)) & all(var_1.b)) && !any(vec4<bool>(false, var_1.b.x, true, var_1.b.x))) && !(!arg_2.x);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = u_input.d;
    let var_1 = ((select(min(vec4<i32>(var_0, -2147483647i, var_0, -1i), vec4<i32>(19440i, var_0, u_input.d, u_input.b)), reverseBits(vec4<i32>(2147483647i, 2147483647i, u_input.d, var_0)), !arg_1) | ~abs(vec4<i32>(2147483647i, u_input.d, var_0, var_0))) << (u_input.a % vec4<u32>(32u))) << (~(u_input.e >> (u_input.e % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = max(-1i, 1i);
    let var_2 = arg_1;
    var var_3 = !select(!vec2<bool>(select(var_2, var_2, true), false), vec2<bool>(true, true), select(_wgslsmith_add_i32(u_input.b, var_0) <= ~1i, true, any(select(vec4<bool>(var_2, false, false, true), vec4<bool>(arg_1, arg_1, var_2, false), var_2))));
    return func_1(vec3<i32>(11919i, -countOneBits(7860i), var_1.x), _wgslsmith_f_op_f32(arg_0 - arg_0), var_1.zyx, vec2<bool>(any(!(!vec3<bool>(var_2, false, arg_1))), !(select(false, var_2, true) | false)));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_1 = vec3<bool>(true, true, all(func_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b, 1i, u_input.d), vec3<i32>(2147483647i, 13618i, u_input.d), _wgslsmith_sub_vec3_i32(vec3<i32>(-79615i, u_input.d, -57913i), vec3<i32>(1i, u_input.d, u_input.d))), var_0.x, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-4752i, u_input.b), vec2<i32>(15662i, u_input.b)), u_input.b, firstTrailingBit(u_input.d)), vec2<bool>(true, true)).b.yx));
    let var_2 = func_4(_wgslsmith_f_op_f32(round(var_0.x)), true & func_3(Struct_4(u_input.a.x), u_input.b, vec2<bool>(!var_1.x, var_1.x)), 8142u);
    var var_3 = !var_2.b;
    var_3 = select(func_4(-792f, true, min(~1u & (4294967295u ^ u_input.e.x), 0u & (u_input.c.x >> (9773u % 32u)))).b, !func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1615f)), true, ~u_input.e.x).b, vec3<bool>(any(vec3<bool>(false, any(vec4<bool>(var_3.x, var_1.x, false, false)), true)), !any(vec4<bool>(var_3.x, var_3.x, true, true)) != true, any(var_1.xy)));
    return Struct_4(min(~_wgslsmith_sub_u32(~u_input.c.x, u_input.e.x), u_input.e.x));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_5, arg_3: vec3<u32>) -> StorageBuffer {
    global0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(max(-46099i, arg_2.a.a)), 10249i << (u_input.c.x % 32u), 70815i, -1i), vec4<i32>(2147483647i, ~1i, firstLeadingBit(i32(-1i) * -31291i), u_input.b)), -min(~(vec4<i32>(14997i, -62490i, -15829i, 32974i) | vec4<i32>(13798i, arg_0, arg_0, arg_0)), vec4<i32>(13258i, ~39001i, arg_2.a.a, 1i)));
    return StorageBuffer(vec2<f32>(-356f, arg_1), arg_2.b.a, abs(-(~vec4<i32>(u_input.d, arg_2.a.a, arg_2.a.a, arg_0) & vec4<i32>(arg_0, u_input.d, -2147483647i, u_input.d))), firstLeadingBit(~(-vec3<i32>(arg_2.a.a, arg_2.a.a, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(1i, u_input.b) & u_input.b), 1i), 1051f, Struct_5(func_1(firstLeadingBit(~vec3<i32>(u_input.d, u_input.d, -55256i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(157f, 1406f, false)))), reverseBits(-vec3<i32>(0i, 2147483647i, u_input.d)), vec2<bool>(any(vec3<bool>(true, false, true)), any(vec2<bool>(true, false)))), func_2()), _wgslsmith_sub_vec3_u32(select(vec3<u32>(4086u, u_input.a.x & 60680u, reverseBits(1u)), min(~vec3<u32>(u_input.a.x, 1u, 4294967295u), ~u_input.e.wyw), true), ~((vec3<u32>(u_input.a.x, 14244u, u_input.e.x) >> (vec3<u32>(u_input.e.x, 4294967295u, u_input.c.x) % vec3<u32>(32u))) | vec3<u32>(0u, 1u, u_input.c.x))));
}

