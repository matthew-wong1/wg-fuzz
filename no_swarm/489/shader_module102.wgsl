struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: array<vec2<f32>, 12>;

var<private> global2: vec3<i32> = vec3<i32>(43843i, 1i, 12330i);

var<private> global3: Struct_1 = Struct_1(vec3<i32>(-13373i, 1i, 0i), 1i, -668f, false);

var<private> global4: vec2<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = all(!vec4<bool>(all(vec4<bool>(global4.x, true, true, true)), _wgslsmith_mult_u32(2884u, 0u) <= _wgslsmith_sub_u32(1u, u_input.d), select(arg_0.x <= arg_0.x, any(vec4<bool>(global3.d, global3.d, global3.d, arg_3.d)), true || global3.d), global3.d));
    var var_1 = !vec4<bool>(true, global0[_wgslsmith_index_u32(0u | (u_input.d | 4294967295u), 8u)] & false, true, !any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 8u)], true)));
    global2 = _wgslsmith_mult_vec3_i32(~(vec3<i32>(countOneBits(-31179i), firstTrailingBit(u_input.a.x), -84471i) << ((arg_0 >> ((arg_0 << (vec3<u32>(arg_0.x, u_input.d, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(~(arg_3.a.x & -2147483647i) | global3.b, u_input.e.x, arg_3.b & (_wgslsmith_mod_i32(global3.b, arg_2) | (global3.a.x & 1i))));
    var var_2 = ~global3.b;
    var var_3 = vec4<u32>(~u_input.d, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_0.x, 4294967295u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.yx << (arg_0.yx % vec2<u32>(32u)), vec2<u32>(u_input.d, u_input.d)), _wgslsmith_mod_vec2_u32(arg_0.zy, arg_0.xx))), arg_0.x, _wgslsmith_add_u32(1u, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.d, arg_0.x), 65943u), arg_0.x)));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i) * -vec4<i32>(-2835i, arg_3.a.x, u_input.c.x, -2935i), _wgslsmith_mod_vec4_i32(vec4<i32>(global3.b, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(global2.x, u_input.e.x, global2.x, 31485i)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(41137u, 8u)], arg_3.d, arg_3.d, false), vec4<bool>(var_1.x, true, global4.x, global0[_wgslsmith_index_u32(6496u, 8u)]), false), select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(true, true, true, false), vec4<bool>(true, var_1.x, global4.x, global4.x)), global0[_wgslsmith_index_u32(~1u, 8u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(abs(1i), ~global3.a.x, 1798i ^ global2.x, -27426i), _wgslsmith_add_vec4_i32(vec4<i32>(27925i, u_input.a.x, global2.x, global2.x), vec4<i32>(u_input.c.x, -2147483647i, arg_3.b, arg_2)) & -vec4<i32>(arg_2, arg_2, -2681i, -30362i))), _wgslsmith_mod_vec4_i32(vec4<i32>(~1i, _wgslsmith_mult_i32(arg_3.b, _wgslsmith_sub_i32(arg_3.b, 1i)), 1i, global2.x), _wgslsmith_sub_vec4_i32(min(-vec4<i32>(global3.b, arg_2, global2.x, 2147483647i), abs(vec4<i32>(-2147483647i, arg_3.a.x, -29719i, arg_2))), reverseBits(firstLeadingBit(vec4<i32>(global3.a.x, -8092i, 0i, 20783i))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global3 = Struct_1(vec3<i32>(arg_3.a.x, min(2147483647i, global3.b), (select(2147483647i, arg_1.a.x, true) >> (u_input.d % 32u)) >> (u_input.d % 32u)), ~(-1i), _wgslsmith_div_f32(-544f, -444f), _wgslsmith_div_u32(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, 13486u) >> (vec4<u32>(39024u, 1u, u_input.d, u_input.d) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(29261u, 0u, 74656u, u_input.d), vec4<u32>(0u, 54739u, u_input.d, 0u)))) < 0u);
    global4 = !vec2<bool>(false, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.d, 4294967295u), 8u)] && all(select(vec2<bool>(false, global4.x), vec2<bool>(arg_0, true), false)));
    global2 = arg_1.a;
    global3 = Struct_1(~vec3<i32>(~(-1i), 0i, func_3(~vec3<u32>(u_input.d, 1u, u_input.d), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_clamp_i32(-35033i, arg_1.b, arg_3.b), arg_1)), _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, arg_3.a.x, arg_3.b, global3.b), vec4<i32>(u_input.a.x, 23023i, arg_3.a.x, arg_3.a.x)), -(arg_2 ^ arg_2)) | (i32(-1i) * -39643i), _wgslsmith_f_op_f32(global3.c * _wgslsmith_f_op_f32(-arg_3.c)), select(!(!any(vec4<bool>(false, arg_0, arg_0, arg_3.d))), true, ((false | global3.d) == false) && arg_1.d));
    let var_0 = Struct_1(global3.a, -21776i ^ (arg_3.a.x | _wgslsmith_mod_i32(global3.a.x, _wgslsmith_mult_i32(arg_1.b, -2147483647i))), global3.c, arg_0);
    return Struct_1(_wgslsmith_sub_vec3_i32(u_input.a, ~vec3<i32>(~arg_1.a.x, countOneBits(-35345i), _wgslsmith_sub_i32(arg_3.a.x, 1166i))), 21665i, -1025f, !all(!select(vec3<bool>(arg_3.d, arg_1.d, global0[_wgslsmith_index_u32(u_input.d, 8u)]), vec3<bool>(arg_3.d, true, arg_0), false)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(select(true, false, global4.x), true, !any(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 8u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 8u)]), global3.d), !vec2<bool>(true, global3.d), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 8u)], true))), true);
    var var_1 = ~1u;
    let var_2 = _wgslsmith_dot_vec4_u32(countOneBits(min(min(vec4<u32>(u_input.d, 5585u, 0u, 30431u), abs(vec4<u32>(13537u, 26918u, 101865u, 4294967295u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.d, 148313u, 1u), abs(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d))))), ~_wgslsmith_div_vec4_u32(vec4<u32>(abs(u_input.d), u_input.d, reverseBits(4294967295u), _wgslsmith_mod_u32(4294967295u, 1524u)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(13388u, u_input.d, 8475u, u_input.d)), countOneBits(vec4<u32>(0u, u_input.d, 1u, 62346u)))));
    global3 = arg_0;
    var_0 = !select(!(!(!vec4<bool>(false, var_0.x, arg_0.d, arg_0.d))), vec4<bool>(true, true, true, true), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(35552u, 8u)], false, true), select(select(vec4<bool>(arg_0.d, false, true, global3.d), vec4<bool>(true, false, false, true), global3.d), select(vec4<bool>(var_0.x, global3.d, global0[_wgslsmith_index_u32(var_2, 8u)], var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], true, false), vec4<bool>(arg_0.d, true, false, global3.d)), !var_0.x), vec4<bool>(select(global0[_wgslsmith_index_u32(55247u, 8u)], global3.d, global4.x), !arg_0.d, true, true)));
    return func_2(arg_0.d, func_2(true, arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-33392i, 32719i, _wgslsmith_mod_i32(u_input.b, -4680i)), max(arg_0.a, vec3<i32>(arg_0.b, -15696i, 15860i))), arg_0), -(~0i), func_2(global0[_wgslsmith_index_u32(1u, 8u)] && select(all(var_0.yzz), true, arg_0.a.x != arg_0.b), arg_0, -(~u_input.b) >> (~1u % 32u), Struct_1(~vec3<i32>(global2.x, 2147483647i, 21971i), global3.a.x, global3.c, (global3.b ^ 37496i) < _wgslsmith_mult_i32(-41817i, 46135i))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~vec3<i32>(_wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 29443i), arg_0.a.yz)), ~36284i ^ (global2.x >> (u_input.d % 32u)), arg_0.b) << (vec3<u32>(~(~1u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d, u_input.d, 4294967295u), ~vec3<u32>(0u, u_input.d, 70616u)), vec3<u32>(~21895u, 1u, u_input.d)), ~((u_input.d | u_input.d) ^ ~1u)) % vec3<u32>(32u));
    var var_1 = 7599u ^ u_input.d;
    return func_4(Struct_1(arg_0.a, var_0.x, global3.c, !func_2(false, arg_0, global2.x, Struct_1(vec3<i32>(arg_0.a.x, 0i, 1i), global3.a.x, -231f, global4.x)).d | (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, 0u, 4294967295u), vec4<u32>(u_input.d, 4294967295u, 35674u, 4294967295u)) > 1u)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    var var_0 = func_5(Struct_1(func_5(Struct_1(arg_1.a, 1i, _wgslsmith_f_op_f32(-arg_1.c), true)).a, -func_5(arg_1).b | ~global2.x, _wgslsmith_f_op_f32(-985f + _wgslsmith_f_op_f32(ceil(-213f))), arg_0.d));
    var var_1 = var_0.d != !any(select(select(vec4<bool>(arg_0.d, global3.d, arg_0.d, true), vec4<bool>(global3.d, false, arg_0.d, arg_0.d), vec4<bool>(arg_1.d, global4.x, arg_0.d, false)), !vec4<bool>(var_0.d, global0[_wgslsmith_index_u32(u_input.d, 8u)], false, global4.x), vec4<bool>(var_0.d, global3.d, true, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(781f, 761f, arg_0.c)) * vec3<f32>(-1087f, 500f, -1628f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c), 277f, _wgslsmith_f_op_f32(var_0.c * var_0.c)))));
    global2 = -u_input.a;
    var var_3 = func_4(arg_0).d;
    return true;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global3 = Struct_1(vec3<i32>(-arg_0.b, 17300i, select(firstLeadingBit(_wgslsmith_mod_i32(global2.x, -1i)), 1i, global3.d)), _wgslsmith_dot_vec2_i32(arg_0.a.yx ^ firstLeadingBit(u_input.a.xz >> (vec2<u32>(4294967295u, 11441u) % vec2<u32>(32u))), vec2<i32>(-2147483647i, 1i)), -163f, global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(max(~81125u, ~u_input.d), ~(~0u))), 8u)]);
    let var_0 = u_input.c.x;
    var var_1 = select(-vec3<i32>(2147483647i, (global3.a.x | global2.x) & u_input.e.x, -1i), u_input.e, !(!select(!vec3<bool>(global3.d, true, false), select(vec3<bool>(global4.x, global4.x, false), vec3<bool>(global4.x, true, arg_0.d), vec3<bool>(false, global3.d, arg_0.d)), select(vec3<bool>(global4.x, global3.d, global4.x), vec3<bool>(global0[_wgslsmith_index_u32(0u, 8u)], arg_0.d, global4.x), vec3<bool>(true, global4.x, true)))));
    let var_2 = func_6(func_5(func_4(func_2(true, Struct_1(arg_0.a, arg_0.a.x, 107f, global0[_wgslsmith_index_u32(4294967295u, 8u)]), 2147483647i, Struct_1(global3.a, 1i, global3.c, global3.d)))), func_5(func_2(func_2(false && global3.d, func_4(arg_0), global3.a.x, arg_0).d, func_4(arg_0), global3.b, arg_0)), select(-(~func_5(Struct_1(vec3<i32>(u_input.c.x, -2147483647i, u_input.b), -14723i, -549f, global4.x)).a), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(-60063i, -1i, 0i), arg_0.a), select(select(vec3<bool>(global3.d, global0[_wgslsmith_index_u32(4294967295u, 8u)], true), !vec3<bool>(true, arg_0.d, true), select(vec3<bool>(false, true, true), vec3<bool>(true, global3.d, global0[_wgslsmith_index_u32(u_input.d, 8u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(61410u, 8u)], true))), vec3<bool>(true, true, all(vec2<bool>(arg_0.d, arg_0.d))), vec3<bool>(!global3.d, global3.d || false, global3.d))));
    global4 = select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<bool>(global4.x, var_2), true);
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = firstTrailingBit(select(_wgslsmith_mod_vec4_u32(reverseBits(select(vec4<u32>(u_input.d, 4294967295u, arg_1.x, 4294967295u), vec4<u32>(u_input.d, arg_1.x, 7837u, 70042u), global0[_wgslsmith_index_u32(u_input.d, 8u)])), vec4<u32>(_wgslsmith_clamp_u32(u_input.d, arg_1.x, u_input.d), 4294967295u, firstLeadingBit(19146u), 1u)), reverseBits(min(vec4<u32>(arg_1.x, 25080u, u_input.d, 51130u) | vec4<u32>(69255u, arg_1.x, 77400u, 4294967295u), select(vec4<u32>(85775u, u_input.d, 20342u, 4294967295u), vec4<u32>(arg_1.x, 0u, 56927u, 4294967295u), vec4<bool>(true, global3.d, true, global0[_wgslsmith_index_u32(43762u, 8u)])))), vec4<bool>(!all(vec3<bool>(false, true, false)), !(true & global3.d), func_2(true, func_2(global4.x, arg_0, global3.b, arg_0), abs(-5163i), arg_0).d, !(!global4.x))));
    let var_1 = arg_0;
    global1 = array<vec2<f32>, 12>();
    global3 = arg_0;
    let var_2 = arg_0;
    return Struct_1(var_2.a, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.c))), !(all(vec2<bool>(true, arg_0.d)) || true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(global3.b, global3.a.x);
    let var_1 = func_7(func_1(Struct_1(-_wgslsmith_mod_vec3_i32(u_input.e, vec3<i32>(var_0, global3.b, -16711i)), global3.a.x, 1033f, any(select(vec4<bool>(false, global3.d, false, global3.d), vec4<bool>(false, global4.x, global3.d, global4.x), true)))), ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 25153u)), firstTrailingBit(vec2<u32>(u_input.d, u_input.d))), ~vec2<u32>(u_input.d, u_input.d)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-2147483647i), ~39547i, _wgslsmith_sub_i32(31618i, global2.x), -23023i), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, select(u_input.d, u_input.d ^ 34478u, false), ~u_input.d), ~countOneBits(vec3<u32>(u_input.d, u_input.d, u_input.d)) & _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(7771u, u_input.d, 4294967295u), false), ~vec3<u32>(4294967295u, 0u, u_input.d)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(49999u, 38853u, 4294967295u), ~vec3<u32>(4294967295u, u_input.d, u_input.d), vec3<bool>(global4.x, global0[_wgslsmith_index_u32(0u, 8u)], global3.d)), select(abs(vec3<u32>(70111u, u_input.d, 0u)), vec3<u32>(88739u, u_input.d, 4294967295u), !global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-777f + var_1.c)) * _wgslsmith_f_op_f32(global3.c * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

