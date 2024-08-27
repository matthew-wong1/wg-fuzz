struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(70858u, 1u, 0u, 0u, 37460u, 60389u, 0u, 0u, 58983u, 39048u, 50163u, 28264u, 4294967295u, 27638u, 73778u, 68331u, 1u, 0u, 0u, 0u, 41949u, 1u, 1u, 92647u, 0u, 0u, 1u, 0u, 1u);

var<private> global1: array<i32, 17> = array<i32, 17>(-1i, -7723i, 11665i, 2147483647i, -1i, i32(-2147483648), 7051i, 44905i, -1i, 92078i, 6398i, -7670i, -13151i, 2147483647i, -16635i, 1i, 5501i);

var<private> global2: i32;

var<private> global3: array<i32, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    global2 = 0i;
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = arg_1.x;
    var var_2 = Struct_3(Struct_1(arg_3.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_3.a - arg_0.x), _wgslsmith_f_op_f32(min(1270f, arg_0.x)), _wgslsmith_f_op_f32(-arg_3.b.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, arg_0.x, arg_0.x, arg_0.x) - arg_3.b) + vec4<f32>(arg_3.a, 193f, 777f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x - 319f))), 741f) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.b.x, arg_3.a))), _wgslsmith_f_op_f32(arg_3.b.x - _wgslsmith_f_op_f32(arg_3.b.x - 1419f)), _wgslsmith_f_op_f32(f32(-1f) * -899f))), Struct_2(u_input.a.zzy, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.b.x)) + _wgslsmith_f_op_f32(select(-867f, 520f, arg_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -532f, -376f, arg_3.b.x))), min(vec3<i32>(u_input.b, countOneBits(arg_2.x), select(0i, global3[_wgslsmith_index_u32(1u, 13u)], arg_1.x)), vec3<i32>(40022i, _wgslsmith_dot_vec2_i32(u_input.e, arg_2.zz), ~(-13642i))), true), _wgslsmith_f_op_f32(min(arg_3.b.x, _wgslsmith_f_op_f32(-arg_3.a))) <= _wgslsmith_f_op_f32(-arg_3.b.x), vec4<bool>(any(vec4<bool>(false, arg_1.x, true, 0i < global3[_wgslsmith_index_u32(29284u, 13u)])), all(select(arg_1.zw, select(vec2<bool>(false, arg_1.x), arg_1.xy, arg_1.xy), false)), select(countOneBits(arg_2.x) <= 1i, false, arg_1.x), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_1.x, false, arg_1.x, true), arg_1, arg_1.x), arg_1.x))));
    global2 = ~global1[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 0u), var_2.c.a.x & u_input.a.x)), 29u)], select(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 29u)], countOneBits(35623u), !arg_1.x || (arg_3.a < arg_3.b.x))), 17u)];
    return (1u | (abs(_wgslsmith_div_u32(1u, 79040u)) >> (~firstTrailingBit(global0[_wgslsmith_index_u32(0u, 29u)]) % 32u))) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 3758u) & var_2.c.a.zx, _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.c.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(35061u, global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), vec2<u32>(19624u, u_input.a.x)))) % 32u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.zyw)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true), true), vec4<bool>(true, true, 1u != u_input.a.x, any(vec4<bool>(false, false, false, false))), true), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 17u)], 1i, arg_3.x), vec3<i32>(2147483647i, -19472i, global3[_wgslsmith_index_u32(6275u, 13u)])), vec3<i32>(global3[_wgslsmith_index_u32(68145u, 13u)], 45190i, 3168i)) & vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40881u, 29u)], 29u)], u_input.c.x), 17u)], 30563i, -19663i), Struct_1(_wgslsmith_f_op_f32(851f + _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_vec4_f32(max(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -306f, -2111f, arg_1.x) * vec4<f32>(arg_1.x, arg_0.x, -164f, arg_1.x)))))), 29u)];
    global2 = -32266i;
    var var_1 = Struct_5(vec4<i32>(abs((-32865i | arg_3.x) << (_wgslsmith_sub_u32(u_input.d.x, 53690u) % 32u)), 8792i, arg_3.x, reverseBits(u_input.e.x)));
    global3 = array<i32, 13>();
    var var_2 = Struct_5(abs(var_1.a));
    return Struct_1(-267f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0)) - arg_0)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_5 {
    global0 = array<u32, 29>();
    let var_0 = vec2<i32>(13i, _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec3_i32(arg_1.c, arg_1.c), -2147483647i, firstTrailingBit(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(arg_1.a.x, 13u)], 2147483647i))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-62373i, arg_1.c.x, global1[_wgslsmith_index_u32(58646u, 17u)]), arg_1.c), reverseBits(arg_1.c.x), -(i32(-1i) * -29644i))));
    global2 = global1[_wgslsmith_index_u32(49086u, 17u)];
    global1 = array<i32, 17>();
    global3 = array<i32, 13>();
    return Struct_5(vec4<i32>(min(u_input.b, u_input.b << (0u % 32u)), firstLeadingBit(max(select(-41742i, u_input.b, arg_3.x), arg_1.c.x ^ var_0.x)), max(-22306i, -u_input.e.x), min(-2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, global1[_wgslsmith_index_u32(1u, 17u)], 7720i, -2147483647i), vec4<i32>(24562i, global1[_wgslsmith_index_u32(u_input.d.x, 17u)], -1i, var_0.x)))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_5, arg_3: bool) -> Struct_1 {
    let var_0 = any(vec4<bool>(false, true, !(!arg_0.d), any(select(vec2<bool>(arg_1, arg_0.d), vec2<bool>(true, true), vec2<bool>(arg_1, true))))) & true;
    var var_1 = arg_0.b.b;
    var var_2 = select(!vec4<bool>(true, arg_0.d, false, false), vec4<bool>(arg_0.d, arg_1 == !(!arg_0.d), false, !(!arg_0.d)), true);
    var var_3 = Struct_3(Struct_1(-1191f, _wgslsmith_f_op_vec4_f32(arg_0.b.b + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, -1703f, -708f, var_1.x))))))), arg_0.b.b, arg_0, true, select(vec4<bool>(!all(vec4<bool>(var_0, true, arg_0.d, var_2.x)), 27442u > arg_0.a.x, !all(vec4<bool>(arg_0.d, true, arg_3, arg_1)), all(!vec2<bool>(false, arg_0.d))), !select(!vec4<bool>(arg_3, true, arg_3, arg_1), vec4<bool>(arg_0.d, true, arg_0.d, true), -309f <= arg_0.b.a), arg_1));
    var var_4 = var_2.x;
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f))), _wgslsmith_div_f32(arg_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1439f)))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_3.c.b.b.x, arg_0.b.b.x))))), _wgslsmith_f_op_f32(-var_3.a.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -457f))))), ~(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, var_3.c.a.x, 37284u, 1u)), ~global0[_wgslsmith_index_u32(var_3.c.a.x, 29u)], _wgslsmith_sub_u32(u_input.a.x, 1u), min(4294967295u, 113422u)) ^ ~(~vec4<u32>(30467u, u_input.a.x, 36363u, u_input.d.x))), abs(max(~select(vec2<i32>(var_3.c.c.x, 1i), u_input.e, arg_0.d), arg_0.c.yx)));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_5 {
    let var_0 = vec3<i32>(u_input.b, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(0i), reverseBits(-1i)), -u_input.e)) << (vec3<u32>(global0[_wgslsmith_index_u32(firstTrailingBit(~0u), 29u)], arg_0.x, ~global0[_wgslsmith_index_u32(~u_input.d.x, 29u)]) % vec3<u32>(32u));
    global2 = global3[_wgslsmith_index_u32(4294967295u, 13u)] << ((_wgslsmith_add_u32(u_input.d.x, _wgslsmith_mod_u32(~34801u, _wgslsmith_mod_u32(arg_0.x, 77502u))) ^ 23653u) % 32u);
    var var_1 = Struct_2(arg_0.zyz, func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, 385f, -1002f, -240f)))), arg_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.xz - vec2<f32>(-767f, arg_1.a)) * _wgslsmith_f_op_vec2_f32(sign(arg_1.b.xz)))), min(min(arg_0, arg_0 | arg_0), reverseBits(~vec4<u32>(arg_0.x, u_input.a.x, arg_0.x, arg_0.x))), _wgslsmith_sub_vec2_i32(~_wgslsmith_clamp_vec2_i32(u_input.e, u_input.e, u_input.e), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, var_0.x), ~vec2<i32>(var_0.x, var_0.x)))), select(~_wgslsmith_clamp_vec3_i32(var_0, vec3<i32>(26358i, var_0.x, 1i), vec3<i32>(global1[_wgslsmith_index_u32(69984u, 17u)], global1[_wgslsmith_index_u32(6289u, 17u)], 13530i)), (vec3<i32>(-2147483647i, u_input.b, -35878i) << (u_input.d % vec3<u32>(32u))) << (~vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(34093u, 29u)]) % vec3<u32>(32u)), false) << ((~(vec3<u32>(u_input.c.x, 0u, 0u) | vec3<u32>(u_input.a.x, arg_0.x, 0u)) | u_input.d) % vec3<u32>(32u)), true);
    var var_2 = !(!(!select(!vec3<bool>(true, var_1.d, var_1.d), !vec3<bool>(var_1.d, var_1.d, true), !var_1.d)));
    let var_3 = 1i;
    return func_4(arg_1, Struct_2(~firstLeadingBit(var_1.a << (u_input.a.yww % vec3<u32>(32u))), func_5(Struct_2(firstLeadingBit(u_input.a.xwz), arg_1, vec3<i32>(var_0.x, -8468i, var_1.c.x) << (vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 70084u) % vec3<u32>(32u)), 0u != u_input.a.x), arg_0.x >= _wgslsmith_div_u32(arg_0.x, 0u), Struct_5(vec4<i32>(21076i, global3[_wgslsmith_index_u32(arg_0.x, 13u)], global3[_wgslsmith_index_u32(arg_0.x, 13u)], global1[_wgslsmith_index_u32(0u, 17u)])), all(!vec4<bool>(true, false, var_1.d, true))), vec3<i32>(1i, -15938i, min(-1i, 0i)) ^ ~func_4(Struct_1(arg_1.a, vec4<f32>(arg_1.b.x, 986f, -1806f, arg_1.b.x)), Struct_2(vec3<u32>(0u, var_1.a.x, 4294967295u), arg_1, vec3<i32>(39394i, 1i, var_0.x), var_2.x), vec4<bool>(false, true, var_2.x, var_2.x), var_2.zy).a.xxy, var_2.x), select(select(vec4<bool>(all(vec2<bool>(false, true)), true, true, true), !select(vec4<bool>(true, true, true, var_1.d), vec4<bool>(var_2.x, false, var_1.d, false), vec4<bool>(true, var_1.d, var_1.d, var_2.x)), !(!vec4<bool>(var_2.x, var_2.x, var_1.d, var_2.x))), vec4<bool>(var_3 >= var_3, var_1.d, !any(var_2.yy), true != any(vec3<bool>(var_2.x, var_1.d, var_2.x))), true), select(vec2<bool>(true, true), vec2<bool>(!var_2.x || true, var_1.d), select(vec2<bool>(all(vec4<bool>(var_2.x, false, var_1.d, true)), true), var_2.xx, var_2.x)));
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> u32 {
    global3 = array<i32, 13>();
    let var_0 = _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1158f));
    var var_1 = func_6(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 2348u, 0u, global0[_wgslsmith_index_u32(4294967295u, 29u)])), ~global0[_wgslsmith_index_u32(4294967295u, 29u)] ^ 1u), 4294967295u, global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(min(~33384u, _wgslsmith_sub_u32(u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22234u, 29u)], 29u)])), 29u)]), 29u)], select(~71987u & _wgslsmith_div_u32(global0[_wgslsmith_index_u32(28424u, 29u)], 40163u), u_input.d.x, true)), func_5(Struct_2(min(u_input.a.xxw, vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 29u)], u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(arg_1 * arg_1), vec4<f32>(var_0, 690f, arg_1, -776f)), -(vec3<i32>(39420i, 18916i, global3[_wgslsmith_index_u32(2316u, 13u)]) & vec3<i32>(63607i, global1[_wgslsmith_index_u32(77119u, 17u)], arg_0.a)), all(vec4<bool>(true, true, true, true))), false, func_4(Struct_1(_wgslsmith_f_op_f32(round(224f)), vec4<f32>(arg_1, 202f, var_0, -2480f)), Struct_2(select(u_input.a.yzx, u_input.d, vec3<bool>(true, false, true)), func_2(vec4<f32>(arg_1, var_0, -132f, var_0), vec2<f32>(arg_1, 898f), vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.c.x, 29u)], 0u, 4344u), vec2<i32>(-1092i, -16799i)), firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 17u)], 20159i, u_input.b)), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), 17060u < global0[_wgslsmith_index_u32(55136u, 29u)]), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    var var_3 = vec4<bool>(false, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true)), true, all(vec2<bool>(true, true)));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 29u)] << (~u_input.a.x % 32u), 29u)], 13u)] >> (firstLeadingBit(u_input.c.x) % 32u);
    let var_1 = Struct_5(abs(-(vec4<i32>(1i, global1[_wgslsmith_index_u32(69117u, 17u)], u_input.b, 2147483647i) & vec4<i32>(-2147483647i, 1i, 2147483647i, global1[_wgslsmith_index_u32(1u, 17u)]))) | vec4<i32>(-global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 29u)], 13u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(Struct_4(-22344i), 845f), 0u), 17u)], u_input.e.x | firstLeadingBit(global3[_wgslsmith_index_u32(u_input.c.x, 13u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.d.x, 17u)]), u_input.e) & -1i));
    let var_2 = 1u << (global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~51328u, 29u)], u_input.a.x), ~(34446u | u_input.d.x)), 33803u), 29u)] % 32u);
    global1 = array<i32, 17>();
    let var_3 = Struct_4(global1[_wgslsmith_index_u32(~(~var_2), 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_2, ~4294967295u, u_input.d.x ^ var_2), _wgslsmith_f_op_f32(-336f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1643f))));
}

