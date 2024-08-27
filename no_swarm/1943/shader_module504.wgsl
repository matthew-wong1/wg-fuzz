struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, u_input.a), firstLeadingBit(59131u)))), vec3<u32>(16596u, ~_wgslsmith_add_u32(min(46699u, 15614u), ~u_input.a), u_input.a));
    var var_1 = Struct_1(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false), true), any(vec3<bool>(true, false, false))), 1u);
    var var_2 = Struct_5(var_1.a.x);
    let var_3 = var_2.a;
    let var_4 = !(!all(vec4<bool>(var_1.a.x, false, any(vec4<bool>(var_2.a, var_1.a.x, false, var_1.a.x)), !var_2.a)));
    return ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, 33812u), ~32104u), ~4294967295u);
}

fn func_2(arg_0: f32) -> Struct_5 {
    var var_0 = -max(~(vec3<i32>(1i, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(-14785i, 2147483647i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)))) & vec3<i32>(((i32(-1i) * -52520i) << (u_input.a % 32u)) << (abs(u_input.a) % 32u), reverseBits(-u_input.b.x << (~13232u % 32u)), 16769i);
    var_0 = countOneBits(vec3<i32>(var_0.x, ~u_input.b.x, var_0.x)) >> (~_wgslsmith_sub_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 4294967295u))), (vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, 54556u, u_input.a)) | vec3<u32>(13216u, 4294967295u, u_input.a)) % vec3<u32>(32u));
    var var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(46768u << (0u % 32u), u_input.a, 44452u >> (u_input.a % 32u), ~1u), (vec4<u32>(48884u, 1u, u_input.a, 4294967295u) | vec4<u32>(u_input.a, u_input.a, u_input.a, 99027u)) ^ vec4<u32>(1u, 1u, 556u, 0u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a << (17259u % 32u), 8558u, u_input.a, 0u), vec4<u32>(firstTrailingBit(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 38713u, u_input.a, 30485u), vec4<u32>(4294967295u, u_input.a, 12030u, 0u)), 20028u, max(u_input.a, 0u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.a, _wgslsmith_mod_u32(1u, u_input.a), ~57614u, func_3())), vec4<u32>(min(0u, 4294967295u), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 94882u, 1u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u)), 1u) & vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.a, u_input.a), ~0u, u_input.a, 4294967295u)));
    let var_2 = reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(~(~u_input.a), 4294967295u, ~u_input.a >> (0u % 32u)), ~select(firstLeadingBit(var_1.yzx), abs(vec3<u32>(1u, var_1.x, var_1.x)), vec3<bool>(true, true, true))));
    let var_3 = vec2<u32>(1u, ~func_3()) >> (var_1.yy % vec2<u32>(32u));
    return Struct_5(true);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2.zx | arg_2.xy, ~vec2<u32>(46102u, arg_2.x)), vec2<u32>(abs(max(u_input.a, 3111u)) >> (reverseBits(select(u_input.a, arg_2.x, false)) % 32u), u_input.a));
    let var_1 = ~4294967295u;
    var var_2 = Struct_5(true);
    var var_3 = func_2(2269f);
    let var_4 = -1i;
    return Struct_1(select(vec3<bool>(false, !all(vec4<bool>(true, false, true, arg_0)), true), vec3<bool>(true, var_3.a, false), false || !select(var_2.a, var_3.a, arg_0)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!(~u_input.a > ~0u)), -1i, _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(23165u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u))), ~vec3<u32>(20432u, 4294967295u, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a, 4294967295u), ~0u, ~u_input.a), vec3<u32>(_wgslsmith_add_u32(u_input.a, 1u), _wgslsmith_add_u32(10218u, 58543u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(4487u, 1u, 67843u)))), countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(984u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)))));
    let var_1 = Struct_4(Struct_2(-u_input.b.x, u_input.a, _wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-17155i, u_input.b.x, 0i, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -8046i), vec4<i32>(u_input.b.x, 27352i, -2147483647i, u_input.b.x)))), false, 38568i), firstTrailingBit(reverseBits(vec4<i32>(u_input.b.x, select(2147483647i, 0i, true), 2147483647i, 1i))));
    var var_2 = 7784i;
    var_2 = var_1.b.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1302f, 1067f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-323f, 319f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1188f, -724f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(915f, -1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(732f, -1777f), vec2<f32>(-127f, 1000f))))))))));
    let var_4 = -reverseBits(var_1.a.c.wx);
    var var_5 = Struct_3(var_0, var_0.a.x, Struct_2(~(var_1.a.e >> (55184u % 32u)), _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(~1u, var_1.a.b)), -var_1.b, var_0.a.x | all(select(vec2<bool>(false, true), var_0.a.yy, false)), var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.x, 2056f, -947f)))), -reverseBits(reverseBits(vec4<i32>(2147483647i, -9651i, var_5.c.a, 8765i))), -1699f, vec3<u32>(_wgslsmith_mod_u32(~u_input.a, ~countOneBits(var_0.b)), 1u << (_wgslsmith_add_u32(abs(var_0.b), u_input.a) % 32u), select(9797u, var_1.a.b, true)));
}

