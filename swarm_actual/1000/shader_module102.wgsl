struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -28150i);

var<private> global1: array<u32, 5>;

var<private> global2: array<u32, 17>;

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = (true && any(vec2<bool>(!global3.d.x, true && global3.d.x))) && !select(any(select(vec4<bool>(arg_0, true, true, false), vec4<bool>(false, true, global3.d.x, global3.d.x), global3.d.x)), !select(false, true, arg_0), _wgslsmith_f_op_f32(-global3.e) > -1387f);
    let var_1 = global4[_wgslsmith_index_u32(1u, 19u)];
    global4 = array<Struct_1, 19>();
    var_0 = true;
    global4 = array<Struct_1, 19>();
    return global3.c.x;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = false;
    var var_1 = global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(abs(_wgslsmith_mod_u32(u_input.a, u_input.a)), global3.c.x, all(!vec2<bool>(true, select(var_0, var_0, true)))), 5u)], 19u)];
    var var_2 = Struct_1(select(vec2<u32>(_wgslsmith_add_u32(~global3.b, var_1.b), func_3(var_0)), var_1.c.zz, var_1.d.x), var_1.c.x, _wgslsmith_div_vec3_u32(select(vec3<u32>(0u, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(var_1.c.x, 17u)], 0u), _wgslsmith_clamp_u32(1u, 0u, 3769u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 17u)], 2512u) | vec3<u32>(global2[_wgslsmith_index_u32(127380u, 17u)], var_1.b, 1u), ~global3.c), !select(var_1.d, var_1.d, arg_0.zxx)), _wgslsmith_mod_vec3_u32(select(~global3.c, abs(vec3<u32>(0u, 23983u, 0u)), vec3<bool>(global3.d.x, var_1.d.x, arg_0.x)), var_1.c)), vec3<bool>(var_1.d.x, select(_wgslsmith_f_op_f32(min(global3.e, var_1.e)) > 2528f, false, var_1.d.x), var_1.d.x), -233f);
    var var_3 = global3.c.x;
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    global0 = vec2<i32>(-1i) * -max(u_input.b.zz, countOneBits(~vec2<i32>(u_input.b.x, u_input.b.x)));
    global1 = array<u32, 5>();
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.e)));
    var var_1 = arg_3.zw;
    global4 = array<Struct_1, 19>();
    return Struct_1(vec2<u32>(arg_3.x, 38574u), 31126u, arg_1.c, global3.d, -813f);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    global3 = func_4(global3.d, arg_0, all(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(arg_1.x, true, true, global3.d.x)), vec4<bool>(all(arg_0.d), arg_0.d.x, true, !arg_0.d.x))), vec4<u32>(global3.a.x, 17679u, 1u, firstTrailingBit(arg_0.a.x)));
    var var_0 = vec2<f32>(-384f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e))), global3.e));
    global3 = func_4(!(!(!arg_0.d)), func_4(vec3<bool>(false && (-1i <= arg_2.x), func_2(!vec4<bool>(true, arg_1.x, true, arg_1.x)), arg_0.d.x), Struct_1(global3.a, _wgslsmith_add_u32(~arg_0.c.x, arg_0.a.x), ~vec3<u32>(4294967295u, 0u, 1u), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(max(func_4(arg_0.d, global4[_wgslsmith_index_u32(1u, 19u)], true, vec4<u32>(global3.c.x, u_input.a, global3.b, 49619u)).e, _wgslsmith_f_op_f32(980f * var_0.x)))), !(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.c.x), vec2<u32>(31763u, 2585u)) != 1u), ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.x, global2[_wgslsmith_index_u32(0u, 17u)], 0u, 1u), vec4<u32>(global3.b, 1586u, 22949u, u_input.a)), abs(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.a.x, 5u)], 1u, arg_0.c.x, global1[_wgslsmith_index_u32(u_input.a, 5u)])))), func_4(global3.d, Struct_1(arg_0.c.yz, ~(arg_0.a.x | 9933u), ~(~vec3<u32>(39807u, 1u, global1[_wgslsmith_index_u32(16107u, 5u)])), select(arg_0.d, func_4(vec3<bool>(arg_1.x, true, false), global4[_wgslsmith_index_u32(68385u, 19u)], true, vec4<u32>(arg_3, 1646u, 59719u, 0u)).d, vec3<bool>(arg_1.x, global3.d.x, global3.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), func_2(vec4<bool>(false | arg_0.d.x, !global3.d.x, true, !global3.d.x)), select(select(~vec4<u32>(arg_0.a.x, global2[_wgslsmith_index_u32(42268u, 17u)], arg_0.c.x, arg_3), vec4<u32>(42470u, arg_3, 1u, arg_0.c.x) | vec4<u32>(55280u, 73667u, 1u, 1u), vec4<bool>(true, false, arg_1.x, false)), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(global3.c.x, 4294967295u, arg_0.a.x, global2[_wgslsmith_index_u32(68434u, 17u)]), vec4<u32>(arg_0.c.x, 92992u, 22390u, 6085u))), (global3.d.x & global3.d.x) & (global0.x <= 46987i))).d.x, reverseBits(max(min(vec4<u32>(arg_3, arg_0.b, 38551u, u_input.a), vec4<u32>(global3.c.x, arg_0.b, 1u, arg_3)), ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 17u)], 17u)], arg_3, global2[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 17u)], 5u)])) & countOneBits(vec4<u32>(arg_0.c.x, 4500u, 17861u, u_input.a))));
    let var_1 = vec3<bool>(arg_1.x, true, !any(vec3<bool>(false, arg_0.d.x || true, -2147483647i != global0.x)));
    global1 = array<u32, 5>();
    return Struct_1(vec2<u32>(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_3), global3.c.yx)), global2[_wgslsmith_index_u32(firstTrailingBit(~(21153u ^ arg_0.a.x)), 17u)]), global1[_wgslsmith_index_u32(arg_0.b ^ select(_wgslsmith_add_u32(arg_3, global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 17u)], 5u)]), global3.c.x, true), 5u)], global3.c | vec3<u32>(abs(max(global2[_wgslsmith_index_u32(u_input.a, 17u)], 11753u)), func_3(false), arg_3), !vec3<bool>(func_2(select(vec4<bool>(var_1.x, var_1.x, global3.d.x, global3.d.x), vec4<bool>(arg_1.x, arg_0.d.x, false, true), vec4<bool>(arg_1.x, arg_0.d.x, global3.d.x, false))), global3.e != var_0.x, all(vec3<bool>(arg_0.d.x, arg_1.x, arg_0.d.x))), 1466f);
}

fn func_1() -> Struct_1 {
    global3 = func_5(func_4(global3.d, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22938u, 17u)], 19u)], global3.d.x == func_2(!vec4<bool>(true, global3.d.x, global3.d.x, global3.d.x)), vec4<u32>(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_sub_u32(u_input.a, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21846u, 5u)], 17u)])), 13563u, ~global3.b, firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 17u)] << (global3.b % 32u)))), global3.d.xy, vec3<i32>(_wgslsmith_mult_i32(-2147483647i, global0.x), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x | 2147483647i), global0.x), ~(~1u));
    global1 = array<u32, 5>();
    let var_0 = Struct_1(global3.a, reverseBits(u_input.a), min(~(~global3.c), vec3<u32>(func_4(vec3<bool>(false, global3.d.x, global3.d.x), global4[_wgslsmith_index_u32(24166u, 19u)], global3.d.x, vec4<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 5u)], 17u)], 6492u, 1u, global2[_wgslsmith_index_u32(4294967295u, 17u)])).a.x, ~global2[_wgslsmith_index_u32(0u, 17u)], func_4(vec3<bool>(false, global3.d.x, true), Struct_1(global3.a, global3.c.x, vec3<u32>(0u, global3.a.x, 127841u), vec3<bool>(true, true, global3.d.x), global3.e), global3.d.x, vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 17u)], 5u)], 5u)], 0u, u_input.a)).c.x)) ^ ~vec3<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 11720u), 4294967295u, reverseBits(u_input.a)), vec3<bool>(global3.d.x, all(vec2<bool>(all(global3.d.zx), func_2(vec4<bool>(global3.d.x, global3.d.x, false, global3.d.x)))), global3.d.x), -230f);
    var var_1 = Struct_1(vec2<u32>(~func_5(Struct_1(vec2<u32>(32791u, global3.c.x), u_input.a, vec3<u32>(24082u, 0u, 0u), vec3<bool>(true, true, var_0.d.x), var_0.e), global3.d.yx, ~vec3<i32>(u_input.b.x, 0i, 1i), ~u_input.a).b, u_input.a), global3.a.x, ~(~var_0.c), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(func_5(Struct_1(global3.a, u_input.a, vec3<u32>(77652u, 24005u, 32141u), var_0.d, var_0.e), vec2<bool>(var_0.d.x, true), u_input.b, var_0.c.x).e))));
    return func_5(func_4(!func_5(var_0, select(vec2<bool>(true, var_0.d.x), var_0.d.xy, global3.d.yz), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b), ~4294967295u).d, global4[_wgslsmith_index_u32(13599u, 19u)], all(select(func_4(vec3<bool>(var_0.d.x, false, false), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a.x, 5u)], 19u)], true, vec4<u32>(var_1.a.x, global3.b, global3.a.x, var_0.a.x)).d.zy, vec2<bool>(true, global3.d.x), vec2<bool>(true, var_1.d.x))), countOneBits(~(vec4<u32>(4294967295u, 16907u, var_0.c.x, 24951u) & vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(global3.a.x, 5u)], 1u, global3.a.x)))), select(select(var_1.d.xx, !func_4(vec3<bool>(true, false, true), Struct_1(global3.a, u_input.a, var_1.c, vec3<bool>(false, var_1.d.x, true), global3.e), true, vec4<u32>(0u, 1u, 38810u, var_1.a.x)).d.yx, !any(vec4<bool>(global3.d.x, false, global3.d.x, global3.d.x))), vec2<bool>(true, var_1.d.x), abs(~u_input.a) == countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), vec2<u32>(var_1.a.x, 0u)))), u_input.b, firstLeadingBit(firstLeadingBit(~global1[_wgslsmith_index_u32(44153u, 5u)] >> (_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28650u, 17u)], 5u)], u_input.a) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = func_5(Struct_1(_wgslsmith_add_vec2_u32(~abs(var_0.a), vec2<u32>(~var_0.b, 4294967295u)), min(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.x, 5u)], 17u)], _wgslsmith_dot_vec3_u32(var_0.c, global3.c)) << (firstLeadingBit(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.a, 17u)], global3.b)) % 32u), var_0.c, var_0.d, -1989f), func_5(var_0, select(vec2<bool>(global3.d.x, !global3.d.x), select(func_1().d.zz, global3.d.zy, global3.d.x), !var_0.d.x), vec3<i32>(-10606i, _wgslsmith_mod_i32(u_input.b.x << (4294967295u % 32u), ~0i), u_input.b.x), 39817u).d.yx, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, max(0i, u_input.b.x)), _wgslsmith_mod_i32(global0.x, u_input.b.x) >> (_wgslsmith_sub_u32(4294967295u, 1u) % 32u)), firstLeadingBit(select(0i, reverseBits(u_input.b.x), !var_0.d.x)), ~_wgslsmith_mod_i32(-2147483647i, 23006i)), ~(~4294967295u));
    global0 = countOneBits(_wgslsmith_add_vec2_i32(u_input.b.xx, ~(-u_input.b.zz) & vec2<i32>(28410i >> (global1[_wgslsmith_index_u32(u_input.a, 5u)] % 32u), _wgslsmith_clamp_i32(global0.x, u_input.b.x, -60100i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e)), global3.e)));
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(func_3(true), global2[_wgslsmith_index_u32(func_4(var_0.d, func_1(), !global3.d.x, _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(20222u, 5u)], 0u, 5781u, 41884u), vec4<u32>(global2[_wgslsmith_index_u32(global3.b, 17u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)], 616u))).b, 17u)] | _wgslsmith_mod_u32(global3.a.x, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.c.x, 17u)], 17u)]), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(30570u, global1[_wgslsmith_index_u32(81965u, 5u)], var_0.c.x), vec3<u32>(0u, u_input.a, var_0.a.x)) << (~64067u % 32u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, ~0u), 19205u)), _wgslsmith_mod_vec4_u32(~(~countOneBits(vec4<u32>(135582u, 45500u, global1[_wgslsmith_index_u32(var_0.a.x, 5u)], var_0.b))), ~(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], 4294967295u, var_0.c.x, global1[_wgslsmith_index_u32(92519u, 5u)]) << (firstTrailingBit(vec4<u32>(var_0.c.x, u_input.a, global2[_wgslsmith_index_u32(100593u, 17u)], 121u)) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(reverseBits(firstTrailingBit(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(38288u, 5u)], u_input.a, 84095u))), vec4<u32>(~(~global3.b), global1[_wgslsmith_index_u32(u_input.a, 5u)], ~(var_0.c.x ^ global1[_wgslsmith_index_u32(1u, 5u)]), global3.b)));
    global0 = _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -countOneBits(0i), _wgslsmith_div_i32(~select(2147483647i, 36582i, global3.d.x), _wgslsmith_mod_i32(-u_input.b.x, 0i))), u_input.b.xz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, ~4294967295u, u_input.a, ~(~(~u_input.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1512f, 1562f, var_1.x), vec3<f32>(global3.e, global3.e, 1098f))), vec3<f32>(_wgslsmith_f_op_f32(floor(global3.e)), _wgslsmith_div_f32(global3.e, var_1.x), _wgslsmith_f_op_f32(step(-1000f, global3.e)))) - vec3<f32>(-481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e) * _wgslsmith_f_op_f32(-586f + global3.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.e, var_0.e)) - var_1.x))), _wgslsmith_f_op_f32(-var_0.e), var_0.b, vec2<f32>(var_0.e, func_1().e));
}

