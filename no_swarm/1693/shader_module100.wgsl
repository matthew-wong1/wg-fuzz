struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = select(!(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), select(!vec3<bool>(true, true, all(vec3<bool>(false, true, true))), vec3<bool>(!any(vec2<bool>(true, false)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))), true), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, -92627i, u_input.d.x), 4295i) >= select(u_input.b, -1i, false)), all(vec4<bool>(false, false, true, true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-853f * _wgslsmith_f_op_f32(f32(-1f) * -602f)), -379f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-324f)) * _wgslsmith_f_op_f32(max(-481f, 1088f)))))), vec4<bool>(var_0.x, false, var_0.x, true), vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(53205u, 1310u, 0u, 41903u), vec4<u32>(21159u, 8007u, 4294967295u, 61288u))), vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(min(~36745u, 33920u))));
    var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -1215f, -1656f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(max(-1849f, _wgslsmith_f_op_f32(-1000f - -278f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1120f, 152f)), _wgslsmith_f_op_f32(select(-1516f, var_1.a.x, false))))), var_1.b, ~var_1.c);
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-836f, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(select(185f, 385f, var_1.b.x))), var_1.a)))), vec4<bool>(var_0.x, true, var_1.a.x == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x))), true), var_1.c);
    var_1 = Struct_1(var_1.a, select(vec4<bool>(true, var_0.x, any(var_1.b), all(vec4<bool>(var_1.b.x, true, var_0.x, false))), var_1.b, !(!var_1.b)), var_1.c);
    return var_1.a.x;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = vec4<bool>(arg_3.b.x, _wgslsmith_f_op_f32(func_3()) > _wgslsmith_f_op_f32(trunc(arg_2.a.x)), arg_2.b.x | !(~arg_3.c.x < (arg_3.c.x << (20000u % 32u))), true || (_wgslsmith_f_op_f32(sign(-995f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-740f - -1847f))));
    let var_1 = ~(~reverseBits(~arg_2.c.x));
    let var_2 = Struct_1(arg_2.a, vec4<bool>(true, any(arg_2.b.wx), !all(select(arg_2.b.xwx, vec3<bool>(true, arg_2.b.x, true), arg_2.b.wwy)), arg_2.b.x), vec2<u32>(4294967295u, ~select(21032u, arg_2.c.x, !arg_2.b.x)));
    var var_3 = (~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.c.x, 1u, var_2.c.x, 72282u), vec4<u32>(72129u, 8681u, 9161u, 1u)) << (~_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, var_2.c.x, arg_2.c.x, var_2.c.x), ~vec4<u32>(var_2.c.x, 1732u, var_2.c.x, arg_2.c.x)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_sub_u32(~max(arg_3.c.x, arg_2.c.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.c.x, var_2.c.x), select(arg_3.c, vec2<u32>(arg_2.c.x, 4294967295u), vec2<bool>(var_0.x, var_2.b.x)))), var_1, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_2.c.x, 0u, _wgslsmith_add_u32(var_1, 1u)), var_2.c.x, arg_2.c.x), 1u) % vec4<u32>(32u));
    var_3 = ~(_wgslsmith_sub_vec4_u32(min(vec4<u32>(arg_2.c.x, var_2.c.x, 0u, var_3.x), vec4<u32>(20970u, var_3.x, 40175u, 1u)) ^ (vec4<u32>(1651u, var_3.x, 1u, var_2.c.x) | vec4<u32>(1u, arg_3.c.x, 65208u, arg_3.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(42556u, 42178u, 45761u, 1u) & vec4<u32>(33338u, 0u, arg_3.c.x, var_3.x), countOneBits(vec4<u32>(var_2.c.x, 36795u, arg_3.c.x, 6303u)), max(vec4<u32>(arg_2.c.x, arg_3.c.x, 39792u, arg_2.c.x), vec4<u32>(107959u, 14871u, 1u, 48111u)))) >> (select(~(~vec4<u32>(arg_2.c.x, 2897u, arg_3.c.x, arg_3.c.x)), ~select(vec4<u32>(var_1, arg_2.c.x, arg_3.c.x, 7579u), vec4<u32>(arg_3.c.x, arg_2.c.x, 31460u, 1u), arg_3.b.x), vec4<bool>(all(arg_2.b.zy), true, 91366u > var_2.c.x, !var_2.b.x)) % vec4<u32>(32u)));
    return vec2<bool>(!var_0.x, true);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: i32) -> bool {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-855f, 801f, 1026f), vec3<f32>(366f, -289f, -151f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1597f, 1478f, 904f))), arg_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1825f, -172f, -500f) + vec3<f32>(-999f, 276f, -744f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-545f, -718f, 1000f))))))), !select(vec4<bool>(true, !arg_1.x, arg_1.x, true), vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(any(vec3<bool>(arg_1.x, false, arg_1.x)), true, any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~1u), firstTrailingBit(vec2<u32>(1u, 1u)) >> (vec2<u32>(1u, firstLeadingBit(40067u)) % vec2<u32>(32u))));
    var var_1 = -695f;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, var_0.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a.x, 1241f, false)), _wgslsmith_f_op_f32(var_0.a.x * -1364f))) - var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(min(var_0.a.x, -437f)))))));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(abs(min(~var_0.c.x, var_0.c.x)), ~firstTrailingBit(abs(var_0.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.c, vec2<u32>(93343u, 1009u)), 54640u, var_0.c.x, 0u), vec4<u32>(var_0.c.x ^ 9458u, 1u, select(23991u, var_0.c.x, var_2.x), 9428u))), abs(~select(firstTrailingBit(vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x)), vec3<u32>(0u, var_0.c.x, var_0.c.x), !vec3<bool>(true, arg_1.x, true))));
    return any(!vec4<bool>(true, var_0.b.x && (true | arg_1.x), var_2.x, !func_2(var_0.b.x, vec4<i32>(arg_2, 24738i, arg_2, -2147483647i), Struct_1(var_0.a, vec4<bool>(false, arg_1.x, true, false), vec2<u32>(var_3, 0u)), var_0).x));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(false, func_4(45819i, select(func_2(true, vec4<i32>(u_input.a, -4464i, 0i, -26381i) & vec4<i32>(u_input.d.x, -1i, -1i, 31279i), Struct_1(vec3<f32>(-320f, -1299f, -637f), vec4<bool>(true, false, true, true), vec2<u32>(15439u, 0u)), Struct_1(vec3<f32>(-454f, 154f, 382f), vec4<bool>(true, false, true, true), vec2<u32>(82792u, 80150u))), vec2<bool>(true, true), true), _wgslsmith_sub_i32(~u_input.a, 44333i) ^ ((u_input.d.x & u_input.a) ^ _wgslsmith_clamp_i32(u_input.b, u_input.d.x, u_input.a))));
    var var_1 = any(!(!select(select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, true, var_0.x, false), vec4<bool>(true, var_0.x, true, true)), vec4<bool>(true, true, false, var_0.x), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, var_0.x, false, false), vec4<bool>(false, false, var_0.x, true)))));
    let var_2 = !(!var_0.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(max(399f, -542f))), 729f, 223f))), !(!select(select(vec4<bool>(var_2, false, var_2, true), vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x)), !vec4<bool>(var_2, true, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true))), vec2<u32>(min(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 12973u, 0u))), 0u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 96155u), vec2<u32>(1u, 4294967295u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 84087u, 10620u, 4611u), vec4<u32>(14894u, 1u, 4294967295u, 737u)) % 32u))));
    let var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)) * 548f), 438f), !(!vec4<bool>(!var_3.b.x, !var_0.x, true, !var_0.x)), firstTrailingBit(~(~vec2<u32>(var_3.c.x, var_3.c.x))) >> (vec2<u32>(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(26469u, var_3.c.x), var_3.c.x), 1u & ~var_3.c.x) % vec2<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, var_4.a.x, var_4.a.x)) * var_4.a)), !vec4<bool>(true, var_3.a.x != var_4.a.x, true, true), vec2<u32>(var_3.c.x, ~(~(~4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(min(var_0.c.x, 4294967295u), 0u, var_0.c.x, 1u) & select(vec4<u32>(1u, var_0.c.x, 26930u, var_0.c.x), ~vec4<u32>(1u, 1u, 4294967295u, var_0.c.x), select(var_0.b, var_0.b, var_0.b.x)), ~vec4<u32>(var_0.c.x, 20309u, var_0.c.x, _wgslsmith_mod_u32(28439u, var_0.c.x)), select(select(var_0.b, var_0.b, true), vec4<bool>(true, false, var_0.c.x < 93174u, false), vec4<bool>(all(var_0.b.xwz), false | var_0.b.x, func_2(false, vec4<i32>(-1i, u_input.d.x, u_input.a, u_input.d.x), Struct_1(var_0.a, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), var_0.c), Struct_1(var_0.a, vec4<bool>(true, var_0.b.x, true, var_0.b.x), vec2<u32>(2684u, var_0.c.x))).x, var_0.b.x))), countOneBits(abs(-2147483647i)), 2147483647i, u_input.b);
}

