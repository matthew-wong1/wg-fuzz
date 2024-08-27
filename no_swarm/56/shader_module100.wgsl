struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 8>;

var<private> global2: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> vec2<i32> {
    global2 = all(select(!(!vec3<bool>(false, arg_2.a.x, arg_0)), vec3<bool>(true, any(vec2<bool>(arg_0, arg_0)), -2147483647i < u_input.b), !arg_1.a.c.a.x)) && true;
    let var_0 = Struct_4(~(~(~_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(u_input.d.x, 22925u)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a.c.b, _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(round(-1000f)))))), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(70987u, 24738u, u_input.e.x, 4294967295u), vec4<u32>(42043u, u_input.d.x, 81271u, 43347u)), ~(~4294967295u), ~(~27460u), 66105u), 3394i);
    global2 = all(arg_1.a.c.a.xy);
    let var_1 = select(!select(arg_2.a.yz, select(vec2<bool>(true, false), arg_1.a.c.a.xz, select(arg_1.a.c.a.yy, vec2<bool>(arg_2.a.x, false), arg_2.a.zz)), arg_1.a.c.a.x), arg_1.a.c.a.xy, any(arg_2.a.yx));
    let var_2 = var_0.c.zy;
    return arg_1.a.c.c;
}

fn func_2() -> Struct_1 {
    let var_0 = 1000f;
    let var_1 = global1[_wgslsmith_index_u32(~(~u_input.c.x), 8u)];
    var var_2 = vec3<bool>(true, !(!any(vec3<bool>(true, false, true))) & true, true);
    var var_3 = any(vec3<bool>(var_2.x, true, true || all(!vec3<bool>(false, var_2.x, true))));
    var var_4 = Struct_2(select(vec2<i32>(_wgslsmith_mult_i32(u_input.b, var_1.d ^ 2162i), ~_wgslsmith_sub_i32(-1i, u_input.b)), -func_3(var_0 >= var_1.b.x, Struct_3(Struct_2(vec2<i32>(-30927i, var_1.d), u_input.c.x, Struct_1(vec3<bool>(var_2.x, var_2.x, true), 647f, vec2<i32>(var_1.d, u_input.b))), u_input.c), Struct_1(vec3<bool>(true, false, true), -1417f, vec2<i32>(0i, 11704i)), max(var_1.d, u_input.b)), !vec2<bool>(any(vec4<bool>(var_2.x, var_2.x, var_2.x, true)), false)), abs(countOneBits(~1u)), Struct_1(vec3<bool>(false, var_2.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, var_0))), ~(vec2<i32>(-2147483647i, u_input.b) | vec2<i32>(48599i, var_1.d)) & ~vec2<i32>(u_input.b, -28449i)));
    return var_4.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = ~firstLeadingBit(func_2().c.x >> (arg_0.b % 32u));
    var var_1 = Struct_5(any(vec3<bool>(arg_2.a.x, !any(vec4<bool>(true, false, arg_2.a.x, arg_1.x)), true)), arg_0, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(select(firstLeadingBit(vec4<u32>(45898u, arg_0.b, arg_0.b, 0u)), abs(vec4<u32>(arg_0.b, 50319u, arg_0.b, arg_0.b)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(20664u, 24908u, 0u, 4294967295u) >> (vec4<u32>(1u, arg_0.b, 4294967295u, 0u) % vec4<u32>(32u)), max(vec4<u32>(u_input.c.x, arg_0.b, u_input.a, u_input.e.x), vec4<u32>(1u, 1u, 4294967295u, 1u)))), abs(~vec4<u32>(50733u, 32846u, arg_0.b, 1u))), Struct_2(arg_0.c.c | select(vec2<i32>(arg_2.c.x, -6985i), firstLeadingBit(arg_0.c.c), select(arg_2.a.zx, vec2<bool>(arg_1.x, false), true)), ~0u, func_2()));
    var_1 = Struct_5(select(!(false | arg_1.x), arg_1.x, func_2().a.x) && true, arg_0, var_1.c, arg_0);
    global2 = arg_1.x;
    var_1 = Struct_5(true, Struct_2(-vec2<i32>(-18695i, arg_0.c.c.x) << (u_input.e.zz % vec2<u32>(32u)), ~_wgslsmith_clamp_u32(0u, var_1.b.b, var_1.c.x), func_2()), max(abs(var_1.c) & var_1.c, _wgslsmith_sub_vec4_u32(var_1.c << (vec4<u32>(1199u, u_input.c.x, 0u, 25560u) % vec4<u32>(32u)), vec4<u32>(arg_0.b, var_1.c.x, var_1.d.b, arg_0.b)) | vec4<u32>(firstLeadingBit(arg_0.b), ~var_1.c.x, _wgslsmith_dot_vec4_u32(var_1.c, var_1.c), _wgslsmith_mod_u32(var_1.b.b, arg_0.b))), Struct_2(var_1.d.a, 1u, Struct_1(!select(vec3<bool>(false, false, arg_0.c.a.x), vec3<bool>(false, arg_2.a.x, var_1.d.c.a.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.b * 187f)), -vec2<i32>(-37851i, -2147483647i) ^ _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_0), vec2<i32>(2147483647i, u_input.b)))));
    return _wgslsmith_f_op_f32(-arg_2.b);
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_4, 8>();
    global1 = array<Struct_4, 8>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1932f, -885f)) - 767f), _wgslsmith_f_op_f32(func_4(Struct_2(countOneBits(vec2<i32>(u_input.b, -31316i)), u_input.a | u_input.e.x, Struct_1(vec3<bool>(false, true, false), -873f, vec2<i32>(28774i, u_input.b))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), func_2())), true)), _wgslsmith_f_op_f32(-1549f * 2318f));
    global0 = false;
    var var_1 = ~vec4<u32>(~_wgslsmith_mod_u32(u_input.a, 6498u), 1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.d.x, u_input.d.x, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.e.x, 43110u, 0u, 1u))), 4314u);
    return Struct_1(select(vec3<bool>(true, countOneBits(u_input.b) < select(u_input.b, u_input.b, false), all(vec3<bool>(true, false, false))), vec3<bool>(select(true, var_1.x >= u_input.e.x, true), func_2().a.x, false), vec3<bool>(false, _wgslsmith_sub_u32(1u, var_1.x) != 2603u, true)), -236f, abs(max(~(~vec2<i32>(u_input.b, u_input.b)), max(~vec2<i32>(u_input.b, 2147483647i), select(vec2<i32>(-42450i, 0i), vec2<i32>(u_input.b, -4078i), vec2<bool>(true, false))))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -(arg_0.c & arg_0.c) << (u_input.d % vec2<u32>(32u));
    global1 = array<Struct_4, 8>();
    global0 = false | func_2().a.x;
    global0 = true;
    let var_1 = Struct_5(-28358i == ~min(firstTrailingBit(-2147483647i), _wgslsmith_sub_i32(2147483647i, var_0.x)), Struct_2(vec2<i32>(var_0.x, abs(arg_0.c.x) | arg_0.c.x), ~0u, func_1()), vec4<u32>(_wgslsmith_add_u32(u_input.c.x, countOneBits(u_input.a)), 21261u >> (u_input.a % 32u), u_input.d.x, max(reverseBits(_wgslsmith_clamp_u32(0u, 4294967295u, 41894u)), ~1u | (4294967295u << (u_input.e.x % 32u)))), Struct_2(vec2<i32>(var_0.x, abs(abs(-1i))), u_input.c.x, Struct_1(vec3<bool>(!arg_0.a.x, arg_0.a.x, false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_0.b)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-15319i, var_0.x), vec2<i32>(-30672i, 2147483647i), reverseBits(vec2<i32>(0i, 82651i))))));
    return Struct_1(arg_0.a, arg_0.b, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = any(!(!vec4<bool>(true, any(vec4<bool>(false, true, false, false)), true, true)));
    let var_0 = ~u_input.c.x;
    let var_1 = -(~u_input.b);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -937f), -563f, _wgslsmith_f_op_f32(f32(-1f) * -1634f), _wgslsmith_f_op_f32(ceil(829f))), vec4<f32>(_wgslsmith_f_op_f32(488f * 856f), _wgslsmith_f_op_f32(-679f - -1799f), 1f, -2040f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1031f, 2211f, 938f, 252f)))))));
    var var_3 = Struct_3(Struct_2(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(var_1, 4254i)), reverseBits(var_0), func_5(func_1())), ~select(u_input.e, _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 4294967295u, 4311u) << (u_input.c % vec3<u32>(32u))), select(vec3<bool>(false, true, false), func_1().a, false)));
    let var_4 = _wgslsmith_add_vec3_i32(-_wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, var_1, u_input.b), vec3<i32>(-1i, -2147483647i, var_1)) >> (_wgslsmith_sub_vec3_u32(~var_3.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, u_input.c.x, var_3.b.x), ~u_input.e, ~vec3<u32>(var_3.b.x, 19672u, 1u))) % vec3<u32>(32u)), vec3<i32>(2147483647i, 11449i, abs(-9968i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, 1703f) + _wgslsmith_f_op_f32(f32(-1f) * -444f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) + var_2.x))));
}

