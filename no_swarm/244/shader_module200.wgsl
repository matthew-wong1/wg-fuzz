struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22>;

var<private> global1: Struct_3 = Struct_3(i32(-2147483648), vec2<bool>(true, true), 2147483647i, Struct_2(vec3<u32>(66048u, 0u, 55240u), Struct_1(0i, vec4<f32>(-696f, 1831f, -464f, -579f), 4294967295u, true), vec2<f32>(-704f, 908f)), 1245f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = global1.d.b.b.x;
    let var_1 = ~(~arg_0.d.a.yx);
    global0 = array<vec3<f32>, 22>();
    var var_2 = arg_2.b;
    var_2 = Struct_1(countOneBits(var_2.a), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_2.b.x, _wgslsmith_f_op_f32(449f - arg_2.c.x), arg_0.d.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x * arg_0.e)))), global1.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.c.x))), arg_0.e), -608f), ~25794u, any(!vec2<bool>(global1.d.b.d && var_2.d, global1.d.b.d)));
    return arg_0.d;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_3) -> f32 {
    var var_0 = 130f;
    var var_1 = !(!vec3<bool>(!global1.b.x && (arg_3.d.b.d || true), !(!global1.b.x), true));
    let var_2 = Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-12322i, global1.a)), vec2<i32>(global1.a, global1.c)), -vec2<i32>(1i, arg_3.d.b.a) >> (max(vec2<u32>(u_input.e, u_input.e), arg_3.d.a.yy) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, arg_3.a), abs(vec2<i32>(arg_3.c, arg_3.d.b.a)), vec2<i32>(-1388i, global1.a)) | _wgslsmith_mult_vec2_i32(-vec2<i32>(global1.c, -2147483647i), min(vec2<i32>(-27917i, global1.d.b.a), vec2<i32>(26573i, u_input.c)))), !select(!global1.b, vec2<bool>(global1.d.b.d, true), select(u_input.e, 4294967295u, false) <= (20624u >> (arg_3.d.a.x % 32u))), global1.a, func_2(Struct_3(u_input.c, select(!arg_3.b, select(arg_3.b, vec2<bool>(global1.b.x, false), vec2<bool>(true, arg_3.b.x)), true), 35488i, Struct_2(func_2(Struct_3(9547i, vec2<bool>(false, global1.b.x), global1.d.b.a, arg_3.d, arg_1.x), global1.c, arg_3.d, arg_3.b).a, Struct_1(-15720i, arg_3.d.b.b, 14261u, global1.d.b.d), arg_0), _wgslsmith_f_op_f32(abs(arg_1.x))), arg_3.c, func_2(arg_3, 0i, Struct_2(firstLeadingBit(vec3<u32>(global1.d.b.c, 1u, u_input.e)), global1.d.b, _wgslsmith_f_op_vec2_f32(-arg_1)), select(vec2<bool>(true, arg_3.b.x), select(global1.b, arg_3.b, var_1.yy), !arg_3.b)), vec2<bool>(var_1.x, !all(vec2<bool>(arg_3.b.x, arg_3.b.x)))), _wgslsmith_f_op_f32(-1484f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_0.x))))));
    let var_3 = Struct_3(0i, global1.b, 1i, func_2(arg_3, -34325i, arg_3.d, select(select(select(vec2<bool>(false, true), global1.b, var_2.b.x), !var_1.zz, select(vec2<bool>(global1.b.x, arg_3.b.x), vec2<bool>(false, false), arg_3.b)), global1.b, global1.d.b.d)), 1130f);
    var var_4 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1096f * arg_0.x), -1000f))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    global1 = Struct_3(i32(-1i) * -_wgslsmith_add_i32(global1.a, -u_input.c), !global1.b, ~_wgslsmith_mult_i32(global1.a, i32(-1i) * -arg_2.x), Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.e, 35691u) ^ ~vec3<u32>(4294967295u, global1.d.b.c, u_input.e), _wgslsmith_div_vec3_u32(vec3<u32>(35668u, global1.d.a.x, 1u) | vec3<u32>(global1.d.b.c, 106701u, 0u), abs(vec3<u32>(global1.d.a.x, global1.d.a.x, u_input.e)))), Struct_1(-u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(707f, global1.e, global1.d.b.b.x, arg_0) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(792f, arg_0, global1.e, -273f))), ~_wgslsmith_sub_u32(global1.d.a.x, 3982u), global1.d.b.d), _wgslsmith_div_vec2_f32(global1.d.c, global1.d.b.b.yz)), arg_0);
    global1 = Struct_3(-41638i, !(!select(select(global1.b, global1.b, false), global1.b, false)), 25004i, Struct_2(max(~(~global1.d.a), global1.d.a), Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(-28144i, -25585i), _wgslsmith_div_i32(global1.c, global1.d.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2496f, arg_3, arg_1, 724f)), abs(0u), all(!vec2<bool>(global1.b.x, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1819f, arg_3)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(global1.d.b.b.x - arg_1)))), _wgslsmith_f_op_f32(floor(arg_3)));
    global1 = Struct_3(arg_2.x, global1.b, countOneBits(-arg_2.x), Struct_2(global1.d.a, global1.d.b, global1.d.c), global1.d.c.x);
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.e, min(abs(30456u), _wgslsmith_dot_vec3_u32(global1.d.a, global1.d.a))), ~(~_wgslsmith_mult_u32(4294967295u, global1.d.b.c))), ~u_input.e), 22u)];
    let var_1 = var_0.x;
    return Struct_1(_wgslsmith_add_i32(-54039i, _wgslsmith_sub_i32(u_input.d, 2147483647i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1298f) * _wgslsmith_div_f32(arg_0, -1736f)), arg_1, -2099f, _wgslsmith_f_op_f32(select(1162f, -857f, !(global1.d.b.d & true)))), u_input.e, any(select(select(select(vec4<bool>(global1.b.x, false, global1.b.x, global1.d.b.d), vec4<bool>(global1.d.b.d, true, true, false), false), select(vec4<bool>(global1.d.b.d, global1.d.b.d, global1.b.x, true), vec4<bool>(global1.b.x, false, global1.b.x, true), global1.b.x), select(vec4<bool>(global1.d.b.d, true, true, false), vec4<bool>(global1.d.b.d, true, global1.d.b.d, true), vec4<bool>(true, global1.b.x, false, global1.d.b.d))), select(vec4<bool>(global1.d.b.d, false, true, true), vec4<bool>(global1.d.b.d, true, true, global1.b.x), vec4<bool>(global1.b.x, false, false, true)), true)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = false;
    global1 = Struct_3(~reverseBits(global1.c), select(select(!select(vec2<bool>(true, global1.b.x), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(all(vec4<bool>(false, false, arg_1.d, global1.d.b.d)), arg_1.c == 8479u), true), !(!arg_3.b.b), (_wgslsmith_div_f32(global1.e, global1.e) == _wgslsmith_f_op_f32(func_3(arg_3.b.d.c, arg_2.xy, -179f, Struct_3(0i, vec2<bool>(global1.b.x, arg_3.b.d.b.d), u_input.a, global1.d, 1281f)))) || all(vec4<bool>(global1.b.x, arg_3.b.b.x, global1.d.b.d, false))), reverseBits(global1.c), func_2(arg_3.b, firstLeadingBit(~_wgslsmith_sub_i32(arg_0.x, arg_0.x)), arg_3.b.d, !select(vec2<bool>(false, false), select(arg_3.b.b, arg_3.b.b, global1.b.x), vec2<bool>(global1.d.b.d, false))), arg_1.b.x);
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(0i, firstLeadingBit(select(min(18924i, global1.a), arg_1.a, true)), arg_3.b.c), 1i, ~func_2(Struct_3(~(-41556i), select(vec2<bool>(arg_1.d, true), global1.b, arg_3.b.b), ~arg_3.b.c, Struct_2(vec3<u32>(0u, 4294967295u, arg_1.c), Struct_1(arg_1.a, vec4<f32>(arg_3.b.e, 140f, arg_3.b.e, -991f), 14629u, arg_1.d), vec2<f32>(global1.d.c.x, -598f)), _wgslsmith_f_op_f32(step(arg_1.b.x, arg_2.x))), _wgslsmith_div_i32(arg_1.a, 0i), Struct_2(~arg_3.b.d.a, arg_3.b.d.b, _wgslsmith_f_op_vec2_f32(arg_2.xx - arg_2.xx)), select(!vec2<bool>(false, global1.d.b.d), select(vec2<bool>(false, arg_3.b.b.x), vec2<bool>(global1.d.b.d, true), global1.b), global1.b)).b.a, arg_3.b.c);
    let var_2 = arg_3.b.d;
    var_1 = _wgslsmith_mult_vec4_i32((vec4<i32>(firstTrailingBit(arg_3.b.c), i32(-1i) * -1i, arg_1.a, arg_1.a) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 1u, 0u, 59917u), vec4<u32>(4294967295u, 0u, 4294967295u, arg_3.a) & vec4<u32>(global1.d.b.c, arg_1.c, 4294967295u, 48881u), vec4<u32>(43883u, 30430u, 32102u, global1.d.a.x)) % vec4<u32>(32u))) << (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(94541u, arg_1.c, var_2.a.x, var_2.b.c) << (vec4<u32>(var_2.b.c, u_input.e, arg_1.c, u_input.e) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a, 25441u, global1.d.a.x, 4294967295u), vec4<u32>(4294967295u, 83391u, var_2.a.x, 1u)))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(-(vec4<i32>(-48035i, 0i, -1i, 13499i) >> (~vec4<u32>(u_input.e, u_input.e, 0u, 1u) % vec4<u32>(32u))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.xz, var_1.zy), arg_3.b.c, _wgslsmith_dot_vec2_i32(vec2<i32>(36557i, u_input.d), var_1.yw), -47332i)));
    return Struct_3(-23480i, select(select(arg_3.b.b, select(vec2<bool>(true, arg_1.d), select(arg_3.b.b, vec2<bool>(false, false), false), false), !(arg_3.b.d.b.d || true)), !vec2<bool>(func_4(-211f, -878f, vec3<i32>(global1.d.b.a, 2147483647i, arg_0.x), arg_2.x).d, true), select(vec2<bool>(true && global1.d.b.d, arg_3.b.b.x), select(!arg_3.b.b, !vec2<bool>(var_2.b.d, global1.d.b.d), true), true)), -select(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(-4550i, 20199i, 0i)), -_wgslsmith_sub_i32(arg_1.a, u_input.b), false), func_2(arg_3.b, -_wgslsmith_div_i32(~global1.a, u_input.a), Struct_2(var_2.a, global1.d.b, arg_2.yx), !select(arg_3.b.b, arg_3.b.b, arg_3.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1691f * _wgslsmith_f_op_f32(var_2.c.x - -1590f)) - _wgslsmith_div_f32(var_2.b.b.x, _wgslsmith_f_op_f32(-arg_3.b.d.b.b.x))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> vec3<u32> {
    global1 = func_5(-vec2<i32>(-u_input.c, ~arg_0.d.b.a), func_4(-1023f, _wgslsmith_f_op_f32(func_3(vec2<f32>(-714f, _wgslsmith_f_op_f32(-1000f * -1425f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-329f, global1.e)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-690f, arg_1.b.d.c.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f)))), Struct_3(-10245i, global1.b, abs(arg_1.b.a), func_2(Struct_3(u_input.b, vec2<bool>(arg_0.b.x, true), 4391i, arg_1.b.d, -1953f), -35217i, arg_1.b.d, vec2<bool>(arg_1.b.b.x, arg_1.b.d.b.d)), _wgslsmith_f_op_f32(267f * global1.d.c.x)))), _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0.c, arg_0.a, arg_1.b.a), select(vec3<i32>(-2147483647i, arg_1.b.d.b.a, arg_0.d.b.a) ^ vec3<i32>(-1i, arg_1.b.d.b.a, 21633i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -7246i, 1i), vec3<i32>(-12502i, -5790i, global1.c), vec3<i32>(arg_1.b.a, -12453i, arg_0.a)), any(arg_0.b))), global1.e), vec3<f32>(_wgslsmith_f_op_f32(111f + func_4(-2303f, _wgslsmith_f_op_f32(func_3(arg_1.b.d.b.b.zx, arg_0.d.c, 338f, arg_1.b)), vec3<i32>(9592i, u_input.b, global1.a), -915f).b.x), arg_0.d.c.x, 574f), Struct_4(1u, arg_1.b));
    return ~((vec3<u32>(1u, arg_0.d.b.c, _wgslsmith_add_u32(u_input.e, 43483u)) ^ arg_1.b.d.a) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.d.b.c, 0u, 17894u), func_5(vec2<i32>(arg_1.b.c, arg_0.d.b.a), Struct_1(9050i, arg_0.d.b.b, global1.d.a.x, false), global1.d.b.b.xwz, Struct_4(8722u, Struct_3(-1i, vec2<bool>(true, true), -2147483647i, arg_0.d, arg_0.d.b.b.x))).d.a, global1.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 22>();
    var var_0 = global1.d;
    let var_1 = all(vec3<bool>(_wgslsmith_mod_i32(~(-10307i), -1i) < u_input.d, false, true));
    let var_2 = var_0.b.d;
    global0 = array<vec3<f32>, 22>();
    var_0 = Struct_2(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 29389u, 3740u), func_1(Struct_3(2147483647i, vec2<bool>(var_0.b.d, var_0.b.d), 1i, global1.d, global1.d.c.x), Struct_4(u_input.e, Struct_3(-1i, global1.b, 0i, global1.d, global1.e)))), ~u_input.e, ~_wgslsmith_dot_vec2_u32(~global1.d.a.zz, vec2<u32>(global1.d.a.x, var_0.b.c))), var_0.b, func_5(~vec2<i32>(var_0.b.a, var_0.b.a), Struct_1(-46481i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b.b * vec4<f32>(global1.e, -1292f, 1310f, -1324f)) * global1.d.b.b), var_0.b.c, all(vec2<bool>(false, false)) && true), vec3<f32>(-925f, _wgslsmith_f_op_f32(-956f * -576f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b.x * 323f) * _wgslsmith_f_op_f32(global1.d.b.b.x - global1.e))), Struct_4(func_4(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(exp2(var_0.c.x)), ~vec3<i32>(global1.c, u_input.a, u_input.c), _wgslsmith_f_op_f32(var_0.c.x - global1.e)).c, Struct_3(7235i, select(vec2<bool>(true, var_0.b.d), vec2<bool>(var_0.b.d, var_0.b.d), var_1), abs(var_0.b.a), func_5(vec2<i32>(u_input.d, global1.d.b.a), Struct_1(u_input.c, vec4<f32>(-669f, -242f, global1.d.c.x, var_0.b.b.x), 1u, false), global0[_wgslsmith_index_u32(35752u, 22u)], Struct_4(var_0.a.x, Struct_3(10666i, global1.b, 37481i, Struct_2(var_0.a, var_0.b, global1.d.c), -233f))).d, _wgslsmith_f_op_f32(global1.e * var_0.c.x)))).d.b.b.zx);
    global0 = array<vec3<f32>, 22>();
    global0 = array<vec3<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(global1.d.a.yz, abs(~vec2<u32>(20269u, 0u))), select(global1.d.a.zz, _wgslsmith_mult_vec2_u32(~select(vec2<u32>(27676u, 1u), vec2<u32>(0u, var_0.b.c), vec2<bool>(true, global1.b.x)), vec2<u32>(0u, u_input.e)), vec2<bool>(any(vec3<bool>(false, global1.b.x, global1.d.b.d)) | true, true)));
}

