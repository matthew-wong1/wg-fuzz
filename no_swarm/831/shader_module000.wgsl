struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec2<f32>, 10>;

var<private> global2: array<i32, 22> = array<i32, 22>(-31766i, 27701i, 0i, -11939i, 2147483647i, i32(-2147483648), 36160i, i32(-2147483648), 19120i, -19423i, -15127i, 0i, 2147483647i, 0i, 2147483647i, 28915i, 1i, 11692i, -1i, 27956i, i32(-2147483648), 9909i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<u32> {
    global0 = vec3<u32>(56390u, u_input.b, ~(~(u_input.b >> (32663u % 32u))) << (u_input.c.x % 32u));
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-579f + -325f) - 1540f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(444f))))))), reverseBits(select(vec2<u32>(4294967295u, global0.x), u_input.c ^ vec2<u32>(global0.x, global0.x), select(select(vec2<bool>(arg_1.c, false), vec2<bool>(true, arg_1.c), true), vec2<bool>(arg_1.c, true), arg_1.c))), arg_1.c, _wgslsmith_clamp_u32(~13782u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(90114u, 70631u, 0u, 1u), vec4<u32>(arg_1.b.x, global0.x, u_input.a.x, global0.x))), u_input.c.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -629f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) - _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(arg_1.a + 1223f))) * var_1.a));
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1927f, var_1.a, -326f))), vec3<f32>(1075f, 1282f, -1208f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(202f, arg_1.a, arg_1.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-729f, _wgslsmith_f_op_f32(-1076f - 975f), _wgslsmith_f_op_f32(ceil(-432f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(195f, -1263f, var_1.a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 557f, arg_1.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 949f, var_1.a)))))));
    return ~(~vec3<u32>(36943u, 36901u, u_input.b) >> (vec3<u32>(38797u, 4294967295u, ~arg_1.b.x) % vec3<u32>(32u))) >> ((_wgslsmith_sub_vec3_u32(~vec3<u32>(30823u, 4294967295u, 0u), abs(~vec3<u32>(15263u, 17366u, var_1.b.x))) & max(~(~vec3<u32>(1u, 48769u, 0u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(11940u, arg_1.d, var_1.d), vec3<u32>(0u, 9353u, 32864u)))) % vec3<u32>(32u));
}

fn func_2() -> vec4<u32> {
    global0 = ~firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(global0.x, 56481u, 1u), 1u, 0u | u_input.b) << (min(func_3(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 22u)]), Struct_1(562f, vec2<u32>(global0.x, 25758u), true, u_input.c.x)), max(vec3<u32>(1u, global0.x, u_input.b), vec3<u32>(global0.x, 1u, u_input.a.x))) % vec3<u32>(32u)));
    global0 = _wgslsmith_sub_vec3_u32(func_3(~(-firstTrailingBit(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(86629u, 22u)]))), Struct_1(732f, vec2<u32>(global0.x, func_3(vec2<i32>(global2[_wgslsmith_index_u32(global0.x, 22u)], global2[_wgslsmith_index_u32(global0.x, 22u)]), Struct_1(850f, u_input.c, true, global0.x)).x), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), ~_wgslsmith_sub_u32(global0.x, 12843u))), ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(0u, u_input.b, 0u)), ~vec3<u32>(7654u, u_input.a.x, global0.x)));
    global0 = _wgslsmith_sub_vec3_u32(abs(max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 63964u, global0.x), vec3<u32>(u_input.b, 7100u, 93483u)) >> (firstTrailingBit(vec3<u32>(4294967295u, 0u, global0.x)) % vec3<u32>(32u)), ~(~vec3<u32>(global0.x, u_input.c.x, 41783u)))), select(vec3<u32>(11163u, u_input.c.x, 35937u), ~(~vec3<u32>(global0.x, 0u, global0.x) << (vec3<u32>(15687u, u_input.a.x, global0.x) % vec3<u32>(32u))), vec3<bool>(true, true, !(global0.x < 93434u))));
    global1 = array<vec2<f32>, 10>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1211f), ~15271u);
    return _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(35966u, ~global0.x, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 1u, 29392u, 1u), vec4<u32>(var_0.b, u_input.c.x, u_input.a.x, 4294967295u))), _wgslsmith_add_u32(~u_input.b, ~9043u)), vec4<u32>(1u << (~4294967295u % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 3234u), vec4<u32>(65351u, var_0.b, u_input.a.x, var_0.b)), abs(vec4<u32>(global0.x, 0u, global0.x, global0.x))), func_3(vec2<i32>(-29982i, global2[_wgslsmith_index_u32(39726u, 22u)]), Struct_1(var_0.a, vec2<u32>(1u, var_0.b), false, var_0.b)).x, 0u)), vec4<u32>(0u, ~1u, global0.x, ~2768u));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2) -> vec2<bool> {
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(func_2(), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(57929u, 15344u, 0u, arg_2.b.b.x), vec4<u32>(global0.x, global0.x, 32718u, u_input.b), vec4<u32>(4294967295u, 10743u, arg_2.b.d, 27898u)), ~vec4<u32>(1u, 2350u, arg_2.b.d, u_input.a.x))), 49462u, global0.x), ~(~firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.b.b.x, arg_2.b.b.x, arg_2.b.b.x), vec3<u32>(global0.x, 1u, 18059u)))), ~(vec3<u32>(~21554u, global0.x, select(53394u, u_input.b, true)) >> (~(vec3<u32>(4294967295u, 36546u, 16313u) << (vec3<u32>(0u, 0u, global0.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    global0 = min(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(~arg_2.b.d, ~33410u, 0u)), countOneBits(select(vec3<u32>(global0.x, global0.x, 14603u) & vec3<u32>(arg_2.b.d, 74678u, 0u), vec3<u32>(14366u, 4294967295u, 84204u), any(vec4<bool>(arg_2.b.c, arg_2.b.c, arg_1, arg_1))))), _wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.c.x) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u))), select(min(vec3<u32>(882u, u_input.c.x, 0u), vec3<u32>(arg_2.b.d, arg_2.b.b.x, 4294967295u)), vec3<u32>(0u, global0.x, 1u) << (vec3<u32>(arg_2.b.d, 1u, 5169u) % vec3<u32>(32u)), arg_2.b.c & false) >> (vec3<u32>(arg_2.b.d, countOneBits(u_input.a.x), 1u) % vec3<u32>(32u))));
    global1 = array<vec2<f32>, 10>();
    global0 = vec3<u32>(u_input.c.x, abs(~_wgslsmith_mod_u32(1u, 18873u)), 1u) & ~func_3(select(firstTrailingBit(vec2<i32>(-4633i, -6613i)), arg_0.zy | arg_0.yx, true), Struct_1(_wgslsmith_f_op_f32(-arg_2.c.x), ~vec2<u32>(50252u, u_input.b), arg_1, ~31321u));
    var var_0 = arg_2;
    return select(select(!vec2<bool>(true, any(vec2<bool>(var_0.b.c, arg_1))), select(vec2<bool>(!var_0.b.c, !arg_1), select(vec2<bool>(false, arg_2.b.c), !vec2<bool>(true, arg_1), true), !(!arg_1)), all(select(vec4<bool>(true, true, arg_2.b.c, arg_1), !vec4<bool>(true, var_0.b.c, arg_1, arg_1), !vec4<bool>(var_0.b.c, true, var_0.b.c, true)))), vec2<bool>(arg_1, false), select(select(!vec2<bool>(true, arg_1), select(select(vec2<bool>(var_0.b.c, false), vec2<bool>(var_0.b.c, false), vec2<bool>(var_0.b.c, arg_2.b.c)), !vec2<bool>(var_0.b.c, true), vec2<bool>(arg_1, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), arg_1), vec2<bool>(true, true), vec2<bool>(true, arg_2.b.c))), vec2<bool>(true, var_0.b.c), !select(select(vec2<bool>(arg_1, arg_2.b.c), vec2<bool>(arg_1, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), var_0.b.c), vec2<bool>(true, var_0.b.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(true, (-30807i | global2[_wgslsmith_index_u32(1737u, 22u)]) == 0i), select(func_1(vec3<i32>(global2[_wgslsmith_index_u32(41990u, 22u)], -1i, -2147483647i), global0.x != u_input.a.x, Struct_2(global1[_wgslsmith_index_u32(u_input.b, 10u)], Struct_1(-967f, vec2<u32>(u_input.c.x, u_input.c.x), false, global0.x), vec4<f32>(-348f, -392f, 410f, 450f))), vec2<bool>(true, all(vec4<bool>(false, true, false, true))), vec2<bool>(true, any(vec2<bool>(true, true)))), select(true && select(true, false, true), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), any(vec2<bool>(false, true))));
    let var_1 = Struct_3(-260f, global0.x);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(0u >> (u_input.a.x % 32u), 19722u, ~u_input.c.x), select(_wgslsmith_mod_u32(23943u, var_1.b), firstTrailingBit(u_input.c.x), all(vec3<bool>(true, var_0.x, var_0.x))), 23336u), ~abs(~vec3<u32>(41050u, u_input.a.x, var_1.b))), 22u)] >> (global0.x % 32u);
    let var_3 = Struct_1(2110f, ~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.b, 0u), ~u_input.c), func_1(-(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(3108u, 22u)], global2[_wgslsmith_index_u32(var_1.b, 22u)]) & vec3<i32>(global2[_wgslsmith_index_u32(global0.x, 22u)], global2[_wgslsmith_index_u32(27139u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)])), all(select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.x, false, true, false), false)), Struct_2(vec2<f32>(-1099f, var_1.a), Struct_1(329f, u_input.c, false, var_1.b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a, var_1.a, -1380f, 986f), vec4<f32>(-470f, var_1.a, -530f, -951f))))).x && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) == var_1.a), var_1.b);
    let var_4 = (_wgslsmith_mult_vec4_u32((vec4<u32>(var_1.b, global0.x, var_3.d, 0u) >> (vec4<u32>(var_3.d, 4159u, 3425u, var_3.b.x) % vec4<u32>(32u))) | vec4<u32>(var_1.b, var_1.b, 4294967295u, global0.x), firstTrailingBit(vec4<u32>(70952u, global0.x, var_1.b, 58414u) | vec4<u32>(0u, 1u, var_1.b, 20845u))) << (vec4<u32>(select(var_3.d & global0.x, global0.x ^ var_1.b, true & var_0.x), ~4294967295u, 4294967295u, firstLeadingBit(4294967295u)) % vec4<u32>(32u))) & vec4<u32>(~38546u, func_3(-abs(vec2<i32>(-12579i, global2[_wgslsmith_index_u32(var_3.d, 22u)])), Struct_1(1081f, _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b, var_3.d), u_input.a), !var_3.c, ~u_input.c.x)).x, u_input.a.x, 14930u);
    var var_5 = -(_wgslsmith_dot_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], -10009i, 0i), vec3<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(11768u, 22u)], global2[_wgslsmith_index_u32(26791u, 22u)]), ~(-35934i), select(-2147483647i, global2[_wgslsmith_index_u32(var_4.x, 22u)], var_3.c))) | global2[_wgslsmith_index_u32(var_3.b.x, 22u)]);
    var var_6 = vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_4.x, firstTrailingBit(_wgslsmith_clamp_u32(global0.x, 50933u, 83248u))) << (~(~(~43603u)) % 32u), 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)]);
    let var_7 = -737f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-firstTrailingBit(~vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(var_4.x, 22u)]))), 387f);
}

