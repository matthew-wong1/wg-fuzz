struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<i32>(29768i, -25938i, 34118i, -21161i)), Struct_1(vec4<i32>(0i, 16703i, -14072i, 2147483647i)), Struct_1(vec4<i32>(9032i, i32(-2147483648), 5375i, i32(-2147483648))), Struct_1(vec4<i32>(-2597i, -33888i, 12361i, -52366i)), Struct_1(vec4<i32>(-1i, 1i, -33738i, 14103i)), Struct_1(vec4<i32>(1i, i32(-2147483648), 5696i, i32(-2147483648))), Struct_1(vec4<i32>(0i, 2147483647i, 0i, -1i)), Struct_1(vec4<i32>(i32(-2147483648), -7262i, -2160i, 2147483647i)), Struct_1(vec4<i32>(0i, -1i, 2147483647i, 22418i)), Struct_1(vec4<i32>(48346i, -2802i, 2147483647i, 51125i)), Struct_1(vec4<i32>(1i, 24060i, -1i, 13738i)), Struct_1(vec4<i32>(-47841i, i32(-2147483648), -1i, 0i)), Struct_1(vec4<i32>(21298i, 2147483647i, -16510i, -1i)), Struct_1(vec4<i32>(-21982i, i32(-2147483648), -9904i, 1635i)), Struct_1(vec4<i32>(-41747i, 1i, 2147483647i, -1i)), Struct_1(vec4<i32>(2147483647i, -84148i, -1i, -8586i)), Struct_1(vec4<i32>(0i, 2147483647i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(0i, 1i, 1i, -1i)), Struct_1(vec4<i32>(-55258i, i32(-2147483648), 22141i, i32(-2147483648))), Struct_1(vec4<i32>(0i, 23346i, i32(-2147483648), -13159i)), Struct_1(vec4<i32>(i32(-2147483648), -4596i, -65135i, 1i)));

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 19>;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(27725i, -4979i, 24310i, 13619i)), Struct_1(vec4<i32>(1579i, 0i, -15633i, -1i)), Struct_1(vec4<i32>(48680i, 2080i, 19614i, -47637i)), Struct_1(vec4<i32>(37242i, 1i, -1i, 3287i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 10421i, 2147483647i)), Struct_1(vec4<i32>(-1i, 0i, -1i, 27952i)), Struct_1(vec4<i32>(13283i, -1i, -1i, 6964i)), Struct_1(vec4<i32>(-1i, 0i, -12370i, -46434i)), Struct_1(vec4<i32>(-1i, 15637i, 2147483647i, 0i)), Struct_1(vec4<i32>(2147483647i, -11472i, 2147483647i, 24394i)), Struct_1(vec4<i32>(-45493i, 2147483647i, 0i, 1i)), Struct_1(vec4<i32>(10099i, 844i, -8304i, 0i)), Struct_1(vec4<i32>(-3372i, 60418i, -3393i, 0i)), Struct_1(vec4<i32>(-1i, -31528i, -26048i, -39682i)), Struct_1(vec4<i32>(29155i, 1i, 34825i, -15245i)), Struct_1(vec4<i32>(-28337i, -68321i, 50428i, -16207i)), Struct_1(vec4<i32>(-1i, 39571i, 56735i, 15401i)), Struct_1(vec4<i32>(5283i, -23972i, -41942i, 31902i)), Struct_1(vec4<i32>(84690i, 1i, -14288i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, -8233i, -80844i, 1i)));

var<private> global4: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<i32>(-6765i, i32(-2147483648), i32(-2147483648), -31048i)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -15717i, 27631i)), Struct_1(vec4<i32>(1i, 1159i, -1i, -26779i)), Struct_1(vec4<i32>(-1i, -1i, 62756i, 1i)), Struct_1(vec4<i32>(0i, 20787i, -1i, 2147483647i)), Struct_1(vec4<i32>(i32(-2147483648), -7589i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(-106516i, -36399i, 1i, 4052i)), Struct_1(vec4<i32>(-1i, 2147483647i, i32(-2147483648), -16196i)), Struct_1(vec4<i32>(15774i, 0i, 0i, i32(-2147483648))), Struct_1(vec4<i32>(1i, -11722i, -1i, -15173i)), Struct_1(vec4<i32>(-16568i, -26590i, 45840i, 24968i)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 0i, 0i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 59295i, -1i)), Struct_1(vec4<i32>(-7483i, 1i, 6700i, -27239i)), Struct_1(vec4<i32>(-285i, -4353i, 51304i, i32(-2147483648))), Struct_1(vec4<i32>(35395i, 31619i, i32(-2147483648), -40052i)), Struct_1(vec4<i32>(-216i, -41406i, 35202i, -1i)), Struct_1(vec4<i32>(-44807i, i32(-2147483648), -17883i, -3341i)), Struct_1(vec4<i32>(i32(-2147483648), 15872i, 2147483647i, -11846i)), Struct_1(vec4<i32>(-34167i, 56438i, -1i, -1i)), Struct_1(vec4<i32>(-1i, -31974i, 2147483647i, -12597i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_i32(~1i, -12807i) & min(1i, u_input.b.x);
    let var_1 = !(!any(vec2<bool>(true, true))) & true;
    var var_2 = global3[_wgslsmith_index_u32(global1.x, 20u)];
    global0 = array<Struct_1, 21>();
    var var_3 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1862f))))));
    return ~1u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global1 = vec4<u32>(~89936u, 83063u, 55894u, abs(func_3()));
    var var_0 = Struct_1(_wgslsmith_div_vec4_i32(arg_1.a, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(arg_1.a, vec4<i32>(3276i, 1i, -2147483647i, arg_1.a.x)), vec4<i32>(u_input.a.x, arg_1.a.x, -2188i, 1i)), vec4<i32>(48461i, -1i, 37423i, 1i))));
    let var_1 = firstTrailingBit(~arg_2) << (arg_2 % 32u);
    var_0 = global4[_wgslsmith_index_u32(var_1 ^ 1u, 21u)];
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~16605u, 7209u), 21u)];
    return Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-var_0.a, _wgslsmith_clamp_vec4_i32(var_2.a, arg_1.a, vec4<i32>(arg_1.a.x, var_2.a.x, arg_1.a.x, var_2.a.x))) | reverseBits(arg_1.a), max(arg_1.a, arg_1.a | abs(var_0.a))));
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    global2 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_div_u32(4411u, 35557u);
    var var_1 = func_2(true, arg_0, global1.x);
    var var_2 = func_2(any(select(vec3<bool>(global1.x > 4294967295u, any(vec2<bool>(false, true)), true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), true), vec3<bool>(true, true, true))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.x, global1.x), 20u)], global1.x);
    var_0 = ~(global1.x & _wgslsmith_clamp_u32(1170u, global1.x, _wgslsmith_add_u32(global1.x, _wgslsmith_clamp_u32(global1.x, 4294967295u, 1u))));
    return -var_2.a.zzx;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    return global1.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 21>();
    let var_0 = select(func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-104f)) * -436f), -1231f), countOneBits(-func_1(global2[_wgslsmith_index_u32(global1.x, 19u)])), Struct_1(vec4<i32>(-u_input.a.x, 2147483647i, u_input.a.x, u_input.b.x >> (global1.x % 32u))), func_2(false, global3[_wgslsmith_index_u32(global1.x, 20u)], ~global1.x)), abs(select(vec2<u32>(_wgslsmith_mult_u32(0u, 117346u), max(7701u, global1.x)), vec2<u32>(max(33170u, 120095u), abs(120596u)), !select(vec2<bool>(false, false), vec2<bool>(false, true), true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), false));
    global2 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(-u_input.a.x, 46056i), u_input.a.x);
    let var_2 = vec2<bool>(true, true);
    let var_3 = select(!vec3<bool>(true, false, any(!vec3<bool>(var_2.x, false, false))), select(select(select(!vec3<bool>(true, false, var_2.x), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, var_2.x, true), !var_2.x)), select(vec3<bool>(-1i >= u_input.b.x, false, true), !(!vec3<bool>(var_2.x, var_2.x, var_2.x)), true == any(vec2<bool>(true, var_2.x))), true), !(!vec3<bool>(all(vec3<bool>(var_2.x, true, true)), !var_2.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-func_1(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.a.x), vec4<i32>(0i, u_input.b.x, 2293i, 1i)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-217f, 1000f), _wgslsmith_f_op_f32(sign(-838f))));
}

