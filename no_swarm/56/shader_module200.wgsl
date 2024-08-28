struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(1u, 38065u, 4294967295u, 56637u), vec4<u32>(4294967295u, 1u, 3629u, 1u), vec4<u32>(4294967295u, 1u, 40922u, 32854u), vec4<u32>(82543u, 57619u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 17859u), vec4<u32>(25819u, 2111u, 52610u, 22992u), vec4<u32>(0u, 61537u, 1542u, 1u), vec4<u32>(59027u, 4294967295u, 0u, 0u), vec4<u32>(40211u, 1u, 110381u, 1u), vec4<u32>(8843u, 39568u, 4294967295u, 857u), vec4<u32>(59613u, 1u, 38116u, 4294967295u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(0u, 1289u, 4294967295u, 1u), vec4<u32>(102381u, 1u, 1u, 0u), vec4<u32>(1u, 18744u, 32798u, 109464u), vec4<u32>(44717u, 4294967295u, 1u, 21157u), vec4<u32>(73835u, 97070u, 10959u, 96520u), vec4<u32>(0u, 0u, 59036u, 33316u), vec4<u32>(11166u, 37402u, 43297u, 0u), vec4<u32>(99307u, 1u, 0u, 1u));

var<private> global2: array<Struct_4, 11>;

var<private> global3: Struct_4 = Struct_4(vec3<i32>(-1i, 2147483647i, 0i), Struct_1(1000f, vec2<i32>(1i, -16477i), 833f, vec4<i32>(i32(-2147483648), 26185i, 0i, 11199i), vec3<i32>(0i, 1i, 27418i)), 2147483647i);

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    return vec2<bool>(true, true);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global3 = global2[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_0 = select(!(!vec2<bool>(any(vec2<bool>(false, true)), true)), func_3(), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false))));
    global2 = array<Struct_4, 11>();
    let var_1 = Struct_4(select(select(-global3.b.d.yyy, abs(vec3<i32>(global3.b.e.x, global3.c, -2147483647i)), select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x), var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x))), global3.b.e, !vec3<bool>(var_0.x, true, func_3().x)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0)))), _wgslsmith_mod_vec2_i32(firstLeadingBit(global3.a.xy) & countOneBits(global3.b.b), global3.b.e.zx), _wgslsmith_f_op_f32(-137f + -2065f), select(vec4<i32>(7844i, ~(-42630i), ~global3.a.x, min(global3.a.x, global3.b.d.x)), ~(~vec4<i32>(global3.c, -26376i, global3.c, global3.c)), false), global3.a), _wgslsmith_mult_i32(_wgslsmith_sub_i32(global3.a.x, -(-1i << (u_input.a % 32u))), global3.b.d.x));
    let var_2 = abs(select(~(vec4<u32>(1u, u_input.a, u_input.a, 47158u) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), _wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(~(u_input.a | u_input.a), 21u)], ~_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(47924u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)])), var_0.x | !var_0.x));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -532f) - -129f), _wgslsmith_f_op_f32(abs(var_1.b.c)), 1080f <= arg_0))), vec2<i32>(-var_1.b.d.x, 0i), global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(33016u, firstTrailingBit(u_input.a))), 3u)], vec4<i32>(0i, -1i, -_wgslsmith_sub_i32(17046i, var_1.a.x ^ -1i), firstTrailingBit(select(_wgslsmith_mod_i32(0i, var_1.c), _wgslsmith_add_i32(-1i, -1i), true))), vec3<i32>(3834i, var_1.b.d.x, -50821i));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = all(!select(select(vec3<bool>(true, true, arg_2.x), vec3<bool>(false, false, arg_2.x), vec3<bool>(arg_2.x, true, arg_2.x)), !vec3<bool>(true, true, arg_2.x), !vec3<bool>(true, arg_2.x, true))) || true;
    let var_1 = Struct_1(global3.b.a, vec2<i32>(arg_0.x, ~(~arg_3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_sub_vec4_i32(arg_1.d, ~(arg_1.d ^ arg_1.d)), global3.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b.a, 1028f, arg_3.b.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.c, global0[_wgslsmith_index_u32(3042u, 3u)], arg_3.b.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 981f, 1166f), vec3<f32>(var_1.a, arg_3.b.c, 686f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2079f, arg_3.b.c, -1770f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1949f, 396f, -1162f) * vec3<f32>(var_1.a, 278f, arg_3.b.a))))))));
    var var_3 = select(!vec4<bool>(_wgslsmith_f_op_f32(min(arg_3.b.a, -2099f)) < var_1.c, true, arg_2.x, any(vec3<bool>(false, arg_2.x, false)) && (-2029f != global0[_wgslsmith_index_u32(83704u, 3u)])), select(select(!(!vec4<bool>(false, true, arg_2.x, arg_2.x)), select(select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), arg_2.x), select(!vec4<bool>(false, true, false, arg_2.x), !vec4<bool>(arg_2.x, true, true, true), arg_2.x)), !vec4<bool>(true, true, !arg_2.x, true), false && arg_2.x), vec4<bool>(false, ~u_input.a >= u_input.a, false, arg_2.x));
    var_3 = vec4<bool>(var_3.x, !var_3.x, all(func_3()), arg_2.x);
    return Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(-min(var_1.d.x, arg_1.b.x), _wgslsmith_mult_i32(var_1.e.x, arg_1.e.x) ^ arg_0.x, 0i, var_1.b.x), var_1.d >> ((global1[_wgslsmith_index_u32(u_input.a, 21u)] & select(vec4<u32>(u_input.a, 25358u, 52409u, u_input.a), vec4<u32>(u_input.a, 1u, 22846u, u_input.a), vec4<bool>(var_3.x, arg_2.x, var_3.x, false))) % vec4<u32>(32u)), arg_1.d), Struct_1(_wgslsmith_div_f32(-867f, global0[_wgslsmith_index_u32(0u | firstTrailingBit(u_input.a), 3u)]), -_wgslsmith_mult_vec2_i32(-vec2<i32>(-1i, 39886i), reverseBits(vec2<i32>(arg_0.x, 2147483647i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)), _wgslsmith_f_op_f32(-var_1.a)), vec4<i32>(i32(-1i) * -51881i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(3508i, var_1.d.x), arg_1.b), _wgslsmith_sub_i32(var_1.d.x, global3.b.b.x)), 11885i, global3.b.b.x), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, -19613i, arg_1.d.x), ~global3.a), -vec3<i32>(arg_3.a.x, arg_0.x, global3.b.d.x) >> (~vec3<u32>(0u, 55217u, u_input.a) % vec3<u32>(32u)))), func_2(_wgslsmith_f_op_f32(min(var_2.x, arg_1.c))), countOneBits(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.a), u_input.a << (u_input.a % 32u))) & u_input.a, global3.b);
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(global3.c << ((_wgslsmith_div_u32(1u, 59642u) & u_input.a) % 32u), -1i, ~1i), ~global3.a);
    let var_1 = Struct_3(func_4(-(~vec2<i32>(0i, -31534i)), global3.b, arg_2.zx, Struct_4(abs(vec3<i32>(0i, arg_0.b.d.x, 2147483647i)) << ((vec3<u32>(4294967295u, 77156u, 73673u) ^ vec3<u32>(u_input.a, 31626u, 0u)) % vec3<u32>(32u)), func_2(_wgslsmith_f_op_f32(exp2(global3.b.a))), ~10213i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1625f), _wgslsmith_f_op_f32(-arg_0.b.c)), select(firstLeadingBit(vec3<u32>(u_input.a, 0u, 8334u)), ~select(vec3<u32>(4294967295u, 36120u, 8438u), vec3<u32>(91401u, u_input.a, 4294967295u), true), func_3().x && (true != arg_2.x)) & ~vec3<u32>(func_4(vec2<i32>(0i, -2147483647i), Struct_1(global3.b.c, arg_0.b.b, -314f, vec4<i32>(var_0.x, var_0.x, var_0.x, global3.b.d.x), vec3<i32>(global3.a.x, var_0.x, arg_0.a.x)), vec2<bool>(arg_2.x, arg_3), arg_0).d, _wgslsmith_add_u32(u_input.a, u_input.a), u_input.a));
    var var_2 = func_3();
    return arg_0.b;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = vec2<bool>(true & any(vec2<bool>(true, true)), (arg_0 >= _wgslsmith_sub_u32(reverseBits(arg_0), 88656u)) && !(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(16725u, 5123u)), 3u)] > _wgslsmith_f_op_f32(arg_1.c * global3.b.c)));
    global0 = array<f32, 3>();
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(func_4(arg_1.b, Struct_1(-330f, vec2<i32>(2147483647i, arg_1.e.x), _wgslsmith_f_op_f32(max(1000f, -1045f)), arg_1.d, select(arg_1.d.xxw, vec3<i32>(-2147483647i, global3.b.d.x, arg_1.d.x), vec3<bool>(var_0.x, false, var_0.x))), select(!vec2<bool>(var_0.x, false), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), true), func_3()), Struct_4(abs(vec3<i32>(-2147483647i, arg_1.d.x, 0i)), Struct_1(global3.b.a, arg_1.b, global0[_wgslsmith_index_u32(0u, 3u)], vec4<i32>(-1i, 17128i, -2147483647i, -1i), global3.a), arg_1.b.x)).b.c, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 3u)]), 1243f, arg_1.a)));
    global2 = array<Struct_4, 11>();
    var var_2 = Struct_3(Struct_2(arg_1.d, arg_1, global4[_wgslsmith_index_u32(19670u, 32u)], ~u_input.a, global4[_wgslsmith_index_u32(u_input.a, 32u)]), -399f, vec3<u32>(4294967295u, ~u_input.a, 0u));
    return Struct_3(func_4(var_2.a.c.b, func_4(vec2<i32>(-2147483647i, min(10023i, arg_1.b.x)), func_1(global2[_wgslsmith_index_u32(arg_0, 11u)], -281f, select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), true), any(vec2<bool>(var_0.x, var_0.x))), !select(vec2<bool>(true, true), vec2<bool>(true, false), var_0.x), Struct_4(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.d.x, var_2.a.b.e.x, 2256i), var_2.a.e.e), Struct_1(var_1.x, vec2<i32>(23515i, -27965i), arg_1.a, vec4<i32>(-9611i, var_2.a.a.x, 21682i, -11306i), vec3<i32>(9576i, arg_1.e.x, global3.b.b.x)), firstTrailingBit(-33040i))).e, select(!select(vec2<bool>(true, true), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false)), !vec2<bool>(var_0.x, var_0.x), func_3().x), Struct_4(firstTrailingBit(vec3<i32>(arg_1.b.x, global3.a.x, -1i)), func_2(_wgslsmith_f_op_f32(-var_1.x)), i32(-1i) * -arg_1.e.x)), _wgslsmith_f_op_f32(sign(-845f)), abs(~vec3<u32>(21853u, u_input.a, 4177u) & (vec3<u32>(u_input.a, 33883u, 0u) ^ vec3<u32>(u_input.a, 62382u, var_2.c.x))) ^ ~(~(vec3<u32>(46707u, 69869u, 27521u) | vec3<u32>(arg_0, 82514u, 49195u))));
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: u32) -> vec2<i32> {
    global4 = array<Struct_1, 32>();
    var var_0 = global3.b.a;
    global0 = array<f32, 3>();
    global1 = array<vec4<u32>, 21>();
    global4 = array<Struct_1, 32>();
    return arg_1.a.c.e.yz & countOneBits(_wgslsmith_mod_vec2_i32(arg_1.a.a.yx, _wgslsmith_add_vec2_i32(vec2<i32>(4319i, arg_1.a.e.b.x), min(vec2<i32>(global3.b.b.x, global3.c), global3.a.yy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<i32>(i32(-1i) * -19285i, _wgslsmith_dot_vec2_i32(-vec2<i32>(global3.a.x, -2147483647i) & ~global3.b.d.yx, global3.a.xx), ~32982i, -1i & global3.a.x), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~17757u | u_input.a, u_input.a), 32u)], Struct_1(_wgslsmith_f_op_f32(439f + global0[_wgslsmith_index_u32(76661u, 3u)]), func_6(true, func_5(firstTrailingBit(73771u), func_1(global2[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], vec3<bool>(false, true, false), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(11551u, 3u)]), vec2<f32>(-137f, -123f))), ~_wgslsmith_add_u32(u_input.a, 4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 3u)] - _wgslsmith_f_op_f32(select(663f, global3.b.c, false))), global3.b.a), -max(~global3.b.d, -global3.b.d), global3.a), 11504u, Struct_1(global0[_wgslsmith_index_u32(u_input.a, 3u)], global3.a.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), vec4<i32>(~_wgslsmith_div_i32(global3.c, global3.b.b.x), abs(-2147483647i), global3.c, global3.b.b.x), _wgslsmith_clamp_vec3_i32(global3.b.d.xxw, _wgslsmith_add_vec3_i32(-global3.b.d.wzz, vec3<i32>(-7305i, 2147483647i, 1i)), reverseBits(vec3<i32>(global3.c, global3.c, 0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.e.d.x, global3.a.x, -25307i, -25643i), global3.b.d)), vec4<i32>(firstTrailingBit(global3.b.d.x), 24495i, ~(-2147483647i), firstLeadingBit(global3.a.x))) & select(func_1(global2[_wgslsmith_index_u32(firstTrailingBit(15188u), 11u)], 342f, vec3<bool>(true, true, true), true).d, ~(~vec4<i32>(global3.a.x, -1i, 43690i, global3.c)), (global0[_wgslsmith_index_u32(u_input.a, 3u)] <= global0[_wgslsmith_index_u32(var_0.d, 3u)]) || true), -10148i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c.a), func_5(u_input.a, global4[_wgslsmith_index_u32(1u, 32u)]).c.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-265f - _wgslsmith_f_op_f32(f32(-1f) * -242f)))));
}

