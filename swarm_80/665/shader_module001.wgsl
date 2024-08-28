struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11>;

var<private> global1: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(0u, 4294967295u, 44797u, 4294967295u), vec4<u32>(50234u, 1u, 0u, 4294967295u), vec4<u32>(1u, 68720u, 107369u, 4294967295u), vec4<u32>(1u, 64003u, 1u, 26766u), vec4<u32>(4294967295u, 9086u, 39189u, 21458u), vec4<u32>(4294967295u, 30654u, 18065u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 885u), vec4<u32>(69371u, 1u, 0u, 0u), vec4<u32>(4294967295u, 2730u, 1u, 83345u), vec4<u32>(1u, 78204u, 59382u, 1u), vec4<u32>(0u, 72698u, 0u, 99822u), vec4<u32>(38271u, 25582u, 4294967295u, 4294967295u), vec4<u32>(45540u, 4220u, 1u, 584u), vec4<u32>(18045u, 35592u, 57061u, 23036u), vec4<u32>(0u, 4294967295u, 21166u, 13902u), vec4<u32>(80589u, 1u, 4294967295u, 43274u), vec4<u32>(4294967295u, 50305u, 4294967295u, 0u), vec4<u32>(6002u, 0u, 13628u, 0u), vec4<u32>(1u, 8399u, 1u, 57131u), vec4<u32>(4294967295u, 44909u, 59987u, 4294967295u), vec4<u32>(1u, 4294967295u, 85869u, 0u), vec4<u32>(20945u, 33013u, 0u, 29659u), vec4<u32>(11098u, 41198u, 22617u, 1u), vec4<u32>(1u, 0u, 20673u, 18876u), vec4<u32>(28564u, 39724u, 0u, 100929u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global1 = array<vec4<u32>, 26>();
    var var_0 = select(max(firstTrailingBit(-(vec3<i32>(u_input.c, -25602i, u_input.c) & vec3<i32>(26230i, 13341i, 2147483647i))), -vec3<i32>(-u_input.c, 1399i, 2147483647i)), (-max(vec3<i32>(1i, 16386i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)) ^ (select(vec3<i32>(15783i, 29935i, 6911i), vec3<i32>(1i, -1i, -2147483647i), false) << (~vec3<u32>(22519u, 0u, 52990u) % vec3<u32>(32u)))) >> (vec3<u32>(~u_input.b.x, _wgslsmith_div_u32(~u_input.a, max(95102u, u_input.a)), 0u) % vec3<u32>(32u)), !(u_input.c > -32916i));
    var var_1 = -_wgslsmith_sub_i32(i32(-1i) * -27116i, -1i) << (~u_input.b.x % 32u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-335f, 674f)) + -1286f)), vec4<u32>(~u_input.a, u_input.a, countOneBits(80392u), ~min(_wgslsmith_sub_u32(3844u, u_input.b.x), 0u)), _wgslsmith_f_op_f32(-180f - -304f), true, all(!vec4<bool>(true, true, true, any(vec4<bool>(false, true, true, false)))));
    global1 = array<vec4<u32>, 26>();
    return var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> u32 {
    var var_0 = arg_0;
    let var_1 = ~abs(~select(~arg_0.a.b.x, reverseBits(93232u), arg_0.a.d));
    var var_2 = select(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.a.b.x, arg_0.c.x), countOneBits(_wgslsmith_sub_u32(u_input.a, 4294967295u))), arg_2, 58536u, firstLeadingBit(countOneBits(~54368u))), max(~(~(~vec4<u32>(arg_2, 1u, 1u, arg_1.b.x))), firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, var_0.a.b.x), _wgslsmith_mult_u32(var_1, u_input.b.x), select(arg_2, 49480u, true), ~1u))), all(!vec2<bool>(arg_1.d, arg_0.a.e)));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, arg_1.a, arg_1.c, arg_1.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, var_0.a.c, -1050f, arg_1.a))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(894f, arg_1.a, 2344f, var_0.a.c)), vec4<f32>(var_0.a.a, arg_0.a.a, 789f, -150f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-875f, arg_0.a.a, arg_0.a.a, -1031f) * vec4<f32>(1533f, var_0.a.c, arg_1.a, -188f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-345f, var_0.a.a, arg_0.a.a, 1390f) * vec4<f32>(1632f, var_0.a.c, arg_0.a.c, arg_0.a.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1311f, _wgslsmith_f_op_f32(round(200f)), var_0.a.a, _wgslsmith_f_op_f32(min(var_0.a.c, -1025f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -788f, arg_0.a.c, var_0.a.a) * vec4<f32>(1075f, 877f, arg_0.a.c, 788f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.a, -591f, arg_1.c, arg_1.c), vec4<f32>(arg_0.a.a, var_0.a.c, var_0.a.c, -1708f))))))))));
    global0 = array<vec3<bool>, 11>();
    return ~arg_2;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_u32(u_input.b.xx, firstTrailingBit(_wgslsmith_mult_vec2_u32(min(u_input.b.xx, u_input.b.zx), u_input.b.zy)));
    var var_1 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), vec4<u32>(u_input.a, firstTrailingBit(0u), ~0u, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(sign(1830f))), all(!global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), true), ~countOneBits(firstTrailingBit(u_input.c)), min(~abs(vec3<u32>(var_0.x, 15843u, u_input.b.x)), vec3<u32>(var_0.x & 35859u, abs(u_input.a), _wgslsmith_mult_u32(u_input.a, 4294967295u)))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-769f)) + _wgslsmith_f_op_f32(1008f - 157f)))), _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(abs(24881u), 26u)], abs(vec4<u32>(u_input.a, u_input.b.x, var_0.x, 1u) & vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1424f)), -577f))), true, select(true, true, false)), var_0.x, min(u_input.c, -14094i));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))) * vec3<f32>(1f, 1f, 1f));
    var_1 = ~(~(~1u));
    var var_3 = Struct_1(var_2.x, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(u_input.a, 26u)], vec4<u32>(u_input.a, 69999u, 18991u, 1u)), ~(global1[_wgslsmith_index_u32(0u, 26u)] | vec4<u32>(u_input.a, 58286u, u_input.b.x, u_input.a))), vec4<u32>(var_0.x, ~1u, var_0.x, ~_wgslsmith_mult_u32(var_0.x, u_input.b.x)), ~(vec4<u32>(u_input.a, u_input.a, var_0.x, 88435u) >> (vec4<u32>(var_0.x, 10600u, u_input.b.x, 4294967295u) % vec4<u32>(32u))) ^ vec4<u32>(min(13724u, 29483u), 1u, u_input.b.x, abs(1u))), 369f, ~u_input.b.x <= 1563u, false);
    return Struct_1(var_3.c, ~var_3.b, var_2.x, var_3.d, (-130f != var_2.x) & !(true | var_3.e));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> u32 {
    var var_0 = Struct_2(func_2(), 2147483647i, arg_0.b.xyw);
    let var_1 = firstLeadingBit(max(28642i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_2.b, u_input.c, var_0.b), vec4<i32>(arg_2.b, -24161i, -51894i, var_0.b)), vec4<i32>(-2147483647i, var_0.b, u_input.c, -1i))));
    var var_2 = ~4294967295u;
    var var_3 = arg_0.b.x;
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) + var_0.a.a), _wgslsmith_add_vec4_u32(min(~vec4<u32>(54566u, 1u, var_0.a.b.x, 4294967295u), var_0.a.b), global1[_wgslsmith_index_u32(0u, 26u)]), arg_0.c, all(vec3<bool>(true, arg_2.a.d, !var_0.a.d)), true), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(firstTrailingBit(-2147483647i)), -15111i, -2147483647i, 1i), firstTrailingBit(~(~vec4<i32>(94440i, arg_2.b, 381i, u_input.c)))), _wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(u_input.b.x), u_input.a, arg_2.c.x), arg_0.b.yxz) & ((select(arg_0.b.ywy, u_input.b, true) ^ ~vec3<u32>(u_input.a, 34910u, arg_1.b.x)) << (u_input.b % vec3<u32>(32u))));
    return ~(16687u << (abs(arg_1.b.x) % 32u));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<vec3<bool>, 11>();
    let var_0 = Struct_1(2151f, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_5(Struct_1(-1166f, vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), 196f, false, true), func_2(), Struct_2(Struct_1(111f, global1[_wgslsmith_index_u32(28321u, 26u)], -437f, true, false), arg_0, u_input.b), arg_1.x & arg_0), u_input.b.x), 26u)] << (select(~vec4<u32>(1u, 41290u, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(8001u, u_input.a, u_input.a, u_input.a) ^ global1[_wgslsmith_index_u32(38870u, 26u)], countOneBits(global1[_wgslsmith_index_u32(u_input.b.x, 26u)])), true) % vec4<u32>(32u)), -833f, any(vec3<bool>(any(!global0[_wgslsmith_index_u32(u_input.a, 11u)]), true, any(vec2<bool>(true, false)) || true)), !(!any(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.a)), 1000f)), -1447f), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -555f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.c, 1369f, var_0.a))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, var_0.c, 1081f, 108f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-159f, 1053f, var_0.c, 542f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-301f, -542f, 1170f, var_0.c))))));
    var var_3 = true;
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(func_2().c, vec4<u32>(~1u, ~min(4294967295u, _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(1u, 1445u))), arg_1, ~arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c)) - arg_0.c), arg_0.a <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(852f)) * func_2().c)), any(!global0[_wgslsmith_index_u32(22240u, 11u)]));
    let var_1 = min((arg_0.b & (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, arg_0.b.x, arg_1, 1u), var_0.b) & _wgslsmith_mod_vec4_u32(arg_0.b, arg_0.b))) & ~vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.b.zz, vec2<u32>(4294967295u, 0u)), max(var_0.b.x, arg_1), 1u, u_input.a), max(countOneBits(var_0.b), ~arg_0.b));
    global0 = array<vec3<bool>, 11>();
    var var_2 = u_input.c & (6012i & _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, arg_2, arg_2, u_input.c), abs(vec4<i32>(arg_2, u_input.c, -2147483647i, 0i))));
    var var_3 = var_0.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 26>();
    let var_0 = false;
    global1 = array<vec4<u32>, 26>();
    global0 = array<vec3<bool>, 11>();
    let var_1 = func_6(func_1(_wgslsmith_add_i32(-(u_input.c & 36002i), -2147483647i << (countOneBits(u_input.b.x) % 32u)), ~(-(~vec4<i32>(u_input.c, -1i, 87667i, 0i)))), 45760u ^ u_input.a, _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, 12682i) | min(-14351i, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-2147483647i), ~2147483647i, -1i, u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.c, u_input.c, u_input.c), -vec4<i32>(u_input.c, 2147483647i, 1i, -8956i)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - -1000f) + _wgslsmith_f_op_f32(var_1.a * var_1.a)) + -655f)), ~_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(~var_1.b.x, 26u)], var_1.b << (_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(var_1.b.x, 26u)], vec4<u32>(var_1.b.x, 8320u, 16202u, 4294967295u)) % vec4<u32>(32u))), -469f, var_1.e, any(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1361f) >= _wgslsmith_f_op_f32(floor(908f)), var_0, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(var_2.b.x, u_input.b.x), var_2.b.x) | ~1u, 4294967295u), vec2<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(-(vec4<i32>(u_input.c, u_input.c, u_input.c, 1i) ^ vec4<i32>(0i, -1i, u_input.c, 2147483647i)), vec4<i32>(u_input.c, -1i, _wgslsmith_div_i32(u_input.c, u_input.c), u_input.c)), countOneBits(vec4<i32>(-54913i, u_input.c, u_input.c, -372i) & vec4<i32>(u_input.c, 1i, u_input.c, -65629i)), vec4<i32>(-1i, abs(1i), 1i, u_input.c)), ~countOneBits(vec2<u32>(1u, _wgslsmith_add_u32(var_2.b.x, 86094u))));
}

