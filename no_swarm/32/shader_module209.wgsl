struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false));

var<private> global1: i32;

var<private> global2: f32;

var<private> global3: array<Struct_2, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-479f * 1693f)));
    global3 = array<Struct_2, 7>();
    var var_0 = any(vec2<bool>(arg_0.a, any(vec3<bool>(true, arg_0.a != arg_0.a, true))));
    var_0 = !arg_0.a;
    var var_1 = vec2<bool>(true, true);
    return _wgslsmith_f_op_f32(170f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1074f)))))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(true, arg_0.x, 38022u, u_input.b, vec4<i32>(18870i, 0i, arg_1.x, arg_1.x))))))), firstTrailingBit(_wgslsmith_sub_u32(~71402u, arg_0.x)), arg_0.x, !select(vec4<bool>(true, arg_0.x >= 1u, true, true), global0[_wgslsmith_index_u32(arg_0.x, 9u)], true));
    global3 = array<Struct_2, 7>();
    let var_1 = select(select(var_0.d.yy, vec2<bool>(false, select(any(var_0.d.wx), true, true)), vec2<bool>(var_0.d.x, false)), select(vec2<bool>(any(var_0.d), var_0.b <= 76479u), var_0.d.yz, true), _wgslsmith_clamp_i32(u_input.a, 48049i & _wgslsmith_dot_vec3_i32(u_input.b.zzw, vec3<i32>(arg_1.x, 24746i, 4948i)), ~u_input.b.x | (u_input.a & -22765i)) == -27978i);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(f32(-1f) * -651f))) * var_0.a), abs(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 6007u, 6181u)), ~(arg_0.wzy | arg_0.xyx))), _wgslsmith_clamp_u32(22841u, 41048u, 0u), select(global0[_wgslsmith_index_u32(max(var_0.b, ~(~arg_0.x)), 9u)], vec4<bool>((-1i << (0u % 32u)) == -arg_1.x, true, any(!vec3<bool>(false, var_0.d.x, var_1.x)), var_0.d.x), !select(global0[_wgslsmith_index_u32(~var_0.c, 9u)], !vec4<bool>(false, var_0.d.x, var_0.d.x, var_1.x), select(global0[_wgslsmith_index_u32(6459u, 9u)], vec4<bool>(true, var_0.d.x, var_1.x, false), vec4<bool>(var_1.x, var_0.d.x, var_0.d.x, true)))));
    let var_3 = vec4<f32>(var_2.a, 326f, _wgslsmith_f_op_f32(step(var_2.a, 235f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) + -552f)));
    return u_input.b.x;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-1125f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(f32(-1f) * -829f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-762f - 727f)))))));
    let var_1 = vec4<bool>(all(!global0[_wgslsmith_index_u32(1u, 9u)]), (u_input.b.x << (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 29423u), vec2<u32>(22860u, 30661u)) % 32u)) <= countOneBits(func_2(~vec4<u32>(1u, 0u, 44317u, 4294967295u), -vec3<i32>(2147483647i, u_input.a, u_input.a))), !(-1033f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1466f) + _wgslsmith_f_op_f32(func_3(Struct_1(false, 4294967295u, 0u, u_input.b, u_input.b))))), all(vec4<bool>(true, select(true, true, false), true, false)) && !all(vec2<bool>(false, true)));
    var var_2 = 8424i;
    global3 = array<Struct_2, 7>();
    global0 = array<vec4<bool>, 9>();
    return Struct_1(false, ~(~27295u), _wgslsmith_mod_u32(0u, 4294967295u) << (0u % 32u), -select(vec4<i32>(~u_input.a, ~(-36152i), u_input.b.x ^ u_input.b.x, u_input.b.x), (u_input.b & u_input.b) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(58089u, 1u, 1u, 4294967295u), vec4<u32>(88961u, 4294967295u, 4294967295u, 5106u), vec4<u32>(4294967295u, 27315u, 34278u, 0u)) % vec4<u32>(32u)), vec4<bool>(any(global0[_wgslsmith_index_u32(15344u, 9u)]), !var_1.x, true, false)), vec4<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, _wgslsmith_add_i32(-43441i, 36362i)), 1i, firstLeadingBit(u_input.a << (22785u % 32u))) >> (firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(9165u, 0u, 0u, 34101u), vec4<u32>(1u, 33496u, 19705u, 68550u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = min(~vec4<i32>(reverseBits(2147483647i), -2883i, -var_0.d.x, ~_wgslsmith_mult_i32(0i, -2147483647i)), u_input.b & abs(func_1().e));
    global1 = -7055i;
    let var_2 = Struct_1(all(vec4<bool>(false, !var_0.a == (1i <= u_input.a), (var_0.a != false) & all(global0[_wgslsmith_index_u32(37056u, 9u)]), all(select(vec4<bool>(var_0.a, false, var_0.a, true), global0[_wgslsmith_index_u32(53934u, 9u)], global0[_wgslsmith_index_u32(var_0.b, 9u)])))), _wgslsmith_clamp_u32(1u, 130938u, var_0.c), _wgslsmith_div_u32(~abs(~var_0.c), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 0u, var_0.c), vec3<u32>(4294967295u, var_0.c, var_0.c)), var_0.c)), u_input.b, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, var_0.e.x, -4286i), vec4<i32>(0i, u_input.b.x, var_0.d.x, -25523i) << (vec4<u32>(4294967295u, var_0.b, 24290u, var_0.b) % vec4<u32>(32u))), 0i, u_input.b.x, abs(_wgslsmith_sub_i32(u_input.a, var_1.x))) & u_input.b);
    global2 = -365f;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3235f + 840f)), _wgslsmith_f_op_f32(f32(-1f) * -102f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(false, var_0.c, var_2.b, vec4<i32>(u_input.b.x, u_input.b.x, -3412i, var_1.x), var_0.e)))), -669f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-761f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-663f, 668f))), -179f, _wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, var_2.c, var_2.b, u_input.b, u_input.b)))) * vec4<f32>(125f, _wgslsmith_f_op_f32(-1137f - _wgslsmith_f_op_f32(f32(-1f) * -637f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(199f)), -1073f), _wgslsmith_f_op_f32(257f - _wgslsmith_f_op_f32(f32(-1f) * -418f)))), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b, 1u, var_2.b), ~vec3<u32>(var_0.b, 1u, var_0.c)), vec3<u32>(firstLeadingBit(19488u), var_0.b, ~4294967295u)), 53505u, 10959u, ~var_0.b), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-var_2.d.xyw, vec3<i32>(var_1.x | u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(var_0.e.xzw, vec3<i32>(-2147483647i, -2147483647i, var_2.d.x))), vec3<i32>(-18866i, -u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-19857i, 2147483647i, var_2.d.x), var_2.d.wxz))), var_2.d.xxy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(997f - var_3.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1029f, _wgslsmith_f_op_f32(f32(-1f) * -1215f))) + -559f)));
}

