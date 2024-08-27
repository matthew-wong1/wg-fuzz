struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-257f);

var<private> global1: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global2: u32 = 3964u;

var<private> global3: array<f32, 31>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(52315u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 1u, firstLeadingBit(u_input.a.x), u_input.a.x ^ u_input.a.x));
    let var_1 = vec4<bool>(false, arg_1, all(vec2<bool>(any(vec4<bool>(arg_1, arg_0, arg_0, arg_0)) | all(vec2<bool>(true, true)), true)), true);
    var var_2 = 0u;
    var var_3 = u_input.a.x > _wgslsmith_mod_u32(firstTrailingBit(2565u), ~0u);
    let var_4 = Struct_1(u_input.a.x, 0i, var_1.xy, firstTrailingBit(select(u_input.a, vec4<u32>(max(1u, u_input.a.x), var_0.x, u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), select(vec4<bool>(arg_0, arg_1, false, true), select(vec4<bool>(true, var_1.x, true, false), var_1, vec4<bool>(true, arg_0, arg_0, arg_1)), select(vec4<bool>(arg_0, true, false, true), var_1, true)))));
    return var_1;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = !select(func_3(any(!vec3<bool>(true, arg_0.c.x, false)), true), vec4<bool>(false, !arg_2, true, false), vec4<bool>(true, arg_2, any(!vec4<bool>(false, arg_0.c.x, true, true)), !any(vec2<bool>(true, arg_2))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24488u, 1u)]), -1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 1u)])) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(730f, 1893f, 405f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3[_wgslsmith_index_u32(23763u, 31u)], global0[_wgslsmith_index_u32(arg_3.d.x, 1u)], global3[_wgslsmith_index_u32(arg_0.d.x, 31u)])))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(52831u, 1u)], -1943f, global0[_wgslsmith_index_u32(arg_0.a, 1u)])))));
    var var_2 = arg_0.d;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-822f, -1876f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(405f, _wgslsmith_f_op_f32(abs(2108f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 1u)] + 1977f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1631f))) * var_1.x)));
    var var_4 = 4294967295u;
    return Struct_1(0u, -1i | ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-20458i, 2147483647i, arg_0.b), arg_1), -355i), select(vec2<bool>(all(!vec4<bool>(false, arg_2, false, arg_2)), true), select(!vec2<bool>(arg_2, var_0.x), !var_0.ww, true), true), vec4<u32>(arg_3.a, 4294967295u, arg_0.d.x, var_2.x));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global1 = array<vec3<bool>, 22>();
    global1 = array<vec3<bool>, 22>();
    let var_0 = 30799u;
    let var_1 = -33911i;
    let var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.xx, u_input.a.xz, ~vec2<u32>(5396u, arg_0.d.x)) & vec2<u32>(min(~arg_0.a, ~arg_0.d.x), ~33577u >> (var_0 % 32u)), ~u_input.a.xx);
    return func_2(Struct_1(_wgslsmith_mult_u32(0u & (u_input.a.x | 16053u), ~reverseBits(var_2.x)), _wgslsmith_add_i32(-20885i, var_1), vec2<bool>(any(vec4<bool>(false, arg_0.c.x, arg_1, true)) || arg_1, _wgslsmith_f_op_f32(982f * global0[_wgslsmith_index_u32(4294967295u, 1u)]) >= _wgslsmith_f_op_f32(abs(-1965f))), arg_0.d), vec3<i32>(abs(4647i), -2147483647i, arg_0.b), -2147483647i == min(-arg_0.b, ~(~var_1)), arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = func_2(arg_0, _wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, 0i), vec2<i32>(arg_2, arg_2)), -arg_0.b, arg_2 >> (4294967295u % 32u)), vec3<i32>(-2147483647i, arg_2, select(firstLeadingBit(arg_2), -arg_0.b, !arg_1))), any(!func_1(arg_0, arg_0.c.x).c), Struct_1(arg_0.a, arg_0.b, func_2(func_1(arg_0, any(vec2<bool>(arg_0.c.x, arg_0.c.x))), ~vec3<i32>(1i, 1i, 1i), arg_1, arg_0).c, select(~u_input.a ^ ~arg_0.d, u_input.a, !(arg_1 && false)))).b;
    var var_1 = all(func_3(!any(vec3<bool>(true, true, true)), ~67939u != arg_0.a));
    var var_2 = _wgslsmith_div_vec2_i32((~min(vec2<i32>(arg_2, -2147483647i), vec2<i32>(arg_2, 2147483647i)) ^ ~abs(vec2<i32>(arg_0.b, arg_2))) >> (_wgslsmith_div_vec2_u32(arg_0.d.zw, abs(u_input.a.xz) ^ arg_0.d.yz) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(max(firstLeadingBit(-4121i), arg_2), ~arg_0.b), reverseBits(vec2<i32>(-1i, arg_2))));
    let var_3 = vec2<f32>(-193f, global3[_wgslsmith_index_u32(62596u, 31u)]);
    let var_4 = vec2<bool>(any(select(!vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(false, arg_0.c.x, true, arg_0.c.x), select(vec4<bool>(arg_0.c.x, true, false, true), vec4<bool>(arg_0.c.x, true, arg_0.c.x, false), arg_1))) || arg_1, false);
    return 2622f;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = max(u_input.a.xyw & ~abs(u_input.a.yyy), min(vec3<u32>(0u, arg_1.d.x, 61174u) >> ((arg_1.d.yzz >> (vec3<u32>(110587u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(u_input.a.zww, vec3<u32>(4294967295u, u_input.a.x, 3751u)))) << (~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 88649u, firstLeadingBit(4294967295u)), arg_1.d.wxx) % vec3<u32>(32u));
    var var_1 = Struct_1(var_0.x, -_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_1.b, i32(-1i) * -2147483647i), ~(-1i)), func_2(Struct_1(_wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, arg_1.d.x), u_input.a.wx), vec2<u32>(var_0.x, 37654u)), ~(-arg_1.b), !arg_1.c, vec4<u32>(24814u >> (var_0.x % 32u), func_1(arg_1, false).a, _wgslsmith_mult_u32(1u, u_input.a.x), firstLeadingBit(arg_1.d.x))), vec3<i32>(firstLeadingBit(2147483647i) | _wgslsmith_mod_i32(-9823i, arg_1.b), 2147483647i, arg_1.b), func_1(func_2(Struct_1(u_input.a.x, 54934i, vec2<bool>(false, arg_1.c.x), vec4<u32>(u_input.a.x, arg_1.d.x, arg_1.d.x, var_0.x)), vec3<i32>(-2147483647i, arg_1.b, 1i), true, func_2(Struct_1(44481u, 2147483647i, vec2<bool>(true, arg_1.c.x), vec4<u32>(0u, 1u, 10217u, 21982u)), vec3<i32>(arg_1.b, arg_1.b, 2147483647i), false, Struct_1(var_0.x, arg_1.b, arg_1.c, arg_1.d))), true).c.x, arg_1).c, _wgslsmith_mod_vec4_u32((vec4<u32>(var_0.x, 1u, var_0.x, 0u) | vec4<u32>(arg_1.a, 33292u, 0u, 2108u)) | u_input.a, func_1(Struct_1(var_0.x, arg_1.b, arg_1.c, u_input.a), func_1(Struct_1(var_0.x, arg_1.b, vec2<bool>(false, arg_1.c.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, arg_1.a)), arg_1.c.x).c.x).d) & abs(u_input.a));
    var var_2 = var_1.c.x;
    var var_3 = arg_1;
    let var_4 = false & arg_1.c.x;
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1064f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(arg_1.a, 31u)])), _wgslsmith_f_op_f32(718f - -913f))), 328f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(460f, _wgslsmith_f_op_f32(-1052f - 589f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(1u, 31u)], -693f, global3[_wgslsmith_index_u32(39815u, 31u)], 1230f), vec4<f32>(109f, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(119149u, 1u)], 217f), vec4<bool>(true, var_1.c.x, false, arg_1.c.x)))))))), !(!all(global1[_wgslsmith_index_u32(11437u, 22u)])) | func_1(Struct_1(var_0.x, reverseBits(var_1.b), select(vec2<bool>(false, true), vec2<bool>(false, var_1.c.x), var_1.c.x), vec4<u32>(var_0.x, var_0.x, arg_1.a, 4294967295u)), false).c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(983f, global3[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(func_4(func_1(Struct_1(1u, -19428i, vec2<bool>(false, true), u_input.a), false), true, 69420i))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(392f, global3[_wgslsmith_index_u32(4294967295u, 31u)]) - vec2<f32>(685f, -883f)))))), Struct_1(((u_input.a.x | 32789u) >> (~u_input.a.x % 32u)) >> (reverseBits(14676u) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-1752i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -52833i), vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_add_i32(50786i, -46641i)), abs(-vec3<i32>(28580i, -52275i, 1i))), vec2<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -1831f) < global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), select(u_input.a, max(vec4<u32>(u_input.a.x, 1u, 0u, 0u), vec4<u32>(38038u, 15959u, u_input.a.x, 1u)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)))))));
    global1 = array<vec3<bool>, 22>();
    global1 = array<vec3<bool>, 22>();
    var var_1 = _wgslsmith_sub_u32(12739u, abs(~u_input.a.x));
    let var_2 = firstTrailingBit(func_2(func_2(func_2(Struct_1(1u, 2147483647i, vec2<bool>(false, false), u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 0i, -21300i), vec3<i32>(-2147483647i, -2147483647i, -18105i), vec3<i32>(-52182i, -12505i, 0i)), true, Struct_1(u_input.a.x, 1i, vec2<bool>(true, false), u_input.a)), -(~vec3<i32>(0i, 3134i, 0i)), true, Struct_1(~81392u, _wgslsmith_div_i32(29676i, -6582i), vec2<bool>(true, true), vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x))), abs(-vec3<i32>(2147483647i, -2147483647i, 0i)), true, Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 1u)), u_input.a.zwz), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-28412i, -1i, -1454i, -1i), vec4<i32>(19735i, 29527i, 2147483647i, -8880i))), vec2<bool>(true, true), vec4<u32>(~u_input.a.x, u_input.a.x, abs(u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 51807u)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(var_2, 2147483647i)), 1u, ~countOneBits(~(vec4<u32>(u_input.a.x, u_input.a.x, 18622u, u_input.a.x) | u_input.a)), 4294967295u);
}

