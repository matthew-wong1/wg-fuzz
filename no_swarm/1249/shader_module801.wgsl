struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(min(-1481f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x - -531f), _wgslsmith_div_f32(-249f, 1691f)))))), vec3<u32>(_wgslsmith_sub_u32(arg_0.b.x, global3.x), _wgslsmith_mult_u32(~(~27310u), 1u), global3.x));
    var var_1 = Struct_1(var_0.a, abs(vec3<u32>(u_input.b, ~(~u_input.c), ~(~24411u))));
    let var_2 = -vec4<i32>(~countOneBits(_wgslsmith_div_i32(u_input.a, u_input.a)), u_input.a >> (1u % 32u), -_wgslsmith_add_i32(u_input.a, abs(7866i)), 1i);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(371f)))))), _wgslsmith_div_f32(var_1.a, 663f));
    global0 = arg_1;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(995f))));
}

fn func_4(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 26u)];
    let var_1 = var_0.a;
    var var_2 = global2[_wgslsmith_index_u32(~global3.x, 1u)];
    return firstLeadingBit(var_0.b.x);
}

fn func_2() -> vec2<i32> {
    let var_0 = _wgslsmith_add_i32(-u_input.a, 1i);
    global1 = array<Struct_1, 26>();
    global3 = vec4<u32>(1u, ~(~u_input.c), _wgslsmith_clamp_u32(~abs(3431u), ~55995u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(global3.wxx, vec3<u32>(u_input.c, u_input.c, 12569u)))), func_4(_wgslsmith_f_op_f32(func_3(Struct_1(-1066f, vec3<u32>(60133u, global3.x, 1u)), vec3<f32>(-161f, -1013f, global0.x))), global3.x)) >> (min(~reverseBits(vec4<u32>(global3.x, 1052u, 4294967295u, 65803u) | vec4<u32>(4294967295u, u_input.b, u_input.c, global3.x)), vec4<u32>(~u_input.c, abs(1u), firstLeadingBit(4294967295u), global3.x)) % vec4<u32>(32u));
    var var_1 = select(countOneBits(vec4<i32>(-1i, u_input.a ^ u_input.a, firstTrailingBit(var_0), -u_input.a) | abs(~vec4<i32>(-2147483647i, -21092i, u_input.a, var_0))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -8753i, var_0, u_input.a), abs(vec4<i32>(u_input.a, var_0, 0i, u_input.a)), vec4<i32>(12547i, -19724i, var_0, u_input.a) | vec4<i32>(u_input.a, -1i, 1i, u_input.a)), abs(vec4<i32>(-20743i, u_input.a, u_input.a, -7465i) | vec4<i32>(var_0, var_0, 1i, var_0)), -vec4<i32>(var_0, -3053i, var_0, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, i32(-1i) * -2147483647i, -var_0, -23460i), vec4<i32>(0i, -42227i, _wgslsmith_sub_i32(u_input.a, var_0), var_0)), -(~(~vec4<i32>(-39750i, 294i, u_input.a, -2147483647i)))), vec4<bool>((countOneBits(8843i) >= var_0) || select(false, any(vec3<bool>(false, false, false)), true), !any(vec2<bool>(true, true)), false, true));
    var_1 = min(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(var_0, -2147483647i), var_1.x << (5274u % 32u), ~u_input.a, u_input.a), ~select(vec4<i32>(169i, -1i, 17734i, var_0), vec4<i32>(77808i, u_input.a, 0i, -1i), true)), select(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, -47022i, var_1.x, -2147483647i), vec4<i32>(-2147483647i, 0i, 1i, var_1.x)), -vec4<i32>(8559i, var_1.x, u_input.a, -2147483647i), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))))), vec4<i32>(abs(_wgslsmith_mod_i32(-2147483647i, var_1.x)), abs(~u_input.a), countOneBits(~_wgslsmith_dot_vec3_i32(var_1.wzw, vec3<i32>(var_1.x, var_0, u_input.a))), i32(-1i) * -4402i));
    return vec2<i32>(u_input.a, u_input.a);
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    global2 = array<Struct_1, 1>();
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(140f, -951f)), _wgslsmith_f_op_f32(f32(-1f) * -352f))), arg_0.x));
    var var_0 = -abs(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a))));
    var_0 = abs(func_2());
    var var_1 = Struct_1(global0.x, vec3<u32>(global3.x, 1u, _wgslsmith_mod_u32(~global3.x, ~_wgslsmith_add_u32(u_input.c, 0u))));
    return ~(~_wgslsmith_sub_u32(0u, ~4294967295u) << (reverseBits(select(1u, 4294967295u, true)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 1>();
    var var_0 = global1[_wgslsmith_index_u32(global3.x, 26u)];
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6420u, 4294967295u, var_0.b.x & _wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, u_input.b, u_input.c)), _wgslsmith_div_u32(var_0.b.x, max(0u, u_input.b))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, u_input.b, var_0.b.x, 12952u), vec4<u32>(var_0.b.x, var_0.b.x, u_input.c, 4294967295u)), firstTrailingBit(global3.x), firstLeadingBit(1u), u_input.c) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, global3.x, global3.x), vec4<u32>(407u, u_input.b, u_input.b, var_0.b.x))), 0u, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(586f, 776f, global0.x) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 357f, 2335f), vec3<f32>(global0.x, -819f, global0.x)))))), 1u)];
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x))), global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -444f, _wgslsmith_f_op_f32(1229f - var_0.a))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-405f - 1440f) + _wgslsmith_div_f32(var_0.a, global0.x)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(75992u, 1u)], vec3<f32>(global0.x, global0.x, var_0.a)))), var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a);
}

