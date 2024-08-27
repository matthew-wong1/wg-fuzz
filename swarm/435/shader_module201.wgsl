struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: vec3<i32>;

var<private> global2: u32;

var<private> global3: Struct_3 = Struct_3(-39718i, Struct_2(2147483647i, Struct_1(vec4<u32>(24867u, 4294967295u, 37602u, 43462u), vec4<u32>(7376u, 4294967295u, 318u, 4294967295u), false, vec2<f32>(654f, -596f), -14851i), vec4<f32>(1741f, 377f, 577f, 628f)));

var<private> global4: array<vec2<f32>, 22>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~1i), _wgslsmith_mod_vec2_i32(~u_input.b << ((arg_1.a.yy & arg_0.b.zw) % vec2<u32>(32u)), u_input.b)), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(abs(0u), select(0u, arg_1.a.x, true), 3774u, min(1u, arg_2.b.x)), _wgslsmith_sub_vec4_u32(~arg_0.a, ~arg_0.b)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, arg_1.a.x, 105992u), max(arg_2.a, arg_2.b)), ~min(vec4<u32>(1u, 54964u, u_input.c, 1u), vec4<u32>(1u, arg_2.b.x, u_input.c, arg_2.b.x))), all(!(!vec3<bool>(arg_1.c, arg_1.c, true))), vec2<f32>(arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, 967f))), arg_2.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.d.x, arg_0.d.x)), _wgslsmith_f_op_f32(exp2(arg_0.d.x)), -678f, _wgslsmith_f_op_f32(f32(-1f) * -1529f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(161f, -964f, arg_1.d.x, arg_2.d.x), _wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(global3.b.b.b.x, 24u)], global0[_wgslsmith_index_u32(8005u, 24u)], arg_2.c)))), vec4<bool>(1u <= arg_1.b.x, true, true, all(vec4<bool>(arg_1.c, false, arg_1.c, arg_1.c))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.b.c, vec4<f32>(global3.b.b.d.x, -117f, 1000f, 802f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.b.b.d.x, _wgslsmith_f_op_f32(-arg_0.d.x), global3.b.c.x)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x));
    var var_2 = 0i >> (arg_2.a.x % 32u);
    global3 = Struct_3(0i, Struct_2(41396i, Struct_1(vec4<u32>(abs(arg_1.a.x), 0u << (u_input.c % 32u), 4294967295u & arg_0.a.x, select(20367u, u_input.c, arg_2.c)), vec4<u32>(_wgslsmith_add_u32(20804u, 33100u), arg_0.a.x << (105954u % 32u), ~9952u, ~22408u), all(select(vec4<bool>(arg_1.c, true, false, false), vec4<bool>(true, arg_2.c, arg_1.c, true), vec4<bool>(true, true, var_0.b.c, false))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1737f, -360f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.d.x, -1000f))))), ~(arg_1.e ^ 0i)), var_0.c));
    var var_3 = Struct_3(-arg_0.e, Struct_2(_wgslsmith_mult_i32(abs(1i) & _wgslsmith_add_i32(global1.x, u_input.b.x), u_input.a), Struct_1(arg_2.b, ~(~global3.b.b.a), arg_2.c, global4[_wgslsmith_index_u32(8898u, 22u)], _wgslsmith_div_i32(_wgslsmith_div_i32(global1.x, var_0.a), countOneBits(-48352i))), var_0.c));
    return _wgslsmith_f_op_f32(f32(-1f) * -1238f);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<f32>) -> u32 {
    global4 = array<vec2<f32>, 22>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f) + arg_1.b.d.x) + 404f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.b, Struct_1(vec4<u32>(u_input.c, arg_1.b.a.x, global3.b.b.a.x, 2324u), arg_1.b.a, global3.b.b.c, vec2<f32>(-168f, 739f), 0i), global3.b.b))), arg_1.c.x, _wgslsmith_f_op_f32(-arg_1.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c)));
    global2 = ~arg_1.b.a.x;
    global0 = array<vec4<f32>, 24>();
    let var_1 = vec3<bool>(reverseBits(4636u) == abs(_wgslsmith_mod_u32(6083u | global3.b.b.b.x, ~0u)), !global3.b.b.c, global3.b.b.c);
    return (~(global3.b.b.a.x | select(15608u, global3.b.b.a.x, var_1.x)) | u_input.c) ^ firstLeadingBit(~(~select(4294967295u, global3.b.b.a.x, var_1.x)));
}

fn func_1() -> Struct_3 {
    global2 = ~(~(~_wgslsmith_div_u32(global3.b.b.b.x, func_2(-622f, global3.b, global1.xy, global3.b.c.wyy))));
    global2 = 1u;
    var var_0 = true;
    global3 = Struct_3(_wgslsmith_clamp_i32(4517i & ~global3.b.a, ~countOneBits(-2147483647i), -(~_wgslsmith_add_i32(u_input.b.x, -32440i))), global3.b);
    global4 = array<vec2<f32>, 22>();
    return Struct_3(~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, u_input.b.x, 16798i, 1i), countOneBits(vec4<i32>(global3.a, -49576i, 0i, u_input.a))), _wgslsmith_dot_vec2_i32(select(global1.yz, vec2<i32>(u_input.a, 50171i), global3.b.b.c), vec2<i32>(-4048i, global1.x))), Struct_2(_wgslsmith_add_i32(reverseBits(_wgslsmith_add_i32(u_input.b.x, global3.b.a)), firstLeadingBit(~(-1i))), global3.b.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.b.c * vec4<f32>(global3.b.c.x, -1004f, 362f, 325f)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32) -> Struct_2 {
    global2 = 0u | _wgslsmith_dot_vec2_u32(~arg_0.b.b.a.zz, select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 4294967295u), global3.b.b.a.zz >> (vec2<u32>(global3.b.b.b.x, arg_0.b.b.b.x) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(global3.b.b.a.yx, arg_0.b.b.b.yz), (global3.b.b.c & arg_0.b.b.c) == true));
    global0 = array<vec4<f32>, 24>();
    let var_0 = arg_0;
    var var_1 = abs(_wgslsmith_mult_vec4_i32(firstTrailingBit(select(vec4<i32>(u_input.a, -53323i, 4121i, arg_2), vec4<i32>(global1.x, -34239i, global1.x, -42310i), vec4<bool>(false, false, false, true)) ^ -vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, global1.x)), ~vec4<i32>(~arg_0.b.b.e, -arg_0.b.b.e, firstLeadingBit(arg_2), -2147483647i)));
    global3 = arg_0;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(~(~u_input.a), func_4(func_1(), global3.b.c, -global3.b.a));
    let var_0 = Struct_1(func_1().b.b.b, ~(~countOneBits(abs(global3.b.b.b))), _wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(global3.a, u_input.b.x) ^ _wgslsmith_clamp_i32(global3.b.a, 0i, 0i)) < u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.b.c.x), global3.b.b.d.x))), global3.b.a << (u_input.c % 32u));
    let var_1 = global3.b;
    var var_2 = func_1().b;
    var var_3 = ~(~(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c, 33869u), abs(1u)) << (_wgslsmith_dot_vec3_u32(global3.b.b.b.zxx, vec3<u32>(0u, global3.b.b.b.x, 1u)) % 32u)));
    global4 = array<vec2<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.yww, func_4(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_2.c)))), _wgslsmith_sub_i32(-4586i, reverseBits(var_2.b.e))).b.b);
}

