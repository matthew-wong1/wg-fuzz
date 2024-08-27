struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec2<u32>(0u, 57954u)), Struct_3(vec2<u32>(9867u, 4294967295u)));

var<private> global1: Struct_5 = Struct_5(vec3<f32>(-1000f, 263f, -2285f), Struct_2(vec3<i32>(-1i, -1i, -1i), vec4<i32>(1i, 2147483647i, -9169i, -28399i), -1075f), true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<Struct_3, 2>();
    var var_0 = vec3<bool>(all(!select(select(vec2<bool>(global1.c, true), vec2<bool>(global1.c, global1.c), vec2<bool>(global1.c, false)), select(vec2<bool>(true, global1.c), vec2<bool>(true, global1.c), vec2<bool>(global1.c, true)), global1.c)), (~_wgslsmith_dot_vec3_u32(vec3<u32>(11411u, u_input.a, 83618u), vec3<u32>(30109u, u_input.a, u_input.a)) >= ~u_input.a) & all(select(select(vec3<bool>(global1.c, global1.c, true), vec3<bool>(global1.c, global1.c, global1.c), vec3<bool>(global1.c, global1.c, true)), select(vec3<bool>(false, global1.c, true), vec3<bool>(global1.c, false, global1.c), vec3<bool>(true, global1.c, global1.c)), 1i >= arg_0)), global1.c | true);
    var_0 = select(!select(select(vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(true, false, var_0.x), true), select(select(vec3<bool>(true, var_0.x, global1.c), vec3<bool>(true, global1.c, true), vec3<bool>(global1.c, false, true)), !vec3<bool>(true, false, global1.c), all(vec4<bool>(var_0.x, var_0.x, global1.c, global1.c))), !(!vec3<bool>(var_0.x, false, var_0.x))), select(select(vec3<bool>(all(var_0.zz), all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true), select(!vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_0.x, false), !global1.c), !(!vec3<bool>(true, true, global1.c))), vec3<bool>(false, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)) > 9041u, true), 1593f >= _wgslsmith_f_op_f32(-global1.b.c)), vec3<bool>(var_0.x, any(!(!vec3<bool>(false, global1.c, global1.c))), true));
    var var_1 = global0[_wgslsmith_index_u32(~abs(firstLeadingBit(u_input.a)), 2u)];
    var var_2 = _wgslsmith_sub_i32(-65424i, _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, arg_0), ~(~_wgslsmith_sub_i32(11776i, global1.b.a.x))));
    return _wgslsmith_f_op_f32(max(617f, -545f));
}

fn func_2(arg_0: i32) -> u32 {
    global1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c))), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1499f, -269f)), _wgslsmith_f_op_f32(func_3(-11774i << (u_input.a % 32u))))), Struct_2(global1.b.b.xzy, ~(-firstTrailingBit(global1.b.b)), _wgslsmith_f_op_f32(trunc(1230f))), any(vec3<bool>(any(vec3<bool>(true, global1.c, false)) || true, true, false)));
    var var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(0u, u_input.a, 0u >> (u_input.a % 32u))), select(~vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(79042u, u_input.a, 4294967295u)) << (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), global1.c), vec3<u32>(~45505u, 4294967295u, firstTrailingBit(~u_input.a))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_clamp_u32(51479u, u_input.a, u_input.a), countOneBits(u_input.a)) << (vec3<u32>(u_input.a, ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(51293u, 10407u, u_input.a, 3251u))) % vec3<u32>(32u)), vec3<u32>(u_input.a, _wgslsmith_div_u32(~u_input.a, u_input.a), reverseBits(~u_input.a))), select(vec3<u32>(~(~4294967295u), _wgslsmith_mod_u32(reverseBits(25068u), firstLeadingBit(101047u)), ~firstTrailingBit(u_input.a)), _wgslsmith_div_vec3_u32(min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 1u)), ~vec3<u32>(u_input.a, u_input.a, 0u)), ~min(vec3<u32>(u_input.a, 10463u, u_input.a), vec3<u32>(0u, 1u, u_input.a))), global1.c | false));
    var_0 = _wgslsmith_div_vec3_u32(select(vec3<u32>(1u, _wgslsmith_sub_u32(u_input.a, 22051u), u_input.a), vec3<u32>(0u, 22268u, u_input.a) << (~vec3<u32>(var_0.x, 1u, 4329u) % vec3<u32>(32u)), select(!vec3<bool>(global1.c, global1.c, true), !vec3<bool>(true, true, global1.c), select(vec3<bool>(false, global1.c, global1.c), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), ~(firstLeadingBit(vec3<u32>(79453u, 0u, 4294967295u)) | min(vec3<u32>(4294967295u, 0u, 11896u), vec3<u32>(var_0.x, var_0.x, u_input.a)))) | ~max(~vec3<u32>(12265u, var_0.x, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(50608u, 13893u, 2184u)));
    global1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.a.x, global1.a.x, -1932f), _wgslsmith_f_op_vec3_f32(global1.a * _wgslsmith_f_op_vec3_f32(-global1.a))))), global1.b, false);
    return min(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.x), var_0.yz), 1u, ~1u), reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a)) ^ ~vec3<u32>(45712u, 4294967295u, u_input.a))), 112503u);
}

fn func_4(arg_0: u32) -> Struct_5 {
    global0 = array<Struct_3, 2>();
    global0 = array<Struct_3, 2>();
    global1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.b.c, -1291f)))), Struct_2(vec3<i32>(global1.b.a.x << (select(u_input.a, 57455u, global1.c) % 32u), _wgslsmith_mod_i32(global1.b.b.x, 1i), 2147483647i), abs(~global1.b.b), global1.a.x), reverseBits(select(0u << (u_input.a % 32u), arg_0, false)) != 4294967295u);
    let var_0 = select(arg_0, max(~arg_0, arg_0), global1.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.b.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b.c * -1219f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.c, -934f) * -183f), _wgslsmith_f_op_f32(-global1.b.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.a.x, global1.b.c, -214f) + vec4<f32>(-1000f, 256f, 630f, global1.b.c)) + vec4<f32>(global1.b.c, 1000f, global1.a.x, -1627f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(467f, global1.a.x, global1.b.c, 546f) + vec4<f32>(1459f, global1.b.c, 2326f, -1452f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1342f, -656f, -593f, global1.a.x)))), global1.c));
    return Struct_5(_wgslsmith_f_op_vec3_f32(trunc(var_1.zzw)), global1.b, ((countOneBits(global1.b.a.x) ^ (1i >> (u_input.a % 32u))) == abs(i32(-1i) * -8838i)) | any(vec2<bool>(true, true)));
}

fn func_1() -> vec2<u32> {
    global1 = func_4(func_2(-(i32(-1i) * -36836i)) << (u_input.a % 32u));
    var var_0 = countOneBits(1u);
    let var_1 = vec4<bool>(-_wgslsmith_add_i32(global1.b.b.x, 62710i) != 2147483647i, true, !all(select(vec3<bool>(global1.c, false, global1.c), vec3<bool>(global1.c, global1.c, true), global1.c)), global1.c);
    var var_2 = Struct_5(vec3<f32>(-888f, global1.b.c, _wgslsmith_f_op_f32(min(-1045f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1384f, -2330f)), -216f)))), global1.b, true);
    var_2 = Struct_5(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1349f * -152f)), var_2.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-912f, -333f, global1.b.c)))), Struct_2(var_2.b.a, vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, countOneBits(global1.b.b.x)), -(~global1.b.a.x), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, global1.b.b.x), 20081i, -76927i), min(-1i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b.c, 114f, var_2.c))))), var_2.c);
    return vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(11928u, 76687u, 4294967295u), vec3<u32>(30446u, 1u, 60530u)) << ((vec3<u32>(u_input.a, 1u, u_input.a) ^ vec3<u32>(28149u, 4294967295u, 4294967295u)) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 0u, u_input.a) >> (~vec3<u32>(6505u, u_input.a, u_input.a) % vec3<u32>(32u))) << (u_input.a % 32u), u_input.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = Struct_1(global1.b.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.a.x, -130f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b.c)) - _wgslsmith_div_f32(218f, global1.b.c)) - _wgslsmith_f_op_f32(-975f - _wgslsmith_f_op_f32(floor(-207f)))) + _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(384f + 237f))));
    global1 = func_4(_wgslsmith_mod_u32(0u, 97319u));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(func_3(reverseBits(global1.b.b.x)));
    return min(-countOneBits(37373i), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(func_5(func_1(), vec2<i32>(~(-21098i), global1.b.b.x)), 22903i);
    var var_1 = _wgslsmith_div_f32(func_4(reverseBits(u_input.a << (_wgslsmith_sub_u32(10345u, u_input.a) % 32u))).b.c, _wgslsmith_f_op_f32(-global1.b.c));
    var_1 = 1050f;
    var var_2 = Struct_3(~vec2<u32>(69448u, u_input.a));
    var var_3 = global1.b.c;
    let var_4 = func_4(1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, -1295f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.b.c + -470f), _wgslsmith_f_op_f32(var_4.b.c + global1.b.c))) - _wgslsmith_f_op_vec3_f32(-global1.a)), min(min(vec4<u32>(1u, 4294967295u, 11274u, ~u_input.a), max(select(vec4<u32>(u_input.a, 77450u, 0u, 4294967295u), vec4<u32>(51729u, 1u, var_2.a.x, 84972u), vec4<bool>(true, global1.c, global1.c, false)), ~vec4<u32>(var_2.a.x, 26546u, 4294967295u, u_input.a))), abs(vec4<u32>(u_input.a, var_2.a.x, 55002u, 31659u)) ^ vec4<u32>(1u, 4294967295u, _wgslsmith_mod_u32(1788u, u_input.a), var_2.a.x)), ~firstLeadingBit(select(~vec3<u32>(87487u, 4294967295u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 23195u), true)), firstLeadingBit(vec2<u32>(~var_2.a.x, 4294967295u)));
}

