struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 0u, 26520u), vec3<u32>(0u, 20531u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 61800u, 1u), vec3<u32>(30598u, 0u, 1u), vec3<u32>(0u, 103919u, 78785u), vec3<u32>(11162u, 6308u, 9162u), vec3<u32>(63022u, 27966u, 42336u), vec3<u32>(36391u, 24950u, 129184u));

var<private> global1: array<u32, 9>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 559f, _wgslsmith_f_op_f32(718f + _wgslsmith_f_op_f32(-778f + _wgslsmith_f_op_f32(round(-443f)))), 647f)));
    var var_1 = select(select(vec3<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true)), false, !(u_input.c != 32688i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true))), select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, var_0.x == -657f, all(vec4<bool>(true, true, false, true))), true), vec3<bool>(!any(vec3<bool>(false, true, false)), any(vec2<bool>(false, false)) & any(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)) || all(vec4<bool>(true, true, true, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), var_0.x != var_0.x))), select(!vec3<bool>(true, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 9u)] != global1[_wgslsmith_index_u32(53022u, 9u)], 54298u <= global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(414f - var_0.x), -2025f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-var_2);
    let var_4 = Struct_2(select(!vec4<bool>(true, true, all(vec3<bool>(false, var_1.x, true)), any(vec4<bool>(true, false, false, var_1.x))), select(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), false), !vec4<bool>(false, var_1.x, true, true)), vec4<bool>(u_input.c < u_input.c, -1000f <= var_2.x, var_1.x, var_1.x), true && var_1.x), true), u_input.c, 0u, !(any(!vec3<bool>(var_1.x, false, var_1.x)) && true));
    return !all(var_4.a.xzz);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = select(u_input.b.xx, u_input.b.zx, func_3()) >> (_wgslsmith_div_vec2_u32(~(~u_input.b.zy) << (u_input.b.xz % vec2<u32>(32u)), select(vec2<u32>(u_input.d.x, 91029u) | firstTrailingBit(vec2<u32>(u_input.b.x, 4294967295u)), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 9u)] >> (4294967295u % 32u), 9u)], global1[_wgslsmith_index_u32(reverseBits(0u), 9u)]), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true)))) % vec2<u32>(32u));
    var var_1 = !(!vec2<bool>(true, false & all(vec3<bool>(false, false, false))));
    global1 = array<u32, 9>();
    var var_2 = vec2<i32>(_wgslsmith_clamp_i32(-min(u_input.c, 18714i), arg_0.x, -13073i) | (0i & _wgslsmith_mod_i32(-32985i, firstTrailingBit(32129i))), _wgslsmith_mult_i32(~firstTrailingBit(_wgslsmith_add_i32(-29826i, u_input.c)), max(u_input.c, abs(~(-13996i)))));
    var var_3 = Struct_2(!vec4<bool>(func_3(), true, -arg_0.x >= 23106i, any(!vec3<bool>(var_1.x, true, false))), i32(-1i) * -var_2.x, ~countOneBits(_wgslsmith_dot_vec4_u32(min(vec4<u32>(3682u, var_0.x, var_0.x, global1[_wgslsmith_index_u32(2119u, 9u)]), vec4<u32>(u_input.b.x, 34113u, 2750u, var_0.x)), max(vec4<u32>(55958u, 4294967295u, global1[_wgslsmith_index_u32(51693u, 9u)], 9743u), vec4<u32>(51556u, 4294967295u, 35115u, u_input.d.x)))), all(vec2<bool>(true, true)));
    return Struct_4(-25260i ^ abs(-min(-1i, arg_0.x)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = func_3();
    var var_2 = select(~global0[_wgslsmith_index_u32(arg_1.b, 10u)], vec3<u32>(arg_1.b | (45233u << (0u % 32u)), ~(~1u), ~(4294967295u ^ arg_1.b)) & ~vec3<u32>(countOneBits(35384u), 1u, abs(46934u)), true);
    let var_3 = func_2(~max(-vec4<i32>(62990i, var_0.a, var_0.a, 12761i) << (vec4<u32>(arg_1.b, 19823u, 9914u, global1[_wgslsmith_index_u32(u_input.b.x, 9u)]) % vec4<u32>(32u)), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -1i, 2147483647i, 0i), vec4<i32>(43466i, 1i, 2147483647i, -2147483647i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-405f, -1000f), vec2<f32>(-661f, -419f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1294f, -1378f), vec2<f32>(1608f, -437f))), vec2<f32>(-596f, _wgslsmith_f_op_f32(-2218f + 1739f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-666f, -1827f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1137f, -347f))))))));
    global0 = array<vec3<u32>, 10>();
    return select(vec4<bool>(func_3(), arg_1.a, false, select(all(!vec3<bool>(true, arg_1.a, arg_1.a)), any(vec3<bool>(false, false, arg_1.a)), false)), select(vec4<bool>(func_3(), _wgslsmith_add_i32(arg_0.a, 34634i) > var_0.a, true, var_1), !(!vec4<bool>(true, arg_1.a, false, true)), vec4<bool>(arg_1.a, all(!vec2<bool>(true, var_1)), var_1, true)), (var_2.x & countOneBits(~global1[_wgslsmith_index_u32(arg_1.b, 9u)])) <= ~(_wgslsmith_dot_vec4_u32(vec4<u32>(45236u, var_2.x, var_2.x, var_2.x), vec4<u32>(global1[_wgslsmith_index_u32(25465u, 9u)], 7723u, arg_1.b, 4294967295u)) | firstLeadingBit(66691u)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(arg_1 | firstTrailingBit(~u_input.b.x), 9u)];
    let var_1 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 45087i, -62452i, 0i) & vec4<i32>(u_input.c, arg_2.a.x, -11071i, 0i), ~vec4<i32>(u_input.c, 0i, arg_2.a.x, 0i), abs(vec4<i32>(arg_2.a.x, 14547i, u_input.c, 1i))), -vec4<i32>(2147483647i, arg_2.a.x, -5054i, -78220i), func_4(func_2(vec4<i32>(arg_2.a.x, u_input.c, arg_2.a.x, 6476i), vec2<f32>(arg_0, -939f), vec2<f32>(363f, arg_0)), Struct_1(true, u_input.a))), ~firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -22265i, arg_2.a.x, 1i), vec4<i32>(u_input.c, 4514i, 17403i, -1i)))) | arg_2.a.x;
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(min(-2147483647i, u_input.c), 0i, abs(33411i), var_1 >> (24059u % 32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1, -2147483647i, -2147483647i, var_1), vec4<i32>(1i, 1i, u_input.c, var_1)), _wgslsmith_add_vec4_i32(vec4<i32>(-36016i, 32590i, u_input.c, u_input.c), vec4<i32>(0i, var_1, u_input.c, 2147483647i))) & (_wgslsmith_div_vec4_i32(vec4<i32>(var_1, u_input.c, 9797i, var_1), vec4<i32>(var_1, u_input.c, -2147483647i, -2147483647i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(24521i, var_1, 1i, -2147483647i), vec4<i32>(16991i, -85967i, 1i, arg_2.a.x)))));
    var var_3 = -2147483647i;
    return -var_1;
}

fn func_5(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(!arg_0.x, u_input.d.x);
    var var_1 = Struct_3(-abs(vec3<i32>(~u_input.c, -arg_1, _wgslsmith_clamp_i32(0i, -2147483647i, arg_1))));
    global0 = array<vec3<u32>, 10>();
    let var_2 = arg_0.x;
    global0 = array<vec3<u32>, 10>();
    return Struct_1(1294f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(356f))), global1[_wgslsmith_index_u32(abs(0u ^ ~abs(u_input.b.x)), 9u)]);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = u_input.d.zy;
    var var_1 = arg_3.b;
    var var_2 = Struct_2(select(vec4<bool>(true, !arg_1.a, true, arg_3.a.x), vec4<bool>(true, false, false, !(arg_3.c == 19989u)), arg_3.a.x), arg_2.a, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(15044u, 1u), u_input.b.zx), firstLeadingBit(0u)) | _wgslsmith_dot_vec3_u32(firstTrailingBit(~u_input.d), vec3<u32>(abs(4294967295u), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, u_input.d.x, u_input.b.x)), ~8049u)), true);
    global1 = array<u32, 9>();
    var var_3 = (arg_3.a.x & arg_1.a) | any(vec4<bool>(all(!vec4<bool>(false, var_2.d, false, true)), var_2.a.x, any(!vec2<bool>(var_2.a.x, var_2.d)), true));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~65533i;
    let var_1 = func_6(Struct_3(firstLeadingBit(vec3<i32>(~u_input.c, _wgslsmith_div_i32(-32891i, u_input.c), 1i))), func_5(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true)), func_1(140f, 22774u, Struct_3(-vec3<i32>(var_0, var_0, -73331i)))), Struct_4(-2147483647i), Struct_2(func_4(Struct_4(1i), Struct_1(false, _wgslsmith_mult_u32(u_input.b.x, u_input.d.x))), u_input.c, 37438u, func_5(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), -(u_input.c | var_0)).a));
    global1 = array<u32, 9>();
    let var_2 = any(func_4(Struct_4(~(-1i)), func_5(!func_4(Struct_4(0i), Struct_1(false, global1[_wgslsmith_index_u32(u_input.a, 9u)])).zz, -2147483647i)).ywy);
    global1 = array<u32, 9>();
    global0 = array<vec3<u32>, 10>();
    let var_3 = Struct_1(!((var_2 & var_2) || true) && true, ~u_input.b.x);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f + 312f)), -1000f);
    global1 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-11027i);
}

