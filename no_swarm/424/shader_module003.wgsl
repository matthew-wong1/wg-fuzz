struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: Struct_3,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(123f, vec4<bool>(false, false, false, true));

var<private> global1: array<vec4<f32>, 15>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<u32> {
    var var_0 = vec2<i32>(u_input.b, 19656i << (u_input.a % 32u)) << (~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))) % vec2<u32>(32u));
    var_0 = countOneBits(~(vec2<i32>(-21100i, select(34707i, -2147483647i, false)) & firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.c, -8315i)))));
    global0 = Struct_3(1698f, vec4<bool>(all(vec2<bool>(arg_0.x, true)), !(global0.b.x | any(vec4<bool>(false, arg_0.x, arg_0.x, true))), arg_0.x, 449f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(645f + -837f) - _wgslsmith_f_op_f32(-global0.a))));
    global1 = array<vec4<f32>, 15>();
    global1 = array<vec4<f32>, 15>();
    return firstTrailingBit(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(64803u, 45479u, 1u, 1u)), countOneBits(vec4<u32>(4294967295u, u_input.a, 7301u, u_input.a))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, ~(u_input.a << (u_input.a % 32u)), u_input.a, u_input.a) & select(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 66346u), vec4<u32>(20465u, u_input.a, 56750u, u_input.a)), func_3(global0.b.yzx), false), abs(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), 2554u, ~u_input.a, 4294967295u)));
    let var_1 = Struct_4(Struct_1(vec2<i32>(u_input.b, ~u_input.c), firstTrailingBit(-firstLeadingBit(vec4<i32>(u_input.b, -19207i, -73559i, u_input.b))), global1[_wgslsmith_index_u32(1u, 15u)], !all(vec2<bool>(false, true))), Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(825f, global0.a), -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -214f), _wgslsmith_f_op_f32(-2307f * global0.a))))), global0.b), Struct_1(select(-vec2<i32>(-2147483647i, u_input.b), vec2<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.c, u_input.c), max(u_input.c, -2147483647i)), select(select(vec2<bool>(false, false), global0.b.yz, vec2<bool>(global0.b.x, global0.b.x)), select(vec2<bool>(global0.b.x, true), global0.b.wy, global0.b.xy), global0.b.zw)), min(vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), select(max(vec4<i32>(u_input.c, 64769i, u_input.b, 1i), vec4<i32>(u_input.b, u_input.b, -2147483647i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-20707i, -2147483647i, u_input.b, 2147483647i), vec4<i32>(1i, 25381i, u_input.c, u_input.b)), vec4<bool>(true, false, true, global0.b.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(global1[_wgslsmith_index_u32(u_input.a, 15u)])), _wgslsmith_f_op_vec4_f32(min(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)])))))), !(!global0.b.x) && !any(global0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a)) - _wgslsmith_f_op_f32(-global0.a)))) <= global0.a);
    var var_2 = false;
    global1 = array<vec4<f32>, 15>();
    var_2 = false;
    return Struct_1(select(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 7741i), var_1.a.a) << (abs(_wgslsmith_div_vec2_u32(vec2<u32>(51370u, var_0.x), vec2<u32>(var_0.x, 28666u))) % vec2<u32>(32u)), abs(var_1.a.b.zz), global0.b.xx), abs(abs(var_1.c.b >> (_wgslsmith_div_vec4_u32(var_0, vec4<u32>(23490u, 4294967295u, var_0.x, 1u)) % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(-208f * _wgslsmith_f_op_f32(floor(-294f))), _wgslsmith_f_op_f32(step(var_1.b.a, 542f)), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.c.x))), true || !(!var_1.c.d));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    return _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_div_u32(~arg_0.x ^ countOneBits(17304u), 80618u)), arg_0.x);
}

fn func_1() -> Struct_4 {
    var var_0 = countOneBits(reverseBits(vec2<u32>(reverseBits(u_input.a), ~countOneBits(31734u))));
    let var_1 = select(select(select(!global0.b.yz, vec2<bool>(global0.b.x, true), !select(vec2<bool>(global0.b.x, false), vec2<bool>(global0.b.x, true), global0.b.x)), vec2<bool>(global0.b.x, u_input.a >= 11028u), vec2<bool>((global0.b.x | global0.b.x) || global0.b.x, !(62001u == u_input.a))), global0.b.yx, -(-u_input.c >> (u_input.a % 32u)) <= 2147483647i);
    var_0 = vec2<u32>(_wgslsmith_mult_u32(u_input.a, select(u_input.a, 18225u, global0.a != _wgslsmith_div_f32(global0.a, -768f))), func_4(~(vec3<u32>(64769u, 0u, var_0.x) << (vec3<u32>(28944u, 10445u, u_input.a) % vec3<u32>(32u))) ^ vec3<u32>(_wgslsmith_mod_u32(u_input.a, var_0.x), ~127u, 19205u), Struct_2(func_2(), -2147483647i)));
    global1 = array<vec4<f32>, 15>();
    let var_2 = global0.b.zxx;
    return Struct_4(Struct_1(~vec2<i32>(i32(-1i) * -2147483647i, i32(-1i) * -1i), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.c, -1i), _wgslsmith_add_i32(u_input.b, -1i), countOneBits(u_input.b), -45780i), (vec4<i32>(1i, u_input.b, -2147483647i, u_input.b) >> (vec4<u32>(0u, 1620u, u_input.a, 4294967295u) % vec4<u32>(32u))) ^ vec4<i32>(-2147483647i, 21060i, 0i, 1i)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~27179u, _wgslsmith_mod_u32(var_0.x, u_input.a)), var_0.x), 15u)], max(var_0.x << (u_input.a % 32u), min(var_0.x, 31038u)) > _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 0u, var_0.x), ~vec4<u32>(0u, 1u, var_0.x, var_0.x))), Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), 956f)), !global0.b), Struct_1(firstLeadingBit(vec2<i32>(~33247i, min(u_input.c, -1i))), _wgslsmith_div_vec4_i32(vec4<i32>(34746i, firstLeadingBit(1i), 17751i, u_input.b), vec4<i32>(u_input.c, ~(-1i), u_input.c, 23984i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-722f, -128f, 1522f, 276f) * global1[_wgslsmith_index_u32(u_input.a, 15u)]), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(var_0.x, 15u)]), select(global0.b, global0.b, false)))), true | (!var_1.x || (global0.a != global0.a))), true);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5) -> Struct_1 {
    global0 = func_1().b;
    var var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(1065f)), select(func_1().b.b, !select(vec4<bool>(false, arg_1.c.b.x, arg_0.d, global0.b.x), select(vec4<bool>(true, false, arg_0.c.d, arg_0.c.d), arg_0.b.b, vec4<bool>(arg_0.c.d, false, global0.b.x, false)), select(vec4<bool>(false, true, arg_0.a.d, global0.b.x), arg_0.b.b, arg_0.d)), select(vec4<bool>(false, true, !arg_0.d, !arg_1.c.b.x), arg_0.b.b, all(select(arg_0.b.b.xw, vec2<bool>(arg_0.a.d, false), arg_1.c.b.yz)))));
    var_0 = func_1().b;
    var var_1 = ~(-u_input.c);
    let var_2 = 2447i;
    return func_1().a;
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    global1 = array<vec4<f32>, 15>();
    global1 = array<vec4<f32>, 15>();
    var var_0 = ~(countOneBits(abs(reverseBits(vec4<u32>(27328u, u_input.a, u_input.a, 1u)))) ^ min(vec4<u32>(~5006u, 45547u, ~72162u, 34075u), ~vec4<u32>(10432u, 82287u, 1u, 0u)));
    var var_1 = 1u;
    var var_2 = Struct_2(func_5(Struct_4(func_2(), func_1().b, Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), arg_0.b.ww), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, u_input.c, arg_0.b.x), arg_0.b), global1[_wgslsmith_index_u32(func_3(global0.b.yyx).x, 15u)], !arg_0.d), global0.a > _wgslsmith_f_op_f32(min(2730f, global0.a))), Struct_5(!global0.b, arg_0.a.x, func_1().b, var_0.x, firstTrailingBit(22773u) ^ ~4294967295u)), 2147483647i);
    return Struct_2(Struct_1(var_2.a.b.yy, firstLeadingBit(-func_5(Struct_4(var_2.a, Struct_3(-427f, global0.b), Struct_1(arg_0.b.xx, var_2.a.b, vec4<f32>(-277f, var_2.a.c.x, 1328f, 235f), true), false), Struct_5(global0.b, u_input.b, Struct_3(1000f, global0.b), 44524u, 32513u)).b), _wgslsmith_f_op_vec4_f32(round(func_1().a.c)), true), -34959i);
}

fn func_7(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    var var_0 = -_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, 2563i), arg_0.b >> (vec4<u32>(82624u, 0u, u_input.a, u_input.a) % vec4<u32>(32u))) & -vec4<i32>(-1i, arg_2.b, -24648i, -60870i), vec4<i32>(-arg_2.a.a.x, max(arg_2.b, u_input.c), u_input.b, ~u_input.c) | func_5(func_1(), Struct_5(global0.b, 0i, Struct_3(-1146f, global0.b), u_input.a, 78812u)).b);
    let var_1 = arg_2.a;
    let var_2 = 3683u;
    var var_3 = func_3(global0.b.yxw).x;
    var_3 = ~77304u;
    return Struct_3(arg_0.c.x, select(!select(select(vec4<bool>(false, arg_2.a.d, arg_3, arg_0.d), vec4<bool>(true, true, false, false), var_1.d), global0.b, select(vec4<bool>(false, false, true, arg_3), global0.b, vec4<bool>(false, arg_3, false, false))), global0.b, vec4<bool>(arg_3, arg_3, arg_3, arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 15>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1491f, global0.a)))))))));
    var var_1 = func_7(Struct_1(vec2<i32>(u_input.c, -_wgslsmith_sub_i32(u_input.b, u_input.b)), vec4<i32>(u_input.c, u_input.c, firstLeadingBit(u_input.b), _wgslsmith_mult_i32(0i, -1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 525f, _wgslsmith_f_op_f32(global0.a - -1713f), -861f)), true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a))) - 196f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1367f)), 468f))), -240f, _wgslsmith_f_op_f32(ceil(567f))), func_6(func_5(func_1(), Struct_5(global0.b, -30532i, func_1().b, 4294967295u, abs(4294967295u)))), true);
    var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(round(-393f))), var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f) - _wgslsmith_div_f32(781f, _wgslsmith_f_op_f32(-global0.a)))), func_1().b.b);
    var var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.c, ~u_input.b), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 973f, var_1.a) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(146f, 1573f, global0.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, global0.a, var_1.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, var_1.a, global0.a), vec3<f32>(-330f, var_1.a, var_1.a))), true))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a * -1230f), global0.a, _wgslsmith_f_op_f32(-581f * 2989f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2308f, -2156f, var_1.a), _wgslsmith_div_vec3_f32(vec3<f32>(890f, global0.a, -698f), vec3<f32>(2159f, var_1.a, 148f)))))));
}

