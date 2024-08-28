struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

var<private> global0: f32 = 934f;

var<private> global1: f32 = 919f;

var<private> global2: array<vec4<u32>, 8>;

var<private> global3: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global4: array<vec2<u32>, 2>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    var var_0 = -523f;
    let var_1 = false;
    var var_2 = ~(~(select(select(vec2<u32>(49170u, u_input.a), global4[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(u_input.a, 23u)]), vec2<u32>(u_input.a, u_input.a) >> (global4[_wgslsmith_index_u32(u_input.a, 2u)] % vec2<u32>(32u)), !vec2<bool>(arg_0.b.b, true)) ^ _wgslsmith_sub_vec2_u32(global4[_wgslsmith_index_u32(u_input.a, 2u)] | global4[_wgslsmith_index_u32(0u, 2u)], min(global4[_wgslsmith_index_u32(1u, 2u)], vec2<u32>(82090u, 0u)))));
    var var_3 = max(4294967295u, _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(var_2.x, 2u)], _wgslsmith_mult_vec2_u32(global4[_wgslsmith_index_u32(~(~4294967295u), 2u)], vec2<u32>(_wgslsmith_mult_u32(var_2.x, u_input.a), firstLeadingBit(u_input.a)))));
    var var_4 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(6363i, Struct_2(u_input.b.x, false, Struct_1(vec2<f32>(789f, 674f))), _wgslsmith_div_f32(229f, 428f)), firstTrailingBit(max(u_input.b.x, 2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2407f), _wgslsmith_f_op_f32(select(630f, 215f, false)), _wgslsmith_f_op_f32(f32(-1f) * -679f))))))));
    let var_1 = var_0;
    global2 = array<vec4<u32>, 8>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1855f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(197f, var_0))), vec2<f32>(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(var_0 - 1368f)), all(vec3<bool>(false, true, false)) == true)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0 + -491f), 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 142f) - vec2<f32>(var_0, var_0))), 204f <= _wgslsmith_f_op_f32(round(772f))))));
    global4 = array<vec2<u32>, 2>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(1u, 23u)];
    let var_1 = Struct_3(-32944i, Struct_2(-u_input.b.x, ((u_input.b.x ^ -53146i) & (u_input.b.x ^ u_input.b.x)) > 0i, arg_0), arg_0.a.x);
    let var_2 = _wgslsmith_sub_vec2_u32(firstLeadingBit(abs(global4[_wgslsmith_index_u32(~u_input.a, 2u)])), vec2<u32>(u_input.a, 1u)) << ((global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~abs(u_input.a), ~(u_input.a << (15097u % 32u))), 2u)] | vec2<u32>((u_input.a | u_input.a) | firstTrailingBit(67060u), min(~32187u, reverseBits(u_input.a)))) % vec2<u32>(32u));
    let var_3 = vec3<u32>(1u, 4294967295u, u_input.a ^ var_2.x);
    global0 = arg_0.a.x;
    return func_2();
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1111f) - _wgslsmith_f_op_f32(max(209f, -893f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-469f + 117f))))));
    var var_0 = 1000f;
    var var_1 = func_4(func_2());
    var_0 = -501f;
    var var_2 = vec4<u32>(firstTrailingBit(0u), u_input.a, u_input.a, firstLeadingBit(_wgslsmith_div_u32(u_input.a, u_input.a)));
    return Struct_1(vec2<f32>(2499f, _wgslsmith_f_op_f32(f32(-1f) * -1344f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = func_1();
    global4 = array<vec2<u32>, 2>();
    let var_1 = select(~min(_wgslsmith_div_vec4_i32(select(vec4<i32>(13844i, 0i, u_input.b.x, arg_1.x), vec4<i32>(-4850i, arg_1.x, u_input.b.x, -2147483647i), true), abs(vec4<i32>(arg_1.x, u_input.b.x, -2147483647i, 0i))), vec4<i32>(1257i, u_input.b.x, -798i, u_input.b.x) >> (vec4<u32>(u_input.a, u_input.a, 81730u, 25309u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(reverseBits(min(vec4<i32>(arg_1.x, 0i, -18203i, -9077i), vec4<i32>(-27218i, 42271i, u_input.b.x, -8612i)) >> (abs(global2[_wgslsmith_index_u32(u_input.a, 8u)]) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b.x, arg_1.x, arg_1.x), vec4<i32>(26618i, -12514i, 2147483647i, 2147483647i)), -vec4<i32>(31295i, arg_1.x, arg_1.x, arg_1.x)), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(8732i, arg_1.x, 1i, u_input.b.x), vec4<i32>(1i, arg_1.x, arg_1.x, 2147483647i))), vec4<bool>(!any(vec4<bool>(false, false, true, true)), !arg_2.x, arg_3, arg_3));
    global4 = array<vec2<u32>, 2>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1433f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(arg_0).a.x - _wgslsmith_f_op_f32(-arg_0.a.x)), arg_0.a.x)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 23>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1782f), _wgslsmith_f_op_f32(ceil(1309f))))), _wgslsmith_f_op_f32(select(527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1183f + _wgslsmith_div_f32(-634f, -1555f))), true)));
    let var_1 = true;
    let var_2 = func_5(func_1(), countOneBits(vec2<i32>(u_input.b.x, firstTrailingBit(firstLeadingBit(1i)))), !vec3<bool>(true, !all(vec2<bool>(false, var_1)), var_1), var_1);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)) - 1194f);
    var var_3 = Struct_2(0i, false, var_2);
    let var_4 = Struct_3(0i, Struct_2(-(~var_3.a ^ u_input.b.x), var_3.b, var_3.c), var_3.c.a.x);
    global4 = array<vec2<u32>, 2>();
    let var_5 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | (82901u & ~reverseBits(u_input.a)));
}

