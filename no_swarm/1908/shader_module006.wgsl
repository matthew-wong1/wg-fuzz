struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(6383u, 97214u), vec2<u32>(0u, 0u), vec2<u32>(69620u, 1u), vec2<u32>(0u, 0u), vec2<u32>(31086u, 1u), vec2<u32>(6906u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(73675u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(30945u, 33747u), vec2<u32>(4294967295u, 8641u), vec2<u32>(54235u, 10884u), vec2<u32>(1u, 70670u), vec2<u32>(7079u, 30747u), vec2<u32>(15580u, 63355u), vec2<u32>(18647u, 4294967295u), vec2<u32>(0u, 10846u), vec2<u32>(18757u, 34179u), vec2<u32>(28146u, 0u), vec2<u32>(4666u, 49462u), vec2<u32>(4259u, 1u), vec2<u32>(41216u, 1806u), vec2<u32>(20458u, 74398u), vec2<u32>(20390u, 83779u), vec2<u32>(1u, 33926u), vec2<u32>(4709u, 38236u), vec2<u32>(37219u, 59460u), vec2<u32>(0u, 18283u));

var<private> global1: array<i32, 8>;

var<private> global2: array<u32, 1> = array<u32, 1>(1u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.e) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-216f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(899f)))))));
    var var_1 = Struct_4(arg_3.a, select(select(!(!vec3<bool>(arg_2.c, true, arg_3.b.x)), vec3<bool>(any(arg_3.b), arg_3.b.x, false == arg_2.c), true), select(arg_3.b, vec3<bool>(true, true, true), true), select(arg_3.b, select(arg_3.b, arg_3.b, !arg_2.c), all(vec2<bool>(true, true)))), arg_3.c, Struct_2(_wgslsmith_div_i32(-2147483647i, arg_3.d.a ^ arg_1.x), _wgslsmith_mult_vec4_i32(arg_2.b, ~arg_0), vec2<bool>(true, false), arg_3.d.d, countOneBits(~vec4<u32>(0u, 44652u, 0u, u_input.a.x))), vec2<f32>(arg_3.e.x, var_0.x));
    var_1 = Struct_4(~firstTrailingBit(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(var_1.d.d, var_1.d.d), 1u)]), select(select(arg_3.b, select(arg_3.b, !vec3<bool>(true, arg_2.c, var_1.b.x), vec3<bool>(false, false, arg_2.c)), !arg_3.b), var_1.b, all(!select(arg_3.b.xz, vec2<bool>(false, arg_3.d.c.x), arg_3.b.zz))), vec2<u32>(arg_3.c.x, 33791u), var_1.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.e.x)) - _wgslsmith_f_op_f32(-var_1.e.x)), _wgslsmith_f_op_f32(-var_0.x))));
    global1 = array<i32, 8>();
    var var_2 = arg_2;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-289f, arg_3.e.x, var_0.x, arg_3.e.x), vec4<f32>(var_1.e.x, var_0.x, arg_3.e.x, -708f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.e.x, arg_3.e.x, arg_3.e.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(142f, -842f, arg_3.e.x, var_0.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -809f, 319f, var_1.e.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.e.x, 289f, var_1.e.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, -1235f, -1409f, arg_3.e.x))), false)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> f32 {
    let var_0 = vec4<bool>(96105u >= _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, arg_0.a)), firstTrailingBit(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 30u)])), any(vec3<bool>(any(!vec4<bool>(arg_0.b, arg_0.c.x, false, arg_0.c.x)), true, true)), ~(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b) >> (~u_input.a.x % 32u)) <= -(-56882i | u_input.c), select(false, any(select(vec3<bool>(arg_0.c.x, arg_0.b, true), vec3<bool>(false, false, arg_0.b), vec3<bool>(false, arg_0.c.x, true))) && true, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.yz * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x - -424f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-302f, 1092f), vec2<f32>(2335f, arg_1.x)))), arg_1.xw))), vec2<bool>(any(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), var_0.x)));
    var var_2 = Struct_2(i32(-1i) * -44557i, -vec4<i32>(_wgslsmith_mod_i32(-6569i, countOneBits(-2147483647i)), -25271i, firstTrailingBit(global1[_wgslsmith_index_u32(1u, 8u)]), (global1[_wgslsmith_index_u32(21173u, 8u)] ^ 2147483647i) << (_wgslsmith_add_u32(1u, arg_0.a) % 32u)), arg_0.c, ~(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(112094u, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], 0u, arg_0.a), vec4<u32>(arg_0.a, 33483u, 14416u, global2[_wgslsmith_index_u32(53430u, 1u)])), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], 10467u, 1226u, 0u), var_0)), ~_wgslsmith_div_vec4_u32(vec4<u32>(~1u, ~39006u, _wgslsmith_clamp_u32(arg_0.a, 4294967295u, 1u), firstTrailingBit(1u)), abs(~vec4<u32>(arg_0.a, 85955u, 15905u, 1u))));
    let var_3 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(max(1322f, var_1.x)), var_1.x);
    var_2 = Struct_2(1i, vec4<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, 21850i, 1i), vec4<i32>(var_2.b.x, -1i, u_input.b, 0i)), var_2.b), 1i, -select(global1[_wgslsmith_index_u32(8581u, 8u)], 2147483647i, var_2.c.x) | firstTrailingBit(u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-global1[_wgslsmith_index_u32(1u, 8u)], countOneBits(-1i), _wgslsmith_dot_vec4_i32(var_2.b, var_2.b), global1[_wgslsmith_index_u32(1u, 8u)] ^ global1[_wgslsmith_index_u32(1u, 8u)]), -var_2.b)), vec2<bool>(true, arg_0.b), _wgslsmith_clamp_vec4_u32(~vec4<u32>(25807u, 4294967295u, ~4294967295u, ~67322u), vec4<u32>(arg_0.a, arg_0.a, ~(1u << (global2[_wgslsmith_index_u32(arg_0.a, 1u)] % 32u)), 0u), abs(firstLeadingBit(var_2.e))), ~(~var_2.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + var_1.x) * _wgslsmith_f_op_f32(exp2(var_3.x))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = !(!(!vec3<bool>(arg_1.c | false, false, global1[_wgslsmith_index_u32(46485u, 8u)] == -1i)));
    var_0 = !vec3<bool>(true, true, var_0.x);
    global0 = array<vec2<u32>, 30>();
    global0 = array<vec2<u32>, 30>();
    var var_1 = -(arg_0.b << (vec4<u32>(~(~global2[_wgslsmith_index_u32(47529u, 1u)]), u_input.d.x, select(~4294967295u, u_input.a.x, arg_0.c & false), 19972u) % vec4<u32>(32u)));
    return _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -904f));
}

fn func_2() -> i32 {
    global2 = array<u32, 1>();
    var var_0 = Struct_3(~4294967295u, _wgslsmith_f_op_f32(func_5(Struct_1(reverseBits(vec2<i32>(47433i, u_input.c)), ~vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.d.x, 8u)], 2147483647i, -2147483647i), false), Struct_1(~vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]), ~vec4<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 8u)], u_input.c, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u)], 1u)], 8u)], 2147483647i), global1[_wgslsmith_index_u32(0u, 8u)] < u_input.c), _wgslsmith_f_op_f32(func_4(Struct_3(1u, true, vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(2147483647i, u_input.b, 4277i, 1i), vec4<i32>(43095i, global1[_wgslsmith_index_u32(10813u, 8u)], 9568i, 1i), Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(19260u, 8u)], global1[_wgslsmith_index_u32(15929u, 8u)]), vec4<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 8u)], -1i, -13464i, global1[_wgslsmith_index_u32(u_input.d.x, 8u)]), false), Struct_4(0u, vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 30u)], Struct_2(global1[_wgslsmith_index_u32(31731u, 8u)], vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.c, u_input.b), vec2<bool>(false, false), vec4<u32>(41690u, u_input.d.x, 0u, 86662u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50489u, 1u)], 1u)], u_input.d.x, 1345u, 1u)), vec2<f32>(-1028f, 1286f)))))), Struct_1(~vec2<i32>(-19679i, global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<i32>(-2147483647i, u_input.c, -268i, u_input.c), true))) == -2365f, !(!select(vec2<bool>(true, false), vec2<bool>(false, true), all(vec2<bool>(true, false)))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(firstTrailingBit(~global2[_wgslsmith_index_u32(u_input.d.x, 1u)]), var_0.a), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(41847u, 1u), ~u_input.a.yy), _wgslsmith_sub_vec2_u32(vec2<u32>(108862u, global2[_wgslsmith_index_u32(0u, 1u)]), u_input.d.zy))) & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], 1u)], 1u)];
    var var_2 = select(vec4<bool>(!(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), 8u)] < 1i), true, true, true & any(select(vec4<bool>(true, true, var_0.c.x, var_0.b), vec4<bool>(false, var_0.c.x, var_0.b, true), vec4<bool>(var_0.b, false, var_0.c.x, true)))), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, false, var_0.b, var_0.c.x), vec4<bool>(true, var_0.c.x, false, true), vec4<bool>(var_0.c.x, var_0.b, var_0.b, true))), !var_0.c.x, all(vec3<bool>(var_0.c.x, true, false))), vec4<bool>(u_input.a.x <= ~u_input.a.x, !(!var_0.c.x), any(vec3<bool>(var_0.c.x, true, var_0.c.x)), var_0.b), vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(52060u, 111633u), vec2<u32>(0u, var_0.a)) >= 1u, false, true, !all(var_0.c))), select(select(vec4<bool>(true, var_0.c.x, true, var_0.b && var_0.c.x), vec4<bool>(true, true, var_0.b, all(vec3<bool>(var_0.b, var_0.c.x, var_0.c.x))), vec4<bool>(true, true, true, true)), vec4<bool>(select(false, var_0.c.x, var_0.b), true, !var_0.b, var_0.c.x), !vec4<bool>(true, true, false, all(vec4<bool>(true, true, var_0.c.x, false)))));
    var var_3 = any(select(vec2<bool>(false, var_2.x), select(vec2<bool>(true, true), vec2<bool>(var_2.x, var_2.x), !vec2<bool>(true, var_2.x)), select(!var_2.yw, var_0.c, var_0.b)));
    return global1[_wgslsmith_index_u32(var_0.a, 8u)];
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i >> (global2[_wgslsmith_index_u32(1u, 1u)] % 32u), firstLeadingBit(u_input.c)), -(max(vec2<i32>(-22828i, -1i), vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.a.x, 8u)])) & select(vec2<i32>(2147483647i, u_input.c), vec2<i32>(-1i, u_input.b), vec2<bool>(false, false)))), vec4<i32>(-1i) * -select(max(vec4<i32>(12247i, 37070i, u_input.c, 4553i), vec4<i32>(-33188i, global1[_wgslsmith_index_u32(27806u, 8u)], -49010i, 3063i)), vec4<i32>(99159i, global1[_wgslsmith_index_u32(arg_0, 8u)], -2147483647i, 1i) & vec4<i32>(-28183i, global1[_wgslsmith_index_u32(u_input.d.x, 8u)], -7660i, u_input.c), vec4<bool>(true, true, true, true)), (~func_2() == -1i) || false);
    let var_1 = Struct_3(1u, !all(vec2<bool>(select(var_0.c, var_0.c, true), any(vec2<bool>(var_0.c, var_0.c)))), select(vec2<bool>(select(!var_0.c, var_0.c, true), any(select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, true)))), !vec2<bool>(true, u_input.b == -1i), arg_0 > global2[_wgslsmith_index_u32(~u_input.a.x, 1u)]));
    let var_2 = Struct_4(0u, vec3<bool>(var_0.c, !all(!vec3<bool>(var_1.b, false, true)), !(!(!var_1.c.x))), ~(~(~(vec2<u32>(arg_0, u_input.a.x) ^ u_input.a.yx))), Struct_2(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(12285u, arg_0) << (1u % 32u), 8u)], _wgslsmith_div_i32(~var_0.b.x, _wgslsmith_div_i32(var_0.a.x, -2147483647i))), var_0.b, var_1.c, countOneBits(countOneBits(vec4<u32>(38290u, global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], arg_0))) & ~(vec4<u32>(0u, 4294967295u, 19259u, arg_0) >> (vec4<u32>(var_1.a, global2[_wgslsmith_index_u32(13920u, 1u)], u_input.a.x, u_input.d.x) % vec4<u32>(32u))), select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(108963u, global2[_wgslsmith_index_u32(arg_0, 1u)], 0u, var_1.a), ~vec4<u32>(u_input.d.x, var_1.a, global2[_wgslsmith_index_u32(46296u, 1u)], u_input.d.x), vec4<u32>(u_input.a.x, 102646u, var_1.a, 17704u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0, arg_0, 55336u), vec4<u32>(global2[_wgslsmith_index_u32(66243u, 1u)], 4294967295u, arg_0, 2758u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(35727u, arg_0, u_input.d.x, global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<u32>(var_1.a, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.d.x, global2[_wgslsmith_index_u32(var_1.a, 1u)])), select(select(vec4<bool>(var_1.c.x, true, false, var_0.c), vec4<bool>(true, true, var_0.c, var_1.c.x), vec4<bool>(var_0.c, false, var_1.c.x, var_1.c.x)), !vec4<bool>(var_0.c, var_1.b, false, false), select(vec4<bool>(true, var_0.c, false, var_0.c), vec4<bool>(false, false, true, var_1.b), vec4<bool>(true, false, var_1.c.x, true))))), _wgslsmith_f_op_vec4_f32(func_3(var_0.b, vec4<i32>(global1[_wgslsmith_index_u32(65552u, 8u)], 0i, ~u_input.b, _wgslsmith_clamp_i32(u_input.c, abs(global1[_wgslsmith_index_u32(arg_0, 8u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(var_1.a, 8u)], var_0.b.x), var_0.b.yww))), Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.a, 1u)], 1u)], 8u)], global1[_wgslsmith_index_u32(reverseBits(var_1.a), 8u)]), var_0.b, any(select(vec3<bool>(false, var_1.c.x, false), vec3<bool>(false, var_0.c, var_1.c.x), vec3<bool>(true, var_1.c.x, false)))), Struct_4(~max(arg_0, u_input.d.x), !select(vec3<bool>(var_0.c, true, var_1.b), vec3<bool>(false, false, var_0.c), vec3<bool>(var_0.c, var_1.b, true)), firstTrailingBit(vec2<u32>(global2[_wgslsmith_index_u32(var_1.a, 1u)], arg_0) >> (global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45320u, 1u)], 1u)], 1u)], 30u)] % vec2<u32>(32u))), Struct_2(_wgslsmith_mult_i32(-17421i, u_input.c), countOneBits(var_0.b), var_1.c, ~vec4<u32>(global2[_wgslsmith_index_u32(0u, 1u)], u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], var_1.a), vec4<u32>(global2[_wgslsmith_index_u32(3466u, 1u)], u_input.d.x, global2[_wgslsmith_index_u32(1u, 1u)], 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1, arg_1)))))).yw);
    var var_3 = false;
    let var_4 = var_2.d;
    return select(select(var_1.c, !select(select(var_4.c, var_1.c, true), vec2<bool>(true, false), var_4.c.x), select(vec2<bool>(true, true), var_2.b.zy, !(var_2.d.c.x & true))), var_4.c, (var_4.a == (abs(17659i) & var_2.d.b.x)) | var_2.d.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(true, select(true, true, false)), func_1(~(~(~38030u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-460f, 1735f), vec2<f32>(1000f, 249f)))))), false);
    global0 = array<vec2<u32>, 30>();
    global2 = array<u32, 1>();
    var var_1 = 953f;
    var var_2 = Struct_1(vec2<i32>(~global1[_wgslsmith_index_u32(~28326u, 8u)], -global1[_wgslsmith_index_u32(u_input.d.x, 8u)]) & vec2<i32>(abs(i32(-1i) * -2147483647i), global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), ~(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, -23393i, global1[_wgslsmith_index_u32(u_input.d.x, 8u)], 0i), vec4<i32>(global1[_wgslsmith_index_u32(29644u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(18986u, 8u)], -2147483647i), vec4<i32>(-4399i, global1[_wgslsmith_index_u32(57119u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], -3171i)), vec4<i32>(global1[_wgslsmith_index_u32(6039u, 8u)], 27744i, -1i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 0i, -2147483647i, 36709i), vec4<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 8u)], 2147483647i, -1i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 8u)]))) << (reverseBits(countOneBits(vec4<u32>(u_input.d.x, 1u, global2[_wgslsmith_index_u32(1u, 1u)], u_input.d.x))) % vec4<u32>(32u))), all(!(!vec2<bool>(var_0.x, var_0.x))));
    let var_3 = Struct_1(countOneBits(var_2.b.zy), -max(vec4<i32>(min(30647i, -57277i), ~u_input.c, abs(var_2.b.x), u_input.b), vec4<i32>(_wgslsmith_dot_vec2_i32(var_2.b.zw, var_2.a), ~24201i, u_input.c ^ 0i, var_2.b.x)), all(var_0));
    var var_4 = vec4<f32>(715f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1702f, 263f)) - _wgslsmith_f_op_f32(f32(-1f) * -183f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1234f * 376f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1127f, 259f, false))), _wgslsmith_f_op_f32(sign(-1504f))))), -379f);
    var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-943f, 452f, -891f, var_4.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_4.x - var_4.x), var_4.x, 147f, _wgslsmith_f_op_f32(ceil(-1006f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, 751f, -1000f, 2440f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, 1483f, var_4.x, var_4.x) - vec4<f32>(-1494f, -748f, -191f, var_4.x))))));
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(386f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(3474u, var_0.x, var_0), vec4<f32>(var_4.x, var_4.x, var_4.x, 374f))) * _wgslsmith_f_op_f32(1767f - var_4.x))))));
}

