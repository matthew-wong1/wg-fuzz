struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
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

var<private> global0: Struct_1;

var<private> global1: array<i32, 1>;

var<private> global2: Struct_1 = Struct_1(false, vec2<u32>(56589u, 37553u), vec2<i32>(0i, 1i), 2147483647i, vec4<u32>(36889u, 37600u, 1u, 4294967295u));

var<private> global3: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(0u, 0u, 4294967295u, 75023u), vec4<u32>(4294967295u, 82256u, 6488u, 11254u), vec4<u32>(0u, 1u, 4294967295u, 36624u), vec4<u32>(0u, 0u, 80326u, 279u), vec4<u32>(5420u, 79238u, 4294967295u, 0u), vec4<u32>(6828u, 1u, 62408u, 1u), vec4<u32>(55936u, 0u, 58933u, 4150u), vec4<u32>(17454u, 50074u, 58374u, 77944u), vec4<u32>(0u, 1u, 45429u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 64620u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    global2 = Struct_1(true, vec2<u32>(~(~u_input.a), global0.e.x), -vec2<i32>(u_input.b.x, u_input.d.x | global2.c.x), _wgslsmith_clamp_i32(global2.d, 0i, _wgslsmith_mult_i32(_wgslsmith_div_i32(30106i, u_input.b.x), -global2.d)), ~(~(~vec4<u32>(global2.e.x, 13887u, global2.e.x, u_input.a))));
    var var_0 = Struct_1(global0.d > firstTrailingBit(1i), global2.b, ~abs(global2.c), _wgslsmith_dot_vec2_i32(countOneBits(global0.c) ^ global0.c, ~vec2<i32>(abs(1i), -14367i)), ~vec4<u32>(~(~u_input.e.x), 1u, u_input.a, 0u));
    let var_1 = vec2<bool>(2147483647i >= _wgslsmith_add_i32(global2.d | -global2.c.x, 1i), !(!select(global0.a, true, true)));
    let var_2 = ~vec4<i32>(abs(~1i), (_wgslsmith_mod_i32(43423i, global1[_wgslsmith_index_u32(global2.b.x, 1u)]) ^ ~var_0.d) >> (_wgslsmith_mult_u32(global2.b.x, 1u << (global0.e.x % 32u)) % 32u), global2.c.x & (i32(-1i) * -8231i), -49854i);
    let var_3 = 402f;
    return vec4<bool>(all(!select(select(vec4<bool>(var_1.x, true, global2.a, false), vec4<bool>(global0.a, global2.a, var_0.a, true), vec4<bool>(var_1.x, global0.a, var_0.a, global0.a)), select(vec4<bool>(false, true, var_0.a, global2.a), vec4<bool>(var_0.a, var_0.a, true, false), var_0.a), var_1.x)), !(min(~8393u, max(1u, 90870u)) > abs(_wgslsmith_add_u32(4294967295u, global0.e.x))), global2.a, any(vec3<bool>(all(var_1) && all(vec2<bool>(false, var_1.x)), true, all(vec3<bool>(var_0.a, global2.a, var_0.a)))));
}

fn func_2() -> Struct_1 {
    global3 = array<vec4<u32>, 10>();
    var var_0 = global2.a;
    let var_1 = ~u_input.e.x;
    global1 = array<i32, 1>();
    global2 = Struct_1(true && all(func_3()), vec2<u32>(_wgslsmith_mod_u32(0u, ~(~4294967295u)), 4294967295u | (~83602u ^ global2.b.x)), -_wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(global2.c, vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(global0.e.x, 1u)]), global0.c), min(vec2<i32>(global1[_wgslsmith_index_u32(global0.e.x, 1u)], global2.d) << (vec2<u32>(u_input.c, 47446u) % vec2<u32>(32u)), vec2<i32>(-2147483647i, global2.d))), reverseBits(18254i) << (_wgslsmith_div_u32(var_1, u_input.c) % 32u), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 10u)]);
    return Struct_1(select(true, all(vec4<bool>(!global2.a, false, all(vec2<bool>(false, false)), any(vec2<bool>(global0.a, true)))), true || all(select(vec2<bool>(false, true), vec2<bool>(true, false), global0.a))), global0.e.yw, _wgslsmith_add_vec2_i32(max(global0.c, select(-vec2<i32>(1i, -67907i), vec2<i32>(39745i, 2174i), all(vec3<bool>(global2.a, global0.a, global0.a)))), -(~_wgslsmith_sub_vec2_i32(global2.c, vec2<i32>(-4647i, -1i)))), u_input.d.x, min(~(~abs(global2.e)), ~(~min(vec4<u32>(var_1, u_input.a, 32883u, global2.b.x), global3[_wgslsmith_index_u32(global0.e.x, 10u)]))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    global1 = array<i32, 1>();
    global2 = Struct_1(arg_1.x, vec2<u32>(~u_input.a, _wgslsmith_mod_u32(~66860u, abs(~global0.e.x))), arg_0.c | _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(arg_0.b.x, 1u)], -1i), global2.c), global0.c), reverseBits(-(~arg_0.d)), arg_0.e);
    let var_0 = func_2();
    global2 = func_2();
    let var_1 = arg_0;
    return Struct_1(!(!(!var_0.a || false)), min(select(vec2<u32>(var_1.e.x, 1u), global0.b, arg_1), max(_wgslsmith_div_vec2_u32(vec2<u32>(39435u, var_1.e.x), var_1.b), var_0.e.zx)), -reverseBits(abs(vec2<i32>(arg_0.c.x, 2147483647i))) >> (func_2().e.zy % vec2<u32>(32u)), countOneBits(firstTrailingBit(-5244i)), ~(~global2.e));
}

fn func_5(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(301f - 235f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-397f * -996f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-723f, -170f, global2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1447f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(907f)))))));
    let var_1 = arg_0;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(223f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(880f, 2077f), var_0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -766f, var_0.x, -573f))))))));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_5(func_4(func_2(), vec2<bool>(true, global0.a)))), arg_0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(Struct_1(global2.a, global2.e.xx, global0.c, global1[_wgslsmith_index_u32(4294967295u, 1u)], vec4<u32>(global0.b.x, 4294967295u, 50887u, u_input.e.x))))) + arg_0));
    var var_1 = func_4(func_2(), select(!select(vec2<bool>(global2.a, true), !vec2<bool>(false, global0.a), func_3().wx), vec2<bool>(true, (global2.b.x > global0.e.x) && (true && global0.a)), true));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-789f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1907f))));
    global3 = array<vec4<u32>, 10>();
    global2 = func_4(func_4(Struct_1(global0.a, vec2<u32>(129686u, 19011u), vec2<i32>(-1i) * -vec2<i32>(global1[_wgslsmith_index_u32(102741u, 1u)], global0.c.x), ~_wgslsmith_div_i32(var_1.c.x, 11501i), vec4<u32>(~59813u, var_1.e.x ^ 4294967295u, _wgslsmith_add_u32(26189u, var_1.e.x), 1556u)), !(!func_3().zy)), !vec2<bool>(false, global2.a));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(true, false), select(!(!vec2<bool>(global2.a, true)), vec2<bool>(all(vec4<bool>(global0.a, global0.a, global2.a, global0.a)), global0.e.x >= global0.e.x), vec2<bool>(false, all(vec2<bool>(true, false)))), !vec2<bool>(global0.e.x > 1u, select(global0.a, true, global0.a)));
    let var_1 = var_0;
    global1 = array<i32, 1>();
    global0 = Struct_1(all(vec2<bool>(func_1(vec4<f32>(-153f, 1964f, 1287f, 648f)), !(var_1.x | true))), firstLeadingBit(firstLeadingBit(~vec2<u32>(global2.e.x, 14493u))) >> (~_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, global0.b.x)), vec2<u32>(1u, global0.e.x), u_input.e.xy) % vec2<u32>(32u)), vec2<i32>(firstTrailingBit(_wgslsmith_div_i32(u_input.b.x, global1[_wgslsmith_index_u32(12455u, 1u)])) & _wgslsmith_mod_i32(-24394i, ~u_input.b.x), ~((global2.c.x << (1u % 32u)) ^ ~(-45685i))), _wgslsmith_div_i32(-_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.c, 1u)], select(global0.d, -21866i, var_0.x)), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(~4294967295u, _wgslsmith_sub_u32(22148u, u_input.a))), 1u)]), u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~(-1i))));
}

