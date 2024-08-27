struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 26809u;

var<private> global1: bool = true;

var<private> global2: array<bool, 5>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<u32>) -> f32 {
    var var_0 = u_input.b.x;
    global2 = array<bool, 5>();
    global0 = arg_2.x;
    var_0 = ~1u;
    var var_1 = Struct_2(u_input.c.x, _wgslsmith_add_vec2_i32(vec2<i32>(0i, -1i), u_input.a.xy));
    return _wgslsmith_f_op_f32(floor(-1620f));
}

fn func_2() -> vec4<bool> {
    global1 = any(!(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 5u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 5u)], global2[_wgslsmith_index_u32(u_input.b.x, 5u)])))));
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1871f, 2050f, -968f) - vec3<f32>(-1056f, -1000f, 109f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(51328u, 5u)], vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 5u)]), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x)))) - _wgslsmith_f_op_f32(var_1.x + var_1.x)), var_1.x, var_1.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(func_3(true, vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c.x, 0u, var_0.x), vec4<u32>(70973u, 42234u, 55392u, 1u)))))));
    global0 = 4294967295u;
    return vec4<bool>(!(!((global2[_wgslsmith_index_u32(39775u, 5u)] & global2[_wgslsmith_index_u32(var_0.x, 5u)]) == (true & global2[_wgslsmith_index_u32(u_input.b.x, 5u)]))), global2[_wgslsmith_index_u32(min(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(22180u, 4294967295u), vec2<u32>(44302u, 1u)), 1699u), 16078u), 5u)], false, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.c.x, u_input.b.x, 24451u) ^ vec4<u32>(1u, 85298u, 0u, 12414u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c.x, var_0.x, 0u), vec4<u32>(38932u, 80352u, 47197u, u_input.b.x))) <= reverseBits(_wgslsmith_mod_u32(u_input.c.x, firstTrailingBit(u_input.c.x))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global1 = false;
    let var_0 = select(!func_2(), select(!(!select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(28148u, 5u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b.x, 5u)], false), false)), vec4<bool>(true, _wgslsmith_f_op_f32(select(1225f, -1352f, true)) <= _wgslsmith_f_op_f32(f32(-1f) * -1326f), !global2[_wgslsmith_index_u32(u_input.c.x, 5u)] || true, -u_input.a.x > (u_input.a.x | u_input.a.x)), vec4<bool>(!all(vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(arg_0, 5u)])), !global2[_wgslsmith_index_u32(u_input.c.x, 5u)] || false, select(func_2().x, !global2[_wgslsmith_index_u32(0u, 5u)], arg_0 == u_input.c.x), true)), vec4<bool>(false | ((true & global2[_wgslsmith_index_u32(0u, 5u)]) | global2[_wgslsmith_index_u32(~arg_0, 5u)]), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, ~abs(arg_0)), 5u)], global2[_wgslsmith_index_u32(u_input.c.x, 5u)], !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.c.yz, countOneBits(vec2<u32>(15777u, arg_0))), 5u)]));
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c.x, arg_0), ~firstLeadingBit(countOneBits(u_input.b.yz)) >> (u_input.c.yx % vec2<u32>(32u)));
    let var_1 = true;
    global1 = global2[_wgslsmith_index_u32(min(77087u, u_input.b.x), 5u)];
    return Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u & _wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.zz), u_input.c.x, ~arg_0, abs(~21711u)), vec4<u32>(_wgslsmith_mult_u32(~u_input.b.x, firstLeadingBit(7278u)), ~(u_input.c.x & 0u), 4294967295u, _wgslsmith_add_u32(arg_0, arg_0 & 0u))), abs(~(u_input.a.xy << (vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u)))) ^ countOneBits(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a.x, 7243i), min(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.a.x, u_input.a.x)))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(max(u_input.a.x, -(arg_1 | arg_1)), vec2<bool>(any(select(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 5u)]), vec2<bool>(global2[_wgslsmith_index_u32(arg_2.a, 5u)], global2[_wgslsmith_index_u32(u_input.b.x, 5u)]), false)), global2[_wgslsmith_index_u32(arg_2.a, 5u)]), max(-countOneBits(u_input.a.zy), func_1(arg_2.a).b), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 1u, 4294967295u, arg_2.a), ~vec4<u32>(arg_2.a, 4294967295u, 44217u, u_input.c.x)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1182f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(681f, -553f)))), !(!(false & global2[_wgslsmith_index_u32(40963u, 5u)]) | false), Struct_2(min(~4737u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), 10633u >> (0u % 32u))), u_input.a.yy), Struct_1(-2147483647i, !select(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 5u)]), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 5u)], false), false), vec2<i32>(u_input.a.x, arg_1), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 50816u, 52151u, 1u), abs(~vec4<u32>(55737u, 0u, arg_2.a, u_input.c.x)), select(vec4<u32>(7374u, 0u, arg_2.a, arg_2.a), vec4<u32>(arg_2.a, 1u, arg_2.a, 0u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, arg_2.a), 5u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1150f, -782f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1212f, -1088f)), true)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-242f, 1963f))))));
    global0 = reverseBits(_wgslsmith_dot_vec3_u32(countOneBits(u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(80984u, _wgslsmith_div_u32(u_input.b.x, u_input.c.x), max(22135u, 1u)), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(39208u, 45463u)), _wgslsmith_mult_u32(0u, 4294967295u), ~69475u))));
    global0 = 4294967295u;
    global2 = array<bool, 5>();
    let var_1 = Struct_3(Struct_1(_wgslsmith_clamp_i32(-2147483647i, -1i, arg_2.b.x), vec2<bool>(false, true), vec2<i32>(~abs(-1i), arg_0), select(var_0.d.d, ~min(var_0.d.d, vec4<u32>(var_0.c.a, var_0.c.a, 15632u, 1u)), vec4<bool>(true, select(global2[_wgslsmith_index_u32(1u, 5u)], var_0.b, false), global2[_wgslsmith_index_u32(reverseBits(4294967295u), 5u)], !var_0.d.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.e.x, -743f))))), !global2[_wgslsmith_index_u32(arg_2.a >> (func_1(max(21788u, 38475u)).a % 32u), 5u)], arg_2, Struct_1(-abs(abs(2147483647i)), !vec2<bool>(1007f <= var_0.a.e.x, var_0.b), arg_2.b, ~(~var_0.a.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.e + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, 1635f))))));
    return Struct_3(var_0.d, select(_wgslsmith_mod_i32(reverseBits(-14282i), func_1(var_0.d.d.x).b.x) >= arg_2.b.x, !(_wgslsmith_f_op_f32(-var_0.a.e.x) < _wgslsmith_f_op_f32(2247f * var_1.d.e.x)), select(var_1.a.b.x, true, var_1.b)), Struct_2(52515u, (vec2<i32>(-22608i, var_1.a.a) ^ -var_0.c.b) ^ vec2<i32>(~(-2147483647i), ~(-1i))), var_1.a);
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_4 {
    var var_0 = _wgslsmith_div_u32(arg_1 | ~arg_1, 0u);
    global2 = array<bool, 5>();
    var var_1 = ~(-(~_wgslsmith_clamp_vec2_i32(func_4(-51349i, arg_0.a.a, arg_0.c).d.c, ~u_input.a.ww, vec2<i32>(arg_0.a.c.x, arg_0.c.b.x) << (arg_0.d.d.yy % vec2<u32>(32u)))));
    let var_2 = !arg_3.x;
    var var_3 = abs(select(~arg_0.d.d.zz, _wgslsmith_div_vec2_u32(arg_0.d.d.yw, _wgslsmith_clamp_vec2_u32(u_input.b.yy, vec2<u32>(arg_1, 12137u), u_input.c.yy)), !any(vec3<bool>(false, arg_3.x, true))) ^ ~u_input.c.zy);
    return Struct_4(~func_4(13898i, countOneBits(var_1.x), arg_0.c).a.d.wz, u_input.b.x, max(57186i, arg_2.b.x) ^ arg_2.b.x, func_1(u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(-(~u_input.a.x), min(u_input.a.x >> (27908u % 32u), ~u_input.a.x) & 335i, func_1(1u | _wgslsmith_mult_u32(49454u, u_input.c.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.c.yy, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(4294967295u, u_input.b.x)), vec2<u32>(46143u, 52855u))), ~(~u_input.c.xx)), func_1(u_input.c.x), !(!(!select(vec3<bool>(global2[_wgslsmith_index_u32(66685u, 5u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(38384u, 5u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 5u)]), true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)), _wgslsmith_div_f32(-717f, -1000f), 1f, func_4(var_0.c, var_0.d.b.x, var_0.d).a.e.x))));
    let var_2 = -_wgslsmith_add_i32(2147483647i, reverseBits(-6090i & u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.a.x, max(-min(-18001i, var_0.c), -_wgslsmith_div_i32(-2147483647i, var_0.c))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, firstLeadingBit(4294967295u), u_input.b.x), vec4<u32>(0u ^ u_input.c.x, func_5(Struct_3(Struct_1(-2147483647i, vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 5u)]), var_0.d.b, vec4<u32>(1u, 52175u, var_0.d.a, var_0.d.a), vec2<f32>(425f, -582f)), global2[_wgslsmith_index_u32(0u, 5u)], var_0.d, Struct_1(var_0.c, vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 5u)], true), u_input.a.ww, vec4<u32>(u_input.c.x, var_0.d.a, var_0.a.x, 4294967295u), var_1.zz)), u_input.c.x, var_0.d, vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(u_input.b.x, 5u)], global2[_wgslsmith_index_u32(u_input.b.x, 5u)])).d.a, ~1u, var_0.a.x)), ~_wgslsmith_mult_u32(var_0.d.a, _wgslsmith_clamp_u32(35059u, 64680u, 4294967295u)), select(16278u, u_input.b.x, all(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 5u)])))), ~(~(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, var_0.a.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(51951u, 51643u, var_0.a.x, 11073u), vec4<u32>(u_input.b.x, 87070u, var_0.d.a, 113548u)) % vec4<u32>(32u)))), reverseBits(u_input.a));
}

