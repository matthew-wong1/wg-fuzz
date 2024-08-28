struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(-34003i, -33722i, 17642i, -7429i, 1i, -10653i, 0i, -38195i, 1i, 1i, 35222i, i32(-2147483648), -3076i, i32(-2147483648), 2147483647i, 0i, i32(-2147483648), -1i, 0i, -1i, -1i, -1i, -1i, 15322i, 1i, 16737i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = Struct_1(firstLeadingBit(u_input.a.zw) << (arg_1.yz % vec2<u32>(32u)));
    let var_1 = max(-countOneBits(_wgslsmith_sub_i32(var_0.a.x, u_input.a.x)) | _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(~u_input.a.x, ~var_0.a.x)), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.yy), var_0.a), ~(-1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 26u)], var_0.a.x, var_0.a.x, -15269i), ~u_input.a)));
    var var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_sub_vec2_i32(u_input.a.xw, min(reverseBits(vec2<i32>(-8211i, var_2.a.x) & vec2<i32>(global0[_wgslsmith_index_u32(0u, 26u)], 10972i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(4154i, var_1), ~vec2<i32>(4863i, 1i), var_0.a))));
    let var_4 = 1000f;
    return vec3<u32>(~(~countOneBits(4294967295u << (arg_1.x % 32u))), ~1u, ~(1u | arg_1.x));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<i32, 26>();
    var var_0 = ~(-select(_wgslsmith_mod_vec3_i32(u_input.a.zwy, vec3<i32>(1i, arg_1.x, u_input.a.x)), u_input.a.xzy, vec3<bool>(true, true, true)));
    var var_1 = false;
    var_0 = (vec3<i32>(-firstTrailingBit(arg_1.x), 1i, 0i) & -vec3<i32>(arg_1.x | var_0.x, arg_2.a.x, u_input.a.x)) >> ((select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(15124u, 40491u, 4294967295u), func_3(false, vec3<u32>(1u, 11931u, 22577u)), vec3<u32>(28266u, 1u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 32441u, 35461u), vec3<u32>(4294967295u, 4294967295u, 46964u), vec3<u32>(1u, 33006u, 0u)) & vec3<u32>(1u, 1u, 1u), any(vec2<bool>(true, true))) | vec3<u32>(~min(1u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(84551u, 17259u), vec2<u32>(22754u, 34758u)) >> (abs(155591u) % 32u), ~(~16865u))) % vec3<u32>(32u));
    let var_2 = ~arg_1.xx;
    return vec4<bool>(true, true, any(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), true)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), true))));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(~vec2<i32>(-(-2147483647i << (0u % 32u)), u_input.a.x));
    let var_1 = !all(select(arg_0.wz, arg_0.xy, !vec2<bool>(arg_0.x, false)));
    var var_2 = var_0;
    var var_3 = -37230i;
    var_3 = select(i32(-1i) * -24446i, 3973i, any(!vec3<bool>(any(vec2<bool>(var_1, true)), any(arg_0.wxy), true)));
    return Struct_1(-(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, var_2.a.x), ~0i) << (~firstLeadingBit(vec2<u32>(1u, 36131u)) % vec2<u32>(32u))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = func_4(!(!(!func_2(1000f, u_input.a.xwx, Struct_1(vec2<i32>(1i, global0[_wgslsmith_index_u32(arg_3.x, 26u)]))))));
    let var_2 = Struct_1(func_4(func_2(-280f, vec3<i32>(-46810i, global0[_wgslsmith_index_u32(1u, 26u)], -1i), func_4(vec4<bool>(arg_2, false, arg_2, false)))).a | ~vec2<i32>(global0[_wgslsmith_index_u32(arg_3.x >> (1u % 32u), 26u)], global0[_wgslsmith_index_u32(~arg_3.x, 26u)]));
    var var_3 = var_1;
    let var_4 = ~arg_3.x;
    return var_1;
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(firstTrailingBit(13282u)) & 0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(54828u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(11405u, 1u), vec2<u32>(10681u, 4294967295u), vec2<u32>(78905u, 1u))), 37901u)), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(abs(1u), ~20144u), ~1u), ~min(1u, max(0u, 0u))), func_3(any(func_2(_wgslsmith_f_op_f32(step(-1000f, 1780f)), vec3<i32>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(13339u, 26u)], arg_0.a.x), arg_0).yz), ~vec3<u32>(~38278u, 1u, abs(4294967295u))).x);
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, -469f, -683f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1525f)) - _wgslsmith_f_op_f32(-196f - -483f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1167f), 1f))), Struct_1(countOneBits(vec2<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_0.x, 26u)], 2147483647i), _wgslsmith_mult_i32(-28219i, -13500i)))), false, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(68751u, var_0.x, 112342u), firstLeadingBit(0u), 1u), vec3<u32>(var_0.x, 1u, ~var_0.x)), ~vec3<u32>(var_0.x << (4294967295u % 32u), 1u, ~1u)));
    var_0 = ~(abs(~select(vec3<u32>(var_0.x, 66091u, var_0.x), vec3<u32>(0u, 7057u, var_0.x), true)) >> (countOneBits(vec3<u32>(_wgslsmith_sub_u32(var_0.x, var_0.x), ~var_0.x, _wgslsmith_div_u32(55318u, 15876u))) % vec3<u32>(32u)));
    var var_2 = arg_0;
    return select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), true)), !func_2(1322f, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], arg_0.a.x, 2147483647i) | vec3<i32>(1i, -31471i, var_2.a.x), Struct_1(func_1(vec3<f32>(415f, -830f, 301f), Struct_1(var_1.a), false, vec3<u32>(var_0.x, 1u, var_0.x)).a)).zzw, true & !func_2(2231f, ~u_input.a.xww, func_4(vec4<bool>(true, true, false, false))).x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    var var_0 = true && all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), func_5(func_1(vec3<f32>(813f, 1039f, 1391f), Struct_1(u_input.a.zz), false, vec3<u32>(70787u, 41836u, 7389u))), all(vec4<bool>(false, true, false, false))));
    let var_1 = ~reverseBits(countOneBits(vec3<u32>(61308u, 4294967295u, 1u)));
    var_0 = !func_5(Struct_1(min(-u_input.a.yy, vec2<i32>(-18482i, 0i) & u_input.a.zx))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-211f + _wgslsmith_f_op_f32(max(249f, -1255f))))), vec3<u32>(99733u, ~var_1.x, var_1.x), var_1.x);
}

