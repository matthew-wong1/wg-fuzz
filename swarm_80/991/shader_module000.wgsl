struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 6>;

var<private> global2: vec2<u32>;

var<private> global3: vec3<i32> = vec3<i32>(-1i, 1i, 0i);

var<private> global4: Struct_1 = Struct_1(52588i, vec2<u32>(39169u, 9696u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global2 = firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(26045u, _wgslsmith_sub_u32(~global2.x, global0.b.b.x)), ~_wgslsmith_mult_u32(global2.x >> (u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))));
    var var_0 = Struct_2(true, Struct_1(global3.x, global4.b), _wgslsmith_f_op_f32(ceil(1115f)), Struct_1(35149i, ~vec2<u32>(_wgslsmith_mod_u32(4294967295u, global0.d.b.x), 39882u)), u_input.c.x);
    let var_1 = select(arg_0.yz, arg_0.xy, global0.d.a < _wgslsmith_mod_i32(~global0.b.a, _wgslsmith_mult_i32(~global0.e, -2147483647i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, _wgslsmith_f_op_f32(-var_0.c), var_0.c)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, var_0.c, global0.c) * vec3<f32>(300f, -225f, global0.c))))));
    var var_3 = ~vec3<i32>(-11029i, ~(~global0.d.a), firstTrailingBit(-2147483647i >> (global2.x % 32u))) & vec3<i32>(12079i, -1i >> (0u % 32u), u_input.c.x & -firstLeadingBit(global3.x));
    return countOneBits(~u_input.d);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: vec3<i32>) -> i32 {
    let var_0 = arg_1.c;
    let var_1 = ~_wgslsmith_sub_vec3_u32(select(u_input.a.yyz, u_input.b, !vec3<bool>(global0.a, var_0.a, true)), min(vec3<u32>(func_3(vec3<bool>(false, true, true)), countOneBits(global2.x), ~4294967295u), u_input.a.xzy));
    global3 = vec3<i32>(select(48060i, global3.x, false), _wgslsmith_sub_i32(select(global4.a, -76643i, true), u_input.c.x), ~firstLeadingBit(_wgslsmith_mod_i32(global4.a, -24374i ^ u_input.c.x)));
    let var_2 = Struct_2(true, Struct_1(~(i32(-1i) * -31653i) << (((global2.x ^ 0u) ^ global4.b.x) % 32u), vec2<u32>(~firstTrailingBit(global4.b.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(69977u, global4.b.x, global0.b.b.x, 0u)), u_input.a))), var_0.c, Struct_1(~(i32(-1i) * -41216i), select(_wgslsmith_clamp_vec2_u32(arg_1.b.b | arg_0.b, vec2<u32>(12763u, 94344u), ~var_0.b.b), arg_1.c.b.b >> (vec2<u32>(global0.b.b.x, var_1.x) % vec2<u32>(32u)), vec2<bool>(global0.a, any(vec2<bool>(arg_1.c.a, arg_1.c.a))))), ~reverseBits(_wgslsmith_sub_i32(-global3.x, arg_3.x)));
    var var_3 = Struct_2(!all(!vec2<bool>(global0.a, true)), Struct_1(arg_3.x, _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(var_1.zx), vec2<u32>(34230u, arg_0.b.x) >> (vec2<u32>(0u, arg_1.a.b.x) % vec2<u32>(32u)), var_0.b.b | global0.b.b), ~(~vec2<u32>(u_input.a.x, 1051u)))), arg_2, Struct_1(arg_0.a >> (global4.b.x % 32u), _wgslsmith_mod_vec2_u32(~(arg_1.b.b | var_2.d.b), firstLeadingBit(var_1.yy) << (var_0.b.b % vec2<u32>(32u)))), ~9097i);
    return _wgslsmith_mod_i32(arg_1.b.a, _wgslsmith_dot_vec2_i32(-(~u_input.c & vec2<i32>(-1i, 24145i)), _wgslsmith_div_vec2_i32(u_input.c, ~(-arg_3.yx))));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = Struct_3(global0.d, Struct_1(0i, ~arg_3.d.b), Struct_2(any(!select(vec4<bool>(true, arg_3.a, arg_3.a, global1[_wgslsmith_index_u32(53278u, 6u)]), vec4<bool>(true, false, global0.a, true), vec4<bool>(arg_2, true, true, false))), Struct_1(1i ^ max(u_input.c.x, 29312i), ~(~vec2<u32>(u_input.d, global4.b.x))), arg_3.c, arg_3.b, -1i));
    global0 = Struct_2(true, global0.b, _wgslsmith_f_op_f32(var_1.c.c * var_1.c.c), arg_3.b, -27040i | -var_1.c.e);
    var var_2 = global2.x;
    let var_3 = Struct_3(var_1.c.d, var_1.a, Struct_2(false, var_1.b, 1452f, global0.b, _wgslsmith_sub_i32(~global4.a, global3.x)));
    return Struct_2(false, Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_3.d.a, -1i), 1i), vec2<u32>(var_3.b.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u) << (vec2<u32>(var_1.b.b.x, arg_3.d.b.x) % vec2<u32>(32u)), ~vec2<u32>(var_3.b.b.x, 44934u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.c - var_1.c.c))))))), Struct_1(~_wgslsmith_mult_i32(u_input.c.x, -38978i), select(global0.d.b, _wgslsmith_clamp_vec2_u32(var_1.c.d.b, abs(vec2<u32>(4294967295u, 0u)), vec2<u32>(global2.x, 4294967295u) >> (vec2<u32>(78841u, 1u) % vec2<u32>(32u))), !vec2<bool>(global0.a, global0.a))), -global3.x & _wgslsmith_div_i32(~var_0.x, select(firstTrailingBit(global3.x), 33192i, global0.a & false)));
}

fn func_1() -> Struct_3 {
    global0 = func_4(u_input.a.x, ~vec2<i32>(0i, -func_2(global0.b, Struct_3(global0.b, Struct_1(-1i, global4.b), Struct_2(global1[_wgslsmith_index_u32(27398u, 6u)], global0.b, global0.c, Struct_1(-1i, vec2<u32>(u_input.d, 68576u)), -2147483647i)), -2029f, vec3<i32>(1i, u_input.c.x, global0.e))), all(select(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 6u)], global0.a)), select(select(vec3<bool>(global0.a, global1[_wgslsmith_index_u32(u_input.d, 6u)], global0.a), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 6u)], global1[_wgslsmith_index_u32(global4.b.x, 6u)]), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(global0.a, global1[_wgslsmith_index_u32(12771u, 6u)], false), false), select(vec3<bool>(false, true, false), vec3<bool>(global0.a, global1[_wgslsmith_index_u32(global0.d.b.x, 6u)], global1[_wgslsmith_index_u32(590u, 6u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 6u)], global1[_wgslsmith_index_u32(36702u, 6u)]))), select(select(vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 6u)], true, false), vec3<bool>(global0.a, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], false, true)), vec3<bool>(global1[_wgslsmith_index_u32(14564u, 6u)], global1[_wgslsmith_index_u32(10229u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 6u)], true), vec3<bool>(global1[_wgslsmith_index_u32(45143u, 6u)], global1[_wgslsmith_index_u32(16762u, 6u)], true), vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 6u)], global0.a, true))))), Struct_2(true, global0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -674f))))), global0.b, _wgslsmith_sub_i32(-global4.a, countOneBits(_wgslsmith_add_i32(u_input.c.x, 1i)))));
    var var_0 = Struct_3(Struct_1(global4.a, abs(vec2<u32>(select(global2.x, u_input.a.x, true), ~global0.b.b.x))), func_4(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global2.x, 1u, global4.b.x)), ~global0.d.b.x), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global4.a), _wgslsmith_add_vec2_i32(vec2<i32>(1060i, -1115i), global3.xz)), u_input.c), select(!(global0.a & global1[_wgslsmith_index_u32(global4.b.x, 6u)]), false || (-21786i > global3.x), global1[_wgslsmith_index_u32(global0.d.b.x, 6u)]), func_4(~global2.x, u_input.c, !(!global1[_wgslsmith_index_u32(13630u, 6u)]), func_4(u_input.d, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, global3.x), vec2<i32>(global4.a, -2147483647i)), true, Struct_2(global1[_wgslsmith_index_u32(16223u, 6u)], Struct_1(4556i, u_input.a.yw), -305f, Struct_1(global0.b.a, vec2<u32>(global4.b.x, 60133u)), global4.a)))).b, Struct_2(_wgslsmith_sub_u32(global2.x, 4294967295u) != global4.b.x, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-509f - 1304f), _wgslsmith_div_f32(global0.c, global0.c))) * global0.c), Struct_1(reverseBits(select(u_input.c.x, 2147483647i, global0.a)), u_input.a.zx), 2147483647i));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.c, -532f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-214f, 559f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(384f, -706f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.c, var_0.c.c)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -900f) - global0.c), _wgslsmith_f_op_f32(abs(971f))));
    global0 = func_4(var_0.b.b.x, vec2<i32>(i32(-1i) * -var_0.a.a, ~var_0.a.a), !all(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(63755u, 6u)], var_1, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], var_1, false, var_0.c.a), vec4<bool>(var_1, global0.a, var_1, global0.a))), var_0.c);
    return Struct_3(Struct_1(~(reverseBits(2147483647i) << (_wgslsmith_dot_vec2_u32(var_0.c.b.b, vec2<u32>(global2.x, 74842u)) % 32u)), ~func_4(global0.b.b.x, global3.zx & vec2<i32>(-20832i, u_input.c.x), false, var_0.c).b.b), global0.d, func_4(9088u, vec2<i32>(global3.x, global4.a), true, Struct_2(func_4(74479u, -vec2<i32>(-6830i, global3.x), !global1[_wgslsmith_index_u32(31702u, 6u)], func_4(9189u, global3.zx, global1[_wgslsmith_index_u32(global2.x, 6u)], Struct_2(true, global0.d, 741f, global0.b, 5851i))).a, global0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, -1689f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.a, -firstLeadingBit(36174i))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    global2 = _wgslsmith_add_vec2_u32(arg_2.a.b, arg_0.c.b.b | _wgslsmith_sub_vec2_u32(arg_2.a.b, arg_0.c.d.b));
    global4 = func_4(global2.x, ~(~vec2<i32>(max(1i, global0.e), ~u_input.c.x)), !(arg_2.c.c >= _wgslsmith_f_op_f32(f32(-1f) * -1000f)) | global1[_wgslsmith_index_u32(max(1u, global4.b.x), 6u)], Struct_2(true, arg_2.a, global0.c, arg_2.a, global4.a)).d;
    global1 = array<bool, 6>();
    var var_0 = func_1();
    var var_1 = ~u_input.c.x | -var_0.c.e;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), Struct_3(Struct_1(-2147483647i, ~min(vec2<u32>(global2.x, global0.d.b.x), global4.b)), global0.b, func_1().c), func_1());
    let var_1 = reverseBits(_wgslsmith_clamp_i32(1i << (abs(_wgslsmith_mod_u32(0u, global2.x)) % 32u), ~(-(0i | global4.a)), 1i));
    global4 = Struct_1(~1i, u_input.a.yy);
    let var_2 = func_5(func_1(), Struct_3(Struct_1(global3.x, ~(~global0.b.b)), global0.d, Struct_2(24444u >= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(51930u, u_input.b.x, 0u)), Struct_1(-2147483647i, ~vec2<u32>(4294967295u, global0.d.b.x)), -1079f, var_0.b, reverseBits(_wgslsmith_mult_i32(-1i, -3350i)))), Struct_3(var_0.b, global0.b, Struct_2(func_1().c.a, Struct_1(36520i, ~global0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(842f, -722f))), var_0.d, global3.x))).b.a;
    global3 = select(~vec3<i32>(~var_1, ~var_1, -34204i), ~(_wgslsmith_add_vec3_i32(vec3<i32>(15122i, var_0.e, u_input.c.x), vec3<i32>(23806i, var_2, u_input.c.x)) | ~vec3<i32>(var_2, -23997i, 2147483647i)), vec3<bool>(global0.a, var_0.a, !(var_0.b.b.x == 60181u))) << (abs(reverseBits(vec3<u32>(u_input.b.x, ~0u, firstTrailingBit(global4.b.x)))) % vec3<u32>(32u));
    var_0 = Struct_2((all(!vec3<bool>(global0.a, var_0.a, global0.a)) || false) | (max(var_0.b.b.x, _wgslsmith_div_u32(13599u, 4294967295u)) > var_0.d.b.x), func_4(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global2.x, 25737u), ~(~u_input.a.xyx)), abs(-(vec2<i32>(var_0.b.a, -2147483647i) << (u_input.a.wx % vec2<u32>(32u)))), false, func_4(firstTrailingBit(4294967295u), ~u_input.c, false, func_5(func_1(), func_1(), func_1()))).b, global0.c, var_0.b, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2989f, global0.c, 824f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(725f, global0.c, 907f))) + vec3<f32>(_wgslsmith_f_op_f32(step(-216f, 1197f)), _wgslsmith_f_op_f32(-global0.c), -922f)), vec3<f32>(1000f, _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-683f - -547f)), _wgslsmith_f_op_f32(sign(461f))))), 33006i, vec3<i32>(func_5(func_1(), Struct_3(global0.b, global0.b, Struct_2(true, Struct_1(var_0.b.a, vec2<u32>(39994u, global0.d.b.x)), -804f, Struct_1(var_0.d.a, u_input.b.zy), 1i)), func_1()).e, var_0.d.a, func_4(0u, ~u_input.c | _wgslsmith_add_vec2_i32(global3.yz, global3.xx), all(vec2<bool>(true, true)), Struct_2(func_4(var_0.d.b.x, global3.zx, var_0.a, Struct_2(true, global0.d, var_0.c, Struct_1(u_input.c.x, vec2<u32>(u_input.b.x, global0.b.b.x)), global4.a)).a, Struct_1(20912i, var_0.b.b), global0.c, var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-32621i, global0.e, -46174i), vec3<i32>(0i, u_input.c.x, 1i)))).e));
}

