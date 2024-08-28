struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 19489u, 8052u, 4294967295u);

var<private> global2: array<i32, 23> = array<i32, 23>(2147483647i, -9031i, -15645i, 0i, -48341i, -67850i, i32(-2147483648), 2147483647i, 1i, 0i, -12134i, 48952i, 0i, 0i, -1i, 2147483647i, -14561i, -27411i, 1i, 17099i, -51594i, -53843i, 1i);

var<private> global3: array<u32, 24> = array<u32, 24>(4294967295u, 41779u, 0u, 34615u, 4166u, 0u, 41952u, 0u, 15757u, 4294967295u, 6729u, 39754u, 0u, 0u, 29459u, 58428u, 1u, 39131u, 1u, 27441u, 10929u, 38058u, 54080u, 15472u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    global0 = array<vec3<i32>, 29>();
    let var_0 = firstTrailingBit(~(~80784u));
    var var_1 = abs(16897i);
    return !(!vec4<bool>(!any(vec4<bool>(true, true, false, false)), 1i <= _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(2147483647i, -15174i, -39618i)), true, true));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    global0 = array<vec3<i32>, 29>();
    let var_0 = global2[_wgslsmith_index_u32(~(~(~global3[_wgslsmith_index_u32(u_input.c, 24u)])), 23u)];
    global3 = array<u32, 24>();
    global1 = firstLeadingBit(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, u_input.c, 4294967295u), arg_2.xzw | u_input.d.xwx), 1u, max(3778u, global3[_wgslsmith_index_u32(6692u, 24u)] | global1.x), _wgslsmith_clamp_u32(~arg_1.c, countOneBits(42288u), global1.x)));
    global3 = array<u32, 24>();
    return _wgslsmith_mod_i32(u_input.b.x, global2[_wgslsmith_index_u32(abs(34481u), 23u)]);
}

fn func_2() -> Struct_2 {
    global3 = array<u32, 24>();
    var var_0 = Struct_4(u_input.d.zyy, vec2<u32>(u_input.c, 1u), Struct_2(func_4(func_3(), Struct_1(u_input.d.x, all(vec4<bool>(true, true, false, true)), countOneBits(9301u)), _wgslsmith_add_vec4_u32(~u_input.d, vec4<u32>(10622u, 12317u, u_input.d.x, u_input.d.x))), vec3<u32>(global1.x, ~global3[_wgslsmith_index_u32(1u, 24u)], max(global1.x & 16681u, global3[_wgslsmith_index_u32(66086u, 24u)])), vec2<bool>(false, all(vec3<bool>(false, false, false)))));
    global3 = array<u32, 24>();
    let var_1 = abs(-func_4(!vec4<bool>(var_0.c.c.x, var_0.c.c.x, true, var_0.c.c.x), Struct_1(firstLeadingBit(0u), any(vec3<bool>(var_0.c.c.x, var_0.c.c.x, var_0.c.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(24503u, 13380u, var_0.c.b.x, global3[_wgslsmith_index_u32(var_0.b.x, 24u)]), vec4<u32>(global3[_wgslsmith_index_u32(38102u, 24u)], u_input.c, 0u, global1.x))), vec4<u32>(countOneBits(global3[_wgslsmith_index_u32(var_0.c.b.x, 24u)]), firstLeadingBit(u_input.d.x), _wgslsmith_div_u32(0u, var_0.a.x), abs(10056u))));
    let var_2 = var_0.c.c.x;
    return Struct_2(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(max(global3[_wgslsmith_index_u32(~4294967295u, 24u)], _wgslsmith_clamp_u32(global1.x, global1.x, global1.x)), max(~8785u, ~30680u), global3[_wgslsmith_index_u32(var_0.c.b.x, 24u)]), ~var_0.a), !(!func_3().wy));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    global0 = array<vec3<i32>, 29>();
    var var_0 = true;
    var var_1 = firstTrailingBit(1u);
    let var_2 = countOneBits(func_4(select(!vec4<bool>(true, true, arg_3.c.x, true), vec4<bool>(all(vec4<bool>(false, arg_3.c.x, arg_3.c.x, true)), arg_3.c.x, false, arg_3.c.x), arg_3.c.x), Struct_1(arg_1, true, 4294967295u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(17839u, u_input.c, global3[_wgslsmith_index_u32(31663u, 24u)], global1.x) | vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 21447u, 7837u, global1.x), ~u_input.d)));
    let var_3 = _wgslsmith_f_op_f32(400f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -801f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -344f)))))));
    return func_2();
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))));
    global0 = array<vec3<i32>, 29>();
    var var_1 = func_2();
    global3 = array<u32, 24>();
    let var_2 = select(u_input.d, ~select(~u_input.d, _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(44477u, var_1.b.x, global1.x, 0u), u_input.d), reverseBits(u_input.d)), true), select(any(vec4<bool>(var_1.c.x, !var_1.c.x, all(vec4<bool>(arg_1.c.x, true, arg_1.c.x, true)), !var_1.c.x)), ~(~107278u) <= _wgslsmith_div_u32(max(u_input.c, global3[_wgslsmith_index_u32(1u, 24u)]), u_input.c), func_3().x));
    return Struct_1(34274u, false, func_5(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(reverseBits(62879u & var_2.x), 23u)], _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_1.a, arg_1.a, global2[_wgslsmith_index_u32(var_2.x, 23u)]), vec4<i32>(-1i, 34730i, -13722i, u_input.b.x)), 20905i | global2[_wgslsmith_index_u32(var_1.b.x, 23u)], _wgslsmith_clamp_i32(-2147483647i, -1i, -1i))), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(3592u << (1u % 32u), 24u)], _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.x, u_input.d.x), u_input.d.yzw)) & _wgslsmith_div_u32(var_2.x, arg_1.b.x), -u_input.b.yy, func_2()).b.x);
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec4<u32> {
    let var_0 = vec4<u32>(arg_1, _wgslsmith_dot_vec3_u32(~(~u_input.d.zyx), vec3<u32>(~max(arg_1, u_input.d.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global1.yzy, global1.ywy), global3[_wgslsmith_index_u32(66764u, 24u)] | 19601u), 4294967295u)), _wgslsmith_sub_u32(~(~arg_1), func_2().b.x), _wgslsmith_add_u32(~(~arg_0.c), ~(1u & firstTrailingBit(global3[_wgslsmith_index_u32(arg_1, 24u)]))));
    global2 = array<i32, 23>();
    global1 = u_input.d;
    let var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = -(vec3<i32>(-1i) * -(~vec3<i32>(u_input.b.x, global2[_wgslsmith_index_u32(arg_0.a, 23u)], -11357i)));
    return vec4<u32>(26163u, _wgslsmith_dot_vec4_u32((vec4<u32>(36062u, 1u, var_0.x, 61224u) | var_0) & _wgslsmith_clamp_vec4_u32(min(vec4<u32>(0u, 4294967295u, 4294967295u, arg_0.c), vec4<u32>(1u, 52740u, u_input.d.x, 41024u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_1, 66696u, 11201u), u_input.d), ~var_0), ~vec4<u32>(~arg_0.c, _wgslsmith_clamp_u32(1u, 4294967295u, var_0.x), 0u, var_0.x)), func_6(abs(var_0.x), Struct_2(func_4(vec4<bool>(arg_2, arg_0.b, true, arg_0.b), func_6(65045u, Struct_2(2147483647i, vec3<u32>(arg_1, global1.x, 19572u), vec2<bool>(arg_0.b, arg_2))), ~vec4<u32>(1u, 84636u, 0u, 1u)), var_0.xzx, select(!vec2<bool>(false, arg_2), !vec2<bool>(arg_2, false), false))).c, countOneBits(1461u));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: bool) -> Struct_2 {
    var var_0 = ~vec3<u32>(1u, 1u, arg_0.x);
    global1 = func_7(func_6(abs(_wgslsmith_mod_u32(4294967295u, 96847u << (1u % 32u))), func_5(_wgslsmith_add_i32(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(arg_0.x, 23u)], -30184i), 1i), 1u, u_input.b.zz, func_2())), ~func_2().b.x, true);
    let var_1 = Struct_2(-global2[_wgslsmith_index_u32(var_0.x, 23u)], reverseBits(~u_input.d.wxw), vec2<bool>(any(select(arg_1.wzw, vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_1.x, true, arg_2))) && any(arg_1.www), all(arg_1.zzz)));
    let var_2 = var_1;
    let var_3 = Struct_1(~(~(~52768u)), arg_1.x, ~114566u);
    return var_1;
}

fn func_8(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> vec4<f32> {
    var var_0 = Struct_4(countOneBits(vec3<u32>(15069u, ~38157u, _wgslsmith_mod_u32(20972u, global3[_wgslsmith_index_u32(0u, 24u)]))) | ~global1.zwz, (vec2<u32>(global1.x, ~global1.x) >> (~(arg_1.b.yx | vec2<u32>(28603u, 6572u)) % vec2<u32>(32u))) << ((_wgslsmith_sub_vec2_u32(vec2<u32>(72521u, 4294967295u) | arg_1.b.xz, min(vec2<u32>(75140u, 9113u), u_input.d.yw)) & (abs(vec2<u32>(global3[_wgslsmith_index_u32(arg_1.b.x, 24u)], arg_1.b.x)) ^ ~arg_1.b.zy)) % vec2<u32>(32u)), arg_1);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1069f, arg_0, arg_0, arg_2) - vec4<f32>(1018f, arg_0, arg_2, arg_0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1971f, arg_0, arg_0, -1000f) + vec4<f32>(arg_2, arg_2, arg_2, -347f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1310f, arg_2), _wgslsmith_f_op_f32(sign(1942f)), -1106f, _wgslsmith_f_op_f32(trunc(645f)))))));
    let var_2 = Struct_3(var_0.c, var_0.a, func_1(arg_1.b.xy, !vec4<bool>(false, false, false, var_1.x < arg_2), false).c, _wgslsmith_mod_vec3_u32(func_7(Struct_1(~arg_1.b.x, true, abs(1u)), ~countOneBits(arg_1.b.x), false).yyw, ~arg_1.b), func_1(~_wgslsmith_sub_vec2_u32(global1.zx, global1.yw) ^ ~(~vec2<u32>(arg_1.b.x, 4294967295u)), !vec4<bool>(false, var_0.c.c.x, arg_1.c.x, var_0.c.c.x & true), any(!vec3<bool>(false, var_0.c.c.x, false))));
    var var_3 = func_6(reverseBits(~_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(var_2.e.b.yy, vec2<u32>(0u, 1u)))), var_0.c);
    let var_4 = true;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 767f, 1047f, 994f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1497f, arg_2, arg_0) + vec4<f32>(arg_2, 144f, arg_2, var_1.x)) - vec4<f32>(arg_2, var_1.x, arg_2, arg_2)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, -1041f, 1328f, 536f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_8(1724f, func_1(_wgslsmith_sub_vec2_u32(firstTrailingBit(global1.xw >> (vec2<u32>(u_input.c, 2853u) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(u_input.c, 24u)], global3[_wgslsmith_index_u32(1u, 24u)]), vec2<u32>(0u, u_input.d.x) >> (global1.yy % vec2<u32>(32u)))), vec4<bool>(true, true, true, true), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true))), _wgslsmith_f_op_f32(-1f)));
    let var_1 = func_1(min(vec2<u32>(26987u, func_5(-8086i, abs(105402u), vec2<i32>(2147483647i, 9948i), func_2()).b.x), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, 61776u), vec3<u32>(0u, 19506u, global1.x)), func_5(u_input.b.x, 24784u, u_input.b.zz, Struct_2(1i, u_input.d.zzw, vec2<bool>(true, false))).b.x) >> (func_5(_wgslsmith_mod_i32(-58373i, u_input.b.x), 27093u, vec2<i32>(2147483647i, 0i), func_5(-1i, u_input.d.x, vec2<i32>(0i, u_input.b.x), Struct_2(u_input.a, u_input.d.wwz, vec2<bool>(false, true)))).b.yx % vec2<u32>(32u))), vec4<bool>(!(!func_1(u_input.d.xy, vec4<bool>(false, false, true, false), true).c.x), func_1(abs(vec2<u32>(global1.x, global1.x)), vec4<bool>(true, true, true, true), true).c.x, false, -_wgslsmith_sub_i32(0i, u_input.b.x) == _wgslsmith_mult_i32(-u_input.a, u_input.a | 17775i)), !func_2().c.x | true);
    let var_2 = _wgslsmith_sub_u32(u_input.d.x, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 24u)]) <= ~28829u;
    let var_3 = func_6(var_1.b.x, Struct_2(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b), firstTrailingBit(u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -32837i), abs(u_input.b.yy))), vec3<u32>(var_1.b.x, 4294967295u, reverseBits(global3[_wgslsmith_index_u32(29549u, 24u)])), vec2<bool>(func_6(4294967295u, var_1).b, true)));
    global2 = array<i32, 23>();
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~abs(global1.x), 35874u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(ceil(var_0.x))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(791f, var_0.x, var_2))))), var_0, vec4<i32>(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~global1.x, 23u)], 2147483647i), var_1.a, u_input.b.x, i32(-1i) * -(~var_1.a)));
}

