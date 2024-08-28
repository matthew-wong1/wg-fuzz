struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11>;

var<private> global1: array<i32, 5> = array<i32, 5>(0i, -1i, 2147483647i, i32(-2147483648), 8125i);

var<private> global2: array<vec2<bool>, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = min(132186u, select(arg_1.a, 4294967295u, (arg_1.e.x != abs(40110u)) || !(!arg_0.a.x)));
    let var_1 = vec2<bool>(any(select(select(vec4<bool>(true, true, true, true), arg_0.a, arg_0.a.x), arg_1.c.a, !arg_1.c.a.x || (arg_0.a.x | false))), false);
    var var_2 = min(1u, u_input.a.x) >= min(0u, min(~(arg_1.e.x << (u_input.b % 32u)), min(1u, _wgslsmith_div_u32(arg_1.e.x, 34525u))));
    global1 = array<i32, 5>();
    let var_3 = abs(_wgslsmith_div_u32(~firstTrailingBit(~4294967295u), select(u_input.b, u_input.a.x, true)));
    return -1i;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(14738u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1927f, 385f, -1007f, -3089f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2658f, -1423f, -1595f, -650f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2267f, -857f, 594f, -203f)))))), Struct_1(vec4<bool>(true, true, true, true)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(func_3(Struct_1(vec4<bool>(false, false, false, false)), Struct_3(4294967295u, vec4<f32>(323f, 103f, -1748f, 262f), Struct_1(vec4<bool>(true, true, true, true)), vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec3<u32>(u_input.a.x, 9365u, 119666u))), 1i), select(abs(vec2<i32>(-63288i, global1[_wgslsmith_index_u32(130080u, 5u)])), vec2<i32>(18995i, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]) << (u_input.a % vec2<u32>(32u)), true), reverseBits(-vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 3701i))), ~vec3<u32>(reverseBits(32589u | u_input.a.x), ~u_input.b, 0u));
    let var_1 = var_0.c.a.x;
    return Struct_2(var_0.c);
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    var var_0 = firstTrailingBit(~abs(u_input.a >> (_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(0u, 51517u)) % vec2<u32>(32u))));
    global0 = array<Struct_4, 11>();
    return -470f;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1685f) + _wgslsmith_f_op_f32(floor(-568f))), arg_2.b.x, _wgslsmith_f_op_f32(arg_0.x + -1939f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec4<f32>(879f, _wgslsmith_f_op_f32(trunc(334f)), arg_0.x, 2052f), !arg_2.c.a.x, func_2(), arg_2.c.a.wxy)) - _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(select(-137f, _wgslsmith_f_op_f32(f32(-1f) * -116f), !arg_2.c.a.x))))));
    var var_1 = Struct_2(arg_2.c);
    let var_2 = ~_wgslsmith_clamp_u32(u_input.b, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_2.a, 1u, u_input.b, arg_2.e.x), vec4<u32>(22973u, arg_2.e.x, 9253u, u_input.b), vec4<bool>(false, arg_2.c.a.x, var_1.a.a.x, true)), vec4<u32>(54276u, u_input.b, 14691u, arg_2.a)), min(countOneBits(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), 1u));
    var var_3 = Struct_1(vec4<bool>(false, true || arg_2.c.a.x, all(vec4<bool>(true, all(var_1.a.a.yz), var_1.a.a.x, var_1.a.a.x == false)), false));
    var var_4 = global0[_wgslsmith_index_u32(arg_2.a, 11u)];
    return func_2();
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = -(~max(2147483647i, 1i));
    global0 = array<Struct_4, 11>();
    var var_1 = _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(2915i, var_0, _wgslsmith_add_i32(var_0, global1[_wgslsmith_index_u32(arg_0.x | 4294967295u, 5u)]), 0i)), vec4<i32>(var_0, _wgslsmith_dot_vec4_i32(-vec4<i32>(-16546i, 2791i, global1[_wgslsmith_index_u32(arg_0.x, 5u)], 0i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_0, global1[_wgslsmith_index_u32(arg_0.x, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec4<i32>(8199i, var_0, -1i, -16094i))), _wgslsmith_mult_i32(var_0, -46462i), -1i << (min(u_input.b, 36650u) % 32u)) & select(-abs(vec4<i32>(-1i, 2147483647i, -22394i, -17591i)), select(vec4<i32>(var_0, global1[_wgslsmith_index_u32(1u, 5u)], 1i, -16358i) >> (vec4<u32>(u_input.b, 4294967295u, arg_0.x, 0u) % vec4<u32>(32u)), vec4<i32>(-1i, 20947i, global1[_wgslsmith_index_u32(arg_0.x, 5u)], 1i) >> (vec4<u32>(4294967295u, u_input.b, u_input.a.x, 28745u) % vec4<u32>(32u)), vec4<bool>(arg_1.a.a.x, true, arg_1.a.a.x, arg_1.a.a.x)), arg_1.a.a.x));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(566f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(479f + 1622f)));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1191f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<f32>(-1000f, -1090f, 1000f, -485f), arg_1.a.a.x, Struct_2(Struct_1(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x))), arg_1.a.a.zyw)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-641f - 1551f) - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1639f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-657f, _wgslsmith_f_op_f32(abs(-1123f)), arg_1.a.a.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(364f, 202f, -490f, 814f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(333f, -306f, -421f, -2236f) * vec4<f32>(456f, -1580f, 1000f, -1540f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~select(u_input.b, ~1u, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(~vec4<u32>(4294967295u, u_input.b, u_input.a.x, 53711u), func_1(vec2<f32>(289f, -1000f), vec4<i32>(global1[_wgslsmith_index_u32(55424u, 5u)], -2147483647i, 26600i, 2147483647i), Struct_3(45095u, vec4<f32>(-772f, -2102f, 965f, 459f), Struct_1(vec4<bool>(false, false, true, false)), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(45112u, 5u)]), vec3<u32>(u_input.a.x, 48363u, 93752u)), ~vec4<i32>(2147483647i, -39507i, global1[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)]))))), func_2().a, ~_wgslsmith_div_vec2_i32(~(vec2<i32>(17348i, -52699i) | vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(0u, 5u)])), vec2<i32>(global1[_wgslsmith_index_u32(11114u, 5u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 5u)])), countOneBits(abs(max(vec3<u32>(4294967295u, u_input.b, u_input.a.x), vec3<u32>(u_input.b, u_input.a.x, 1u)))) >> (vec3<u32>(max(_wgslsmith_sub_u32(0u, u_input.a.x), _wgslsmith_add_u32(16977u, u_input.a.x)), ~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.b, u_input.b), firstTrailingBit(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)))) % vec3<u32>(32u)));
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    let var_1 = select(var_0.c.a.x, var_0.c.a.x, any(var_0.c.a.zz));
    let var_2 = var_0.d.x;
    global0 = array<Struct_4, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-495f, 1f)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x))))), -1685f, _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.b, 16258u, u_input.a.x)), var_0.e) | (_wgslsmith_div_u32(1u, 1u) & var_0.a), var_0.b.x);
}

