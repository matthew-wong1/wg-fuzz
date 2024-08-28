struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, -23847i, -31233i, 11021i);

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-271f, 102056u, -166f), Struct_1(-1000f, 181u, -152f), Struct_1(-1000f, 19425u, 233f), Struct_1(-253f, 1u, 705f), Struct_1(-201f, 25011u, 328f), Struct_1(1000f, 7721u, 1642f), Struct_1(-366f, 1u, 291f));

var<private> global3: u32;

var<private> global4: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_2(Struct_1(-209f, 4294967295u, 332f), Struct_1(1701f, 51736u, 276f), vec2<i32>(0i, -1i), Struct_1(325f, 38962u, -460f))), Struct_3(Struct_2(Struct_1(-229f, 23104u, -524f), Struct_1(-1000f, 4294967295u, -372f), vec2<i32>(0i, -11293i), Struct_1(-411f, 10585u, 1312f))), Struct_3(Struct_2(Struct_1(151f, 4294967295u, 805f), Struct_1(-398f, 15326u, 258f), vec2<i32>(0i, 21175i), Struct_1(-506f, 1u, 465f))), Struct_3(Struct_2(Struct_1(1417f, 4294967295u, 1297f), Struct_1(1627f, 71355u, -997f), vec2<i32>(52965i, 3474i), Struct_1(-533f, 4917u, -497f))), Struct_3(Struct_2(Struct_1(1000f, 42529u, 1509f), Struct_1(123f, 59394u, -1121f), vec2<i32>(2147483647i, 44131i), Struct_1(-695f, 32765u, 2061f))), Struct_3(Struct_2(Struct_1(1009f, 44205u, 401f), Struct_1(624f, 0u, 1916f), vec2<i32>(-1i, 1790i), Struct_1(-386f, 96751u, -1337f))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_1(-1190f, _wgslsmith_mult_u32(40467u, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1027f));
    var var_1 = (2147483647i & ~select(_wgslsmith_div_i32(66648i, -34499i), firstLeadingBit(1i), var_0.c < global0.a)) <= 2147483647i;
    let var_2 = -38630i << (_wgslsmith_clamp_u32(~global0.b, reverseBits(var_0.b), var_0.b) % 32u);
    let var_3 = arg_3;
    let var_4 = true;
    return arg_1;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(global0.b, 6u)];
    global1 = select(-abs(vec4<i32>(_wgslsmith_sub_i32(18733i, var_0.a.c.x), func_3(var_0.a.d.b, var_0.a.c.x, vec4<u32>(28520u, global0.b, global0.b, 53606u), Struct_4(vec3<u32>(0u, global0.b, var_0.a.d.b), global4[_wgslsmith_index_u32(var_0.a.d.b, 6u)])), -2147483647i, 31690i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, min(_wgslsmith_dot_vec2_i32(global1.zz, vec2<i32>(global1.x, u_input.a)), 66014i), _wgslsmith_dot_vec2_i32(global1.zw, firstTrailingBit(var_0.a.c))), _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(global1.x), -61445i, u_input.a, abs(44015i)), vec4<i32>(~(-2147483647i), abs(17512i), 16899i, 0i))), any(vec3<bool>(!(var_0.a.a.b == 4294967295u), true, any(vec4<bool>(true, false, true, true)))));
    var var_1 = firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(global1.xw, var_0.a.c), global1.x, ~(-1i)), 1i, -(~abs(global1.x))));
    global1 = (_wgslsmith_mod_vec4_i32(~vec4<i32>(7307i, 1i, var_1.x, -1i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global0.b, global0.b, 0u, var_0.a.d.b), vec4<u32>(4294967295u, var_0.a.b.b, 60786u, var_0.a.b.b)) % vec4<u32>(32u)), select(~vec4<i32>(u_input.a, u_input.a, u_input.a, var_0.a.c.x), -vec4<i32>(-32688i, -35694i, 0i, u_input.a), vec4<bool>(true, true, true, true))) >> (~vec4<u32>(4294967295u, 1u, ~16140u, _wgslsmith_mult_u32(var_0.a.a.b, var_0.a.b.b)) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(-(~min(vec4<i32>(-1i, var_0.a.c.x, u_input.a, -2147483647i), vec4<i32>(41515i, 1i, -40985i, -39901i))), vec4<i32>(-15439i, -var_0.a.c.x, abs(var_0.a.c.x), var_1.x));
    var var_2 = Struct_4(~(countOneBits(~vec3<u32>(16641u, var_0.a.d.b, global0.b)) & vec3<u32>(min(global0.b, 0u), _wgslsmith_mod_u32(47659u, 22147u), 28530u)), global4[_wgslsmith_index_u32(~1u, 6u)]);
    return global2[_wgslsmith_index_u32(var_0.a.a.b, 7u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    global1 = reverseBits(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(global1.x, global1.x, reverseBits(global1.x), ~global1.x)), firstTrailingBit(~(~vec4<i32>(-46366i, global1.x, u_input.a, u_input.a)))));
    var var_0 = ~min(reverseBits(~select(vec2<i32>(1i, 2147483647i), global1.zw, arg_1)), global1.zy);
    var var_1 = global0.a;
    let var_2 = _wgslsmith_f_op_f32(-797f + 1439f);
    let var_3 = Struct_4(~_wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, ~57044u, 10124u), min(vec3<u32>(36938u, 26219u, global0.b), ~vec3<u32>(0u, 0u, arg_0.b))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~abs(abs(vec2<u32>(arg_0.b, arg_0.b))), ~select(vec2<u32>(4294967295u, global0.b) << (vec2<u32>(53138u, arg_0.b) % vec2<u32>(32u)), ~vec2<u32>(arg_0.b, 0u), !vec2<bool>(arg_1, arg_1))), 6u)]);
    return abs(countOneBits(max(abs(vec4<u32>(4294967295u, global0.b, global0.b, 17734u) ^ vec4<u32>(arg_0.b, 3804u, arg_0.b, 87570u)), abs(vec4<u32>(72065u, 1377u, arg_0.b, 1u)))));
}

fn func_1() -> Struct_2 {
    global1 = firstLeadingBit((vec4<i32>(-18582i, -80119i, global1.x ^ u_input.a, _wgslsmith_dot_vec3_i32(global1.wyx, vec3<i32>(u_input.a, -20363i, 32473i))) ^ _wgslsmith_clamp_vec4_i32(~vec4<i32>(global1.x, u_input.a, 0i, u_input.a), vec4<i32>(-2147483647i, u_input.a, 1i, global1.x), vec4<i32>(u_input.a, u_input.a, 29140i, global1.x))) << (func_4(func_2(_wgslsmith_f_op_f32(step(global0.a, global0.a)), vec2<f32>(global0.c, -1106f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -741f, global0.a))), select(true, true, true)) % vec4<u32>(32u)));
    let var_0 = abs(_wgslsmith_add_vec4_i32(select(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global1.x, -2147483647i, -2147483647i), vec4<i32>(global1.x, global1.x, global1.x, -52093i))), vec4<i32>(func_3(global0.b, u_input.a, vec4<u32>(global0.b, 64679u, 1u, global0.b), Struct_4(vec3<u32>(54965u, 72678u, global0.b), global4[_wgslsmith_index_u32(3262u, 6u)])), 1i, -u_input.a, _wgslsmith_mult_i32(global1.x, u_input.a)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(false, true, false, false), select(false, true, false))), min(vec4<i32>(u_input.a | 18648i, _wgslsmith_mod_i32(global1.x, u_input.a), firstTrailingBit(u_input.a), abs(40i)), -vec4<i32>(u_input.a, 0i, 33282i, -1i))));
    var var_1 = vec4<u32>(~(~global0.b), global0.b, ~(~global0.b), ~0u & (global0.b & 0u));
    global1 = vec4<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(var_0.yy), reverseBits(global1.xy)), _wgslsmith_div_vec2_i32(global1.xw, vec2<i32>(39382i, -1956i))), 21974i, u_input.a, 0i);
    let var_2 = global0.c;
    return Struct_2(global2[_wgslsmith_index_u32(var_1.x, 7u)], Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a + global0.c))), _wgslsmith_f_op_f32(649f + global0.c), !all(vec4<bool>(false, false, true, true)))), _wgslsmith_div_u32(0u, countOneBits(var_1.x << (global0.b % 32u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)))))), -vec2<i32>(_wgslsmith_dot_vec4_i32(-var_0, _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, -18814i, var_0.x, u_input.a), var_0)), 2147483647i), global2[_wgslsmith_index_u32(var_1.x, 7u)]);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_3 {
    global0 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a.d.a), func_1().d.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1140f, 945f)) + _wgslsmith_f_op_f32(arg_3.d.a * arg_1.a.a.c)))))), vec2<f32>(-1552f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) * _wgslsmith_f_op_f32(-arg_3.b.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1120f, arg_0.b.c, arg_3.d.a))) - vec3<f32>(global0.c, arg_1.a.d.a, -2275f))))));
    var var_0 = Struct_3(func_1());
    global0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1261f - arg_3.b.c))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, _wgslsmith_f_op_f32(208f + _wgslsmith_f_op_f32(arg_0.a.a - -1863f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.a.b.a) * vec2<f32>(-1806f, -456f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, 198f) * vec2<f32>(arg_0.b.c, 151f)))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -237f), global0.c, arg_3.a.c));
    global4 = array<Struct_3, 6>();
    let var_1 = -((global1.wzy >> (vec3<u32>(func_2(global0.a, vec2<f32>(-344f, arg_3.b.a), vec3<f32>(arg_3.d.a, arg_1.a.a.a, -468f)).b, global0.b >> (89072u % 32u), 55575u) % vec3<u32>(32u))) & vec3<i32>(reverseBits(~u_input.a), -14919i, arg_0.c.x));
    return Struct_3(func_1());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = false;
    let var_2 = func_5(func_1(), Struct_3(func_1()), select(!vec3<bool>(true, !var_1, any(vec2<bool>(false, var_1))), select(select(!vec3<bool>(var_1, var_1, true), select(vec3<bool>(var_1, var_1, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), false), select(!vec3<bool>(var_1, var_1, var_1), select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, var_1), var_1), all(vec2<bool>(var_1, var_1))), false), true), Struct_2(global2[_wgslsmith_index_u32(global0.b >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(25943u, 1u), ~88882u) % 32u), 7u)], global2[_wgslsmith_index_u32(~abs(1u), 7u)], max((vec2<i32>(var_0, var_0) | global1.yz) & (global1.yz & vec2<i32>(-1i, -1i)), vec2<i32>(_wgslsmith_div_i32(-1i, 1i), min(u_input.a, global1.x))), func_2(_wgslsmith_f_op_f32(step(513f, _wgslsmith_f_op_f32(round(global0.a)))), vec2<f32>(_wgslsmith_f_op_f32(-982f - global0.c), global0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    global2 = array<Struct_1, 7>();
    global4 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(~(~var_2.a.a.b), ~109692u, reverseBits(_wgslsmith_sub_u32(35357u, var_2.a.a.b)), 0u), func_4(Struct_1(-1186f, var_2.a.a.b, _wgslsmith_f_op_f32(-var_2.a.d.a)), var_1)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(240f, var_2.a.d.c, var_2.a.b.c, -841f))))), min(vec3<u32>(var_2.a.b.b, global0.b, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.a.b, max(global0.b, 7907u), ~86590u), ~vec3<u32>(global0.b, 8883u, var_2.a.b.b) & ~vec3<u32>(1u, var_2.a.d.b, global0.b))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x) ^ vec3<i32>(var_0, global1.x, var_2.a.c.x), vec3<i32>(-1i) * -vec3<i32>(14437i, var_0, global1.x)), var_2.a.c.x), vec3<i32>(global1.x, ~var_2.a.c.x, _wgslsmith_clamp_i32(~2147483647i, global1.x, var_0) >> (~1u % 32u)));
}

