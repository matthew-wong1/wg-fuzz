struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(197f, -993f)) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(arg_1))))))));
    var_0 = -1438f;
    var_0 = arg_1;
    var_0 = 1340f;
    var var_1 = Struct_2(!select(true, -2147483647i <= _wgslsmith_clamp_i32(u_input.a, u_input.d.x, 0i), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-arg_1))), -1327f, 0u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1362f * arg_1), _wgslsmith_f_op_f32(max(154f, arg_1)), true))))));
    return min(1u, _wgslsmith_div_u32(~31842u, u_input.c) | _wgslsmith_div_u32(1u, var_1.d & 4294967295u)) << ((u_input.c << (58210u % 32u)) % 32u);
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~56125u, 24378u, abs(u_input.c), u_input.c), vec4<u32>(arg_3 >> (arg_0 % 32u), ~u_input.c, firstLeadingBit(8420u), func_3(vec3<i32>(u_input.a, u_input.a, u_input.b), 188f, arg_1.x))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.c, arg_0, 1u, 47724u)), ~countOneBits(vec4<u32>(u_input.c, arg_0, arg_0, arg_0)), ~firstTrailingBit(vec4<u32>(42110u, u_input.c, arg_0, 4294967295u)))), ~select(vec4<u32>(_wgslsmith_mult_u32(18633u, 1u), 2266u >> (arg_3 % 32u), u_input.c, _wgslsmith_div_u32(u_input.c, arg_3)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(26525u, arg_0, arg_3, 0u), vec4<u32>(arg_3, 4053u, arg_3, u_input.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0, 4294967295u, 46274u), vec4<u32>(1u, u_input.c, u_input.c, 1u))), true | all(vec3<bool>(true, false, true))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -180f);
    var var_2 = Struct_2(!(!select(false, arg_1.x > 2147483647i, true)), var_1, -688f, var_0.x, _wgslsmith_f_op_f32(-143f * _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(min(1394f, var_1)))));
    var var_3 = var_0;
    var_2 = Struct_2(38624u != var_3.x, 122f, var_2.b, 0u, _wgslsmith_f_op_f32(-var_1));
    return arg_2;
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = Struct_4(!vec2<bool>(any(vec3<bool>(false, true, false)), true), ~select(1u, 6401u, true), -155f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f)) * _wgslsmith_f_op_f32(ceil(755f))), _wgslsmith_dot_vec2_i32(select(-arg_0.a.xx, vec2<i32>(u_input.b, arg_0.a.x), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true))), abs(-u_input.d.yx) | ~(-u_input.d.xz)));
    var var_1 = Struct_1(true, abs(_wgslsmith_add_i32(u_input.a, min(arg_0.a.x, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d)))));
    let var_2 = Struct_1(true, _wgslsmith_mult_i32(-(i32(-1i) * -u_input.b), abs(-1i)));
    return true;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: bool) -> Struct_1 {
    var var_0 = ~u_input.a;
    var_0 = -11800i;
    var_0 = ~u_input.b | (-reverseBits(-1i) >> ((~(~u_input.c) ^ 0u) % 32u));
    var_0 = 68095i;
    var_0 = _wgslsmith_clamp_i32(u_input.b, ~u_input.b, _wgslsmith_dot_vec3_i32(u_input.d, ~(vec3<i32>(u_input.a, u_input.b, u_input.b) << (~vec3<u32>(u_input.c, 67527u, 4707u) % vec3<u32>(32u)))));
    return Struct_1(arg_2, 1i);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(true, -func_2(4294967295u, abs(firstLeadingBit(vec4<i32>(arg_2.x, u_input.d.x, -6717i, -11641i))), Struct_3(vec4<i32>(2147483647i, arg_0.b, -13012i, arg_2.x)), ~_wgslsmith_mult_u32(arg_3.x, 61379u)).a.x);
    var var_1 = any(!select(select(!vec4<bool>(true, false, var_0.a, arg_0.a), vec4<bool>(true, true, arg_0.a, arg_0.a), !vec4<bool>(false, arg_0.a, true, arg_0.a)), !select(vec4<bool>(true, var_0.a, var_0.a, false), vec4<bool>(true, true, false, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, false)), all(vec2<bool>(true, arg_0.a))));
    return func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f), 1848f), 595f)))), !arg_0.a, !any(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = func_6(func_5(_wgslsmith_f_op_f32(-arg_2.x), arg_0.x, func_4(func_2(_wgslsmith_add_u32(u_input.c, 12420u), vec4<i32>(-5656i, 2147483647i, -5943i, 25302i), Struct_3(vec4<i32>(u_input.b, u_input.d.x, 1i, arg_1.b)), ~u_input.c))), u_input.b, -min(-u_input.d.yy, abs(vec2<i32>(-28322i, 0i))), _wgslsmith_clamp_vec2_u32(~(~countOneBits(vec2<u32>(4294967295u, u_input.c))), max(countOneBits(~vec2<u32>(4294967295u, 39189u)), ~select(vec2<u32>(41710u, u_input.c), vec2<u32>(u_input.c, u_input.c), arg_0.x)), countOneBits(min(vec2<u32>(u_input.c, 1u), vec2<u32>(117451u, 1u)))));
    return Struct_2(any(select(!vec4<bool>(arg_1.a, arg_1.a, var_0.a, false), select(vec4<bool>(arg_0.x, var_0.a, arg_1.a, false), vec4<bool>(arg_0.x, arg_0.x, arg_1.a, true), vec4<bool>(true, arg_1.a, true, true)), true)), arg_2.x, _wgslsmith_f_op_f32(1052f * -1723f), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(545f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(775f)))) - _wgslsmith_f_op_f32(ceil(arg_2.x))));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.c * 612f), _wgslsmith_f_op_f32(max(arg_0.b, arg_0.b)))), arg_2, false).b, arg_3.b), u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(max(-2147483647i, -arg_3.b), -2147483647i, abs(_wgslsmith_mod_i32(arg_3.b, 1i)), ~_wgslsmith_clamp_i32(-1i, -11784i, -7952i)), -(~vec4<i32>(arg_3.b, u_input.b, -1i, 2147483647i))));
    let var_1 = 29477u;
    let var_2 = arg_0;
    var var_3 = Struct_2(true, -949f, _wgslsmith_f_op_f32(max(var_2.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.e))))), u_input.c, -173f);
    let var_4 = func_2(~countOneBits(abs(reverseBits(var_1))), _wgslsmith_mult_vec4_i32(min(abs(vec4<i32>(var_0, var_0, -10057i, 13528i)), vec4<i32>(~u_input.d.x, var_0 & -2147483647i, _wgslsmith_mod_i32(u_input.a, u_input.b), var_0)), abs(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(-16606i, arg_3.b, 4681i, var_0)), firstLeadingBit(vec4<i32>(-1i, u_input.a, -2147483647i, -1i))))), Struct_3(vec4<i32>(_wgslsmith_add_i32(18674i, _wgslsmith_div_i32(-15714i, -21691i)), -1i, -arg_3.b, ~(-2147483647i))), 4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f * 512f))) + _wgslsmith_f_op_f32(var_3.e + 803f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<i32>(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(26971i, u_input.b), vec2<i32>(u_input.d.x, -26348i))), u_input.d.x, -2147483647i, u_input.b));
    let var_1 = vec4<bool>(true, _wgslsmith_div_i32(u_input.a, var_0.a.x) != _wgslsmith_mult_i32(var_0.a.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(49303i, u_input.a), var_0.a.wz))), true, true);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_7(func_1(var_1.wwx, Struct_1(var_1.x, var_0.a.x), vec2<f32>(-103f, 1707f)), select(vec3<bool>(false, var_1.x, true), vec3<bool>(false, var_1.x, true), var_1.www), true, func_6(Struct_1(var_1.x, 3486i), -3424i, var_0.a.yw, vec2<u32>(u_input.c, 0u)))))) + 1f), 665f, 1651f);
    let var_3 = var_0.a.x;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) * _wgslsmith_div_f32(var_2.x, var_2.x)) - 1499f))), _wgslsmith_f_op_f32(f32(-1f) * -865f), var_2.x, _wgslsmith_f_op_f32(ceil(690f)));
    let var_5 = true;
    var_0 = Struct_3(-vec4<i32>(u_input.d.x, -u_input.b, var_0.a.x, u_input.d.x));
    let var_6 = countOneBits(firstLeadingBit(_wgslsmith_mod_i32(~var_0.a.x, i32(-1i) * -5202i)));
    var var_7 = 26053u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c, u_input.c ^ 1u), 43155u), 1u, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)), max(-(vec3<i32>(var_6, 25200i, 0i) << (vec3<u32>(u_input.c, 18519u, u_input.c) % vec3<u32>(32u))) | u_input.d, var_0.a.zww), ~abs(vec4<u32>(countOneBits(1785u), select(23384u, u_input.c, var_5), 68904u, _wgslsmith_mult_u32(1u, 4294967295u))), -273f);
}

