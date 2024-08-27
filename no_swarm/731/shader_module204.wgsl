struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 2> = array<f32, 2>(-1220f, 1533f);

var<private> global2: Struct_4 = Struct_4(Struct_2(vec4<u32>(0u, 1u, 38694u, 93140u), 87954u, vec2<f32>(-810f, 393f), Struct_1(vec4<i32>(-1i, 38099i, -55009i, 45387i), 1767f, vec2<bool>(true, false), 532f), 1u), vec3<i32>(-54523i, 0i, -2694i));

var<private> global3: Struct_4 = Struct_4(Struct_2(vec4<u32>(7346u, 73670u, 109174u, 19993u), 0u, vec2<f32>(637f, 165f), Struct_1(vec4<i32>(50046i, 38122i, i32(-2147483648), 12890i), 1276f, vec2<bool>(true, false), 551f), 1u), vec3<i32>(0i, -42055i, 1i));

var<private> global4: Struct_5 = Struct_5(-1i, Struct_4(Struct_2(vec4<u32>(4294967295u, 31297u, 4294967295u, 1u), 40699u, vec2<f32>(1000f, 739f), Struct_1(vec4<i32>(2147483647i, 41985i, -63645i, 19422i), -700f, vec2<bool>(true, false), 1558f), 45744u), vec3<i32>(i32(-2147483648), -1273i, 0i)), vec3<bool>(true, true, false), 0i, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>) -> vec2<f32> {
    let var_0 = select(vec3<bool>(global4.e, !(-global0.b.x < global3.b.x), !global0.a.d.c.x), global4.c, any(global4.c) | (_wgslsmith_add_u32(24495u >> (global2.a.a.x % 32u), ~global4.b.a.e) <= ~(~0u)));
    global4 = Struct_5(abs(-30160i), Struct_4(global0.a, select(global0.a.d.a.wxw, ~(vec3<i32>(-63542i, 1566i, 0i) >> (vec3<u32>(global2.a.a.x, 1u, 3590u) % vec3<u32>(32u))), !(!vec3<bool>(global2.a.d.c.x, true, true)))), !var_0, -global4.d ^ -1i, global3.a.d.c.x);
    let var_1 = global3.a.d;
    global4 = Struct_5(_wgslsmith_sub_i32(-2147483647i, reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.d.a.x, 40130i, 49546i, -27233i), vec4<i32>(global4.d, 899i, global0.b.x, global2.a.d.a.x)))), global4.b, vec3<bool>(all(select(vec4<bool>(var_0.x, true, global2.a.d.c.x, var_0.x), vec4<bool>(global4.e, global3.a.d.c.x, true, arg_1), global0.a.d.c.x)), true, true), _wgslsmith_clamp_i32(global2.b.x, global2.a.d.a.x, global4.b.a.d.a.x & 0i), var_0.x);
    global3 = global4.b;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.a.d.d * -272f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -676f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    global1 = array<f32, 2>();
    let var_0 = i32(-1i) * -global3.b.x;
    var var_1 = arg_3.a.d;
    global3 = global4.b;
    let var_2 = global2.a.d;
    return global3.a.a.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_5 {
    global0 = global4.b;
    var var_0 = Struct_2(global3.a.a, 0u, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.a.d.d)) - _wgslsmith_f_op_f32(609f * -575f))), global4.b.a.d.b), global0.a.d, func_4(_wgslsmith_f_op_vec2_f32(func_3(global4.b.a, true, select(abs(vec3<u32>(global2.a.b, global0.a.e, global3.a.b)), ~global4.b.a.a.zzy, vec3<bool>(true, false, global0.a.d.c.x)))), Struct_2(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(77298u, global0.a.e, 71678u, global0.a.b), global4.b.a.a), vec4<u32>(global4.b.a.e, 1u, global4.b.a.b, global4.b.a.e)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 33988u), global4.b.a.a.wz)), _wgslsmith_f_op_vec2_f32(-global2.a.c), Struct_1(vec4<i32>(-48095i, 22428i, 1i, 59273i), _wgslsmith_f_op_f32(-global4.b.a.c.x), vec2<bool>(global4.c.x, true), 165f), select(0u, select(8455u, global3.a.a.x, false), global3.a.d.c.x && global2.a.d.c.x)), Struct_1(_wgslsmith_mult_vec4_i32(arg_0 ^ vec4<i32>(global3.b.x, global2.b.x, global2.b.x, u_input.a), abs(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.a.a.x, 2u)])), select(vec2<bool>(global3.a.d.c.x, false), vec2<bool>(true, true), global3.a.d.c), global4.b.a.c.x), Struct_3(Struct_1(global0.a.d.a, _wgslsmith_div_f32(global4.b.a.c.x, 127f), vec2<bool>(true, global3.a.d.c.x), _wgslsmith_f_op_f32(-global0.a.d.b)), select(select(vec3<bool>(true, global4.b.a.d.c.x, false), vec3<bool>(global0.a.d.c.x, global0.a.d.c.x, true), global4.c), !vec3<bool>(global2.a.d.c.x, true, global0.a.d.c.x), vec3<bool>(global2.a.d.c.x, true, global3.a.d.c.x)))));
    let var_1 = Struct_3(Struct_1(~vec4<i32>(51404i, 30724i, var_0.d.a.x ^ arg_0.x, -56404i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(401f))) * 426f), select(!vec2<bool>(global4.c.x, false), global0.a.d.c, !global0.a.d.c), global0.a.c.x), vec3<bool>(select(true, var_0.d.c.x, true), any(global4.c), any(vec3<bool>(global0.a.d.c.x, true, true)) || !global4.b.a.d.c.x));
    var var_2 = Struct_4(Struct_2(abs(~vec4<u32>(1u, 37354u, 1u, global2.a.e)), ~21285u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.b.a.c + global4.b.a.c)), var_0.d, global3.a.a.x), min(global3.b << (vec3<u32>(_wgslsmith_div_u32(0u, 33982u), ~4294967295u, 32273u) % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -1i, select(-global2.a.d.a.x, u_input.a, any(var_1.b)), global3.b.x)));
    var_0 = Struct_2(min(select(global0.a.a, global3.a.a, !global0.a.d.c.x), min(firstTrailingBit(~vec4<u32>(global0.a.a.x, global2.a.a.x, 4294967295u, var_0.b)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.a.e, global0.a.b, global4.b.a.b, global2.a.b), global2.a.a), min(vec4<u32>(global3.a.e, global2.a.e, 2729u, global0.a.b), global3.a.a), !vec4<bool>(true, global0.a.d.c.x, var_1.b.x, var_2.a.d.c.x)))), global0.a.a.x, _wgslsmith_f_op_vec2_f32(global0.a.c + _wgslsmith_f_op_vec2_f32(func_3(global0.a, var_0.d.c.x, global4.b.a.a.xzw))), Struct_1(vec4<i32>(abs(_wgslsmith_mult_i32(var_2.b.x, 18956i)), firstLeadingBit(var_0.d.a.x), global2.b.x, ~global4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f + var_0.d.b)), vec2<bool>(all(!vec3<bool>(global0.a.d.c.x, var_1.a.c.x, false)), !select(true, global2.a.d.c.x, false)), 1869f), 13445u);
    return Struct_5(firstTrailingBit(_wgslsmith_add_i32(global4.a, global3.a.d.a.x)), global4.b, !var_1.b, _wgslsmith_add_i32(~58757i, -max(var_1.a.a.x, var_2.b.x)), true);
}

fn func_5(arg_0: Struct_5, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = -1000f;
    global0 = Struct_4(func_2(~global4.b.a.d.a).b.a, (~select(arg_3.d.a.xzz, vec3<i32>(38031i, arg_3.d.a.x, arg_3.d.a.x), vec3<bool>(arg_2.c.x, global3.a.d.c.x, arg_3.d.c.x)) >> (abs(~vec3<u32>(global3.a.a.x, 4294967295u, 1u)) % vec3<u32>(32u))) | arg_0.b.a.d.a.wwy);
    global0 = arg_0.b;
    var var_1 = arg_0.b.a.d.a;
    global0 = func_2(abs(vec4<i32>(-22978i, ~52324i, ~global3.a.d.a.x, global3.b.x))).b;
    return 33777u;
}

fn func_1() -> vec4<bool> {
    global3 = Struct_4(Struct_2(global2.a.a, func_5(func_2(~global2.a.d.a), true, func_2(vec4<i32>(35805i, 37359i, -1i, global3.a.d.a.x)).b.a.d, global3.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.c)), func_2(-(~vec4<i32>(-1i, -18214i, 11913i, -5736i))).b.a.d, ~(global0.a.b >> (global0.a.a.x % 32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(111203i, 0i, u_input.a), global3.b));
    var var_0 = Struct_4(func_2(global0.a.d.a).b.a, abs(global4.b.a.d.a.xzx));
    let var_1 = true;
    global3 = global4.b;
    var var_2 = vec4<bool>(!all(global4.c.zy), global4.c.x, global2.a.d.c.x, var_1);
    return select(!(!vec4<bool>(true, global0.a.d.c.x, global3.a.d.c.x && global3.a.d.c.x, var_0.a.d.c.x)), !(!select(vec4<bool>(global2.a.d.c.x, var_2.x, global4.b.a.d.c.x, true), select(vec4<bool>(false, var_2.x, var_1, false), vec4<bool>(true, true, global3.a.d.c.x, global0.a.d.c.x), vec4<bool>(var_1, var_2.x, true, false)), !vec4<bool>(var_1, true, false, false))), !(!vec4<bool>(var_1, var_0.a.b == var_0.a.e, global4.e, !var_2.x)));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<bool>) -> Struct_5 {
    let var_0 = global4.c;
    let var_1 = global4.b;
    global2 = func_2(-(~vec4<i32>(3419i, -1i, -15020i, -2147483647i) & vec4<i32>(global3.a.d.a.x, -2147483647i, u_input.a, -45729i)) << (_wgslsmith_add_vec4_u32(global4.b.a.a, vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.a.x, global3.a.b, global2.a.b), global3.a.a.xxx), global4.b.a.e, ~4294967295u)) % vec4<u32>(32u))).b;
    var var_2 = Struct_3(Struct_1(countOneBits(var_1.a.d.a << (vec4<u32>(33763u, global2.a.e, global4.b.a.a.x, global0.a.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(floor(var_1.a.d.d)), vec2<bool>(1u < global4.b.a.a.x, true), _wgslsmith_f_op_f32(abs(global2.a.c.x))), !global4.c);
    let var_3 = _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.a.b, ~1u), 2u)]));
    return func_2(global4.b.a.d.a & (-(~vec4<i32>(global3.a.d.a.x, u_input.a, 9623i, 2147483647i)) << (func_2(vec4<i32>(10871i, global0.a.d.a.x, global4.d, global3.a.d.a.x) | var_1.a.d.a).b.a.a % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(), func_1());
    global1 = array<f32, 2>();
    global4 = Struct_5(~(~(-1i)), func_2(_wgslsmith_mult_vec4_i32(global0.a.d.a, global2.a.d.a)).b, var_0.c, 0i, all(select(!global0.a.d.c, global2.a.d.c, var_0.b.a.d.c.x)));
    let var_1 = global4.b.a;
    let var_2 = any(vec2<bool>(~(global3.b.x >> (global4.b.a.a.x % 32u)) >= global2.a.d.a.x, !any(vec3<bool>(false, global4.b.a.d.c.x, global3.a.d.c.x)) & global4.e));
    let var_3 = true;
    var var_4 = Struct_3(func_6(select(select(vec4<bool>(var_0.c.x, global4.b.a.d.c.x, var_3, var_1.d.c.x), !vec4<bool>(global2.a.d.c.x, false, global0.a.d.c.x, true), vec4<bool>(false, false, global4.e, global2.a.d.c.x)), select(!vec4<bool>(false, global2.a.d.c.x, false, true), vec4<bool>(true, true, false, true), true), select(var_0.b.a.d.a.x == var_1.d.a.x, true, global3.a.d.c.x)), vec4<bool>(any(vec2<bool>(true, global3.a.d.c.x)) == (global0.a.d.c.x & var_1.d.c.x), true, var_0.c.x, all(func_1().wzw))).b.a.d, vec3<bool>(true, false, global2.a.d.d == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.a.d.d, global2.a.d.b, var_2)))));
    let var_5 = func_1().x;
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~20105u, global4.b.b.xx);
}

