struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(66532u, 4294967295u, 65752u);

var<private> global1: vec2<u32> = vec2<u32>(63113u, 1u);

var<private> global2: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(2147483647i, -45175i, 2147483647i), vec3<i32>(-1i, -1i, 4958i), vec3<i32>(40443i, 17814i, i32(-2147483648)), vec3<i32>(36906i, 1i, -9041i), vec3<i32>(i32(-2147483648), -57818i, 1i), vec3<i32>(2147483647i, 1i, -12648i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(0i, 40366i, 14874i), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(-47289i, 0i, 33615i), vec3<i32>(1i, 20131i, 2147483647i));

var<private> global3: u32 = 1u;

var<private> global4: vec2<u32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: f32) -> u32 {
    global4 = vec2<u32>(~(~global0.x >> (~global0.x % 32u)), _wgslsmith_div_u32(~(~(~global4.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 75110u) & vec3<u32>(5904u, 1u, global0.x), vec3<u32>(93053u, 47888u, 0u) ^ vec3<u32>(52130u, global4.x, global0.x))));
    let var_0 = Struct_1(select(select(!(!vec3<bool>(arg_0, false, true)), !vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, any(vec2<bool>(true, arg_0)), false)), select(vec3<bool>(any(vec4<bool>(arg_0, arg_0, true, arg_0)), any(vec4<bool>(true, false, arg_0, arg_0)), arg_0), vec3<bool>(false, arg_0, arg_0), all(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)))), !vec3<bool>(all(vec4<bool>(arg_0, true, arg_0, true)), any(vec4<bool>(arg_0, false, true, true)), false)));
    global3 = 1141u;
    let var_1 = Struct_1(var_0.a);
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(-951f + 1760f)))));
    return ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.x, global4.x, 31420u, global0.x), vec4<u32>(0u, 4294967295u, global1.x, global0.x) ^ vec4<u32>(20710u, 4294967295u, 0u, 1u), vec4<u32>(global4.x, 412u, global1.x, 2886u) & vec4<u32>(global0.x, 0u, global0.x, 4294967295u)), ~(vec4<u32>(global0.x, 11339u, global0.x, global0.x) | vec4<u32>(0u, global0.x, 29171u, global4.x))), ~_wgslsmith_div_u32(4294967295u, global1.x) << (34430u % 32u));
}

fn func_4(arg_0: u32, arg_1: f32) -> vec3<u32> {
    let var_0 = global0.x;
    let var_1 = -(~u_input.a);
    var var_2 = firstLeadingBit(2147483647i) | (_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, 6461i), var_1), select(abs(vec2<i32>(0i, 0i)), vec2<i32>(var_1, var_1), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))) | (_wgslsmith_clamp_i32(-16843i, var_1, _wgslsmith_div_i32(-2147483647i, 6245i)) & 1i));
    var var_3 = select(vec2<i32>(abs(u_input.a), 1i), firstLeadingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, 0i), firstTrailingBit(vec2<i32>(var_1, 12316i))) << (vec2<u32>(0u, 1u ^ global1.x) % vec2<u32>(32u))), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, false)))));
    let var_4 = Struct_1(select(vec3<bool>(arg_1 <= _wgslsmith_f_op_f32(arg_1 - 555f), true || any(vec4<bool>(true, true, true, false)), countOneBits(1u) != arg_0), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-275f * 1895f), arg_1)) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -885f) + _wgslsmith_div_f32(arg_1, arg_1))));
    return vec3<u32>(4294967295u, select(firstTrailingBit(~(~global1.x)), ~global4.x, any(!var_4.a.xx)), _wgslsmith_sub_u32(~global1.x << (0u % 32u), global1.x));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global0 = firstLeadingBit(~func_4(_wgslsmith_sub_u32(func_3(false, -110f), ~4294967295u), -497f));
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1642f, -969f)) * _wgslsmith_f_op_f32(-1524f - -655f))))));
    var var_1 = Struct_1(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), !(any(vec2<bool>(false, true)) && true)));
    var var_2 = Struct_1(select(!vec3<bool>(false, true, any(vec3<bool>(true, true, var_1.a.x))), select(!var_1.a, var_1.a, -1i < -u_input.a), any(vec3<bool>(true, true, true))));
    let var_3 = Struct_1(select(!select(!vec3<bool>(true, var_2.a.x, var_1.a.x), vec3<bool>(false, var_2.a.x, var_1.a.x), var_2.a.x), !vec3<bool>(all(vec2<bool>(true, true)), true, any(vec3<bool>(true, var_2.a.x, var_2.a.x))), true));
    return var_3;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 18928u, 1u), vec3<u32>(53080u, 46716u, global1.x)), global4.x), vec2<u32>(firstTrailingBit(~global1.x), global4.x)));
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(abs(global0.xx) | max(global0.yz, global0.zz), global0.xy), global4.x, global4.x, 91506u), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(27450u, global0.x), ~global1.x), ~global1.x, 4294967295u, ~func_3(var_0.a.x, arg_2)), ~countOneBits(~vec4<u32>(global0.x, global0.x, global4.x, 35587u)), ~(~vec4<u32>(4294967295u, 1u, 4294967295u, 44728u)) >> (~(~vec4<u32>(global4.x, global0.x, global1.x, 3620u)) % vec4<u32>(32u))));
    let var_2 = func_2((vec2<u32>(countOneBits(var_1.x), func_4(global4.x, arg_2).x) >> (~var_1.xy % vec2<u32>(32u))) << (global0.zz % vec2<u32>(32u)));
    global2 = array<vec3<i32>, 11>();
    let var_3 = -vec3<i32>(firstLeadingBit(countOneBits(~arg_0.x)), min(32459i, min(-3366i, abs(arg_0.x))), arg_0.x);
    return func_2(~(~min(var_1.yy, ~global0.xx)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    global1 = max(abs(vec2<u32>(abs(0u), 1u)) >> (abs(vec2<u32>(func_4(31398u, arg_2.x).x, global0.x)) % vec2<u32>(32u)), min(global0.xy, ~_wgslsmith_sub_vec2_u32(global0.xy, vec2<u32>(1u, global1.x))));
    let var_0 = countOneBits(_wgslsmith_sub_i32(u_input.a, ~2568i));
    global4 = firstTrailingBit(global0.zz);
    global0 = ~max(select(~vec3<u32>(global0.x, 7125u, 0u), vec3<u32>(firstTrailingBit(22396u), _wgslsmith_div_u32(global0.x, global1.x), 14169u), arg_0.a), func_4(global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_3, arg_2.x)), arg_3))));
    let var_1 = max(countOneBits(countOneBits(vec2<u32>(21768u, ~32466u))), reverseBits(min(vec2<u32>(global4.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 1u, 28730u), vec3<u32>(10400u, global1.x, 3670u))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global4.x), global0.xy), _wgslsmith_mod_u32(global1.x, global0.x)))));
    return Struct_1(arg_0.a);
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = -_wgslsmith_clamp_vec2_i32(arg_2.xx, arg_2.wx | arg_2.xz, reverseBits(vec2<i32>(arg_2.x, min(-4817i, -2147483647i))));
    var var_1 = select((var_0.x >> (global1.x % 32u)) < arg_2.x, true, !arg_1.x);
    global2 = array<vec3<i32>, 11>();
    global2 = array<vec3<i32>, 11>();
    global3 = _wgslsmith_sub_u32(_wgslsmith_add_u32(33341u, global4.x), ~_wgslsmith_add_u32(max(_wgslsmith_sub_u32(global0.x, 59986u), max(global0.x, 74931u)), global0.x));
    return ~select(global0.xx, global0.xy, arg_0.a.x) << (global0.zx % vec2<u32>(32u));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = func_7(func_6(Struct_1(!select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, true, false), false)), func_5(select(global2[_wgslsmith_index_u32(global1.x, 11u)] << (vec3<u32>(global4.x, global1.x, global0.x) % vec3<u32>(32u)), abs(global2[_wgslsmith_index_u32(0u, 11u)]), vec3<bool>(true, true, true)), func_2(~vec2<u32>(global4.x, 66078u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-821f)))), vec4<f32>(-1745f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-554f, 582f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1037f, 1892f, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(596f - -964f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-133f)))))), select(!select(vec3<bool>(true, false, arg_0), !vec3<bool>(arg_0, arg_0, true), false), !(!vec3<bool>(true, arg_0, arg_0)), !vec3<bool>(global4.x == 12354u, true, true)), _wgslsmith_add_vec4_i32(-vec4<i32>(0i, u_input.a, -24904i, -39369i) << ((vec4<u32>(0u, global1.x, 1u, global1.x) & vec4<u32>(global4.x, 30771u, 8391u, global4.x)) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, -1i, 2147483647i, u_input.a)) | firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (min(vec4<u32>(global4.x, global1.x, global4.x, 0u), vec4<u32>(0u, 4294967295u, 1u, global4.x)) % vec4<u32>(32u))));
    global4 = vec2<u32>(~2787u, global0.x);
    let var_1 = func_2(vec2<u32>(func_7(Struct_1(!vec3<bool>(arg_0, arg_0, true)), func_5(vec3<i32>(-22325i, 1i, u_input.a), func_5(global2[_wgslsmith_index_u32(global4.x, 11u)], Struct_1(vec3<bool>(arg_0, true, false)), 804f), -2337f).a, firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, 5331i))).x, ~1u));
    return _wgslsmith_f_op_f32(f32(-1f) * -772f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-738f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true)) + _wgslsmith_f_op_f32(f32(-1f) * -277f))) * -2126f);
    var var_1 = _wgslsmith_f_op_f32(-1262f - _wgslsmith_f_op_f32(-644f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(322f))))));
    var var_2 = func_5(vec3<i32>(u_input.a, -(~(~u_input.a)), -u_input.a | _wgslsmith_mult_i32(-19761i, u_input.a)), func_6(func_5(~(~global2[_wgslsmith_index_u32(global0.x, 11u)]), func_2(~vec2<u32>(1u, 70745u)), _wgslsmith_f_op_f32(round(-1627f))), Struct_1(func_5(select(global2[_wgslsmith_index_u32(global1.x, 11u)], vec3<i32>(-58632i, u_input.a, -14707i), false), Struct_1(vec3<bool>(false, false, false)), 1000f).a), vec4<f32>(_wgslsmith_f_op_f32(-1915f * _wgslsmith_f_op_f32(round(198f))), _wgslsmith_f_op_f32(-1137f * _wgslsmith_f_op_f32(var_0 - -847f)), -1119f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))), 389f);
    let var_3 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~(-vec2<i32>(u_input.a, -1i)) << (~global0.zz % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(max(vec2<i32>(u_input.a, 5836i), firstLeadingBit(vec2<i32>(u_input.a, u_input.a))), min(vec2<i32>(-45411i, -27847i), vec2<i32>(u_input.a, -12396i)))), ~(-(min(vec2<i32>(u_input.a, 0i), vec2<i32>(40897i, -59706i)) & -vec2<i32>(59076i, u_input.a))));
    let var_4 = select(~(~vec3<u32>(30450u, 4294967295u, 4294967295u) | (vec3<u32>(global0.x, global0.x, global1.x) >> ((vec3<u32>(31527u, 0u, 4294967295u) & vec3<u32>(43839u, global1.x, global0.x)) % vec3<u32>(32u)))), abs((vec3<u32>(1u, 22585u, global1.x) >> (reverseBits(vec3<u32>(59614u, 15693u, 51539u)) % vec3<u32>(32u))) << (~abs(vec3<u32>(global0.x, 2697u, global0.x)) % vec3<u32>(32u))), true);
    let var_5 = Struct_1(var_2.a);
    global2 = array<vec3<i32>, 11>();
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~(~vec4<u32>(1u, 1u, global0.x, 57054u)))));
}

