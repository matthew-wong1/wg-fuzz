struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: vec4<f32>;

var<private> global2: Struct_4 = Struct_4(vec2<u32>(4294967295u, 113906u), 4294967295u, vec2<f32>(-413f, 168f), false);

var<private> global3: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec2<i32>(i32(-2147483648), -5112i), true, vec3<i32>(2147483647i, -25001i, 30161i)), Struct_2(vec2<i32>(-49867i, 9262i), false, vec3<i32>(25820i, 460i, 8249i)));

var<private> global4: Struct_4;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = select(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.a.x, 4294967295u, 32494u, 1u) << (vec4<u32>(global4.a.x, 1u, global2.b, 4294967295u) % vec4<u32>(32u)), vec4<u32>(32596u, global4.b, global2.b, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, global2.a.x), vec4<u32>(36040u, 50045u, 0u, u_input.a), vec4<u32>(global2.b, global4.b, 1u, u_input.a)))), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(48193u, u_input.a, 10088u, global2.b)), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 11355u, u_input.a)) ^ firstTrailingBit(vec4<u32>(global4.b, 4294967295u, 4294967295u, u_input.a))) | _wgslsmith_mult_vec4_u32(vec4<u32>(7077u, global2.a.x, _wgslsmith_div_u32(0u, 1u), firstLeadingBit(0u)), vec4<u32>(global2.b ^ 1u, abs(24026u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 16567u, u_input.a), vec4<u32>(0u, global4.b, global2.a.x, global2.a.x)))), vec4<bool>(global2.d, any(!(!vec3<bool>(true, global4.d, arg_0.a.x))), global2.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c))) != _wgslsmith_div_f32(-1331f, -725f)));
    global2 = Struct_4(firstTrailingBit(~countOneBits(vec2<u32>(111083u, u_input.a))), 0u, vec2<f32>(global4.c.x, -874f), arg_0.b.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x * global2.c.x)) * -1459f));
    let var_1 = Struct_4(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.b, 29221u) << (firstTrailingBit(var_0.yz) % vec2<u32>(32u)), vec2<u32>(~4294967295u, firstLeadingBit(var_0.x))), vec2<u32>(4294967295u << (global2.a.x % 32u), _wgslsmith_add_u32(~131574u, abs(59449u)))), _wgslsmith_div_u32(~min(global4.b, firstLeadingBit(67964u)), reverseBits(firstTrailingBit(var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(469f * global2.c.x), _wgslsmith_f_op_f32(round(131f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.xy)))), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-3044f, -459f), 188f, 613f, -315f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(658f, 1293f, var_1.c.x, 482f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-257f, -1443f, global2.c.x, var_1.c.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1350f, -134f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global4.c.x * 1384f)))))));
    let var_3 = Struct_3(2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(17112u, ~103184u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global2.a.x), vec3<u32>(1u, var_1.a.x, 80838u))), var_0.zwx, vec3<bool>(var_1.d, any(arg_0.d), var_1.d || var_1.d)), vec3<u32>(u_input.a | global4.b, global4.b, ~34084u)), 2u)]);
    return global2.a.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    global4 = Struct_4(~vec2<u32>(1u, ~global2.b ^ ~global2.b), _wgslsmith_sub_u32(1u & _wgslsmith_div_u32(u_input.a, 1u), global2.b), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.yy + vec2<f32>(-531f, global1.x))))))), (-33461i << (global2.a.x % 32u)) > u_input.b);
    global4 = Struct_4(_wgslsmith_div_vec2_u32(global2.a, global4.a), _wgslsmith_sub_u32(~abs(10391u), ~func_3(arg_1)) & (~global2.b ^ _wgslsmith_mult_u32(func_3(Struct_1(vec3<bool>(true, arg_1.d.x, global4.d), vec3<f32>(-1833f, global1.x, 1270f), -234f, vec4<bool>(arg_1.a.x, true, true, true))), ~global2.a.x)), global4.c, global2.d);
    let var_0 = 3160u;
    let var_1 = arg_1;
    let var_2 = Struct_1(select(arg_1.d.yzx, select(vec3<bool>(-1215f == arg_1.c, true, false), vec3<bool>(any(var_1.d.zy), all(vec4<bool>(global2.d, global4.d, true, global4.d)), true), ~17504i == ~arg_2.a.x), vec3<bool>(true, true, _wgslsmith_dot_vec2_i32(arg_2.c.xz, arg_0.wy) >= ~u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(exp2(global4.c.x))), _wgslsmith_div_f32(-651f, _wgslsmith_div_f32(-243f, global4.c.x)), 1f)), arg_1.b.x, select(select(vec4<bool>(true, true, true, true), arg_1.d, select(arg_1.d, !vec4<bool>(global2.d, false, false, true), all(var_1.d.zw))), !vec4<bool>(all(arg_1.d.ww), true, global2.c.x == var_1.b.x, true || arg_2.b), var_1.d));
    return Struct_3(1i, arg_2);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>) -> f32 {
    var var_0 = vec3<u32>(18160u, ~(~0u), _wgslsmith_mod_u32(~u_input.a, ~(~0u)));
    global3 = array<Struct_2, 2>();
    let var_1 = arg_1.b;
    var var_2 = vec3<bool>(arg_1.b.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global4.c.x, -1863f))))) >= global2.c.x, any(select(vec2<bool>(global4.d || arg_1.b.b, true), !(!vec2<bool>(false, var_1.b)), _wgslsmith_f_op_f32(select(194f, 1000f, global4.d)) <= -978f)));
    var_2 = select(select(!vec3<bool>(any(vec4<bool>(false, false, true, true)), true, true), vec3<bool>(!any(vec4<bool>(true, false, var_2.x, false)), true, true), vec3<bool>(any(var_2.xx), global2.d, !(1209u < global2.a.x))), vec3<bool>(global2.d, true, !any(vec3<bool>(global2.d, var_1.b, arg_1.b.b))), select(vec3<bool>(global2.d & global4.d, arg_1.b.b, var_1.b), vec3<bool>(true, global4.d, any(!vec4<bool>(true, false, var_1.b, true))), select(select(select(vec3<bool>(false, var_2.x, arg_1.b.b), vec3<bool>(global2.d, arg_0.b.b, var_1.b), vec3<bool>(arg_0.b.b, false, false)), vec3<bool>(var_2.x, global2.d, var_2.x), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(var_1.b, true, global2.d)), true, true), var_1.c.x <= var_1.c.x)));
    return 336f;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(Struct_3(-2402i, global3[_wgslsmith_index_u32(31962u, 2u)]), func_2(vec4<i32>(u_input.b, u_input.b, 8971i, arg_0.x), global0[_wgslsmith_index_u32(39425u, 8u)], Struct_2(arg_0.wx, true, vec3<i32>(1i, -47558i, arg_0.x))), arg_0.yw)), -1000f))));
    let var_1 = global2.d;
    global2 = Struct_4(~min(vec2<u32>(0u, ~59346u), ~(vec2<u32>(global4.a.x, u_input.a) >> (global4.a % vec2<u32>(32u)))), firstLeadingBit(~u_input.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-232f)))), -1000f), false);
    var var_2 = global2.a;
    var var_3 = vec3<bool>(!(!global2.d), !(true && all(!vec4<bool>(false, false, global4.d, false))), false);
    return Struct_4(~(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(arg_2, arg_2)), ~global4.a) << (vec2<u32>(~1u, global2.a.x) % vec2<u32>(32u))), _wgslsmith_div_u32(u_input.a, firstTrailingBit(_wgslsmith_mult_u32(select(1u, 4294967295u, true), global4.a.x ^ 1u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.yy)))))), global4.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_div_vec4_i32(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 7756i, -45741i, -2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(66312i, -5229i, u_input.b, -2147483647i))), ~vec4<i32>(reverseBits(0i), _wgslsmith_sub_i32(u_input.b, u_input.b), select(u_input.b, 0i, global2.d), _wgslsmith_add_i32(u_input.b, u_input.b))), ~(~vec4<u32>(0u ^ global4.a.x, ~global2.b, ~102866u, u_input.a)), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.a), countOneBits(global4.b)));
    var var_0 = ~vec3<u32>(global2.a.x, _wgslsmith_sub_u32(4294967295u, 1u) & global4.a.x, global2.b) >> (~select(vec3<u32>(~u_input.a, u_input.a, max(29551u, global2.b)), firstLeadingBit(~vec3<u32>(global2.b, global2.a.x, 30049u)), select(vec3<bool>(global2.d, true, true), !vec3<bool>(global2.d, global4.d, global2.d), true)) % vec3<u32>(32u));
    var var_1 = func_2(_wgslsmith_mult_vec4_i32(~abs(~vec4<i32>(u_input.b, 10444i, u_input.b, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-48732i, -2147483647i, 0i, 12082i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -19540i, -2147483647i), vec4<i32>(u_input.b, -2147483647i, 18952i, -2147483647i)), -vec4<i32>(u_input.b, 1i, 43273i, -2147483647i))), Struct_1(!(!vec3<bool>(global4.d, global2.d, global2.d)), global1.wyw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -874f)) - _wgslsmith_div_f32(global2.c.x, global1.x)), vec4<bool>(select(false, !global2.d, global4.d), global4.d, global4.d & false, global4.d)), global3[_wgslsmith_index_u32(26356u, 2u)]);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-2298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-global2.c.x)) + global2.c.x)))));
    let var_3 = Struct_1(vec3<bool>(!any(!vec2<bool>(global2.d, var_1.b.b)), var_1.b.b, !global4.d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global1.zyz - vec3<f32>(global2.c.x, 2020f, global1.x)), _wgslsmith_div_vec3_f32(global1.xyy, vec3<f32>(global1.x, global4.c.x, -114f))))), vec3<f32>(global4.c.x, global2.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.c.x)))), true || all(vec3<bool>(var_1.b.b, global2.d, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2287f) + -1313f) + _wgslsmith_f_op_f32(-126f - _wgslsmith_f_op_f32(min(-1354f, 627f)))), select(vec4<bool>(all(vec2<bool>(true, true)), var_1.b.b, global2.d, select(var_1.b.b, select(false, true, false), false)), vec4<bool>(false, true, false, select(any(vec2<bool>(global4.d, global4.d)), global1.x >= -1658f, false)), select(!vec4<bool>(true, false, global4.d, global2.d), vec4<bool>(true, true, true, true), false)));
    let var_4 = global4.d;
    let var_5 = vec3<u32>(1u, 0u, ~func_1(select(vec4<i32>(u_input.b, -2147483647i, 7305i, -2147483647i), vec4<i32>(u_input.b, -17275i, 0i, -23361i), global2.d), ~vec4<u32>(global4.a.x, 3260u, global4.b, 1u), global4.b).a.x) >> (~(~vec3<u32>(_wgslsmith_dot_vec2_u32(global4.a, vec2<u32>(20160u, 8381u)), reverseBits(1u), global2.a.x)) % vec3<u32>(32u));
    var var_6 = vec4<u32>(~0u, global2.a.x, 8488u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 38315u), var_0.x) | 4294967295u, ~1u));
    let var_7 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global4.c.x)), func_1(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), vec4<u32>(global4.b, var_5.x, var_6.x, global4.b), var_0.x).c.x, -1054f, _wgslsmith_f_op_f32(-1878f * 1110f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, var_3.c, global1.x, global2.c.x)))))), vec2<f32>(_wgslsmith_f_op_f32(step(var_7, global1.x)), _wgslsmith_f_op_f32(-var_7)), abs(-(~abs(vec4<i32>(1i, var_1.b.a.x, -2147483647i, var_1.b.c.x)))), _wgslsmith_clamp_i32(-countOneBits(var_1.b.c.x), u_input.b, ~u_input.b), var_6.x);
}

