struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_2,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<i32>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<u32, 19>;

var<private> global4: vec4<i32> = vec4<i32>(50241i, -1i, 0i, 13281i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = -(~(-vec4<i32>(u_input.a, 5866i, u_input.a, -56071i)) | _wgslsmith_mult_vec4_i32(-vec4<i32>(global4.x, -2147483647i, 41250i, 7300i), vec4<i32>(global1.x, 10349i, -1i, global4.x))) << (~select(abs(vec4<u32>(arg_0.x, 1u, arg_0.x, 4294967295u)), vec4<u32>(~global3[_wgslsmith_index_u32(1u, 19u)], firstLeadingBit(global0.x), ~54602u, 39633u), select(select(arg_1, vec4<bool>(false, false, global2.x, false), arg_1), vec4<bool>(false, global2.x, true, false), vec4<bool>(true, global2.x, true, true))) % vec4<u32>(32u));
    global3 = array<u32, 19>();
    var var_1 = ~select(abs(~max(vec4<u32>(arg_0.x, 26852u, 0u, global0.x), vec4<u32>(global0.x, arg_0.x, 77340u, 4835u))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, ~8561u, 81626u, global0.x >> (global0.x % 32u)), ~(~vec4<u32>(arg_0.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16519u, 19u)], 19u)], global3[_wgslsmith_index_u32(arg_0.x, 19u)], 2492u))), false);
    var var_2 = ~_wgslsmith_sub_vec2_i32(-vec2<i32>(abs(u_input.a), global4.x), _wgslsmith_mod_vec2_i32(global1.zx, firstTrailingBit(countOneBits(global1.xw))));
    global1 = ~vec4<i32>(u_input.a, u_input.a, ~13159i, var_2.x);
    return _wgslsmith_mult_u32(~_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_sub_u32(4294967295u, arg_0.x)), min(global0.x, abs(4294967295u))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global0.x | global3[_wgslsmith_index_u32(var_1.x, 19u)], ~var_1.x), var_1.x, _wgslsmith_mod_u32(~arg_0.x, ~var_1.x), ~_wgslsmith_dot_vec3_u32(var_1.yzx, arg_0)), vec4<u32>(global0.x, 4294967295u, 4294967295u, arg_0.x ^ abs(arg_0.x))), 19u)]);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = 1723f;
    let var_1 = false;
    global3 = array<u32, 19>();
    let var_2 = ~(~(~(~(global0.x ^ 85498u))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-287f, -250f, var_1))) - -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -303f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-574f, -352f) - _wgslsmith_f_op_f32(f32(-1f) * -377f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-577f, 1f)))));
    return ~(arg_0.x & ~firstTrailingBit(1u)) >> (_wgslsmith_div_u32(~func_3(arg_0, vec4<bool>(global2.x, var_1, global2.x, true)) & var_2, 45040u) % 32u);
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_3) -> vec4<i32> {
    global2 = arg_3.c.c.a.xyx;
    return vec4<i32>(-2147483647i, max(abs(-_wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, u_input.a, global1.x), global4.zxx)), _wgslsmith_mult_i32(2533i, u_input.a ^ global4.x) | _wgslsmith_sub_i32(arg_1.x, global4.x)), firstLeadingBit(u_input.a), global4.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = 689f;
    let var_1 = abs(firstLeadingBit(global0.x));
    global4 = func_4(1065f, vec3<i32>(-23457i, reverseBits(_wgslsmith_mult_i32(-1i, ~u_input.a)), i32(-1i) * -u_input.a), _wgslsmith_mult_u32(select(3485u, reverseBits(arg_1.d), arg_1.c.a), func_2(vec3<u32>(reverseBits(global3[_wgslsmith_index_u32(4294967295u, 19u)]), firstTrailingBit(global3[_wgslsmith_index_u32(var_1, 19u)]), ~4294967295u), global4.zx)), arg_1);
    global4 = vec4<i32>(_wgslsmith_div_i32(2147483647i, global4.x), u_input.a | _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(6236i), ~global4.x, 35276i), vec3<i32>(u_input.a, global1.x & 16455i, countOneBits(u_input.a))), 0i, abs(global4.x));
    global1 = -firstLeadingBit(-firstLeadingBit(~vec4<i32>(u_input.a, global1.x, -37417i, -8701i)));
    return vec4<i32>(global4.x, 30740i, global1.x, _wgslsmith_mult_i32(u_input.a, _wgslsmith_clamp_i32(-2147483647i, select(1i, 2147483647i, false), -1i))) ^ (_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, global4.x, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -23677i, global4.x, u_input.a), vec4<i32>(-6499i, -9879i, global1.x, -47746i)) << (vec4<u32>(global3[_wgslsmith_index_u32(1u, 19u)], 96070u, 1u, 10114u) % vec4<u32>(32u))) >> (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global3[_wgslsmith_index_u32(73580u, 19u)], arg_1.d, 4294967295u), ~vec4<u32>(var_1, var_1, global0.x, 0u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(global1.x, u_input.a, ~_wgslsmith_dot_vec4_i32(func_1(vec3<bool>(true, global2.x, false), Struct_3(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<f32>(-318f, 1000f, -508f, 566f), Struct_2(true, Struct_1(vec4<bool>(global2.x, global2.x, global2.x, true), global2.x, global2.x, 149f), Struct_1(vec4<bool>(global2.x, true, global2.x, true), global2.x, true, -2466f)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(59938u, 19u)], 19u)], 19u)], vec4<f32>(-329f, -1630f, -1000f, 474f))) << (~vec4<u32>(49248u, 0u, 10976u, 47286u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-16435i, global1.x, 62843i, 24172i) & vec4<i32>(u_input.a, 38955i, global1.x, 10340i), vec4<i32>(global4.x, 3603i, 18019i, global4.x), vec4<i32>(global1.x, 1i, global4.x, u_input.a))), u_input.a);
    global1 = ~(vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_add_i32(global1.x, u_input.a ^ 11001i), global4.x) | firstTrailingBit(reverseBits(vec4<i32>(global1.x, -48844i, 2147483647i, u_input.a))));
    global4 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i << ((30606u >> (global0.x % 32u)) % 32u), global1.x << ((67266u >> (global3[_wgslsmith_index_u32(50944u, 19u)] % 32u)) % 32u), 33412i, min(_wgslsmith_div_i32(global4.x, global1.x), 0i)), -vec4<i32>(40i, ~u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a), func_1(vec3<bool>(global2.x, false, false), Struct_3(vec4<bool>(global2.x, false, false, true), vec4<f32>(-1187f, -428f, 1835f, -552f), Struct_2(false, Struct_1(vec4<bool>(global2.x, true, true, global2.x), false, global2.x, 585f), Struct_1(vec4<bool>(true, global2.x, global2.x, global2.x), false, global2.x, -1000f)), global0.x, vec4<f32>(839f, -327f, 518f, -707f))).x)), _wgslsmith_add_vec4_i32(~countOneBits(func_4(1694f, global4.yyy, 4294967295u, Struct_3(vec4<bool>(true, global2.x, global2.x, true), vec4<f32>(1000f, -293f, 912f, 766f), Struct_2(global2.x, Struct_1(vec4<bool>(false, global2.x, true, global2.x), global2.x, false, 1000f), Struct_1(vec4<bool>(false, false, global2.x, global2.x), global2.x, true, -1000f)), 107767u, vec4<f32>(620f, 634f, 891f, 456f)))), _wgslsmith_sub_vec4_i32(vec4<i32>(func_4(1104f, global1.zyx, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], Struct_3(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<f32>(-179f, 2089f, 617f, -565f), Struct_2(true, Struct_1(vec4<bool>(true, global2.x, false, global2.x), global2.x, global2.x, 211f), Struct_1(vec4<bool>(false, true, global2.x, false), global2.x, global2.x, -312f)), 0u, vec4<f32>(1034f, 331f, -135f, -821f))).x, 0i, 17484i, _wgslsmith_dot_vec3_i32(global1.zww, vec3<i32>(global1.x, 1i, 53296i))), firstLeadingBit(select(vec4<i32>(u_input.a, global1.x, global4.x, global4.x), vec4<i32>(global4.x, global4.x, 1i, global4.x), vec4<bool>(false, false, true, global2.x))))));
    var var_0 = -(~(~(-vec4<i32>(2147483647i, 2147483647i, 2147483647i, 34783i))));
    global2 = !select(vec3<bool>(true, !global2.x, true), vec3<bool>(global2.x, !any(vec2<bool>(global2.x, global2.x)), min(20657u, global3[_wgslsmith_index_u32(1u, 19u)]) > min(82115u, 81596u)), select(select(!vec3<bool>(true, true, global2.x), select(vec3<bool>(true, true, false), vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, false, global2.x)), select(true, false, global2.x)), select(vec3<bool>(true, true, true), !vec3<bool>(true, global2.x, global2.x), vec3<bool>(true, global2.x, global2.x)), !(!vec3<bool>(global2.x, false, false))));
    var var_1 = global3[_wgslsmith_index_u32(51732u, 19u)];
    global3 = array<u32, 19>();
    global2 = select(!select(select(!vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, true, global2.x), true), vec3<bool>(true, global2.x, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, false, true), false), vec3<bool>(global2.x, true, true), vec3<bool>(any(global2.zx), all(vec3<bool>(global2.x, true, false)), true)), select(select(vec3<bool>(global2.x, true, true), !vec3<bool>(false, true, global2.x), true), vec3<bool>(false, !global2.x, global2.x), true)), reverseBits(~abs(u_input.a)) < _wgslsmith_clamp_i32(global1.x >> (34053u % 32u), -min(-30726i, global4.x), var_0.x));
    global3 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(func_4(-356f, vec3<i32>(var_0.x, -27872i, global1.x), global0.x, Struct_3(vec4<bool>(global2.x, true, false, global2.x), vec4<f32>(-1685f, -1310f, -520f, 1000f), Struct_2(global2.x, Struct_1(vec4<bool>(false, true, global2.x, false), false, global2.x, 566f), Struct_1(vec4<bool>(global2.x, global2.x, global2.x, false), global2.x, true, -1000f)), global3[_wgslsmith_index_u32(52557u, 19u)], vec4<f32>(1913f, -1737f, -2288f, 1399f))).x | -u_input.a), u_input.a, 0i, global1.x), ~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(918u, 19u)], 115809u) | vec3<u32>(global0.x, 4696u, global0.x), vec3<u32>(1u, global0.x, global0.x)), select(vec3<u32>(1u, global3[_wgslsmith_index_u32(40994u, 19u)], 1u), vec3<u32>(global3[_wgslsmith_index_u32(1u, 19u)], 0u, 0u), vec3<bool>(global2.x, global2.x, global2.x)) | vec3<u32>(1u, 0u, 0u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -751f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-791f, 162f) * _wgslsmith_div_f32(-385f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -793f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(832f - -1009f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-973f, _wgslsmith_div_f32(-1333f, 272f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-346f)) - _wgslsmith_f_op_f32(sign(1095f)))))));
}

