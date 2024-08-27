struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_2, 9>;

var<private> global3: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_4(countOneBits(_wgslsmith_mult_vec2_i32(global1.yw, -vec2<i32>(-237i, u_input.b))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(max(_wgslsmith_div_vec4_u32(arg_2.b, vec4<u32>(global0.x, 47298u, 4294967295u, global0.x)), _wgslsmith_mult_vec4_u32(firstTrailingBit(arg_2.b), vec4<u32>(12286u, u_input.a, 3322u, global0.x))), vec4<u32>(firstLeadingBit(~arg_2.b.x), firstLeadingBit(_wgslsmith_add_u32(0u, arg_2.b.x)), arg_2.b.x, arg_2.b.x)), vec4<u32>(~abs(global0.x), abs(u_input.a), min(_wgslsmith_mult_u32(global0.x, arg_2.b.x), ~u_input.a), _wgslsmith_dot_vec2_u32(min(arg_2.b.wx, vec2<u32>(106361u, arg_2.b.x)), abs(vec2<u32>(u_input.a, arg_2.b.x)))) << (_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(arg_2.b.x, 1u, 0u, arg_2.b.x)) >> (arg_2.b % vec4<u32>(32u)), ~(~vec4<u32>(u_input.a, 4294967295u, 2600u, 0u))) % vec4<u32>(32u))), 9u)];
    var var_2 = Struct_4(global1.yy);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1992f, global3.x) - 727f)))));
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, ~_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_2.b.x, 0u) | ~arg_2.b.x, 0u & u_input.a)), 9u)];
    return 44107i;
}

fn func_2(arg_0: vec2<bool>) -> vec2<f32> {
    global1 = vec4<i32>(-52219i, 32619i, countOneBits(_wgslsmith_mod_i32(u_input.b, func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x, true, false, false), vec4<bool>(true, true, arg_0.x, arg_0.x)), -global1.x, Struct_1(1000f, vec4<u32>(global0.x, global0.x, 1u, global0.x), vec3<f32>(430f, global3.x, global3.x))))), max(25920i >> (_wgslsmith_div_u32(~25955u, u_input.a) % 32u), 0i));
    let var_0 = Struct_3(abs(4294967295u));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3388f, -366f, global3.x, global3.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.x, 125f, 1465f, global3.x), vec4<f32>(1000f, 541f, global3.x, -1523f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, -1053f) + vec4<f32>(1000f, global3.x, -832f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(117f, -407f, global3.x, 1034f) + vec4<f32>(-1005f, 526f, -160f, -1000f)), select(vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, true, true, true), arg_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-513f, 520f, global3.x, global3.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, global3.x) * vec4<f32>(global3.x, 2063f, global3.x, 947f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x + 882f), 1676f)), reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, global0.x, u_input.a, var_0.a)), ~vec4<u32>(73633u, global0.x, u_input.a, 55560u)), vec4<u32>(25883u, var_0.a, u_input.a, ~var_0.a))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global3.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(-1327f, global3.x), -406f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x + -1708f))))));
    var var_2 = -(~(vec4<i32>(-global1.x, -global1.x, -u_input.c, -2147483647i) ^ _wgslsmith_div_vec4_i32(abs(vec4<i32>(global1.x, global1.x, -1i, global1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(18597i, global1.x, u_input.b, u_input.b), vec4<i32>(global1.x, global1.x, 1i, 27826i)))));
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(543f)), 694f);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> vec3<i32> {
    global2 = array<Struct_2, 9>();
    global2 = array<Struct_2, 9>();
    var var_0 = vec2<bool>(true, true & all(select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0))), _wgslsmith_f_op_vec2_f32(-arg_0)))) * _wgslsmith_f_op_vec2_f32(func_2(!(!vec2<bool>(var_0.x, false)))));
    var var_2 = var_0.x;
    return -select(global1.xzz, global1.yzz, select(select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, arg_1, arg_1), false), vec3<bool>(var_0.x, arg_1, true), all(vec4<bool>(var_0.x, true, true, true))), select(select(vec3<bool>(arg_1, arg_1, var_0.x), vec3<bool>(var_0.x, false, var_0.x), true), vec3<bool>(true, true, true), select(vec3<bool>(arg_1, var_0.x, true), vec3<bool>(false, arg_1, var_0.x), true)), select(!vec3<bool>(arg_1, false, false), vec3<bool>(true, var_0.x, arg_1), vec3<bool>(arg_1, var_0.x, false))));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool) -> vec2<i32> {
    let var_0 = Struct_3(firstTrailingBit(reverseBits(~1u)));
    global0 = max(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(1u, var_0.a, 4294967295u)), vec3<u32>(4294967295u, 1u, ~var_0.a)), select(countOneBits(25266u), reverseBits(1u), !arg_1) | 1u, global0.x), ~(~(vec3<u32>(1u, u_input.a, 11585u) & ~vec3<u32>(global0.x, 1u, global0.x))));
    let var_1 = Struct_3(global0.x);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(689f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - 840f) * -361f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.x * global3.x))))), -168f, _wgslsmith_f_op_f32(abs(1181f)));
    return firstTrailingBit(global1.wx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_sub_vec2_i32(min(func_4(func_1(global3.wy, true), true), vec2<i32>(global1.x, u_input.b)), abs(-select(global1.wx, vec2<i32>(u_input.c, global1.x), vec2<bool>(true, true)))));
    global0 = vec3<u32>(~global0.x, ~global0.x, _wgslsmith_clamp_u32(u_input.a, u_input.a, 93537u));
    let var_1 = 1i;
    let var_2 = vec3<i32>(-1i) * -vec3<i32>(countOneBits(545i), 17090i, 0i);
    global1 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-50321i, global1.x, var_2.x, var_0.a.x), vec4<i32>(global1.x, 2147483647i, var_2.x, var_2.x) << (vec4<u32>(1u, global0.x, global0.x, 0u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, var_1, 27587i, 1i), abs(vec4<i32>(var_0.a.x, var_2.x, global1.x, 0i))), firstLeadingBit(~vec4<i32>(3002i, 2145i, -53573i, var_1))), vec4<i32>(33895i, 8602i, 12647i, _wgslsmith_div_i32(-26832i, _wgslsmith_div_i32(-74234i, -6853i))), vec4<i32>(-21385i, 1i, _wgslsmith_clamp_i32(var_2.x, -13364i, 37809i), global1.x) | reverseBits(vec4<i32>(u_input.c, 0i, var_1, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-323f, 0u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(911f, 834f, global3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.xwy)), vec3<bool>(true, !all(vec4<bool>(false, false, true, true)), _wgslsmith_f_op_f32(global3.x * global3.x) == 505f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global3.x, global3.x, 438f)))))));
}

