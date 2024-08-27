struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(-1i, vec4<f32>(-262f, -2260f, -1468f, -421f), vec3<u32>(34294u, 758u, 4294967295u))), Struct_2(Struct_1(0i, vec4<f32>(1000f, 1212f, 268f, 650f), vec3<u32>(1u, 4294967295u, 0u))), Struct_2(Struct_1(1i, vec4<f32>(850f, 1100f, 1388f, 1000f), vec3<u32>(4294967295u, 37552u, 24582u))), Struct_2(Struct_1(-1i, vec4<f32>(623f, -569f, 1000f, 1049f), vec3<u32>(0u, 25806u, 1u))), Struct_2(Struct_1(2147483647i, vec4<f32>(-363f, 1404f, 469f, 1000f), vec3<u32>(0u, 55245u, 67567u))), Struct_2(Struct_1(35171i, vec4<f32>(-687f, 593f, -1145f, -1097f), vec3<u32>(62971u, 87873u, 1u))), Struct_2(Struct_1(0i, vec4<f32>(923f, -382f, 669f, -997f), vec3<u32>(51946u, 18921u, 4294967295u))), Struct_2(Struct_1(0i, vec4<f32>(-1099f, 182f, 2135f, -1000f), vec3<u32>(1u, 0u, 4294967295u))), Struct_2(Struct_1(65109i, vec4<f32>(1414f, -942f, 205f, 895f), vec3<u32>(23111u, 42135u, 1u))), Struct_2(Struct_1(-18006i, vec4<f32>(577f, -440f, -371f, -304f), vec3<u32>(4294967295u, 0u, 0u))), Struct_2(Struct_1(i32(-2147483648), vec4<f32>(-208f, 380f, 222f, -1215f), vec3<u32>(45247u, 4294967295u, 1u))), Struct_2(Struct_1(-29988i, vec4<f32>(-2398f, -851f, 1000f, -556f), vec3<u32>(1u, 18650u, 1507u))));

var<private> global1: vec4<i32>;

var<private> global2: vec2<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec2<u32> {
    global2 = vec2<u32>(~_wgslsmith_clamp_u32(~global2.x, ~u_input.a | 4294967295u, global2.x), global2.x);
    let var_0 = _wgslsmith_div_i32(1i, global1.x) << ((firstLeadingBit(~max(global2.x, 0u)) << (0u % 32u)) % 32u);
    var var_1 = Struct_4(select(vec2<bool>(global2.x != 88290u, ~global1.x <= select(var_0, global1.x, false)), !vec2<bool>(any(vec3<bool>(true, true, true)), false), select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), false)));
    var var_2 = Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1306f, arg_0, -1002f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-446f, 415f, arg_1.x, arg_1.x))))), max(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 80210u, u_input.c.x), select(u_input.d.wwy, u_input.d.xyz, vec3<bool>(true, true, var_1.a.x))), ~abs(vec3<u32>(32854u, 19940u, u_input.a))), u_input.d.zyx));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_2.b.xwz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_2.b.x, var_2.b.x))))), vec3<f32>(arg_1.x, -946f, -759f), select(vec3<bool>(!(!var_1.a.x), var_1.a.x, !var_1.a.x && any(var_1.a)), vec3<bool>(var_1.a.x, true, var_1.a.x), all(vec3<bool>(var_0 > 0i, true, any(vec2<bool>(var_1.a.x, var_1.a.x)))))));
    return var_2.c.zy;
}

fn func_2() -> i32 {
    global0 = array<Struct_2, 12>();
    global2 = ~(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(276f + 406f)), _wgslsmith_div_vec2_f32(vec2<f32>(631f, -531f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(122f, 706f), vec2<f32>(-460f, 1380f), false)))) ^ reverseBits(vec2<u32>(global2.x, ~0u)));
    global0 = array<Struct_2, 12>();
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_4(vec2<bool>(all(!select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), false)), true));
    return _wgslsmith_sub_i32(global1.x, i32(-1i) * -firstTrailingBit(firstTrailingBit(global1.x)));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(func_2() & ~(-_wgslsmith_sub_i32(global1.x, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1182f, 1790f, 1722f, -1773f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(-331f, -1614f, -440f, -501f), vec4<f32>(-1000f, 2275f, -1752f, -160f)))), u_input.d.ywz);
    global1 = vec4<i32>(~2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 2147483647i), vec2<i32>(0i, -2147483647i)) & max(-var_0.a, global1.x), arg_0, var_0.a) | _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(min(abs(vec4<i32>(62604i, var_0.a, -2147483647i, global1.x)), abs(vec4<i32>(global1.x, arg_0, 1i, 4868i))), reverseBits(min(vec4<i32>(19751i, global1.x, -2147483647i, var_0.a), vec4<i32>(52018i, 45696i, 1i, arg_0)))), -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -12050i, var_0.a, -1i) << (vec4<u32>(global2.x, 0u, var_0.c.x, 1u) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, 2147483647i, -2147483647i, global1.x)));
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    let var_1 = Struct_3(select(vec3<bool>(!any(vec4<bool>(arg_1, arg_1, true, false)), true, arg_1), vec3<bool>(all(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, false, true), arg_1)), !select(arg_1, arg_1, arg_1), _wgslsmith_add_u32(u_input.d.x, u_input.a) >= ~u_input.d.x), select(vec3<bool>(arg_1, 1u <= var_0.c.x, true), vec3<bool>(select(arg_1, false, true), true, false), select(select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, arg_1, true), false), vec3<bool>(arg_1, arg_1, arg_1), false))));
    return var_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    let var_0 = abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, i32(-1i) * -71137i, -arg_3.a, arg_3.a), ~(vec4<i32>(arg_1, 3293i, arg_3.a, 0i) | vec4<i32>(-1i, arg_1, arg_3.a, global1.x))));
    var var_1 = Struct_1(-11307i, _wgslsmith_f_op_vec4_f32(arg_3.b * vec4<f32>(-721f, 576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x + arg_3.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_3.b.x, arg_3.b.x)), _wgslsmith_div_f32(arg_3.b.x, 300f))))), reverseBits(_wgslsmith_clamp_vec3_u32(arg_3.c, (u_input.d.zzx ^ u_input.d.yzz) & u_input.d.zyz, u_input.d.yyz)));
    global1 = var_0;
    global2 = vec2<u32>(firstTrailingBit(~33319u), arg_3.c.x) >> ((countOneBits(vec2<u32>(69042u, min(var_1.c.x, 0u))) ^ max(vec2<u32>(arg_3.c.x >> (var_1.c.x % 32u), var_1.c.x ^ 1u), ~u_input.c)) % vec2<u32>(32u));
    global1 = -((-vec4<i32>(-2147483647i, global1.x, 5777i, 2147483647i) << (~vec4<u32>(arg_3.c.x, 1u, 0u, 30741u) % vec4<u32>(32u))) >> (countOneBits(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(u_input.a, 4294967295u, 4294967295u, 0u), u_input.d)) % vec4<u32>(32u))) ^ vec4<i32>(-firstTrailingBit(var_1.a), -23367i, 37326i, min(abs(min(35003i, 2147483647i)), _wgslsmith_sub_i32(~global1.x, _wgslsmith_dot_vec3_i32(global1.yxx, global1.xxy))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(-4768i, _wgslsmith_add_i32(-1i, -25178i), min(_wgslsmith_mod_i32(global1.x, ~_wgslsmith_mod_i32(-2147483647i, 4541i)), -func_4(vec2<bool>(false, true), ~global1.x, Struct_3(vec3<bool>(false, false, true)), func_1(1i, false))), 0i);
    var var_0 = Struct_3(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(select(true, false, true), true, any(vec3<bool>(false, true, true))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), false)));
    let var_1 = vec4<bool>(!var_0.a.x, false, all(!(!vec2<bool>(var_0.a.x, var_0.a.x))) & ((true | var_0.a.x) & !(var_0.a.x || false)), true);
    var var_2 = global0[_wgslsmith_index_u32(~1u, 12u)];
    var var_3 = vec4<bool>(all(var_1.wwy), var_0.a.x, var_0.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_i32(1i, func_1(global1.x, var_0.a.x).a & -var_2.a.a), 51209i, -2147483647i < global1.x), 1u >> (select(var_2.a.c.x, 63949u, !var_1.x) % 32u), _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u), u_input.d.xz), var_2.a.c.xy) << (min(_wgslsmith_mult_vec2_u32(~vec2<u32>(global2.x, 68770u), ~var_2.a.c.yz), var_2.a.c.yz & u_input.d.xw) % vec2<u32>(32u)), _wgslsmith_div_f32(-177f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(263f)) + _wgslsmith_f_op_f32(sign(1175f))))), 571f);
}

