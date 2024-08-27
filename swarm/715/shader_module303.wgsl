struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_3,
    d: Struct_3,
    e: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4) -> bool {
    let var_0 = -(~arg_1.a);
    let var_1 = max(vec3<u32>(~_wgslsmith_sub_u32(0u, arg_1.b.e), ~(~(~arg_2.c.e.x)), abs(arg_1.c.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_2.d.e.x, 17715u), 1u, firstLeadingBit(1u)) ^ ~max(vec3<u32>(64595u, arg_2.d.e.x, 0u), vec3<u32>(92951u, arg_2.d.b.c, arg_2.d.e.x)), vec3<u32>(~arg_2.c.e.x, ~0u, 4294967295u) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(40724u, 1u, arg_2.c.b.c), vec3<u32>(1u, arg_1.c.e, arg_1.b.e) | vec3<u32>(75809u, 1u, 4294967295u), min(vec3<u32>(36806u, 0u, arg_2.c.b.e), vec3<u32>(42377u, 4294967295u, 43308u))) % vec3<u32>(32u))));
    var var_2 = arg_1.b.d.x;
    var var_3 = vec4<i32>(countOneBits(-countOneBits(_wgslsmith_mod_i32(2147483647i, arg_2.b.x))), -7677i, ~(-countOneBits(firstTrailingBit(2147483647i))), ~(~u_input.a));
    let var_4 = arg_2.e.x;
    return !all(select(arg_2.c.d, arg_1.e.a.xx, arg_1.e.a.xx));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_1(vec4<bool>(all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), func_3(false, Struct_2(vec3<i32>(u_input.b, u_input.a, u_input.a), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), 1u, vec4<f32>(-632f, 2979f, 871f, 1626f), 4294967295u), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), arg_0.x, vec4<f32>(-243f, 803f, 2706f, -335f), arg_0.x), -3104i, Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), 0u, vec4<f32>(-788f, -1038f, -399f, 518f), arg_0.x)), Struct_4(true, vec2<i32>(-10422i, u_input.b), Struct_3(vec2<i32>(u_input.b, -2147483647i), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), arg_0.x, vec4<f32>(-801f, 1423f, 340f, -129f), arg_0.x), u_input.b, vec2<bool>(true, false), arg_0.xz), Struct_3(vec2<i32>(-10947i, u_input.a), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), arg_0.x, vec4<f32>(758f, 556f, 160f, -802f), arg_0.x), -2147483647i, vec2<bool>(true, false), vec2<u32>(arg_0.x, 0u)), vec2<f32>(394f, -848f))))), any(vec3<bool>(true, true, true)), true, 0i < u_input.a), !(!vec4<bool>(true, select(false, false, false), true, true)), ~arg_0.x, vec4<f32>(_wgslsmith_div_f32(-1294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(503f, 545f)) + 100f)), -907f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-551f))))), _wgslsmith_dot_vec4_u32(arg_0, arg_0));
    let var_1 = ~var_0.e >> (select(~arg_0.x, ~(~arg_0.x), var_0.a.x) % 32u);
    var var_2 = Struct_4(any(!(!var_0.b.wz)), -select(abs(vec2<i32>(u_input.b, u_input.b)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(9996i, 31802i)), var_0.a.xy) >> (select(~arg_0.xx, arg_0.zx, vec2<bool>(true, var_0.a.x)) % vec2<u32>(32u)), Struct_3(~vec2<i32>(countOneBits(2147483647i), 1i), Struct_1(!var_0.a, var_0.b, 12629u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.d))), var_1), ~(_wgslsmith_div_i32(44675i, u_input.b) & (u_input.a ^ 72424i)), select(!(!vec2<bool>(var_0.a.x, var_0.a.x)), !select(var_0.a.wy, var_0.b.xz, var_0.a.zz), true), ~countOneBits(~vec2<u32>(0u, arg_0.x))), Struct_3(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, 2147483647i), vec4<i32>(42158i, u_input.b, 34684i, u_input.a)) << (59757u % 32u), -161i), var_0, ~abs(_wgslsmith_sub_i32(2447i, u_input.b)), !select(var_0.b.yw, vec2<bool>(false, var_0.a.x), false), vec2<u32>(86189u << (_wgslsmith_dot_vec3_u32(arg_0.wxx, arg_0.wxw) % 32u), var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_0.d.x)));
    let var_3 = Struct_4(!select(var_0.a.x, var_0.b.x, true), firstTrailingBit(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(0i, 1i)), vec2<i32>(~(-1i), max(var_2.d.a.x, 1i)))), Struct_3(vec2<i32>(0i, abs(abs(u_input.a))), var_0, 0i, var_2.d.b.b.xx, ~max(vec2<u32>(2060u, var_1), _wgslsmith_add_vec2_u32(var_2.d.e, var_2.c.e))), var_2.d, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_2.d.b.d.ww, var_2.c.b.d.yy), _wgslsmith_f_op_vec2_f32(min(var_2.e, var_2.d.b.d.yz)), vec2<bool>(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-959f, -1694f), var_2.d.b.d.zz, var_2.d.d.x)) + var_0.d.xw), var_0.b.wx)))));
    var var_4 = ~0i;
    return Struct_2(~(~select(vec3<i32>(-2554i, 2147483647i, 1i) >> (vec3<u32>(var_3.d.e.x, var_1, 35772u) % vec3<u32>(32u)), vec3<i32>(-24794i, var_2.c.a.x, -31440i) >> (vec3<u32>(var_3.d.e.x, 12910u, var_0.e) % vec3<u32>(32u)), all(vec4<bool>(false, false, var_3.d.b.a.x, var_3.a)))), var_3.d.b, var_0, -2147483647i, var_3.d.b);
}

fn func_1() -> vec3<f32> {
    let var_0 = !(!vec4<bool>(true, true, select(true, true, true), true));
    let var_1 = func_2(vec4<u32>(90426u, select(_wgslsmith_mod_u32(24645u, 4393u), ~29514u, var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(10031u, 1u, 0u), vec3<u32>(143697u, 4294967295u, 1u)) ^ ~1u, ~1u) << (min(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 30454u, 24013u), vec3<u32>(0u, 544u, 25895u)), 33196u, ~77117u, 0u), countOneBits(~vec4<u32>(4294967295u, 65378u, 14792u, 2246u))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(sign(var_1.c.d.wyx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(30482u, 0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_1());
    var var_2 = _wgslsmith_div_u32((_wgslsmith_dot_vec2_u32(var_0 << (var_0 % vec2<u32>(32u)), vec2<u32>(1u, 4294967295u)) | var_0.x) << (((~11881u >> (countOneBits(0u) % 32u)) | var_0.x) % 32u), var_0.x);
    var var_3 = ~22396i;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_1()).xx - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 533f), var_1.yz)) + _wgslsmith_f_op_vec2_f32(-var_1.xy))));
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -973f, -430f, 1282f)))))) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + 701f), var_1.x)), _wgslsmith_div_f32(-134f, var_1.x), var_4.x, _wgslsmith_f_op_f32(floor(var_1.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - -447f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1220f)))), var_4.x, _wgslsmith_f_op_f32(-var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(min(u_input.a, i32(-1i) * -2147483647i), u_input.a, -u_input.a), ~(~vec3<i32>(0i, -1i, u_input.b))), -u_input.b, ~vec3<u32>(var_0.x, func_2(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, 34450u), vec4<u32>(var_0.x, 0u, 0u, 45021u))).c.e, 0u), var_5.zzy, 1119u);
}

