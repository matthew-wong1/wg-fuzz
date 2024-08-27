struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(4294967295u, 0u, 53761u), vec4<bool>(false, false, false, false), vec4<f32>(-1552f, 1492f, -977f, 764f), vec3<f32>(1000f, 770f, -613f));

var<private> global2: array<bool, 9>;

var<private> global3: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> u32 {
    return 0u;
}

fn func_2() -> Struct_1 {
    global3 = _wgslsmith_div_u32(func_3(Struct_1(vec3<u32>(~17817u, 0u, 20537u), global1.b, _wgslsmith_div_vec4_f32(global1.c, global1.c), global1.d), _wgslsmith_f_op_f32(-815f + 1543f), !global2[_wgslsmith_index_u32(12845u, 9u)]), _wgslsmith_div_u32(~(global1.a.x << (62214u % 32u)), firstLeadingBit(~1u)));
    global2 = array<bool, 9>();
    global0 = !vec2<bool>(select(true, global2[_wgslsmith_index_u32(func_3(Struct_1(global1.a, vec4<bool>(global0.x, false, false, global1.b.x), vec4<f32>(819f, global1.c.x, global1.d.x, 1189f), global1.d), _wgslsmith_f_op_f32(trunc(global1.c.x)), true), 9u)], !any(global1.b.xyy)), select(!all(vec2<bool>(global2[_wgslsmith_index_u32(13775u, 9u)], false)), all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 9u)], global1.b.x, true, true), global1.b, vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 9u)], false, global0.x))), true));
    let var_0 = Struct_1(global1.a | _wgslsmith_div_vec3_u32(vec3<u32>(global1.a.x, reverseBits(1u), u_input.c), max(max(global1.a, global1.a), global1.a)), global1.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.c.x - -390f)))), -1485f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global1.c.x, global1.d.x)), -951f)), _wgslsmith_f_op_f32(round(global1.d.x)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.d * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global1.c.x, 906f)))))));
    var var_1 = -2147483647i > ~min(u_input.d, firstTrailingBit(max(2147483647i, u_input.d)));
    return Struct_1(min(select(~countOneBits(vec3<u32>(71632u, u_input.c, u_input.a)), global1.a, global1.b.x), abs(vec3<u32>(min(u_input.a, var_0.a.x), ~global1.a.x, var_0.a.x))), global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1037f, _wgslsmith_div_f32(var_0.c.x, var_0.d.x), var_0.d.x, global1.c.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, 929f, var_0.c.x, global1.c.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, -1271f, var_0.c.x, global1.c.x), global1.c))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.c))))), global1.c.wwx);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = select(reverseBits(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(1i, -1i, arg_2.x)), min(vec3<i32>(388i, arg_2.x, arg_2.x), countOneBits(vec3<i32>(u_input.d, -2147483647i, arg_2.x))))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-23687i, arg_2.x, arg_2.x), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -2175i, u_input.d), vec3<i32>(arg_2.x, u_input.d, 25488i)), select(vec3<i32>(arg_2.x, 0i, 49489i), vec3<i32>(u_input.d, -1i, 2147483647i), arg_1.b.yyx)) << (~select(vec3<u32>(34783u, 0u, arg_1.a.x), vec3<u32>(u_input.a, 0u, u_input.b), true) % vec3<u32>(32u)), min(vec3<i32>(arg_2.x, arg_2.x, _wgslsmith_sub_i32(u_input.d, -2147483647i)), select(~vec3<i32>(arg_2.x, u_input.d, arg_2.x), ~vec3<i32>(2147483647i, arg_2.x, arg_2.x), true))), false);
    var_0 = _wgslsmith_add_vec3_i32(select(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_2, select(var_0.xz, arg_2, false)), -18274i, select(-35921i, 52876i, global0.x) | _wgslsmith_sub_i32(44366i, u_input.d)), _wgslsmith_div_vec3_i32(-(~vec3<i32>(u_input.d, 24623i, var_0.x)), vec3<i32>(-53822i, var_0.x & u_input.d, abs(var_0.x))), true), ~(select(firstTrailingBit(vec3<i32>(-1i, u_input.d, -13332i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_2.x, 2147483647i), vec3<i32>(var_0.x, arg_2.x, -4055i)), all(vec4<bool>(arg_0, arg_0, false, false))) << (max(firstTrailingBit(global1.a), ~arg_3.a) % vec3<u32>(32u))));
    global3 = ~32961u;
    var var_1 = vec2<bool>(arg_1.b.x, -1i > select(min(-12168i, countOneBits(arg_2.x)), 19996i, arg_0));
    let var_2 = _wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(round(-505f)));
    return max(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(-vec3<i32>(arg_2.x, -1i, -4455i)), -select(vec3<i32>(-1i, 14692i, u_input.d), vec3<i32>(1i, var_0.x, -39145i), true)), -vec3<i32>(20318i, u_input.d, 13583i) >> ((reverseBits(vec3<u32>(62701u, arg_3.a.x, 5400u)) << (vec3<u32>(0u, 4294967295u, arg_3.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))), ~(-var_0.x));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = select(countOneBits(~abs(vec3<i32>(u_input.d, u_input.d, u_input.d))), vec3<i32>(func_4(true, func_2(), -vec2<i32>(u_input.d, 11393i), arg_2), 0i, firstTrailingBit(max(0i, -1i))), global1.b.xwx) | countOneBits(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.d, 25417i), vec3<i32>(-65269i, -22634i, -1i)) ^ vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d >> (65883u % 32u), max(39793i, u_input.d), 5181i)));
    var var_1 = arg_2;
    var var_2 = Struct_1(vec3<u32>(~(~_wgslsmith_add_u32(var_1.a.x, arg_2.a.x)), 1u, ~29380u), vec4<bool>(true, true, (global1.b.x | (false & global0.x)) && false, global0.x), vec4<f32>(_wgslsmith_f_op_f32(global1.d.x - 567f), var_1.d.x, _wgslsmith_f_op_f32(1112f + _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 803f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -130f, arg_2.d.x)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(762f, -829f, -466f))))))));
    var var_3 = 0i;
    let var_4 = arg_2;
    return 4294967295u;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = select(arg_0.b.zy, select(!global1.b.yz, select(vec2<bool>(!arg_3, false), !(!arg_0.b.yz), global0.x & any(global1.b)), -976f <= arg_0.c.x), select(select(arg_0.b.xy, !global1.b.wz, !select(global1.b.yw, vec2<bool>(false, false), global1.b.xx)), vec2<bool>((u_input.d >= u_input.d) && (true & arg_0.b.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.x, global1.a.x, 4635u, 46182u), ~arg_2), 9u)]), func_2().b.wx));
    let var_1 = abs(~_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.x, u_input.d, -7648i, u_input.d), -max(vec4<i32>(62795i, arg_1.x, arg_1.x, -1i), vec4<i32>(-1i, arg_1.x, arg_1.x, u_input.d))));
    global3 = arg_0.a.x;
    global3 = func_3(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1576f))), var_0.x);
    var var_2 = countOneBits(~(-(~vec2<i32>(arg_1.x, 13772i) >> (vec2<u32>(0u, arg_2.x) % vec2<u32>(32u)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.x;
    var var_1 = func_5(Struct_1(vec3<u32>(firstLeadingBit(global1.a.x), func_1(true, _wgslsmith_mult_u32(56010u, global1.a.x), Struct_1(global1.a, global1.b, global1.c, vec3<f32>(-1000f, -1125f, -140f)), _wgslsmith_f_op_f32(max(global1.c.x, -260f))), max(4294967295u, u_input.b)), vec4<bool>(!any(global1.b.zy), (130f == global1.c.x) & !global2[_wgslsmith_index_u32(4294967295u, 9u)], any(global1.b.xxy), global2[_wgslsmith_index_u32(firstLeadingBit(~global1.a.x), 9u)]), _wgslsmith_div_vec4_f32(vec4<f32>(-539f, _wgslsmith_div_f32(global1.c.x, -526f), 1102f, -533f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) * _wgslsmith_f_op_vec4_f32(global1.c - global1.c))), global1.d), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, firstLeadingBit(u_input.d)), min(vec3<i32>(u_input.d, 39226i, u_input.d), vec3<i32>(-20386i, u_input.d, u_input.d)) >> (max(global1.a, vec3<u32>(1406u, u_input.b, 10095u)) % vec3<u32>(32u))) << ((vec3<u32>(67673u >> (0u % 32u), abs(0u), ~4294967295u) & ~vec3<u32>(u_input.c, u_input.c, global1.a.x)) % vec3<u32>(32u)), vec4<u32>(7849u, ~select(_wgslsmith_sub_u32(4294967295u, 4294967295u), 4294967295u << (u_input.b % 32u), true), func_3(func_2(), -483f, all(func_2().b)), 0u), all(select(vec2<bool>(true, true), vec2<bool>(!global2[_wgslsmith_index_u32(35385u, 9u)], global0.x), global1.b.yy)));
    global2 = array<bool, 9>();
    var_1 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 14085u, 51685u), vec3<u32>(4294967295u, 4940u, 0u)), ~global1.a.x), ~(~vec3<u32>(global1.a.x, u_input.a, 1011u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(~global1.a.x, 22146u, 1u), global1.a) % vec3<u32>(32u)), !(!select(vec4<bool>(var_1.b.x, true, true, true), vec4<bool>(false, global1.b.x, global1.b.x, false), !global0.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.x, global1.c.x))), var_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(568f, -1000f, var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1801f)))), _wgslsmith_div_f32(global1.c.x, 134f)), _wgslsmith_f_op_vec3_f32(var_1.c.wyw * var_1.c.xxx));
    var var_2 = func_5(func_5(func_5(func_2(), firstLeadingBit(~vec3<i32>(u_input.d, u_input.d, u_input.d)), select(vec4<u32>(u_input.c, global1.a.x, var_1.a.x, var_1.a.x), vec4<u32>(global1.a.x, 1u, u_input.a, var_1.a.x) << (vec4<u32>(u_input.b, u_input.c, var_1.a.x, global1.a.x) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(u_input.c, 9u)]), true), vec3<i32>(abs(-18317i), u_input.d, u_input.d), min(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.a.x, 75389u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, 1u, global1.a.x, 6706u), vec4<u32>(1u, 71433u, var_1.a.x, 6343u))), ~vec4<u32>(0u, var_1.a.x, u_input.b, 7565u)), func_5(func_5(Struct_1(vec3<u32>(16025u, 18570u, u_input.b), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 9u)], true, false, global1.b.x), vec4<f32>(global1.c.x, var_1.c.x, -169f, -645f), global1.c.yyz), vec3<i32>(u_input.d, u_input.d, u_input.d) | vec3<i32>(u_input.d, 1i, u_input.d), firstLeadingBit(vec4<u32>(global1.a.x, 33650u, 10577u, var_1.a.x)), true), vec3<i32>(-1i) * -vec3<i32>(7274i, -2147483647i, 4877i), vec4<u32>(10563u, u_input.a, 1u, func_3(Struct_1(vec3<u32>(u_input.b, global1.a.x, global1.a.x), vec4<bool>(global1.b.x, global2[_wgslsmith_index_u32(var_1.a.x, 9u)], true, false), global1.c, vec3<f32>(var_1.c.x, -526f, var_1.c.x)), -878f, global1.b.x)), global1.b.x).b.x), -(~(~vec3<i32>(u_input.d, u_input.d, u_input.d) & -vec3<i32>(u_input.d, u_input.d, u_input.d))), _wgslsmith_div_vec4_u32(~abs(~vec4<u32>(var_1.a.x, u_input.c, u_input.c, global1.a.x)), firstTrailingBit(firstLeadingBit(~vec4<u32>(u_input.b, global1.a.x, var_1.a.x, var_1.a.x)))), false).b.zzy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d), _wgslsmith_f_op_vec3_f32(step(var_1.d, global1.d))), vec3<f32>(_wgslsmith_f_op_f32(step(-578f, global1.c.x)), _wgslsmith_f_op_f32(sign(var_1.d.x)), _wgslsmith_f_op_f32(-var_1.c.x)), !(!global1.b.xwz)))));
}

