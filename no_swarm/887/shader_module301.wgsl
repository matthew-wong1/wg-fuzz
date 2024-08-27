struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<i32>, 9>;

var<private> global2: array<vec3<bool>, 8>;

var<private> global3: array<vec2<u32>, 25>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = abs(u_input.b);
    var var_2 = select(1i, -19363i, var_0.x);
    let var_3 = var_0.x;
    global1 = array<vec4<i32>, 9>();
    return arg_1.a;
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> bool {
    let var_0 = func_1(-143f, Struct_2(Struct_1(abs(~arg_0.a))));
    var var_1 = vec4<i32>(i32(-1i) * -24900i, firstLeadingBit(-_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 4603i)), -global0.xx)), -1i, global0.x);
    let var_2 = Struct_5(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(533f)) - arg_0.b), -1319f), Struct_2(var_0)), 801f, abs(~1i) ^ var_1.x, Struct_2(Struct_1(~arg_1)));
    global3 = array<vec2<u32>, 25>();
    global1 = array<vec4<i32>, 9>();
    return !any(!vec4<bool>(true, u_input.a.x != var_0.a, true, true));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = abs(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-39098i, u_input.c, 1i) | (vec3<i32>(29671i, u_input.c, 0i) & vec3<i32>(arg_1.x, arg_1.x, global0.x)), vec3<i32>(-2147483647i & arg_1.x, countOneBits(2147483647i), -5625i)), vec3<i32>(global0.x, 53166i & firstTrailingBit(-14711i), -abs(global0.x)), func_3(Struct_4(~arg_0.x, 1f), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.xy, global3[_wgslsmith_index_u32(u_input.b, 25u)])))));
    var var_1 = vec4<i32>(arg_1.x, 0i, _wgslsmith_add_i32(firstLeadingBit(global0.x & arg_1.x), -2147483647i), 38312i);
    var var_2 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1546f, 455f)))), Struct_2(Struct_1(u_input.a.x | 0u))));
    var var_3 = select(select(vec2<bool>(!all(vec3<bool>(false, true, true)), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, all(global2[_wgslsmith_index_u32(arg_0.x, 8u)])))), !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~arg_0.zz, vec2<u32>(4294967295u, var_2.a.a)), ~arg_0.x, var_2.a.a) < 5703u);
    let var_4 = vec3<u32>(23559u, var_2.a.a, 26805u) >> (_wgslsmith_add_vec3_u32(~(~u_input.a.zww >> (arg_0.ywy % vec3<u32>(32u))), u_input.a.xyz) % vec3<u32>(32u));
    return Struct_3(!(!select(!vec2<bool>(false, var_3.x), !vec2<bool>(false, var_3.x), true)), Struct_2(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -144f))), Struct_2(Struct_1(arg_0.x)))), Struct_2(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(var_2.a))), Struct_1(58978u), vec4<i32>(_wgslsmith_add_i32(u_input.c, _wgslsmith_sub_i32(1i, countOneBits(arg_1.x))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.x, global0.x), min(arg_1.x, var_0.x), i32(-1i) * -2147483647i) << (~_wgslsmith_div_u32(var_2.a.a, arg_0.x) % 32u), 0i << (countOneBits(14576u) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(select(-20143i, global0.x, var_3.x), arg_1.x), u_input.c)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_5 {
    let var_0 = arg_0.b.a.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(109f))), -1234f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-173f - 400f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-711f)))))) + _wgslsmith_f_op_f32(-339f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -290f), _wgslsmith_f_op_f32(round(1000f)))) - _wgslsmith_div_f32(-1088f, _wgslsmith_f_op_f32(f32(-1f) * -340f)))));
    var var_2 = vec2<u32>(arg_0.b.a.a, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a) & 0u);
    global0 = func_2(u_input.a, firstLeadingBit(-(~global1[_wgslsmith_index_u32(var_2.x, 9u)])) & vec4<i32>(-(arg_0.e.x & 221i), ~abs(23717i), ~select(1605i, -2147483647i, false), 0i | global0.x)).e;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1583f)), -1224f));
    return Struct_5(func_1(1000f, Struct_2(func_1(_wgslsmith_f_op_f32(410f * -1000f), func_2(vec4<u32>(15487u, 81100u, var_0, arg_0.c.a.a), vec4<i32>(-20640i, 1i, arg_0.e.x, 28468i)).c))), _wgslsmith_f_op_f32(708f + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -662f), 712f)))), ~_wgslsmith_dot_vec4_i32(arg_0.e, vec4<i32>(abs(-1i), _wgslsmith_mod_i32(23596i, arg_0.e.x), u_input.c, -arg_0.e.x)), func_2(u_input.a, vec4<i32>(func_2(u_input.a, arg_0.e).e.x, global0.x >> (54573u % 32u), ~u_input.c, -1i) & (vec4<i32>(-1i) * -vec4<i32>(0i, u_input.c, -25912i, -17285i))).c);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: vec4<f32>) -> Struct_2 {
    global2 = array<vec3<bool>, 8>();
    var var_0 = arg_0;
    global0 = min(_wgslsmith_mod_vec4_i32(arg_0.e, reverseBits(countOneBits(-global1[_wgslsmith_index_u32(arg_0.b.a.a, 9u)]))), firstTrailingBit(countOneBits(arg_0.e) >> (vec4<u32>(u_input.b, u_input.b, firstTrailingBit(arg_2.d.a.a), _wgslsmith_sub_u32(u_input.a.x, arg_0.d.a)) % vec4<u32>(32u))));
    return func_2(max(((vec4<u32>(arg_0.b.a.a, 4294967295u, 10273u, 47337u) ^ vec4<u32>(arg_0.c.a.a, 0u, arg_0.c.a.a, arg_2.a.a)) ^ u_input.a) & u_input.a, abs(vec4<u32>(8435u, firstLeadingBit(0u), 39542u, ~var_0.d.a))), global1[_wgslsmith_index_u32(var_0.c.a.a, 9u)]).b;
}

fn func_6(arg_0: Struct_5) -> Struct_4 {
    let var_0 = firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-_wgslsmith_div_i32(1i, -2147483647i), ~u_input.c), global0.x));
    let var_1 = func_4(func_2(u_input.a, global1[_wgslsmith_index_u32(func_1(_wgslsmith_div_f32(arg_0.b, arg_0.b), arg_0.d).a, 9u)]), func_4(Struct_3(func_2(vec4<u32>(arg_0.a.a, 37788u, 0u, arg_0.d.a.a), abs(global1[_wgslsmith_index_u32(911u, 9u)])).a, Struct_2(func_1(arg_0.b, arg_0.d)), Struct_2(arg_0.a), func_5(func_2(u_input.a, vec4<i32>(arg_0.c, -24844i, var_0, var_0)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, -104f, 439f) - vec4<f32>(-241f, arg_0.b, -174f, -962f))).a, -vec4<i32>(1i, 1i, arg_0.c, 39508i)), arg_0.a).d.a);
    let var_2 = -1i;
    var var_3 = select(func_2(_wgslsmith_mod_vec4_u32(min(~u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, var_1.d.a.a, var_1.d.a.a, var_1.a.a), u_input.a)), firstLeadingBit(~u_input.a)), global1[_wgslsmith_index_u32(u_input.b, 9u)]).a, vec2<bool>(all(vec2<bool>(true, select(true, true, true))), _wgslsmith_dot_vec3_i32(firstLeadingBit(global0.wzx), _wgslsmith_mod_vec3_i32(global0.xyz, vec3<i32>(var_2, 0i, var_1.c))) >= (var_0 ^ -2147483647i)), true);
    let var_4 = Struct_4(firstTrailingBit(max(~arg_0.d.a.a, ~arg_0.a.a | select(4294967295u, 4294967295u, var_3.x))), -1512f);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_5(Struct_1(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, 1u), 54409u, ~23471u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -747f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1003f, 1005f)))), max(~(~0i), global0.x), func_5(Struct_3(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_2(Struct_1(0u)), Struct_2(Struct_1(u_input.b)), func_1(2101f, Struct_2(Struct_1(u_input.b))), _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(u_input.b, 9u)], vec4<i32>(u_input.c, -4100i, u_input.c, -1i))), vec2<bool>(-53926i < global0.x, true), func_4(func_2(vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), Struct_1(u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(888f, 1266f, 811f, 624f), vec4<f32>(-141f, -643f, 1675f, -246f))))));
    var var_1 = select(firstTrailingBit(~abs(u_input.a.zxy)), select(reverseBits(~min(vec3<u32>(4235u, 1u, 68374u), vec3<u32>(78441u, 2261u, 90039u))), vec3<u32>(~u_input.b, var_0.a, var_0.a), vec3<bool>(437f > _wgslsmith_f_op_f32(-var_0.b), true, _wgslsmith_f_op_f32(-var_0.b) < 694f)), global2[_wgslsmith_index_u32(var_0.a, 8u)]);
    let var_2 = Struct_4(var_0.a, 883f);
    let var_3 = countOneBits(func_4(func_2(vec4<u32>(24355u, 777u, 0u, ~var_1.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-17740i, u_input.c, global0.x, global0.x), global1[_wgslsmith_index_u32(9748u, 9u)], global1[_wgslsmith_index_u32(17242u, 9u)]) & vec4<i32>(u_input.c, 42877i, global0.x, global0.x)), func_2(abs(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(10823u, 22300u, 16096u, 25438u))), vec4<i32>(42109i, ~u_input.c, 0i, countOneBits(57093i))).c.a).c);
    let var_4 = func_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, 1u, ~4294967295u, 0u), vec4<u32>(func_5(Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(var_2.a)), Struct_2(Struct_1(54971u)), Struct_1(var_2.a), vec4<i32>(u_input.c, -32465i, var_3, -14426i)), vec2<bool>(true, false), Struct_5(Struct_1(var_2.a), 578f, 4552i, Struct_2(Struct_1(4294967295u))), vec4<f32>(2029f, -1000f, var_0.b, var_0.b)).a.a, ~var_1.x, 0u, var_2.a)), vec4<i32>(abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_3, -2147483647i), vec2<i32>(var_3, -20227i))), 2147483647i, ~(-_wgslsmith_clamp_i32(-38701i, 2147483647i, u_input.c)), 30987i));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b))), var_0.b))) * vec3<f32>(417f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-365f + -107f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1147f + var_2.b)))));
    let var_6 = func_6(Struct_5(func_2(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(4294967295u, var_0.a, 36509u, var_2.a)), ~u_input.a), global1[_wgslsmith_index_u32(var_2.a, 9u)]).b.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b * -1000f), _wgslsmith_f_op_f32(trunc(var_5.x)))), 15193i >> ((var_2.a >> (0u % 32u)) % 32u), Struct_2(var_4.c.a)));
    let var_7 = _wgslsmith_f_op_f32(f32(-1f) * -346f);
    var var_8 = Struct_5(func_2(~(~vec4<u32>(5504u, 125598u, 4294967295u, 4294967295u) ^ ~u_input.a), _wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(~(~var_4.c.a.a), 9u)], _wgslsmith_sub_vec4_i32(vec4<i32>(-22345i, 82925i, 12723i, var_3), min(var_4.e, global1[_wgslsmith_index_u32(0u, 9u)])))).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_5.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(536f)))))), -_wgslsmith_div_i32(var_4.e.x, u_input.c), Struct_2(var_4.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_7))))));
}

