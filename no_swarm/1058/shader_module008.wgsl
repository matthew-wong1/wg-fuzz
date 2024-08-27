struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(64413u, 1u, 0u, 789u);

var<private> global1: i32;

var<private> global2: array<u32, 11> = array<u32, 11>(102552u, 30414u, 46335u, 44217u, 1u, 0u, 30713u, 4294967295u, 0u, 34702u, 23740u);

var<private> global3: u32;

var<private> global4: vec2<u32> = vec2<u32>(1u, 0u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    var var_0 = select(_wgslsmith_add_vec2_i32(-countOneBits(vec2<i32>(2147483647i, u_input.a)) & (_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, arg_1.e), vec2<i32>(u_input.a, u_input.a)) >> (vec2<u32>(global0.x, global2[_wgslsmith_index_u32(0u, 11u)]) % vec2<u32>(32u))), countOneBits(vec2<i32>(u_input.a, 42307i) >> (vec2<u32>(57047u, global0.x) % vec2<u32>(32u))) >> (select(global0.yz << (vec2<u32>(6258u, 21504u) % vec2<u32>(32u)), ~vec2<u32>(arg_1.d.x, 0u), all(vec2<bool>(false, arg_0.x))) % vec2<u32>(32u))), max(abs(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(39392i, arg_1.a)), -vec2<i32>(arg_1.e, -2147483647i))), vec2<i32>(u_input.a, u_input.a)), arg_0.yy);
    var var_1 = _wgslsmith_div_vec2_u32(arg_1.b >> (max(abs(arg_1.d.zx), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global4.x), vec2<u32>(97373u, arg_1.b.x)), vec2<u32>(6930u, 15978u), firstLeadingBit(arg_1.d.xy))) % vec2<u32>(32u)), reverseBits(select(arg_1.b, arg_1.b, vec2<bool>(all(vec2<bool>(true, arg_0.x)), false))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(round(arg_1.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.c, 1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)))) * vec4<f32>(-806f, 137f, _wgslsmith_f_op_f32(-arg_1.c), 2235f));
    var var_3 = Struct_2(arg_0.x, Struct_1(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(41636i, -1i, 1i) >> (global0.xww % vec3<u32>(32u))), -vec3<i32>(var_0.x, 0i, -1i)), vec2<u32>(global0.x, firstLeadingBit(~global4.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * _wgslsmith_f_op_f32(abs(arg_1.c))))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x ^ global4.x, _wgslsmith_sub_u32(global0.x, global0.x), max(global4.x, var_1.x), max(arg_1.b.x, 34695u)), ~arg_1.d | (arg_1.d & arg_1.d), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global4.x), arg_1.d.xy), ~global4.x, reverseBits(1123u), _wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, 4294967295u), vec2<u32>(68769u, 1u)))), -_wgslsmith_sub_i32(var_0.x, 24404i) ^ arg_1.e));
    global4 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(~(~global0.x)), var_1.x), ~vec2<u32>(arg_1.b.x, _wgslsmith_add_u32(select(1u, var_1.x, arg_0.x), ~global4.x)));
    return false;
}

fn func_2(arg_0: vec3<u32>) -> vec2<u32> {
    let var_0 = func_3(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, true, true)), true, true), !all(vec3<bool>(true, false, true))), Struct_1(u_input.a << (49650u % 32u), ~(~vec2<u32>(18306u, global0.x)), 391f, _wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 11u)], 11u)], global2[_wgslsmith_index_u32(arg_0.x, 11u)], global0.x, 1u), ~vec4<u32>(global4.x, 6202u, global0.x, 25242u)), -select(-38895i, 0i, false))) | !(_wgslsmith_f_op_f32(1f + -1194f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(812f)) + _wgslsmith_f_op_f32(max(229f, 217f))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(-293f, 1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -457f))), _wgslsmith_f_op_f32(ceil(-2106f)));
    global1 = -2147483647i;
    let var_2 = Struct_1(abs(1i), vec2<u32>(25232u, _wgslsmith_div_u32(abs(_wgslsmith_add_u32(0u, 1u)), _wgslsmith_div_u32(72225u << (global2[_wgslsmith_index_u32(0u, 11u)] % 32u), 31361u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-849f, _wgslsmith_f_op_f32(round(808f))))))), ~(max(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 26101u, global0.x, 48391u), vec4<u32>(global2[_wgslsmith_index_u32(arg_0.x, 11u)], 4294967295u, arg_0.x, arg_0.x)), vec4<u32>(4294967295u, global4.x, 1u, global4.x)) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(74722u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.x, 11u)], 11u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.x, 11u)], 11u)]), vec4<u32>(60593u, 81791u, 4294967295u, global2[_wgslsmith_index_u32(44011u, 11u)])), ~vec4<u32>(1u, global4.x, global2[_wgslsmith_index_u32(40158u, 11u)], global0.x))), u_input.a);
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), var_2.c), var_1.zx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x + -2145f), _wgslsmith_f_op_f32(-1372f + var_2.c))));
    return global0.zz;
}

fn func_1() -> f32 {
    global4 = ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(23145u, 1u), func_2(global0.yxz))));
    let var_0 = u_input.a;
    global2 = array<u32, 11>();
    let var_1 = Struct_2(~global4.x == _wgslsmith_mult_u32(12208u, countOneBits(_wgslsmith_sub_u32(global0.x, 7893u))), Struct_1(_wgslsmith_add_i32(var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a) ^ vec2<i32>(u_input.a, 1i), -vec2<i32>(-8730i, 0i))), ~vec2<u32>(~0u, ~26918u), _wgslsmith_f_op_f32(floor(251f)), vec4<u32>(global0.x << (global0.x % 32u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(76774u, global2[_wgslsmith_index_u32(global4.x, 11u)], 4294967295u, 35009u), vec4<u32>(12904u, global4.x, 1u, 57870u)), 11u)] ^ ~1u, _wgslsmith_mult_u32(global4.x, 14981u), abs(abs(31198u))), -6220i << (0u % 32u)));
    var var_2 = _wgslsmith_mult_u32(~select(_wgslsmith_sub_u32(func_2(var_1.b.d.zyz).x, _wgslsmith_dot_vec2_u32(global0.xy, vec2<u32>(57359u, 122905u))), global4.x, true), 1u);
    return _wgslsmith_f_op_f32(-var_1.b.c);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    global3 = min(_wgslsmith_sub_u32(~(~(1u >> (global2[_wgslsmith_index_u32(global4.x, 11u)] % 32u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global0.zx, ~global0.yw), ~abs(global2[_wgslsmith_index_u32(13016u, 11u)]))), abs(_wgslsmith_add_u32(_wgslsmith_add_u32(34242u, 1u), abs(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 11u)], 11u)]))));
    let var_0 = select(select(select(vec3<bool>(1i < u_input.a, arg_0 & false, 30295u == global2[_wgslsmith_index_u32(24882u, 11u)]), !vec3<bool>(arg_0, true, true), arg_0), select(vec3<bool>(arg_0 || true, !arg_0, arg_0), select(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0), arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, true, true)), vec3<bool>(false, true, arg_0)), !(!any(vec2<bool>(false, arg_0)))), vec3<bool>(true, arg_0, false), !(!select(select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, false), arg_0), vec3<bool>(true, true, arg_0), !vec3<bool>(arg_0, true, arg_0))));
    global2 = array<u32, 11>();
    global1 = -u_input.a;
    global3 = 0u;
    return Struct_1(u_input.a, firstTrailingBit(firstTrailingBit(global0.xx)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(913f)), -923f))), ~vec4<u32>(~(~1u), max(1u << (global4.x % 32u), ~global2[_wgslsmith_index_u32(16030u, 11u)]), 0u, 0u), _wgslsmith_sub_i32(u_input.a ^ _wgslsmith_div_i32(u_input.a, -u_input.a), 0i));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(false, Struct_1(-1i, vec2<u32>(arg_0.d.x >> (~arg_0.d.x % 32u), _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.d.x, 11u)], 11u)], ~arg_0.b.x)), arg_0.c, _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(30577u, global4.x, 1u, global2[_wgslsmith_index_u32(arg_0.d.x, 11u)]), vec4<u32>(global2[_wgslsmith_index_u32(global0.x, 11u)], arg_0.b.x, 1u, global0.x)) << (vec4<u32>(arg_0.b.x, 0u, 69726u, 2613u) % vec4<u32>(32u)), vec4<u32>(global4.x, global0.x, 1u, ~46175u)), -_wgslsmith_add_i32(0i, _wgslsmith_dot_vec3_i32(arg_1, arg_1))));
    global0 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.d.x, global4.x, global2[_wgslsmith_index_u32(arg_0.d.x, 11u)], 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(global4.x, 6145u, 4294967295u, 44877u), vec4<u32>(0u, 4294967295u, 115722u, 1u))), abs(_wgslsmith_mod_vec4_u32(arg_0.d, arg_0.d))), ~countOneBits(arg_0.d >> (vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 11u)], 2499u, 1645u) % vec4<u32>(32u))));
    global3 = min(global0.x, _wgslsmith_mod_u32(arg_0.d.x, func_4(var_0.a && func_3(vec3<bool>(false, var_0.a, true), Struct_1(24746i, vec2<u32>(66888u, 391u), -203f, arg_0.d, -1i)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.c, -1000f, arg_0.c), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.c, arg_0.c, arg_0.c), vec3<f32>(849f, 1831f, 558f)))))).b.x));
    let var_1 = true;
    global2 = array<u32, 11>();
    return Struct_1(arg_1.x, ~vec2<u32>(~global0.x, global0.x) & var_0.b.d.xy, arg_0.c, var_0.b.d, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0.yz;
    var var_0 = func_5(func_4(!(_wgslsmith_f_op_f32(sign(-428f)) >= _wgslsmith_f_op_f32(f32(-1f) * -706f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(ceil(191f)), _wgslsmith_f_op_f32(round(867f))), vec3<f32>(_wgslsmith_div_f32(1197f, 836f), _wgslsmith_f_op_f32(abs(2356f)), _wgslsmith_f_op_f32(func_1()))))), max(-select(-vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-2147483647i, 1i, -21101i), vec3<bool>(false, true, true)), -(~(~vec3<i32>(1i, 2147483647i, -1i)))));
    global4 = select(~abs(vec2<u32>(13041u, 4294967295u)), vec2<u32>(func_5(func_4(true, vec3<f32>(var_0.c, 1094f, var_0.c)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(7104i, u_input.a, -15683i), vec3<i32>(u_input.a, var_0.e, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 0i, var_0.a), vec3<i32>(u_input.a, var_0.a, var_0.e)), vec3<bool>(true, true, true))).b.x, ~global4.x), select(false, (1000f > _wgslsmith_f_op_f32(var_0.c + var_0.c)) && (4294967295u <= _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global0.x, 11u)], 38578u)), false));
    let var_1 = ~(~var_0.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1508f, var_0.c))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, _wgslsmith_div_f32(-1609f, var_0.c)))));
    var var_3 = Struct_2(!(!(!any(vec2<bool>(true, true)))), Struct_1(~abs(41718i), vec2<u32>(113342u, ~global4.x), 362f, var_1, _wgslsmith_mod_i32(func_5(func_4(false, vec3<f32>(-299f, var_0.c, -743f)), vec3<i32>(var_0.a, 30198i, 2147483647i) ^ vec3<i32>(var_0.a, 1i, 2147483647i)).e, select(u_input.a, select(var_0.e, u_input.a, false), any(vec4<bool>(true, false, false, false))))));
    var var_4 = any(select(!vec3<bool>(true, false && var_3.a, any(vec3<bool>(false, var_3.a, true))), vec3<bool>(all(vec4<bool>(false, var_3.a, true, var_3.a)) & true, var_3.a, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-140f)), _wgslsmith_sub_i32(1i, countOneBits(19585i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), var_0.c, -302f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1144f, var_3.b.c, 676f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(func_5(var_3.b, vec3<i32>(6035i, 2283i, -30952i) | vec3<i32>(69923i, var_3.b.e, var_3.b.a)).c, _wgslsmith_f_op_f32(func_4(var_3.a, vec3<f32>(-1439f, 1138f, -2048f)).c - 163f), -1459f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1606f, var_2.x, var_3.b.c)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.c, -1418f, var_2.x)), vec3<f32>(2181f, var_3.b.c, -548f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.b.c)), -968f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1949f, _wgslsmith_div_f32(-609f, 773f)))));
}

