struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: Struct_1 = Struct_1(1u);

var<private> global2: f32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_4) -> i32 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1035f)))))) + arg_1.a);
    global0 = array<u32, 27>();
    global2 = _wgslsmith_f_op_f32(max(157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a)))));
    global0 = array<u32, 27>();
    var var_0 = Struct_2(arg_2.b.e, vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.e + 702f) - _wgslsmith_div_f32(arg_1.a, 236f)) > _wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(select(arg_2.c.a.a, 299f, true)), true | arg_2.c.b.x)), all(vec2<bool>(!arg_2.c.a.b.x, arg_1.b.x)), arg_2.c.a.b.x, false), Struct_1(4294967295u));
    return _wgslsmith_dot_vec4_i32(select(max(~vec4<i32>(arg_2.a.x, u_input.a, -13863i, 48245i), vec4<i32>(arg_2.a.x, -13464i, min(u_input.b, u_input.b), i32(-1i) * -48963i)), abs(vec4<i32>(u_input.a, 0i, ~42522i, 727i)), select(select(arg_2.c.c.b, var_0.b, select(arg_2.b.c.b, vec4<bool>(true, false, true, false), true)), select(select(arg_2.b.a.b, arg_1.b, var_0.b.x), arg_2.c.a.b, any(var_0.b.zzx)), !(!vec4<bool>(arg_1.b.x, false, var_0.b.x, var_0.b.x)))), countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_2.a, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 2147483647i), arg_2.a)), firstLeadingBit(arg_2.a.x), _wgslsmith_mult_i32(11880i, firstLeadingBit(0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 66812i, arg_2.a.x, 0i), vec4<i32>(-81255i, arg_2.a.x, u_input.a, arg_2.a.x)))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1469f))), 172f))));
    let var_1 = i32(-1i) * -1i;
    global2 = _wgslsmith_f_op_f32(step(-1186f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0)))));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i & (-16536i << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 27u)], 27u)] % 32u)), u_input.a, u_input.a) & vec4<i32>(max(10749i, 1i | var_1), firstLeadingBit(u_input.a), u_input.a, (u_input.a >> (51104u % 32u)) | 1i), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-16151i, u_input.b), _wgslsmith_div_i32(var_1, var_1), u_input.b, func_3(vec4<u32>(37368u, 23238u, 40258u, 1u), Struct_2(255f, vec4<bool>(false, true, false, true), Struct_1(4294967295u)), Struct_4(vec2<i32>(var_1, var_1), Struct_3(Struct_2(-358f, vec4<bool>(false, true, false, true), Struct_1(global1.a)), vec3<bool>(false, true, true), Struct_2(-722f, vec4<bool>(false, false, false, true), Struct_1(0u)), 0u, var_0), Struct_3(Struct_2(var_0, vec4<bool>(true, false, false, true), Struct_1(4294967295u)), vec3<bool>(false, false, true), Struct_2(var_0, vec4<bool>(true, true, true, true), Struct_1(15762u)), 4294967295u, -1411f)))), vec4<i32>(var_1, var_1, -var_1, _wgslsmith_mult_i32(u_input.b, var_1))), vec4<i32>(-u_input.a, select(u_input.b, 1i, select(true, false, true)), -u_input.a, abs(u_input.a))));
    var var_3 = Struct_1(select(4294967295u, global0[_wgslsmith_index_u32(54219u, 27u)], all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)))));
    return Struct_1(72225u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>) -> f32 {
    var var_0 = 40280u;
    var var_1 = _wgslsmith_clamp_i32(0i, firstTrailingBit(-_wgslsmith_mult_i32(1i, -u_input.b)), _wgslsmith_mod_i32(~(~u_input.a), u_input.b));
    var var_2 = vec3<u32>(_wgslsmith_add_u32(44470u, arg_1.a.c.a), global1.a >> (firstLeadingBit(_wgslsmith_sub_u32(51096u, global1.a) << ((u_input.c ^ 69465u) % 32u)) % 32u), reverseBits(max(43505u, arg_0.a)));
    var var_3 = !(false | any(vec4<bool>(arg_1.a.b.x | arg_1.a.b.x, arg_1.b.x, !arg_1.a.b.x, true)));
    var_2 = select(min(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(arg_1.a.c.a, 8141u, global0[_wgslsmith_index_u32(4294967295u, 27u)])), vec3<u32>(1u, 38965u, arg_0.a) >> (vec3<u32>(51598u, 7083u, 60085u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 12302u, 0u) >> (vec3<u32>(u_input.c, global1.a, var_2.x) % vec3<u32>(32u))) | ~vec3<u32>(0u, global1.a, 0u), vec3<u32>(27441u, var_2.x, _wgslsmith_add_u32(~var_2.x, 1u))), firstLeadingBit(~(~vec3<u32>(arg_1.c.c.a, 9890u, 1u) | vec3<u32>(0u, 40724u, var_2.x))), all(select(select(arg_1.c.b.wx, vec2<bool>(false, arg_1.b.x), arg_1.b.x), select(arg_1.c.b.xy, arg_1.b.yz, arg_1.b.x), vec2<bool>(false, false))) & ((u_input.b <= _wgslsmith_clamp_i32(22942i, 2147483647i, u_input.a)) && all(!vec3<bool>(arg_1.a.b.x, arg_1.c.b.x, false))));
    return 1290f;
}

fn func_1() -> bool {
    let var_0 = 52041i;
    let var_1 = _wgslsmith_f_op_f32(func_4(func_2(), Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(157f, 1106f, false)), -880f), vec4<bool>(true, true, true, true), func_2()), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), Struct_2(-107f, vec4<bool>(true, true, true, true), Struct_1(~global1.a)), 21242u, -295f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(760f, -1000f, 233f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(470f, 533f, 261f) + vec3<f32>(879f, -734f, 185f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(842f, -738f, -1057f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -480f, 1356f))))))));
    let var_2 = abs(~(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.a, global0[_wgslsmith_index_u32(35808u, 27u)]), vec2<u32>(global0[_wgslsmith_index_u32(0u, 27u)], 4294967295u)), vec2<u32>(21238u, 4294967295u)) >> (vec2<u32>(22279u, global0[_wgslsmith_index_u32(global1.a, 27u)]) % vec2<u32>(32u))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1638f + -334f) - _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1))))));
    global0 = array<u32, 27>();
    return any(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_1(), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 1531u, u_input.c), ~vec4<u32>(4294967295u, u_input.c, 4294967295u, global0[_wgslsmith_index_u32(0u, 27u)])), 27u)] >= 0u, true, any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), all(!vec3<bool>(u_input.a <= 28990i, false, all(vec4<bool>(false, true, false, true)))));
    var var_1 = _wgslsmith_add_i32(50057i, _wgslsmith_sub_i32(0i, u_input.b));
    var var_2 = Struct_1(_wgslsmith_div_u32(52451u ^ _wgslsmith_add_u32(max(4294967295u, global0[_wgslsmith_index_u32(u_input.c, 27u)]), _wgslsmith_div_u32(global1.a, 15950u)), _wgslsmith_mod_u32(countOneBits(reverseBits(u_input.c)), ~(~4314u))));
    var var_3 = any(vec3<bool>(all(select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, true)), select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), true), select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(true, false, false, false), false))), false, ~global0[_wgslsmith_index_u32(global1.a, 27u)] > ~16206u));
    var var_4 = u_input.b;
    var_4 = u_input.a;
    var var_5 = 0i != countOneBits(u_input.b);
    let var_6 = Struct_2(-816f, vec4<bool>(true | (any(var_0.xx) || var_0.x), true, true, all(var_0)), Struct_1(_wgslsmith_div_u32(110445u, global1.a)));
    let var_7 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_2.a, global1.a, global1.a), vec4<u32>(81251u, var_2.a, global0[_wgslsmith_index_u32(4572u, 27u)], 1u)), global0[_wgslsmith_index_u32(global1.a, 27u)], abs(4294967295u)), select(_wgslsmith_mult_vec3_u32(~vec3<u32>(37430u, var_6.c.a, var_2.a), ~vec3<u32>(global0[_wgslsmith_index_u32(29479u, 27u)], u_input.c, 0u)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(global1.a, 69484u, global1.a), vec3<u32>(7637u, 56290u, 4294967295u), false), max(vec3<u32>(4294967295u, var_6.c.a, 0u), vec3<u32>(1u, var_2.a, 4294967295u))), var_0)) | countOneBits(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(0u, 27u)], 1u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(var_2.a, 0u, 4294967295u), vec3<u32>(var_6.c.a, 0u, 63962u))) & ~max(vec3<u32>(4294967295u, var_2.a, u_input.c), vec3<u32>(22521u, 0u, var_6.c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(var_7.yy, ~max(vec2<u32>(0u, u_input.c), var_7.yy)) ^ vec2<u32>(abs(~1u), 4294967295u | ~global1.a), global0[_wgslsmith_index_u32(~var_7.x, 27u)]);
}

