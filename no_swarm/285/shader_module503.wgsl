struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_3, 20>;

var<private> global2: Struct_1 = Struct_1(0i, 68266u, vec2<f32>(-651f, -1685f), -12846i, vec2<bool>(true, false));

var<private> global3: array<Struct_1, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> i32 {
    let var_0 = Struct_5(Struct_4(38008u, Struct_2(vec2<u32>(4294967295u, ~global2.b)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global0.a.c.b, global0.a.c.b), arg_0.c.b) << (~(~25236u) % 32u), 20u)], ~21209u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-613f, -625f, true))), firstTrailingBit(10587i));
    let var_1 = reverseBits(global0.c);
    var var_2 = 29947u;
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.c.a.x, global2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c.a.x - global2.c.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.a.x, 1138f, arg_0.c.a.x) * vec3<f32>(-1000f, global0.a.c.a.x, -562f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(595f, arg_0.c.a.x, arg_0.c.a.x)), false))))));
    var var_4 = select(vec2<u32>(firstTrailingBit(~_wgslsmith_dot_vec2_u32(global0.a.c.b.xx, vec2<u32>(1u, u_input.a))), min(min(u_input.b, var_0.a.b.a.x), arg_0.d)), var_0.a.b.a, any(global2.e));
    return _wgslsmith_mult_i32(1i, 2147483647i >> (_wgslsmith_sub_u32(firstLeadingBit(~u_input.a), _wgslsmith_mod_u32(global0.a.b.a.x >> (arg_1.x % 32u), _wgslsmith_dot_vec3_u32(var_0.a.c.b, global0.a.c.b))) % 32u));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(global2.d << (_wgslsmith_mult_u32(u_input.b, 28218u) % 32u), 2147483647i, _wgslsmith_mod_i32(func_3(global0.a, vec2<u32>(1u, global0.a.a)), global0.c)), global0.c, _wgslsmith_clamp_i32(global0.c, 0i, max(54799i, 61756i)), ~(~(-2147483647i))) << (reverseBits(select(select(vec4<u32>(1u, u_input.a, arg_3.a.x, global0.a.c.b.x), vec4<u32>(1u, 1u, 23398u, arg_1.a.x), vec4<bool>(true, global2.e.x, true, true)) << (vec4<u32>(arg_1.a.x, 0u, global0.a.d, global0.a.d) % vec4<u32>(32u)), ~vec4<u32>(1u, arg_1.a.x, u_input.a, 0u) >> (select(vec4<u32>(arg_0.x, 29953u, 0u, global0.a.c.b.x), arg_0, global2.e.x) % vec4<u32>(32u)), select(!vec4<bool>(global2.e.x, global2.e.x, global2.e.x, false), vec4<bool>(global2.e.x, true, false, true), select(global2.e.x, false, global2.e.x)))) % vec4<u32>(32u));
    global0 = Struct_5(Struct_4(15625u, Struct_2(firstTrailingBit(~vec2<u32>(arg_1.a.x, 0u))), global0.a.c, countOneBits(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-100f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - arg_2.x)))), ~(global2.a >> ((12708u >> (u_input.a % 32u)) % 32u)));
    global0 = Struct_5(global0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * 1039f)) - global2.c.x), -1095f)), var_0.x);
    var var_1 = any(select(select(select(select(vec3<bool>(false, false, global2.e.x), vec3<bool>(global2.e.x, false, true), global2.e.x), select(vec3<bool>(true, true, false), vec3<bool>(false, true, global2.e.x), global2.e.x), true && global2.e.x), !select(vec3<bool>(true, true, global2.e.x), vec3<bool>(false, global2.e.x, global2.e.x), true), all(vec4<bool>(global2.e.x, false, false, true))), !vec3<bool>(true, global2.e.x, global2.e.x && global2.e.x), !any(!vec3<bool>(global2.e.x, global2.e.x, global2.e.x))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.c, vec2<f32>(global2.c.x, global0.b), vec2<bool>(true, global2.e.x))) - vec2<f32>(global2.c.x, 1014f)))), reverseBits(abs(arg_0.www | global0.a.c.b) & _wgslsmith_sub_vec3_u32(min(vec3<u32>(0u, arg_0.x, 4294967295u), vec3<u32>(arg_3.a.x, u_input.a, 28790u)), ~vec3<u32>(arg_1.a.x, 122010u, 74657u))));
    return min(firstTrailingBit(var_0.xyx << (~countOneBits(global0.a.c.b) % vec3<u32>(32u))), vec3<i32>(-_wgslsmith_mod_i32(global0.c, -1i), _wgslsmith_clamp_i32(1i, 0i, global0.c), ~global0.c));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    var var_0 = arg_0.xz;
    let var_1 = vec3<bool>(select(true, true, global2.e.x), !arg_2.e.x, !any(!(!vec4<bool>(false, false, arg_2.e.x, global2.e.x))));
    var var_2 = global2.c.x;
    global1 = array<Struct_3, 20>();
    var_2 = _wgslsmith_f_op_f32(global0.a.c.a.x * -819f);
    return arg_0;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = global0.a.b;
    global1 = array<Struct_3, 20>();
    var var_1 = !all(global2.e);
    let var_2 = arg_2.x;
    global0 = Struct_5(global0.a, -446f, ~firstLeadingBit(_wgslsmith_dot_vec4_i32(max(vec4<i32>(23746i, global0.c, 27084i, global0.c), vec4<i32>(-2147483647i, arg_1.x, arg_1.x, -2147483647i)), vec4<i32>(-1i, -2147483647i, global2.a, -3118i))));
    return global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(1u, ~_wgslsmith_sub_u32(49737u, 0u))) << (_wgslsmith_mult_u32(8276u, _wgslsmith_mult_u32(global0.a.c.b.x, abs(4294967295u))) % 32u), 1u)];
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~4294967295u), global0.a.a), u_input.b);
    global3 = array<Struct_1, 1>();
    let var_1 = u_input.a;
    global2 = func_5(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, firstLeadingBit(4294967295u)), global2.b), max(countOneBits(0u) | _wgslsmith_mult_u32(var_1, global2.b), 18153u), global2.b | u_input.a, 0u), func_4(_wgslsmith_sub_vec3_i32(~(vec3<i32>(global2.d, global2.a, -1i) | vec3<i32>(global2.a, global0.c, 36110i)), func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 0u, global0.a.b.a.x, 21682u), vec4<u32>(27146u, u_input.b, 1u, var_1), vec4<u32>(var_1, u_input.a, global0.a.c.b.x, 65814u)), global0.a.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(2149f, global0.b, 690f, 326f) * vec4<f32>(global0.b, -1793f, global2.c.x, global2.c.x)), Struct_2(global0.a.b.a))), Struct_3(_wgslsmith_f_op_vec2_f32(min(global2.c, global2.c)), firstLeadingBit(min(vec3<u32>(0u, global0.a.b.a.x, 5394u), global0.a.c.b))), Struct_1(~abs(global0.c), _wgslsmith_sub_u32(var_1, abs(4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.c.a.x, -1000f)), -5586i, global2.e), ~_wgslsmith_clamp_i32(global0.c >> (global0.a.b.a.x % 32u), min(global0.c, 2147483647i), reverseBits(-1i))), vec2<bool>(true, false || !any(vec2<bool>(global2.e.x, false))));
    global1 = array<Struct_3, 20>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -721f), -1564f);
}

fn func_6(arg_0: i32, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    global1 = array<Struct_3, 20>();
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -global2.a, -727i, -global2.a), vec4<i32>(global0.c, arg_0, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, global0.c, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c, arg_0, global0.c), vec3<i32>(global2.d, global2.a, global2.a), vec3<i32>(global2.a, global2.d, global2.a))), vec3<i32>(global2.a, 2147483647i, global2.d)), -1i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -36104i, global0.c), vec3<i32>(-33913i, global2.d, 1i)), 20579i, ~(-50708i)), vec4<i32>(global0.c | 0i, 9004i, _wgslsmith_div_i32(global2.a, -25453i), 69805i)) & (vec4<i32>(arg_0, 1i, func_5(vec4<u32>(1u, u_input.b, u_input.b, 7028u), vec3<i32>(arg_0, arg_0, arg_0), vec2<bool>(true, arg_2)).d, -9882i) >> (abs(select(vec4<u32>(4294967295u, global2.b, 1u, 21524u), vec4<u32>(u_input.b, global2.b, 24527u, 4294967295u), vec4<bool>(true, arg_2, global2.e.x, global2.e.x))) % vec4<u32>(32u))));
    let var_1 = select(vec3<bool>(global2.e.x, arg_2, global2.b == countOneBits(max(4294967295u, 0u))), vec3<bool>(true, !(!global2.e.x), any(vec3<bool>(false, true, !arg_2))), any(vec4<bool>(select(true, true, !global2.e.x), global2.e.x, true, !all(vec3<bool>(true, arg_2, global2.e.x)))));
    let var_2 = global0.a.c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-340f, _wgslsmith_f_op_f32(sign(485f)), !any(!vec4<bool>(arg_2, false, false, true)))) + -212f);
    return func_5(min(~(~(~vec4<u32>(global2.b, global0.a.c.b.x, 1u, global2.b))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(13064u, u_input.a, 62966u, u_input.a), vec4<u32>(global2.b, 0u, 44114u, 43475u)) >> (~vec4<u32>(67730u, global0.a.c.b.x, 0u, global2.b) % vec4<u32>(32u)))), func_4(var_0.www, global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(~u_input.a, func_5(vec4<u32>(global0.a.c.b.x, 4294967295u, 57907u, global0.a.d), var_0.wzy, vec2<bool>(var_1.x, true)).b)), 20u)], global3[_wgslsmith_index_u32(reverseBits(min(global0.a.b.a.x, var_2.b.x) & ~4294967295u), 1u)], -firstTrailingBit(~(-1821i))), vec2<bool>(!((global0.c & -2147483647i) != func_3(Struct_4(var_2.b.x, global0.a.b, Struct_3(global2.c, vec3<u32>(global0.a.c.b.x, 69961u, var_2.b.x)), u_input.a), global0.a.c.b.zx)), true)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~reverseBits(reverseBits(vec4<i32>(global0.c, -2147483647i, global2.a, 0i) & vec4<i32>(global2.d, 38397i, 1i, 2614i))));
    let var_1 = global0.a.b;
    let var_2 = func_6(countOneBits(global2.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global0.a.c.a.x, _wgslsmith_f_op_f32(trunc(global0.b)))), _wgslsmith_f_op_f32(func_1()), -859f, -1196f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-602f, global0.b, 1463f, 845f), vec4<f32>(207f, global0.a.c.a.x, global2.c.x, -370f)))), vec4<f32>(_wgslsmith_div_f32(global0.a.c.a.x, global2.c.x), _wgslsmith_f_op_f32(1211f * -240f), _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-308f + 891f)))), select(func_5(firstTrailingBit(vec4<u32>(0u, 4294967295u, 35262u, var_1.a.x)), var_0.xyz, func_5(vec4<u32>(var_1.a.x, 1u, global2.b, 0u), vec3<i32>(var_0.x, 1i, global2.a), vec2<bool>(global2.e.x, false)).e).b, 0u, true) <= ~reverseBits(global2.b));
    let var_3 = Struct_2(~vec2<u32>(global0.a.b.a.x, 1u));
    var var_4 = global2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-885f))), abs(vec3<u32>(select(~5880u, _wgslsmith_add_u32(106518u, u_input.b), global2.e.x), u_input.b, 0u ^ ~var_1.a.x)), -(~(-15587i)) & _wgslsmith_clamp_i32(var_0.x, 1i, var_0.x));
}

