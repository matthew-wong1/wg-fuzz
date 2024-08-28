struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(max(~vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(13852u, 4294967295u, _wgslsmith_clamp_u32(69390u, 0u, 678u))) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8455u, 189u, 29542u, 34608u), vec4<u32>(0u, 16260u, 50501u, 31197u)), ~1u, 34073u), -_wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), -vec3<i32>(1i, u_input.a.x, -2147483647i), u_input.a)), ((~vec4<i32>(-9085i, -1i, -2446i, u_input.a.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) ^ vec4<i32>(1i, -2147483647i, 2147483647i, ~u_input.a.x)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_sub_i32(~2147483647i, u_input.a.x));
    let var_1 = select(!(!vec3<bool>(any(vec3<bool>(true, false, true)), all(vec2<bool>(false, false)), false)), vec3<bool>((true & all(vec4<bool>(false, false, true, false))) | (any(vec4<bool>(false, true, true, false)) || all(vec2<bool>(true, false))), !all(vec2<bool>(true, true)), true), vec3<bool>(false, all(vec4<bool>(false, false, any(vec3<bool>(false, false, false)), true)), false));
    let var_2 = Struct_1(~(~(var_0.a ^ _wgslsmith_sub_vec3_u32(var_0.a, vec3<u32>(1u, var_0.a.x, var_0.a.x)))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(abs(u_input.a | vec3<i32>(u_input.a.x, 16011i, -2147483647i)), countOneBits(vec3<i32>(1i, u_input.a.x, 37489i))), var_0.c.yzy), var_0.c, -firstTrailingBit(-_wgslsmith_div_i32(u_input.a.x, -30011i)));
    var var_3 = var_1;
    var var_4 = var_2;
    return ~firstTrailingBit(i32(-1i) * -1i);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(vec3<u32>(21524u, ~4294967295u >> (_wgslsmith_clamp_u32(arg_0, 15197u, ~arg_1.a.x) % 32u), select(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0), arg_2.a.xz)), 32737u >> (1u % 32u), all(vec3<bool>(true, true, true)))), -firstTrailingBit(-(arg_2.b | vec3<i32>(arg_1.b.x, -32129i, arg_2.c.x))), abs(-min(vec4<i32>(u_input.a.x, -2028i, 1i, u_input.a.x) << (vec4<u32>(0u, arg_1.a.x, arg_0, arg_2.a.x) % vec4<u32>(32u)), abs(vec4<i32>(20864i, -58578i, -2147483647i, u_input.a.x)))), arg_2.c.x);
    var var_1 = arg_1;
    var var_2 = Struct_1(var_1.a, -arg_1.c.zwy, -select(arg_2.c >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 716u, 1u, var_0.a.x), vec4<u32>(var_1.a.x, 1u, 33960u, 39700u)) % vec4<u32>(32u)), vec4<i32>(-3312i, _wgslsmith_mult_i32(u_input.a.x, -31743i), 1i, 58176i), vec4<bool>(true, true, true, true)), 2147483647i);
    var_2 = Struct_1(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(min(arg_2.a.x, 50171u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 6281u, 0u, 9817u), vec4<u32>(var_0.a.x, 4294967295u, var_1.a.x, 0u))), 0u), var_0.a.x, firstTrailingBit(var_1.a.x)), select(arg_2.c.wxy, vec3<i32>(firstLeadingBit(~13145i), -30146i, -1i), vec3<bool>(true, true, true)), vec4<i32>(_wgslsmith_mod_i32(~0i, var_0.d), abs(_wgslsmith_add_i32(-5014i, -25308i) & var_1.b.x), arg_1.c.x, var_2.d ^ var_2.b.x), arg_2.c.x);
    var var_3 = var_1.c.x;
    return _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_add_vec3_u32(arg_1.a, max(vec3<u32>(0u, 7321u, arg_0), vec3<u32>(arg_1.a.x, arg_2.a.x, 1u)))), vec3<u32>(~var_0.a.x, arg_1.a.x, var_1.a.x)), ~(~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.x, 34474u, var_0.a.x), vec3<u32>(var_2.a.x, var_0.a.x, 7409u)), vec3<u32>(17558u, 23560u, var_1.a.x) >> (var_2.a % vec3<u32>(32u)))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(func_4(arg_1.x, Struct_1(vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_sub_u32(arg_1.x, 0u), ~arg_1.x), (u_input.a ^ u_input.a) | u_input.a, -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), _wgslsmith_div_i32(abs(u_input.a.x), -2147483647i)), Struct_1(arg_1, _wgslsmith_mult_vec3_i32(u_input.a, -u_input.a), vec4<i32>(~(-3351i), ~1i, func_3(), -10521i), ~(-u_input.a.x))), u_input.a, ~vec4<i32>(u_input.a.x, _wgslsmith_add_i32(abs(-44963i), 1i), ~_wgslsmith_mult_i32(7373i, 21115i), _wgslsmith_add_i32(~(-33162i), -24223i)), u_input.a.x);
    let var_2 = u_input.a.x;
    var var_3 = Struct_1(vec3<u32>(21332u, firstTrailingBit(arg_1.x), 4294967295u), var_1.b, ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-8695i, 2147483647i), var_1.c.xx), 0i, ~(-20710i), func_3()) << ((reverseBits(max(vec4<u32>(4294967295u, 0u, arg_1.x, 0u), vec4<u32>(0u, arg_1.x, 7621u, 13160u))) >> ((abs(vec4<u32>(arg_1.x, arg_1.x, var_1.a.x, 89882u)) | ~vec4<u32>(var_1.a.x, 14973u, var_1.a.x, 72215u)) % vec4<u32>(32u))) % vec4<u32>(32u)), -2147483647i);
    let var_4 = Struct_1(vec3<u32>(4294967295u, countOneBits(_wgslsmith_add_u32(7430u, 29687u)), reverseBits(3856u)) << (vec3<u32>(~_wgslsmith_sub_u32(var_3.a.x, 1u), 18443u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(59602u, var_3.a.x), arg_1.zy))) % vec3<u32>(32u)), var_1.c.zxw, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(select(var_1.c.x, 12254i, true), var_1.c.x, _wgslsmith_div_i32(1i, var_1.c.x), _wgslsmith_clamp_i32(var_1.d, 52779i, var_2)), _wgslsmith_add_vec4_i32(~var_3.c, var_1.c), _wgslsmith_clamp_vec4_i32(reverseBits(var_3.c), countOneBits(vec4<i32>(var_2, u_input.a.x, var_2, 1i)), var_1.c)), -1i);
    return var_1;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> u32 {
    let var_0 = vec3<u32>(1u, 1u, 1u);
    var var_1 = func_2(arg_0, _wgslsmith_mult_vec3_u32(max(~(vec3<u32>(var_0.x, var_0.x, 55123u) >> (var_0 % vec3<u32>(32u))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x), var_0))), _wgslsmith_div_vec3_u32(vec3<u32>(6882u, 24894u, var_0.x), vec3<u32>(0u, var_0.x, 4294967295u) | var_0) & min(vec3<u32>(var_0.x, var_0.x, 67856u), var_0)));
    let var_2 = _wgslsmith_f_op_f32(arg_0 + arg_0);
    var var_3 = -(~(~var_1.c.x) | -1i) > -1i;
    var_3 = select(arg_0 == _wgslsmith_f_op_f32(-arg_0), -249f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(464f + arg_0))) + var_2), firstLeadingBit(u_input.a.x) == -22366i);
    return _wgslsmith_mod_u32(var_1.a.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_u32(~func_1(293f, u_input.a.zy) ^ select(~50661u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(63286u, 13375u, 85839u)), true), 0u);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(-1640f, -364f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2756f))), _wgslsmith_f_op_f32(abs(-611f)), 127f);
    var var_2 = Struct_1(func_2(var_1.x, _wgslsmith_mult_vec3_u32(~select(vec3<u32>(var_0, var_0, 1u), vec3<u32>(var_0, var_0, 1u), true), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(9920u, 26740u, var_0), vec3<u32>(1809u, var_0, 50600u), vec3<u32>(var_0, 35895u, 9369u)))).a, abs(func_2(_wgslsmith_f_op_f32(-var_1.x), vec3<u32>(_wgslsmith_div_u32(var_0, 16645u), var_0, 31902u)).c.yxz), max(countOneBits(vec4<i32>(1i, u_input.a.x, u_input.a.x, _wgslsmith_mod_i32(-1i, 1i))), vec4<i32>(-1i) * -abs(vec4<i32>(-1i, -1i, -66021i, u_input.a.x))), u_input.a.x);
    var var_3 = Struct_1(~((~var_2.a ^ vec3<u32>(var_2.a.x, var_2.a.x, var_0)) | reverseBits(~vec3<u32>(var_2.a.x, var_2.a.x, var_0))), -var_2.b, -_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -8978i, 1437i), ~var_2.c), ~var_2.c), ~(-31047i) << (select(~0u, firstTrailingBit(20491u), all(vec4<bool>(true, true, false, true))) % 32u));
    var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - var_1.x), vec3<u32>(var_2.a.x, firstTrailingBit(var_0), var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(_wgslsmith_sub_i32(var_3.d, u_input.a.x), -var_3.d, 1i, u_input.a.x), var_2.c, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), true)), _wgslsmith_div_u32(~0u, _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0, 66638u) >> (var_3.a.x % 32u), var_2.a.x)), -min(vec3<i32>(var_2.b.x, 0i, 1i), vec3<i32>(-var_2.c.x, 1i, _wgslsmith_sub_i32(var_2.b.x, var_3.b.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_3.a.x, _wgslsmith_dot_vec2_u32(var_2.a.zy, var_3.a.xy) << (1u % 32u)), max(func_4(firstTrailingBit(var_2.a.x), func_2(-1460f, vec3<u32>(var_2.a.x, var_2.a.x, 0u)), Struct_1(vec3<u32>(4294967295u, var_3.a.x, var_2.a.x), u_input.a, var_2.c, -2147483647i)).zy, var_2.a.yy)), vec3<u32>(1u, ~1u, var_2.a.x) & _wgslsmith_sub_vec3_u32(func_4(var_0, Struct_1(vec3<u32>(var_0, 28527u, var_0), vec3<i32>(0i, var_3.d, u_input.a.x), vec4<i32>(var_3.b.x, -15693i, u_input.a.x, 0i), var_2.c.x), Struct_1(vec3<u32>(4294967295u, 1u, 9614u), vec3<i32>(var_2.d, u_input.a.x, -2147483647i), vec4<i32>(-2147483647i, var_2.d, var_3.d, u_input.a.x), 0i)) << (firstTrailingBit(vec3<u32>(var_0, 53232u, 15751u)) % vec3<u32>(32u)), func_2(_wgslsmith_f_op_f32(trunc(var_1.x)), vec3<u32>(17809u, var_0, 35292u)).a));
}

