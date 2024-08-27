struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

var<private> global2: array<vec4<i32>, 4>;

var<private> global3: f32;

var<private> global4: array<f32, 21> = array<f32, 21>(606f, 390f, -136f, -782f, 1755f, -1000f, -762f, 762f, -1016f, 499f, -1452f, 710f, -559f, -597f, -520f, 531f, -155f, 3240f, -1140f, 847f, 788f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    global1 = global0.c.a;
    let var_0 = Struct_1(arg_0.c.a.a, _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(122521u, u_input.a)), global1.b) ^ vec2<u32>(global0.a.b.x, global1.b.x), !all(select(vec2<bool>(true, global1.c), select(vec2<bool>(true, arg_0.c.b.c), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, global0.a.c), vec2<bool>(false, true), vec2<bool>(global1.c, global1.c)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-102f, arg_0.b.a.d)))), global0.c.a.d, firstTrailingBit(~0i) <= 447i)));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -2028f);
    global1 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, global1.a.x), vec2<i32>(2147483647i, var_0.a.x)), -arg_0.c.b.a.yy), vec2<i32>(~global0.b.b.a.x, -1471i)), global0.b.a.a.x, -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.a.a.xw, -vec2<i32>(arg_0.b.a.a.x, arg_0.a.a.x)), vec2<i32>(global0.b.c.x, -14116i ^ var_0.a.x))), ~(~(~(global1.b ^ vec2<u32>(0u, var_0.b.x)))), (-arg_0.a.a.x >= (_wgslsmith_clamp_i32(-2147483647i, arg_0.a.a.x, u_input.b.x) & 1i)) || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - var_0.d) + _wgslsmith_f_op_f32(var_0.d - 1797f)) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.d)))), _wgslsmith_f_op_f32(var_0.d - var_0.d));
    var var_1 = Struct_4(true);
    return countOneBits(_wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, _wgslsmith_clamp_u32(0u, 84u, var_0.b.x), var_0.b.x, firstTrailingBit(4294967295u)), vec4<u32>(0u, global1.b.x, 4294967295u, global1.b.x) ^ vec4<u32>(var_0.b.x, var_0.b.x, arg_0.c.e.x, arg_0.b.e.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_1.a, arg_0.b.b.c, arg_0.a.c, var_0.c), vec4<bool>(false, global1.c, global1.c, global0.a.c), vec4<bool>(global1.c, true, var_0.c, true)), vec4<bool>(false, var_1.a, false, arg_0.b.b.c))), vec4<u32>(80876u | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 19849u, 32910u), vec3<u32>(global1.b.x, 1u, arg_0.d.x)), global0.c.b.b.x, ~1u, u_input.a)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_3(Struct_1(vec4<i32>(-3546i, ~(~21179i), _wgslsmith_div_i32(global0.a.a.x, max(-26504i, global1.a.x)), 6331i), global1.b, (i32(-1i) * -2147483647i) == global1.a.x, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(u_input.a, 9619u)), ~global0.d.x), 21u)]), Struct_2(Struct_1(vec4<i32>(56869i, _wgslsmith_mult_i32(global1.a.x, u_input.b.x), -71156i, ~(-2147483647i)), vec2<u32>(u_input.a, 4294967295u) << (reverseBits(vec2<u32>(17690u, 4294967295u)) % vec2<u32>(32u)), select(global0.a.c, !global1.c, !global1.c), _wgslsmith_f_op_f32(-global1.d)), Struct_1(vec4<i32>(~5249i, -34600i, global1.a.x, -global0.a.a.x), vec2<u32>(global0.a.b.x, _wgslsmith_mod_u32(u_input.a, u_input.a)), global0.b.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(94916u, 21u)]))), global0.b.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.d), global0.a.d, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.b.x, 45220u), 21u)]) + vec3<f32>(_wgslsmith_f_op_f32(global1.d - global1.d), _wgslsmith_f_op_f32(1452f - global0.a.d), _wgslsmith_f_op_f32(551f * -1634f))), ~(~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(global1.c, false)))), global0.b, global0.e, _wgslsmith_add_vec4_u32(min(func_3(Struct_3(global0.b.a, Struct_2(Struct_1(global1.a, vec2<u32>(global1.b.x, global1.b.x), global0.b.b.c, 119f), global0.a, vec3<i32>(2147483647i, -8444i, 1i), vec3<f32>(-363f, global4[_wgslsmith_index_u32(1u, 21u)], global0.b.b.d), vec2<u32>(global0.a.b.x, 21317u)), global0.b, global0.e, vec4<u32>(global1.b.x, 0u, 286u, 0u))), global0.d), select(global0.d, ~max(vec4<u32>(global1.b.x, global1.b.x, global1.b.x, u_input.a), vec4<u32>(u_input.a, 4294967295u, 83546u, global0.b.b.b.x)), !vec4<bool>(global1.c, false, true, global0.b.b.c))));
    var var_0 = vec4<i32>(firstTrailingBit(u_input.b.x), global0.a.a.x, ~(-32932i), _wgslsmith_dot_vec2_i32(max(vec2<i32>(-global1.a.x, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(global0.b.b.a.x, 3477i), vec2<i32>(global1.a.x, u_input.b.x)) << (reverseBits(vec2<u32>(14591u, global1.b.x)) % vec2<u32>(32u))), vec2<i32>(abs(global0.a.a.x), u_input.b.x)));
    let var_1 = global0.b;
    var var_2 = any(select(vec2<bool>(max(var_1.a.b.x, var_1.e.x) > 37806u, any(vec3<bool>(false, true, var_1.b.c)) && false), !(!vec2<bool>(global0.b.a.c, var_1.b.c)), any(vec4<bool>(all(vec4<bool>(var_1.a.c, true, var_1.a.c, var_1.a.c)), 1i == var_1.b.a.x, global0.a.c || true, global0.b.b.c))));
    global0 = Struct_3(var_1.a, Struct_2(Struct_1(var_1.a.a, _wgslsmith_clamp_vec2_u32(var_1.e, _wgslsmith_mod_vec2_u32(global0.d.zy, vec2<u32>(global0.d.x, 0u)), abs(var_1.a.b)), all(vec4<bool>(false, true, global0.a.c, false)), _wgslsmith_f_op_f32(var_1.b.d * _wgslsmith_f_op_f32(1384f + global4[_wgslsmith_index_u32(u_input.a, 21u)]))), global0.c.a, vec3<i32>(global1.a.x, -abs(global0.b.c.x), (global1.a.x & global1.a.x) | (2147483647i | global0.b.b.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.d), _wgslsmith_f_op_vec3_f32(var_1.d * _wgslsmith_f_op_vec3_f32(select(global0.b.d, var_1.d, global1.c)))), ~_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, u_input.a), vec2<u32>(43714u, global1.b.x) | vec2<u32>(global0.b.a.b.x, 6368u))), global0.c, _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(u_input.a, var_1.b.b.x, 35096u, 0u)), firstLeadingBit(abs(countOneBits(global0.d)))), _wgslsmith_div_vec4_u32(global0.d, vec4<u32>(global0.b.b.b.x, 56779u, global0.a.b.x, 27556u) & ~vec4<u32>(1u, global1.b.x, u_input.a, 1u)) << (_wgslsmith_mult_vec4_u32(~global0.d, ~countOneBits(vec4<u32>(var_1.e.x, 3802u, global1.b.x, 1u))) % vec4<u32>(32u)));
    return Struct_1(abs(vec4<i32>(0i, var_0.x, -global0.a.a.x, ~global1.a.x)) << (select(min(global0.e, _wgslsmith_clamp_vec4_u32(vec4<u32>(3359u, var_1.a.b.x, u_input.a, global1.b.x), vec4<u32>(u_input.a, 79791u, 7520u, 54391u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))), ~max(global0.e, global0.e), vec4<bool>(false, global1.c, var_1.b.c, all(vec3<bool>(global1.c, true, false)))) % vec4<u32>(32u)), _wgslsmith_div_vec2_u32(global1.b, (~global1.b >> (~vec2<u32>(u_input.a, var_1.b.b.x) % vec2<u32>(32u))) | vec2<u32>(global1.b.x, 103382u)), !(!any(vec4<bool>(var_1.b.c, global0.a.c, global1.c, var_1.a.c))) & global0.b.b.c, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.e.x, ~76115u), 21u)]));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = global0.b;
    global1 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, arg_0.b.x), 4u)], countOneBits(firstLeadingBit(~(~global0.b.e))), true, _wgslsmith_f_op_f32(trunc(-428f)));
    global2 = array<vec4<i32>, 4>();
    let var_1 = global1.c;
    var var_2 = !vec2<bool>(true, arg_0.c);
    return func_2();
}

fn func_1(arg_0: f32) -> vec2<f32> {
    global1 = global0.c.b;
    var var_0 = 15849u;
    global4 = array<f32, 21>();
    global0 = Struct_3(func_4(func_2(), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, 1u, 22732u) ^ vec3<u32>(1u, 1u, 35393u), vec3<u32>(global1.b.x, 43363u, global1.b.x) & vec3<u32>(global0.a.b.x, 77736u, global0.b.e.x)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(21916u, u_input.a), global0.a.b)))), Struct_2(global0.a, Struct_1(-global0.a.a, firstLeadingBit(global1.b) >> ((global0.c.e & global0.a.b) % vec2<u32>(32u)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.d)) - _wgslsmith_f_op_f32(min(arg_0, 1416f)))), -firstLeadingBit(global1.a.zwy) ^ vec3<i32>(~1i, _wgslsmith_sub_i32(0i, u_input.b.x), global0.a.a.x & -1i), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, 1035f, arg_0) - global0.b.d), _wgslsmith_f_op_vec3_f32(min(global0.b.d, vec3<f32>(-1326f, -261f, global0.c.b.d))), global1.c || global0.a.c)))), reverseBits(firstTrailingBit(global1.b))), Struct_2(Struct_1(global1.a, select(vec2<u32>(1u, 8895u) ^ global1.b, func_4(Struct_1(global0.c.a.a, vec2<u32>(46455u, 0u), false, -862f), u_input.a).b, any(vec2<bool>(global0.c.a.c, global0.a.c))), true, global0.b.b.d), global0.c.b, _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(2147483647i, -1i, global1.a.x)), global1.a.wzy, global1.a.yyw), global0.b.d, vec2<u32>(~min(u_input.a, 1u), firstTrailingBit(_wgslsmith_div_u32(global0.c.e.x, global1.b.x)))), global0.e, vec4<u32>(global0.e.x, ~firstTrailingBit(u_input.a & u_input.a), global1.b.x, 1u));
    var var_1 = select(~0u > ~func_4(func_2(), _wgslsmith_div_u32(global1.b.x, global1.b.x)).b.x, func_4(Struct_1(global0.a.a, global0.a.b, global0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * global1.d))), 0u).c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global0.e.x, 21u)] - 807f)))) <= _wgslsmith_f_op_f32(-global1.d));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global0.c.d.xz, _wgslsmith_f_op_vec2_f32(-global0.c.d.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.a.d, global1.d))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.c.a;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(global1.d * 1024f))))));
    global4 = array<f32, 21>();
    global4 = array<f32, 21>();
    let var_1 = func_4(Struct_1(abs(~reverseBits(vec4<i32>(-94461i, -2147483647i, global1.a.x, 11811i))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(11360u, 0u), vec2<u32>(4294967295u, 58757u), vec2<u32>(u_input.a, 1u)) | global0.d.xz, ~vec2<u32>(4294967295u, 16159u)), func_2().c, _wgslsmith_f_op_f32(-186f * -1193f)), ~(~global0.d.x));
    var var_2 = abs(_wgslsmith_add_i32(var_1.a.x, -_wgslsmith_mult_i32(global1.a.x, 1i))) != ~func_4(func_4(func_2(), _wgslsmith_sub_u32(global1.b.x, var_1.b.x)), 1u).a.x;
    var var_3 = u_input.a;
    let var_4 = Struct_3(global0.b.b, Struct_2(Struct_1(~global0.b.a.a, vec2<u32>(~0u, _wgslsmith_add_u32(0u, global0.b.b.b.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(global4[_wgslsmith_index_u32(global1.b.x, 21u)])).x)), var_1, select(vec3<i32>(-u_input.b.x, 2147483647i, u_input.b.x), var_1.a.zyx, !(global1.c && false)), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, -215f, any(vec3<bool>(global0.a.c, global0.b.a.c, false)))), func_4(Struct_1(var_1.a, vec2<u32>(var_1.b.x, 7595u), global1.c, global0.c.d.x), 1u).d, 1046f), vec2<u32>(~global0.c.e.x, ~min(u_input.a, 4294967295u))), global0.c, ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(global0.e.ywy, global0.e.xxx), reverseBits(1u), abs(global0.e.x), func_3(Struct_3(var_1, global0.b, Struct_2(Struct_1(global0.b.a.a, global0.d.yy, false, -221f), var_1, vec3<i32>(-30367i, 2147483647i, 8034i), vec3<f32>(1170f, global1.d, 196f), global0.b.a.b), global0.e, global0.e)).x)), global0.e & vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global0.b.b.b, vec2<u32>(43219u, global1.b.x)), _wgslsmith_mult_vec2_u32(global0.b.b.b, vec2<u32>(4294967295u, u_input.a))), _wgslsmith_div_u32(4294967295u, 1u), ~var_1.b.x, func_4(global0.c.a, 41781u).b.x >> (select(global0.a.b.x, u_input.a, false) % 32u)));
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f * global1.d)), _wgslsmith_f_op_f32(max(global0.b.b.d, _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(4294967295u, 21u)]))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(170f, var_1.d, 1059f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-164f, -376f, var_0.x), vec3<f32>(global1.d, -1104f, 1973f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(var_4.c.d)))), !(!vec3<bool>(true, var_1.c, var_4.b.a.c)))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(var_1.a.zx, vec2<i32>(var_1.a.x, u_input.b.x)), _wgslsmith_mult_vec2_i32(abs(global1.a.xx), global0.a.a.ww)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(min(var_1.a.x, -2147483647i), _wgslsmith_dot_vec4_i32(var_1.a, global1.a)), -(global1.a.x << (var_4.b.a.b.x % 32u)))), ~_wgslsmith_mult_vec3_u32(var_4.e.yxy & var_4.d.wyy, ~firstTrailingBit(var_4.e.zxx)), (~(u_input.a >> (global0.b.a.b.x % 32u)) >> (u_input.a % 32u)) ^ u_input.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1705f + -436f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d - global4[_wgslsmith_index_u32(var_1.b.x, 21u)]), _wgslsmith_f_op_vec2_f32(func_1(1689f)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f))), _wgslsmith_f_op_f32(-global0.a.d)));
}

