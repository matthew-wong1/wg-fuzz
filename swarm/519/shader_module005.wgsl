struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1() -> bool {
    var var_0 = 1i;
    var_0 = 2147483647i;
    return all(vec2<bool>(true, !any(vec3<bool>(true, true, true))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_4) -> f32 {
    var var_0 = arg_1.e;
    let var_1 = arg_0.x;
    var var_2 = arg_2.zx;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-319f, 1368f), vec2<f32>(292f, arg_3.b.d), arg_0.zz)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3.b.d, 931f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(259f, 1661f)))), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.b.xyx, ~countOneBits(vec3<u32>(u_input.b.x, arg_2.x, u_input.c.x)))), arg_3.b, arg_3.b);
    var var_4 = all(vec2<bool>(true, !all(select(arg_0.yz, arg_0.yz, arg_0.zy))));
    return _wgslsmith_f_op_f32(-arg_3.b.d);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<i32>) -> Struct_3 {
    global0 = array<Struct_4, 31>();
    return Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(508f, _wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, arg_0, false), Struct_1(arg_0, arg_1.x, vec2<u32>(4294967295u, u_input.b.x), 1474f, -36405i), vec4<u32>(20031u, 0u, 1235u, 3107u), global0[_wgslsmith_index_u32(u_input.c.x, 31u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1329f, -686f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(164f, 229f), vec2<f32>(-997f, 1000f))))), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(84082u, 17109u, 0u, u_input.c.x)), abs(u_input.b)), Struct_1(func_1(), ~(-arg_2.x), countOneBits(u_input.c), 802f, arg_2.x), Struct_1(!arg_0 == false, 3912i, reverseBits(vec2<u32>(u_input.a, u_input.b.x)), -131f, arg_2.x)), true);
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = !(!(!(!select(vec3<bool>(false, false, arg_0.b), vec3<bool>(false, true, arg_0.b), vec3<bool>(true, true, false)))));
    return arg_0.a.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(220f, -364f)))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(-423f)), _wgslsmith_f_op_f32(min(1061f, -631f)))))), ~countOneBits(countOneBits(u_input.c.x)), Struct_1(!any(vec2<bool>(true, true)), func_4(func_2(func_1(), reverseBits(vec4<i32>(-29983i, 6253i, -2147483647i, 2147483647i)), ~vec2<i32>(-57691i, 2147483647i))), vec2<u32>(1u ^ u_input.b.x, 48359u) ^ vec2<u32>(11065u, _wgslsmith_mod_u32(4294967295u, u_input.b.x)), _wgslsmith_f_op_f32(func_3(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true)), Struct_1(func_2(true, vec4<i32>(0i, 2147483647i, -13545i, -1i), vec2<i32>(-2147483647i, -2147483647i)).b, 21145i, vec2<u32>(u_input.a, 0u), _wgslsmith_f_op_f32(select(-374f, 356f, true)), _wgslsmith_sub_i32(0i, -1i)), vec4<u32>(u_input.a, u_input.b.x, 0u, u_input.c.x) << (select(u_input.b, vec4<u32>(1u, u_input.c.x, 1739u, u_input.b.x), vec4<bool>(true, true, true, false)) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(~1u, 31u)])), -2147483647i), func_2(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(533i, 1i), vec2<i32>(3949i, -1i)), vec2<i32>(1i, 1i)), -min(vec2<i32>(28627i, 38454i), vec2<i32>(-42335i, -2147483647i)))).a.d);
    var var_1 = func_2(var_0.c.a, -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c.b, -4617i, var_0.c.b, -2147483647i), vec4<i32>(var_0.c.e, -23137i, 34381i, 10178i), vec4<i32>(-70437i, 2147483647i, var_0.d.b, var_0.c.b)) << (u_input.b % vec4<u32>(32u)), max(~vec4<i32>(var_0.d.e, var_0.d.e, 0i, -36946i), countOneBits(vec4<i32>(var_0.d.e, -61027i, -2147483647i, var_0.d.e))), any(vec3<bool>(true, true, true))), ~(~(vec2<i32>(var_0.c.b, var_0.c.b) >> (_wgslsmith_mult_vec2_u32(var_0.d.c, vec2<u32>(u_input.a, 47251u)) % vec2<u32>(32u))))).a;
    global0 = array<Struct_4, 31>();
    var var_2 = _wgslsmith_f_op_f32(-var_1.a.x);
    global0 = array<Struct_4, 31>();
    var var_3 = _wgslsmith_f_op_f32(trunc(func_2(true, _wgslsmith_sub_vec4_i32(vec4<i32>(55004i, var_1.d.e, 0i, var_0.c.b), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.e, -1i, var_0.c.e, var_1.c.b), vec4<i32>(1248i, var_0.c.b, 43083i, 2147483647i))), _wgslsmith_add_vec2_i32(-vec2<i32>(var_1.c.e, var_0.c.b), vec2<i32>(var_0.d.b, var_1.d.e) << (var_1.d.c % vec2<u32>(32u)))).a.d.d)) < var_0.d.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.d, _wgslsmith_f_op_f32(f32(-1f) * -251f)))) * 1000f), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_1.d.c.x, 4294967295u), ~var_1.b, ~2513u, 0u), u_input.b, vec4<u32>(var_0.b, 1u, ~var_1.d.c.x, ~81686u)), u_input.b), ~(-(~var_0.c.b)), 170f, -49478i);
}

