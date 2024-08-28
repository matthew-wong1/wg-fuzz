struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: u32 = 25396u;

var<private> global2: array<Struct_2, 6>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-163f + global0[_wgslsmith_index_u32(u_input.c.x, 31u)]);
    var var_1 = global2[_wgslsmith_index_u32(11144u, 6u)];
    let var_2 = vec4<bool>(var_1.c, !arg_2.d == arg_2.d, false && !arg_2.d, false);
    let var_3 = vec3<i32>(0i, 17031i, -select(-1i, arg_2.e.x, true));
    var_1 = global2[_wgslsmith_index_u32(u_input.e.x, 6u)];
    return _wgslsmith_f_op_vec3_f32(var_1.e.b + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-151f, arg_2.b.x, 207f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-786f, var_1.e.b.x, var_1.e.b.x) + arg_2.b)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.b.x, arg_2.b.x, 648f), vec3<f32>(global0[_wgslsmith_index_u32(arg_2.c.x, 31u)], var_1.e.b.x, 1553f))))), !var_2.x)))));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    global0 = array<f32, 31>();
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(-abs(vec2<i32>(u_input.a, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(-26612i, -1i), vec2<i32>(u_input.a, u_input.b)) | ~vec2<i32>(u_input.b, 0i)), vec2<i32>(u_input.b, u_input.a), vec2<i32>(-70938i, u_input.a) >> (arg_0 % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(22827u, vec2<i32>(u_input.a, u_input.a), Struct_1(vec2<i32>(-4442i, 1i), vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 31u)], -1515f, 569f), u_input.c, true, vec4<i32>(66757i, u_input.b, u_input.a, u_input.b)), vec2<bool>(true, false))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 31u)], global0[_wgslsmith_index_u32(arg_0.x, 31u)], 2908f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(25682u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(u_input.d, 31u)]), vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 31u)], 1729f, 2690f), vec3<bool>(true, false, false)))))), vec3<u32>(38877u, firstLeadingBit(max(arg_0.x, 79579u)), 1u), true, _wgslsmith_mod_vec4_i32(vec4<i32>(abs(2147483647i) | (u_input.a | 6059i), -44894i, u_input.a, ~(u_input.a >> (arg_0.x % 32u))), countOneBits(-countOneBits(vec4<i32>(-1i, 1i, u_input.b, u_input.a)))));
    let var_1 = max(0u, 1u >> (~(~arg_0.x) % 32u));
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.xx), var_0.b.yz)))));
    return ~var_0.e.x;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: bool) -> vec2<f32> {
    var var_0 = Struct_2(reverseBits(select(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, 0i, 18825i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-33773i, -44143i, 16743i), vec3<i32>(arg_0, arg_1, arg_2.x))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-1i, -2147483647i, -1i)), -vec3<i32>(-1i, arg_0, u_input.a), -vec3<i32>(2147483647i, arg_2.x, 2147483647i)), false && arg_3)), 4294967295u, true, (arg_3 == false) & all(select(!vec4<bool>(true, arg_3, arg_3, true), select(vec4<bool>(false, arg_3, false, false), vec4<bool>(false, false, arg_3, arg_3), vec4<bool>(false, arg_3, arg_3, false)), arg_3)), Struct_1(_wgslsmith_mult_vec2_i32(arg_2 >> (u_input.e.xy % vec2<u32>(32u)), max(select(arg_2, vec2<i32>(0i, arg_2.x), arg_3), abs(vec2<i32>(0i, u_input.a)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 31u)], global0[_wgslsmith_index_u32(u_input.e.x, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)])))), u_input.e.zzz, true, countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, arg_2.x, u_input.b, -2384i), vec4<i32>(arg_2.x, 0i, arg_2.x, -1i), vec4<i32>(arg_2.x, -2147483647i, -9076i, arg_2.x))) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.e.zx), max(u_input.e.x, u_input.d), _wgslsmith_mult_u32(17750u, 1u), u_input.d) % vec4<u32>(32u))));
    let var_1 = global2[_wgslsmith_index_u32(~(abs(_wgslsmith_mod_u32(var_0.b << (33620u % 32u), ~22317u)) << (29176u % 32u)), 6u)];
    let var_2 = var_1.e;
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.e & u_input.e, vec4<u32>(0u, ~1u, var_0.e.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 0u, var_2.c.x, 27816u) >> (u_input.e % vec4<u32>(32u)), select(vec4<u32>(4294967295u, 0u, 4294967295u, var_0.e.c.x), vec4<u32>(var_1.e.c.x, u_input.e.x, var_0.b, var_0.e.c.x), true)))), vec4<u32>(4294967295u >> ((min(40596u, var_1.b) >> (u_input.d % 32u)) % 32u), 60660u, ~0u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.e.c.x, 4294967295u), 84377u)));
    var var_4 = var_0.e.c;
    return _wgslsmith_f_op_vec3_f32(func_3(var_4.x, vec2<i32>(-(~(-12997i)), -13084i), var_1.e, vec2<bool>(!(arg_3 | any(vec4<bool>(var_2.d, var_1.c, false, true))), true))).zx;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<u32> {
    global1 = abs(_wgslsmith_mult_u32(~_wgslsmith_add_u32(arg_0.c.x, 4294967295u), abs(_wgslsmith_div_u32(u_input.e.x, 101305u))) << (~32210u % 32u));
    global2 = array<Struct_2, 6>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(func_2(vec2<u32>(arg_0.c.x, arg_0.c.x) >> (vec2<u32>(0u, u_input.e.x) % vec2<u32>(32u))), arg_0.e.x, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.a, vec2<i32>(0i, arg_0.e.x)), vec2<i32>(arg_1.x, u_input.a)), ~arg_0.c.x > 1u)))) + _wgslsmith_f_op_vec2_f32(-arg_0.b.yz));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f - global0[_wgslsmith_index_u32(arg_0.c.x, 31u)])) + global0[_wgslsmith_index_u32(18277u, 31u)]))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - arg_0.b.x), _wgslsmith_div_f32(459f, _wgslsmith_f_op_f32(ceil(arg_0.b.x)))) - _wgslsmith_div_f32(842f, 1f)));
    global2 = array<Struct_2, 6>();
    return firstTrailingBit(vec3<u32>(33157u, arg_0.c.x, u_input.d));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = select(vec2<bool>(true, false), !vec2<bool>(select(arg_0.c, !arg_0.e.d, false), arg_0.d), select(select(vec2<bool>(arg_0.e.d, true), select(select(vec2<bool>(false, arg_0.c), vec2<bool>(true, true), vec2<bool>(arg_0.e.d, arg_0.c)), select(vec2<bool>(arg_0.e.d, true), vec2<bool>(true, false), true), vec2<bool>(false, false)), (-1091f >= global0[_wgslsmith_index_u32(arg_1.x, 31u)]) || all(vec4<bool>(false, arg_0.e.d, arg_0.e.d, arg_0.c))), !(!select(vec2<bool>(false, false), vec2<bool>(arg_0.e.d, arg_0.e.d), vec2<bool>(false, false))), any(!vec4<bool>(arg_0.e.d, true, true, true))));
    let var_1 = select(vec2<bool>(false, var_0.x), !(!(!vec2<bool>(true, var_0.x))), !all(!vec4<bool>(true, var_0.x, var_0.x, false)) && ((any(vec2<bool>(true, true)) && select(false, var_0.x, var_0.x)) & true));
    var_0 = vec2<bool>(all(!select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x), true))), any(vec4<bool>(true, !var_1.x, false, true)) && (countOneBits(abs(arg_0.a.x)) != arg_0.e.a.x));
    let var_2 = Struct_2(~(-min(vec3<i32>(u_input.b, -26308i, arg_0.a.x), arg_0.e.e.zzy) | min(arg_0.a >> (u_input.e.xxx % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(arg_0.e.e.wyw, vec3<i32>(arg_0.e.a.x, u_input.a, 5132i)))), countOneBits(arg_1.x), all(select(!(!vec4<bool>(var_0.x, true, arg_0.c, false)), !select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(true, var_1.x, arg_0.d, var_1.x), arg_0.d), vec4<bool>(!var_0.x, true & var_0.x, false, !var_1.x))), _wgslsmith_sub_u32(u_input.c.x, 7685u) > select((arg_1.x << (0u % 32u)) & _wgslsmith_mult_u32(u_input.c.x, 1u), arg_0.b, false && (arg_1.x <= 43744u)), Struct_1(arg_0.e.e.zw, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(~0u, 31u)], _wgslsmith_div_f32(335f, -1040f), _wgslsmith_f_op_f32(-680f * -164f)))), u_input.c, all(vec4<bool>(false, !var_0.x, arg_0.a.x == -39249i, true)), vec4<i32>(u_input.a, -arg_0.a.x >> (0u % 32u), func_2(arg_1.zz), arg_0.e.a.x)));
    let var_3 = var_2.a.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global2[_wgslsmith_index_u32(reverseBits(abs(~56523u)) ^ ~u_input.c.x, 6u)], min(select(~vec3<u32>(u_input.d, u_input.e.x, u_input.c.x), _wgslsmith_mod_vec3_u32(func_1(Struct_1(vec2<i32>(u_input.a, -2147483647i), vec3<f32>(289f, -762f, global0[_wgslsmith_index_u32(0u, 31u)]), u_input.e.ywx, true, vec4<i32>(-13580i, u_input.b, -26529i, -1i)), vec3<i32>(29198i, u_input.a, u_input.a)), firstLeadingBit(vec3<u32>(56322u, 3777u, u_input.c.x))), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), ~max(firstLeadingBit(vec3<u32>(u_input.d, u_input.c.x, 22397u)), _wgslsmith_clamp_vec3_u32(u_input.e.xwz, vec3<u32>(u_input.c.x, 6806u, u_input.e.x), u_input.e.xyx))));
    global0 = array<f32, 31>();
    let var_1 = !select(!(!select(vec4<bool>(var_0.d, true, var_0.e.d, true), vec4<bool>(var_0.e.d, var_0.c, var_0.d, false), true)), vec4<bool>(all(vec2<bool>(false, false)), _wgslsmith_mod_i32(-1i, u_input.b) >= -u_input.a, any(vec2<bool>(false, var_0.d)), var_0.e.d), !vec4<bool>(var_0.e.d, true, var_0.d, true & var_0.c));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_mod_i32(0i, -_wgslsmith_dot_vec4_i32(var_0.e.e, vec4<i32>(var_0.a.x, var_0.e.a.x, u_input.a, u_input.a)) | u_input.a), var_0.a.x);
    global0 = array<f32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(-49737i, 1i), ~(-select(8625i, 32115i, true))), _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0.a.x, -1i, var_2, func_2(abs(vec2<u32>(24795u, 34541u)))), var_0.e.e), vec3<f32>(770f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 31u)])))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.e.b.x + -717f), 623f, var_0.c)), var_0.e.b.x), vec2<i32>(var_2, ~var_2 ^ countOneBits(var_2)));
}

