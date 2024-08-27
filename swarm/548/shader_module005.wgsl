struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-4811i, 33734u, vec2<i32>(i32(-2147483648), 1i), i32(-2147483648)), Struct_1(2147483647i, 1u, vec2<i32>(1i, -24722i), -1i), Struct_1(20117i, 0u, vec2<i32>(i32(-2147483648), i32(-2147483648)), -1i), Struct_1(0i, 28746u, vec2<i32>(0i, 56543i), -88171i), Struct_1(-33141i, 0u, vec2<i32>(1i, i32(-2147483648)), 1i), Struct_1(0i, 0u, vec2<i32>(0i, -27243i), 0i), Struct_1(-1i, 3692u, vec2<i32>(1i, 84534i), -14243i), Struct_1(-1i, 1u, vec2<i32>(-1i, 0i), -12985i), Struct_1(0i, 43476u, vec2<i32>(24809i, -1i), i32(-2147483648)), Struct_1(-48259i, 13398u, vec2<i32>(1i, -1376i), 2147483647i), Struct_1(8946i, 1u, vec2<i32>(0i, -1i), -1i), Struct_1(-5507i, 16907u, vec2<i32>(i32(-2147483648), 37780i), 8165i), Struct_1(-1i, 40600u, vec2<i32>(23751i, 0i), -778i), Struct_1(20186i, 52628u, vec2<i32>(27850i, 2147483647i), -1i), Struct_1(-1i, 1u, vec2<i32>(-3253i, 6724i), 2147483647i), Struct_1(i32(-2147483648), 4294967295u, vec2<i32>(i32(-2147483648), 2147483647i), -1i), Struct_1(-1i, 35894u, vec2<i32>(-6511i, 20791i), -12670i), Struct_1(-763i, 4294967295u, vec2<i32>(34628i, -1i), -48043i), Struct_1(12518i, 47234u, vec2<i32>(-1i, -1i), 1i), Struct_1(14349i, 21472u, vec2<i32>(-8492i, -12038i), 26057i));

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(-36379i, 6094u, vec2<i32>(10620i, -22235i), 26956i), Struct_1(5874i, 4294967295u, vec2<i32>(i32(-2147483648), 2147483647i), 1i), Struct_1(i32(-2147483648), 10970u, vec2<i32>(0i, -40301i), i32(-2147483648)), Struct_1(-2560i, 343u, vec2<i32>(-17385i, 0i), -1i), Struct_1(-43954i, 1u, vec2<i32>(1i, 2147483647i), i32(-2147483648)), Struct_1(-35092i, 36178u, vec2<i32>(34270i, 22413i), 0i), Struct_1(-28128i, 4294967295u, vec2<i32>(2147483647i, -78780i), -1i), Struct_1(0i, 0u, vec2<i32>(1i, -1i), -11571i), Struct_1(1i, 0u, vec2<i32>(35493i, 1i), 2257i), Struct_1(1i, 0u, vec2<i32>(3622i, 45045i), -1i), Struct_1(i32(-2147483648), 2031u, vec2<i32>(56748i, 11012i), i32(-2147483648)), Struct_1(1i, 1u, vec2<i32>(2147483647i, 2147483647i), 43364i), Struct_1(-48785i, 43991u, vec2<i32>(62125i, 7628i), -1i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    var var_0 = select(firstLeadingBit(_wgslsmith_div_i32(1i << (0u % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.c.x, 11445i, -2147483647i, 6461i), vec4<i32>(global0.d, arg_0.x, arg_0.x, u_input.b.x)), -arg_0))), -firstLeadingBit(-arg_0.x), _wgslsmith_sub_i32(reverseBits(_wgslsmith_sub_i32(u_input.b.x, arg_0.x)), min(-u_input.c, _wgslsmith_clamp_i32(arg_0.x, 46652i, 0i))) >= global0.d);
    let var_1 = vec4<bool>(any(vec3<bool>(!all(vec2<bool>(false, false)), all(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))))), all(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), firstTrailingBit(~global0.b ^ (1u << (1u % 32u))) > global0.b);
    var_0 = -(~abs(u_input.b.x));
    var var_2 = Struct_1(~(~(-7968i << (abs(global0.b) % 32u))), global0.b, vec2<i32>(24718i, u_input.a.x), _wgslsmith_sub_i32(-2147483647i, -26364i));
    global1 = array<Struct_1, 20>();
    return ~2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_i32(reverseBits(u_input.a.wzy), _wgslsmith_mult_vec3_i32(~(-(~vec3<i32>(-68353i, -42555i, 1i))), reverseBits(vec3<i32>(-u_input.c, reverseBits(arg_0.c.x), u_input.b.x))));
    global1 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(sign(arg_1)));
    let var_2 = Struct_1(arg_0.c.x, _wgslsmith_div_u32(3809u, 1u) | ~(~_wgslsmith_clamp_u32(4999u, 4294967295u, global0.b)), max(var_0.yx, vec2<i32>(-firstTrailingBit(arg_0.a), var_0.x)), ~(_wgslsmith_sub_i32(func_3(vec4<i32>(-1i, arg_0.c.x, 2147483647i, u_input.b.x)), -2147483647i) | (~var_0.x >> (1u % 32u))));
    return Struct_1(_wgslsmith_mod_i32(var_0.x, _wgslsmith_sub_i32(-u_input.b.x, 1i)), 101011u, var_2.c, select(countOneBits(var_2.d) ^ _wgslsmith_dot_vec3_i32(u_input.a.wyw, vec3<i32>(-1i, 3626i, var_2.d)), -41778i, false) | firstTrailingBit(35765i));
}

fn func_1() -> Struct_1 {
    return func_2(global1[_wgslsmith_index_u32(~global0.b, 20u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f)), 1144f), 648u, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<i32>) -> bool {
    var var_0 = max(_wgslsmith_mult_vec3_u32(~countOneBits(~vec3<u32>(global0.b, 4294967295u, global0.b)), ~(select(vec3<u32>(42664u, global0.b, 9152u), vec3<u32>(arg_0.b, global0.b, 4294967295u), arg_1.x) << (~vec3<u32>(0u, 40200u, arg_0.b) % vec3<u32>(32u)))), (~abs(vec3<u32>(arg_0.b, global0.b, 4916u)) | ~(~vec3<u32>(global0.b, 24404u, arg_0.b))) ^ countOneBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 120869u, 3082u), vec3<u32>(global0.b, arg_0.b, global0.b))));
    let var_1 = global2[_wgslsmith_index_u32(arg_0.b, 13u)];
    global1 = array<Struct_1, 20>();
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, global0.b, reverseBits(global0.b), ~(~(~84684u))), ~select(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.b, var_1.b, var_0.x, var_1.b), vec4<u32>(global0.b, 12022u, global0.b, var_1.b)), vec4<u32>(reverseBits(var_1.b), _wgslsmith_mod_u32(4294967295u, 24610u), var_1.b, ~4294967295u), arg_1.x));
    global1 = array<Struct_1, 20>();
    return (true || (!any(vec4<bool>(true, false, false, false)) || true)) & arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_4(func_1(), vec2<bool>(true, true), u_input.a), false, false, true);
    let var_1 = Struct_1(2147483647i, 97744u, min(_wgslsmith_clamp_vec2_i32(-firstTrailingBit(vec2<i32>(-2147483647i, u_input.b.x)), vec2<i32>(func_3(u_input.a), -50972i), -select(global0.c, vec2<i32>(-25238i, u_input.c), vec2<bool>(var_0.x, var_0.x))), global0.c), -(1i << (global0.b % 32u)));
    let var_2 = Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x), u_input.c, -1i), 0u, u_input.a.wz | select(abs(-var_1.c), func_1().c, !var_0.x), func_1().d);
    global2 = array<Struct_1, 13>();
    let var_3 = Struct_1(1i, ~(~_wgslsmith_mult_u32(~var_1.b, ~3438u)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.b.x, 1i), -var_1.d), global0.c), min(44472i, -_wgslsmith_mult_i32(func_1().a, var_1.c.x)));
    global1 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(~(~u_input.a.zxx ^ -vec3<i32>(2147483647i, global0.c.x, var_2.a)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a, global0.d, 2147483647i), abs(u_input.a.yxz), -u_input.b)));
}

