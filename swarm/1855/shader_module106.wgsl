struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_2, 10>;

var<private> global3: Struct_4 = Struct_4(12838u, Struct_3(vec4<f32>(-1000f, -618f, -530f, 741f), vec2<u32>(0u, 23189u), false, vec4<u32>(29329u, 23819u, 55022u, 1u)), Struct_1(vec2<f32>(1028f, 225f)), -396f);

var<private> global4: vec3<f32> = vec3<f32>(1268f, 1417f, -398f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = global4.x;
    global2 = array<Struct_2, 10>();
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.b.d.x, 1u) | _wgslsmith_sub_u32(~7208u, 0u), 29u)];
    global3 = Struct_4(select(global3.a, 0u, all(!(!vec2<bool>(global3.b.c, true)))), arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a.x, global4.x), vec2<f32>(global4.x, -263f))) + global3.c.a) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global4.xx, vec2<f32>(arg_0.a.x, 1000f), vec2<bool>(arg_0.c, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, global3.c.a.x) - vec2<f32>(global4.x, global4.x))))), _wgslsmith_f_op_f32(f32(-1f) * -2199f));
    var var_1 = global3.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    var var_0 = !vec4<bool>(global3.b.c, !(true | global3.b.c), global3.b.c, all(select(!vec4<bool>(arg_0, false, false, true), !vec4<bool>(false, false, arg_0, global3.b.c), false)));
    var var_1 = Struct_1(global3.b.a.wy);
    global4 = global3.b.a.zzz;
    var_1 = global3.c;
    var var_2 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(122f, _wgslsmith_f_op_f32(global3.c.a.x - -542f), var_1.a.x, _wgslsmith_f_op_f32(global4.x * 1000f)) - vec4<f32>(_wgslsmith_f_op_f32(sign(global4.x)), 1f, arg_1, _wgslsmith_f_op_f32(sign(209f)))), global3.b.a), ~u_input.c.xz, !global3.b.c, min(~(~global3.b.d), global3.b.d));
    return var_2.a.x;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = select(vec3<bool>(true, any(!(!arg_0)), all(select(select(vec2<bool>(false, true), arg_0, arg_0), arg_0, true))), select(vec3<bool>(any(vec2<bool>(global3.b.c, true)), true, true), vec3<bool>(false, _wgslsmith_f_op_f32(step(-1213f, -1461f)) <= _wgslsmith_f_op_f32(abs(global3.c.a.x)), arg_0.x), vec3<bool>(_wgslsmith_f_op_f32(round(1162f)) == -1533f, true, arg_0.x)), _wgslsmith_mult_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)]), 0u) > ~(~54458u));
    let var_1 = 27051i;
    global3 = Struct_4(global3.b.d.x, global3.b, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(468f, 807f))), global4.x);
    global4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(true, _wgslsmith_f_op_f32(func_3(Struct_3(global3.b.a, vec2<u32>(u_input.a, u_input.c.x), global3.b.c, global3.b.d))), vec3<i32>(-2147483647i, 1i, -1i) ^ vec3<i32>(var_1, var_1, var_1), -33187i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f * global4.x)), all(vec2<bool>(global3.b.c, global3.b.c))))), -997f, _wgslsmith_f_op_f32(step(1090f, -290f)));
    var var_2 = ~(~(~abs(~4294967295u)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -647f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-global4.x)))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    global4 = vec3<f32>(_wgslsmith_f_op_f32(func_2(select(!(!vec2<bool>(global3.b.c, global3.b.c)), select(select(vec2<bool>(false, global3.b.c), vec2<bool>(global3.b.c, true), false), select(vec2<bool>(false, false), vec2<bool>(true, global3.b.c), vec2<bool>(false, false)), false), !global3.b.c))), global3.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.b.a.x))) * _wgslsmith_f_op_f32(global3.b.a.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.x + global3.b.a.x), _wgslsmith_f_op_f32(min(270f, global4.x)))))));
    let var_0 = arg_0.x;
    return Struct_4(~global3.b.d.x, Struct_3(vec4<f32>(_wgslsmith_f_op_f32(trunc(1320f)), global3.b.a.x, -487f, global4.x), vec2<u32>(~(~4098u), ~u_input.c.x >> ((16004u << (global3.a % 32u)) % 32u)), global3.b.c, vec4<u32>(global0[_wgslsmith_index_u32(global3.a, 29u)], u_input.b.x, u_input.b.x, 86824u)), global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(all(vec3<bool>(true, false, global3.b.c)), global4.x, vec3<i32>(arg_0.x, var_0, var_0), 1i)) * _wgslsmith_f_op_f32(func_4(true, _wgslsmith_f_op_f32(func_2(vec2<bool>(global3.b.c, true))), -arg_0, -2147483647i)))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = ~vec2<i32>(-_wgslsmith_add_i32(32745i, arg_2.x), i32(-1i) * -1i) ^ arg_2.yx;
    var_0 = vec2<i32>(_wgslsmith_div_i32(arg_2.x, reverseBits(~arg_2.x)) << (_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, global3.b.b.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.c.x, u_input.a)), u_input.c) % 32u), ~(-arg_2.x));
    let var_1 = firstLeadingBit(2147483647i);
    global1 = global3.a;
    let var_2 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_0.b.b.x, _wgslsmith_div_u32(42900u, firstTrailingBit(26356u)), ~59069u, 11846u)), ~vec4<u32>(arg_0.b.d.x, 15460u, _wgslsmith_mult_u32(abs(global3.a), ~u_input.c.x), func_1(vec3<i32>(-35078i, 2465i, arg_2.x)).b.d.x >> (global0[_wgslsmith_index_u32(global3.a & arg_0.a, 29u)] % 32u)));
    return Struct_4(_wgslsmith_mult_u32(~0u << (select(1u, global3.b.b.x, true || global3.b.c) % 32u), func_1(vec3<i32>(arg_2.x, var_1, var_0.x)).b.b.x | global0[_wgslsmith_index_u32(firstTrailingBit(min(global3.a, 7291u)), 29u)]), Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.d, 139f, global4.x, global4.x)))))), u_input.b.xz, true, ~(vec4<u32>(5018u, 20970u, global3.b.b.x, arg_0.a) << (vec4<u32>(arg_0.b.b.x, 0u, arg_0.a, 18920u) % vec4<u32>(32u)))), func_1(arg_2.xyw).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1159f - arg_3.a.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.a.x + 219f), _wgslsmith_f_op_f32(sign(1081f))) * _wgslsmith_f_op_f32(-arg_3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    global1 = ~global0[_wgslsmith_index_u32(~(~4451u), 29u)];
    var var_0 = func_5(func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(max(-1i, 66851i), select(-2147483647i, -2147483647i, true), -2147483647i))), vec3<bool>(global3.b.c || true, !(!global3.b.c | (global3.b.c & true)), !(false | (u_input.a <= u_input.a))), min(min(-vec4<i32>(-2147483647i, 61027i, 0i, 1i), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2759i, 0i, -8324i, 1i), vec4<i32>(-3710i, 1i, -12683i, 30983i), vec4<i32>(5544i, 10087i, -1i, 0i)), vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, 8946i, -4011i, 52638i)), vec4<i32>(-9186i, 2147483647i, -1i, -31330i)) >> (vec4<u32>(55371u, 4560u, 23742u, _wgslsmith_sub_u32(38483u, 14153u)) % vec4<u32>(32u))), global3.c);
    var_0 = Struct_4(4294967295u, func_5(Struct_4(global3.a, Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -337f, global4.x, -842f)), vec2<u32>(26280u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30376u, 29u)], 29u)]) & var_0.b.b, global3.b.c, var_0.b.d), Struct_1(global4.zx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f) * -341f)), select(!select(vec3<bool>(var_0.b.c, var_0.b.c, global3.b.c), vec3<bool>(var_0.b.c, global3.b.c, var_0.b.c), false), vec3<bool>(select(var_0.b.c, var_0.b.c, true), any(vec4<bool>(false, global3.b.c, var_0.b.c, global3.b.c)), !global3.b.c), select(vec3<bool>(var_0.b.c, global3.b.c, global3.b.c), vec3<bool>(true, var_0.b.c, true), vec3<bool>(global3.b.c, var_0.b.c, var_0.b.c))), ~reverseBits(vec4<i32>(1i, 0i, -1i, -2147483647i)), func_1(vec3<i32>(-2656i, -2212i, abs(5980i))).c).b, func_1(~(-max(vec3<i32>(-2147483647i, 0i, -2147483647i), vec3<i32>(-1i, -33379i, -2147483647i)))).c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global4.x)), -1087f)));
    var var_1 = _wgslsmith_mod_u32(u_input.b.x, var_0.b.b.x | u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), vec2<u32>(reverseBits(func_1(vec3<i32>(-36139i, 0i, 2147483647i) << (vec3<u32>(4294967295u, var_0.a, 1u) % vec3<u32>(32u))).b.b.x), ~(~0u | global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)])), ~abs(-18584i));
}

