struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true));

var<private> global1: array<Struct_2, 16>;

var<private> global2: array<f32, 9> = array<f32, 9>(-1128f, 709f, -807f, 445f, -458f, -1000f, 1450f, -528f, -1015f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: bool) -> bool {
    var var_0 = Struct_4(u_input.c.xw, _wgslsmith_mod_i32(arg_1.x, -(14276i ^ _wgslsmith_sub_i32(1i, arg_1.x))), Struct_3(arg_1.x > 0i, ~select(vec4<i32>(1i, arg_1.x, arg_1.x, arg_1.x), arg_1, arg_2) & arg_1, Struct_1(-1607f, vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(3614u, arg_0)), _wgslsmith_dot_vec3_u32(u_input.c.xxy, u_input.a.wxz), 0u), vec3<bool>(arg_2, false, arg_2), arg_1.zz), !(!global0[_wgslsmith_index_u32(abs(arg_0), 25u)])));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.c.a, 792f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c.c.a, var_0.c.c.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 9u)], -1282f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.c.a, var_0.c.c.a))) + vec2<f32>(630f, 489f))));
    global1 = array<Struct_2, 16>();
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.c.xw, vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 0u, u_input.c.x), ~vec3<u32>(arg_0, 4294967295u, 107990u)))));
    let var_3 = Struct_4(~_wgslsmith_sub_vec2_u32(var_0.c.c.b.ww, vec2<u32>(_wgslsmith_mult_u32(47068u, 65042u), abs(u_input.a.x))), 2147483647i, var_0.c);
    return var_0.c.c.c.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> u32 {
    let var_0 = func_3(19577u, vec4<i32>(-1i) * -(-vec4<i32>(arg_2.b.x, arg_2.c.d.x, arg_2.c.d.x, -20088i) & ~arg_2.b), false);
    let var_1 = arg_2.c;
    global1 = array<Struct_2, 16>();
    global0 = array<vec4<bool>, 25>();
    global2 = array<f32, 9>();
    return _wgslsmith_mult_u32(12193u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, firstLeadingBit(26641u), arg_1, 21020u), vec4<u32>(_wgslsmith_add_u32(5626u, 62297u), 0u, select(var_1.b.x, var_1.b.x, true), ~49820u)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1398f, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(4294967295u, 9u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(1u, 9u)])))), global2[_wgslsmith_index_u32(0u, 9u)])), vec4<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(abs(u_input.d), 9u)])), -660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1103f * global2[_wgslsmith_index_u32(u_input.d, 9u)]) * _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 1166f, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.a.x ^ 803u, 9u)]))))), all(global0[_wgslsmith_index_u32(22987u, 25u)])));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(26892u, 9u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-552f + 530f))))) - global2[_wgslsmith_index_u32(u_input.c.x >> (abs(u_input.a.x) % 32u), 9u)]);
    global0 = array<vec4<bool>, 25>();
    let var_2 = func_2(vec2<f32>(global2[_wgslsmith_index_u32(51332u, 9u)], -798f), 3453u, Struct_3(true & (u_input.d < u_input.b), vec4<i32>(-28869i, 1i, i32(-1i) * -44420i, 1i), Struct_1(398f, _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(u_input.b, 59822u, u_input.d, u_input.a.x)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), abs(vec2<i32>(1i, 29861i))), vec4<bool>(true, true, true, true)), -362f) > _wgslsmith_mult_u32(_wgslsmith_sub_u32(~9464u, 1u), _wgslsmith_div_u32(abs(_wgslsmith_add_u32(u_input.b, 4294967295u)), 1u));
    var var_3 = Struct_3(!(false || var_2), vec4<i32>(i32(-1i) * -firstTrailingBit(-1i), -2147483647i, -(~(i32(-1i) * -4916i)), -2147483647i), Struct_1(864f, vec4<u32>(1u, 0u, 51674u, firstTrailingBit(45189u)) & ~select(vec4<u32>(1u, 0u, u_input.d, u_input.b), u_input.a, var_2), vec3<bool>(true, !var_2, !(var_0.x > global2[_wgslsmith_index_u32(u_input.b, 9u)])), reverseBits(reverseBits(~vec2<i32>(0i, 2147483647i)))), select(select(vec4<bool>(any(vec4<bool>(true, var_2, true, var_2)), true, var_2, !var_2), select(global0[_wgslsmith_index_u32(0u, 25u)], !vec4<bool>(false, var_2, false, false), false), true), select(select(global0[_wgslsmith_index_u32(func_2(var_0.yx, u_input.d, Struct_3(false, vec4<i32>(51120i, -213i, 42421i, -40670i), Struct_1(1200f, u_input.c, vec3<bool>(true, var_2, true), vec2<i32>(62309i, -2147483647i)), vec4<bool>(var_2, var_2, var_2, var_2)), var_0.x), 25u)], select(vec4<bool>(var_2, true, true, var_2), global0[_wgslsmith_index_u32(1u, 25u)], var_2), var_2), !vec4<bool>(true, var_2, var_2, var_2), var_2), select(select(!vec4<bool>(var_2, false, var_2, var_2), !vec4<bool>(var_2, var_2, var_2, var_2), all(vec2<bool>(false, var_2))), global0[_wgslsmith_index_u32(u_input.b, 25u)], true)));
    return Struct_1(global2[_wgslsmith_index_u32(60274u, 9u)], _wgslsmith_mult_vec4_u32(abs(abs(var_3.c.b)), _wgslsmith_mult_vec4_u32(~var_3.c.b, u_input.a)), !(!select(!var_3.d.zwz, vec3<bool>(true, false, var_2), true)), firstLeadingBit(vec2<i32>(var_3.b.x, _wgslsmith_dot_vec4_i32(var_3.b, var_3.b) << (u_input.b % 32u))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(arg_1.a.b.x, 9u)])), 185f);
    global1 = array<Struct_2, 16>();
    var var_1 = arg_1;
    let var_2 = var_1.a.b.x;
    let var_3 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(arg_1.a.d.x, 0i, var_1.a.d.x)), _wgslsmith_add_vec3_i32(~vec3<i32>(arg_1.a.d.x, 1345i, var_1.a.d.x), ~vec3<i32>(-9948i, -17796i, arg_1.a.d.x))), vec3<i32>(~_wgslsmith_dot_vec2_i32(arg_1.a.d, vec2<i32>(538i, arg_1.a.d.x)), -arg_1.a.d.x >> (u_input.d % 32u), _wgslsmith_mod_i32(var_1.a.d.x, -arg_1.a.d.x))), arg_1.a.d.x, _wgslsmith_div_i32(~(-1i | ~arg_1.a.d.x), arg_1.a.d.x));
    return Struct_1(1135f, ~vec4<u32>(abs(u_input.c.x), arg_1.a.b.x, ~u_input.d, var_1.a.b.x) >> (var_1.a.b % vec4<u32>(32u)), !select(var_1.a.c, !var_1.a.c, !var_1.a.c), arg_1.a.d);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = arg_2.a;
    var var_1 = Struct_4((func_1().b.xy ^ _wgslsmith_add_vec2_u32(arg_2.b.yy, ~arg_2.b.yy)) & firstTrailingBit(vec2<u32>(~1u, 1u)), 44326i, Struct_3(true, ~_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, arg_2.d.x, arg_2.d.x, arg_1)), min(vec4<i32>(-14916i, 0i, 3809i, arg_2.d.x), vec4<i32>(arg_2.d.x, -28466i, arg_0.d.x, arg_1))), arg_0, vec4<bool>(true, _wgslsmith_mult_u32(4294967295u, u_input.d) != arg_0.b.x, arg_2.d.x <= ~(-2147483647i), false)));
    let var_2 = true;
    var var_3 = arg_0.a <= _wgslsmith_f_op_f32(select(-948f, arg_0.a, true));
    var var_4 = var_1.c.c;
    return Struct_4(~vec2<u32>(~arg_0.b.x, ~_wgslsmith_sub_u32(4294967295u, 1u)), -28309i, var_1.c);
}

fn func_6(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: bool) -> StorageBuffer {
    global2 = array<f32, 9>();
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(50669u ^ u_input.c.x, 9u)], func_1().b, vec3<bool>(true, arg_2, (arg_0.b < abs(arg_0.c.b.x)) || arg_2), vec2<i32>(-arg_0.c.c.d.x, -(~1i)));
    var var_1 = vec3<i32>(0i, -2147483647i, arg_0.b);
    global1 = array<Struct_2, 16>();
    let var_2 = false;
    return StorageBuffer(func_5(arg_0.c.c, firstLeadingBit(-1i), Struct_1(func_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-889f, 1621f), vec2<f32>(var_0.a, 1122f))), global1[_wgslsmith_index_u32(abs(arg_1.x), 16u)]).a, max(u_input.a, max(vec4<u32>(77051u, u_input.d, 6535u, 43452u), vec4<u32>(var_0.b.x, arg_1.x, arg_0.c.c.b.x, arg_1.x))), !func_1().c, var_0.d), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.c.a, -1728f, 504f) - vec3<f32>(arg_0.c.c.a, -1876f, arg_0.c.c.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.a, global2[_wgslsmith_index_u32(4294967295u, 9u)])))))).c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.a)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-706f)) + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], -1071f)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~arg_0.b, 1i, ~arg_0.b), vec3<i32>(_wgslsmith_div_i32(var_1.x, var_0.d.x), _wgslsmith_clamp_i32(var_1.x, -40042i, -26036i), arg_0.b >> (arg_1.x % 32u))), ~arg_0.c.b.xyy, -arg_0.c.b.wxy & (~vec3<i32>(arg_0.c.c.d.x, -1i, -47475i) >> (arg_1 % vec3<u32>(32u)))), _wgslsmith_mult_vec2_u32(~firstTrailingBit(~arg_1.yz), abs(select(~vec2<u32>(arg_1.x, arg_1.x), arg_1.xy, vec2<bool>(true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 9>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-298f, _wgslsmith_div_f32(-447f, global2[_wgslsmith_index_u32(27040u, 9u)]))) - 1121f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 9u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 9u)] - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1541f, 173f), global2[_wgslsmith_index_u32(u_input.b, 9u)], true)))));
    let x = u_input.a;
    s_output = func_6(func_5(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-367f, -962f)))), Struct_2(func_1(), global2[_wgslsmith_index_u32(u_input.b, 9u)])), 4829i, Struct_1(-583f, vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xzw, u_input.a.xyy), 2477u << (1u % 32u), 1359u, u_input.d), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), firstLeadingBit(vec2<i32>(-2147483647i, 1i)) << (_wgslsmith_sub_vec2_u32(u_input.a.yw, u_input.c.yw) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 9u)]), -822f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 9u)] + global2[_wgslsmith_index_u32(16225u, 9u)])))), vec3<u32>(u_input.c.x | ~u_input.d, ~countOneBits(1u), u_input.c.x) & ~vec3<u32>(4539u, 50838u, _wgslsmith_sub_u32(1u, u_input.c.x)), false);
}

