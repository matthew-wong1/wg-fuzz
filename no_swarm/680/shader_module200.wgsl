struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(1000f, -1513f, 572f), vec3<f32>(-455f, -279f, 1028f), vec3<f32>(1000f, 906f, -713f), vec3<f32>(-984f, 778f, 105f), vec3<f32>(-471f, -643f, -727f), vec3<f32>(-981f, -1165f, 981f), vec3<f32>(-316f, -745f, 426f));

var<private> global1: array<Struct_1, 23>;

var<private> global2: i32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_1(vec2<bool>(!all(vec3<bool>(false, true, true)), !select(true, true, false) & (any(vec4<bool>(true, true, false, false)) | true)), 0i, ~(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(2483u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(39537u, 22151u), vec2<u32>(43967u, 1u))) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 44145u), ~vec2<u32>(47550u, 40049u), ~vec2<u32>(108047u, 16478u)) % vec2<u32>(32u))), -_wgslsmith_mod_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-31546i, -2147483647i, arg_0.x), vec3<i32>(-25768i, u_input.b.x, arg_0.x)), ~vec3<i32>(u_input.b.x, arg_0.x, 5572i) & min(vec3<i32>(-1i, 2147483647i, arg_0.x), vec3<i32>(arg_0.x, u_input.b.x, u_input.a.x))));
    var var_1 = var_0.a;
    let var_2 = true | ((3468i << (~_wgslsmith_mod_u32(var_0.c.x, 78130u) % 32u)) > _wgslsmith_mod_i32(firstTrailingBit(var_0.b), firstTrailingBit(select(var_0.d.x, -25416i, false))));
    let var_3 = vec4<bool>(!((_wgslsmith_add_u32(var_0.c.x, var_0.c.x) < _wgslsmith_mod_u32(18280u, 51016u)) || var_0.a.x), true, !var_0.a.x, true);
    global1 = array<Struct_1, 23>();
    return !select(vec2<bool>(var_1.x, var_3.x), vec2<bool>(all(select(vec3<bool>(var_3.x, var_3.x, var_1.x), vec3<bool>(false, var_0.a.x, false), vec3<bool>(var_0.a.x, false, false))), false), !(118008u != abs(var_0.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> u32 {
    return arg_0.c.x;
}

fn func_2() -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(select(min(~32238u, func_4(Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), u_input.b.x, abs(vec2<u32>(24402u, 4294967295u)), max(vec3<i32>(-7651i, u_input.c, u_input.b.x), vec3<i32>(-39977i, u_input.a.x, u_input.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1631f * 1721f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), func_3(vec2<i32>(u_input.a.x, -2147483647i))), global0[_wgslsmith_index_u32(81532u, 7u)])), 0u, !((_wgslsmith_add_i32(-1i, -2147483647i) ^ (u_input.c >> (56719u % 32u))) < _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, u_input.c), _wgslsmith_dot_vec3_i32(u_input.a.xxz, vec3<i32>(u_input.b.x, -34366i, u_input.c))))), 23u)];
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(reverseBits(var_0.c.x) >> (~(~var_0.c.x) % 32u), var_0.c.x | 0u, var_0.c.x), 23u)];
    global1 = array<Struct_1, 23>();
    var var_2 = Struct_1(func_3(var_1.d.xz), ~(0i ^ -_wgslsmith_div_i32(-15393i, var_1.d.x)), var_0.c, firstLeadingBit(countOneBits(~abs(vec3<i32>(-2147483647i, -75100i, -2147483647i)))));
    global2 = ~(-50911i);
    return !(!(!vec4<bool>(true, var_0.a.x, true, true)));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>) -> vec3<i32> {
    global1 = array<Struct_1, 23>();
    global2 = -39865i;
    global1 = array<Struct_1, 23>();
    let var_0 = global1[_wgslsmith_index_u32(~50133u, 23u)];
    let var_1 = Struct_1(arg_1.yz, -7376i, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(firstTrailingBit(var_0.c.x), var_0.c.x), select(~var_0.c.x, select(52444u, var_0.c.x, false), var_0.a.x)), ~select(_wgslsmith_add_u32(1u, var_0.c.x), var_0.c.x, !arg_1.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, -(5651i & var_0.d.x), -_wgslsmith_mod_i32(535i, arg_0)), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(2147483647i, var_0.d.x, 14578i)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.wxy, u_input.a.wxx), vec3<i32>(var_0.b, u_input.c, 73301i))), vec3<i32>(_wgslsmith_mult_i32(var_0.d.x, -1i | arg_0), min(var_0.d.x, -11996i) | ~u_input.b.x, arg_0)));
    return countOneBits(vec3<i32>(_wgslsmith_mult_i32(~_wgslsmith_mult_i32(arg_0, var_1.d.x), -arg_0 & ~2147483647i), min(u_input.a.x, var_0.b), abs(1i)));
}

fn func_1() -> u32 {
    var var_0 = vec4<u32>(0u, 0u, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), 15413u, select(15193u, 80850u, true)), 0u), min(1u, ~0u));
    var var_1 = firstTrailingBit(23754u);
    let var_2 = Struct_1(select(vec2<bool>(true, select(true, true, true)), vec2<bool>(true, true), !select(all(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, false)), true)), _wgslsmith_div_i32(-u_input.c, abs(~u_input.a.x) ^ -u_input.b.x), abs(var_0.zw), ~func_5(~u_input.a.x, select(vec4<bool>(true, true, true, true), func_2(), vec4<bool>(false, true, false, true))));
    var_0 = vec4<u32>(var_2.c.x, ~1u, ~(~(~(0u & var_0.x))), firstLeadingBit(select(18094u, var_0.x, true)));
    global1 = array<Struct_1, 23>();
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), true), firstLeadingBit(u_input.a.x), vec2<u32>(~firstTrailingBit(func_1()), abs(4294967295u)), vec3<i32>(-3724i, min(1i, abs(~u_input.c)), 1i));
    global1 = array<Struct_1, 23>();
    global2 = _wgslsmith_mod_i32(select(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, 0i)), vec2<i32>(0i, var_0.b)), -14148i), ~(~42413i), func_3(vec2<i32>(u_input.a.x, ~1i)).x), ~firstTrailingBit(32376i));
    global1 = array<Struct_1, 23>();
    var_0 = Struct_1(func_3(vec2<i32>(var_0.b, _wgslsmith_sub_i32(~var_0.d.x, _wgslsmith_mod_i32(u_input.c, 2147483647i)))), 21858i, var_0.c, func_5(-firstTrailingBit(var_0.d.x), vec4<bool>(true, select(false, true, var_0.a.x), !var_0.a.x, !var_0.a.x && true)));
    let var_1 = Struct_1(vec2<bool>(true, !var_0.a.x), ~(-(var_0.d.x & u_input.b.x) & ~var_0.d.x), var_0.c, -vec3<i32>(var_0.d.x & ~var_0.d.x, ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, -2147483647i, 10681i, 70009i)), i32(-1i) * -u_input.a.x));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-777f, -1000f, -319f, 1050f), vec4<f32>(-487f, 880f, 1380f, -647f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.x - 297f), _wgslsmith_f_op_f32(-882f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))));
}

