struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 47713u;

var<private> global1: u32;

var<private> global2: array<vec4<bool>, 29>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> vec2<f32> {
    global1 = _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, abs(arg_0.x), ~arg_0.x), vec4<u32>(68491u, 1u, arg_0.x, ~38478u))));
    var var_0 = _wgslsmith_add_vec4_i32(-_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, u_input.b, 28582i, 59927i), abs(vec4<i32>(23882i, u_input.a, -15675i, -1i))), ~vec4<i32>(69570i, -2147483647i, -2147483647i, u_input.b) & _wgslsmith_mult_vec4_i32(vec4<i32>(35372i, u_input.b, -51613i, 1i), vec4<i32>(-44659i, 14560i, 0i, -1i)), vec4<i32>(1i, u_input.a, 2147483647i, u_input.b)), (-vec4<i32>(0i, 24390i, 1i, -1i) >> (~(~vec4<u32>(0u, 1u, arg_0.x, 2090u)) % vec4<u32>(32u))) >> (~vec4<u32>(49838u, arg_0.x, 1u, 49199u) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-719f - 1013f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x + -732f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.x)))))), _wgslsmith_f_op_vec2_f32(var_1 - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(-var_1.x))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(true, all(vec4<bool>(false, false, true, true)), true))));
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -u_input.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(-14032i, var_0.x, u_input.b, 25042i), vec4<i32>(var_0.x, -16413i, -5780i, u_input.a)), 1i, var_0.x & _wgslsmith_mult_i32(2147483647i, var_0.x)), ~(~reverseBits(vec4<i32>(1i, -1i, -39184i, u_input.b)))) << (firstTrailingBit(min(~vec4<u32>(arg_0.x, 36721u, 1u, 1u) & (vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x) ^ vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 27650u)), select(~vec4<u32>(26393u, arg_0.x, 16831u, arg_0.x), ~vec4<u32>(0u, arg_0.x, arg_0.x, 55111u), select(vec4<bool>(true, true, true, false), global2[_wgslsmith_index_u32(31438u, 29u)], false)))) % vec4<u32>(32u));
    return vec2<f32>(-133f, _wgslsmith_f_op_f32(-var_1.x));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(114216u, 0u))))))), vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1383f, -778f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1235f))))));
    var var_1 = select(!select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), vec2<bool>(!(!any(vec3<bool>(false, false, false))), true), !(!vec2<bool>(false, any(vec3<bool>(true, true, false)))));
    let var_2 = Struct_3(false, true, 766f, Struct_1(!any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x))), vec4<i32>(i32(-1i) * -u_input.a, -u_input.b & firstLeadingBit(u_input.b), 0i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, u_input.a, 63259i), vec3<i32>(u_input.a, -2147483647i, 8768i), vec3<bool>(var_1.x, var_1.x, false)), _wgslsmith_sub_vec3_i32(vec3<i32>(38795i, u_input.a, u_input.b), vec3<i32>(u_input.b, -6834i, u_input.a)))), !select(!vec3<bool>(true, var_1.x, false), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true)), true), _wgslsmith_mod_vec3_i32(max(vec3<i32>(45893i, u_input.a, 19378i) | vec3<i32>(0i, u_input.b, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-46308i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), -vec3<i32>(u_input.a, u_input.b, 0i))), select(!vec4<bool>(true, var_1.x, any(vec2<bool>(true, var_1.x)), all(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), select(vec4<bool>(!var_1.x, !var_1.x, !var_1.x, var_1.x), vec4<bool>(all(vec3<bool>(true, var_1.x, false)), any(vec4<bool>(var_1.x, var_1.x, true, var_1.x)), true, true), false), var_1.x));
    var_1 = select(var_2.e.ww, vec2<bool>(any(select(vec4<bool>(var_2.e.x, false, var_2.b, false), vec4<bool>(true, var_1.x, false, var_1.x), var_2.e)), false), vec2<bool>(true, all(var_2.e.yxz)));
    var_1 = var_2.e.zx;
    return true;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-1668f));
    global0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_2.x, _wgslsmith_div_u32(23555u, ~max(0u, arg_2.x))), arg_2.x);
    let var_1 = Struct_3(all(!arg_1.c), func_2(), 785f, arg_1, global2[_wgslsmith_index_u32(~arg_2.x, 29u)]);
    var var_2 = arg_1;
    let var_3 = _wgslsmith_clamp_u32(firstLeadingBit(max(arg_2.x, arg_2.x)), 4294967295u, ~arg_2.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c)) * 523f) * var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), Struct_1(select(true, false, true), ~vec4<i32>(31833i, u_input.b, u_input.b, u_input.b), vec3<bool>(true, true, true), vec3<i32>(u_input.a, u_input.b, -1i)), ~(~vec4<u32>(17397u, 0u, 4641u, 4294967295u)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f)))));
    var var_1 = Struct_1(true, vec4<i32>(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(0i, -2147483647i, u_input.a)), abs(min(vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(u_input.a, 0i, -61571i)))), u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, u_input.b, u_input.a, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.a, -6936i, u_input.b), vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a), vec4<i32>(u_input.a, u_input.a, 36076i, 0i))), countOneBits(~vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.a))), -2147483647i), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), vec3<i32>(u_input.a | firstLeadingBit(-1764i), ~u_input.b, _wgslsmith_mod_i32(u_input.b, i32(-1i) * -1i)));
    var_0 = Struct_2(var_0.a);
    global2 = array<vec4<bool>, 29>();
    let var_2 = _wgslsmith_f_op_f32(-var_0.a) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-481f - 904f))), var_0.a)));
    var var_3 = Struct_1(var_2, vec4<i32>(i32(-1i) * -68189i, -var_1.d.x, ~countOneBits(var_1.b.x), ~(~_wgslsmith_dot_vec3_i32(var_1.b.zxw, var_1.b.yyw))), vec3<bool>(true, var_0.a > _wgslsmith_div_f32(-988f, _wgslsmith_f_op_f32(-var_0.a)), var_1.a), select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, var_1.d.x), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 0i, 32538i), var_1.d)), vec3<i32>(4085i, -u_input.b, 1i), false) | min(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a) >> (vec3<u32>(19443u, 26960u, 0u) % vec3<u32>(32u)), var_1.b.xxw), var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2431f + _wgslsmith_f_op_f32(-322f * var_0.a))), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 4294967295u)), vec2<u32>(1u, 18631u)), 1u, 1u), vec2<f32>(_wgslsmith_f_op_f32(max(var_0.a, 108f)), var_0.a), ~vec3<u32>(1u, ~max(38628u, 22874u), ~(~4294967295u)));
}

