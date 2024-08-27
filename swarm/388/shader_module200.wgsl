struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<f32>(651f, -1421f, 522f, -1052f), true, false, vec3<f32>(-885f, -1000f, 949f)));

var<private> global1: array<i32, 17> = array<i32, 17>(2147483647i, -1i, 1i, 0i, 1i, 0i, 1i, -8753i, 39394i, 66809i, 0i, -69717i, -19050i, 0i, 1i, 3683i, 2147483647i);

var<private> global2: vec2<i32>;

var<private> global3: array<vec2<f32>, 14>;

var<private> global4: vec2<f32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(abs(~abs(arg_3)), 17u)];
    let var_1 = global0[_wgslsmith_index_u32((countOneBits(18167u) ^ (_wgslsmith_div_u32(~arg_3, arg_3) & 92361u)) >> (~_wgslsmith_mult_u32(arg_3, ~abs(u_input.a.x)) % 32u), 1u)];
    global3 = array<vec2<f32>, 14>();
    global3 = array<vec2<f32>, 14>();
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(0u, 14u)], vec2<f32>(_wgslsmith_f_op_f32(trunc(-1057f)), _wgslsmith_f_op_f32(-var_1.d.x)))));
    return countOneBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -20142i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(16u, 17u)], global2.x)), -arg_0.xy), global2.x, -13617i));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 1>();
    let var_0 = 32265i;
    let var_1 = ~vec4<i32>(func_3(vec3<i32>(-1i) * -u_input.b, vec4<bool>(all(vec3<bool>(false, false, true)), false, true, true), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-183f, global4.x, global4.x, -304f))), true, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2022f, -146f, global4.x))), u_input.c.x & 19853u), -(~(2147483647i & u_input.d)), _wgslsmith_mult_i32(abs(global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), max(var_0, var_0) | min(-24979i, -13090i)), -27880i);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.x)))));
    var var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(83432i, -2147483647i, u_input.b.x), vec3<i32>(var_1.x, u_input.d, -1i)), 0i, -u_input.d)), vec3<i32>(~var_1.x, ~_wgslsmith_clamp_i32(~u_input.b.x, -15007i, ~60720i), 1i));
    return global0[_wgslsmith_index_u32(~u_input.c.x, 1u)];
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_2(func_2());
    return Struct_2(func_2());
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> vec3<bool> {
    global2 = select(_wgslsmith_add_vec2_i32(u_input.b.yz, _wgslsmith_div_vec2_i32(select(u_input.b.zx, vec2<i32>(-2147483647i, 9665i), vec2<bool>(true, false)), select(firstTrailingBit(u_input.b.yx), ~u_input.b.xz, vec2<bool>(true, true)))), vec2<i32>(select(_wgslsmith_mod_i32(u_input.d, _wgslsmith_mod_i32(-1i, -1i)), -43510i, !arg_1), (0i >> (reverseBits(u_input.e.x) % 32u)) & firstLeadingBit(global1[_wgslsmith_index_u32(~u_input.a.x, 17u)])), !vec2<bool>(!(!arg_0.a.b), arg_0.a.c));
    global4 = global3[_wgslsmith_index_u32(countOneBits(36765u), 14u)];
    global1 = array<i32, 17>();
    let var_0 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 20420u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zy, vec2<u32>(14083u, u_input.c.x)), u_input.a.yy))), vec3<u32>(firstLeadingBit(firstTrailingBit(108125u)), u_input.a.x, u_input.c.x));
    global2 = vec2<i32>(-56729i, func_3(~u_input.b | abs(firstTrailingBit(u_input.b)), !select(!vec4<bool>(arg_1, false, true, true), select(vec4<bool>(true, arg_0.a.b, arg_1, false), vec4<bool>(arg_0.a.c, false, true, false), arg_0.a.b), arg_1), func_2(), ~0u));
    return select(vec3<bool>(-global1[_wgslsmith_index_u32(~u_input.c.x, 17u)] < u_input.b.x, any(!select(vec3<bool>(false, arg_0.a.c, arg_0.a.b), vec3<bool>(arg_1, false, false), arg_0.a.c)), func_2().c), vec3<bool>(any(select(!vec4<bool>(false, arg_1, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(arg_1, false, true, false), true), true)), true, _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_add_u32(var_0, var_0)) != 3166u), vec3<bool>(false, !all(vec3<bool>(arg_1, arg_1, false)), ((-2147483647i <= global1[_wgslsmith_index_u32(u_input.a.x, 17u)]) & arg_0.a.c) & ((global4.x != 527f) != true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(all(vec4<bool>(select(true, true, true), global1[_wgslsmith_index_u32(u_input.a.x, 17u)] > -13948i, 121u < u_input.e.x, true)), -12945i >= global2.x, true), vec3<bool>(false, false, true), !func_4(func_1(vec3<i32>(-24954i, -2147483647i, 0i) << (u_input.a.zyz % vec3<u32>(32u)), _wgslsmith_f_op_f32(global4.x * 649f)), true));
    var var_1 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(abs(-1149f))));
    let var_2 = ~(_wgslsmith_sub_vec3_u32(firstLeadingBit(~vec3<u32>(4294967295u, u_input.c.x, u_input.e.x)), u_input.e) | select(~u_input.a.zww, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, u_input.e.x), u_input.e & u_input.e, ~vec3<u32>(u_input.c.x, 50170u, u_input.e.x)), true & var_0.x));
    global4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global4.x, -541f), global4.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(global4.x, global4.x), _wgslsmith_f_op_f32(f32(-1f) * -172f))))), global4.x);
    var var_3 = select(select(!select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), select(var_0.xy, vec2<bool>(true, var_0.x), true)), var_0.zx, var_0.xy), !var_0.xx, false);
    var var_4 = ~vec3<u32>(1u, _wgslsmith_add_u32(42942u, var_2.x), 1u);
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(u_input.c.x, 14u)] + vec2<f32>(global4.x, global4.x)), global3[_wgslsmith_index_u32(reverseBits(var_2.x), 14u)])), _wgslsmith_f_op_vec2_f32(max(global3[_wgslsmith_index_u32(31764u, 14u)], _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(~var_4.x, 14u)])))) + global3[_wgslsmith_index_u32(52918u << (firstTrailingBit(u_input.c.x) % 32u), 14u)]);
    let var_5 = false;
    let var_6 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(-1523f + -2114f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-842f - _wgslsmith_f_op_f32(f32(-1f) * -328f)) - _wgslsmith_f_op_f32(f32(-1f) * -656f))));
    let x = u_input.a;
    s_output = StorageBuffer(29571u, firstLeadingBit(var_4.x), vec2<f32>(global4.x, -654f), vec2<i32>(global2.x, global2.x));
}

