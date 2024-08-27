struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(-22242i, -24648i, 13625i, -57323i, 34947i, 53630i, 47784i, -28883i, 2147483647i, -11326i, 1i, 33188i, -32436i, 7288i, 1i, 9232i, 1i, 0i, 23892i, 2147483647i, -10207i, 0i, 42534i, i32(-2147483648), 2147483647i, -45379i, 2147483647i, 1i, 1i, i32(-2147483648), -6587i, 12848i);

var<private> global1: vec2<u32> = vec2<u32>(24864u, 4294967295u);

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), -29753i);

var<private> global3: vec2<f32> = vec2<f32>(-901f, 860f);

var<private> global4: vec4<f32> = vec4<f32>(-341f, 236f, -1964f, 136f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_2(vec4<bool>(select(0u << (1u % 32u), global1.x, any(vec2<bool>(false, true))) != global1.x, global3.x <= global3.x, select(any(vec2<bool>(true, true)), false, all(vec4<bool>(false, true, false, false))), arg_0.x > countOneBits(23571i)), abs(-abs(vec3<i32>(u_input.a.x, 2147483647i, -353i))), _wgslsmith_sub_u32(~global1.x, select(~global1.x, min(global1.x, 4294967295u), global1.x >= global1.x) ^ ~global1.x), min(select(firstLeadingBit(vec3<i32>(arg_0.x, global0[_wgslsmith_index_u32(global1.x, 32u)], -26572i)), reverseBits(vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(global1.x, 32u)], arg_0.x)), vec3<bool>(false, true, false)) | (~vec3<i32>(-31918i, u_input.a.x, global0[_wgslsmith_index_u32(41625u, 32u)]) | arg_0), arg_0));
    let var_1 = all(select(var_0.a.yyw, select(!var_0.a.zwx, !(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), false), select(select(!var_0.a.zyy, var_0.a.zwy, select(vec3<bool>(true, false, true), var_0.a.yyx, false)), !(!vec3<bool>(false, var_0.a.x, var_0.a.x)), !var_0.a.x)));
    global2 = max(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.x, 1i), ~vec2<i32>(42425i, global2.x)), vec2<i32>(~_wgslsmith_clamp_i32(-1i, arg_0.x, abs(-2147483647i)), ~max(var_0.b.x, 22215i) & -26073i));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x * -455f))), global1.x);
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, 622f) - vec2<f32>(global4.x, -1018f)))), vec2<f32>(global3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.a - 1309f)))), (_wgslsmith_sub_u32(4294967295u, 115001u) << (~var_2.b % 32u)) < ((67953u << (var_2.b % 32u)) << (var_2.b % 32u)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1189f, global4.x)))))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.x * global3.x))), _wgslsmith_f_op_f32(-global4.x))));
    return min(-_wgslsmith_div_i32(arg_0.x, global0[_wgslsmith_index_u32(~4294967295u, 32u)]) ^ u_input.a.x, global0[_wgslsmith_index_u32(min(4294967295u, abs(var_2.b)) >> (~(reverseBits(var_2.b) >> (1u % 32u)) % 32u), 32u)]);
}

fn func_2() -> bool {
    var var_0 = Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, ~(-34698i), 0i, global0[_wgslsmith_index_u32(global1.x, 32u)]), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 2147483647i), u_input.a), -1393i, select(-global0[_wgslsmith_index_u32(global1.x, 32u)], 54228i, true), func_3(~vec3<i32>(-1i, -36091i, 10632i)))), false, vec3<bool>(select(true, any(vec3<bool>(true, false, true)), true), _wgslsmith_f_op_f32(-global4.x) == global4.x, !(236f > global4.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + 1000f)) - _wgslsmith_f_op_f32(global4.x + global4.x)), 1u), true | (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global3.x)))) >= _wgslsmith_f_op_f32(-global4.x)));
    var_0 = Struct_3(vec4<i32>(-abs(abs(global2.x)), -(global0[_wgslsmith_index_u32(reverseBits(global1.x), 32u)] | _wgslsmith_clamp_i32(var_0.a.x, 2147483647i, var_0.a.x)), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(global1.x, 32u)], 1i), global0[_wgslsmith_index_u32(abs(4294967295u), 32u)]), !(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, var_0.d.b), vec2<u32>(42384u, 4294967295u)) > countOneBits(1u)) && !all(!vec4<bool>(false, var_0.c.x, true, false)), var_0.c, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.x))))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(8720u, 1u, var_0.d.b), vec3<u32>(45127u, 1u, global1.x)))), all(!vec4<bool>(var_0.e && false, var_0.e, true, var_0.e)));
    global2 = firstTrailingBit(-vec2<i32>(var_0.a.x, global0[_wgslsmith_index_u32(global1.x, 32u)])) ^ abs(~(vec2<i32>(var_0.a.x, global0[_wgslsmith_index_u32(0u, 32u)]) << (vec2<u32>(3794u, global1.x) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(635f, var_0.d.a, 277f, 554f) - vec4<f32>(global3.x, 350f, global4.x, var_0.d.a))))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(-global3.x)), var_0.d.a, -403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-719f * global4.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-815f, 1217f, -1000f, global3.x), vec4<f32>(global3.x, 808f, 808f, global4.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.a, -775f, -209f, global3.x))))));
    var var_2 = 0u;
    return var_0.e;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_2 {
    global1 = arg_2;
    let var_0 = select(arg_3, arg_3, select(all(vec3<bool>(true, true, true)), all(select(arg_1.a.ww, arg_1.a.yz, false)) & false, false));
    var var_1 = _wgslsmith_div_u32(~((~4294967295u ^ _wgslsmith_mult_u32(0u, arg_2.x)) ^ ~(arg_1.c >> (global1.x % 32u))), _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(max(vec4<u32>(global1.x, global1.x, 1u, global1.x), vec4<u32>(1u, arg_2.x, 0u, 4294967295u)), vec4<u32>(0u, global1.x, arg_1.c, arg_2.x))), ~vec4<u32>(~0u, ~35803u, min(58109u, 26700u), ~51998u)));
    var_1 = ~_wgslsmith_clamp_u32(arg_2.x, global1.x, arg_2.x) ^ _wgslsmith_add_u32(~0u ^ (countOneBits(arg_1.c) << (_wgslsmith_dot_vec3_u32(vec3<u32>(104652u, 4294967295u, arg_2.x), vec3<u32>(0u, 4294967295u, arg_2.x)) % 32u)), 29426u >> (abs(1u) % 32u));
    global4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(443f + 2698f), _wgslsmith_f_op_f32(ceil(global3.x)))), global3.x))), -1439f, _wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.x))))));
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global0 = array<i32, 32>();
    var var_0 = Struct_2(select(select(arg_3.a, !(!vec4<bool>(arg_3.a.x, true, true, arg_3.a.x)), arg_3.a.x), arg_3.a, any(!select(arg_3.a, arg_3.a, true))), _wgslsmith_div_vec3_i32(arg_3.d, arg_3.b), arg_2.b, -arg_3.b);
    global2 = vec2<i32>(-31042i, 2147483647i);
    var_0 = func_4(-366f, arg_3, firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(71214u, ~arg_1.b), min(~904u, 4294967295u))), vec4<bool>(true & func_2(), all(vec4<bool>(arg_3.a.x, all(vec2<bool>(var_0.a.x, true)), any(var_0.a.yzw), true)), all(select(select(arg_3.a, arg_3.a, var_0.a), !vec4<bool>(arg_3.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(arg_3.a.x, var_0.a.x, true, var_0.a.x))), any(select(select(vec2<bool>(var_0.a.x, var_0.a.x), arg_3.a.yy, true), arg_3.a.yw, !var_0.a.x))));
    global4 = vec4<f32>(_wgslsmith_f_op_f32(abs(510f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-591f * global4.x), _wgslsmith_div_f32(global4.x, arg_2.a), true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -1053f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(498f, 829f)) - 282f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.x, _wgslsmith_f_op_f32(round(647f)))) * arg_2.a) - arg_1.a));
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<bool> {
    global3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.d.a, _wgslsmith_f_op_f32(sign(-140f))), vec2<f32>(_wgslsmith_f_op_f32(-1363f + _wgslsmith_div_f32(arg_2.x, 533f)), global4.x))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), true));
    let var_0 = ~min(vec3<i32>(func_4(-2068f, arg_0, vec2<u32>(global1.x, global1.x), vec4<bool>(arg_0.a.x, arg_3.a.x, false, true)).d.x, u_input.a.x, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(arg_3.c, 32u)], arg_1.a.x)) << (~(~vec3<u32>(0u, 20354u, global1.x)) % vec3<u32>(32u)), select(arg_3.b, vec3<i32>(u_input.a.x, arg_3.d.x, 1i) | ~arg_1.a.wwy, select(vec3<bool>(arg_3.a.x, arg_1.c.x, arg_1.e), arg_0.a.wyz, select(arg_1.c, arg_1.c, arg_3.a.x))));
    var var_1 = vec2<i32>(-1i) * -(vec2<i32>(-1i) * -vec2<i32>(13524i, -1i));
    global2 = _wgslsmith_div_vec2_i32(~vec2<i32>(min(-3012i << (global1.x % 32u), abs(18114i)), var_1.x), func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.x))))), Struct_2(select(select(arg_0.a, arg_0.a, false), !vec4<bool>(true, true, false, arg_3.a.x), vec4<bool>(false, true, arg_0.a.x, true)), _wgslsmith_sub_vec3_i32(-vec3<i32>(0i, 36911i, global2.x), func_4(-154f, arg_3, vec2<u32>(global1.x, 65694u), arg_0.a).b), 87244u, vec3<i32>(arg_3.d.x | var_0.x, arg_3.b.x, global0[_wgslsmith_index_u32(arg_0.c, 32u)])), vec2<u32>(_wgslsmith_mod_u32(~0u, func_4(global4.x, arg_0, vec2<u32>(14315u, 1u), vec4<bool>(arg_0.a.x, true, arg_3.a.x, arg_3.a.x)).c), arg_3.c | (0u ^ arg_1.d.b)), arg_3.a).b.xx);
    var var_2 = vec2<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-451f, _wgslsmith_f_op_f32(-2003f * arg_1.d.a)) + _wgslsmith_f_op_f32(-147f + -454f))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, true, global3.x >= -777f, true), !vec4<bool>(!(global1.x >= 6037u), true, all(vec3<bool>(true, true, true)), false), select(select(vec4<bool>(all(vec3<bool>(true, true, false)), true, true, false), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)))), func_5(Struct_2(vec4<bool>(true, true, true, true), vec3<i32>(u_input.a.x, -1i, -64371i) | vec3<i32>(global2.x, global0[_wgslsmith_index_u32(global1.x, 32u)], -2147483647i), ~global1.x, vec3<i32>(global2.x, 16498i, global2.x)), Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 23275i, -78567i, global0[_wgslsmith_index_u32(0u, 32u)]), vec4<i32>(global2.x, global0[_wgslsmith_index_u32(global1.x, 32u)], u_input.a.x, global0[_wgslsmith_index_u32(1u, 32u)])), all(vec2<bool>(true, true)), vec3<bool>(true, true, true), func_1(global2.x, Struct_1(global4.x, global1.x), Struct_1(-360f, 0u), Struct_2(vec4<bool>(true, true, false, false), vec3<i32>(u_input.a.x, 0i, 1i), 0u, vec3<i32>(global0[_wgslsmith_index_u32(global1.x, 32u)], 8628i, global0[_wgslsmith_index_u32(1u, 32u)]))), true), global4.zy, Struct_2(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec3<i32>(2147483647i, u_input.a.x, 0i) & vec3<i32>(global0[_wgslsmith_index_u32(1u, 32u)], global2.x, global2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 62253u, global1.x, global1.x), vec4<u32>(0u, 31441u, 0u, 1u)), vec3<i32>(51139i, u_input.a.x, -40758i) >> (vec3<u32>(global1.x, global1.x, 42613u) % vec3<u32>(32u)))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2385f - 324f)), func_4(global3.x, func_4(343f, Struct_2(vec4<bool>(false, true, true, true), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 1i, u_input.a.x), global1.x, vec3<i32>(0i, global2.x, 2870i)), vec2<u32>(57041u, global1.x), vec4<bool>(false, false, true, true)), select(vec2<u32>(global1.x, 1u), vec2<u32>(37120u, 25607u), vec2<bool>(false, false)), vec4<bool>(true, false, true, true)), vec2<u32>(countOneBits(34455u), global1.x), vec4<bool>(true, false, true, true)).a));
    let var_1 = vec4<u32>(57393u, global1.x, min(select(~abs(global1.x), global1.x, -1500f > _wgslsmith_f_op_f32(241f - global3.x)), _wgslsmith_add_u32(global1.x, ~(~4294967295u))), 1u);
    global2 = _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -3916i) >> (~(~var_1.yz) % vec2<u32>(32u)), reverseBits(u_input.a));
    let var_2 = var_0.x;
    var var_3 = 0i;
    let var_4 = ~reverseBits(select(firstTrailingBit(select(vec2<u32>(var_1.x, var_1.x), var_1.zw, var_0.x)), var_1.yx, true));
    let var_5 = !select(vec4<bool>(true, all(vec2<bool>(false, true)), var_0.x, var_0.x), vec4<bool>(var_0.x || (var_0.x | false), false, true, all(vec2<bool>(false, false))), select(!vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, var_0.x && var_0.x, all(vec3<bool>(var_0.x, false, var_0.x)), true), vec4<bool>(true, true, true, true)));
    global1 = _wgslsmith_mod_vec2_u32(var_1.zz, vec2<u32>(~var_4.x, _wgslsmith_sub_u32(var_1.x, var_1.x)));
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-872f, 512f, 782f, 465f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-169f, 274f, global4.x, -670f), vec4<f32>(1395f, global3.x, global3.x, global3.x), var_5)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-714f, global4.x, global4.x, 895f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -global0[_wgslsmith_index_u32(var_1.x, 32u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1629f, -710f) + vec2<f32>(463f, -301f)))) + vec2<f32>(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global4.x)), global3.x))), u_input.a, 0u);
}

