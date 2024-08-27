struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: i32, arg_3: vec2<bool>) -> vec4<i32> {
    let var_0 = Struct_1(abs(~arg_0.a.d.a), 60991u, vec3<bool>(arg_0.b.c.x, arg_0.a.c.c.x, true), false, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-139f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(384f, _wgslsmith_f_op_f32(sign(arg_0.b.e.x))) * -1060f), arg_0.a.c.e.x, _wgslsmith_f_op_f32(-arg_1.x)));
    return _wgslsmith_sub_vec4_i32(vec4<i32>(13742i, _wgslsmith_div_i32(-1i, ~arg_0.b.a), -arg_0.b.a, _wgslsmith_div_i32(~arg_0.a.a.a, _wgslsmith_mult_i32(-1i, arg_2))) ^ ~abs(arg_0.a.b), (firstLeadingBit(firstLeadingBit(vec4<i32>(32210i, 1i, -2147483647i, arg_0.a.a.a))) & (arg_0.a.b | vec4<i32>(arg_2, -1i, 1i, u_input.b.x))) | arg_0.a.b);
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = ~func_3(Struct_5(Struct_2(Struct_1(u_input.b.x, u_input.a, vec3<bool>(true, true, false), false, vec4<f32>(arg_0.x, 424f, -1000f, -110f)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 0i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i)), Struct_1(u_input.b.x, u_input.a, vec3<bool>(true, true, true), false, vec4<f32>(-1000f, arg_0.x, arg_0.x, arg_0.x)), Struct_1(u_input.b.x, u_input.a, vec3<bool>(true, true, false), false, vec4<f32>(arg_0.x, 1136f, arg_0.x, -1906f))), Struct_1(u_input.b.x, 40991u, select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), any(vec4<bool>(false, false, false, true)), vec4<f32>(arg_0.x, 645f, -611f, 177f))), arg_0, -2147483647i, vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    let var_1 = Struct_2(Struct_1(-_wgslsmith_mult_i32(var_0.x, abs(var_0.x)), u_input.a, select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), false), !(2147483647i < -u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(887f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), 1024f, _wgslsmith_f_op_f32(exp2(arg_0.x))))), var_0, Struct_1(~_wgslsmith_sub_i32(-var_0.x, u_input.b.x >> (u_input.a % 32u)), 4294967295u, vec3<bool>(false, any(vec2<bool>(true, true)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), 160f) > arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, -243f, 1577f, -1225f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-452f, -206f, 1630f, -236f), vec4<f32>(195f, 747f, arg_0.x, arg_0.x)))))), Struct_1(2147483647i | (abs(u_input.b.x) ^ countOneBits(-62225i)), u_input.a, select(vec3<bool>(true, all(vec2<bool>(false, false)), any(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true), -u_input.b.x > -43624i), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1636f)), arg_0.x, -467f, arg_0.x))));
    var var_2 = !(!all(select(select(var_1.d.c.zz, vec2<bool>(var_1.c.d, var_1.c.c.x), var_1.c.c.x), select(var_1.a.c.xy, vec2<bool>(var_1.a.c.x, true), var_1.a.c.xy), false)));
    var var_3 = vec3<bool>(arg_0.x == _wgslsmith_f_op_f32(-arg_0.x), var_1.a.c.x, _wgslsmith_f_op_f32(ceil(1464f)) <= var_1.c.e.x);
    var var_4 = Struct_1(-2147483647i, ~(~27343u << (countOneBits(var_1.c.b) % 32u)), var_1.c.c, all(!var_1.d.c.zz), vec4<f32>(var_1.a.e.x, _wgslsmith_f_op_f32(arg_0.x * 730f), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    return !select(vec4<bool>(false, true, all(select(vec4<bool>(true, var_4.d, var_1.a.c.x, var_4.c.x), vec4<bool>(var_4.d, true, true, var_4.c.x), vec4<bool>(true, true, false, true))), var_3.x), vec4<bool>(!all(vec4<bool>(true, true, true, var_3.x)), !(0i > var_0.x), var_3.x, false), var_4.c.x && ((1u != u_input.a) | false));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<i32>) -> vec2<u32> {
    var var_0 = select(!select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), func_2(vec3<f32>(513f, 1303f, -848f)), false), !func_2(vec3<f32>(1204f, -111f, 1054f)), true), vec4<bool>(!(true & all(vec2<bool>(true, false))), false, false, !all(vec2<bool>(false, true)) != false), select(vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), !func_2(vec3<f32>(-2122f, 952f, -497f)).x, false), vec4<bool>(false, !any(vec3<bool>(true, false, false)), true, all(vec3<bool>(true, true, true))), vec4<bool>(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-474f, -962f, 1000f))).x, any(vec4<bool>(true, true, true, true)), true, func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(364f, -441f, 1292f)))).x)));
    let var_1 = Struct_3(u_input.a, Struct_2(Struct_1(arg_2.x, firstLeadingBit(u_input.a) << (min(u_input.a, 1u) % 32u), var_0.wyz, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, 2182i, u_input.b.x, u_input.b.x), vec4<i32>(31389i, u_input.b.x, u_input.b.x, arg_2.x)) > arg_2.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-173f, -929f, -642f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-311f, -757f, 669f, 1849f)), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), true)))), -firstLeadingBit(vec4<i32>(u_input.b.x, -42694i, 18832i, 2147483647i)) >> (~(vec4<u32>(u_input.a, 24469u, 20767u, u_input.a) ^ vec4<u32>(u_input.a, 75267u, u_input.a, u_input.a)) % vec4<u32>(32u)), Struct_1(arg_2.x, _wgslsmith_sub_u32(0u, max(87548u, u_input.a)), vec3<bool>(false, !var_0.x, var_0.x), true, vec4<f32>(_wgslsmith_f_op_f32(188f - 309f), _wgslsmith_f_op_f32(ceil(-183f)), _wgslsmith_f_op_f32(ceil(1000f)), 292f)), Struct_1(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, 28851i, 0i, 2147483647i)), reverseBits(vec4<i32>(1593i, 1i, 23906i, arg_1))), u_input.a | _wgslsmith_dot_vec2_u32(vec2<u32>(2183u, 101590u), vec2<u32>(u_input.a, 22978u)), var_0.yyw, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(904f, 122f, -1214f, 2343f) * vec4<f32>(451f, -1680f, -1000f, 868f)))), ~(~(~vec3<u32>(u_input.a, 11657u, 1u))), 1u);
    var var_2 = Struct_3(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(9477u, u_input.a, 4294967295u, var_1.a) & vec4<u32>(1u, 69330u, 28478u, u_input.a)), select(firstTrailingBit(vec4<u32>(8402u, 1785u, var_1.a, u_input.a)) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, var_1.c.x, u_input.a), vec4<u32>(var_1.d, var_1.c.x, 1u, u_input.a)), (vec4<u32>(u_input.a, var_1.b.d.b, 1u, u_input.a) | vec4<u32>(0u, var_1.d, u_input.a, var_1.c.x)) & countOneBits(vec4<u32>(u_input.a, u_input.a, 1u, var_1.b.a.b)), vec4<bool>(var_0.x || false, 65739u > u_input.a, var_0.x, any(var_0.zx)))), var_1.b, _wgslsmith_add_vec3_u32(~vec3<u32>(abs(var_1.c.x), ~0u, var_1.b.a.b), ~(~(vec3<u32>(u_input.a, 96u, 1492u) & vec3<u32>(var_1.d, u_input.a, u_input.a)))), u_input.a);
    var_0 = !select(select(vec4<bool>(var_1.b.d.d, true, var_1.b.c.d && false, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, var_0.x, true, true), true), var_1.b.a.c.x), vec4<bool>(false, true, true || var_0.x, true), all(vec2<bool>(false, false)) | (true | var_0.x));
    var var_3 = ~var_1.c;
    return min(~var_1.c.zx, _wgslsmith_clamp_vec2_u32(~vec2<u32>(4539u, u_input.a), ~vec2<u32>(var_2.c.x, var_3.x), vec2<u32>(var_1.b.a.b, 46997u)) & abs(~var_3.zy)) >> (reverseBits(var_1.c.yx) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, 1u), 0u) <= max(_wgslsmith_sub_u32(4294967295u, 20519u), u_input.a), true, any(vec2<bool>(true, true)));
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(62569u, u_input.a), countOneBits(u_input.a)), firstLeadingBit(vec2<u32>(u_input.a, 30157u))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u & u_input.a), _wgslsmith_mod_vec2_u32(func_1(u_input.b, 0i, vec3<i32>(-21846i, u_input.b.x, u_input.b.x)), min(vec2<u32>(32659u, 1u), vec2<u32>(24740u, u_input.a))))) ^ _wgslsmith_mult_vec2_u32(min(~(~vec2<u32>(0u, 51360u)), vec2<u32>(firstLeadingBit(4294967295u), reverseBits(0u))), abs(abs(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, 63480u)))));
    var_1 = vec2<u32>(var_1.x, ~37484u ^ (u_input.a >> (var_1.x % 32u))) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.x, u_input.a, 21732u, u_input.a)), ~vec4<u32>(0u, u_input.a, 1u, var_1.x)) & 68840u, ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_1.x, 0u), vec2<u32>(var_1.x, u_input.a), vec2<bool>(var_0, var_0)), ~vec2<u32>(1u, u_input.a)));
    var var_2 = _wgslsmith_clamp_vec4_u32(~firstLeadingBit(~select(vec4<u32>(1u, u_input.a, u_input.a, 1u), vec4<u32>(1u, 53173u, 17941u, 55992u), false)), ~(~(~(~vec4<u32>(0u, u_input.a, u_input.a, var_1.x)))), vec4<u32>(firstLeadingBit(firstLeadingBit(~var_1.x)), u_input.a, u_input.a, ~54163u));
    var_2 = vec4<u32>(1u, 18841u, reverseBits(var_2.x), u_input.a);
    var var_3 = Struct_4(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-34704i, 6626i, u_input.b.x)) >> (_wgslsmith_add_u32(~1u, ~var_1.x) % 32u), 10748u, vec3<bool>(false, 2147483647i <= ~u_input.b.x, any(vec4<bool>(false, true, var_0, false)) || true), true, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -296f), -666f, _wgslsmith_f_op_f32(round(-331f)), _wgslsmith_div_f32(-1000f, -1142f))));
    var_3 = Struct_4(Struct_1(abs(abs(countOneBits(u_input.b.x))), 49922u, var_3.a.c, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(435f, var_3.a.e.x, -603f, -1268f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a.e * var_3.a.e) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.a.e.x, -288f, var_3.a.e.x, -464f)))))));
    var_2 = ~(~vec4<u32>(57780u, var_1.x, var_1.x, ~var_2.x));
    var_3 = Struct_4(Struct_1(-1i, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.b, var_1.x, var_2.x, u_input.a), vec4<u32>(var_1.x, u_input.a, var_3.a.b, 3648u)), u_input.a), var_2.x), vec3<bool>(true, 2147483647i > ~u_input.b.x, var_0), any(var_3.a.c), _wgslsmith_f_op_vec4_f32(floor(var_3.a.e))));
    let x = u_input.a;
    s_output = StorageBuffer(53727i);
}

