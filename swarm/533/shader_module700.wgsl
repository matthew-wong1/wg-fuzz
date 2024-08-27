struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<bool>(false, true), vec2<u32>(13306u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec2<u32>(58432u, 61643u)), Struct_1(vec2<bool>(false, false), vec2<u32>(1913u, 32364u)), Struct_1(vec2<bool>(true, false), vec2<u32>(112657u, 0u)), Struct_1(vec2<bool>(true, true), vec2<u32>(1u, 0u)), Struct_1(vec2<bool>(false, false), vec2<u32>(1u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec2<u32>(0u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec2<u32>(91517u, 88529u)), Struct_1(vec2<bool>(true, false), vec2<u32>(0u, 76777u)), Struct_1(vec2<bool>(true, true), vec2<u32>(2572u, 18152u)), Struct_1(vec2<bool>(true, false), vec2<u32>(31679u, 36417u)), Struct_1(vec2<bool>(true, true), vec2<u32>(1u, 57020u)), Struct_1(vec2<bool>(false, true), vec2<u32>(50726u, 55164u)), Struct_1(vec2<bool>(true, true), vec2<u32>(28508u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<bool>(false, true), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<bool>(false, false), vec2<u32>(4294967295u, 2030u)), Struct_1(vec2<bool>(false, false), vec2<u32>(58587u, 0u)), Struct_1(vec2<bool>(true, false), vec2<u32>(1u, 7145u)), Struct_1(vec2<bool>(true, false), vec2<u32>(1u, 1u)), Struct_1(vec2<bool>(true, false), vec2<u32>(47832u, 22642u)), Struct_1(vec2<bool>(true, true), vec2<u32>(2383u, 29704u)), Struct_1(vec2<bool>(false, false), vec2<u32>(0u, 43156u)), Struct_1(vec2<bool>(true, true), vec2<u32>(0u, 7290u)), Struct_1(vec2<bool>(false, false), vec2<u32>(0u, 94770u)), Struct_1(vec2<bool>(false, false), vec2<u32>(44256u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec2<u32>(3799u, 23402u)), Struct_1(vec2<bool>(true, false), vec2<u32>(50140u, 1u)));

var<private> global2: vec3<u32>;

var<private> global3: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-2500f, -1004f, -1566f, 1043f), vec4<f32>(-993f, 303f, -320f, -1434f), vec4<f32>(339f, -2004f, -1000f, -1558f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    return arg_0.a;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.a, 59634i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(~vec2<i32>(u_input.d, -30492i)), -vec2<i32>(-30410i, u_input.b)), -firstTrailingBit(vec2<i32>(2147483647i, u_input.b)) << (~(vec2<u32>(u_input.c.x, global2.x) >> (vec2<u32>(52035u, 61209u) % vec2<u32>(32u))) % vec2<u32>(32u)), ~vec2<i32>(~(-29732i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, 8168i), vec3<i32>(u_input.b, u_input.a, -2147483647i)))));
    var var_1 = all(vec4<bool>(true, true, true, !func_2(Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(6298u, 7518u)), vec2<bool>(true, false), -1581f), false, all(vec2<bool>(false, false)), vec2<bool>(true, true)).a.x));
    global1 = array<Struct_1, 30>();
    var var_2 = firstTrailingBit(reverseBits(vec4<i32>(~(-45340i), _wgslsmith_dot_vec4_i32(-vec4<i32>(13948i, 6508i, -16935i, u_input.d), _wgslsmith_sub_vec4_i32(vec4<i32>(-645i, 0i, 17949i, -2147483647i), vec4<i32>(u_input.d, u_input.d, u_input.b, u_input.b))), u_input.a, u_input.b)));
    var var_3 = Struct_2(func_2(Struct_2(func_2(Struct_2(global1[_wgslsmith_index_u32(1u, 30u)], vec2<bool>(false, true), global0[_wgslsmith_index_u32(1u, 24u)]), true, true, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), func_2(Struct_2(Struct_1(vec2<bool>(false, false), u_input.c), vec2<bool>(false, true), -521f), false, false, vec2<bool>(false, false)).a), global0[_wgslsmith_index_u32(u_input.c.x, 24u)]), true, 784f > global0[_wgslsmith_index_u32(8512u, 24u)], !vec2<bool>(all(vec4<bool>(true, false, false, false)), true)), select(vec2<bool>(!(global2.x <= 4294967295u), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true), vec2<bool>(!any(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true)))), -795f);
    return 1f;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_2(func_2(Struct_2(arg_1, select(!arg_1.a, vec2<bool>(true, arg_1.a.x), any(vec4<bool>(arg_1.a.x, arg_1.a.x, false, false))), 511f), true, u_input.b != reverseBits(~42640i), vec2<bool>(any(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false)) == all(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), arg_1.a.x)), arg_1.a, _wgslsmith_f_op_f32(func_3()));
    let var_1 = u_input.c.x;
    var var_2 = vec2<bool>(func_2(var_0, select(false, var_0.a.a.x, false) || true, !var_0.b.x, vec2<bool>(true, !arg_1.a.x)).a.x & (all(select(vec3<bool>(arg_1.a.x, false, var_0.b.x), vec3<bool>(false, var_0.b.x, true), arg_1.a.x)) | true), arg_1.a.x);
    global2 = firstTrailingBit(vec3<u32>(u_input.c.x, 33363u, ~arg_1.b.x)) | ~vec3<u32>(~(~global2.x), min(var_0.a.b.x, var_0.a.b.x), 1u);
    var var_3 = true;
    return -1809f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, !(~0u != global2.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~(~u_input.c.x), 24u)], global0[_wgslsmith_index_u32(1u, 24u)], any(!(!vec4<bool>(false, var_0.x, var_0.x, false))))) - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(684f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 24u)], -853f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 24u)] + 383f))), Struct_1(vec2<bool>(true, all(vec2<bool>(true, var_0.x))), vec2<u32>(global2.x ^ 1u, 1u)), -(i32(-1i) * -1i), -max(vec2<i32>(u_input.b, 27482i), vec2<i32>(-4783i, u_input.a)) << (firstLeadingBit(global2.zx << (vec2<u32>(19807u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    var var_2 = all(select(vec4<bool>(!func_2(Struct_2(global1[_wgslsmith_index_u32(0u, 30u)], vec2<bool>(true, false), -1770f), true, var_0.x, vec2<bool>(var_0.x, var_0.x)).a.x, var_0.x, true, func_2(Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], vec2<bool>(true, true), global0[_wgslsmith_index_u32(4294967295u, 24u)]), true, var_0.x, !vec2<bool>(var_0.x, true)).a.x), !(!vec4<bool>(var_0.x, true, var_0.x, true)), !vec4<bool>(var_0.x, !var_0.x, var_0.x, var_0.x)));
    var_0 = !select(!vec2<bool>(var_0.x, all(vec3<bool>(false, var_0.x, false))), !select(vec2<bool>(false, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false)), func_2(Struct_2(Struct_1(vec2<bool>(true, var_0.x), vec2<u32>(30122u, u_input.c.x)), vec2<bool>(true, var_0.x), 626f), var_0.x, true, vec2<bool>(var_0.x, var_0.x)).a), u_input.c.x >= ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, global2.x), vec3<u32>(4294967295u, global2.x, global2.x)));
    var_2 = all(select(vec2<bool>(!var_0.x, true & all(vec4<bool>(var_0.x, true, false, true))), !select(select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(false, true)), vec2<bool>(true, var_0.x), any(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), !(true | var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-658f, _wgslsmith_f_op_f32(step(var_1, global0[_wgslsmith_index_u32(u_input.c.x, 24u)])), 1481f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 24u)] + 1322f)) * global3[_wgslsmith_index_u32(18764u, 3u)])), ~select(vec4<i32>(u_input.d, u_input.d, -2147483647i, u_input.d), -vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.d), var_0.x) << ((~abs(vec4<u32>(4294967295u, u_input.c.x, 9867u, global2.x)) << ((min(vec4<u32>(7635u, 4294967295u, 20620u, 98178u), vec4<u32>(u_input.c.x, 4294967295u, 100547u, 15944u)) >> (~vec4<u32>(global2.x, global2.x, global2.x, global2.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), vec3<i32>(1i & (u_input.b << (4294967295u % 32u)), u_input.d, _wgslsmith_div_i32(~(-2147483647i), abs(u_input.b))) & ~(vec3<i32>(-1i) * -vec3<i32>(u_input.a, 784i, 1i)));
}

