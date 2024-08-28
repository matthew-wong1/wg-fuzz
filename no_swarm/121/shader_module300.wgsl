struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c.d.x, _wgslsmith_f_op_f32(f32(-1f) * -506f), -895f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f)), _wgslsmith_f_op_f32(var_0.b.b.d.x * _wgslsmith_f_op_f32(select(2209f, 1052f, false))), _wgslsmith_f_op_f32(min(1847f, _wgslsmith_f_op_f32(-903f - -870f)))))));
    var_1 = vec3<f32>(-736f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_1.b.c.c, 967f)), _wgslsmith_f_op_f32(ceil(var_1.x))))))), -353f);
    let var_2 = _wgslsmith_div_f32(var_0.b.d.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(2685f)))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -335f) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.d.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1141f + 923f))));
    return arg_1.b.b;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = ~1u;
    var var_1 = any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, false, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), !(abs(2147483647i) == -u_input.a.x)));
    var var_2 = ((max(~u_input.a, firstTrailingBit(vec4<i32>(15797i, 47428i, 10481i, arg_0.a.x))) | countOneBits(firstLeadingBit(vec4<i32>(-14571i, u_input.a.x, arg_0.a.x, arg_0.a.x)))) & firstLeadingBit(-vec4<i32>(0i, -2147483647i, arg_0.a.x, -8002i))) << (((vec4<u32>(reverseBits(4294967295u), 25812u, var_0, _wgslsmith_clamp_u32(0u, arg_0.b.a.x, 0u)) & _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.b.a.x, arg_0.c.b, 4294967295u, arg_0.d.a.x), countOneBits(vec4<u32>(var_0, 4294967295u, arg_1.c.a.x, arg_1.d.b)))) >> (min(select(max(vec4<u32>(15192u, 90568u, var_0, 4294967295u), vec4<u32>(arg_0.c.b, 79502u, arg_0.d.a.x, u_input.d)), max(vec4<u32>(0u, 4294967295u, 1u, 44896u), vec4<u32>(4294967295u, var_0, var_0, 4294967295u)), true), ~select(vec4<u32>(4294967295u, 260u, arg_1.d.a.x, 0u), vec4<u32>(1u, u_input.b, arg_1.c.b, var_0), false)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = arg_1.b;
    let var_4 = select(vec3<bool>(true, !(_wgslsmith_f_op_f32(round(-888f)) != arg_0.c.c), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(544f, var_3.c))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.d.x - arg_0.b.c) * _wgslsmith_f_op_f32(-686f + -1870f))), select(vec3<bool>(true, false, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), vec3<bool>(!(arg_0.c.d.x < -229f), true, reverseBits(-1i) != abs(arg_0.e.x)), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, false)), false, any(vec2<bool>(true, true))), vec3<bool>(true, true, any(vec2<bool>(false, false)))), select(vec3<bool>(false, true, true), vec3<bool>(arg_0.b.c != 286f, false, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), select(vec3<bool>(all(vec2<bool>(true, false)), true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), false)));
    return select(!vec4<bool>(true, any(select(var_4.zz, vec2<bool>(false, var_4.x), var_4.x)), any(vec3<bool>(true, var_4.x, false)), var_4.x), select(select(vec4<bool>(var_4.x, var_4.x, true, var_4.x), vec4<bool>(var_4.x | true, false && var_4.x, false, select(true, var_4.x, false)), !select(vec4<bool>(var_4.x, var_4.x, false, false), vec4<bool>(false, var_4.x, true, var_4.x), vec4<bool>(true, false, var_4.x, var_4.x))), vec4<bool>(any(!vec3<bool>(var_4.x, false, false)), all(!vec4<bool>(var_4.x, var_4.x, true, var_4.x)), select(all(vec4<bool>(true, false, true, false)), false, true), var_4.x), var_4.x), var_4.x);
}

fn func_1(arg_0: bool, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1955f, -1930f)))) * _wgslsmith_f_op_f32(f32(-1f) * -979f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1029f)));
    var var_1 = all(vec4<bool>(false, var_0 > var_0, true, arg_0));
    var var_2 = u_input.a.x;
    var var_3 = vec4<bool>(arg_0, arg_0, any(func_3(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), func_2(1i, Struct_3(vec2<bool>(arg_0, false), Struct_2(u_input.a.yyy, Struct_1(vec2<u32>(24729u, u_input.d), 0u, -554f, vec2<f32>(2019f, var_0)), Struct_1(vec2<u32>(u_input.d, 4294967295u), 10502u, var_0, vec2<f32>(-497f, -362f)), Struct_1(vec2<u32>(u_input.b, u_input.d), u_input.b, -301f, vec2<f32>(var_0, -1407f)), u_input.a))), func_2(arg_1, Struct_3(vec2<bool>(false, arg_0), Struct_2(vec3<i32>(3753i, u_input.c, 75825i), Struct_1(vec2<u32>(u_input.d, u_input.d), u_input.b, -1878f, vec2<f32>(var_0, var_0)), Struct_1(vec2<u32>(0u, u_input.b), 0u, var_0, vec2<f32>(299f, 1129f)), Struct_1(vec2<u32>(48077u, u_input.d), u_input.b, var_0, vec2<f32>(535f, -576f)), u_input.a))), Struct_1(vec2<u32>(28482u, 66533u), u_input.d, var_0, vec2<f32>(var_0, var_0)), min(vec4<i32>(8238i, 28777i, arg_1, -56662i), u_input.a)), Struct_2(~u_input.a.xxx, Struct_1(vec2<u32>(u_input.b, u_input.d), 39145u, 160f, vec2<f32>(-1017f, 717f)), Struct_1(vec2<u32>(u_input.d, 0u), u_input.d, var_0, vec2<f32>(2622f, -166f)), Struct_1(vec2<u32>(29837u, u_input.d), u_input.b, -213f, vec2<f32>(-545f, 1086f)), vec4<i32>(26819i, u_input.a.x, 1i, -19497i)))), all(vec2<bool>(func_3(Struct_2(u_input.a.xxy, Struct_1(vec2<u32>(u_input.d, u_input.d), 36371u, -970f, vec2<f32>(var_0, var_0)), Struct_1(vec2<u32>(4294967295u, u_input.d), u_input.d, var_0, vec2<f32>(var_0, -306f)), Struct_1(vec2<u32>(u_input.d, u_input.d), 39u, var_0, vec2<f32>(var_0, 1000f)), u_input.a), Struct_2(u_input.a.xzw, Struct_1(vec2<u32>(0u, u_input.b), u_input.d, 1047f, vec2<f32>(-394f, var_0)), Struct_1(vec2<u32>(45183u, 28316u), 0u, var_0, vec2<f32>(var_0, 692f)), Struct_1(vec2<u32>(69124u, 20983u), u_input.b, var_0, vec2<f32>(-389f, 2580f)), vec4<i32>(u_input.c, 0i, arg_1, 1i))).x, !(u_input.a.x < u_input.a.x))));
    let var_4 = Struct_1(vec2<u32>(25799u, 41244u), _wgslsmith_dot_vec4_u32(~(countOneBits(vec4<u32>(u_input.d, 0u, u_input.b, 43116u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, u_input.d, u_input.b), vec4<u32>(0u, u_input.b, 4294967295u, u_input.d))), ~(~(~vec4<u32>(1u, u_input.b, 84443u, 3u)))), 483f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(579f, 381f) * vec2<f32>(-1968f, -612f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-448f, var_0) - vec2<f32>(var_0, 1000f))))))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~_wgslsmith_mod_vec2_u32(~(vec2<u32>(u_input.d, u_input.d) | vec2<u32>(4294967295u, 74686u)), vec2<u32>(min(u_input.d, u_input.d), _wgslsmith_mod_u32(77582u, u_input.d))), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, u_input.b ^ 60616u), vec2<u32>(u_input.d, func_1(false, u_input.a.x)), vec2<u32>(abs(u_input.b), _wgslsmith_mult_u32(u_input.d, 39596u))), abs(vec2<u32>(countOneBits(0u), abs(4294967295u)))), _wgslsmith_sub_u32(~71175u, ~(~u_input.b)) >= 1u);
    var_0 = max(vec2<u32>(_wgslsmith_sub_u32(76865u, 1028u >> (1u % 32u)), (countOneBits(var_0.x) >> (u_input.d % 32u)) << (~0u % 32u)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(85135u, 97397u), abs(countOneBits(vec2<u32>(0u, u_input.d)))), vec2<u32>(func_1(true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, 0i, 2147483647i), vec4<i32>(u_input.a.x, u_input.c, u_input.c, 0i))), ~44060u)));
    var_0 = firstLeadingBit(vec2<u32>(u_input.b ^ var_0.x, _wgslsmith_mod_u32(39574u, var_0.x)));
    var_0 = min(min(vec2<u32>(var_0.x, 14040u | var_0.x), ~reverseBits(vec2<u32>(u_input.b, 19047u))) ^ (~(~vec2<u32>(1u, var_0.x)) << (vec2<u32>(func_1(true, u_input.a.x), var_0.x) % vec2<u32>(32u))), reverseBits(abs(~vec2<u32>(1u, var_0.x)) >> (firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, u_input.d), vec2<u32>(u_input.d, 1u))) % vec2<u32>(32u))));
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -10450i, _wgslsmith_mult_i32(-55459i, _wgslsmith_clamp_i32(32659i, u_input.c, -1i)), _wgslsmith_dot_vec2_i32(max(u_input.a.zy, vec2<i32>(u_input.c, u_input.c)), vec2<i32>(-53668i, u_input.c))), -((vec4<i32>(u_input.c, -28121i, u_input.a.x, 96877i) ^ vec4<i32>(0i, -2147483647i, u_input.a.x, -1i)) & reverseBits(vec4<i32>(57956i, u_input.c, -29363i, u_input.a.x))), -firstTrailingBit(-u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1213f - -1907f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-188f))), 1f, _wgslsmith_div_f32(-322f, _wgslsmith_f_op_f32(f32(-1f) * -352f)))), min(min(50716u, 22638u), 4294967295u));
}

