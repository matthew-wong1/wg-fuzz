struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(0i, 106313u, i32(-2147483648), vec3<i32>(-23406i, 2147483647i, i32(-2147483648))), Struct_1(0i, 0u, -15439i, vec3<i32>(25685i, 23466i, 47009i)), Struct_1(0i, 31564u, -61225i, vec3<i32>(-1i, 40609i, 2147483647i)), Struct_1(-5726i, 1u, 59189i, vec3<i32>(9799i, -30488i, 0i)), Struct_1(25188i, 74150u, 0i, vec3<i32>(23092i, -7090i, -1i)), Struct_1(i32(-2147483648), 12245u, 0i, vec3<i32>(2197i, -1i, -21683i)), Struct_1(-73626i, 1u, 1i, vec3<i32>(-1i, 1i, 1i)), Struct_1(0i, 7230u, -866i, vec3<i32>(16288i, 12288i, -31982i)), Struct_1(-8457i, 30170u, -2922i, vec3<i32>(14681i, 0i, i32(-2147483648))), Struct_1(-1i, 61028u, 55002i, vec3<i32>(11851i, -12146i, -1i)), Struct_1(-32692i, 1u, -25135i, vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_1(0i, 4294967295u, 38214i, vec3<i32>(8918i, 24254i, 2147483647i)), Struct_1(-109384i, 1u, 1660i, vec3<i32>(-42992i, i32(-2147483648), -1i)), Struct_1(2147483647i, 0u, i32(-2147483648), vec3<i32>(-12936i, -10346i, 10942i)), Struct_1(8009i, 1u, i32(-2147483648), vec3<i32>(-857i, 3532i, 13734i)), Struct_1(0i, 7607u, 65123i, vec3<i32>(i32(-2147483648), -14936i, i32(-2147483648))), Struct_1(1i, 1u, 0i, vec3<i32>(1i, 2147483647i, 11915i)), Struct_1(i32(-2147483648), 38002u, 0i, vec3<i32>(-48001i, -12247i, 0i)), Struct_1(2147483647i, 11888u, 0i, vec3<i32>(0i, 0i, -4428i)), Struct_1(46643i, 1u, 68340i, vec3<i32>(2147483647i, 30204i, -1i)), Struct_1(17184i, 62763u, 2147483647i, vec3<i32>(2147483647i, -13838i, -58121i)), Struct_1(54841i, 14463u, 1i, vec3<i32>(1i, 0i, -11918i)), Struct_1(23270i, 76500u, -54780i, vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_1(0i, 1u, i32(-2147483648), vec3<i32>(0i, 23564i, -27168i)), Struct_1(i32(-2147483648), 6368u, 1i, vec3<i32>(-19971i, 1i, -62930i)), Struct_1(-1i, 17461u, 0i, vec3<i32>(1i, 1i, -1i)), Struct_1(-55338i, 22326u, 2147483647i, vec3<i32>(-1i, i32(-2147483648), 36324i)), Struct_1(-39157i, 4294967295u, -454i, vec3<i32>(1i, -53895i, i32(-2147483648))), Struct_1(1i, 0u, 0i, vec3<i32>(1i, 38660i, -8172i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1582f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f * _wgslsmith_f_op_f32(668f + 2161f))))), _wgslsmith_f_op_f32(993f * 1f));
    var var_1 = var_0.x;
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 29u)];
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 892f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-862f, -727f, _wgslsmith_f_op_f32(var_0.x - 1671f))))));
    global0 = array<Struct_1, 29>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f) + 216f);
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_1, 29>();
    var var_0 = arg_0;
    var var_1 = Struct_1(max(arg_0.c, abs(abs(-arg_0.a))), ~_wgslsmith_mult_u32(1u, u_input.b), reverseBits(arg_0.a), vec3<i32>(var_0.c, _wgslsmith_dot_vec2_i32(max(var_0.d.zz, arg_0.d.xx) << (vec2<u32>(4294967295u, arg_0.b) % vec2<u32>(32u)), var_0.d.zx), -1i));
    let var_2 = vec2<f32>(-651f, _wgslsmith_f_op_f32(trunc(1f)));
    let var_3 = ~(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_1.b, 1u, 1u) >> (vec3<u32>(0u, var_1.b, 4294967295u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 4294967295u), vec2<u32>(u_input.b, 39942u)), var_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, arg_0.b, arg_0.b, arg_0.b), vec4<u32>(0u, u_input.b, u_input.b, var_1.b)))) ^ reverseBits(vec3<u32>(~1u, u_input.b, 34500u)));
    return -182f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-377f * _wgslsmith_f_op_f32(abs(arg_3)))), _wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(-12483i, arg_1.b, arg_2.a, arg_2.d)))))));
    let var_1 = 53623u;
    var var_2 = Struct_1(~_wgslsmith_mod_i32(1i, arg_1.d.x), 4294967295u & min(max(70626u, var_1 ^ arg_2.b), u_input.b), arg_1.d.x, -(((vec3<i32>(u_input.a, arg_2.c, u_input.a) ^ vec3<i32>(62222i, arg_2.a, -21690i)) >> (~vec3<u32>(4294967295u, 4294967295u, 0u) % vec3<u32>(32u))) & ~min(arg_2.d, vec3<i32>(arg_1.d.x, u_input.a, 65499i))));
    var var_3 = ~vec2<u32>(~(~(~arg_2.b)), ~reverseBits(max(arg_1.b, 16561u)));
    var var_4 = ~arg_1.d.x;
    return true;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<bool>(true, func_4(arg_0, Struct_1(_wgslsmith_div_i32(u_input.a << (26882u % 32u), abs(u_input.a)), 4294967295u, 0i, arg_2), global0[_wgslsmith_index_u32(8960u, 29u)], _wgslsmith_f_op_f32(func_3(Struct_1(~52440i, 0u, ~(-12952i), -arg_2)))), any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), vec3<bool>(u_input.b > 32684u, any(vec3<bool>(true, false, true)), u_input.b > 4294967295u))));
    var var_1 = (~vec2<u32>(u_input.b << (u_input.b % 32u), 42861u) >> ((~vec2<u32>(u_input.b, u_input.b) ^ ~(~vec2<u32>(4294967295u, 44680u))) % vec2<u32>(32u))) << (~vec2<u32>(_wgslsmith_mod_u32(max(u_input.b, u_input.b), 1u), 1u | u_input.b) % vec2<u32>(32u));
    var_0 = select(!(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), any(vec4<bool>(false, true, var_0.x, var_0.x)))), !select(select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true), false)), var_0.x), vec3<bool>(any(select(vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(true, false, var_0.x), !vec3<bool>(true, false, var_0.x))), !(_wgslsmith_f_op_f32(abs(-173f)) == arg_0), !var_0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(172f, 887f)) * _wgslsmith_div_f32(arg_0, 1911f)), arg_0, _wgslsmith_f_op_f32(floor(-1205f)))))));
    global0 = array<Struct_1, 29>();
    return Struct_1(arg_2.x, var_1.x, arg_1, ~vec3<i32>(~(-42691i) ^ arg_1, u_input.a, -reverseBits(arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    let var_0 = vec4<bool>(select(true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), false), true, all(vec3<bool>(!all(vec4<bool>(true, false, true, false)), true, all(vec2<bool>(true, false)) || any(vec3<bool>(true, true, false)))), !(!(all(vec2<bool>(false, true)) & all(vec2<bool>(true, false)))));
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    var var_1 = func_2(_wgslsmith_f_op_f32(func_1()), ~(20612i | _wgslsmith_mult_i32(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(4101i, u_input.a, -43087i, 46547i), vec4<i32>(-8590i, u_input.a, 2147483647i, u_input.a)))), min(select(-(~vec3<i32>(1i, u_input.a, 1i)), ~(vec3<i32>(u_input.a, 0i, u_input.a) << (vec3<u32>(u_input.b, u_input.b, 50119u) % vec3<u32>(32u))), false), vec3<i32>(u_input.a, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, 0i, u_input.a) | vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), -vec4<i32>(1i, u_input.a, u_input.a, u_input.a)))));
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-512f, 1022f, -873f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1682f, 1096f, -1000f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-654f, -1657f, -1026f))) * vec3<f32>(1098f, 2283f, -1000f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1904f, 714f, 289f), vec3<f32>(458f, 101f, 266f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-382f, -1843f, -1508f))), var_0.zzx))))), _wgslsmith_mod_vec4_i32(-vec4<i32>(var_1.a, -1i, u_input.a, 10663i) >> (~vec4<u32>(113074u, 16480u, u_input.b, var_1.b) % vec4<u32>(32u)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(42108i, -1i, -1i), var_1.d), -var_1.c, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.d.x), vec2<i32>(var_1.c, u_input.a)))) >> (abs(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, 29367u, 0u, 73210u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 26993u, u_input.b), vec4<u32>(63337u, 1u, var_1.b, u_input.b)))) % vec4<u32>(32u)), 1u);
}

