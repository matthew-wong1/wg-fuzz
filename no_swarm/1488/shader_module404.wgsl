struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec2<i32>(57298i, 14425i)), Struct_4(vec2<i32>(1i, -13428i)), Struct_4(vec2<i32>(1i, -1i)), Struct_4(vec2<i32>(-9866i, 0i)), Struct_4(vec2<i32>(-1i, 1i)), Struct_4(vec2<i32>(2653i, 790i)), Struct_4(vec2<i32>(-1i, -1i)));

var<private> global1: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    let var_0 = ~u_input.a > _wgslsmith_sub_u32(u_input.a, ~u_input.a);
    global1 = ~vec2<u32>(global1.x, u_input.a);
    global1 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 18416u, 4294967295u, u_input.a), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, global1.x, 1u, 15959u), vec4<u32>(global1.x, 71376u, u_input.a, 4294967295u), vec4<u32>(0u, 0u, 65633u, global1.x)))), global1.x);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_0, arg_1), _wgslsmith_f_op_vec3_f32(sign(arg_2.xxy)), select(vec3<bool>(var_0, true, false), vec3<bool>(var_0, true, true), var_0))))), 1u, 655f, Struct_1(reverseBits(i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -1655f)))), 22659u));
    global1 = vec2<u32>(var_1.b, ~(~firstTrailingBit(~16859u)));
    return 1u;
}

fn func_2() -> Struct_4 {
    let var_0 = 1i << ((_wgslsmith_mult_u32(48447u & _wgslsmith_mult_u32(global1.x, u_input.a), u_input.a) << (firstLeadingBit(_wgslsmith_mod_u32(global1.x, _wgslsmith_add_u32(u_input.a, 67083u))) % 32u)) % 32u);
    let var_1 = Struct_1(-19498i, 824f, ~((4294967295u >> (u_input.a % 32u)) >> (abs(global1.x) % 32u)) & ~(~(u_input.a & u_input.a)));
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(753f, _wgslsmith_f_op_f32(exp2(var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f) + var_1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(313f, var_1.b, var_1.b)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_1.b, var_1.b) + vec3<f32>(740f, var_1.b, var_1.b)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, var_1.b, 406f), vec3<f32>(var_1.b, -1000f, var_1.b))))), var_1.c, var_1.b, var_1);
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_2.a)), vec3<f32>(2930f, var_2.c, var_2.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 1000f, 408f) - vec3<f32>(-1457f, -1087f, -1351f))), !any(vec4<bool>(false, false, false, false)))))), _wgslsmith_add_u32(_wgslsmith_sub_u32(72900u, func_3(832f, _wgslsmith_f_op_f32(599f + 104f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.c, var_2.c, var_2.d.b, 1000f))), _wgslsmith_sub_i32(var_1.a, var_0))), var_1.c), _wgslsmith_f_op_f32(1f + 1340f), var_1);
    let var_3 = (~abs(84037u) >> (global1.x % 32u)) < global1.x;
    return global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(~u_input.a), _wgslsmith_add_u32(var_1.c, _wgslsmith_mult_u32(global1.x ^ 1743u, ~var_2.d.c))), 7u)];
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-max(vec2<i32>(2897i, 0i), vec2<i32>(38838i, 1i)), vec2<i32>(abs(24544i), 1i)), vec2<i32>(-(-19275i << (u_input.a % 32u)), 10988i)));
    var_0 = func_2();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(1f)), -901f, 989f);
    var_0 = func_2();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~43469u, abs(58321u) & (~u_input.a >> (_wgslsmith_mod_u32(14657u, u_input.a) % 32u)), ~4294967295u), ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global1.x, 27277u, 58302u)), ~vec3<u32>(52775u, 51111u, global1.x) & ~vec3<u32>(4294967295u, 0u, 1u))), 7u)];
    return Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + var_1)))))), _wgslsmith_add_u32(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(14153u, u_input.a, 0u), vec3<u32>(1u, global1.x, u_input.a)), 15919u, true), ~global1.x), _wgslsmith_f_op_f32(ceil(var_1.x)), Struct_1(_wgslsmith_dot_vec4_i32(abs(max(vec4<i32>(50339i, 32822i, var_2.a.x, -2147483647i), vec4<i32>(var_2.a.x, var_2.a.x, var_2.a.x, 41296i))), -select(vec4<i32>(var_0.a.x, 2147483647i, var_2.a.x, var_0.a.x), vec4<i32>(26206i, -17762i, var_0.a.x, 2203i), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_1.x)))), 15834u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = ~max(vec2<u32>(1u, 9929u), vec2<u32>(_wgslsmith_sub_u32(var_0.d.c, 8064u >> (global1.x % 32u)), global1.x));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-1455f - _wgslsmith_div_f32(var_0.a.x, var_0.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1414f))))), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1592f + -1800f)))))), func_1().d);
    var_0 = func_1();
    global0 = array<Struct_4, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.b, vec4<i32>(-1i) * -firstTrailingBit(select(vec4<i32>(var_0.d.a, 19197i, 1i, var_0.d.a), vec4<i32>(31733i, 1781i, -29066i, -71666i), false)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_0.d.a, var_0.d.a, 2147483647i), vec4<i32>(27709i, var_0.d.a, var_0.d.a, var_0.d.a), vec4<i32>(var_0.d.a, 0i, -24051i, var_0.d.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(-5827i, -2147483647i, var_0.d.a, 2147483647i), vec4<i32>(-1i, var_0.d.a, -20508i, var_0.d.a))), vec4<i32>(2147483647i >> (u_input.a % 32u), var_0.d.a, _wgslsmith_mod_i32(var_0.d.a, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.a, -46590i), vec2<i32>(var_0.d.a, 2147483647i)))) << (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 1u, global1.x, 4294967295u), vec4<u32>(global1.x, var_0.b, u_input.a, global1.x)), ~(~vec4<u32>(global1.x, var_0.d.c, 4294967295u, 75010u))) % vec4<u32>(32u)));
}

