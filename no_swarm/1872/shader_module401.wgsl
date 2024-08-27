struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-889f, -930f);

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(2147483647i, 13835u, Struct_1(vec2<i32>(64928i, 43508i), -51515i, 34349u, true), Struct_1(vec2<i32>(2147483647i, 38024i), 1i, 4294967295u, true), 1u), Struct_2(1i, 0u, Struct_1(vec2<i32>(0i, -40167i), -9472i, 10614u, false), Struct_1(vec2<i32>(2147483647i, -19036i), 1083i, 1u, true), 15271u), Struct_2(79071i, 0u, Struct_1(vec2<i32>(i32(-2147483648), 9363i), 2147483647i, 88728u, true), Struct_1(vec2<i32>(23128i, -51988i), -5187i, 0u, false), 0u), Struct_2(1i, 47144u, Struct_1(vec2<i32>(2147483647i, 11148i), 1i, 1u, true), Struct_1(vec2<i32>(0i, 2147483647i), i32(-2147483648), 98267u, false), 37563u), Struct_2(-79955i, 1u, Struct_1(vec2<i32>(6420i, 2147483647i), 2147483647i, 4294967295u, false), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), i32(-2147483648), 4294967295u, false), 4294967295u), Struct_2(-55268i, 10478u, Struct_1(vec2<i32>(-41663i, i32(-2147483648)), i32(-2147483648), 36167u, false), Struct_1(vec2<i32>(2147483647i, -1i), 12627i, 38351u, false), 67721u), Struct_2(-1i, 67665u, Struct_1(vec2<i32>(-1i, i32(-2147483648)), -14556i, 9241u, false), Struct_1(vec2<i32>(-72156i, i32(-2147483648)), 2147483647i, 75612u, false), 39089u), Struct_2(-1i, 54640u, Struct_1(vec2<i32>(-44120i, 1i), 3777i, 3047u, false), Struct_1(vec2<i32>(9479i, 5950i), 2433i, 7969u, false), 4294967295u));

var<private> global2: i32 = 4800i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_mult_i32(u_input.a.x, 0i) > u_input.b;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~((firstLeadingBit(u_input.d) & u_input.d) << (2740u % 32u)), 9503u), 8u)];
    global1 = array<Struct_2, 8>();
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(770f - -793f), 2191f)))));
    let var_2 = vec3<bool>(false, select(!all(arg_1.zz), all(select(arg_1.zz, vec2<bool>(false, var_1.c.d), false)), false) | (firstLeadingBit(_wgslsmith_add_u32(var_1.c.c, u_input.d)) > 1u), arg_1.x);
    return 8598i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: i32) -> vec2<f32> {
    let var_0 = vec4<i32>(i32(-1i) * -func_3(Struct_2(-2147483647i, u_input.d, Struct_1(vec2<i32>(1i, u_input.a.x), u_input.a.x, u_input.d, false), Struct_1(u_input.a.yx, arg_2, u_input.d, false), 0u), vec3<bool>(true, false, true)), -min(_wgslsmith_mult_i32(1i, 217i), ~arg_2), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1054i, arg_2, -13925i), vec3<i32>(u_input.b, arg_2, -62293i) & reverseBits(u_input.a)), firstTrailingBit(~(~26132i))) >> (~(select(vec4<u32>(u_input.d, u_input.d, 36165u, 0u), ~vec4<u32>(u_input.d, 1u, 4294967295u, 8346u), vec4<bool>(true, true, true, true)) ^ vec4<u32>(~u_input.d, 0u, u_input.d, 4294967295u)) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + -519f))), 1718f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1, vec2<f32>(-1239f, arg_0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1000f))))) - _wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yw * arg_0.xz)))), !all(vec3<bool>(false, false, true)) && false));
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_3(813f);
    global2 = _wgslsmith_mod_i32(countOneBits(u_input.b) & firstTrailingBit(-25100i), 1i);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-1373f + -1284f), false)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1579f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: u32) -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-253f, -1000f, 1431f, -895f), vec4<f32>(-1116f, -211f, -537f, -191f))))), vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_div_f32(179f, -354f), -342f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, arg_1.x, -955f, -1393f), vec4<f32>(global0.x, arg_1.x, 206f, arg_1.x), vec4<bool>(true, arg_2, false, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(567f, -841f, arg_1.x, 560f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-626f, -399f, global0.x, arg_1.x) * vec4<f32>(global0.x, 929f, 1000f, arg_1.x)), vec4<f32>(-115f, global0.x, 487f, -1762f))))), arg_1.xz, _wgslsmith_mult_i32(~min(u_input.b << (0u % 32u), ~(-1i)), 1i << (arg_3 % 32u))));
    global0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * arg_1.x)))))));
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c, 55073i), -u_input.a.x), u_input.c);
    var var_1 = u_input.b != _wgslsmith_dot_vec4_i32(select(~(-vec4<i32>(-16460i, var_0, var_0, var_0)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_0, 0i, var_0), vec4<i32>(-1i, var_0, -9501i, 1i) >> (vec4<u32>(75859u, arg_3, u_input.d, u_input.d) % vec4<u32>(32u)), vec4<i32>(1i, -1i, u_input.e, var_0) & vec4<i32>(var_0, -19429i, u_input.e, -1040i)), vec4<bool>(arg_2, true, arg_0.x, false)), abs(~firstLeadingBit(vec4<i32>(3895i, 69546i, -22111i, -3741i))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, -807f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2866f - -1000f), global0.x, false))));
    return any(select(!(!vec4<bool>(arg_2, true, arg_0.x, arg_2)), !(!vec4<bool>(false, false, arg_2, false)), !(true != arg_0.x))) || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-207f, arg_1.x, true)) * 662f) - _wgslsmith_div_f32(-458f, _wgslsmith_f_op_f32(round(global0.x)))) <= var_2.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = -(-abs(u_input.a) >> (arg_2.zzw % vec3<u32>(32u)));
    var var_1 = _wgslsmith_add_vec4_u32(~min(vec4<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d), 87575u, select(0u, arg_2.x, arg_1.x), firstLeadingBit(arg_2.x)), arg_2), ((_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, u_input.d, 17660u), vec4<u32>(u_input.d, 4926u, 18491u, arg_2.x)) & arg_2) ^ reverseBits(~arg_2)) ^ vec4<u32>(~(~u_input.d), u_input.d, u_input.d, _wgslsmith_sub_u32(arg_2.x, arg_2.x) >> (131529u % 32u)));
    global1 = array<Struct_2, 8>();
    var var_2 = Struct_1(vec2<i32>(var_0.x >> (_wgslsmith_add_u32(var_1.x, var_1.x) % 32u), reverseBits(-_wgslsmith_clamp_i32(33975i, u_input.c, u_input.a.x))), _wgslsmith_add_i32(var_0.x, 1i), 4294967295u, arg_1.x);
    var_1 = arg_2;
    return global1[_wgslsmith_index_u32(countOneBits(arg_2.x), 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-279f + _wgslsmith_f_op_f32(global0.x * global0.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-947f)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(853f, _wgslsmith_f_op_f32(global0.x + 660f), _wgslsmith_div_f32(1000f, -1024f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(464f, global0.x, 1337f) * vec3<f32>(global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -502f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, 969f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 1090f, 434f), vec3<f32>(-1043f, 745f, -1770f), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-100f, global0.x, -938f), vec3<f32>(-1108f, -225f, -1000f)) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(-1000f, 114f, 815f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(966f, global0.x, -2205f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-619f, 397f, global0.x)))));
    let var_2 = func_4(countOneBits(vec2<i32>(_wgslsmith_mod_i32(u_input.c, u_input.c), u_input.a.x << (66915u % 32u)) ^ u_input.a.zx), select(vec4<bool>((-1978f > global0.x) & all(vec4<bool>(true, true, true, false)), true, !func_1(vec3<bool>(true, false, false), vec3<f32>(-2452f, global0.x, 1000f), false, 60776u), any(vec2<bool>(false, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false))), vec4<bool>(false, false, true, _wgslsmith_mult_u32(1u, u_input.d) >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 19325u, 1u, 1u), vec4<u32>(u_input.d, 18173u, 1u, u_input.d)))), select(~min(vec4<u32>(10162u, 1u, 48537u, 1u), firstTrailingBit(vec4<u32>(u_input.d, 4294967295u, u_input.d, 58602u))), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(63739u, u_input.d) >> (vec2<u32>(0u, u_input.d) % vec2<u32>(32u))), 1u, _wgslsmith_sub_u32(~0u, reverseBits(u_input.d))), any(vec4<bool>(157f == global0.x, u_input.d != u_input.d, true, any(vec3<bool>(false, false, false))))));
    let var_3 = select(select(select(vec3<bool>(var_2.d.a.x >= -1543i, true, var_2.d.d), !(!vec3<bool>(var_2.c.d, true, true)), var_2.c.d), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_2.d.d, false, false), vec3<bool>(var_2.c.d, var_2.d.d, var_2.c.d), vec3<bool>(var_2.d.d, var_2.c.d, var_2.d.d)), true), vec3<bool>(var_2.c.d | var_2.d.d, var_2.c.d, var_2.c.d), vec3<bool>(true, !var_2.c.d, var_2.d.d))), vec3<bool>(true, true, var_2.c.d), true);
    let var_4 = var_3;
    let var_5 = select(vec4<bool>(!all(select(vec3<bool>(true, false, true), var_3, var_3.x)), true, ~(~4294967295u) > ((u_input.d ^ u_input.d) ^ 20131u), all(!vec2<bool>(true, var_2.c.d))), !select(select(vec4<bool>(var_2.d.d, true, var_4.x, true), vec4<bool>(true, var_4.x, false, false), any(vec4<bool>(true, false, var_2.c.d, false))), vec4<bool>(var_1.x >= global0.x, var_2.c.d, true, true), vec4<bool>(func_4(vec2<i32>(-16408i, -1i), vec4<bool>(true, var_3.x, var_4.x, var_2.c.d), vec4<u32>(89050u, u_input.d, 50530u, u_input.d)).c.d, 0u == var_2.d.c, any(vec2<bool>(var_2.d.d, false)), var_3.x)), select(select(vec4<bool>(false, any(vec3<bool>(var_4.x, var_3.x, true)), -152f >= global0.x, all(vec2<bool>(true, false))), !vec4<bool>(true, true, true, var_4.x), func_4(vec2<i32>(var_2.a, var_2.a) ^ u_input.a.yx, select(vec4<bool>(var_2.d.d, false, var_3.x, var_4.x), vec4<bool>(var_4.x, var_2.c.d, var_2.c.d, false), vec4<bool>(false, true, var_3.x, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(33382u, 10814u, 40100u, u_input.d), vec4<u32>(31268u, var_2.c.c, u_input.d, 36974u))).c.d), vec4<bool>(true, var_2.d.d, all(vec2<bool>(var_2.d.d, true)), u_input.d > _wgslsmith_clamp_u32(0u, 1u, u_input.d)), countOneBits(var_2.e) == select(u_input.d, ~4294967295u, any(vec4<bool>(var_4.x, var_4.x, var_4.x, false)))));
    var var_6 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(-13284i, 37094i), u_input.a.zz), var_5, ~vec4<u32>(1279u, u_input.d, u_input.d, 437u)).c.c, 73719u), select(vec2<u32>(u_input.d, 4294967295u) >> (~vec2<u32>(0u, 35880u) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(33483u, 4294967295u)) & ~vec2<u32>(u_input.d, var_2.c.c), any(select(vec3<bool>(true, true, false), vec3<bool>(var_5.x, true, var_5.x), var_3))), false), ~(min(33305u, 35173u) << (~u_input.d % 32u)), vec3<u32>(~28384u >> (u_input.d % 32u), ~firstTrailingBit(reverseBits(1u)), var_2.b ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.d.c, 0u), vec2<u32>(7691u, 1u)) ^ u_input.d)));
}

