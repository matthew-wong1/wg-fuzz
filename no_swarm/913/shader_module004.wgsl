struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

var<private> global1: array<vec3<i32>, 1>;

var<private> global2: i32;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: vec4<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> f32 {
    global0 = array<vec3<f32>, 25>();
    let var_0 = 1u;
    global1 = array<vec3<i32>, 1>();
    global2 = -25843i;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(738f * _wgslsmith_f_op_f32(f32(-1f) * -1952f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(711f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-593f - -253f) - _wgslsmith_f_op_f32(-1991f + _wgslsmith_f_op_f32(trunc(-2373f)))))));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global1 = array<vec3<i32>, 1>();
    global3 = vec3<bool>(true, true, true);
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global4.x), vec2<i32>(_wgslsmith_mod_i32(abs(abs(-1i)), global4.x), 2147483647i));
    var var_1 = Struct_4(global0[_wgslsmith_index_u32(arg_0.x | (arg_0.x | arg_0.x), 25u)], Struct_1(-1i, -888f, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global4.x, 25040i), -global4.xy), u_input.b.xx)), Struct_2(~countOneBits(u_input.c), Struct_1(countOneBits(30772i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1508f))), ~(-16683i)), Struct_1(~var_0, -1149f, 0i), vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(var_0, var_0)), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.x, 36896i), u_input.b.yx) | (7191i | var_0), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global4.x, u_input.b.x, var_0, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 3951i, u_input.a, u_input.a), vec4<i32>(u_input.a, 32904i, var_0, u_input.b.x))), 23135i | var_0), -((vec4<i32>(45306i, var_0, 2147483647i, -5046i) & vec4<i32>(u_input.b.x, 21523i, var_0, global4.x)) | vec4<i32>(1i, 1i, 0i, -18359i))), (i32(-1i) * -1i) & var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-679f)) * 621f)) * -270f));
    var var_2 = _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.c.a >> (~var_1.c.a % 32u), 74260u, 40656u, _wgslsmith_dot_vec2_u32(arg_0.xy, arg_0.yx))), select(~(vec4<u32>(arg_0.x, 17747u, u_input.c, var_1.c.a) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 25400u, 67209u), vec4<u32>(5416u, 4294967295u, u_input.c, 29169u)) % vec4<u32>(32u))), vec4<u32>(var_1.c.a << (arg_0.x % 32u), ~u_input.c, ~1u, ~var_1.c.a) | countOneBits(min(vec4<u32>(0u, 76583u, u_input.c, arg_0.x), vec4<u32>(arg_0.x, var_1.c.a, 3007u, 1u))), all(select(select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(global3.x, false, global3.x), vec3<bool>(global3.x, true, global3.x)), !vec3<bool>(global3.x, global3.x, false), all(vec4<bool>(global3.x, true, false, global3.x))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-247f)) * var_1.b.b) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-932f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b) - var_1.a.x), true)));
}

fn func_1() -> vec4<u32> {
    global2 = firstTrailingBit(-1i);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(1u, u_input.c, u_input.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(672f)) + _wgslsmith_f_op_f32(select(427f, 519f, global3.x))))))), -1547f, -2184f);
    global1 = array<vec3<i32>, 1>();
    let var_1 = Struct_2(firstTrailingBit(max(~u_input.c, countOneBits(1u))), Struct_1(_wgslsmith_div_i32(20321i, global4.x), -1590f, 1i), Struct_1(-45206i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), abs(_wgslsmith_dot_vec2_i32(~u_input.b.yy, vec2<i32>(global4.x, 1i)))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-48662i, 38123i, 0i, 2147483647i) >> (vec4<u32>(u_input.c, u_input.c, 56105u, u_input.c) % vec4<u32>(32u)), vec4<i32>(global4.x, global4.x, u_input.b.x, -1i)) & min(vec4<i32>(30923i, -48743i, global4.x, u_input.a), -vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, global4.x)), firstTrailingBit(vec4<i32>(u_input.a, global4.x, u_input.b.x, u_input.b.x)) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 58056u, 1u), vec4<u32>(u_input.c, u_input.c, u_input.c, 27865u)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(global4.yyz, vec3<i32>(global4.x, 2147483647i, 1368i)), vec3<i32>(-12284i, 2147483647i, global4.x), !global3.x), u_input.b), -global4.x << (min(firstTrailingBit(0u), select(u_input.c, u_input.c, true)) % 32u), _wgslsmith_dot_vec2_i32(u_input.b.yy, ~vec2<i32>(u_input.b.x, -6769i)), firstTrailingBit(reverseBits(2147483647i))));
    let var_2 = Struct_3(-_wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.a, var_1.d.x), select(var_1.e.wy, vec2<i32>(u_input.b.x, var_1.e.x), vec2<bool>(false, global3.x)) | firstTrailingBit(vec2<i32>(1442i, 2147483647i))));
    return vec4<u32>(abs(~(~var_1.a)), 7167u, var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(33711u, u_input.c & 1u, firstTrailingBit(40877u)), abs(firstTrailingBit(vec3<u32>(56894u, 30654u, 0u))))) & vec4<u32>(reverseBits(41650u), u_input.c, ~(~u_input.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c), vec3<u32>(41200u, var_1.a, 44643u)) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.a), ~(~vec2<u32>(u_input.c, 8535u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: u32, arg_3: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_1)));
    global1 = array<vec3<i32>, 1>();
    var var_1 = vec2<i32>(u_input.a, _wgslsmith_sub_i32(-u_input.b.x, -1i) & -21639i);
    global4 = vec4<i32>(u_input.b.x, _wgslsmith_add_i32(select(u_input.a, -20309i, all(select(global3.zx, global3.zx, true))), firstLeadingBit(max(u_input.a, 2147483647i)) << (arg_0.x % 32u)), _wgslsmith_sub_i32(0i, 1i), abs(11268i));
    var_1 = vec2<i32>(firstLeadingBit(~var_1.x), -52812i);
    return 32007u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(vec4<u32>(55654u, max(1u, u_input.c), 0u, reverseBits(~4294967295u)), 347f, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~u_input.c, abs(u_input.c), 69287u), ~(~vec4<u32>(u_input.c, u_input.c, u_input.c, 20313u))), reverseBits(countOneBits(vec4<u32>(47367u, 16029u, u_input.c, u_input.c))) | _wgslsmith_add_vec4_u32(func_1(), min(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 0u, u_input.c)))), Struct_1(0i & (u_input.a | -u_input.b.x), -921f, 8815i), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, _wgslsmith_mult_i32(-2147483647i, u_input.b.x)), -2147483647i, global4.x), _wgslsmith_f_op_f32(func_2()), u_input.a), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(1i, -u_input.b.x, global4.x << (u_input.c % 32u), global4.x)), select(firstTrailingBit(vec4<i32>(global4.x, u_input.b.x, -22996i, -33726i)), vec4<i32>(-1i, u_input.a, u_input.b.x, 1i) & ~vec4<i32>(u_input.b.x, global4.x, 1i, 17726i), select(vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(false, global3.x, false, global3.x), global3.x))), vec4<i32>(~countOneBits(~25850i), abs(-9109i), u_input.b.x, -(~firstLeadingBit(1i))));
    var var_1 = !vec4<bool>(any(!(!vec3<bool>(true, global3.x, true))), true, !(_wgslsmith_f_op_f32(var_0.b.b + -673f) <= var_0.c.b), all(global3.xy) | (_wgslsmith_clamp_i32(1i, 35734i, var_0.e.x) >= -28408i));
    var var_2 = Struct_3(-select(firstLeadingBit(u_input.b.zy), -min(vec2<i32>(43912i, u_input.b.x), vec2<i32>(var_0.e.x, u_input.a)), vec2<bool>(true, true)));
    var var_3 = Struct_3(_wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(var_2.a, vec2<i32>(-52417i, 55392i), abs(vec2<i32>(-67829i, u_input.a)))), global4.xw));
    let var_4 = -726f;
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_0.a, 25u)] + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-185f, -599f, 651f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_5.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4, _wgslsmith_f_op_f32(var_4 * 1492f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(253f, var_0.c.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4)) * _wgslsmith_f_op_f32(var_0.c.b - -163f)))), (_wgslsmith_mod_vec2_i32(var_2.a ^ u_input.b.zz, ~var_3.a) & -var_3.a) & global4.xx);
}

