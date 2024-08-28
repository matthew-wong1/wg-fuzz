struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> vec4<f32> {
    var var_0 = ~(~(-_wgslsmith_div_i32(2147483647i, 1i)));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-542f, _wgslsmith_f_op_f32(select(852f, -2106f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-533f, -154f)), _wgslsmith_f_op_f32(arg_0.c.x * -814f), true)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.d.x, 7u)]), 1486f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 7u)], 447f)))), global0[_wgslsmith_index_u32(18739u, 7u)]), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c.x)), -1548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_0.d.x, 7u)]))), arg_0.c.x))));
}

fn func_3(arg_0: bool, arg_1: i32) -> u32 {
    let var_0 = Struct_1(~vec4<u32>(36464u, ~(~1u), 4294967295u, min(3202u, _wgslsmith_mod_u32(20314u, 4294967295u))), !select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(arg_0, true)), !vec2<bool>(arg_0, arg_0), any(vec4<bool>(arg_0, true, arg_0, true))), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), arg_0), true), vec3<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 32615u, 1u), vec4<u32>(4294967295u, 4777u, 4294967295u, 0u))), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 7u)] + global0[_wgslsmith_index_u32(0u, 7u)]) + 1f) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-285f, 1262f)))), 2538f), countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(65807u, 97124u), vec2<u32>(1u, 1u)), _wgslsmith_mod_u32(1u, 37048u), ~7080u & firstTrailingBit(0u), 1u)), vec4<u32>(1u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 7679u), 4800u), ~(~_wgslsmith_mod_u32(1u, 12121u)), ~firstTrailingBit(max(1u, 12881u))));
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    var var_1 = select(vec3<bool>(true, false, _wgslsmith_sub_u32(~var_0.d.x, var_0.e.x) > var_0.a.x), vec3<bool>(any(!select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0, false, var_0.b.x, true), vec4<bool>(true, false, true, false))), !(!arg_0 == true), false), !(!vec3<bool>(arg_0, var_0.c.x != global0[_wgslsmith_index_u32(var_0.a.x, 7u)], var_0.b.x & true)));
    let var_2 = u_input.a.zy;
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(20950u, var_0.e.x, var_0.a.x, (var_0.d.x >> (var_0.a.x % 32u)) & var_0.e.x), countOneBits(vec4<u32>(abs(var_0.a.x), 555u, ~1u, ~1u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(13727u, 7u)], -438f, 408f, global0[_wgslsmith_index_u32(63400u, 7u)]))))), 11237i);
    global0 = array<f32, 7>();
    var var_1 = vec2<i32>(var_0.b, abs(-1i));
    var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xz, _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(var_0.b, -2147483647i) | vec2<i32>(-42678i, arg_2)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, -16452i), ~vec2<i32>(var_0.b, u_input.a.x)))), _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, var_1.x, arg_2), -(~vec3<i32>(0i, 0i, arg_2)))));
    return Struct_1(select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~(~54667u), 1u, 1u), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x, !arg_0.x, select(arg_0.x, arg_0.x, arg_0.x), true), arg_0.x)), arg_0.zx, _wgslsmith_f_op_vec3_f32(-arg_1.zww), min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(3499u, 4294967295u, 34903u, 1u), ~vec4<u32>(0u, 26025u, 0u, 4294967295u), select(vec4<u32>(53545u, 18969u, 14056u, 80848u), vec4<u32>(43163u, 1u, 11269u, 5648u), vec4<bool>(arg_0.x, false, false, true))), vec4<u32>(0u, 70802u << (1u % 32u), _wgslsmith_div_u32(84007u, 38539u), 0u)) | ~vec4<u32>(1u, 0u, ~1u, ~50229u), vec4<u32>(1u, _wgslsmith_clamp_u32(4294967295u, abs(28936u), _wgslsmith_mod_u32(0u << (0u % 32u), ~90267u)), func_3(arg_0.x, -2147483647i), 18525u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_2 {
    global0 = array<f32, 7>();
    var var_0 = arg_1.c.x;
    let var_1 = ~(~(arg_1.e.wyy >> (max(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 24323u, 49523u), arg_1.e.xxx), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.x, arg_2, arg_1.e.x), arg_1.e.wwy)) % vec3<u32>(32u))));
    let var_2 = arg_1.a.yw;
    var var_3 = !(!any(vec4<bool>(true, false && arg_1.b.x, true, select(arg_0.b.x, arg_0.b.x, arg_1.b.x))));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * -411f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 7u)]))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3)))))), u_input.a.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = !(!func_2(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a - vec4<f32>(1168f, global0[_wgslsmith_index_u32(44199u, 7u)], arg_1.a.x, global0[_wgslsmith_index_u32(0u, 7u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], 717f, global0[_wgslsmith_index_u32(28222u, 7u)], arg_1.a.x))), _wgslsmith_div_i32(arg_0.x | u_input.b, u_input.a.x)).b);
    let var_1 = min(_wgslsmith_sub_i32(u_input.a.x, min(arg_1.b, arg_0.x) & u_input.a.x), _wgslsmith_mod_i32(2147483647i, arg_1.b));
    var var_2 = u_input.a.x;
    let var_3 = _wgslsmith_div_vec4_i32(-abs(vec4<i32>(var_1, arg_1.b, u_input.a.x, 14027i) >> (vec4<u32>(4294967295u, 161u, 0u, 0u) % vec4<u32>(32u))), firstTrailingBit(select(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_1.b, -5923i, arg_0.x, -1i), firstTrailingBit(vec4<i32>(4616i, 92926i, arg_0.x, arg_1.b))), vec4<i32>(~1i, firstLeadingBit(1i), min(u_input.b, -26002i), arg_0.x), select(!vec4<bool>(var_0.x, true, true, var_0.x), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), true)))));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23002u, 7u)]), _wgslsmith_f_op_f32(-arg_1.a.x))) - _wgslsmith_div_vec2_f32(arg_1.a.wx, arg_1.a.xw)), vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 7u)], arg_1.a.x, !(!var_0.x))), 2179f));
    return Struct_1(~(~(~(~vec4<u32>(4294967295u, 4294967295u, 1u, 16983u)))), select(select(vec2<bool>(all(vec4<bool>(false, false, false, var_0.x)), all(vec2<bool>(var_0.x, true))), vec2<bool>(true, true), var_0.x), vec2<bool>(!(false | var_0.x), var_0.x), !select(vec2<bool>(true, false), func_2(vec3<bool>(var_0.x, false, true), vec4<f32>(-279f, 930f, var_4.x, arg_1.a.x), arg_0.x).b, func_2(vec3<bool>(false, var_0.x, var_0.x), vec4<f32>(arg_1.a.x, var_4.x, arg_1.a.x, 104f), var_3.x).b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_1.a.zwx)) + vec3<f32>(var_4.x, arg_1.a.x, -685f))))), _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(1u), func_2(!vec3<bool>(var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(select(arg_1.a, arg_1.a, vec4<bool>(var_0.x, false, true, var_0.x))), var_3.x).e.x, abs(_wgslsmith_clamp_u32(1u, 0u, 0u)), 28027u), reverseBits(~vec4<u32>(58183u, 0u, 4294967295u, 97183u))), vec4<u32>(~31226u, ~_wgslsmith_div_u32(~4294967295u, 1u), _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(~75272u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(51172u, 4294967295u, 4294967295u)))), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]);
    var var_1 = ~4294967295u;
    var var_2 = -u_input.a.x <= _wgslsmith_sub_i32(-u_input.a.x, -7244i);
    let var_3 = ~firstLeadingBit(~9707u);
    let var_4 = func_5(u_input.a, func_4(func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec4<u32>(var_3, var_3, var_3, 4294967295u), vec2<bool>(false, true), vec3<f32>(global0[_wgslsmith_index_u32(var_3, 7u)], 836f, global0[_wgslsmith_index_u32(85663u, 7u)]), vec4<u32>(28623u, 3331u, 9180u, var_3), vec4<u32>(4294967295u, 19892u, var_3, 4294967295u)), true, true)), -14344i), func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -2291f, -777f, -593f))), ~0i), ~0u, var_0));
    var var_5 = -_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(abs(-87652i), 0i), 3409i, 10752i, _wgslsmith_add_i32(-30873i, ~u_input.a.x)), -(-vec4<i32>(-10290i, -6169i, -2147483647i, 0i) & abs(vec4<i32>(u_input.b, u_input.b, -7647i, 1534i))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(47750i), var_0, u_input.a.x);
}

