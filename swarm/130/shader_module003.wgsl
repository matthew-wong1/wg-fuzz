struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(54370u, 27961u);

var<private> global1: Struct_2;

var<private> global2: vec3<f32> = vec3<f32>(1000f, 311f, 1267f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> i32 {
    var var_0 = global1.a.c;
    return reverseBits(~min(~u_input.a, -20400i));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    var var_0 = vec2<u32>(arg_1, ~4294967295u);
    var var_1 = global2.xz;
    let var_2 = select(!select(select(vec2<bool>(global1.a.a, global1.a.a), select(vec2<bool>(global1.a.a, false), vec2<bool>(global1.a.a, global1.a.c), vec2<bool>(global1.a.a, global1.a.a)), !vec2<bool>(global1.a.c, global1.a.c)), vec2<bool>(!global1.a.c, any(vec4<bool>(false, global1.a.c, global1.a.a, global1.a.c))), false), select(vec2<bool>(global1.a.a, false), !select(vec2<bool>(global1.a.a, false), vec2<bool>(global1.a.c, false), vec2<bool>(true, global1.a.a)), all(!(!vec3<bool>(true, true, global1.a.a)))), select(all(select(vec3<bool>(global1.a.a, true, global1.a.c), vec3<bool>(global1.a.c, true, false), vec3<bool>(false, global1.a.c, global1.a.a))), all(vec4<bool>(true, global1.a.a, true, true)) & all(select(vec4<bool>(global1.a.c, true, true, true), vec4<bool>(global1.a.c, false, false, false), true)), true));
    let var_3 = vec2<u32>(0u, 57598u);
    let var_4 = global1.a;
    return _wgslsmith_sub_i32(_wgslsmith_div_i32(select(arg_2.x ^ global1.a.d, 2147483647i, all(vec3<bool>(var_2.x, global1.a.a, var_2.x))), var_4.d) | -firstTrailingBit(_wgslsmith_mult_i32(var_4.d, 0i)), ~global1.a.d);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<f32>) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.c)));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(462f, 1484f))), global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-926f))))), _wgslsmith_f_op_f32(sign(global2.x)), arg_3.x);
    let var_0 = vec4<bool>(false, false, true, true);
    var var_1 = 4294967295u;
    global1 = Struct_2(Struct_1(!arg_1.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-280f, arg_1.b.x, arg_3.x, 1369f), arg_1.b, vec4<bool>(var_0.x, false, arg_1.a, true)))))), true, i32(-1i) * -u_input.a), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), 1308f), _wgslsmith_f_op_f32(-1671f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - global1.c.x) - _wgslsmith_f_op_f32(-global1.c.x))), global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -860f), 2435f) - _wgslsmith_f_op_vec3_f32(-arg_3)));
    return Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1614f)), global2.x, -424f, 649f)), global1.a.c, u_input.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.b), global1.a.b.xyx, var_0.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(451f, _wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1897f, -399f)) * _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, -118f)) - -1619f)), vec3<f32>(-135f, arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-122f - global2.x), _wgslsmith_f_op_f32(1439f * global1.b.x))))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    global1 = arg_2;
    var var_0 = global0[_wgslsmith_index_u32(42758u, 2u)];
    var_0 = select(~u_input.c, 4294967295u, true);
    var_0 = ~_wgslsmith_mult_u32(abs(~u_input.c), u_input.c);
    let var_1 = max(_wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-1i, arg_0.a.d, -15376i, 17071i)), ~vec4<i32>(arg_2.a.d, -2721i, 1i, arg_0.a.d)), select(_wgslsmith_div_vec4_i32(vec4<i32>(-47974i, arg_0.a.d, 1i, -10021i), vec4<i32>(2147483647i, global1.a.d, arg_0.a.d, arg_2.a.d)), vec4<i32>(arg_2.a.d, arg_2.a.d, -96259i, u_input.a), true) ^ _wgslsmith_div_vec4_i32(select(vec4<i32>(-54i, -2147483647i, 4282i, global1.a.d), vec4<i32>(arg_0.a.d, arg_0.a.d, -87060i, arg_2.a.d), vec4<bool>(true, false, true, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a.d, u_input.b, arg_2.a.d, -9624i), vec4<i32>(global1.a.d, 0i, 18632i, 16338i)))), vec4<i32>(~abs(~0i), arg_2.a.d, firstLeadingBit(u_input.b), arg_2.a.d));
    return !vec2<bool>(false, !global1.a.a);
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(func_4(~(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], 2u)], 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38076u, 2u)], 2u)], 2u)])), Struct_1(global1.a.a, _wgslsmith_div_vec4_f32(vec4<f32>(-128f, 568f, 1000f, -326f), _wgslsmith_f_op_vec4_f32(global1.a.b + vec4<f32>(global1.a.b.x, -1092f, 1140f, global1.a.b.x))), select(!global1.a.c, true, global1.a.d < 1i), -2147483647i), vec3<i32>(u_input.a, func_2(), -func_3(global1.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], 2u)], vec4<i32>(-96221i, 69168i, 34151i, -2147483647i))), _wgslsmith_f_op_vec3_f32(-global1.b)), ~u_input.d.x >= 0u, func_4(_wgslsmith_sub_u32(~(u_input.d.x ^ 33214u), abs(0u) | u_input.d.x), Struct_1(!global1.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.b)), !global1.a.a | any(vec4<bool>(global1.a.c, false, global1.a.a, global1.a.c)), global1.a.d), vec3<i32>(func_4(0u, global1.a, vec3<i32>(u_input.b, 1i, global1.a.d), global1.c).a.d << (min(21212u, 42790u) % 32u), -59944i, 16139i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_f_op_f32(global1.b.x * global2.x), -822f))), global2.x);
    let var_1 = u_input.d.xw;
    let var_2 = global2.x;
    global1 = Struct_2(Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-257f, 1000f, global1.b.x, global1.a.b.x)) * vec4<f32>(global2.x, global2.x, global2.x, -509f)) - vec4<f32>(_wgslsmith_div_f32(global1.a.b.x, global1.c.x), _wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(-global2.x), global1.b.x)), global1.a.a, _wgslsmith_dot_vec3_i32(firstLeadingBit(abs(vec3<i32>(global1.a.d, -5966i, 2147483647i))), select(vec3<i32>(-2147483647i, 14108i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-40970i, global1.a.d, global1.a.d), vec3<i32>(14616i, 2147483647i, global1.a.d)), var_0.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(func_4(~54283u, Struct_1(false, global1.a.b, false, u_input.b), select(vec3<i32>(u_input.a, -2147483647i, u_input.b), vec3<i32>(global1.a.d, -25961i, global1.a.d), global1.a.a), _wgslsmith_f_op_vec3_f32(round(global1.a.b.zyy))).c.x, -2541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -983f, var_0.x)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-813f, 331f, _wgslsmith_f_op_f32(global2.x + global2.x)) - _wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(-global1.a.b.zyw))), vec3<f32>(-898f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + -1186f), _wgslsmith_f_op_f32(global1.b.x + -1124f))));
    let var_3 = vec3<i32>(~func_3(1000f, _wgslsmith_sub_u32(var_1.x, 1u), ~abs(vec4<i32>(-1019i, 2147483647i, u_input.a, 1i))), 0i, ~u_input.a);
    return func_4(u_input.c, func_4(21818u, func_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(35973u, var_1.x >> (1u % 32u)), 2u)], Struct_1(true, _wgslsmith_f_op_vec4_f32(step(global1.a.b, vec4<f32>(-385f, global2.x, -641f, -159f))), any(vec3<bool>(true, true, global1.a.a)), var_3.x), firstLeadingBit(var_3 >> (vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(4294967295u, 2u)]) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-205f - -483f), global2.x, _wgslsmith_f_op_f32(global1.b.x + -1621f))).a, ~var_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global2.x, 1000f) + global1.a.b.wwx)) + vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(global1.b.x * -1000f), _wgslsmith_f_op_f32(-global1.c.x)))).a, ~vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, var_3.x), _wgslsmith_add_i32(0i, -23377i)), -60055i, -60293i), vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(407f)) * global2.x)), 512f));
}

fn func_6(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.b, _wgslsmith_f_op_vec3_f32(-arg_2.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_2.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2.a.b.x, global2.x)), true)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.x, global2.x, arg_2.c.x))) - vec3<f32>(-209f, -973f, global1.c.x)))));
    global2 = func_1().c;
    global1 = func_1();
    let var_0 = ~arg_0.x;
    var var_1 = 1u;
    return func_4(~0u, Struct_1(arg_2.a.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(global1.a.b)))), true & (any(arg_3) && !arg_2.a.c), _wgslsmith_add_i32(15992i, -695i)), max(select(vec3<i32>(1i, 12971i, arg_2.a.d) ^ countOneBits(vec3<i32>(arg_0.x, arg_2.a.d, -18292i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 6272i, 18964i), vec3<i32>(global1.a.d, -10768i, arg_1)), any(vec2<bool>(true, true))), vec3<i32>(0i, -func_2(), select(-1i, var_0 & -2147483647i, -1160f != arg_2.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))) * vec3<f32>(-1716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1097f)), -1249f))).a;
}

fn func_7(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = ~(-vec2<i32>(arg_0.d, ~func_4(52177u, arg_0, vec3<i32>(0i, global1.a.d, 24069i), arg_0.b.yyz).a.d));
    var var_1 = func_4(global0[_wgslsmith_index_u32(0u, 2u)], Struct_1(global1.a.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1.a.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(969f, 393f, -545f, arg_0.b.x) - vec4<f32>(global1.c.x, arg_0.b.x, 398f, -240f)) * vec4<f32>(-153f, -752f, global2.x, -382f))), _wgslsmith_f_op_f32(floor(func_4(u_input.d.x, global1.a, vec3<i32>(3705i, -2147483647i, arg_0.d), vec3<f32>(-616f, arg_0.b.x, global1.a.b.x)).b.x)) == 551f, _wgslsmith_div_i32(countOneBits(-1i), countOneBits(_wgslsmith_mod_i32(53034i, -2147483647i)))), max(vec3<i32>(-30607i, var_0.x << (~49880u % 32u), _wgslsmith_div_i32(0i, -64838i) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -2147483647i, -1i), vec4<i32>(-1i, u_input.b, global1.a.d, var_0.x))), vec3<i32>(u_input.a, arg_0.d, _wgslsmith_add_i32(-u_input.b, 0i))), vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.a.b.x)), -2056f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - _wgslsmith_div_f32(global2.x, 1000f)))));
    let var_2 = u_input.d;
    var var_3 = vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1727f), 177f, _wgslsmith_f_op_f32(f32(-1f) * -158f));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(global1.c, var_3.yyz)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(591f, -420f, func_4(u_input.c & 12811u, global1.a, -vec3<i32>(-9213i, u_input.a, -2147483647i), _wgslsmith_f_op_vec3_f32(-var_1.b)).a.b.x) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global2.x - global1.b.x), _wgslsmith_f_op_f32(step(var_3.x, arg_0.b.x)), -1183f), global1.a.b.zxw))));
    return StorageBuffer(select(countOneBits(-abs(var_0)), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.d >> (1421u % 32u), i32(-1i) * -1i), -var_0), select(!(!vec2<bool>(true, arg_0.c)), !select(vec2<bool>(global1.a.c, false), vec2<bool>(false, false), true), all(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.a, global1.a.c, true), vec3<bool>(global1.a.a, global1.a.c, arg_0.c))))), ~2147483647i, -(~vec4<i32>(var_0.x, -43868i, global1.a.d, -1i) & select(vec4<i32>(-2147483647i, var_0.x, u_input.b, 2147483647i) ^ vec4<i32>(-2147483647i, var_0.x, 10366i, u_input.b), firstTrailingBit(vec4<i32>(global1.a.d, 0i, global1.a.d, var_1.a.d)), true & global1.a.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.c, 2u)], var_2.x)), vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.c, 2u)], 4294967295u)), ~vec3<u32>(0u, 5895u, 1u)), global0[_wgslsmith_index_u32(firstLeadingBit(67565u), 2u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_6(vec2<i32>(reverseBits(global1.a.d), 39721i) >> (max(u_input.d.zz << (u_input.d.yx % vec2<u32>(32u)), vec2<u32>(u_input.d.x, 4294967295u)) % vec2<u32>(32u)), global1.a.d, func_1(), vec3<bool>(-12278i < global1.a.d, false, true)));
}

