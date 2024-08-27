struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: i32;

var<private> global2: bool = false;

var<private> global3: bool = true;

var<private> global4: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    let var_0 = arg_1;
    let var_1 = firstLeadingBit(~u_input.a) == _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 77926u, u_input.b), max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 5286u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.a)), _wgslsmith_clamp_u32(u_input.a, 14771u, 0u), u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), ~vec3<u32>(1u, u_input.a, u_input.b), vec3<u32>(u_input.b, u_input.a, u_input.a))));
    global2 = all(vec3<bool>(true, var_1, !(!(false | arg_1.a.c))));
    let var_2 = arg_0;
    var var_3 = ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b), reverseBits(~vec4<u32>(19317u, u_input.b, u_input.a, u_input.b))));
    return arg_1.a.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 4>();
    let var_0 = vec3<f32>(1084f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x), _wgslsmith_f_op_f32(494f - arg_1.d.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.a, -1000f, false))))) - _wgslsmith_f_op_f32(max(-1283f, _wgslsmith_f_op_f32(func_3(Struct_3(vec4<i32>(0i, 2147483647i, arg_1.b.x, -2147483647i), arg_1.c), Struct_2(global0[_wgslsmith_index_u32(arg_0, 4u)], vec4<f32>(-170f, 302f, arg_1.d.x, -1800f))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(519f, _wgslsmith_f_op_f32(1686f - _wgslsmith_f_op_f32(ceil(1539f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(240f, arg_1.a, 797f, 487f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1847f, arg_1.a, _wgslsmith_f_op_f32(-arg_1.d.x), -1605f)))));
    var var_2 = Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(abs(var_1)));
    let var_3 = countOneBits(~u_input.c);
    return !(!(!vec4<bool>(arg_1.c, select(arg_1.c, arg_1.c, arg_1.e.x), false || arg_1.e.x, -384f == arg_1.d.x)));
}

fn func_2() -> f32 {
    global3 = any(!func_4(_wgslsmith_mod_u32(u_input.b, u_input.a) | 34280u, Struct_1(_wgslsmith_f_op_f32(func_3(Struct_3(u_input.c, true), Struct_2(Struct_1(237f, u_input.c, false, vec2<f32>(-1438f, -2758f), vec3<bool>(true, false, false)), vec4<f32>(-514f, -678f, 1207f, -787f)))), abs(u_input.c), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1607f, -587f), vec2<f32>(-1000f, 785f), false)), vec3<bool>(true, true, true))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-326f, -883f) - _wgslsmith_f_op_f32(239f - -1100f)))), vec4<i32>(2147483647i, abs(5012i), u_input.d.x, -u_input.c.x), select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, 50236u), vec3<u32>(u_input.b, 4294967295u, u_input.b)) <= _wgslsmith_sub_u32(u_input.a, 5029u), all(vec3<bool>(true, true, false)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1108f, 564f))))), !select(func_4(1u, Struct_1(-804f, vec4<i32>(1i, -1i, -1i, -1i), false, vec2<f32>(-620f, 773f), vec3<bool>(false, true, false))).zyw, vec3<bool>(true, true, true), false)), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-507f))), -1038f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1000f)), 681f))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.a.d.x - _wgslsmith_f_op_f32(f32(-1f) * -1963f)), select(select(var_0.a.b, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2457i, u_input.e.x, var_0.a.b.x, -20884i), vec4<i32>(14102i, -13351i, -33733i, var_0.a.b.x)), var_0.a.b, u_input.c), !var_0.a.e.x), u_input.c, vec4<bool>(_wgslsmith_div_i32(var_0.a.b.x, var_0.a.b.x) >= -u_input.d.x, !(!var_0.a.e.x), var_0.a.c, true)), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1744f, var_0.b.x), var_0.b.yw))))), func_4(0u >> (~u_input.a % 32u), Struct_1(_wgslsmith_f_op_f32(step(-597f, _wgslsmith_f_op_f32(f32(-1f) * -568f))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, var_0.a.b.x, u_input.d.x, u_input.d.x), _wgslsmith_add_vec4_i32(u_input.c, var_0.a.b), abs(var_0.a.b)), var_0.a.e.x, vec2<f32>(var_0.a.d.x, _wgslsmith_f_op_f32(trunc(var_0.a.a))), func_4(1u, global0[_wgslsmith_index_u32(11303u << (u_input.a % 32u), 4u)]).ywz)).zyx);
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 71237u), vec3<u32>(u_input.b, 45217u, 1u) | vec3<u32>(1u, 75262u, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 51600u), max(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(u_input.b, 18020u, u_input.b)))), 4u)], _wgslsmith_f_op_vec4_f32(-var_0.b));
    global3 = var_0.a.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - 1058f)) + _wgslsmith_f_op_f32(584f * 1746f)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: u32) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 4u)];
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), abs(vec4<i32>(arg_2, -(arg_2 & var_0.b.x), 1i, min(-52678i, -var_0.b.x))), var_0.e.x, vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - -517f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(990f))))), !(!var_0.e));
    let var_1 = Struct_2(Struct_1(-1000f, var_0.b | _wgslsmith_sub_vec4_i32(min(var_0.b, u_input.c), abs(var_0.b)), true & !all(vec2<bool>(var_0.c, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -540f)), var_0.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) + var_0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(683f)), _wgslsmith_f_op_f32(abs(arg_1.x)))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(floor(-1271f))), _wgslsmith_f_op_f32(f32(-1f) * -1267f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_1.x, var_0.a, -277f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, -1788f, var_0.d.x) * vec4<f32>(arg_1.x, var_0.d.x, -757f, 1308f)), all(vec2<bool>(true, var_0.c)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1492f, -1782f, 726f)), func_4(u_input.b, global0[_wgslsmith_index_u32(~1u, 4u)]).x))));
    let var_2 = 82489u;
    let var_3 = 1498f;
    return Struct_3(select(u_input.c, vec4<i32>(~arg_2, u_input.c.x, ~select(arg_2, 35611i, var_0.e.x), _wgslsmith_div_i32(var_0.b.x, _wgslsmith_clamp_i32(var_0.b.x, u_input.d.x, -44747i))), true), !(!(true && all(vec4<bool>(var_1.a.c, true, false, true)))));
}

fn func_5(arg_0: Struct_3) -> i32 {
    global3 = all(vec2<bool>(arg_0.b, any(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), arg_0.b)) | true));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-957f * -500f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2595f))))) + 580f);
    let var_1 = global0[_wgslsmith_index_u32(1u, 4u)];
    global1 = ~select(arg_0.a.x, firstTrailingBit(abs(1i) << (u_input.b % 32u)), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 266f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-306f)) - _wgslsmith_f_op_f32(floor(473f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1087f - var_1.d.x), _wgslsmith_f_op_f32(max(1048f, var_1.a)), _wgslsmith_f_op_f32(-var_0)))));
    return firstLeadingBit(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    global3 = false;
    global4 = array<vec2<bool>, 6>();
    global3 = !(false && !select(false, false, false)) | true;
    var var_0 = Struct_3(vec4<i32>(_wgslsmith_dot_vec4_i32(-u_input.c, u_input.c), -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(25773i, -8992i, 2147483647i, u_input.c.x)), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), _wgslsmith_div_i32(12099i, func_5(func_1(vec4<u32>(5677u, 46732u, u_input.a, 48148u), vec4<f32>(-1452f, -636f, -1726f, -774f), 15065i, u_input.b))), i32(-1i) * -26703i), !(true && (53107i >= u_input.e.x)));
    global3 = !any(select(vec4<bool>(var_0.b, true, var_0.b, true), !select(vec4<bool>(var_0.b, true, var_0.b, true), vec4<bool>(false, true, false, var_0.b), vec4<bool>(var_0.b, var_0.b, false, var_0.b)), vec4<bool>(!var_0.b, var_0.b, var_0.b, !var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-955f, -512f, var_0.b))), -402f) - _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1000f, 194f))))))), ~u_input.a, max(vec3<i32>(u_input.c.x, countOneBits(-2147483647i), i32(-1i) * -19609i), u_input.d));
}

