struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec3<u32>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7>;

var<private> global1: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(10503u, 4294967295u, 1u), vec3<u32>(43095u, 284u, 65866u), vec3<u32>(4294967295u, 0u, 50011u), vec3<u32>(1u, 8317u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(91806u, 66796u, 0u), vec3<u32>(4294967295u, 0u, 21307u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: f32) -> u32 {
    var var_0 = Struct_5(vec3<bool>(4294967295u >= _wgslsmith_clamp_u32(max(u_input.a, 17374u), u_input.a, u_input.a), all(vec4<bool>(true, true, true, true)), true), Struct_3(arg_1.x, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 68717u)), _wgslsmith_mult_vec2_u32(vec2<u32>(29032u, u_input.a), vec2<u32>(u_input.a, u_input.a))), u_input.a << (u_input.a % 32u), abs(_wgslsmith_mult_u32(4294967295u, u_input.a))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1804f, 241f)))), 4294967295u, ~1u, 349f, arg_0.zz)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(23523u, u_input.a, u_input.a)) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) >> (~global1[_wgslsmith_index_u32(~53383u | u_input.a, 7u)] % vec3<u32>(32u)), true, Struct_3(556f, _wgslsmith_clamp_vec3_u32(abs(select(global1[_wgslsmith_index_u32(u_input.a, 7u)], global1[_wgslsmith_index_u32(u_input.a, 7u)], vec3<bool>(true, false, true))), abs(~global1[_wgslsmith_index_u32(u_input.a, 7u)]), ~(~global1[_wgslsmith_index_u32(1u, 7u)])), Struct_1(_wgslsmith_div_vec2_f32(arg_1, vec2<f32>(-161f, arg_2)), u_input.a, 1u | select(u_input.a, u_input.a, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))), vec2<i32>(-5237i, u_input.b))));
    var var_1 = _wgslsmith_f_op_f32(-973f * _wgslsmith_f_op_f32(trunc(711f)));
    let var_2 = _wgslsmith_div_u32(58828u, ~_wgslsmith_sub_u32(u_input.a, ~(~7248u)));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))));
    var_1 = -1618f;
    return 0u;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(1u, ~80046u), 4294967295u, arg_0.x, u_input.a >> (reverseBits(arg_0.x) % 32u)), vec4<u32>(arg_0.x & _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, arg_0.x), _wgslsmith_sub_u32(u_input.a, u_input.a)), ~max(abs(u_input.a), _wgslsmith_mult_u32(0u, 1u)), func_3(reverseBits(-u_input.c.xwx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1044f, -221f), vec2<f32>(-129f, -201f))), 806f), 0u));
    let var_1 = countOneBits(u_input.c.x) >> (~31287u % 32u);
    global0 = array<vec2<i32>, 7>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))));
    global0 = array<vec2<i32>, 7>();
    return Struct_3(_wgslsmith_f_op_f32(sign(1218f)), _wgslsmith_div_vec3_u32(global1[_wgslsmith_index_u32(26338u, 7u)], ~vec3<u32>(u_input.a, ~1u, 1u << (arg_0.x % 32u))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(480f, 918f)), abs(~(~arg_0.x)), u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-529f)), 475f)), vec2<i32>(u_input.c.x, var_1)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_4) -> vec4<f32> {
    global1 = array<vec3<u32>, 7>();
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a) >> (u_input.a % 32u), arg_1.b.x, 1u), _wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a, 28681u, u_input.a, arg_1.b.x)), firstTrailingBit(vec4<u32>(arg_1.b.x, u_input.a, arg_3.c.x, 4294967295u)))) & vec4<u32>(arg_3.c.x, arg_3.a.b, _wgslsmith_add_u32(_wgslsmith_div_u32(arg_3.a.c, 5292u), ~arg_3.c.x) & 4294967295u, 1u);
    global1 = array<vec3<u32>, 7>();
    global1 = array<vec3<u32>, 7>();
    var var_1 = func_2(~var_0);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), func_2(select(var_0, var_0, arg_0.x)).c.a.x, _wgslsmith_f_op_f32(floor(arg_1.c.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(709f, 664f, arg_1.a, -2371f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a.d, arg_1.a, arg_3.b, -402f), vec4<f32>(-903f, var_1.a, -296f, arg_1.c.d)))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a, var_1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.c.d, arg_3.b))), arg_1.a), vec4<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.c.a.x)))), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(step(-401f, var_1.a)))))));
}

fn func_1(arg_0: vec3<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -836f) >= _wgslsmith_f_op_f32(round(830f)), true), func_2(vec4<u32>(firstLeadingBit(4294967295u), ~u_input.a, 1u, 1u)), u_input.c.yzy, Struct_4(func_2(vec4<u32>(1u, u_input.a, u_input.a, 24866u)).c, 1f, select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 13405u), vec2<u32>(u_input.a, 4294967295u)), ~arg_0.zy, true), 356f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-867f, 292f, -382f, 454f), vec4<f32>(294f, -968f, 977f, 1000f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1898f, -1660f, 760f, -746f))))))), select(true, 1180f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(907f + -391f))), false)));
    global1 = array<vec3<u32>, 7>();
    global0 = array<vec2<i32>, 7>();
    global0 = array<vec2<i32>, 7>();
    global1 = array<vec3<u32>, 7>();
    return arg_0.zz;
}

fn func_5(arg_0: vec2<u32>) -> Struct_3 {
    global0 = array<vec2<i32>, 7>();
    global0 = array<vec2<i32>, 7>();
    var var_0 = countOneBits(max(select(arg_0, ~vec2<u32>(0u, 1u), any(vec2<bool>(false, false))), select(arg_0, ~func_2(vec4<u32>(arg_0.x, 4294967295u, 1u, arg_0.x)).b.xz, false)));
    global0 = array<vec2<i32>, 7>();
    var var_1 = true;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-454f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1312f + -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -541f))))), select(vec3<u32>(~44643u, _wgslsmith_sub_u32(arg_0.x, arg_0.x), _wgslsmith_mult_u32(0u, 0u)), vec3<u32>(var_0.x, ~36138u, abs(var_0.x)), vec3<bool>(true, true, true)) << (vec3<u32>(24795u, 0u, 0u) % vec3<u32>(32u)), Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1614f)), _wgslsmith_f_op_f32(-913f * 442f)), -2186f), ~u_input.a, 45574u & (_wgslsmith_dot_vec3_u32(vec3<u32>(16817u, u_input.a, 25189u), vec3<u32>(1u, u_input.a, 1u)) >> (var_0.x % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-544f + 112f))), vec2<i32>(_wgslsmith_mult_i32(-37610i, u_input.c.x), (u_input.b >> (4294967295u % 32u)) & -21669i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(select(vec3<bool>(true, true, all(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, any(vec4<bool>(true, false, true, false)), true), vec3<bool>(select(false, false, false), true, true)), all(vec4<bool>(false, false, true, true)) & all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)))), func_5(func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), ~vec3<u32>(0u, 0u, u_input.a), ~global1[_wgslsmith_index_u32(48274u, 7u)]))), vec3<u32>(31889u, _wgslsmith_sub_u32(~countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(func_5(vec2<u32>(u_input.a, u_input.a)).b.xx, vec2<u32>(u_input.a, u_input.a))), ~reverseBits(func_3(vec3<i32>(2147483647i, u_input.c.x, -27561i), vec2<f32>(347f, 447f), 861f))), false, func_5(~(~vec2<u32>(45662u, u_input.a))));
    var var_1 = vec3<u32>(var_0.b.c.b, ~0u, ~func_5(~vec2<u32>(1u, var_0.c.x)).c.b);
    var var_2 = _wgslsmith_add_u32(11527u, 1u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.e.a, _wgslsmith_f_op_f32(-1078f * 1000f), var_0.b.c.e.x >= 28895i))))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.b, _wgslsmith_clamp_vec4_i32(~abs(u_input.c), _wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(var_0.e.c.e.x, -u_input.c.x, _wgslsmith_mult_i32(47829i, var_0.e.c.e.x), ~u_input.b)), u_input.c), ~(~var_0.e.b.xz), 113137u, select(var_0.e.c.e, global0[_wgslsmith_index_u32(8863u, 7u)], !select(!var_0.a.zz, vec2<bool>(true, true), all(var_0.a))));
}

