struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32 = -23321i;

var<private> global2: array<bool, 1>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, abs(-1i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, u_input.a) ^ -vec2<i32>(u_input.a, u_input.a), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a)))), select(!select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(global3.x, 1u)], true), vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 1u)], false, global2[_wgslsmith_index_u32(0u, 1u)]), global2[_wgslsmith_index_u32(76983u, 1u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 1u)], true), arg_0.x > global0.x), select(vec3<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3.x, 4294967295u), vec3<u32>(global0.x, global0.x, 4294967295u)), 1u)], true), !select(vec3<bool>(true, true, true), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], false, global2[_wgslsmith_index_u32(4294967295u, 1u)]), global2[_wgslsmith_index_u32(33532u, 1u)]), any(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 1u)])) & global2[_wgslsmith_index_u32(global0.x, 1u)]), any(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 1u)] != global2[_wgslsmith_index_u32(global0.x, 1u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1116f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-694f, -1590f))), _wgslsmith_f_op_f32(725f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1500f), _wgslsmith_div_f32(-396f, -1109f)))));
    var var_1 = countOneBits(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global3.x, 0u) & firstTrailingBit(vec3<u32>(74860u, 4294967295u, 54265u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 16585u, arg_0.x), vec3<u32>(global3.x, 1u, global3.x)))));
    global0 = countOneBits(arg_0);
    var var_2 = Struct_1(var_0.a, !vec3<bool>(!var_0.b.x, ~u_input.a <= (i32(-1i) * -1i), !all(vec4<bool>(var_0.b.x, false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c)) - var_0.c), _wgslsmith_div_f32(-255f, -1306f))));
    global0 = firstLeadingBit(arg_0);
    return true || var_0.b.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = !global2[_wgslsmith_index_u32(countOneBits(countOneBits(~0u)), 1u)];
    var var_1 = vec3<u32>(~(~_wgslsmith_clamp_u32(~global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(30494u, 86963u, global0.x, global3.x), vec4<u32>(1u, global0.x, 4294967295u, 49062u)), global3.x >> (1u % 32u))), reverseBits(~abs(4581u)) >> (0u % 32u), arg_1.x);
    var_1 = ~arg_1;
    let var_2 = arg_2.c;
    let var_3 = select(~(-_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-21489i, u_input.a, 18027i, 2147483647i), vec4<i32>(arg_2.a.x, -2147483647i, u_input.a, 1i)), select(vec4<i32>(arg_2.a.x, arg_2.a.x, 30219i, u_input.a), vec4<i32>(arg_2.a.x, 1i, -17319i, -1i), vec4<bool>(true, false, global2[_wgslsmith_index_u32(global3.x, 1u)], false)))), select(~_wgslsmith_mult_vec4_i32(min(vec4<i32>(-1i, -2147483647i, arg_2.a.x, u_input.a), vec4<i32>(-34093i, -2147483647i, 16982i, arg_2.a.x)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, -1i, 2147483647i, arg_2.a.x)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_2.a.x, u_input.a, arg_2.a.x, 38282i), vec4<i32>(u_input.a, -6418i, u_input.a, -2147483647i) << (vec4<u32>(global3.x, arg_1.x, global0.x, var_1.x) % vec4<u32>(32u)), !vec4<bool>(arg_0.x, arg_0.x, true, arg_2.b.x)), countOneBits(vec4<i32>(0i, u_input.a, 38624i, u_input.a))), vec4<bool>(!(var_0 && arg_3), any(!arg_2.b), !func_3(var_1.yy), any(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.x, 1u)], var_0, arg_3, global2[_wgslsmith_index_u32(var_1.x, 1u)])) && (global2[_wgslsmith_index_u32(global0.x, 1u)] && arg_2.b.x))), vec4<bool>(_wgslsmith_mod_i32(1i, 2147483647i) > _wgslsmith_clamp_i32(-2147483647i, 2147483647i, arg_2.a.x), global2[_wgslsmith_index_u32(var_1.x, 1u)], all(select(!vec4<bool>(arg_2.b.x, false, arg_2.b.x, true), select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(arg_0.x, var_0, false, var_0), var_0), all(arg_2.b.xx))), any(vec2<bool>(true, true))));
    return var_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_1 {
    global0 = arg_1.ww;
    let var_0 = Struct_1(-arg_0.a, select(vec3<bool>(false, true, true), select(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(global3.x, 1u)]), vec3<bool>(!global2[_wgslsmith_index_u32(arg_1.x, 1u)], all(arg_0.b), arg_0.c != arg_0.c), vec3<bool>(global2[_wgslsmith_index_u32(~arg_1.x, 1u)], true, false)), true), arg_0.c);
    global1 = u_input.a;
    global3 = firstLeadingBit(~(~(~arg_1.ww)));
    let var_1 = Struct_2(-3605i, arg_0, -countOneBits(abs(~vec3<i32>(arg_2.x, var_0.a.x, -34119i))));
    return Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.a, 2147483647i, -arg_2.x), arg_0.a.x), ~(vec2<i32>(arg_0.a.x, u_input.a) | select(var_1.b.a, vec2<i32>(arg_2.x, var_1.c.x), false))), select(vec3<bool>(!all(arg_0.b.yx), !(arg_2.x != 55526i), global2[_wgslsmith_index_u32(~abs(global0.x), 1u)]), !select(!arg_0.b, select(var_1.b.b, vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 1u)], true, global2[_wgslsmith_index_u32(global0.x, 1u)]), var_1.b.b.x), arg_0.b.x), all(vec4<bool>(var_0.b.x, all(vec4<bool>(var_1.b.b.x, true, arg_0.b.x, false)), var_0.b.x, var_0.b.x))), _wgslsmith_f_op_f32(-arg_0.c));
}

fn func_5(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    global0 = min(vec2<u32>(arg_1.x, global0.x | ~(global3.x ^ global3.x)), vec2<u32>(4294967295u, _wgslsmith_div_u32(4294967295u, global0.x) ^ (max(arg_1.x, global0.x) >> (4294967295u % 32u))));
    let var_0 = vec2<bool>(false, arg_2.b.x);
    var var_1 = Struct_2(select(~(~u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(12770i, u_input.a, arg_2.a.x, 6719i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_2.a.x, 1i, 2147483647i), vec4<i32>(-1i, 0i, 0i, 39543i))) ^ ~(i32(-1i) * -1i), var_0.x), arg_2, countOneBits(-((vec3<i32>(u_input.a, arg_2.a.x, -2147483647i) << (arg_1 % vec3<u32>(32u))) ^ -vec3<i32>(1i, u_input.a, 62250i))));
    var var_2 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~var_1.c.x, arg_2.a.x, arg_2.a.x), ~_wgslsmith_sub_vec3_i32(var_1.c, vec3<i32>(-85160i, arg_2.a.x, -49165i))), var_1.c);
    global0 = vec2<u32>(_wgslsmith_div_u32(max(0u, global0.x), global0.x), abs(24957u));
    return Struct_2(u_input.a, Struct_1(var_1.c.xx, !arg_2.b, arg_2.c), ~(~firstTrailingBit(vec3<i32>(-1i, u_input.a, -34928i) >> (arg_1 % vec3<u32>(32u)))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = func_5(global2[_wgslsmith_index_u32(min(countOneBits(_wgslsmith_mult_u32(global0.x, global3.x)), 0u), 1u)], ~(~select(arg_1.wwy, vec3<u32>(global3.x, global3.x, global3.x), vec3<bool>(true, arg_3.b.b.x, true))) ^ arg_1.xzx, func_4(arg_3.b, vec4<u32>(35766u, func_2(vec3<bool>(arg_2.b.b.x, false, true), vec3<u32>(global3.x, global0.x, 4294967295u) >> (vec3<u32>(4294967295u, 5351u, global0.x) % vec3<u32>(32u)), Struct_1(arg_2.b.a, vec3<bool>(false, true, true), arg_0), !arg_2.b.b.x), firstTrailingBit(24898u), _wgslsmith_clamp_u32(~13863u, global0.x, 1u)), arg_2.c.zz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, -225f, 1547f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(275f, 287f, arg_0) + vec3<f32>(-799f, arg_3.b.c, -580f))))));
    let var_1 = arg_3.b;
    var var_2 = Struct_1(var_1.a, func_4(func_5(true, arg_1.zzw, func_5(false, min(arg_1.zzy, vec3<u32>(global3.x, 1791u, global0.x)), Struct_1(vec2<i32>(var_1.a.x, -6712i), var_0.b.b, arg_0), vec3<f32>(-2258f, arg_0, 1748f)).b, vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(var_0.b.c - arg_0), _wgslsmith_f_op_f32(select(508f, 675f, global2[_wgslsmith_index_u32(global3.x, 1u)])))).b, arg_1, firstLeadingBit(func_4(func_5(false, vec3<u32>(global3.x, 4294967295u, global0.x), Struct_1(arg_3.c.xx, var_1.b, var_0.b.c), vec3<f32>(-664f, arg_0, arg_0)).b, reverseBits(vec4<u32>(global3.x, 0u, arg_1.x, arg_1.x)), vec2<i32>(1i, -2419i)).a)).b, _wgslsmith_f_op_f32(-188f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_2.b.c)), arg_3.b.c)))));
    var_2 = func_4(func_4(func_4(Struct_1(vec2<i32>(-9865i, -2147483647i), select(vec3<bool>(var_0.b.b.x, true, false), vec3<bool>(true, false, true), vec3<bool>(false, var_1.b.x, true)), var_2.c), select(arg_1, _wgslsmith_mod_vec4_u32(arg_1, arg_1), var_1.b.x), -(~var_0.c.yy)), firstTrailingBit(vec4<u32>(~20875u, abs(arg_1.x), ~global3.x, ~arg_1.x)), ~var_0.b.a), ~_wgslsmith_add_vec4_u32(~select(arg_1, vec4<u32>(1u, arg_1.x, global0.x, global3.x), vec4<bool>(var_2.b.x, var_2.b.x, var_0.b.b.x, arg_2.b.b.x)), ~vec4<u32>(79796u, global0.x, arg_1.x, global0.x)), countOneBits(~_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(62155i, 2147483647i)), arg_2.b.a << (arg_1.wx % vec2<u32>(32u)))));
    global2 = array<bool, 1>();
    return Struct_2(var_1.a.x, Struct_1(~_wgslsmith_div_vec2_i32(vec2<i32>(var_2.a.x, var_1.a.x), -vec2<i32>(u_input.a, var_0.c.x)), arg_3.b.b, _wgslsmith_div_f32(282f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_3.b.c)), _wgslsmith_f_op_f32(284f + 161f), any(arg_2.b.b.zy))))), vec3<i32>(0i, _wgslsmith_dot_vec3_i32(var_0.c, -_wgslsmith_clamp_vec3_i32(var_0.c, arg_2.c, vec3<i32>(arg_3.b.a.x, 1i, arg_2.c.x))), 41114i));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global1 = arg_2.a;
    let var_0 = ~(~(~firstTrailingBit(global0.x)));
    var var_1 = arg_1.b.b;
    global2 = array<bool, 1>();
    global1 = firstTrailingBit(-_wgslsmith_clamp_i32(-arg_1.a, abs(-2147483647i), -24593i) >> (~(~global3.x) % 32u));
    return func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.c - 205f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -610f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c)))), any(vec4<bool>(arg_1.b.b.x, false, !global2[_wgslsmith_index_u32(32249u, 1u)], arg_2.b.b.x)))), ~((_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global3.x, 0u, global0.x), vec4<u32>(44027u, global3.x, 8660u, var_0)) >> (firstLeadingBit(vec4<u32>(var_0, global3.x, 4294967295u, 1u)) % vec4<u32>(32u))) >> (vec4<u32>(func_2(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], false, arg_1.b.b.x), vec3<u32>(0u, 1u, global0.x), Struct_1(arg_1.c.yz, arg_2.b.b, -1805f), true), select(31285u, 0u, true), 1u, ~0u) % vec4<u32>(32u))), arg_1, Struct_2(34763i, func_1(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.x, var_0, global0.x) ^ vec4<u32>(33144u, var_0, global0.x, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(global3.x, 8253u, global0.x, var_0), vec4<u32>(143267u, 23919u, 1u, global3.x))), arg_2, func_5(global2[_wgslsmith_index_u32(4294967295u, 1u)] || false, max(vec3<u32>(global0.x, 0u, 44623u), vec3<u32>(1u, 0u, global0.x)), func_4(Struct_1(arg_1.c.yy, vec3<bool>(true, true, true), arg_1.b.c), vec4<u32>(global0.x, 58185u, global3.x, global3.x), arg_1.b.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.c, -735f, -1908f)))).b, arg_1.c)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(2213u, global3.x, _wgslsmith_clamp_u32(global0.x, ~_wgslsmith_mult_u32(59272u ^ global0.x, global3.x), 3795u));
    let var_1 = ~1196i;
    var var_2 = Struct_2(_wgslsmith_mult_i32(0i, 4492i), func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1423f, 242f) - vec2<f32>(-357f, -697f))))), func_1(1143f, vec4<u32>(global3.x, global3.x, global3.x, firstTrailingBit(var_0.x)), Struct_2(u_input.a, Struct_1(vec2<i32>(39191i, 22616i), vec3<bool>(false, false, true), -221f), vec3<i32>(var_1, u_input.a, -2147483647i) ^ vec3<i32>(29547i, u_input.a, 0i)), Struct_2(~u_input.a, Struct_1(vec2<i32>(var_1, -19526i), vec3<bool>(global2[_wgslsmith_index_u32(1u, 1u)], true, global2[_wgslsmith_index_u32(4294967295u, 1u)]), 324f), -vec3<i32>(var_1, 11244i, u_input.a))), Struct_2(-1i, func_4(func_5(false, var_0, Struct_1(vec2<i32>(-2147483647i, -25229i), vec3<bool>(true, false, true), -1000f), vec3<f32>(602f, 150f, 507f)).b, ~vec4<u32>(var_0.x, global3.x, global0.x, 9262u), firstLeadingBit(vec2<i32>(18250i, var_1))), vec3<i32>(-9628i, -u_input.a, u_input.a))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(29628i, 15193i, u_input.a), ~(~vec3<i32>(var_1, u_input.a, -9183i))));
    global1 = ~u_input.a;
    global0 = vec2<u32>(var_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~global3.x, 46744u), abs(vec2<u32>(global0.x, global0.x)), select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(1u, global3.x), var_2.b.b.x || global2[_wgslsmith_index_u32(0u, 1u)])), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(max(vec2<u32>(var_0.x, 65663u), vec2<u32>(var_0.x, global3.x)), ~var_0.yy), firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 1u), var_0.zz)), var_0.zx)));
    var var_3 = ~abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 54295u, ~4294967295u, _wgslsmith_mod_u32(var_0.x, 0u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, 48306u, global3.x, global0.x), max(vec4<u32>(var_0.x, var_0.x, 1637u, 35258u), vec4<u32>(global3.x, 0u, 4294967295u, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.c, ~(var_2.c >> (var_0 % vec3<u32>(32u))), 9788u, -_wgslsmith_clamp_i32(-var_1, i32(-1i) * -13009i, u_input.a) | -1i, ~_wgslsmith_clamp_u32(global0.x, ~4294967295u & var_3.x, func_2(func_6(vec2<f32>(var_2.b.c, -237f), Struct_2(0i, Struct_1(var_2.c.yx, var_2.b.b, var_2.b.c), vec3<i32>(u_input.a, var_1, 1i)), Struct_2(-28495i, Struct_1(var_2.b.a, vec3<bool>(false, false, false), var_2.b.c), vec3<i32>(3354i, -2147483647i, u_input.a))).b, ~vec3<u32>(var_0.x, 0u, 1u), func_4(Struct_1(var_2.c.zz, var_2.b.b, 813f), vec4<u32>(0u, global0.x, 0u, 23678u), vec2<i32>(var_1, 38957i)), var_2.b.b.x)));
}

