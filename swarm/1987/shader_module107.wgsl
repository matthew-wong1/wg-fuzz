struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 29>;

var<private> global2: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(-39018i, -1635i), vec2<i32>(-3857i, 1i), vec2<i32>(0i, 33063i), vec2<i32>(-44604i, 21472i), vec2<i32>(2147483647i, 25641i), vec2<i32>(-63631i, 27640i), vec2<i32>(i32(-2147483648), -23387i), vec2<i32>(1i, -38610i), vec2<i32>(2147483647i, -15281i), vec2<i32>(51110i, 1i), vec2<i32>(i32(-2147483648), 12184i), vec2<i32>(2147483647i, 9339i), vec2<i32>(-48277i, 1i), vec2<i32>(1i, 21898i), vec2<i32>(2147483647i, -7019i), vec2<i32>(-2704i, 0i), vec2<i32>(-3036i, -1204i), vec2<i32>(0i, -1i), vec2<i32>(17784i, -564i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, -1i), vec2<i32>(2147483647i, -42898i), vec2<i32>(-11379i, -1i), vec2<i32>(-18645i, 2147483647i), vec2<i32>(2147483647i, 43499i));

var<private> global3: array<bool, 4> = array<bool, 4>(true, true, true, false);

var<private> global4: array<bool, 8> = array<bool, 8>(false, true, false, false, true, false, true, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = arg_1;
    let var_1 = ~(17264u << (max(1u, u_input.a) % 32u));
    global2 = array<vec2<i32>, 26>();
    var var_2 = -34438i;
    return arg_1.d.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = arg_1;
    global2 = array<vec2<i32>, 26>();
    let var_1 = arg_1;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    global4 = array<bool, 8>();
    var var_0 = vec4<bool>(false, 0u < u_input.a, true, (arg_0.c.x & global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 4u)]) | select(arg_2.x, !arg_0.b, any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 8u)], global3[_wgslsmith_index_u32(u_input.a, 4u)]))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)));
    let var_2 = Struct_1(_wgslsmith_sub_i32(func_2(0i, func_3(func_3(arg_0, arg_0, u_input.d.wyw, -17052i), arg_0, abs(u_input.d.zyx), _wgslsmith_clamp_i32(-1i, global0.a, 2147483647i)), _wgslsmith_div_i32(func_2(2147483647i, Struct_1(-1i, true, arg_2.yx, global2[_wgslsmith_index_u32(52190u, 26u)]), 0i), arg_0.a)), u_input.c), true, func_3(Struct_1((0i & global0.a) ^ (arg_0.a & -2147483647i), true, !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], false), u_input.b.xz ^ arg_0.d), arg_0, max(firstTrailingBit(u_input.d.zzw), u_input.d.wzx), -(_wgslsmith_mod_i32(u_input.c, -2147483647i) << (4553u % 32u))).c, vec2<i32>(1i, ~arg_0.d.x));
    let var_3 = 46532i;
    return Struct_1(firstLeadingBit(-(reverseBits(2147483647i) | (var_2.d.x ^ var_3))), func_3(func_3(func_3(func_3(Struct_1(-7864i, false, global0.c, vec2<i32>(1i, u_input.b.x)), Struct_1(global0.d.x, false, vec2<bool>(true, true), vec2<i32>(var_2.d.x, var_2.a)), vec3<i32>(var_3, arg_0.a, global0.a), global0.a), arg_0, u_input.b << (vec3<u32>(11892u, 4294967295u, 80411u) % vec3<u32>(32u)), ~arg_0.a), arg_0, -u_input.b, u_input.b.x), var_2, vec3<i32>(arg_0.a, _wgslsmith_div_i32(global0.d.x, var_2.d.x), _wgslsmith_mod_i32(-14676i, arg_0.a)), 2147483647i).c.x, func_3(var_2, Struct_1(arg_0.a, !(u_input.a <= 0u), vec2<bool>(arg_0.b, var_0.x), -global0.d ^ global1[_wgslsmith_index_u32(u_input.a, 29u)]), u_input.b, 2147483647i).c, global2[_wgslsmith_index_u32(~u_input.a, 26u)]);
}

fn func_1() -> f32 {
    global0 = func_4(func_3(Struct_1((i32(-1i) * -11801i) ^ firstTrailingBit(u_input.b.x), !any(vec2<bool>(false, true)), vec2<bool>(true, true), vec2<i32>(global0.a, ~u_input.b.x)), Struct_1(global0.a >> (u_input.a % 32u), any(vec2<bool>(global4[_wgslsmith_index_u32(1u, 8u)], true)), global0.c, vec2<i32>(0i, ~u_input.b.x)), _wgslsmith_mod_vec3_i32(u_input.d.wxx, vec3<i32>(min(1i, 37317i), _wgslsmith_add_i32(-2147483647i, -1i), func_2(global0.d.x, Struct_1(0i, true, vec2<bool>(true, false), vec2<i32>(18410i, 20267i)), u_input.d.x))), (1i | (global0.a >> (84931u % 32u))) & firstTrailingBit(countOneBits(u_input.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f + 160f)) + 368f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(291f)), -841f))))), vec3<bool>(true, all(global0.c), !global3[_wgslsmith_index_u32(~u_input.a, 4u)] || true));
    global0 = func_4(func_4(Struct_1(40387i, false, global0.c, firstTrailingBit(vec2<i32>(-1i, u_input.b.x))), -910f, vec3<bool>(all(global0.c), true, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-356f + 158f) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f) - _wgslsmith_f_op_f32(max(-786f, 1553f))))), vec3<bool>(func_4(Struct_1(u_input.b.x, !global0.c.x, !vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.d.zz)), _wgslsmith_f_op_f32(708f + -954f), vec3<bool>(true, false, 12665u != u_input.a)).b, !func_4(Struct_1(u_input.d.x, global4[_wgslsmith_index_u32(u_input.a, 8u)], vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 8u)]), vec2<i32>(global0.a, -2147483647i)), 1000f, vec3<bool>(global4[_wgslsmith_index_u32(35386u, 8u)], true, true)).c.x && global0.c.x, global4[_wgslsmith_index_u32(1u, 8u)]));
    var var_0 = func_4(func_3(func_4(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-28808i, global0.d.x), vec2<i32>(u_input.c, u_input.c)), global3[_wgslsmith_index_u32(~u_input.a, 4u)], !global0.c, _wgslsmith_mult_vec2_i32(vec2<i32>(global0.a, 295i), global2[_wgslsmith_index_u32(u_input.a, 26u)])), _wgslsmith_f_op_f32(f32(-1f) * -986f), !select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], global4[_wgslsmith_index_u32(22310u, 8u)], false), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 8u)], false, global0.c.x), global0.c.x)), func_3(Struct_1(u_input.c, global4[_wgslsmith_index_u32(u_input.a, 8u)], func_4(Struct_1(-8429i, false, vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(5369u, 4u)]), vec2<i32>(2147483647i, 1i)), 339f, vec3<bool>(global3[_wgslsmith_index_u32(1u, 4u)], false, global4[_wgslsmith_index_u32(37935u, 8u)])).c, ~vec2<i32>(1i, -1i)), Struct_1(firstTrailingBit(global0.a), true, global0.c, reverseBits(global1[_wgslsmith_index_u32(0u, 29u)])), u_input.b, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global0.a, 0i, 944i), global0.a)), -vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(1i, -20767i, global0.d.x, 33937i)), abs(u_input.b.x), ~35276i), abs(1i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(539f + -143f) * _wgslsmith_f_op_f32(step(1000f, -1056f))), 599f) + -1047f), select(select(!(!vec3<bool>(true, global0.b, global0.b)), vec3<bool>(func_4(Struct_1(global0.d.x, true, global0.c, vec2<i32>(-72156i, global0.d.x)), 1305f, vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 8u)], true, true)).b, select(false, true, global4[_wgslsmith_index_u32(u_input.a, 8u)]), global4[_wgslsmith_index_u32(~u_input.a, 8u)]), select(!vec3<bool>(false, global0.c.x, false), !vec3<bool>(true, false, global4[_wgslsmith_index_u32(u_input.a, 8u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], global4[_wgslsmith_index_u32(u_input.a, 8u)], global4[_wgslsmith_index_u32(1u, 8u)]), vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.a, 4u)]), false))), select(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a ^ u_input.a, 8u)], !global3[_wgslsmith_index_u32(0u, 4u)]), select(select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 4u)], true, false), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 4u)], global3[_wgslsmith_index_u32(1u, 4u)]), true), vec3<bool>(false, false, global4[_wgslsmith_index_u32(28289u, 8u)]), global0.b), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], global4[_wgslsmith_index_u32(u_input.a, 8u)], global0.c.x), !vec3<bool>(global3[_wgslsmith_index_u32(8117u, 4u)], global0.b, false), func_3(Struct_1(1i, false, global0.c, vec2<i32>(global0.d.x, global0.a)), Struct_1(global0.a, global0.c.x, vec2<bool>(false, true), global0.d), u_input.d.zyw, 42567i).c.x)), select(vec3<bool>(global0.b, false, global4[_wgslsmith_index_u32(1u, 8u)]), select(vec3<bool>(global0.b, false, global3[_wgslsmith_index_u32(u_input.a, 4u)]), vec3<bool>(global4[_wgslsmith_index_u32(103408u, 8u)], global3[_wgslsmith_index_u32(u_input.a, 4u)], true), global3[_wgslsmith_index_u32(4294967295u ^ u_input.a, 4u)]), select(vec3<bool>(true, true, true), select(vec3<bool>(true, global4[_wgslsmith_index_u32(88u, 8u)], global3[_wgslsmith_index_u32(1u, 4u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(22971u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)]), global3[_wgslsmith_index_u32(122745u, 4u)]), !global3[_wgslsmith_index_u32(u_input.a, 4u)]))));
    var var_1 = !global3[_wgslsmith_index_u32(u_input.a & reverseBits(_wgslsmith_sub_u32(u_input.a, max(4294967295u, 51003u))), 4u)];
    var var_2 = Struct_1(func_2(40416i, func_4(func_3(Struct_1(11144i, global4[_wgslsmith_index_u32(0u, 8u)], vec2<bool>(global0.b, global0.c.x), vec2<i32>(var_0.d.x, u_input.d.x)), Struct_1(u_input.d.x, var_0.b, var_0.c, vec2<i32>(u_input.b.x, u_input.d.x)), ~u_input.d.wxy, -global0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1198f)), !vec3<bool>(true, var_0.c.x, false)), var_0.a), any(vec4<bool>(func_3(Struct_1(2147483647i, false, vec2<bool>(var_0.c.x, false), global0.d), Struct_1(global0.d.x, false, var_0.c, global1[_wgslsmith_index_u32(0u, 29u)]), vec3<i32>(global0.a, -41475i, 12061i), -2147483647i).c.x, var_0.d.x == global0.d.x, !global4[_wgslsmith_index_u32(32504u, 8u)], true)) && all(func_4(func_3(Struct_1(global0.d.x, global3[_wgslsmith_index_u32(4294967295u, 4u)], global0.c, vec2<i32>(10939i, 25744i)), Struct_1(-13251i, var_0.b, global0.c, var_0.d), u_input.b, global0.d.x), 2039f, vec3<bool>(global4[_wgslsmith_index_u32(51343u, 8u)], var_0.b, global3[_wgslsmith_index_u32(u_input.a, 4u)])).c), !select(!select(var_0.c, vec2<bool>(var_0.b, true), var_0.c), func_3(Struct_1(var_0.a, global4[_wgslsmith_index_u32(u_input.a, 8u)], var_0.c, u_input.b.xy), func_3(Struct_1(u_input.c, false, var_0.c, u_input.d.zy), Struct_1(global0.d.x, global4[_wgslsmith_index_u32(1u, 8u)], global0.c, vec2<i32>(u_input.c, -12253i)), vec3<i32>(-2147483647i, var_0.a, u_input.c), global0.a), firstTrailingBit(u_input.d.wwx), func_2(2147483647i, Struct_1(1i, true, vec2<bool>(var_0.c.x, global0.b), u_input.b.zz), 5375i)).c, true), func_3(Struct_1(var_0.a, true, vec2<bool>(all(var_0.c), true), firstTrailingBit(global2[_wgslsmith_index_u32(countOneBits(14972u), 26u)])), func_4(func_4(Struct_1(global0.d.x, false, var_0.c, vec2<i32>(u_input.c, 4739i)), -1388f, !vec3<bool>(global0.c.x, true, false)), -2819f, select(vec3<bool>(false, var_0.c.x, false), vec3<bool>(true, false, true), !global0.b)), vec3<i32>(global0.d.x << (1u % 32u), var_0.a, -var_0.a), ~firstLeadingBit(u_input.c)).d);
    return -2463f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(80070u, 41674u)), vec2<u32>(4294967295u, u_input.a)) & vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(24593u, 1u, 8333u, 0u), vec4<u32>(7871u, u_input.a, u_input.a, u_input.a)))), ~(~vec2<u32>(~u_input.a, u_input.a)));
    var var_1 = _wgslsmith_div_f32(1010f, _wgslsmith_f_op_f32(func_1()));
    global4 = array<bool, 8>();
    global1 = array<vec2<i32>, 29>();
    var var_2 = func_4(func_3(func_4(func_4(func_3(Struct_1(global0.d.x, global4[_wgslsmith_index_u32(var_0.x, 8u)], vec2<bool>(false, global0.c.x), global1[_wgslsmith_index_u32(88594u, 29u)]), Struct_1(-1i, global4[_wgslsmith_index_u32(u_input.a, 8u)], vec2<bool>(global0.c.x, global0.b), global0.d), vec3<i32>(global0.d.x, u_input.d.x, global0.a), global0.a), _wgslsmith_f_op_f32(min(-337f, 1037f)), select(vec3<bool>(global4[_wgslsmith_index_u32(43051u, 8u)], false, global4[_wgslsmith_index_u32(u_input.a, 8u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 8u)], true, global4[_wgslsmith_index_u32(u_input.a, 8u)]), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -477f) - -644f), vec3<bool>(func_3(Struct_1(global0.d.x, false, global0.c, vec2<i32>(global0.a, global0.d.x)), Struct_1(global0.d.x, false, vec2<bool>(global4[_wgslsmith_index_u32(var_0.x, 8u)], global4[_wgslsmith_index_u32(0u, 8u)]), vec2<i32>(10762i, 0i)), u_input.b, -53389i).c.x, false && global3[_wgslsmith_index_u32(u_input.a, 4u)], global3[_wgslsmith_index_u32(var_0.x, 4u)] & global3[_wgslsmith_index_u32(85878u, 4u)])), Struct_1(-2147483647i, -global0.d.x > u_input.d.x, vec2<bool>(false, false), ~_wgslsmith_add_vec2_i32(global1[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(u_input.a, 26u)])), reverseBits(firstTrailingBit(countOneBits(u_input.d.xwx))), 17464i), _wgslsmith_f_op_f32(round(-754f)), vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(128552u) ^ _wgslsmith_sub_u32(u_input.a, var_0.x), u_input.a, 1u), 8u)], global4[_wgslsmith_index_u32(~29026u << (~u_input.a % 32u), 8u)] & true, true & (true == (global0.a < global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(1578f, vec2<i32>(-1i, global0.a), global0.d.x, ~u_input.a);
}

