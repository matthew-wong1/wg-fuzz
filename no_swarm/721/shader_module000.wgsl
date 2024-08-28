struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-1i, Struct_1(-408f), Struct_2(Struct_1(-1597f), 16330i), vec2<u32>(1u, 0u));

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(1388f), 2147483647i), Struct_2(Struct_1(-747f), i32(-2147483648)), Struct_2(Struct_1(-1000f), 0i), Struct_2(Struct_1(-184f), -11136i), Struct_2(Struct_1(-988f), 1i), Struct_2(Struct_1(-689f), 2147483647i), Struct_2(Struct_1(466f), -9501i), Struct_2(Struct_1(1152f), 0i), Struct_2(Struct_1(-666f), i32(-2147483648)), Struct_2(Struct_1(605f), 0i), Struct_2(Struct_1(-1425f), 23947i));

var<private> global2: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

var<private> global3: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = global0.c.a.a;
    global2 = array<vec3<bool>, 30>();
    let var_1 = 28030i;
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c.a.a - global0.b.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a)), 1284f))));
    var var_2 = Struct_4(Struct_2(global0.c.a, -min(1i, 0i)), select(vec2<bool>(true, global3.x), select(select(select(vec2<bool>(global3.x, false), vec2<bool>(false, false), false), vec2<bool>(false, true), vec2<bool>(true, global3.x)), !(!vec2<bool>(global3.x, global3.x)), false), select(vec2<bool>(global3.x, global0.c.a.a > global0.c.a.a), vec2<bool>(true, true), global3.x)), Struct_3(2147483647i, Struct_1(_wgslsmith_f_op_f32(trunc(-695f))), Struct_2(global0.b, global0.c.b), _wgslsmith_sub_vec2_u32(~select(vec2<u32>(global0.d.x, global0.d.x), global0.d, global3.x), abs(vec2<u32>(88207u, u_input.a.x)) >> (~vec2<u32>(global0.d.x, 40824u) % vec2<u32>(32u)))), Struct_2(global0.b, ~(reverseBits(global0.c.b) >> ((global0.d.x >> (4294967295u % 32u)) % 32u))));
    return -235f;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = !select(select(vec2<bool>(false, true), vec2<bool>(true, global3.x), all(vec2<bool>(true, true))), !select(select(vec2<bool>(global3.x, false), vec2<bool>(global3.x, false), global3.x), vec2<bool>(true, true), false), vec2<bool>(true, global3.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1494f, 108f, arg_0.b.a))), vec3<f32>(1220f, arg_0.b.a, _wgslsmith_f_op_f32(-768f + arg_0.b.a)))) * vec3<f32>(-1461f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.a.a), 1000f)))));
    var var_2 = abs(-select(vec3<i32>(62550i, -18348i, _wgslsmith_sub_i32(arg_1, global0.a)), ~abs(vec3<i32>(u_input.b, 0i, arg_1)), all(!vec3<bool>(var_0.x, global3.x, global3.x))));
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec2<u32>) -> i32 {
    var var_0 = Struct_5(vec3<bool>((global3.x & false) | true, all(!vec4<bool>(true, arg_1.a.x, false, false)), true));
    var var_1 = reverseBits(~(reverseBits(4294967295u) | arg_2.x)) != (_wgslsmith_dot_vec2_u32(global0.d, ~(vec2<u32>(11584u, 13188u) ^ vec2<u32>(arg_0.d.x, arg_2.x))) & ~_wgslsmith_mult_u32(firstTrailingBit(global0.d.x), arg_2.x));
    let var_2 = ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.d.x, u_input.a.x, u_input.a.x, global0.d.x) << (vec4<u32>(4294967295u, arg_2.x, 4294967295u, 14072u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(67354u, arg_0.d.x, global0.d.x, u_input.a.x), vec4<u32>(arg_2.x, 44587u, arg_0.d.x, arg_0.d.x)))));
    var var_3 = max(max(~(~vec2<i32>(10489i, arg_0.c.b)), -firstLeadingBit(vec2<i32>(2180i, 1i))) & vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, 1i, global0.a), -vec4<i32>(arg_0.c.b, 5080i, global0.c.b, -38043i)), -32629i), countOneBits(-vec2<i32>(max(arg_0.a, 2147483647i), -22946i)));
    global3 = select(var_0.a.xz, !var_0.a.yy, var_0.a.yy);
    return _wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i, ~(-global0.a ^ _wgslsmith_div_i32(2147483647i, -2147483647i))), -1i);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_5(global2[_wgslsmith_index_u32(0u, 30u)]);
    let var_1 = -(func_4(func_2(Struct_3(0i, global0.b, global1[_wgslsmith_index_u32(4294967295u, 11u)], vec2<u32>(18814u, u_input.a.x)), -global0.c.b, global0.c.a), Struct_5(select(vec3<bool>(false, true, global3.x), vec3<bool>(true, global3.x, var_0.a.x), false)), _wgslsmith_sub_vec2_u32(~global0.d, u_input.a.zz)) & -(_wgslsmith_mod_i32(-1849i, -15436i) ^ firstTrailingBit(-2147483647i)));
    global0 = Struct_3(max(~abs(-2150i << (u_input.a.x % 32u)), u_input.b), global0.c.a, func_2(Struct_3(_wgslsmith_div_i32(-2147483647i, var_1), global0.b, Struct_2(global0.b, reverseBits(var_1)), reverseBits(select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy, vec2<bool>(false, true)))), _wgslsmith_add_i32(1i, _wgslsmith_add_i32(global0.a, -69418i)), global0.b).c, vec2<u32>(((u_input.a.x | global0.d.x) | 54868u) ^ 1u, ~global0.d.x));
    let var_2 = global0.d.x;
    global1 = array<Struct_2, 11>();
    return func_2(Struct_3(2147483647i & _wgslsmith_add_i32(func_4(Struct_3(u_input.b, Struct_1(-534f), global0.c, vec2<u32>(u_input.a.x, global0.d.x)), var_0, vec2<u32>(u_input.a.x, 773u)), global0.c.b >> (1747u % 32u)), global0.b, Struct_2(func_2(func_2(Struct_3(0i, Struct_1(947f), global1[_wgslsmith_index_u32(global0.d.x, 11u)], vec2<u32>(u_input.a.x, global0.d.x)), 83537i, global0.b), u_input.b, global0.c.a).b, arg_0), vec2<u32>(~u_input.a.x, global0.d.x)), -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, arg_0, global0.a) | vec3<i32>(-46921i, u_input.b, var_1), vec3<i32>(4495i, 29345i, global0.a) & vec3<i32>(var_1, -1i, 24535i)), 2147483647i), func_2(func_2(func_2(func_2(Struct_3(u_input.b, global0.c.a, Struct_2(global0.b, 0i), vec2<u32>(0u, u_input.a.x)), arg_0, global0.c.a), global0.a, Struct_1(1272f)), 0i, func_2(Struct_3(-22639i, global0.b, Struct_2(Struct_1(657f), var_1), vec2<u32>(u_input.a.x, u_input.a.x)), var_1, func_2(Struct_3(2147483647i, Struct_1(-824f), Struct_2(Struct_1(global0.b.a), 1362i), u_input.a.yx), 3036i, Struct_1(-695f)).c.a).b), max(_wgslsmith_div_i32(1i, 1i), u_input.b), Struct_1(global0.c.a.a)).b).c.a;
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_3(arg_2.b & ~(i32(-1i) * -1i), func_1(arg_2.b), func_2(Struct_3(~(~1i), func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, 2147483647i, -20342i), arg_3.zyz)), Struct_2(func_1(1i), global0.c.b), select(countOneBits(vec2<u32>(30556u, 44245u)), firstTrailingBit(vec2<u32>(81547u, arg_1.x)), vec2<bool>(true, arg_0))), _wgslsmith_mod_i32(countOneBits(-16003i) << (u_input.a.x % 32u), 1i), Struct_1(_wgslsmith_div_f32(arg_2.a.a, -1552f))).c, vec2<u32>(arg_1.x, _wgslsmith_mult_u32(0u, abs(52769u))));
    global3 = !vec2<bool>(!(global0.d.x >= ~u_input.a.x), global3.x);
    let var_1 = countOneBits(arg_3);
    global1 = array<Struct_2, 11>();
    global0 = Struct_3(-1i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.a.a))))), global0.c, vec2<u32>(16263u, 54446u));
    return arg_2;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_5, arg_3: f32) -> StorageBuffer {
    var var_0 = global3.x;
    let var_1 = func_2(func_2(Struct_3(~arg_0.b << (max(0u, 18144u) % 32u), global0.b, func_5(global3.x | global3.x, ~vec2<u32>(2657u, 37927u), Struct_2(Struct_1(1000f), global0.a), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, 14600i, -2147483647i), vec4<i32>(global0.a, u_input.b, arg_0.b, 0i))), ~u_input.a.zx), _wgslsmith_sub_i32(u_input.b | arg_0.b, u_input.b), arg_0.a), 46230i, func_2(Struct_3(u_input.b, Struct_1(1140f), func_5(true, u_input.a.zx, func_5(true, vec2<u32>(u_input.a.x, u_input.a.x), Struct_2(arg_0.a, arg_0.b), vec4<i32>(-32174i, 3784i, global0.a, global0.c.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b, 0i, -984i, global0.a), vec4<i32>(-63280i, 39095i, arg_0.b, arg_0.b))), firstLeadingBit(u_input.a.xx) | u_input.a.zx), select(18225i, -global0.c.b, false), func_2(func_2(func_2(Struct_3(u_input.b, Struct_1(arg_0.a.a), global1[_wgslsmith_index_u32(u_input.a.x, 11u)], vec2<u32>(34032u, global0.d.x)), arg_0.b, global0.c.a), i32(-1i) * -29130i, func_1(24695i)), -4171i, arg_0.a).b).c.a).a;
    global1 = array<Struct_2, 11>();
    let var_2 = global0.d.x;
    global3 = !arg_2.a.yy;
    return StorageBuffer(max(vec2<i32>(~arg_0.b, 19933i), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, 0i), vec3<i32>(-2147483647i, global0.c.b, u_input.b)), global0.c.b & u_input.b), vec2<i32>(var_1, -var_1))), vec4<i32>(-firstTrailingBit(func_5(false, u_input.a.xy, arg_0, vec4<i32>(u_input.b, u_input.b, var_1, -2147483647i)).b), ~arg_0.b, _wgslsmith_dot_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, global0.c.b, -17369i), vec4<i32>(var_1, arg_0.b, 62710i, u_input.b)), -vec4<i32>(arg_0.b, 2147483647i, 0i, 24849i)), (vec4<i32>(16349i, 43179i, var_1, -25443i) >> (vec4<u32>(2148u, 17227u, u_input.a.x, 1u) % vec4<u32>(32u))) ^ vec4<i32>(var_1, var_1, 37885i, -12649i)), _wgslsmith_div_i32(firstTrailingBit(arg_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1, 16410i), vec3<i32>(global0.c.b, 1033i, global0.c.b) << (u_input.a % vec3<u32>(32u))))), _wgslsmith_f_op_f32(func_5((global3.x || global3.x) || false, global0.d, Struct_2(global0.b, 35412i), ~(-vec4<i32>(u_input.b, u_input.b, -13165i, -2147483647i))).a.a + _wgslsmith_f_op_f32(min(arg_1, arg_0.a.a))), vec4<i32>(firstTrailingBit(-41339i), u_input.b, ~((var_1 | -55943i) & _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, global0.a, 79789i), vec4<i32>(global0.c.b, 1i, arg_0.b, -26758i))), _wgslsmith_mult_i32(global0.a, _wgslsmith_mult_i32(8626i, -global0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    global1 = array<Struct_2, 11>();
    let x = u_input.a;
    s_output = func_6(func_5(all(vec2<bool>(any(global2[_wgslsmith_index_u32(59457u, 30u)]), all(vec2<bool>(true, false)))), global0.d, Struct_2(func_1(1i >> (global0.d.x % 32u)), -u_input.b | global0.c.b), firstLeadingBit(min(~vec4<i32>(u_input.b, 32004i, u_input.b, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-10327i, -2147483647i, u_input.b, -18263i), vec4<i32>(-1i, global0.c.b, u_input.b, -1i))))), _wgslsmith_div_f32(191f, _wgslsmith_f_op_f32(floor(var_0.a))), Struct_5(select(global2[_wgslsmith_index_u32(0u, 30u)], vec3<bool>(global3.x, global3.x, global3.x), true || select(true, false, global3.x))), global0.c.a.a);
}

