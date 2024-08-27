struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1047f, -860f);

var<private> global1: array<u32, 8>;

var<private> global2: array<bool, 14> = array<bool, 14>(false, false, false, true, true, false, false, true, true, true, false, true, true, false);

var<private> global3: array<vec2<u32>, 29>;

var<private> global4: array<u32, 18> = array<u32, 18>(0u, 3519u, 38819u, 84642u, 63774u, 6684u, 0u, 33495u, 1u, 1u, 50914u, 14338u, 12633u, 54366u, 24350u, 50137u, 0u, 8315u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-20805i, 2808i, 6436i), vec3<i32>(-40819i, arg_1, -2147483647i)), vec3<i32>(arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1, u_input.a), vec3<i32>(0i, 2147483647i, 0i)), u_input.a)), select(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, u_input.a, 1i), vec3<i32>(arg_1, 0i, u_input.a)), vec3<i32>(-13084i, 2147483647i, -70061i)), vec3<i32>(_wgslsmith_div_i32(arg_1, 12762i), -1i, arg_1), select(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), false), vec3<bool>(global2[_wgslsmith_index_u32(3010u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)], arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = func_2(select(!select(vec2<bool>(global2[_wgslsmith_index_u32(40167u, 14u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24009u, 18u)], 14u)]), select(vec2<bool>(true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 18u)], 14u)]), vec2<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 18u)], 14u)], false), vec2<bool>(global2[_wgslsmith_index_u32(77374u, 14u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 14u)])), select(vec2<bool>(true, false), vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 14u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 14u)]))), vec2<bool>(true, true), true), -arg_3.a.x, 149f);
    var var_2 = arg_0;
    global3 = array<vec2<u32>, 29>();
    var var_3 = vec3<u32>(~global4[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(29000u, 18u)], global4[_wgslsmith_index_u32(arg_2, 18u)]) ^ 52790u, 8u)]), 18u)], countOneBits(12945u), 11461u);
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = func_2(vec2<bool>(true, !select(1285f > global0.x, true, true)), 2147483647i, -497f);
    var var_1 = _wgslsmith_add_u32(57683u, global4[_wgslsmith_index_u32(54206u, 18u)]);
    let var_2 = func_3(func_2(select(select(vec2<bool>(true, true), !vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 8u)], 14u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16513u, 8u)], 14u)]), select(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 14u)]), vec2<bool>(global2[_wgslsmith_index_u32(33350u, 14u)], false), false)), !(!vec2<bool>(global2[_wgslsmith_index_u32(66540u, 14u)], global2[_wgslsmith_index_u32(5838u, 14u)])), any(vec3<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 14u)], true, true))), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-616f, _wgslsmith_f_op_f32(trunc(-1155f)))))), ~_wgslsmith_sub_vec2_i32(arg_0.zw, vec2<i32>(arg_0.x, ~u_input.a)), global1[_wgslsmith_index_u32(8523u << (global1[_wgslsmith_index_u32(50530u, 8u)] % 32u), 8u)], func_3(Struct_1(~_wgslsmith_mult_vec3_i32(arg_1.a, arg_1.a)), func_2(vec2<bool>(true & global2[_wgslsmith_index_u32(52424u, 14u)], true), arg_0.x, _wgslsmith_f_op_f32(global0.x - 670f)).a.yx, ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19612u, 8u)], 18u)], 8u)], 8u)], 8u)] ^ 4294967295u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)] ^ 48962u), 18u)], 18u)], arg_1));
    let var_3 = ~_wgslsmith_sub_vec2_u32(reverseBits(~(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 29u)] ^ global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(75561u, 8u)], 29u)])), firstLeadingBit(~_wgslsmith_sub_vec2_u32(global3[_wgslsmith_index_u32(82438u, 29u)], global3[_wgslsmith_index_u32(89655u, 29u)])));
    var var_4 = vec2<i32>(-1i, _wgslsmith_mult_i32(~_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(var_2.a.zx, var_0.a.zx)), ~0i));
    return -abs(-525i);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global2 = array<bool, 14>();
    global1 = array<u32, 8>();
    let var_0 = _wgslsmith_add_i32(arg_2.a.x, arg_2.a.x);
    let var_1 = Struct_1(arg_2.a);
    let var_2 = ~arg_2.a.x == (min(-max(44712i, var_1.a.x), countOneBits(-57108i)) << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)] % 32u));
    return var_1;
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(max(~firstTrailingBit(u_input.a), func_4(select(vec4<i32>(0i, 0i, 15467i, 14789i) >> (vec4<u32>(global4[_wgslsmith_index_u32(1u, 18u)], 67299u, 0u, 10860u) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.a, u_input.a, 19817i), !vec4<bool>(false, global2[_wgslsmith_index_u32(7286u, 14u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(83425u, 8u)], 18u)], 8u)], 14u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31999u, 8u)], 18u)], 8u)], 18u)], 14u)])), func_3(Struct_1(vec3<i32>(u_input.a, u_input.a, -16603i)), -vec2<i32>(8928i, -1i), ~global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 8u)], 18u)], func_2(vec2<bool>(global2[_wgslsmith_index_u32(0u, 14u)], true), -29360i, global0.x)))), -u_input.a, func_2(vec2<bool>(all(vec2<bool>(true, false)), false), u_input.a, -877f), select(_wgslsmith_mod_vec4_i32(min(vec4<i32>(-26268i, 42253i, u_input.a, u_input.a) ^ vec4<i32>(1i, 3181i, u_input.a, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, -13965i), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(2147483647i, u_input.a, u_input.a, -2147483647i)), -2147483647i, u_input.a, u_input.a)), vec4<i32>(-_wgslsmith_mult_i32(u_input.a, 24830i), countOneBits(i32(-1i) * -1i), _wgslsmith_clamp_i32(60717i, -1i, 50084i), u_input.a), vec4<bool>(global2[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(24773u, 8u)] >> (8149u % 32u)) >> (abs(global4[_wgslsmith_index_u32(4294967295u, 18u)]) % 32u), 14u)], !(global0.x >= global0.x), -787f >= global0.x, !(global2[_wgslsmith_index_u32(0u, 14u)] | true))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(floor(-762f)), global0.x);
    global2 = array<bool, 14>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1116f, -696f));
    var var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1116f)) < _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(exp2(global0.x))))) && true;
    return func_2(select(vec2<bool>(var_0.a.x > -u_input.a, !(false != global2[_wgslsmith_index_u32(37262u, 14u)])), !(!(!vec2<bool>(global2[_wgslsmith_index_u32(11650u, 14u)], false))), !select(vec2<bool>(true, true), !vec2<bool>(global2[_wgslsmith_index_u32(10187u, 14u)], false), global2[_wgslsmith_index_u32(41558u, 14u)])), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-462f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -834f)))));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> StorageBuffer {
    var var_0 = select(arg_3 >> (~vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25246u, 8u)], 8u)], 18u)], global1[_wgslsmith_index_u32(28128u, 8u)]), 8u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 18u)], 4294967295u, 4294967295u), vec3<u32>(4294967295u, 27242u, 2922u)), 4294967295u, 4294967295u) % vec4<u32>(32u)), arg_3, false);
    global4 = array<u32, 18>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(249f, -883f, global0.x, 1000f), vec4<f32>(global0.x, -554f, arg_1, 150f))))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-367f, arg_1, global0.x, arg_1), vec4<f32>(arg_1, _wgslsmith_f_op_f32(-445f + arg_1), 1000f, -220f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(772f, 1148f, -1064f, arg_1))))))));
    let var_2 = !select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)] >> (global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 8u)] % 32u), 14u)], true, select(global2[_wgslsmith_index_u32(4294967295u, 14u)], true, global2[_wgslsmith_index_u32(0u, 14u)])), select(select(vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54732u, 8u)], 8u)], 14u)], false, false, global2[_wgslsmith_index_u32(44969u, 14u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 14u)], false), true), select(vec4<bool>(false, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 14u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 8u)], 18u)], 14u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(22170u, 14u)], global2[_wgslsmith_index_u32(52287u, 14u)], false), true), true), true), !(!vec4<bool>(true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 14u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 14u)], true)), select(select(vec4<bool>(global2[_wgslsmith_index_u32(11947u, 14u)], false, global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(66673u, 18u)], 8u)], 14u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 14u)], false, false, global2[_wgslsmith_index_u32(1u, 14u)]), vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 14u)], global2[_wgslsmith_index_u32(66033u, 14u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 8u)], 8u)], 18u)], 18u)], 14u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(83704u, 18u)], 8u)], 8u)], 18u)], 18u)], 8u)], 14u)], false, true)), any(vec4<bool>(false, global2[_wgslsmith_index_u32(38531u, 14u)], global2[_wgslsmith_index_u32(9477u, 14u)], false))), select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 14u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 14u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 8u)], 14u)]), !vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(20590u, 14u)])), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(66593u, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40565u, 8u)], 18u)]), 14u)], true, 1072f < var_1.x, false)));
    let var_3 = any(!vec4<bool>(false, (var_2.x | true) || true, global2[_wgslsmith_index_u32(countOneBits(~global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 18u)], 18u)], 8u)]), 14u)], true));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 1202f, arg_1, var_1.x)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = ~(~var_0);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(422f, global0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + global0.x))));
    var var_3 = u_input.a;
    global1 = array<u32, 8>();
    var var_4 = Struct_1(-((-vec3<i32>(30468i, u_input.a, u_input.a) ^ ~vec3<i32>(4256i, -77728i, 23336i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(5525i, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, 14690i, u_input.a), firstTrailingBit(vec3<i32>(u_input.a, 14837i, u_input.a)))));
    var var_5 = var_2.x;
    let x = u_input.a;
    s_output = func_6(Struct_1(-(vec3<i32>(-1i) * -vec3<i32>(u_input.a, 2147483647i, u_input.a))), global0.x, func_1(), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_4.a.x, var_4.a.x | var_4.a.x, 0i, firstLeadingBit(56442i)), -((vec4<i32>(u_input.a, var_4.a.x, 1i, -12089i) << (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(var_0, 8u)], 15568u, 0u) % vec4<u32>(32u))) ^ select(vec4<i32>(-38917i, u_input.a, u_input.a, 0i), vec4<i32>(-2147483647i, var_4.a.x, 0i, u_input.a), global2[_wgslsmith_index_u32(var_0, 14u)])), min(_wgslsmith_add_vec4_i32(-vec4<i32>(var_4.a.x, var_4.a.x, var_4.a.x, u_input.a), vec4<i32>(2147483647i, u_input.a, 1i, var_4.a.x)), vec4<i32>(-2147483647i, var_4.a.x, 55497i, 2147483647i) | (vec4<i32>(u_input.a, -1i, -1i, 3008i) >> (vec4<u32>(0u, 0u, var_0, 31743u) % vec4<u32>(32u))))));
}

