struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(i32(-2147483648), 2147483647i, -1996i, i32(-2147483648), 0i, -15325i, -38390i, 0i, i32(-2147483648), 26591i, 2147483647i, i32(-2147483648), 2147483647i, -1i);

var<private> global1: i32;

var<private> global2: vec3<f32>;

var<private> global3: vec2<i32>;

var<private> global4: array<u32, 8> = array<u32, 8>(0u, 4294967295u, 25379u, 4294967295u, 1u, 32821u, 0u, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: u32, arg_3: bool) -> i32 {
    global0 = array<i32, 14>();
    var var_0 = select(select(select(!select(vec4<bool>(arg_3, true, true, arg_3), vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, false, arg_3, arg_3)), vec4<bool>(arg_3, false == arg_3, -1192f > arg_0.x, true & arg_3), !vec4<bool>(arg_3, false, true, arg_3)), select(vec4<bool>(true, 294f < global2.x, true, true), vec4<bool>(!arg_3, false, u_input.a > u_input.a, true), arg_3), !select(select(vec4<bool>(arg_3, arg_3, false, false), vec4<bool>(true, arg_3, true, false), true), !vec4<bool>(arg_3, arg_3, arg_3, true), vec4<bool>(false, arg_3, arg_3, arg_3))), select(vec4<bool>(any(select(vec3<bool>(false, false, arg_3), vec3<bool>(arg_3, false, true), arg_3)), !any(vec2<bool>(arg_3, arg_3)), all(select(vec4<bool>(false, arg_3, arg_3, true), vec4<bool>(true, false, arg_3, arg_3), arg_3)), true), select(!select(vec4<bool>(arg_3, arg_3, false, arg_3), vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, false, false, arg_3)), vec4<bool>(arg_3, false, true, false), !select(vec4<bool>(arg_3, arg_3, true, false), vec4<bool>(false, arg_3, false, arg_3), vec4<bool>(false, arg_3, arg_3, false))), any(!select(vec4<bool>(true, arg_3, arg_3, true), vec4<bool>(arg_3, arg_3, false, true), vec4<bool>(arg_3, arg_3, arg_3, arg_3)))), all(!vec3<bool>(false, false, any(vec2<bool>(true, true)))));
    global2 = vec3<f32>(296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f))), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1112f)));
    let var_1 = Struct_3(_wgslsmith_add_vec4_u32(~(~max(vec4<u32>(11167u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_2, 8u)], 8u)], 4294967295u, 4294967295u), vec4<u32>(1u, 18051u, arg_2, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19926u, 8u)] & u_input.a, 8u)], firstLeadingBit(4294967295u), ~39738u, 4294967295u), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, 91752u, 92113u, global4[_wgslsmith_index_u32(0u, 8u)]), vec4<u32>(0u, 72823u, 4294967295u, arg_2), vec4<u32>(83354u, 69561u, 0u, arg_1)), vec4<u32>(0u, arg_1, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 8u)], 8u)]) | vec4<u32>(68280u, 8053u, 0u, u_input.a)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-729f, arg_0.x, -1048f, arg_0.x) * vec4<f32>(global2.x, arg_0.x, -1361f, global2.x)))), select(firstLeadingBit(~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(arg_1, 14u)], 1i, global0[_wgslsmith_index_u32(arg_1, 14u)])), reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(47284u, 14u)], 33400i, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)])) & (vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], -40349i, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 8u)], 14u)], -2147483647i) ^ vec4<i32>(0i, 0i, -33656i, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_2, 8u)], 8u)], 14u)])), vec4<bool>(any(var_0.zzy), var_0.x | false, true, all(var_0.wyw)))), 37497u, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, min(1u, abs(4294967295u))), vec2<u32>(countOneBits(1u), ~1u)), ~(2034u >> (arg_2 % 32u)));
    let var_2 = var_1.a.xzx;
    return max(_wgslsmith_sub_i32(~1i, var_1.b.b.x << (var_1.d.x % 32u)), _wgslsmith_add_i32(~(-reverseBits(-1i)), _wgslsmith_mult_i32(max(~(-11576i), -17882i), -global3.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(27942u, 4294967295u) | ~vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 8u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 8u)], 8u)]), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(0u, 8u)], 0u), vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 8u)], global4[_wgslsmith_index_u32(4294967295u, 8u)])))) << (~(abs(vec2<u32>(u_input.a, 0u)) >> ((vec2<u32>(28003u, 0u) | vec2<u32>(global4[_wgslsmith_index_u32(u_input.a, 8u)], global4[_wgslsmith_index_u32(4294967295u, 8u)])) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global1 = 33842i;
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(-1i, arg_2.x)), -arg_1.b.xz), ~(arg_1.b.zw | (vec2<i32>(-1i) * -vec2<i32>(arg_0.b, 2147483647i))));
    let var_1 = ~45306u;
    return abs(vec4<u32>(var_0.x, 19112u, var_0.x, ~_wgslsmith_div_u32(var_0.x, var_0.x)) ^ ~reverseBits(vec4<u32>(0u, 43874u, 5691u, 0u) & vec4<u32>(1u, 0u, u_input.a, global4[_wgslsmith_index_u32(29216u, 8u)])));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 8u)], 34050u, u_input.a, 608u), vec4<u32>(1u, 46413u, 4294967295u, 0u)) & vec4<u32>(1u, global4[_wgslsmith_index_u32(32689u, 8u)], u_input.a, 33990u), vec4<u32>(abs(57710u), min(u_input.a, 0u), firstTrailingBit(u_input.a), 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, global4[_wgslsmith_index_u32(4239u, 8u)]), vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 8u)], global4[_wgslsmith_index_u32(u_input.a, 8u)], u_input.a, global4[_wgslsmith_index_u32(0u, 8u)]))), func_4(Struct_2(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(35085u, 14u)]), reverseBits(global0[_wgslsmith_index_u32(u_input.a, 14u)])), Struct_1(vec4<f32>(global2.x, global2.x, global2.x, 1000f), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 8u)], 14u)], 16564i, global0[_wgslsmith_index_u32(0u, 14u)], 17512i))), vec3<i32>(func_3(global2.xy, global4[_wgslsmith_index_u32(u_input.a, 8u)], u_input.a, false), -1i, 0i))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(127f * -869f) + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(195f - -1321f), arg_0.x), vec4<i32>(firstLeadingBit(firstTrailingBit(global3.x)), 0i, 17648i, -(i32(-1i) * -2147483647i))), u_input.a, select(vec2<u32>(49612u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~20481u), 8u)], 8u)]), countOneBits(~vec2<u32>(global4[_wgslsmith_index_u32(u_input.a, 8u)], 42738u)), arg_1.yz), u_input.a);
    global2 = arg_0.xyz;
    var var_1 = abs(_wgslsmith_mult_u32(62444u, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~u_input.a, 8u)], 8u)], 1u)));
    var var_2 = select(arg_1, select(vec4<bool>(!all(vec3<bool>(false, arg_1.x, arg_1.x)), ~(-43900i) < global0[_wgslsmith_index_u32(~4294967295u, 14u)], arg_1.x, arg_1.x && true), arg_1, !vec4<bool>(any(vec4<bool>(true, true, true, false)), true, !arg_1.x, !arg_1.x)), arg_1);
    var_2 = arg_1;
    return Struct_2(2147483647i, global3.x >> (_wgslsmith_clamp_u32(99277u, global4[_wgslsmith_index_u32(8783u, 8u)] ^ var_0.a.x, u_input.a) % 32u));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> bool {
    let var_0 = select(!vec2<bool>(all(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0))), all(!vec4<bool>(arg_0, arg_0, false, arg_0))), select(!vec2<bool>(arg_0, select(false, false, arg_0)), vec2<bool>(true, true), arg_0), !(!select(vec2<bool>(arg_0, true), !vec2<bool>(arg_0, arg_0), all(vec4<bool>(true, arg_0, false, true)))));
    let var_1 = func_3(vec2<f32>(_wgslsmith_f_op_f32(step(global2.x, 872f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1818f, 657f), _wgslsmith_f_op_f32(-714f + -1418f))), global2.x))), _wgslsmith_div_u32(u_input.a, 35137u & countOneBits(u_input.a)), _wgslsmith_add_u32(0u, ~135959u), any(vec3<bool>(true, all(vec2<bool>(false, true)) != (false & var_0.x), select(true, any(vec4<bool>(arg_0, true, true, arg_0)), all(vec4<bool>(false, arg_0, var_0.x, true))))));
    let var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(func_4(Struct_2(min(-32845i, 3273i), global0[_wgslsmith_index_u32(4743u, 14u)]), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, -404f, 1094f, -1341f))), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b, arg_1.b, -2124i, 0i), vec4<i32>(2147483647i, var_1, global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 8u)], 14u)]))), vec3<i32>(_wgslsmith_mod_i32(-20883i, -1i), 22391i, firstLeadingBit(global3.x))).zw, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(30784u, u_input.a) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), ~vec2<u32>(69775u, global4[_wgslsmith_index_u32(4294967295u, 8u)])), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(72886u, 8u)], 8u)], 0u))), _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(5810u, 8u)], 8u)]) & ~(~vec2<u32>(1u, 4294967295u)), _wgslsmith_add_vec2_u32(~select(vec2<u32>(global4[_wgslsmith_index_u32(u_input.a, 8u)], u_input.a), vec2<u32>(u_input.a, 10543u), true), select(vec2<u32>(130763u, global4[_wgslsmith_index_u32(1u, 8u)]), vec2<u32>(0u, u_input.a), var_0) | _wgslsmith_sub_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(u_input.a, 8u)], 10535u), vec2<u32>(39013u, 0u)))));
    let var_3 = abs(vec3<i32>(44815i, -2147483647i, 1i));
    global4 = array<u32, 8>();
    return true;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32) -> StorageBuffer {
    global1 = _wgslsmith_add_i32(~31658i, 39417i);
    global0 = array<i32, 14>();
    let var_0 = vec2<bool>(arg_1, func_5(select(true, true, any(vec3<bool>(arg_1, arg_1, arg_1))), func_2(vec4<f32>(-922f, global2.x, -148f, global2.x), vec4<bool>(false, arg_1, arg_1, true))) && func_5(!func_5(arg_1, Struct_2(global3.x, global3.x)), Struct_2(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)]), ~(-2147483647i))));
    global2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), arg_2))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(floor(-686f)))));
    let var_1 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(174f * global2.x))), _wgslsmith_f_op_f32(-709f * _wgslsmith_f_op_f32(-arg_2)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1112f, -1141f, false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-791f, 1000f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-370f * 987f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1528f, 723f)), _wgslsmith_f_op_f32(428f * 568f), all(vec3<bool>(var_0.x, arg_1, true)))), var_0.x))));
    return StorageBuffer(_wgslsmith_add_u32(~(~countOneBits(arg_0)), arg_0), ~(~(-abs(-2147483647i))), abs(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)]) >> (vec2<u32>(arg_0, 1u) % vec2<u32>(32u))), vec2<u32>(~arg_0, 0u))), var_1.x, ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-28276i, i32(-1i) * -1838i);
    global0 = array<i32, 14>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1353f, -1475f), -1319f, _wgslsmith_f_op_f32(sign(global2.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1363f)), global2.x, _wgslsmith_f_op_f32(min(global2.x, 1159f))))));
    var var_2 = vec2<u32>(0u, ~4294967295u);
    let var_3 = 57822i;
    global4 = array<u32, 8>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_2.x, 11943u), ~abs(~1954u)), false, global2.x);
}

