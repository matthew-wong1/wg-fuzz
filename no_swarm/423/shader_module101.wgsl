struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 30> = array<u32, 30>(15249u, 4553u, 1u, 12325u, 76694u, 64730u, 4294967295u, 1u, 24929u, 28953u, 1u, 59511u, 39419u, 57630u, 73573u, 30973u, 0u, 49351u, 1u, 1604u, 0u, 0u, 80526u, 1u, 0u, 0u, 28594u, 4294967295u, 4294967295u, 4294967295u);

var<private> global2: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(43357u, 4294967295u, 0u, 1u));

var<private> global3: vec2<u32>;

var<private> global4: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -201f, -432f, -118f) * vec4<f32>(683f, 193f, arg_0.a.x, arg_1.x))), vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), -1000f, _wgslsmith_f_op_f32(714f - 1000f), _wgslsmith_f_op_f32(-arg_0.a.x)))), arg_0.e, true, firstLeadingBit(-(~vec3<i32>(arg_0.e.x, -4247i, -8506i))), -firstTrailingBit(_wgslsmith_add_vec4_i32(arg_0.e, vec4<i32>(u_input.a.x, arg_0.e.x, arg_0.b.x, arg_0.e.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(arg_1)), select(firstLeadingBit(vec4<i32>(arg_0.b.x, u_input.a.x, -1i, arg_0.d.x)), _wgslsmith_div_vec4_i32(-arg_0.e, arg_0.e | vec4<i32>(-1i, arg_0.e.x, 1i, 2476i)), vec4<bool>(true, true, false, any(vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c)))), true, _wgslsmith_div_vec3_i32(select(arg_0.b.wzy, vec3<i32>(u_input.c, -2147483647i, -32387i) >> (u_input.d % vec3<u32>(32u)), !vec3<bool>(true, true, arg_0.c)), arg_0.d), countOneBits(vec4<i32>(-4385i, u_input.c, arg_0.e.x, 7207i) ^ arg_0.e)));
    global3 = select(~(~vec2<u32>(~38711u, abs(u_input.e))), _wgslsmith_sub_vec2_u32(u_input.d.xy, u_input.d.zz), vec2<bool>(var_0.a.c, var_0.b.c));
    var var_1 = vec2<f32>(-751f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(-arg_0.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 333f) * -1000f) + arg_0.a.x)));
    var var_2 = arg_1;
    var var_3 = Struct_3(-700f, 31533u);
    return true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    let var_0 = firstTrailingBit(u_input.b | ((u_input.b >> (u_input.b % vec4<u32>(32u))) >> (global2[_wgslsmith_index_u32(reverseBits(~4294967295u), 1u)] % vec4<u32>(32u))));
    var var_1 = _wgslsmith_mult_u32(u_input.d.x, _wgslsmith_div_u32(global3.x << (var_0.x % 32u), var_0.x));
    var var_2 = !vec3<bool>(select(all(vec4<bool>(false, arg_1, arg_3.x, arg_0)), arg_1, true) || true, !(!(!arg_3.x)), !arg_1 && (select(arg_0, arg_0, arg_1) & any(vec2<bool>(true, arg_0))));
    global3 = ~u_input.b.xy;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2152f * arg_2) - arg_2));
    return reverseBits(~(~global3.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    global2 = array<vec4<u32>, 1>();
    var var_0 = arg_1;
    var var_1 = Struct_3(arg_1.a.x, ~(~reverseBits(1u)));
    global3 = ~vec2<u32>(func_4(var_0.c, !func_3(arg_1, vec4<f32>(arg_0.x, -508f, -724f, arg_1.a.x), u_input.e), 468f, !vec3<bool>(true, arg_1.c, arg_1.c)), ~53266u);
    global0 = _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-872f * _wgslsmith_f_op_f32(1370f - arg_1.a.x))) * var_0.a.x));
    return arg_1.c;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec2<i32>) -> vec4<i32> {
    let var_0 = vec2<u32>(~global3.x << ((~global3.x ^ func_4(arg_0 | true, true, arg_1.a, !vec3<bool>(arg_0, arg_0, arg_0))) % 32u), 1u);
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(func_4(any(vec3<bool>(false, true, false)), !(arg_0 == true), arg_1.a, select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0)), select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0), true), vec3<bool>(arg_0, false, arg_0))), ~max(4294967295u, ~global1[_wgslsmith_index_u32(1u, 30u)]), arg_1.b, ~arg_1.b), ~select(global2[_wgslsmith_index_u32(arg_1.b, 1u)] & _wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], vec4<u32>(var_0.x, 4294967295u, 4294967295u, 1u)), vec4<u32>(var_0.x, arg_1.b, var_0.x, var_0.x) >> (u_input.b % vec4<u32>(32u)), true));
    let var_2 = vec3<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 35987u, global1[_wgslsmith_index_u32(u_input.d.x, 30u)]), _wgslsmith_mod_u32(54071u, _wgslsmith_sub_u32(u_input.e, global1[_wgslsmith_index_u32(var_0.x, 30u)]))), 0u) & u_input.d;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * arg_1.a) - -1000f) * arg_1.a));
    let var_3 = global1[_wgslsmith_index_u32(var_1, 30u)];
    return -select(firstTrailingBit(vec4<i32>(-37147i, firstTrailingBit(arg_2.x), reverseBits(0i), -31404i)), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(27801i, -2147483647i, 37991i, 0i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(arg_2.x, arg_2.x, -163i, arg_2.x), vec4<i32>(arg_2.x, u_input.a.x, 27786i, arg_2.x) ^ vec4<i32>(28216i, 67949i, 37867i, 2147483647i))), vec4<bool>(select(arg_0, !arg_0, arg_0), select(all(vec2<bool>(false, arg_0)), all(vec3<bool>(false, arg_0, arg_0)), arg_0), !(-2147483647i > arg_2.x), true));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<f32> {
    var var_0 = ~max(~(~(global1[_wgslsmith_index_u32(1u, 30u)] << (global3.x % 32u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(17054u, 39899u, global1[_wgslsmith_index_u32(0u, 30u)]), vec3<u32>(1u, arg_1.x, 4294967295u)) << (global3.x % 32u));
    global1 = array<u32, 30>();
    var var_1 = vec2<i32>(~(abs(_wgslsmith_mod_i32(-2147483647i, u_input.c)) ^ 6649i), u_input.a.x);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -254f)) - _wgslsmith_f_op_f32(trunc(arg_0.a.x))), -589f);
    var var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(-min(~arg_0.b.x, max(u_input.a.x, arg_0.d.x)), u_input.c | (_wgslsmith_div_i32(arg_0.d.x, 32741i) ^ ~arg_0.e.x), 11651i), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(1383i, u_input.a.x, -6493i)), firstTrailingBit(vec3<i32>(var_1.x, 2147483647i, 2147483647i)) | arg_0.e.wxy) << (arg_1 % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.a.zx))));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1.a.a * arg_1.a.a))), func_5(func_2(arg_1.a.a, Struct_1(vec4<f32>(-1835f, -415f, 158f, arg_1.a.a.x), arg_1.a.e, arg_0, vec3<i32>(u_input.a.x, arg_1.b.b.x, 16150i), vec4<i32>(arg_1.a.d.x, u_input.c, u_input.a.x, arg_1.a.d.x))), Struct_3(arg_1.b.a.x, 40484u), u_input.a << (u_input.b.yz % vec2<u32>(32u))), any(vec2<bool>(true, true)), -func_5(false, Struct_3(-1462f, global1[_wgslsmith_index_u32(u_input.d.x, 30u)]), u_input.a).yzw, vec4<i32>(arg_1.a.d.x, arg_1.b.b.x, arg_1.b.b.x, abs(-63320i))), ~u_input.d | (u_input.d | abs(vec3<u32>(0u, 69226u, global3.x))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(max(arg_1.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), -900f, false)) * _wgslsmith_f_op_f32(-var_0.x)))), min(1u, firstTrailingBit(global3.x)) ^ 43809u);
    let var_2 = arg_1.b.a.x;
    var var_3 = arg_1.b;
    global4 = _wgslsmith_f_op_f32(step(-1079f, _wgslsmith_f_op_f32(-var_0.x)));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1791f)), ~0u);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1661f)) + _wgslsmith_f_op_f32(arg_1.a * -1710f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(800f - _wgslsmith_f_op_f32(max(arg_0.b.a.x, 1579f))) - _wgslsmith_f_op_f32(arg_0.b.a.x - _wgslsmith_f_op_f32(min(arg_0.a.a.x, 239f)))), -253f), ~_wgslsmith_add_vec4_i32(vec4<i32>(15850i, i32(-1i) * -2147483647i, arg_0.a.b.x | arg_2.x, -arg_0.b.b.x), arg_0.a.e), true, vec3<i32>(_wgslsmith_add_i32(arg_2.x, -max(arg_2.x, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.d.x, u_input.a.x), vec2<i32>(arg_2.x & -40590i, arg_0.a.b.x)), 19908i), vec4<i32>(2147483647i, -1i, u_input.a.x, -23700i));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))), 11184u);
    var var_2 = func_1(!func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.x, arg_1.a, -136f, arg_0.a.a.x) * _wgslsmith_f_op_vec4_f32(-var_0.a)), var_0), Struct_2(arg_0.b, arg_0.b));
    var var_3 = var_1.a;
    global1 = array<u32, 30>();
    return var_1;
}

fn func_8(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0;
    global4 = var_0.a;
    global2 = array<vec4<u32>, 1>();
    global0 = 818f;
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -792f);
    return Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-579f, var_0.a, arg_0.a, 367f)))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-36188i, 26964i, 7675i), vec3<i32>(-1i, 1i, u_input.c)), u_input.c, -54465i, -50552i) & abs(vec4<i32>(-2147483647i, 5321i, -13763i, 0i)), vec4<i32>(u_input.a.x, firstLeadingBit(u_input.a.x), u_input.c, -18103i), abs(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.c, -35289i, u_input.c, u_input.a.x)), vec4<i32>(0i, u_input.c, u_input.a.x, u_input.c) & vec4<i32>(u_input.c, u_input.c, u_input.a.x, 0i)))), false, _wgslsmith_sub_vec3_i32(vec3<i32>(min(_wgslsmith_mult_i32(u_input.c, -12171i), u_input.c), ~_wgslsmith_clamp_i32(1i, 0i, 0i), u_input.c), firstLeadingBit(-(vec3<i32>(u_input.c, -18423i, u_input.a.x) ^ vec3<i32>(-85895i, u_input.c, 25961i)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, u_input.c)) | vec4<i32>(-2147483647i, 7072i, -12246i, u_input.c), abs(-vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(~vec4<i32>(u_input.a.x, 0i, -20873i, 23312i))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-21665i, u_input.c), i32(-1i) * -14699i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.c), u_input.a), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.a.x, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.c, 0i, u_input.a.x), vec4<i32>(21405i, u_input.c, u_input.a.x, u_input.a.x)))), vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a.x), u_input.c, -28829i, -(~0i))));
}

fn func_9(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> StorageBuffer {
    global0 = 1000f;
    var var_0 = arg_2.a.yx;
    global0 = _wgslsmith_f_op_f32(110f + _wgslsmith_div_f32(arg_2.a.x, -876f));
    var var_1 = func_7(Struct_2(arg_2, func_8(func_1(arg_2.c, Struct_2(Struct_1(vec4<f32>(arg_2.a.x, var_0.x, -1048f, arg_2.a.x), vec4<i32>(u_input.a.x, 2147483647i, -1i, arg_2.e.x), arg_2.c, vec3<i32>(arg_2.b.x, u_input.c, -2147483647i), vec4<i32>(u_input.c, -37178i, arg_2.b.x, arg_2.e.x)), arg_2)))), func_1(arg_2.c, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.c, 45564i, -41219i), vec4<i32>(20072i, arg_2.b.x, u_input.a.x, 3468i), arg_2.e), true, vec3<i32>(u_input.a.x, 1i, u_input.a.x), min(arg_2.b, arg_2.e)), func_8(func_7(Struct_2(arg_2, arg_2), Struct_3(663f, 1u), arg_2.d)))), vec3<i32>(-1i, func_5(any(vec2<bool>(true, true)), Struct_3(arg_2.a.x, 0u), ~u_input.a).x, -14876i)).a;
    let var_2 = Struct_2(func_8(Struct_3(arg_2.a.x, _wgslsmith_sub_u32(~global3.x, u_input.e))), func_8(func_7(Struct_2(func_8(Struct_3(arg_2.a.x, 16111u)), arg_2), Struct_3(func_1(true, Struct_2(Struct_1(vec4<f32>(316f, arg_2.a.x, var_0.x, 404f), vec4<i32>(arg_2.e.x, arg_2.e.x, u_input.a.x, -33655i), false, arg_2.d, arg_2.e), Struct_1(vec4<f32>(var_0.x, arg_2.a.x, -1219f, arg_2.a.x), vec4<i32>(arg_2.d.x, 1i, 2147483647i, arg_2.d.x), true, vec3<i32>(arg_2.e.x, u_input.c, 38477i), arg_2.e))).a, _wgslsmith_sub_u32(1u, 0u)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.e.x, arg_2.b.x, 2147483647i), _wgslsmith_add_vec3_i32(arg_2.e.zzz, vec3<i32>(u_input.c, -12068i, -6311i))))));
    return StorageBuffer(~15761u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_9(~1u >> (firstLeadingBit(~global3.x) % 32u), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(true, true)), true, !any(vec3<bool>(true, false, false))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(all(vec2<bool>(false, false)), true, true))), func_8(func_7(Struct_2(Struct_1(vec4<f32>(1000f, 426f, 1104f, -1000f), vec4<i32>(0i, 0i, 0i, u_input.a.x), false, vec3<i32>(u_input.a.x, -8574i, u_input.a.x), vec4<i32>(u_input.a.x, -31190i, 22525i, u_input.c)), Struct_1(vec4<f32>(-608f, 1875f, 605f, 1872f), vec4<i32>(22965i, -1282i, -53768i, u_input.a.x), true, vec3<i32>(1i, -1i, u_input.a.x), vec4<i32>(u_input.c, -16837i, -1i, u_input.a.x))), func_1(true, Struct_2(Struct_1(vec4<f32>(566f, -954f, -221f, -2434f), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.c), false, vec3<i32>(-19086i, 1i, -3315i), vec4<i32>(u_input.c, u_input.c, 11297i, u_input.a.x)), Struct_1(vec4<f32>(3185f, 151f, 735f, 1000f), vec4<i32>(u_input.c, u_input.c, u_input.c, 51411i), true, vec3<i32>(2147483647i, u_input.a.x, 20342i), vec4<i32>(u_input.c, u_input.c, u_input.c, 48505i)))), vec3<i32>(u_input.c, u_input.c, u_input.a.x) << (~u_input.d % vec3<u32>(32u)))));
}

