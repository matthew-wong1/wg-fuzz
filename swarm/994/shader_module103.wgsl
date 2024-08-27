struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 31>;

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec3<i32> {
    var var_0 = true & arg_3.x;
    var var_1 = Struct_2(vec2<i32>(~firstTrailingBit(24435i), 1i) >> (_wgslsmith_add_vec2_u32(select(~vec2<u32>(25814u, 1u), abs(vec2<u32>(4294967295u, 6763u)), vec2<bool>(arg_3.x, true)), ~(~vec2<u32>(21213u, 4294967295u))) % vec2<u32>(32u)), -abs(arg_1.a.x), ~(~firstTrailingBit(1u)));
    var_1 = Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.wx, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, arg_2.x), vec2<i32>(-1i, -2147483647i), var_1.a), _wgslsmith_div_vec2_i32(vec2<i32>(-5583i, u_input.b), vec2<i32>(var_1.a.x, -15769i)))), -min(vec2<i32>(arg_1.a.x, global2.a.x), vec2<i32>(-9318i, global2.a.x)) << (vec2<u32>(var_1.c, 4294967295u) % vec2<u32>(32u))), arg_0.x, 1u);
    var var_2 = global1[_wgslsmith_index_u32(~1u, 31u)];
    var var_3 = Struct_3(Struct_2(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(13854i, u_input.c), vec2<i32>(arg_2.x, 23360i)), global2.a.x), _wgslsmith_dot_vec3_i32(arg_1.a >> (vec3<u32>(26002u, 105148u, var_1.c) % vec3<u32>(32u)), vec3<i32>(2147483647i, arg_1.a.x, 0i))), 54233i, ~0u), Struct_2(max(~arg_2.ww, arg_0), 2147483647i, var_1.c));
    return firstLeadingBit(abs(vec3<i32>(var_3.a.b, countOneBits(-14327i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-29633i, u_input.b, -62292i), vec3<i32>(var_1.a.x, -29158i, arg_1.a.x)))));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(~(global2.a.x | 0i), 1i), arg_0.a.x, arg_1));
    let var_1 = 0i;
    global0 = any(vec4<bool>(!select(any(vec3<bool>(false, false, false)), false, false), !select(all(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, false, true)), true), !any(vec4<bool>(false, true, false, true)), !any(vec2<bool>(true, true))));
    global2 = Struct_1(func_3(vec2<i32>(-(u_input.b ^ global2.a.x), u_input.c), var_0, vec4<i32>(global2.a.x, 2147483647i, -2147483647i, ~1i), vec4<bool>(false, false, true, all(vec4<bool>(true, true, true, true)))));
    var var_2 = max(max(~(~countOneBits(vec4<u32>(3080u, 96065u, 4294967295u, 133306u))), abs(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, arg_0.c, arg_0.c, arg_0.c)), ~vec4<u32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c)))), _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(50448u, arg_0.c, arg_0.c, arg_0.c), vec4<u32>(arg_0.c, 1u, arg_0.c, arg_0.c)), select(vec4<u32>(0u, 4294967295u, arg_0.c, 6535u), vec4<u32>(arg_0.c, 0u, arg_0.c, 13109u), false), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), vec4<u32>(23808u, arg_0.c, arg_0.c, arg_0.c)))), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, 24166u, 54484u), vec4<u32>(43710u, arg_0.c, 10558u, arg_0.c))), ~((vec4<u32>(1u, arg_0.c, arg_0.c, arg_0.c) >> (vec4<u32>(4294967295u, 39469u, 0u, arg_0.c) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, 1255u, arg_0.c), vec4<u32>(arg_0.c, arg_0.c, 18941u, arg_0.c)))));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(~(-max(vec4<i32>(arg_0.a.x, arg_0.a.x, -29710i, global2.a.x), vec4<i32>(arg_0.b, arg_0.a.x, 57188i, arg_0.b))), -(~(vec4<i32>(u_input.c, global2.a.x, 1i, -2147483647i) ^ vec4<i32>(-20433i, u_input.b, u_input.c, 3878i)))), -1i, min(-64447i << (~arg_0.c % 32u), 2147483647i), ~u_input.c);
    let var_1 = select(vec4<u32>(1u, min(~arg_0.c, 0u), 1u, ~(~21348u)), vec4<u32>(arg_0.c, _wgslsmith_mod_u32(~(~4294967295u), abs(select(arg_0.c, arg_0.c, true))), 1u, ~(4294967295u << (arg_0.c % 32u))), false);
    var var_2 = select(global2.a.xy, global2.a.xz, !(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), 28184u < var_1.x)));
    global0 = false;
    var var_3 = ~(~var_1.yyw | min(var_1.www, ~vec3<u32>(4294967295u, 0u, 52119u)));
    return Struct_1(~vec3<i32>(-13130i, abs(~global2.a.x), -firstLeadingBit(0i)));
}

fn func_1() -> i32 {
    var var_0 = select(vec2<bool>(true, !(!any(vec2<bool>(true, true)))), select(!vec2<bool>(false, any(vec2<bool>(false, false))), vec2<bool>(true, true), vec2<bool>(!select(false, false, true), true)), true);
    let var_1 = func_4(func_2(Struct_2(min(global2.a.zx, ~vec2<i32>(global2.a.x, u_input.c)), -2147483647i, 4294967295u), ~min(-global2.a.x, u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-749f, -1000f, false)) * _wgslsmith_f_op_f32(-759f + 1297f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1984f) - -117f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-825f * -346f)) + _wgslsmith_f_op_f32(abs(269f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-921f, -416f, var_0.x)))))));
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, i32(-1i) * -_wgslsmith_clamp_i32(u_input.b, -33006i, -81944i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-14074i, abs(0i), global2.a.x), -func_3(vec2<i32>(u_input.a, var_1.a.x), Struct_1(vec3<i32>(global2.a.x, 32640i, u_input.b)), vec4<i32>(global2.a.x, 29009i, var_1.a.x, 2147483647i), vec4<bool>(var_0.x, var_0.x, false, true)).x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, 23326i, 8070i) | global2.a, firstTrailingBit(vec3<i32>(-63631i, 64163i, u_input.b))) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 20818u), vec3<u32>(1u, 13160u, 1u)), ~29591u) % 32u)), ~(~min(reverseBits(vec4<i32>(1i, var_1.a.x, 23066i, global2.a.x)), vec4<i32>(23305i, -21385i, -12378i, 0i))));
    let var_3 = var_1.a;
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -816f);
    return 0i << (min(max(0u, ~4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(33394u, 77361u), vec2<u32>(1u, 103528u)) % 32u)), 1u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 31>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -171f);
    let var_1 = vec4<i32>(func_1(), global2.a.x, max(global2.a.x, global2.a.x) & ((~(-2147483647i) >> (1u % 32u)) | ~(-u_input.a)), global2.a.x);
    var_0 = -1046f;
    var var_2 = 24248u;
    let x = u_input.a;
    s_output = StorageBuffer(-1369f, select(1u, 1u, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, 776f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2344f, -761f, -278f) + vec3<f32>(233f, -817f, -598f))), false)) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -265f, -513f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1714f, -1220f, -1318f) + vec3<f32>(-416f, 117f, -451f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1302f, -831f, -971f)))))));
}

