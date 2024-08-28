struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 25005u), vec2<u32>(27557u, 0u), vec2<u32>(20952u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(10207u, 4294967295u), vec2<u32>(29921u, 6895u), vec2<u32>(27064u, 30446u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(0u, 0u), vec2<u32>(35083u, 1u), vec2<u32>(51450u, 33585u), vec2<u32>(3777u, 1u));

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<i32>(11635i, 2147483647i), false), Struct_1(vec2<i32>(-1i, 15054i), false), Struct_1(vec2<i32>(-1i, 1i), false), Struct_1(vec2<i32>(-37398i, 0i), false), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), false), Struct_1(vec2<i32>(39833i, -1i), true), Struct_1(vec2<i32>(1i, i32(-2147483648)), true), Struct_1(vec2<i32>(1i, -1i), true), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), false), Struct_1(vec2<i32>(5545i, -1i), false), Struct_1(vec2<i32>(-52211i, 62273i), false), Struct_1(vec2<i32>(-1i, -23089i), true), Struct_1(vec2<i32>(58928i, -18434i), false), Struct_1(vec2<i32>(9246i, -47792i), true), Struct_1(vec2<i32>(48497i, -1i), true), Struct_1(vec2<i32>(i32(-2147483648), 8712i), false), Struct_1(vec2<i32>(13423i, -4290i), true), Struct_1(vec2<i32>(0i, 0i), false), Struct_1(vec2<i32>(1i, -17944i), false), Struct_1(vec2<i32>(2147483647i, 25750i), true), Struct_1(vec2<i32>(-1i, -85090i), true), Struct_1(vec2<i32>(-18324i, 14724i), true), Struct_1(vec2<i32>(2147483647i, 2147483647i), false), Struct_1(vec2<i32>(2147483647i, -21473i), true), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), true));

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(-54538i, i32(-2147483648)), false), Struct_1(vec2<i32>(-10579i, 2147483647i), false), Struct_1(vec2<i32>(1i, 41466i), true), Struct_1(vec2<i32>(50126i, -1i), true), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), true), Struct_1(vec2<i32>(-49813i, 1i), true), Struct_1(vec2<i32>(-30076i, 24756i), true), Struct_1(vec2<i32>(-1i, 8947i), false), Struct_1(vec2<i32>(-61693i, -1i), true), Struct_1(vec2<i32>(29393i, -1i), false), Struct_1(vec2<i32>(-2007i, 2147483647i), false), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), false), Struct_1(vec2<i32>(0i, 0i), false), Struct_1(vec2<i32>(-1i, -67947i), true), Struct_1(vec2<i32>(-57742i, -11148i), true), Struct_1(vec2<i32>(2147483647i, -6913i), false), Struct_1(vec2<i32>(1i, 11336i), true), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), false), Struct_1(vec2<i32>(28461i, 1i), false), Struct_1(vec2<i32>(-11040i, -4376i), true), Struct_1(vec2<i32>(1i, -9825i), true), Struct_1(vec2<i32>(-33434i, -1i), false), Struct_1(vec2<i32>(9703i, 2147483647i), false), Struct_1(vec2<i32>(-1i, 2147483647i), false), Struct_1(vec2<i32>(2147483647i, -7412i), false), Struct_1(vec2<i32>(75743i, 0i), false), Struct_1(vec2<i32>(2147483647i, -18309i), false), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), false), Struct_1(vec2<i32>(i32(-2147483648), 50800i), false), Struct_1(vec2<i32>(5929i, -101387i), true), Struct_1(vec2<i32>(0i, 1i), false), Struct_1(vec2<i32>(1i, 2147483647i), false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<i32> {
    global0 = array<Struct_1, 7>();
    global1 = select(arg_0.yx, select(vec2<bool>(false, false), vec2<bool>(!any(arg_0), arg_0.x), vec2<bool>(arg_0.x | true, !global1.x)), select(!select(!arg_0.yz, vec2<bool>(false, global1.x), vec2<bool>(global1.x, true)), vec2<bool>(true, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 66923u, 63445u, 1u)) >= u_input.a.x), select(select(arg_0.yz, !arg_0.xz, global1.x), arg_0.xz, all(vec4<bool>(false, global1.x, true, true)))));
    var var_0 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(min(vec2<u32>(4294967295u, 68383u), u_input.a.yy), global2[_wgslsmith_index_u32(~47697u, 18u)]), vec2<u32>(66416u, u_input.a.x) << (vec2<u32>(0u, 5732u) % vec2<u32>(32u))), u_input.a.x)), 25u)];
    var var_1 = 13582u;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-(i32(-1i) * -var_0.a.x), -2147483647i, _wgslsmith_add_i32(firstTrailingBit(-var_0.a.x), var_0.a.x), var_0.a.x), vec4<i32>(~(-var_0.a.x), ~(-5264i), 1i, abs(_wgslsmith_mod_i32(var_0.a.x, var_0.a.x))) & vec4<i32>(-32468i, var_0.a.x, var_0.a.x ^ 53338i, firstLeadingBit(2147483647i)));
    return _wgslsmith_clamp_vec4_i32(min(((vec4<i32>(var_0.a.x, var_0.a.x, 2147483647i, 2147483647i) >> (u_input.a % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-29859i, var_2, 1i, var_0.a.x), vec4<i32>(40403i, var_2, -12292i, var_0.a.x))) ^ ~(~vec4<i32>(8687i, var_0.a.x, -2147483647i, var_2)), firstLeadingBit(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 29463i, -38596i, var_2), vec4<i32>(var_0.a.x, 1i, var_2, var_0.a.x))))), -(~vec4<i32>(_wgslsmith_add_i32(-23318i, var_2), abs(var_0.a.x), _wgslsmith_div_i32(var_0.a.x, -18469i), var_2 >> (u_input.a.x % 32u))), vec4<i32>(firstLeadingBit(-var_2) >> (~u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(var_0.a >> (abs(u_input.a.zy) % vec2<u32>(32u)), abs(vec2<i32>(-25462i, var_0.a.x))), _wgslsmith_mod_i32(1i, -_wgslsmith_clamp_i32(21434i, -21048i, -6495i)), var_2));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 0i << (arg_1 % 32u)), _wgslsmith_mod_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, arg_2.x), arg_2.wz), reverseBits(~vec2<i32>(arg_0.x, arg_2.x)))), true);
    var var_1 = ~arg_1;
    global4 = array<Struct_1, 32>();
    var var_2 = global4[_wgslsmith_index_u32(u_input.a.x, 32u)];
    global2 = array<vec2<u32>, 18>();
    return _wgslsmith_f_op_f32(205f * _wgslsmith_f_op_f32(ceil(-260f)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> vec2<bool> {
    let var_0 = select(vec2<bool>(true, global1.x), !vec2<bool>(global1.x, ~arg_1.a.x != (arg_1.a.x | -45015i)), arg_1.b);
    var var_1 = all(select(vec4<bool>(arg_1.b, any(select(vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(arg_1.b, global1.x, false), vec3<bool>(true, true, false))), !var_0.x, true), vec4<bool>(any(!vec2<bool>(global1.x, true)), arg_1.b, true == !arg_1.b, all(select(vec3<bool>(global1.x, arg_1.b, global1.x), vec3<bool>(false, global1.x, false), vec3<bool>(arg_1.b, global1.x, true)))), select(vec4<bool>(arg_1.b, !global1.x, select(var_0.x, true, global1.x), true), vec4<bool>(u_input.a.x == 1u, global1.x, any(vec3<bool>(arg_1.b, true, true)), true | var_0.x), select(select(vec4<bool>(true, arg_1.b, var_0.x, global1.x), vec4<bool>(false, arg_1.b, true, true), global1.x), !vec4<bool>(global1.x, false, false, false), !vec4<bool>(global1.x, arg_1.b, global1.x, false)))));
    let var_2 = select(!(!vec4<bool>(arg_1.b | false, any(vec4<bool>(var_0.x, var_0.x, true, arg_1.b)), global1.x, all(vec4<bool>(false, true, global1.x, var_0.x)))), !(!(!select(vec4<bool>(global1.x, false, false, arg_1.b), vec4<bool>(global1.x, var_0.x, global1.x, true), vec4<bool>(global1.x, arg_1.b, global1.x, false)))), true);
    let var_3 = global3[_wgslsmith_index_u32(arg_3, 25u)];
    var var_4 = Struct_1(-((-vec2<i32>(arg_1.a.x, arg_1.a.x) ^ vec2<i32>(var_3.a.x, arg_1.a.x)) ^ vec2<i32>(_wgslsmith_mult_i32(1i, var_3.a.x), _wgslsmith_mod_i32(var_3.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(func_4(vec4<i32>(-1i, arg_1.a.x & var_3.a.x, _wgslsmith_sub_i32(2147483647i, 46421i), abs(1i)), firstLeadingBit(0u), min(abs(vec4<i32>(0i, 2147483647i, var_3.a.x, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.x, -2147483647i, arg_1.a.x, 13023i), vec4<i32>(1i, -20846i, arg_1.a.x, -11347i))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<i32>(arg_1.a.x, var_3.a.x, arg_1.a.x, arg_1.a.x), 0u, vec4<i32>(var_3.a.x, -42861i, 12606i, -1i))))));
    return var_2.xw;
}

fn func_2() -> vec2<i32> {
    global1 = select(vec2<bool>(!all(vec4<bool>(false, false, false, true)), true), func_5(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1497f, -306f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-295f - 818f), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1165f, -1498f, false)) + _wgslsmith_f_op_f32(step(622f, -1370f))), _wgslsmith_f_op_f32(func_4(func_3(vec3<bool>(global1.x, global1.x, false)), u_input.a.x, abs(vec4<i32>(-22340i, 17916i, 1i, -1i))))), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(867u | u_input.a.x, 35447u), 32u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(691f, 700f, 172f))), ~_wgslsmith_div_u32(4294967295u, u_input.a.x) << (~70732u % 32u)), vec2<bool>(global1.x, !global1.x));
    let var_0 = ~u_input.a.x;
    var var_1 = reverseBits(u_input.a.zzy);
    global4 = array<Struct_1, 32>();
    global2 = array<vec2<u32>, 18>();
    return min(-(~(-vec2<i32>(-1i, 0i))), select(_wgslsmith_mod_vec2_i32(vec2<i32>(-23524i, abs(2147483647i)), firstTrailingBit(vec2<i32>(1i, 1i))), vec2<i32>(~(-1i), _wgslsmith_mod_i32(i32(-1i) * -1i, ~(-2147483647i))), vec2<bool>(true, true)));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    var var_1 = 5520u;
    var var_2 = vec3<bool>(false, !global1.x & !(global1.x & !global1.x), true);
    global1 = !select(vec2<bool>(true, var_2.x), vec2<bool>(all(!vec3<bool>(global1.x, false, true)), !(!var_2.x)), var_2.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(167f * 1f) - -240f));
    return _wgslsmith_f_op_f32(func_4(vec4<i32>(select(-(-31140i | var_0.x), var_0.x, select(true, var_2.x, true) | true), select(var_0.x, 23080i, var_2.x), var_0.x, 2147483647i), _wgslsmith_dot_vec3_u32(u_input.a.yxx, u_input.a.xww), -vec4<i32>(var_0.x, firstTrailingBit(15086i & var_0.x), var_0.x, i32(-1i) * -17764i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(-(58894i << (u_input.a.x % 32u)) > (_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -10849i, 0i), vec3<i32>(-11875i, -2147483647i, -801i)), 24355i) >> (_wgslsmith_add_u32(u_input.a.x | u_input.a.x, countOneBits(u_input.a.x)) % 32u)), true, all(!(!vec4<bool>(global1.x, false, true, global1.x))), true);
    let var_1 = firstLeadingBit((40234i << (~u_input.a.x % 32u)) & 2147483647i);
    let var_2 = vec2<i32>(firstLeadingBit(var_1), var_1);
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1274f, 1348f, 1882f)) * vec3<f32>(-2182f, _wgslsmith_f_op_f32(floor(405f)), _wgslsmith_f_op_f32(func_1()))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(232f, -1185f, -119f), vec3<f32>(-990f, -933f, 765f))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-534f, -637f, 1089f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-461f, 1069f, 1014f) * vec3<f32>(477f, 230f, 216f))))))));
    global0 = array<Struct_1, 7>();
    var var_4 = var_3.x;
    var var_5 = vec3<i32>(var_1, 2147483647i, ~(~(var_2.x | -2147483647i) ^ -reverseBits(-11659i)));
    var_0 = !(!(!vec4<bool>(var_3.x >= 1537f, true, global1.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(362f, 816f, var_3.x, -1223f) + vec4<f32>(-418f, -192f, var_3.x, 490f))) * vec4<f32>(_wgslsmith_f_op_f32(func_1()), -1004f, -149f, 234f)))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(min(vec4<i32>(34041i, var_2.x, var_2.x, 62905i), -vec4<i32>(var_2.x, 0i, var_5.x, -19879i)), firstLeadingBit(vec4<i32>(var_5.x, -2147483647i, var_5.x, 18476i))), vec4<i32>(func_3(vec3<bool>(var_0.x, false, false)).x, ~var_1, _wgslsmith_mod_i32(-64838i, countOneBits(24099i)), 9861i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.zz * vec2<f32>(var_3.x, -875f)) + _wgslsmith_f_op_vec2_f32(-var_3.zz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.yy - _wgslsmith_f_op_vec2_f32(select(var_3.xx, vec2<f32>(801f, var_3.x), var_0.yx)))), true)));
}

