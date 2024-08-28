struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: array<vec4<i32>, 21>;

var<private> global2: bool;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(1u, 25u)] | _wgslsmith_dot_vec4_u32(~(~vec4<u32>(42979u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 4294967295u, 0u)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], global0[_wgslsmith_index_u32(44686u, 25u)]), vec2<u32>(20285u, 29163u)), 1u, 40897u)), vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 1i), ~firstTrailingBit(vec2<i32>(2147483647i, 7863i))), max(-8366i, abs(-2147483647i)), 43376i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1155f, -1000f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1474f, -1261f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(604f, -1180f)))), firstTrailingBit(_wgslsmith_dot_vec2_i32(-reverseBits(vec2<i32>(1i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, -16648i)) << (abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52302u, 25u)], 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)])) % vec2<u32>(32u)))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(false, false)), true, select(true, false, true)), vec3<bool>(true, true, true))));
    global1 = array<vec4<i32>, 21>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.c))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_f_op_vec2_f32(ceil(var_0.c))))))));
    var var_2 = Struct_1(abs(global0[_wgslsmith_index_u32(select(min(~17339u, 34960u >> (var_0.a % 32u)), ~abs(16562u), true), 25u)]), global1[_wgslsmith_index_u32(~select(1u, 1u, var_0.e), 21u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_1.a.x)), ~(-reverseBits(_wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(-1i, var_0.b.x, var_0.b.x, -14258i)))), var_0.e || false);
    global0 = array<u32, 25>();
    return any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, var_2.e, var_0.e), vec3<bool>(false, true, var_2.e), false), vec3<bool>(var_2.e, var_0.e, var_2.e), var_2.e)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3.a;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.b.x, -17255i, arg_2.x), ~arg_1.b.wxz), ~(~arg_1.b.wwz)), _wgslsmith_dot_vec4_i32(vec4<i32>(-32059i, min(arg_0, 0i), reverseBits(arg_2.x), arg_0 | 11153i), global1[_wgslsmith_index_u32(~65042u, 21u)])), -arg_2.x);
    let var_2 = 0i;
    var var_3 = _wgslsmith_dot_vec3_u32(reverseBits(~(~vec3<u32>(4294967295u, var_0, arg_3.a))), firstLeadingBit(vec3<u32>(~48563u, countOneBits(0u), _wgslsmith_add_u32(48908u, arg_3.a)) << ((select(vec3<u32>(arg_1.a, 32811u, 4294967295u), vec3<u32>(1u, arg_3.a, 4294967295u), vec3<bool>(arg_1.e, arg_3.e, false)) << (~vec3<u32>(arg_1.a, global0[_wgslsmith_index_u32(7302u, 25u)], arg_3.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_4 = !func_3();
    return Struct_1(max(reverseBits(74236u), 41853u), global1[_wgslsmith_index_u32(var_0, 21u)], _wgslsmith_f_op_vec2_f32(floor(arg_1.c)), ~u_input.a, arg_3.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~abs(30865u), arg_0.a, 18033u, _wgslsmith_clamp_u32(~firstLeadingBit(arg_0.a), ~_wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(arg_0.a, 25u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_0.a, 25u)], arg_0.a, 51687u) >> (vec4<u32>(arg_0.a, 1u, global0[_wgslsmith_index_u32(arg_0.a, 25u)], arg_0.a) % vec4<u32>(32u)), ~vec4<u32>(arg_0.a, 35343u, global0[_wgslsmith_index_u32(arg_0.a, 25u)], 66873u)))), ~(vec4<u32>(arg_0.a ^ 1u, ~arg_0.a, countOneBits(8584u), ~arg_0.a) | reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.a, arg_0.a), vec4<u32>(1u, 49491u, 0u, arg_0.a))))), 25u)];
    global1 = array<vec4<i32>, 21>();
    var var_1 = Struct_1((~1u | _wgslsmith_div_u32(43793u, global0[_wgslsmith_index_u32(1u, 25u)])) | 36230u, vec4<i32>(-32499i << (1u % 32u), _wgslsmith_dot_vec3_i32(arg_0.b.xww, ~arg_0.b.zxz), arg_0.d, func_2(arg_0.b.x, Struct_1(abs(99697u), -global1[_wgslsmith_index_u32(1365u, 21u)], vec2<f32>(-1000f, arg_0.c.x), 44259i, !arg_0.e), arg_0.b.xy, arg_0).d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a)), _wgslsmith_mod_i32(select(select(-16300i, u_input.a, arg_0.e), ~0i, true), 2147483647i), !(func_2(11519i, Struct_1(arg_0.a, global1[_wgslsmith_index_u32(24736u, 21u)], arg_1.a, -27527i, true), vec2<i32>(0i, arg_0.b.x) >> (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a, 25u)], 25u)], 73451u) % vec2<u32>(32u)), arg_0).c.x > _wgslsmith_f_op_f32(-arg_0.c.x)));
    let var_2 = select(firstLeadingBit(~(~96966u)), ~global0[_wgslsmith_index_u32(~1u, 25u)], var_1.e);
    global0 = array<u32, 25>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(arg_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-469f, 673f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.a))))) * vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.c.x, _wgslsmith_f_op_f32(min(var_1.c.x, arg_0.c.x)))), arg_1.a.x)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(arg_1.a - arg_1.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-603f, _wgslsmith_div_f32(1508f, -1998f))), 1300f)), arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-706f)) - var_0.a.x)));
    var var_2 = 1u;
    let var_3 = arg_0.x;
    let var_4 = func_4(func_2(firstTrailingBit(arg_0.x), Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 25u)], _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 21u)]), var_1.yx, _wgslsmith_sub_i32(u_input.a, arg_0.x), true), ~arg_0, func_2(-u_input.a, Struct_1(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(11699u, 25u)], 0u), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 21u)] ^ global1[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_vec2_f32(-var_0.a), u_input.a >> (global0[_wgslsmith_index_u32(65997u, 25u)] % 32u), any(vec2<bool>(false, false))), ~(~vec2<i32>(-52675i, -1i)), Struct_1(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16819u, 25u)], 25u)]), -vec4<i32>(2147483647i, arg_0.x, 2147483647i, -35033i), _wgslsmith_div_vec2_f32(var_1.yx, vec2<f32>(-149f, var_0.a.x)), _wgslsmith_dot_vec2_i32(arg_0, arg_0), true))), Struct_2(var_1.xz), vec4<bool>(all(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false))), all(vec3<bool>(var_3 < var_3, var_0.a.x != -1194f, true)), func_2(arg_0.x, func_2(var_3, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25517u, 25u)], 25u)], vec4<i32>(7024i, -1i, var_3, 11447i), vec2<f32>(var_1.x, var_0.a.x), 0i, true), vec2<i32>(arg_0.x, var_3) | arg_0, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 25u)], vec4<i32>(0i, u_input.a, 1i, var_3), arg_1.a, -2147483647i, false)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_3, -2147483647i) >> (vec2<u32>(global0[_wgslsmith_index_u32(1u, 25u)], 48733u) % vec2<u32>(32u)), countOneBits(arg_0)), Struct_1(global0[_wgslsmith_index_u32(1u, 25u)], -global1[_wgslsmith_index_u32(4294967295u, 21u)], func_4(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43052u, 25u)], 25u)], vec4<i32>(arg_0.x, 0i, -670i, var_3), var_0.a, 2381i, true), Struct_2(vec2<f32>(var_0.a.x, var_1.x)), vec4<bool>(true, false, true, true)).a, arg_0.x, any(vec4<bool>(false, false, false, false)))).e, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(-770f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.x - 907f)))) + -320f);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_5(-_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(arg_0, u_input.a)), func_4(func_2(1i, Struct_1(51910u, vec4<i32>(arg_0, 0i, arg_0, u_input.a), vec2<f32>(-799f, -1049f), u_input.a, false), vec2<i32>(-25862i, arg_0), Struct_1(27661u, vec4<i32>(18520i, 2147483647i, -10798i, arg_0), vec2<f32>(1305f, -340f), -33337i, false)), Struct_2(vec2<f32>(134f, -512f)), vec4<bool>(true, true, true, true)))), -1566f, 1981f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(104f, -294f, true)) + _wgslsmith_div_f32(999f, func_4(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12841u, 25u)], 25u)], 25u)], 25u)], 25u)], global1[_wgslsmith_index_u32(14814u, 21u)], vec2<f32>(110f, -818f), -33656i, false), Struct_2(vec2<f32>(-2398f, -961f)), vec4<bool>(true, true, false, true)).a.x))) - vec4<f32>(496f, -676f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1736f - -762f), -1350f)), -113f));
    var var_2 = func_4(Struct_1(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38323u, 25u)], 25u)], global0[_wgslsmith_index_u32(1u, 25u)]) >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(~0u), 25u)], 25u)], 25u)] % 32u), vec4<i32>(select(~0i, firstTrailingBit(50064i), func_2(u_input.a, Struct_1(global0[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 21u)], var_1.xw, -22221i, false), vec2<i32>(arg_0, 1i), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40689u, 25u)], 25u)], 25u)], vec4<i32>(-71758i, -1i, -2147483647i, arg_0), vec2<f32>(var_1.x, 651f), arg_0, false)).e), arg_0, u_input.a, _wgslsmith_add_i32(arg_0, -33536i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.zz, vec2<f32>(-240f, var_1.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(var_1.x, var_1.x)))), _wgslsmith_sub_i32(~36925i, _wgslsmith_clamp_i32(-1i, 2147483647i, 1i)), all(vec4<bool>(false, any(vec3<bool>(true, true, true)), true, true))), Struct_2(_wgslsmith_f_op_vec2_f32(trunc(var_1.yw))), !vec4<bool>(true, true, true, select(true, false, select(true, true, true))));
    let var_3 = func_4(Struct_1(_wgslsmith_div_u32(0u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(735u, 25u)], 25u)], 25u)], 25u)], 43420u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)]), vec3<u32>(79691u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37573u, 25u)], 25u)], 25u)], 25u)], 4294967295u)))), vec4<i32>(max(arg_0, ~u_input.a), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), 1i), 1i, -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), ~countOneBits(u_input.a), all(vec2<bool>(select(false, false, true), true))), func_4(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 25u)] ^ 0u), 25u)], 25u)], _wgslsmith_div_vec4_i32(vec4<i32>(-78270i, 15771i, 0i, u_input.a), -vec4<i32>(arg_0, -4856i, -6670i, u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(549f, var_2.a.x), vec2<f32>(-233f, 146f), false))), arg_0, false), Struct_2(func_2(u_input.a, Struct_1(1u, vec4<i32>(2147483647i, arg_0, 2147483647i, arg_0), var_2.a, u_input.a, true), vec2<i32>(arg_0, arg_0), Struct_1(global0[_wgslsmith_index_u32(6892u, 25u)], vec4<i32>(u_input.a, arg_0, 61007i, 2147483647i), vec2<f32>(var_1.x, -780f), arg_0, true)).c), vec4<bool>(false, true || (-2147483647i == u_input.a), true, (global0[_wgslsmith_index_u32(138419u, 25u)] < global0[_wgslsmith_index_u32(2311u, 25u)]) & true)), select(vec4<bool>(true, all(vec2<bool>(false, false)), true, false), vec4<bool>(func_3(), false, true, false), true));
    return func_2(u_input.a, func_2(arg_0, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u >> (_wgslsmith_clamp_u32(0u, 53040u, 0u) % 32u), 25u)], 25u)], -vec4<i32>(u_input.a, -41105i, arg_0, 72768i), _wgslsmith_f_op_vec2_f32(-var_1.yz), ~u_input.a << (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47064u, 25u)], 25u)], 1995u), 25u)] % 32u), true), _wgslsmith_clamp_vec2_i32(~firstLeadingBit(vec2<i32>(arg_0, u_input.a)), vec2<i32>(~(-38475i), _wgslsmith_div_i32(arg_0, arg_0)), reverseBits(vec2<i32>(9191i, u_input.a))), func_2(firstLeadingBit(0i), Struct_1(abs(1u), global1[_wgslsmith_index_u32(50175u, 21u)], _wgslsmith_f_op_vec2_f32(exp2(var_1.zw)), abs(1i), false), firstLeadingBit(vec2<i32>(arg_0, 1i)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 49848i), vec2<i32>(-1i, 2784i), vec2<i32>(u_input.a, 1i)), Struct_1(~4294967295u, vec4<i32>(35143i, 1i, 2147483647i, u_input.a), _wgslsmith_f_op_vec2_f32(-var_3.a), ~(-2147483647i), all(vec4<bool>(false, false, true, false))))), _wgslsmith_sub_vec2_i32(~(~(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73098u, 25u)], 25u)]) % vec2<u32>(32u)))), -vec2<i32>(18405i, u_input.a)), Struct_1(16634u, (-global1[_wgslsmith_index_u32(4294967295u, 21u)] ^ ~vec4<i32>(2147483647i, -23696i, arg_0, arg_0)) ^ countOneBits(func_2(1134i, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71771u, 25u)], 25u)], vec4<i32>(u_input.a, arg_0, -2147483647i, arg_0), vec2<f32>(var_1.x, var_2.a.x), -17415i, true), vec2<i32>(u_input.a, arg_0), Struct_1(65529u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4215u, 25u)], 21u)], vec2<f32>(var_2.a.x, var_1.x), 1i, true)).b), vec2<f32>(-1994f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.a.x)))), ~(~(-8381i)), false));
}

fn func_6(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    let var_0 = func_4(func_2(u_input.a, func_2((u_input.a << (global0[_wgslsmith_index_u32(52625u, 25u)] % 32u)) << (1u % 32u), Struct_1(~0u, max(vec4<i32>(65365i, -1i, arg_1, arg_1), global1[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, 1609f) - arg_2.c), firstLeadingBit(0i), arg_2.e | arg_3.x), vec2<i32>(1i, arg_2.b.x), func_2(1583i, arg_2, _wgslsmith_add_vec2_i32(arg_0.xy, vec2<i32>(arg_1, arg_0.x)), Struct_1(global0[_wgslsmith_index_u32(1u, 25u)], vec4<i32>(arg_2.d, arg_1, 1i, -2147483647i), vec2<f32>(-402f, arg_2.c.x), 18524i, true))), vec2<i32>(arg_0.x >> (~32444u % 32u), min(reverseBits(-1i), arg_0.x)), Struct_1(select(20155u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], !arg_2.e), ~(~arg_2.b), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c.x, arg_2.c.x), arg_2.c), ~(arg_0.x ^ 2466i), arg_2.e)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-func_2(-1i, arg_2, arg_2.b.zz, arg_2).c.x), -1594f)), vec4<bool>(true, false && (func_2(1i, Struct_1(0u, vec4<i32>(arg_1, 4830i, 1i, arg_1), vec2<f32>(-506f, arg_2.c.x), u_input.a, true), vec2<i32>(0i, -26859i), arg_2).e & (arg_2.a > arg_2.a)), all(!(!vec3<bool>(false, arg_2.e, arg_3.x))), func_1(1i).e == select(all(vec4<bool>(arg_3.x, arg_3.x, arg_2.e, arg_2.e)), select(arg_2.e, true, true), true)));
    var var_1 = var_0;
    let var_2 = max(abs(~1u), ~arg_2.a);
    let var_3 = vec2<i32>(-(~1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(~var_2 << (global0[_wgslsmith_index_u32(0u, 25u)] % 32u), 21u)], arg_2.b), -22249i));
    var_1 = func_4(Struct_1(_wgslsmith_mod_u32(~4294967295u, 122539u), arg_2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, -762f) * var_0.a)) * var_1.a), u_input.a, arg_2.e), var_0, select(!(!select(vec4<bool>(arg_2.e, false, false, false), vec4<bool>(false, arg_3.x, arg_2.e, false), arg_3.x)), !select(vec4<bool>(false, arg_3.x, false, arg_3.x), select(vec4<bool>(arg_2.e, false, true, arg_3.x), vec4<bool>(true, arg_3.x, false, arg_2.e), vec4<bool>(true, true, arg_2.e, false)), all(vec4<bool>(arg_3.x, arg_2.e, arg_3.x, arg_2.e))), -16844i == ~arg_1));
    return 491f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 25>();
    var var_0 = vec4<f32>(-471f, _wgslsmith_f_op_f32(sign(1559f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(-vec3<i32>(u_input.a, -35314i, u_input.a), ~u_input.a, func_1(u_input.a), select(vec2<bool>(false, true), vec2<bool>(true, false), true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1219f + _wgslsmith_div_f32(-1388f, -910f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -318f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1020f))) - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -883f) - _wgslsmith_f_op_f32(round(660f))))));
    var var_1 = 1u;
    global1 = array<vec4<i32>, 21>();
    let var_2 = func_3();
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.wx)))));
    let var_4 = all(vec3<bool>(func_2(~u_input.a, Struct_1(~global0[_wgslsmith_index_u32(73680u, 25u)], firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), vec2<f32>(758f, 335f), 66399i << (global0[_wgslsmith_index_u32(4294967295u, 25u)] % 32u), false), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(-2623i, -2147483647i), vec2<i32>(2147483647i, u_input.a))), func_1(36771i)).e, any(vec2<bool>(func_2(-1i, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 21u)], vec2<f32>(var_0.x, 585f), -51958i, true), vec2<i32>(u_input.a, u_input.a), Struct_1(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 21u)], var_0.yw, -1i, false)).e, true)), var_2));
    var_1 = min(abs(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34755u, 25u)] ^ 1u, 25u)], func_2(u_input.a, Struct_1(global0[_wgslsmith_index_u32(57198u, 25u)], vec4<i32>(20680i, 33770i, u_input.a, u_input.a), vec2<f32>(2532f, var_0.x), u_input.a, var_2), vec2<i32>(0i, 2147483647i), Struct_1(1590u, global1[_wgslsmith_index_u32(0u, 21u)], vec2<f32>(var_0.x, var_0.x), u_input.a, var_2)).a)), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52700u, 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 25u)]) >> (abs(~select(max(3467u, 1u), 1u, var_3.x != var_3.x)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_dot_vec4_i32(firstLeadingBit(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 21u)]), vec4<i32>(u_input.a, u_input.a, u_input.a, 86304i))) >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44177u, 25u)], 25u)], 25u)], 25u)] % 32u), _wgslsmith_f_op_vec2_f32(-var_0.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-442f * var_3.x) * -1645f)))));
}

