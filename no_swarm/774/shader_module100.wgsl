struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(27164u, 47202u, 4294967295u, 750u, 0u, 4294967295u, 4294967295u, 65643u, 1u, 58335u, 1u, 81721u, 4294967295u);

var<private> global1: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(1427f, 1841f, 368f, 976f), vec4<f32>(1613f, 786f, -555f, 1528f), vec4<f32>(407f, -646f, -544f, -164f), vec4<f32>(537f, 1556f, 194f, -1000f), vec4<f32>(-147f, -1000f, 758f, 1434f), vec4<f32>(-1000f, 1333f, -187f, 466f));

var<private> global2: array<i32, 3> = array<i32, 3>(-8006i, 38850i, 2147483647i);

var<private> global3: array<Struct_1, 26>;

var<private> global4: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(1i, -1i, 0i, -48753i), vec4<i32>(-15857i, 35865i, 2147483647i, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_1(arg_0, !select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, false))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))));
    var_0 = Struct_1(~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, var_0.a.x, global0[_wgslsmith_index_u32(u_input.d, 13u)]), vec4<u32>(var_0.a.x, ~arg_0.x, _wgslsmith_sub_u32(28755u, u_input.d), arg_0.x)), select(var_0.b, vec4<bool>(all(!vec4<bool>(false, false, false, var_0.b.x)), true, var_0.b.x, !var_0.b.x), vec4<bool>(false, true, var_0.b.x, ~(-36586i) != u_input.c)));
    let var_1 = select(var_0.b.wx, vec2<bool>(!(!all(vec2<bool>(true, var_0.b.x))), select(all(!var_0.b), false, select(var_0.b.x, any(var_0.b.yw), true))), !var_0.b.wz);
    var var_2 = 426f;
    global2 = array<i32, 3>();
    return _wgslsmith_f_op_f32(1000f + -1336f);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d | 29672u, _wgslsmith_mod_u32(24032u, 2246u), _wgslsmith_dot_vec3_u32(vec3<u32>(108961u, arg_0.x, 40907u), vec3<u32>(4294967295u, 38976u, 16737u)), ~1u) << (vec4<u32>(1u, ~4294967295u, global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 13u)], 1u & arg_0.x) % vec4<u32>(32u)), ~max(vec4<u32>(45931u, arg_0.x, 5599u, global0[_wgslsmith_index_u32(arg_0.x, 13u)]), vec4<u32>(1468u, global0[_wgslsmith_index_u32(u_input.d, 13u)], 53884u, arg_0.x) ^ vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.d, 0u, u_input.d))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.d > u_input.d), all(vec2<bool>(false, true))));
    global0 = array<u32, 13>();
    global4 = array<vec4<i32>, 2>();
    var var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f - _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.d, u_input.d, 4294967295u, 62685u | arg_0.x)))));
    return _wgslsmith_mult_u32(1u, ~arg_0.x);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(~(~(~reverseBits(firstTrailingBit(u_input.d)))), 26u)];
    let var_1 = vec4<i32>(-2147483647i, u_input.b.x, -_wgslsmith_mult_i32(2147483647i & _wgslsmith_div_i32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.x, 13u)], 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]), ~global2[_wgslsmith_index_u32(30650u, 3u)] & (global2[_wgslsmith_index_u32(68552u, 3u)] << (0u % 32u))), 71626i);
    var var_2 = all(!vec2<bool>(var_0.b.x, _wgslsmith_clamp_i32(2147483647i, -45238i, 1i) > 2147483647i));
    let var_3 = vec3<u32>(var_0.a.x, countOneBits(_wgslsmith_sub_u32(~(4294967295u << (global0[_wgslsmith_index_u32(12703u, 13u)] % 32u)), 1u)), var_0.a.x);
    global2 = array<i32, 3>();
    return global3[_wgslsmith_index_u32(func_2(vec2<u32>(global0[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_add_u32(countOneBits(_wgslsmith_clamp_u32(94626u, 10917u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 13u)], 13u)])), var_3.x))), 26u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.d, global0[_wgslsmith_index_u32(21070u, 13u)]), 1u, arg_0.b.a.x, abs(49182u))), vec4<u32>(arg_0.b.a.x, ~arg_1.c.a.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(50723u, 1u), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(50463u, 13u)], 4294967295u, arg_0.c.a.x)), _wgslsmith_mod_u32(arg_1.b.a.x, 4294967295u) | (arg_1.b.a.x << (32640u % 32u))), ~arg_1.c.a), func_1(any(vec2<bool>(all(vec2<bool>(true, false)), !arg_0.b.b.x))).b);
    global0 = array<u32, 13>();
    global1 = array<vec4<f32>, 6>();
    var var_1 = Struct_3(~4294967295u, _wgslsmith_add_i32(-34499i, select(1i, _wgslsmith_sub_i32(21873i, -1i) >> (~4294967295u % 32u), true)), ~(~(~u_input.b) << (~abs(vec2<u32>(43417u, 4294967295u)) % vec2<u32>(32u))));
    var_0 = Struct_1(arg_0.c.a, vec4<bool>(var_0.b.x, !(!(true != arg_0.c.b.x)), arg_1.b.b.x, true));
    return Struct_2(true, Struct_1(var_0.a ^ arg_1.b.a, vec4<bool>(~arg_1.b.a.x >= _wgslsmith_sub_u32(0u, var_0.a.x), true, var_0.b.x, var_0.b.x)), Struct_1(vec4<u32>(_wgslsmith_sub_u32(13685u, ~var_0.a.x), 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, arg_1.b.a.x), ~42555u, ~1u), countOneBits(countOneBits(global0[_wgslsmith_index_u32(arg_0.b.a.x, 13u)]))), select(!vec4<bool>(var_0.b.x, arg_1.b.b.x, false, false), vec4<bool>(var_0.b.x, true | var_0.b.x, false, !var_0.b.x), var_0.b.x)));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    let var_0 = arg_1;
    let var_1 = Struct_2(true, func_4(func_4(func_4(arg_0, Struct_2(true, arg_0.b, Struct_1(vec4<u32>(u_input.d, 1u, 1u, 0u), vec4<bool>(arg_0.c.b.x, false, arg_0.c.b.x, arg_0.b.b.x)))), func_4(func_4(arg_0, arg_0), func_4(arg_0, Struct_2(false, Struct_1(arg_0.b.a, arg_0.c.b), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5310u, 13u)], 13u)]), arg_0.b.b))))), Struct_2(arg_0.b.b.x, func_4(arg_0, Struct_2(arg_0.a, global3[_wgslsmith_index_u32(11371u, 26u)], global3[_wgslsmith_index_u32(1u, 26u)])).c, global3[_wgslsmith_index_u32(0u, 26u)])).c, arg_0.c);
    var var_2 = Struct_2(func_4(Struct_2(!var_1.c.b.x, func_1(false), global3[_wgslsmith_index_u32(1u, 26u)]), Struct_2(var_1.b.b.x, func_4(Struct_2(arg_0.c.b.x, Struct_1(vec4<u32>(20873u, global0[_wgslsmith_index_u32(4294967295u, 13u)], arg_0.c.a.x, global0[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(arg_0.b.b.x, false, false, var_1.c.b.x)), var_1.b), Struct_2(arg_0.b.b.x, Struct_1(vec4<u32>(0u, 46990u, 21009u, var_1.b.a.x), var_1.c.b), Struct_1(vec4<u32>(u_input.d, var_1.b.a.x, global0[_wgslsmith_index_u32(4294967295u, 13u)], 0u), vec4<bool>(var_1.b.b.x, true, arg_0.a, false)))).b, Struct_1(abs(arg_0.c.a), func_4(Struct_2(var_1.a, Struct_1(var_1.c.a, vec4<bool>(false, arg_0.b.b.x, var_1.c.b.x, arg_0.a)), Struct_1(var_1.c.a, var_1.b.b)), Struct_2(var_1.a, Struct_1(vec4<u32>(var_1.c.a.x, 4294967295u, u_input.d, arg_0.c.a.x), arg_0.c.b), arg_0.b)).c.b))).a, func_4(Struct_2(!(!var_1.a), arg_0.b, func_4(func_4(Struct_2(var_1.a, global3[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(vec4<u32>(arg_0.b.a.x, arg_0.b.a.x, 1u, 1u), arg_0.c.b)), var_1), var_1).b), func_4(var_1, Struct_2(true, func_1(arg_0.a), func_4(Struct_2(false, Struct_1(vec4<u32>(4294967295u, var_1.c.a.x, 0u, 27930u), vec4<bool>(true, false, arg_0.a, var_1.a)), arg_0.c), arg_0).b))).c, var_1.b);
    let var_3 = func_4(arg_0, arg_0);
    global3 = array<Struct_1, 26>();
    return Struct_3(_wgslsmith_clamp_u32(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)] | var_3.c.a.x) | countOneBits(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5511u, 13u)], 13u)])), ~_wgslsmith_clamp_u32(0u, firstTrailingBit(var_1.c.a.x), 1u), 4294967295u), 1i, abs(_wgslsmith_add_vec2_i32(vec2<i32>(17809i, global2[_wgslsmith_index_u32(3253u, 3u)]), u_input.b) | (u_input.b << (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.b.a.x, arg_0.c.a.x), var_2.c.a.zx, vec2<u32>(28191u, arg_0.c.a.x)) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-16760i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-6156i, 2147483647i)), i32(-1i) * -73437i, _wgslsmith_mult_i32(u_input.b.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 13u)], 3u)])), _wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(68304u, 3u)], 2147483647i, 5386i, global2[_wgslsmith_index_u32(29956u, 3u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, 2147483647i, -11324i), global4[_wgslsmith_index_u32(u_input.d, 2u)]))));
    let var_1 = func_5(func_4(Struct_2(true, Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u, u_input.d, 33997u), vec4<bool>(true, false, false, false)), func_1(true)), Struct_2(true, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.d), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.d, 13u)], u_input.d)), 26u)], Struct_1(vec4<u32>(4294967295u, 56350u, u_input.d, 46349u) >> (vec4<u32>(5340u, global0[_wgslsmith_index_u32(u_input.d, 13u)], u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 13u)], 13u)]) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)))), 1f);
    let var_2 = var_1;
    global4 = array<vec4<i32>, 2>();
    let var_3 = func_4(Struct_2(all(vec4<bool>(true, true, true, true)), func_4(func_4(func_4(Struct_2(true, Struct_1(vec4<u32>(17814u, 1u, 79526u, 4294967295u), vec4<bool>(true, false, true, false)), Struct_1(vec4<u32>(4294967295u, var_2.a, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)]), vec4<bool>(true, true, false, false))), Struct_2(false, Struct_1(vec4<u32>(var_1.a, var_1.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6053u, 13u)], 13u)], 1u), vec4<bool>(false, true, false, true)), Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(78400u, 13u)], 0u, 1u, 42650u), vec4<bool>(true, true, false, true)))), Struct_2(true, global3[_wgslsmith_index_u32(33962u, 26u)], Struct_1(vec4<u32>(var_2.a, u_input.d, u_input.d, 40181u), vec4<bool>(false, false, false, false)))), func_4(func_4(Struct_2(false, Struct_1(vec4<u32>(var_1.a, 4294967295u, 1u, var_1.a), vec4<bool>(false, true, true, false)), global3[_wgslsmith_index_u32(var_2.a, 26u)]), Struct_2(false, Struct_1(vec4<u32>(var_1.a, var_1.a, var_2.a, 65133u), vec4<bool>(true, false, true, true)), global3[_wgslsmith_index_u32(31958u, 26u)])), Struct_2(true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a, 13u)], 26u)], Struct_1(vec4<u32>(u_input.d, var_1.a, u_input.d, u_input.d), vec4<bool>(true, true, true, false))))).c, func_4(func_4(func_4(Struct_2(false, global3[_wgslsmith_index_u32(var_2.a, 26u)], global3[_wgslsmith_index_u32(49399u, 26u)]), Struct_2(false, global3[_wgslsmith_index_u32(var_2.a, 26u)], Struct_1(vec4<u32>(17657u, 12218u, 0u, 0u), vec4<bool>(true, true, false, false)))), Struct_2(true, global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(var_2.a, 26u)])), func_4(Struct_2(true, Struct_1(vec4<u32>(u_input.d, u_input.d, var_2.a, 0u), vec4<bool>(true, true, true, true)), global3[_wgslsmith_index_u32(u_input.d, 26u)]), Struct_2(false, Struct_1(vec4<u32>(u_input.d, 40672u, 4294967295u, 12165u), vec4<bool>(true, false, true, false)), Struct_1(vec4<u32>(0u, var_2.a, var_2.a, 29530u), vec4<bool>(false, true, true, true))))).c), Struct_2(true, func_1(func_1(true).b.x), global3[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(~(~1u), 13u)], var_1.a), 26u)])).b.b.wy;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1892f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(211f, 2414f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f)))), 531f, -4466i);
}

