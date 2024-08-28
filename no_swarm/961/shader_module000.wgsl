struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_3, 1>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> i32 {
    global0 = Struct_1(global0.a, !select(vec2<bool>(u_input.b < 24758i, all(vec2<bool>(true, true))), vec2<bool>(arg_0 == 1i, global0.b.x), global1.x));
    var var_0 = vec2<bool>(!(!(any(vec2<bool>(true, global0.b.x)) & global0.b.x)), global1.x);
    var var_1 = -540f;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1865f, _wgslsmith_f_op_f32(f32(-1f) * -1979f), _wgslsmith_f_op_f32(global0.a.x * global0.a.x), global0.a.x)))), !(!vec2<bool>(var_0.x, !global1.x)));
    let var_2 = ((_wgslsmith_add_vec3_u32(vec3<u32>(0u, 52926u, u_input.d) ^ vec3<u32>(1u, 141231u, 41799u), select(vec3<u32>(21625u, 0u, u_input.d), vec3<u32>(u_input.a, 16638u, 19864u), vec3<bool>(true, false, global0.b.x))) | firstLeadingBit(vec3<u32>(u_input.d, u_input.d, 4294967295u))) ^ vec3<u32>(u_input.a, ~9927u, 4294967295u)) >> ((firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u)), countOneBits(vec3<u32>(1u, 7762u, u_input.d)))) ^ vec3<u32>(u_input.d, 12541u, 11918u)) % vec3<u32>(32u));
    return _wgslsmith_mult_i32(-2147483647i << (u_input.d % 32u), u_input.c << (1u % 32u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(global0.a, global0.b);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - var_0.a) - _wgslsmith_div_vec4_f32(vec4<f32>(-657f, global0.a.x, global0.a.x, 824f), global0.a))), !global1.yz), _wgslsmith_div_i32(reverseBits(func_3(_wgslsmith_add_i32(u_input.b, u_input.b))), u_input.c), true, var_0);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: u32) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(_wgslsmith_div_u32(15711u & arg_1, 4294967295u) & arg_2), 1u), 1u)];
    let var_1 = arg_0;
    let var_2 = Struct_4(~vec3<u32>(min(firstTrailingBit(21251u), arg_2), ~63831u, 0u), var_0.a, Struct_3(-vec4<i32>(var_1.x, u_input.c << (51831u % 32u), max(-86559i, 0i), -2147483647i), _wgslsmith_f_op_vec2_f32(min(var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.zx - vec2<f32>(global0.a.x, 1510f)) + var_0.c.xz))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1369f, global0.a.x)) - -738f), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(step(-372f, var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(450f * var_0.c.x))), !vec4<bool>(var_0.d.x, !var_0.d.x, arg_1 == u_input.d, any(vec3<bool>(var_0.d.x, true, false))), ~arg_0), ~(arg_2 | _wgslsmith_mult_u32(abs(u_input.a), ~19087u)));
    let var_3 = var_2;
    global2 = array<Struct_3, 1>();
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_4 {
    global1 = select(select(vec3<bool>(false, (0u << (u_input.d % 32u)) < _wgslsmith_mult_u32(u_input.d, 54133u), all(select(vec3<bool>(true, true, arg_1.x), vec3<bool>(global1.x, global0.b.x, arg_0.d.b.x), true))), !vec3<bool>(arg_0.d.b.x, !global0.b.x, global1.x), vec3<bool>(true, false, arg_0.c)), vec3<bool>(any(vec4<bool>(true, global0.b.x, !arg_0.c, any(vec4<bool>(arg_1.x, arg_0.a.b.x, global0.b.x, global1.x)))), func_1(-vec2<i32>(-1i, 39866i), ~61993u, 1u).b < (u_input.c ^ ~arg_0.b), true), !arg_0.a.b.x);
    global2 = array<Struct_3, 1>();
    let var_0 = func_2().c;
    let var_1 = _wgslsmith_div_vec2_u32(((_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(75750u, 25625u)) & vec2<u32>(u_input.a, u_input.d)) >> (_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, u_input.a)), max(vec2<u32>(u_input.d, u_input.d), vec2<u32>(4294967295u, 32998u))) % vec2<u32>(32u))) << (~(~_wgslsmith_mod_vec2_u32(vec2<u32>(98934u, 1u), vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u)), (abs(~vec2<u32>(1u, 1u)) & vec2<u32>(0u, u_input.a)) ^ ~abs(~vec2<u32>(u_input.d, 43957u)));
    var var_2 = -select(~(-vec2<i32>(u_input.c, u_input.c) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(-27226i, u_input.c))), select(_wgslsmith_mult_vec2_i32(min(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(-1i, arg_0.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 12477i), vec2<i32>(u_input.b, -4985i), vec2<i32>(arg_0.b, u_input.b))), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.b), vec2<i32>(u_input.c, arg_0.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.b, -2147483647i), vec2<i32>(-6833i, -2147483647i))), true), global1.x);
    return Struct_4(firstTrailingBit(~firstLeadingBit(~vec3<u32>(74185u, u_input.a, 0u))), vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(57494i, -2147483647i, u_input.c, 11641i))), min(countOneBits(vec4<i32>(-67913i, u_input.b, -2147483647i, 2147483647i)), -vec4<i32>(2257i, var_2.x, var_2.x, u_input.b))), min(-2147483647i, ~(-2147483647i)) | -var_2.x, arg_0.b, abs(~26376i ^ arg_0.b)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 39876u), 1u)], 23596u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(~_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c, u_input.b)), ~vec2<i32>(u_input.b, -29608i)), firstLeadingBit(u_input.a), 4294967295u), !vec2<bool>(!global0.b.x, all(vec2<bool>(false, true))));
    var var_1 = func_1(vec2<i32>(2147483647i, 0i), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(func_4(Struct_2(Struct_1(vec4<f32>(-2455f, var_0.c.b.x, global0.a.x, 1769f), vec2<bool>(global1.x, global0.b.x)), u_input.c, global0.b.x, Struct_1(vec4<f32>(global0.a.x, var_0.c.c.x, var_0.c.b.x, -2308f), global1.xz)), func_1(vec2<i32>(-15720i, var_0.b.x), 65162u, u_input.a).a.b).a.x, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d, u_input.d), _wgslsmith_mult_u32(u_input.a, 1u))), abs(_wgslsmith_clamp_u32(0u, 0u, 0u)) >> (min(min(26403u, u_input.d), 4294967295u | u_input.a) % 32u), u_input.a | u_input.d), var_0.a.x).a;
    global0 = func_1(max(_wgslsmith_sub_vec2_i32(var_0.b.xw, vec2<i32>(-20163i, u_input.b)) & -vec2<i32>(44841i, u_input.c), var_0.c.e) ^ _wgslsmith_add_vec2_i32(select(~var_0.b.zz, abs(var_0.b.xy), func_4(Struct_2(Struct_1(vec4<f32>(var_0.c.c.x, -222f, 766f, global0.a.x), global1.zy), var_0.b.x, global0.b.x, Struct_1(vec4<f32>(-166f, -447f, var_0.c.b.x, 1000f), vec2<bool>(true, true))), vec2<bool>(global0.b.x, false)).c.d.x), ~_wgslsmith_div_vec2_i32(var_0.b.xw, vec2<i32>(u_input.b, -30763i))), 63795u, ~24658u | ~((1u << (1u % 32u)) ^ (var_0.d >> (4294967295u % 32u)))).d;
    let var_2 = Struct_3(-(~select(-vec4<i32>(38450i, u_input.b, u_input.c, u_input.c), var_0.c.a | var_0.c.a, true)), _wgslsmith_f_op_vec2_f32(var_1.a.wz + vec2<f32>(func_1(abs(vec2<i32>(2147483647i, 2147483647i)), var_0.d, var_0.a.x).a.a.x, _wgslsmith_f_op_f32(-global0.a.x))), vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -984f)), var_0.c.d, -(~(~(-var_0.b.yx))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, -998f, var_0.c.b.x, 432f), vec4<f32>(var_1.a.x, 1820f, -1637f, global0.a.x)))))), global1.xx), var_2.a.x, !var_2.d.x, func_2().d);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x);
}

