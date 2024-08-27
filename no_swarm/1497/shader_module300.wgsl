struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-1385f, 1933f, 358f, 730f), vec4<f32>(182f, 1000f, -721f, 203f), vec4<f32>(-361f, -383f, 391f, 638f), vec4<f32>(-1069f, -1949f, -178f, -2834f), vec4<f32>(1405f, 1467f, 1789f, 1218f), vec4<f32>(-1665f, 491f, 515f, -486f), vec4<f32>(-128f, 2449f, -957f, -312f), vec4<f32>(-1242f, 1000f, 148f, 861f), vec4<f32>(754f, -1083f, -556f, -305f));

var<private> global1: u32;

var<private> global2: vec2<i32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(22007i), vec3<f32>(1170f, -2307f, 1000f), 45424i, Struct_1(10616i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: vec4<i32>) -> i32 {
    global0 = array<vec4<f32>, 9>();
    var var_0 = select(select(!select(arg_0.d.yx, !arg_0.d.xx, !arg_0.e), arg_0.e, !arg_0.e), vec2<bool>(true, false), !arg_0.d.zz);
    var var_1 = vec3<bool>(arg_0.c.a.x < 0u, true, true);
    let var_2 = vec3<i32>(arg_0.c.b.a, -14228i, -(arg_2.x >> (_wgslsmith_add_u32(1u, 12055u) % 32u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)));
    return -_wgslsmith_sub_i32(-(~(var_2.x | -1i)), 1i);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = true;
    var var_1 = vec3<i32>(_wgslsmith_add_i32(arg_2, ~_wgslsmith_div_i32(24705i, -1i)) & 0i, ~(-func_3(Struct_5(true, 542f, Struct_3(u_input.d, global3.a, var_0), vec3<bool>(var_0, false, var_0), vec2<bool>(false, var_0)), vec4<i32>(-1i, u_input.c, global2.x, u_input.a), vec4<i32>(arg_2, -2147483647i, -30076i, global2.x))) >> (u_input.d.x % 32u), 65740i);
    global0 = array<vec4<f32>, 9>();
    var var_2 = u_input.d.x;
    global3 = Struct_2(Struct_1(-1i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(global3.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, 1000f, 1000f) - vec3<f32>(1000f, -2132f, 139f)), _wgslsmith_f_op_vec3_f32(floor(global3.b)), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(var_0, arg_0, true), true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, global3.b.x, global3.b.x))))), abs(-u_input.a), Struct_1(_wgslsmith_clamp_i32(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 10103i), vec2<i32>(-16378i, 1i)), global2.x)));
    return Struct_1(2147483647i);
}

fn func_1() -> Struct_5 {
    global3 = Struct_2(Struct_1(u_input.a), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-500f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)), global3.b.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.b) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1051f, 403f, -970f) + global3.b))))), u_input.b, func_2(true, ~0u, countOneBits(u_input.c)));
    let var_0 = Struct_5(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -849f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.b.x))))))), Struct_3(~u_input.d, global3.d, all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(!all(vec4<bool>(true, true, false, true)), true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)))), vec3<bool>(all(vec3<bool>(false, true, true)), true, false)), vec2<bool>(true, (true & select(false, false, false)) && any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(751f)), _wgslsmith_f_op_f32(var_0.b - global3.b.x)))))));
    let var_2 = var_0.c;
    let var_3 = Struct_2(func_2(!var_0.a, ~1u & (~u_input.d.x << (0u % 32u)), u_input.c), global3.b, select(var_0.c.b.a << (u_input.d.x % 32u), 22920i, !var_0.c.c), Struct_1(global3.c));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b)) != _wgslsmith_f_op_f32(f32(-1f) * -867f), var_0.b, var_0.c, var_0.d, !vec2<bool>(any(var_0.e), any(vec4<bool>(false, false, var_2.c, false)) != var_2.c));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_1 {
    global2 = arg_0.xz | vec2<i32>(i32(-1i) * -1i, arg_1.c.b.a);
    var var_0 = Struct_5(_wgslsmith_div_i32(global2.x >> (countOneBits(arg_1.c.a.x) % 32u), -14084i) != -u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-696f, _wgslsmith_div_f32(arg_3.x, _wgslsmith_div_f32(565f, arg_1.b)))), arg_1.c, vec3<bool>(all(select(!vec4<bool>(arg_2.x, arg_2.x, true, false), !vec4<bool>(arg_1.c.c, true, arg_2.x, arg_1.a), arg_2.x)), !arg_2.x, func_1().a), !arg_2);
    var var_1 = arg_1.c.a.x >> (4294967295u % 32u);
    let var_2 = Struct_2(func_2(false, u_input.d.x, global2.x), _wgslsmith_f_op_vec3_f32(-global3.b), global3.a.a, func_2(all(arg_1.e), countOneBits(0u), max(arg_1.c.b.a ^ global2.x, var_0.c.b.a)));
    var var_3 = var_0.c.a.x;
    return global3.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: i32) -> Struct_2 {
    let var_0 = !vec4<bool>(select(true, true, (4294967295u & u_input.d.x) != u_input.d.x), all(vec3<bool>(true, true, false)) || !all(vec2<bool>(false, true)), !select(true, any(vec2<bool>(false, true)), arg_1.x <= arg_0.b.x), any(vec3<bool>(true, true, true)));
    var var_1 = Struct_4(func_1().d.yx, global3.d, abs(~(~vec4<u32>(61239u, 4294967295u, u_input.d.x, u_input.d.x))) & firstLeadingBit(~vec4<u32>(0u, 4294967295u, 19555u, 0u)), !vec3<bool>(!var_0.x, false, true));
    global2 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-(-vec2<i32>(global2.x, arg_0.d.a) & -vec2<i32>(global3.a.a, var_1.b.a)), ~vec2<i32>(-21569i, u_input.b) ^ vec2<i32>(global2.x, firstTrailingBit(-8347i))), max(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(var_1.b.a, global3.d.a), vec2<i32>(arg_0.d.a, 1i)), min(vec2<i32>(~1i, arg_0.a.a | global3.d.a), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, global2.x) >> (u_input.d.yx % vec2<u32>(32u)), vec2<i32>(-2147483647i, -37200i)))));
    global2 = vec2<i32>(arg_3, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(31164i, 0i, 26259i), ~vec3<i32>(global3.c, var_1.b.a, 2147483647i)), ~vec3<i32>(arg_0.c, -442i, 38354i)), min(abs(vec3<i32>(1i, var_1.b.a, -2147483647i)) >> (_wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(15283u, var_1.c.x, var_1.c.x)) % vec3<u32>(32u)), ~vec3<i32>(1i, global2.x, global3.d.a))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(491f, 713f, 555f));
    return Struct_2(func_1().c.b, _wgslsmith_f_op_vec3_f32(-var_2), 5294i, Struct_1(global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(-_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-2147483647i, u_input.b), ~global3.a.a), vec2<i32>(2147483647i, global2.x)));
    global3 = func_5(Struct_2(global3.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, global3.b.x, global3.b.x)))), u_input.a | 2147483647i, func_4(reverseBits(~vec4<i32>(global3.c, global3.d.a, 0i, 2147483647i)), func_1(), func_1().d.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global3.b.xy))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(global3.b.x, 1719f), 251f, 588f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, global3.b.x, global3.b.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2391f, global3.b.x, global3.b.x) * vec3<f32>(394f, global3.b.x, global3.b.x))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global3.b.x - global3.b.x), 910f, 1158f))), vec3<bool>(true, true, true))), vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-450f))))), 70458i);
    global0 = array<vec4<f32>, 9>();
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b.x, 2284f, -972f, global3.b.x), global0[_wgslsmith_index_u32(u_input.d.x, 9u)], true)), _wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(u_input.d.x, 9u)])))))))));
    let var_1 = Struct_1(~(-39236i) | func_2(select(func_1().d.x, true, true), select(_wgslsmith_mod_u32(u_input.d.x, 71132u), ~0u, all(vec3<bool>(true, false, false))), _wgslsmith_clamp_i32(global3.d.a, global2.x, 1i >> (u_input.d.x % 32u))).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_add_i32(-u_input.c, ~func_5(Struct_2(var_1, global3.b, 1i, Struct_1(26347i)), var_0.zxz, var_0.yy, 12771i).c), global3.d.a));
}

