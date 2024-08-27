struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec4<f32>(1043f, 1035f, 1000f, -351f), Struct_1(1591i, 0u), Struct_1(-1i, 3947u), -43931i));

var<private> global1: Struct_1;

var<private> global2: u32 = 40778u;

var<private> global3: Struct_1 = Struct_1(-1i, 38215u);

var<private> global4: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = all(vec2<bool>(any(vec2<bool>(true, true)), !(u_input.a.x != max(u_input.a.x, -2147483647i))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 441f, -1000f, 1011f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-249f, -344f, 1253f, -1000f))))))), Struct_1(_wgslsmith_mod_i32(u_input.a.x >> (arg_0 % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 0i, -11098i), vec4<i32>(global3.a, -10387i, global3.a, -21843i)) & _wgslsmith_mod_i32(19338i, -1i)), ~global1.b), Struct_1(_wgslsmith_add_i32(u_input.a.x, 21484i), ~113897u), reverseBits(2147483647i));
    global0 = array<Struct_2, 1>();
    let var_2 = var_1;
    var_0 = !(!all(vec3<bool>(var_2.b.b != 41731u, true, true)));
    return min(firstTrailingBit(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_sub_i32(-841i, global3.a))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, 29970i, global1.a), _wgslsmith_sub_vec3_i32(vec3<i32>(-6130i, 19518i, 43587i), vec3<i32>(1i, -6360i, -1i))), 13831i)) | (u_input.a.x >> ((1u >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3.b), vec2<u32>(0u, 6642u)) % 32u)) % 32u));
}

fn func_4(arg_0: i32) -> i32 {
    var var_0 = vec3<i32>(-6045i, ~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-25665i, global1.a, arg_0), select(~29817i, arg_0 >> (118842u % 32u), true), reverseBits(u_input.a.x) | -14167i), _wgslsmith_dot_vec4_i32(vec4<i32>(~(global1.a ^ 24560i), max(-17299i, -6135i) << (_wgslsmith_add_u32(global1.b, 9935u) % 32u), 49984i, global3.a), max(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.a, -2147483647i, global3.a, -2147483647i), vec4<i32>(global1.a, -3907i, 0i, global1.a)), vec4<i32>(global1.a, u_input.a.x, -1i, u_input.a.x) << (vec4<u32>(global3.b, 0u, global1.b, global3.b) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-24028i, -23524i, -12979i, global1.a), vec4<i32>(u_input.a.x, 1i, arg_0, global3.a))), ~(-vec4<i32>(global3.a, u_input.a.x, arg_0, global3.a)))));
    global1 = Struct_1(global3.a, global1.b);
    var var_1 = var_0.x;
    var_1 = (var_0.x | (_wgslsmith_add_i32(i32(-1i) * -57539i, -var_0.x) | -global3.a)) ^ -55322i;
    let var_2 = Struct_1(1i | _wgslsmith_add_i32(~2147483647i, u_input.a.x), 4294967295u);
    return (global3.a >> (firstLeadingBit(1u) % 32u)) ^ _wgslsmith_add_i32(var_0.x, global3.a);
}

fn func_2() -> Struct_2 {
    let var_0 = !(!all(vec3<bool>(true, true, true)));
    global1 = Struct_1(~(-7731i), 39435u);
    let var_1 = func_4(_wgslsmith_clamp_i32(~2147483647i, 46680i, -global1.a) ^ func_3(abs(~global3.b)));
    let var_2 = -1403f;
    let var_3 = all(vec2<bool>(var_0, true));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1206f, 1000f, 649f, -137f), vec4<f32>(-810f, -584f, -697f, -392f))), vec4<f32>(_wgslsmith_f_op_f32(-var_2), -1768f, -976f, var_2), vec4<bool>(var_0, select(var_0, var_0, var_0), var_0, any(vec4<bool>(var_3, true, var_3, var_3)))))), Struct_1(_wgslsmith_add_i32(2147483647i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global1.a, u_input.a.x), vec3<i32>(-134i, var_1, 1i)))), 4294967295u), Struct_1(-(~0i) << (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(global3.b), ~18367u), select(vec2<u32>(global1.b, 36127u), vec2<u32>(0u, 66571u), var_3))), i32(-1i) * -firstTrailingBit(0i));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    return Struct_1(global3.a, arg_1.c.b << (arg_0.b.b % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_1.x;
    let var_1 = -1746f;
    global1 = func_5(func_2(), global0[_wgslsmith_index_u32(0u | (firstLeadingBit(0u) & ~(~global3.b)), 1u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1)), var_1), ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(71052u, arg_3.b), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.b, arg_2.b), vec3<u32>(arg_0.b, 1u, arg_3.b))), countOneBits(abs(arg_3.b))));
    var var_2 = Struct_1(-(-31182i >> (_wgslsmith_sub_u32(0u, 0u) % 32u)), arg_2.b);
    global1 = func_5(func_2(), global0[_wgslsmith_index_u32(var_2.b, 1u)], -456f, _wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(arg_2.b, 0u)), ~vec2<u32>(global1.b, _wgslsmith_mult_u32(6479u, global3.b)), vec2<u32>(global1.b, arg_2.b)));
    return -1i;
}

fn func_6(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    return Struct_1(~func_4(-19328i), ~func_5(Struct_2(_wgslsmith_f_op_vec4_f32(max(arg_2.a, vec4<f32>(arg_2.a.x, arg_2.a.x, 1000f, arg_2.a.x))), arg_2.c, func_2().b, abs(arg_2.c.a)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, -1808f, arg_2.a.x, arg_2.a.x)), func_2().b, func_2().c, _wgslsmith_mod_i32(global3.a, global1.a)), _wgslsmith_f_op_f32(ceil(arg_2.a.x)), abs(vec2<u32>(global3.b, arg_2.c.b) ^ vec2<u32>(global1.b, arg_2.b.b))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(reverseBits(reverseBits(countOneBits(vec3<u32>(0u, 46487u, global1.b)))), vec3<u32>(global3.b, 61101u, ~_wgslsmith_div_u32(global3.b, global3.b))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(~56025u, global1.b), 0u, ~(~4294967295u) >> (global3.b % 32u))), 1u)];
    var var_1 = !(!vec2<bool>(true, !any(vec4<bool>(false, false, false, true))));
    global1 = func_6(select(u_input.a, u_input.a, !(!(!vec2<bool>(true, var_1.x)))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.a, func_1(Struct_1(0i, var_0.b.b), vec4<i32>(global1.a, 18984i, -1i, 1i) << (vec4<u32>(1u, global1.b, 8616u, global1.b) % vec4<u32>(32u)), Struct_1(2147483647i, global1.b), var_0.b), -func_5(global0[_wgslsmith_index_u32(71831u, 1u)], global0[_wgslsmith_index_u32(global3.b, 1u)], -479f, vec2<u32>(4294967295u, global3.b)).a, u_input.a.x), countOneBits(vec4<i32>(-global3.a, u_input.a.x, _wgslsmith_div_i32(global1.a, 0i), -global1.a))), Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -935f, var_0.a.x, var_0.a.x))))), var_0.c, func_2().c, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global1.a, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(37882i, -17408i, global3.a), vec3<i32>(32195i, global3.a, 2147483647i)), 18574i, var_0.b.a), -(vec4<i32>(var_0.d, global1.a, 0i, -2147483647i) << (vec4<u32>(global1.b, 35913u, 17449u, var_0.b.b) % vec4<u32>(32u))))));
    var_1 = select(select(select(select(vec2<bool>(false, var_1.x), select(vec2<bool>(var_1.x, false), vec2<bool>(false, false), vec2<bool>(true, var_1.x)), var_1.x), select(!vec2<bool>(var_1.x, true), select(vec2<bool>(false, true), vec2<bool>(var_1.x, var_1.x), false), select(vec2<bool>(false, true), vec2<bool>(var_1.x, var_1.x), var_1.x)), all(!vec3<bool>(var_1.x, true, false))), select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), true), vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, var_1.x), vec2<bool>(false, true))))), vec2<bool>(var_1.x, any(select(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, false, var_1.x), var_1.x), vec3<bool>(true, var_1.x, true), vec3<bool>(true, true, true)))), vec2<bool>(all(vec2<bool>(any(vec4<bool>(var_1.x, var_1.x, true, true)), any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), (-2147483647i > global3.a) & var_1.x));
    global4 = _wgslsmith_add_i32(0i, ~min(-35212i, 41100i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -779f)) * _wgslsmith_f_op_f32(-func_2().a.x)), -438f), -(~(vec4<i32>(-10467i, 1i, 46399i, var_0.c.a) >> (~vec4<u32>(global1.b, global1.b, global3.b, 1u) % vec4<u32>(32u)))), ~(~(reverseBits(vec2<u32>(var_0.b.b, global3.b)) >> (firstTrailingBit(vec2<u32>(global3.b, 57534u)) % vec2<u32>(32u)))));
}

