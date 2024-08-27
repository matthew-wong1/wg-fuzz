struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<bool>(true, true), -33971i, vec3<u32>(0u, 0u, 1u), false), Struct_1(vec2<bool>(false, false), -18834i, vec3<u32>(0u, 14269u, 0u), true));

var<private> global2: u32 = 37947u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_2(true, Struct_1(vec2<bool>(select(true, global0.a, false), false), -min(0i & u_input.d.x, -u_input.a), vec3<u32>(24247u, u_input.c >> (4294967295u % 32u), ~12122u), global0.b.a.x), _wgslsmith_f_op_f32(exp2(global0.c)), global0.b);
    var var_1 = 1028f;
    global0 = var_0;
    global1 = array<Struct_1, 2>();
    global0 = Struct_2(true, var_0.d, global0.c, global0.d);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_0.c - -1196f), global0.c, global0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, -227f, -1119f) + vec4<f32>(global0.c, 154f, -942f, var_0.c)) + vec4<f32>(-560f, global0.c, -1000f, 1028f)), !select(vec4<bool>(true, var_0.b.a.x, false, global0.b.d), vec4<bool>(var_0.d.d, false, var_0.b.d, true), vec4<bool>(false, global0.a, global0.a, global0.b.d)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(406f, -625f, _wgslsmith_f_op_f32(global0.c * -511f), -2521f) - vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.c)), _wgslsmith_f_op_f32(sign(var_0.c)), global0.c, -545f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1641f, global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, 1141f)), _wgslsmith_f_op_f32(f32(-1f) * -1035f), _wgslsmith_f_op_f32(ceil(-815f)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = any(!vec4<bool>(global0.d.d, global0.b.a.x, true, any(arg_2.d.a)));
    var var_1 = Struct_2(false, Struct_1(arg_2.d.a, 1i, vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(min(global0.d.c, vec3<u32>(1u, arg_2.b.c.x, global0.d.c.x)), vec3<u32>(u_input.c, 0u, global0.d.c.x)), global0.b.c.x), ~(65354u ^ arg_2.b.c.x) == ~(arg_2.b.c.x ^ u_input.c)), 1779f, arg_2.b);
    let var_2 = select(select(vec3<bool>(global0.a || true, !arg_2.b.d, !select(false, true, global0.b.d)), vec3<bool>(_wgslsmith_add_i32(arg_1, 2147483647i) <= -global0.d.b, all(vec3<bool>(true, true, true)), var_1.b.d), any(select(vec2<bool>(true, true), !global0.b.a, var_1.d.a))), vec3<bool>(any(!vec2<bool>(arg_2.a, global0.d.a.x)), !(false || (false | var_1.d.d)), select(global0.c > 1271f, var_1.b.d, false)), select(!(!vec3<bool>(global0.d.d, arg_2.b.a.x, arg_2.d.a.x)), !(!select(vec3<bool>(false, var_1.d.a.x, true), vec3<bool>(false, global0.b.d, global0.d.d), vec3<bool>(global0.d.d, global0.d.a.x, var_1.b.a.x))), !(!(!vec3<bool>(var_1.a, global0.d.a.x, arg_2.d.a.x)))));
    var_0 = all(select(!(!select(vec4<bool>(true, var_1.a, false, true), vec4<bool>(false, var_2.x, global0.b.d, true), false)), vec4<bool>(true, true, any(select(var_2, vec3<bool>(global0.a, true, false), arg_2.d.d)), arg_2.d.a.x), true));
    global2 = 0u;
    return Struct_2(global0.d.d, Struct_1(var_2.xx, -u_input.a, abs(firstLeadingBit(countOneBits(arg_2.d.c))), true), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(arg_2.d.a, abs(-abs(global0.b.b)), countOneBits(vec3<u32>(1u, 1u ^ global0.d.c.x, 0u)), true));
}

fn func_1() -> Struct_3 {
    let var_0 = -u_input.d.x;
    global2 = abs(u_input.c) << (firstTrailingBit(global0.d.c.x) % 32u);
    global0 = func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(vec4<f32>(-222f, -458f, 883f, -355f) - vec4<f32>(-1000f, global0.c, -127f, global0.c)), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-658f, -1000f, -1000f, -953f))))), -global0.d.b, Struct_2(global0.b.a.x, global1[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - global0.c)))), global1[_wgslsmith_index_u32(u_input.b.x, 2u)]));
    let var_1 = Struct_3(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, global0.a, any(vec3<bool>(global0.a, false, true))), select(vec3<bool>(global0.b.d, global0.b.a.x, false), select(vec3<bool>(global0.d.d, false, false), vec3<bool>(global0.b.d, global0.d.a.x, false), global0.a), global0.d.a.x)), !vec3<bool>(-1553f > global0.c, global0.a, true)), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1497f, -302f, global0.c, 522f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c, -1880f, global0.c, global0.c), vec4<f32>(-2565f, global0.c, global0.c, global0.c)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 633f, global0.c, 1171f))))), firstLeadingBit(u_input.d.x), Struct_2(global0.b.a.x, Struct_1(global0.b.a, _wgslsmith_div_i32(1i, 2147483647i), ~u_input.b, global0.b.d), _wgslsmith_f_op_f32(abs(global0.c)), global0.b)).b);
    let var_2 = Struct_3(vec3<bool>(false && !any(vec4<bool>(false, global0.a, false, global0.a)), global0.d.a.x, all(!var_1.a)), global0.b);
    return Struct_3(!select(select(vec3<bool>(true, var_2.a.x, var_1.b.a.x), vec3<bool>(global0.a, true, global0.b.d), func_3(vec4<f32>(-1919f, 306f, -1384f, 1750f), 2147483647i, Struct_2(var_2.b.d, global0.b, global0.c, Struct_1(vec2<bool>(true, false), var_0, var_1.b.c, var_1.b.d))).d.d), !var_1.a, select(vec3<bool>(global0.a, true, false), var_1.a, select(var_2.a, vec3<bool>(var_1.a.x, false, false), var_2.a.x))), func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, -230f, global0.c, global0.c) - vec4<f32>(global0.c, -1000f, -264f, global0.c)), vec4<f32>(global0.c, 709f, global0.c, global0.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-236f, global0.c, -354f, 189f) + vec4<f32>(681f, -2025f, -752f, -534f)), var_2.a.x)), -countOneBits(_wgslsmith_add_i32(1i, var_1.b.b)), Struct_2(!(var_1.a.x | true), func_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c, global0.c, -1143f, global0.c))), select(48187i, var_0, true), Struct_2(var_2.a.x, Struct_1(vec2<bool>(var_2.b.d, false), -1i, vec3<u32>(var_1.b.c.x, 27280u, global0.b.c.x), true), global0.c, Struct_1(global0.d.a, global0.d.b, vec3<u32>(var_2.b.c.x, 9968u, 116945u), true))).d, 1000f, Struct_1(vec2<bool>(var_1.b.d, global0.a), -5985i, ~var_1.b.c, var_1.a.x))).d);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = arg_0.b.b;
    var var_1 = Struct_2(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - global0.c) * _wgslsmith_f_op_f32(-global0.c)) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c)))), Struct_1(!arg_0.a.zy, -(i32(-1i) * -2147483647i), vec3<u32>(~4294967295u, 40212u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, 63131u, 4294967295u), ~0u)), any(!vec4<bool>(false, arg_1.x, false, false))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(217f)), -429f))), Struct_1(!vec2<bool>(select(arg_1.x, false, arg_0.a.x), any(vec2<bool>(arg_0.a.x, arg_1.x))), _wgslsmith_add_i32(-30644i, _wgslsmith_div_i32(~1i, _wgslsmith_sub_i32(0i, 1i))), min(~(vec3<u32>(4294967295u, u_input.b.x, 29151u) >> (vec3<u32>(arg_0.b.c.x, u_input.c, 1u) % vec3<u32>(32u))), ~arg_0.b.c >> (_wgslsmith_mod_vec3_u32(vec3<u32>(10143u, 46833u, 66496u), vec3<u32>(5432u, arg_0.b.c.x, u_input.b.x)) % vec3<u32>(32u))), !(global0.d.d & any(arg_1))));
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -3341i, global0.b.b, global0.d.b, _wgslsmith_div_i32(14930i, _wgslsmith_mult_i32(var_1.d.b, arg_0.b.b))), ~vec4<i32>(-33707i, 47821i, 2147483647i, global0.b.b) >> (~(~vec4<u32>(65316u, 0u, arg_0.b.c.x, 46726u)) % vec4<u32>(32u)), ~(~(~vec4<i32>(u_input.d.x, -40057i, global0.b.b, arg_0.b.b)))) | vec4<i32>(var_1.b.b, var_0, 0i << (firstLeadingBit(func_1().b.c.x) % 32u), global0.d.b);
    var var_3 = !(!select(!all(vec4<bool>(true, false, false, true)), false, !func_3(vec4<f32>(var_1.c, var_1.c, 645f, var_1.c), arg_0.b.b, Struct_2(var_1.d.a.x, global0.b, -831f, Struct_1(vec2<bool>(true, global0.a), 2147483647i, vec3<u32>(u_input.c, global0.b.c.x, arg_0.b.c.x), arg_0.a.x))).a));
    var_1 = func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(-var_1.c), 911f, global0.c), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(721f, 1000f, global0.c, global0.c), vec4<f32>(var_1.c, 1268f, -762f, 237f))))))), -(abs(var_0) | (select(-93556i, 1i, global0.a) << ((40201u ^ arg_0.b.c.x) % 32u))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, _wgslsmith_f_op_f32(-global0.c), -467f, -1508f)), _wgslsmith_div_i32(-31601i, 1i), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c, 616f, var_1.c, -1868f))) + vec4<f32>(var_1.c, -1810f, global0.c, 906f)), 4668i, Struct_2(true, func_1().b, _wgslsmith_f_op_f32(f32(-1f) * -1455f), Struct_1(vec2<bool>(true, true), var_2.x, vec3<u32>(1u, var_1.b.c.x, 4294967295u), arg_1.x)))));
    return Struct_3(!arg_0.a, func_3(vec4<f32>(func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-800f, var_1.c, 1135f, -472f), vec4<f32>(175f, var_1.c, var_1.c, -909f))), abs(u_input.a), Struct_2(arg_1.x, Struct_1(vec2<bool>(true, true), 0i, vec3<u32>(var_1.b.c.x, arg_0.b.c.x, 4294967295u), arg_1.x), var_1.c, global0.d)).c, 1805f, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(220f, var_1.c))), _wgslsmith_clamp_i32(~(i32(-1i) * -2147483647i), u_input.d.x, var_0), func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1694f, -211f, global0.c, global0.c) + vec4<f32>(global0.c, global0.c, global0.c, 1843f)))), firstTrailingBit(min(var_0, -35322i)), Struct_2(var_1.b.d, func_3(vec4<f32>(var_1.c, 952f, -251f, 290f), u_input.d.x, Struct_2(true, Struct_1(var_1.d.a, arg_0.b.b, vec3<u32>(var_1.b.c.x, arg_0.b.c.x, 20782u), false), 248f, var_1.b)).d, _wgslsmith_f_op_f32(var_1.c + -1000f), arg_0.b))).d);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_3(vec3<bool>(arg_2.d.d, all(!func_1().a), arg_1.b.a.x), Struct_1(func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.c, arg_2.c, 493f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_3, -854f, arg_1.c) - vec4<f32>(966f, arg_3, -366f, -213f)), vec4<bool>(false, true, true, false))), ~(~2147483647i), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-346f, arg_1.c, global0.c, global0.c)), max(-1i, 17556i), arg_1)).d.a, arg_1.b.b, reverseBits(arg_1.d.c), false));
    let var_1 = arg_3;
    var var_2 = Struct_2(all(global0.b.a), Struct_1(func_4(arg_0, vec3<bool>(false, true, func_1().b.a.x)).a.xx, (~global0.b.b >> (_wgslsmith_div_u32(arg_1.b.c.x, 4294967295u) % 32u)) >> (max(func_4(arg_0, vec3<bool>(true, false, var_0.b.d)).b.c.x, _wgslsmith_dot_vec3_u32(arg_2.d.c, global0.d.c)) % 32u), _wgslsmith_mod_vec3_u32(~(~arg_2.d.c), ~_wgslsmith_mult_vec3_u32(global0.d.c, vec3<u32>(29700u, 51948u, 1u))), all(!select(vec4<bool>(var_0.b.d, true, arg_1.b.a.x, false), vec4<bool>(false, global0.d.d, arg_1.a, true), vec4<bool>(var_0.b.d, var_0.a.x, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(-arg_2.c)), func_3(_wgslsmith_f_op_vec4_f32(func_2()), global0.d.b, func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, var_1, 1275f, 109f) - vec4<f32>(414f, arg_3, -484f, arg_1.c)))), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(892f, var_1, -2519f, var_1) * vec4<f32>(global0.c, var_1, -1332f, var_1)), -2171i, Struct_2(false, arg_0.b, global0.c, Struct_1(var_0.a.yx, arg_2.d.b, arg_1.d.c, true))).b.b, func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(495f, -372f, arg_2.c, arg_2.c), vec4<f32>(global0.c, global0.c, arg_2.c, var_1))), _wgslsmith_sub_i32(-2147483647i, arg_0.b.b), arg_1))).b);
    var_2 = Struct_2(true, Struct_1(arg_1.b.a, var_0.b.b, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.c, 1u, var_0.b.c.x)), global0.b.c), !(!select(var_0.a.x, false, var_2.a))), _wgslsmith_f_op_f32(trunc(arg_3)), func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2()), vec4<f32>(_wgslsmith_f_op_f32(min(-150f, global0.c)), -260f, func_3(vec4<f32>(-1309f, -193f, arg_1.c, global0.c), global0.b.b, arg_1).c, arg_2.c))), global0.b.b, func_3(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c, -2472f, arg_2.c, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(722f, var_1, 258f, -1428f) * vec4<f32>(1000f, 587f, global0.c, arg_2.c))), firstTrailingBit(-25810i), Struct_2(true, func_1().b, _wgslsmith_f_op_f32(arg_2.c + 418f), var_2.b))).d);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1051f)) - var_1);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1163f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c))))));
    let var_1 = Struct_1(!vec2<bool>(global0.b.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), global0.b.c.xy) <= _wgslsmith_sub_u32(global0.b.c.x, global0.b.c.x)), global0.d.b, ~(~vec3<u32>(_wgslsmith_mod_u32(10727u, 34975u), _wgslsmith_add_u32(1u, u_input.c), ~u_input.b.x)), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0)))) < -555f));
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    var var_2 = func_5(func_4(func_1(), func_1().a), func_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c)) + _wgslsmith_f_op_f32(845f + var_0)), -353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(549f - global0.c)), 785f), -2572i, Struct_2(global0.d.a.x, func_4(Struct_3(vec3<bool>(false, var_1.a.x, true), Struct_1(vec2<bool>(global0.d.a.x, global0.a), var_1.b, vec3<u32>(u_input.b.x, global0.d.c.x, 6864u), false)), select(vec3<bool>(global0.a, global0.d.d, true), vec3<bool>(global0.a, var_1.a.x, true), global0.a)).b, -273f, global0.d)), Struct_2(global0.a, Struct_1(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, -532f, -909f, 1595f)), 2147483647i, Struct_2(var_1.d, Struct_1(vec2<bool>(global0.b.d, true), -2147483647i, var_1.c, global0.d.d), global0.c, Struct_1(vec2<bool>(true, var_1.a.x), -26391i, u_input.b, true))).b.a, u_input.d.x, vec3<u32>(4294967295u | global0.d.c.x, 1u, _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(4294967295u, 4294967295u))), false), var_0, Struct_1(func_4(Struct_3(vec3<bool>(global0.d.a.x, var_1.d, false), Struct_1(var_1.a, var_1.b, u_input.b, false)), !vec3<bool>(global0.d.d, false, true)).b.a, _wgslsmith_sub_i32(select(-20716i, var_1.b, false), _wgslsmith_mod_i32(-1i, -2147483647i)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 65381u, u_input.c), u_input.b), all(vec3<bool>(global0.d.a.x, false, var_1.d)))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(max(5432u, max(global0.b.c.x, 4294967295u)), 1u), 4294967295u | var_2.b.c.x), firstTrailingBit(vec4<u32>(0u, ~global0.d.c.x, var_2.d.c.x, min(0u, 4294967295u))) << (~vec4<u32>(~u_input.c, firstLeadingBit(u_input.c), u_input.c, 0u) % vec4<u32>(32u)));
}

