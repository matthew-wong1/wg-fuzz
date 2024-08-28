struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<bool>, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3) -> u32 {
    return 7973u;
}

fn func_3() -> u32 {
    let var_0 = reverseBits(-((~vec3<i32>(2147483647i, global0.c, global0.c) & (vec3<i32>(-47861i, global0.c, global0.c) | vec3<i32>(-2147483647i, global0.c, global0.c))) & _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, global0.c, -1i)), ~vec3<i32>(-1i, -1i, global0.c))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, -120f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), abs(_wgslsmith_sub_vec2_i32(var_0.yx, -var_0.yy)));
    var var_3 = !(!(!(!any(vec2<bool>(false, false)))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(485f - -940f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(153f)), _wgslsmith_f_op_f32(round(2357f)), true)))), firstTrailingBit(max(~1i, _wgslsmith_div_i32(var_0.x, _wgslsmith_mod_i32(global0.c, var_2)))), firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~u_input.a.x, _wgslsmith_clamp_u32(global0.b, firstTrailingBit(54004u), ~0u))), u_input.a.x);
    return ~(~(abs(_wgslsmith_mult_u32(var_4.c.x, global0.b)) >> (countOneBits(var_4.c.x) % 32u)));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<u32>(~reverseBits(func_2(select(vec2<bool>(arg_1.d, true), vec2<bool>(false, arg_1.d), vec2<bool>(arg_0, false)), arg_1)), _wgslsmith_clamp_u32(u_input.a.x >> (1u % 32u), 31774u, ~(~u_input.a.x)));
    var var_1 = global1[_wgslsmith_index_u32(62286u, 19u)];
    return Struct_2(_wgslsmith_sub_u32(arg_1.c.c.x, _wgslsmith_mod_u32(global0.a & 4294967295u, ~0u)) ^ var_0.x, ~abs(func_3()), arg_1.a.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    global0 = func_1(arg_2.x, Struct_3(vec2<i32>(~(global0.c << (19862u % 32u)), ~(-global0.c)), abs(_wgslsmith_clamp_i32(arg_3, 47875i, max(-80999i, 1i))), Struct_1(338f, global0.c, arg_0, ~14294u), true), ~(~vec2<i32>(2147483647i, arg_1.c) | abs(~vec2<i32>(arg_1.c, -4984i))));
    var var_0 = arg_1.a;
    global1 = array<vec3<bool>, 19>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -282f) + 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) - 1099f)))), _wgslsmith_div_i32(~arg_3, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, abs(1i)), vec2<i32>(abs(-1i), abs(-46641i)))), vec3<u32>(~arg_0.x, _wgslsmith_mult_u32(global0.a, u_input.a.x), ~(~firstLeadingBit(arg_0.x))), firstTrailingBit(~(~3456u)));
    var var_2 = any(arg_2);
    return Struct_1(var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-10042i, 7511i, global0.c, -3987i) & firstTrailingBit(vec4<i32>(-69364i, -13848i, arg_3, global0.c)), vec4<i32>(func_1(arg_2.x, Struct_3(vec2<i32>(arg_1.c, var_1.b), arg_1.c, Struct_1(var_1.a, global0.c, vec3<u32>(30738u, var_1.c.x, 81136u), arg_0.x), arg_2.x), vec2<i32>(-5983i, arg_1.c)).c, countOneBits(1i), _wgslsmith_clamp_i32(827i, -6142i, 35369i), 2326i)) & -var_1.b, var_1.c, func_3());
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec2_u32(~(~u_input.a), arg_0.c.c.zx);
    let var_1 = Struct_3(_wgslsmith_clamp_vec2_i32(arg_0.a, ~max(firstTrailingBit(vec2<i32>(22162i, global0.c)), select(vec2<i32>(arg_0.b, arg_0.b), arg_0.a, arg_1.x)), select(-(arg_0.a ^ arg_0.a), abs(arg_0.a) >> (select(u_input.a, u_input.a, arg_1) % vec2<u32>(32u)), select(vec2<bool>(arg_1.x, false), arg_1, true))), _wgslsmith_mod_i32(-1i, -14589i), Struct_1(_wgslsmith_f_op_f32(ceil(arg_3.x)), global0.c, _wgslsmith_div_vec3_u32(arg_0.c.c, arg_0.c.c), global0.a), !(!any(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))));
    global0 = Struct_2(func_1(true, Struct_3(abs(~vec2<i32>(var_1.c.b, -10131i)), -64693i & arg_0.c.b, Struct_1(-2008f, abs(2147483647i), vec3<u32>(1u, u_input.a.x, 1u), 32053u), any(select(vec4<bool>(arg_1.x, arg_0.d, var_1.d, false), vec4<bool>(var_1.d, arg_1.x, arg_1.x, true), vec4<bool>(arg_0.d, false, arg_0.d, arg_0.d)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-22600i, var_1.c.b) ^ select(arg_0.a, var_1.a, arg_1), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -33846i), vec2<i32>(global0.c, -1i)), vec2<i32>(-1i, 18356i & arg_0.b))).b, firstLeadingBit(1u), -2147483647i);
    let var_2 = var_1.a.x;
    let var_3 = ~arg_0.c.c.zx;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 19>();
    let var_0 = true;
    var var_1 = func_5(Struct_3(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-37210i, global0.c) & vec2<i32>(global0.c, -2147483647i), firstTrailingBit(vec2<i32>(1i, global0.c)), ~vec2<i32>(global0.c, global0.c)), i32(-1i) * -49368i, func_4((vec3<u32>(global0.b, global0.b, u_input.a.x) | vec3<u32>(global0.b, 36980u, 115037u)) | max(vec3<u32>(4294967295u, 1u, global0.a), vec3<u32>(global0.b, 4294967295u, 1u)), func_1(true, Struct_3(vec2<i32>(51048i, 1i), global0.c, Struct_1(-1000f, 2147483647i, vec3<u32>(u_input.a.x, u_input.a.x, 1u), 34124u), var_0), vec2<i32>(-27797i, global0.c) << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))), select(vec4<bool>(var_0, var_0, true, true), !vec4<bool>(var_0, var_0, var_0, var_0), var_0), _wgslsmith_clamp_i32(abs(global0.c), min(global0.c, global0.c), -1i)), var_0), select(vec2<bool>(true, select(true, true, var_0)), !select(vec2<bool>(true, true), !vec2<bool>(var_0, true), vec2<bool>(var_0, true)), var_0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(184f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(704f - 644f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-694f, 870f)))))));
    global0 = func_1(false, func_5(Struct_3(firstLeadingBit(var_1.a), -_wgslsmith_mult_i32(1i, 12138i), Struct_1(func_5(Struct_3(vec2<i32>(-3697i, -32558i), 1i, Struct_1(-802f, var_1.b, var_1.c.c, 1u), var_0), vec2<bool>(false, false), -1093f, vec2<f32>(var_1.c.a, 1161f)).c.a, min(8302i, 42552i), var_1.c.c, _wgslsmith_mod_u32(var_1.c.d, var_1.c.c.x)), var_1.d), vec2<bool>(var_0, func_5(Struct_3(var_1.a, var_1.a.x, var_1.c, true), select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(false, true), vec2<bool>(false, var_1.d)), var_1.c.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(320f, 1000f), vec2<f32>(var_1.c.a, var_1.c.a), var_0))).d), _wgslsmith_f_op_f32(-var_1.c.a), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1220f)))), _wgslsmith_f_op_f32(2011f + -965f))), vec2<i32>(-(~_wgslsmith_mult_i32(-14438i, -13372i)), _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(var_1.c.b, global0.c)) | ~(-1057i)));
    var var_2 = func_1(var_1.d, Struct_3(var_1.a, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_1.a.x, 46210i, -19029i)), abs(vec3<i32>(0i, -12174i, 0i)) & vec3<i32>(80926i, var_1.a.x, var_1.b)), func_5(func_5(Struct_3(var_1.a, 0i, var_1.c, false), select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(false, false), vec2<bool>(false, var_1.d)), _wgslsmith_f_op_f32(min(var_1.c.a, var_1.c.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.a, var_1.c.a) + vec2<f32>(835f, -351f))), vec2<bool>(var_0, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -774f), var_1.c.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.a, -2055f), vec2<f32>(407f, var_1.c.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c.a, var_1.c.a), vec2<f32>(var_1.c.a, 613f), var_0))))).c, var_0), countOneBits(var_1.a));
    let var_3 = !select(select(vec4<bool>(func_5(Struct_3(var_1.a, var_1.b, Struct_1(var_1.c.a, global0.c, var_1.c.c, u_input.a.x), true), vec2<bool>(false, false), -1000f, vec2<f32>(-118f, var_1.c.a)).d, true, true, false), vec4<bool>(all(vec2<bool>(true, var_1.d)), func_5(Struct_3(var_1.a, -44985i, var_1.c, var_1.d), vec2<bool>(var_0, true), var_1.c.a, vec2<f32>(1592f, -277f)).d, all(global1[_wgslsmith_index_u32(var_1.c.c.x, 19u)]), var_1.d), true), vec4<bool>(true, _wgslsmith_f_op_f32(min(411f, -794f)) > _wgslsmith_f_op_f32(-var_1.c.a), true, var_1.d), any(select(select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, true, true, var_1.d), var_0), !vec4<bool>(var_1.d, var_0, true, var_0), true)));
    var var_4 = vec2<u32>(global0.a, var_1.c.c.x & (0u << (0u % 32u)));
    let var_5 = Struct_3(~(~vec2<i32>(var_1.a.x, var_2.c)), var_1.b, func_5(Struct_3(abs(_wgslsmith_div_vec2_i32(vec2<i32>(47063i, 52336i), var_1.a)), -func_1(true, Struct_3(vec2<i32>(global0.c, -22799i), -1i, var_1.c, false), var_1.a).c, var_1.c, select(all(vec3<bool>(var_1.d, false, var_3.x)), true, false & var_0)), var_3.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.c.a)) + _wgslsmith_f_op_f32(-var_1.c.a)) + var_1.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(634f, -583f) * vec2<f32>(742f, 2197f)))))).c, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec4<u32>(var_5.c.d, func_1(false, var_5, var_5.a).b, func_1(var_0, Struct_3(var_1.a, var_5.c.b, Struct_1(1890f, var_2.c, var_1.c.c, u_input.a.x), false), var_1.a).a, func_2(vec2<bool>(true, var_0), var_5))), 32077u, var_5.c.c.xz, 1u);
}

