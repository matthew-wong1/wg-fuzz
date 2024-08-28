struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<bool> {
    global0 = true;
    let var_0 = 34749u;
    let var_1 = Struct_1(global1.yz, u_input.a.yyz, ~0u, ~vec2<u32>(min(_wgslsmith_mult_u32(var_0, 89998u), ~0u), var_0));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f - -1603f), _wgslsmith_f_op_f32(trunc(145f)), -210f)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1702f)), _wgslsmith_f_op_f32(f32(-1f) * -1042f))), _wgslsmith_f_op_f32(ceil(1630f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2277f + -516f))), vec3<bool>(any(!global1.zx), true, global1.x))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(539f - 419f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1090f * -605f)), -1121f))));
    var var_3 = abs(min((_wgslsmith_mod_i32(u_input.b.x, 31750i) ^ 2147483647i) & 6277i, ~u_input.b.x));
    return var_1.a;
}

fn func_2() -> bool {
    global1 = vec3<bool>(all(select(vec4<bool>(all(vec2<bool>(global1.x, true)), u_input.a.x <= 1i, true, global1.x), vec4<bool>(u_input.c.x <= 50214u, true, global1.x, global1.x), all(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, true, global1.x))))), true, !any(vec4<bool>(global1.x, true, global1.x, global1.x)) == global1.x);
    let var_0 = func_3();
    global1 = !vec3<bool>(func_3().x, 36344u != (1u & select(1u, 46091u, false)), var_0.x);
    var var_1 = -7790i;
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-184f, -778f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-531f, 974f)))))))));
    return global1.x;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: f32) -> u32 {
    global1 = vec3<bool>(all(select(vec4<bool>(func_2(), true, 271f >= arg_0, true), vec4<bool>(true, true, any(vec4<bool>(global1.x, global1.x, false, global1.x)), arg_2 < arg_0), global1.x)), func_2(), global1.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-490f, arg_2), _wgslsmith_f_op_f32(step(arg_2, arg_2)), -562f)))));
    var var_1 = !select(func_3(), select(!global1.xy, vec2<bool>(true, true), !vec2<bool>(true, global1.x)), global1.x);
    var var_2 = _wgslsmith_add_vec2_u32(max(u_input.c.zy >> (~(~vec2<u32>(0u, u_input.d)) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(u_input.d, u_input.c.x)) | vec2<u32>(u_input.d, 1u)), vec2<u32>(u_input.d & u_input.c.x, _wgslsmith_div_u32(abs(37356u), ~countOneBits(4294967295u))));
    var var_3 = vec2<bool>(any(!(!(!vec4<bool>(var_1.x, false, var_1.x, var_1.x)))), any(!global1.yx));
    return reverseBits(_wgslsmith_dot_vec2_u32(select(~u_input.c.wy, ~vec2<u32>(4294967295u, u_input.c.x), !vec2<bool>(var_1.x, var_3.x)), abs(vec2<u32>(u_input.c.x, var_2.x))) >> (_wgslsmith_mod_u32(10901u, ~var_2.x) % 32u));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    global0 = arg_1.a.x;
    let var_0 = 17722i;
    var var_1 = false;
    let var_2 = arg_1.d.x;
    let var_3 = false;
    return Struct_1(vec2<bool>(any(arg_2.yxx), true), vec3<i32>(-_wgslsmith_mult_i32(0i, -41517i), 1i, firstTrailingBit(~(~9056i))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-611f - -1000f)), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -759f)), u_input.c.wx);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-529f))))) + -1969f);
    let var_1 = func_4(-26935i, arg_1, select(!select(!vec4<bool>(true, true, true, arg_1.a.x), vec4<bool>(false, false, true, true), select(arg_1.a.x, arg_1.a.x, true)), select(vec4<bool>(all(vec4<bool>(global1.x, arg_1.a.x, false, true)), true, true, any(vec4<bool>(arg_1.a.x, global1.x, arg_1.a.x, false))), vec4<bool>(true, true, true, true), true), func_3().x));
    var var_2 = firstLeadingBit(firstTrailingBit(u_input.c));
    var var_3 = ~50238u;
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(arg_2.xz));
    return !(!vec3<bool>(any(!vec4<bool>(var_1.a.x, true, arg_1.a.x, false)), true, arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = u_input.b.x;
    var var_1 = Struct_1(vec2<bool>(all(global1.xz), false), -(~vec3<i32>(min(var_0, 29930i), u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, var_0))), ~(~(~(~u_input.d))), u_input.c.yy);
    global1 = select(func_5(-max(abs(var_1.b.x), countOneBits(-2147483647i)), func_4(2147483647i, Struct_1(var_1.a, u_input.b, func_1(636f, 1i, 1000f), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 35723u), vec2<u32>(u_input.c.x, u_input.d), u_input.c.zz)), vec4<bool>(!var_1.a.x, true, func_2(), all(vec2<bool>(true, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -841f, -629f, -317f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1842f, 1237f, -254f, 2557f), vec4<f32>(-1000f, 523f, -1167f, 521f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1282f)) + 769f)), !vec3<bool>(-var_1.b.x >= (i32(-1i) * -55382i), any(select(vec4<bool>(false, false, global1.x, true), vec4<bool>(var_1.a.x, false, var_1.a.x, false), vec4<bool>(false, true, global1.x, true))), select(false, select(false, var_1.a.x, global1.x), var_1.a.x)), func_4(var_1.b.x, func_4(var_0, Struct_1(select(vec2<bool>(false, true), vec2<bool>(var_1.a.x, var_1.a.x), global1.yz), vec3<i32>(56346i, u_input.a.x, 0i) & var_1.b, 1u, var_1.d), select(vec4<bool>(true, global1.x, var_1.a.x, true), select(vec4<bool>(true, var_1.a.x, false, true), vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), vec4<bool>(global1.x, false, var_1.a.x, false)), select(vec4<bool>(global1.x, var_1.a.x, false, var_1.a.x), vec4<bool>(false, false, true, var_1.a.x), var_1.a.x))), vec4<bool>(true, true, global1.x | func_4(u_input.b.x, Struct_1(vec2<bool>(global1.x, var_1.a.x), vec3<i32>(5035i, 22435i, var_0), var_1.c, vec2<u32>(1u, 21209u)), vec4<bool>(global1.x, false, true, var_1.a.x)).a.x, global1.x)).a.x);
    let var_2 = Struct_1(vec2<bool>(!all(vec2<bool>(false, true)), func_2() && global1.x), var_1.b, reverseBits(_wgslsmith_sub_u32(countOneBits(var_1.c) >> (~var_1.c % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.d.x, var_1.d.x, u_input.c.x, 45584u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, var_1.c, 48587u, 0u), u_input.c)))), u_input.c.yz);
    let var_3 = func_4(-(~2147483647i) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(143996u, 4294967295u, var_2.d.x), ~vec3<u32>(494u, 4294967295u, var_1.c) >> ((vec3<u32>(1u, 24454u, var_1.d.x) << (vec3<u32>(var_2.c, var_1.c, var_2.c) % vec3<u32>(32u))) % vec3<u32>(32u))) % 32u), func_4(0i, var_2, vec4<bool>((false | var_1.a.x) || true, true, var_2.a.x, (var_1.b.x | var_0) >= reverseBits(var_0))), vec4<bool>(true, true, false, true));
    var_1 = func_4(min(7768i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.b.x, var_1.b.x ^ var_3.b.x), 2147483647i, var_3.b.x)), func_4(reverseBits(reverseBits(~0i)), func_4(firstLeadingBit(1i), Struct_1(vec2<bool>(true, true), ~vec3<i32>(var_2.b.x, var_0, u_input.b.x), var_3.d.x, vec2<u32>(var_2.c, var_2.c)), select(!vec4<bool>(false, var_3.a.x, global1.x, false), select(vec4<bool>(false, false, false, var_1.a.x), vec4<bool>(global1.x, global1.x, false, var_2.a.x), vec4<bool>(global1.x, false, true, global1.x)), select(vec4<bool>(var_3.a.x, false, var_1.a.x, var_2.a.x), vec4<bool>(true, false, true, var_2.a.x), true))), !vec4<bool>(u_input.a.x <= var_1.b.x, true, true, true)), vec4<bool>(false, all(vec2<bool>(true, u_input.b.x > 12585i)), !(!var_1.a.x) & (true | !var_1.a.x), var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1813f, -881f, -1587f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, 529f, -317f, -713f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1280f, -1003f, 1060f, 1107f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-963f, -994f, 468f, 712f) * vec4<f32>(1000f, -327f, -1105f, 1323f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-787f, 1318f, 1052f, 1000f))))), vec3<u32>(var_2.c, select(11040u, ~reverseBits(30431u), true), abs(var_1.c)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1786f), 1006f, -189f), firstTrailingBit(abs((u_input.c.wwy << (vec3<u32>(var_1.c, 17420u, var_1.d.x) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(u_input.c.zyx, u_input.c.wxy, u_input.c.xwz) % vec3<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-698f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-904f)))));
}

