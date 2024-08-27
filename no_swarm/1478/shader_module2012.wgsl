struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: vec4<i32> = vec4<i32>(0i, 24454i, -54450i, -18004i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec2<i32>) -> f32 {
    global1 = _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-39326i, 0i, arg_3.x), arg_1.c.b.b), 1i, _wgslsmith_mod_i32(-17786i, 2147483647i)) | reverseBits(vec4<i32>(arg_1.b.a.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -5499i), vec2<i32>(0i, global1.x)), abs(arg_3.x), max(arg_1.b.a.b.x, arg_2.b.b.b.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c.b.b.x, _wgslsmith_mod_i32(reverseBits(arg_1.c.b.b.x), 15793i), 0i, -firstLeadingBit(0i)), max(vec4<i32>(-78690i, _wgslsmith_clamp_i32(-44684i, -1i, -71578i), arg_1.b.a.b.x, ~arg_1.c.b.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.b, u_input.b, -31594i, arg_1.b.b) | vec4<i32>(-2147483647i, arg_2.b.b.b.x, -38779i, arg_3.x), vec4<i32>(0i, -1i, -1i, 8707i) ^ vec4<i32>(arg_3.x, u_input.a.x, arg_1.b.a.b.x, 80886i))), ~reverseBits(~vec4<i32>(arg_3.x, global1.x, -43705i, arg_2.b.b.b.x))));
    global0 = array<Struct_3, 10>();
    let var_0 = arg_2.b.b;
    global0 = array<Struct_3, 10>();
    var var_1 = any(vec3<bool>(arg_1.a, all(arg_1.b.c), true));
    return arg_1.c.a;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_3(-792f, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0u, Struct_5(false, Struct_4(Struct_1(vec2<u32>(4294967295u, 4294967295u), global1.xxy), global1.x, vec4<bool>(true, true, false, false), u_input.d), Struct_2(1000f, Struct_1(vec2<u32>(0u, 32467u), vec3<i32>(global1.x, u_input.d, -8761i))), vec4<u32>(4294967295u, 60620u, 7894u, 29241u)), global0[_wgslsmith_index_u32(0u, 10u)], vec2<i32>(-1i, u_input.d)))))), Struct_1(min(min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 18761u)), _wgslsmith_mod_vec2_u32(vec2<u32>(39492u, 4294967295u), vec2<u32>(25344u, 1u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, u_input.b, u_input.d), _wgslsmith_div_vec3_i32(global1.wxz, global1.yxx), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, -2147483647i, -11969i), global1.yzx)))), -1022f, select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)))), true);
    let var_1 = global0[_wgslsmith_index_u32(64916u, 10u)];
    let var_2 = select(select(!vec2<bool>(true, !var_1.d.x), !(!select(vec2<bool>(var_1.e, var_1.e), var_0.d.xx, var_0.d.xy)), all(var_0.d)), select(!(!select(var_1.d.xx, var_1.d.zy, var_0.e)), vec2<bool>(!var_1.e, !(var_1.d.x | true)), var_0.d.yz), (true | all(select(vec4<bool>(false, var_1.e, var_1.e, var_1.e), vec4<bool>(var_0.e, true, var_0.d.x, var_0.d.x), false))) & (_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_1.b.b.b.xz, var_1.b.b.b.zx), u_input.a) < -u_input.d));
    let var_3 = var_1.b;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~_wgslsmith_div_u32(1u, var_3.b.a.x), Struct_5(-1i <= var_0.b.b.b.x, Struct_4(var_1.b.b, 39269i, vec4<bool>(false, var_2.x, true, var_2.x), var_0.b.b.b.x), var_0.b, firstLeadingBit(vec4<u32>(var_0.b.b.a.x, var_3.b.a.x, 4294967295u, 23689u))), Struct_3(572f, var_0.b, var_0.a, var_0.d, true), vec2<i32>(1i, var_0.b.b.b.x))) + -2872f) - -850f);
    return Struct_5(true, Struct_4(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_3.b.a.x), var_0.b.b.a), vec3<i32>(_wgslsmith_clamp_i32(var_1.b.b.b.x, -21822i, 2147483647i), firstLeadingBit(0i), reverseBits(global1.x))), _wgslsmith_add_i32(i32(-1i) * -var_1.b.b.b.x, var_0.b.b.b.x), !select(vec4<bool>(true, var_0.d.x, false, true), !vec4<bool>(var_2.x, var_0.e, var_1.d.x, true), select(vec4<bool>(var_0.d.x, var_0.e, false, var_1.d.x), vec4<bool>(var_2.x, var_0.e, true, var_1.e), false)), -4904i), Struct_2(-574f, Struct_1(vec2<u32>(_wgslsmith_div_u32(12910u, var_0.b.b.a.x), 1u), countOneBits(~var_0.b.b.b))), min(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.b.a.x, 32929u, 29899u, 31454u), _wgslsmith_div_vec4_u32(vec4<u32>(97405u, 21426u, var_3.b.a.x, var_0.b.b.a.x), vec4<u32>(var_0.b.b.a.x, 0u, 1u, var_0.b.b.a.x))) | _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.b.a.x, 1u, var_3.b.a.x, var_0.b.b.a.x), vec4<u32>(var_1.b.b.a.x, 60125u, var_1.b.b.a.x, var_1.b.b.a.x), ~vec4<u32>(91198u, var_0.b.b.a.x, var_3.b.a.x, 16927u)), firstLeadingBit(~reverseBits(vec4<u32>(54232u, 0u, var_3.b.a.x, 12642u)))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = func_2();
    global0 = array<Struct_3, 10>();
    let var_1 = select(vec4<i32>(global1.x, -u_input.d, ~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0.c.b.b.x, 29882i, var_0.c.b.b.x, -9156i)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, global1.x, -1i), vec4<i32>(var_0.b.b, 1i, global1.x, -10694i))), var_0.b.a.b.x), min(abs(select(~vec4<i32>(u_input.d, -42662i, 0i, var_0.c.b.b.x), vec4<i32>(-845i, u_input.a.x, -1i, 28013i) >> (vec4<u32>(var_0.d.x, 1u, 32432u, 0u) % vec4<u32>(32u)), var_0.b.c)), _wgslsmith_div_vec4_i32(vec4<i32>(-18429i, min(-1i, u_input.b), var_0.c.b.b.x, var_0.c.b.b.x), _wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.c.b.b.x, global1.x, global1.x, u_input.a.x), vec4<i32>(global1.x, global1.x, 13228i, global1.x) | vec4<i32>(var_0.c.b.b.x, 2147483647i, -39651i, 2147483647i)))), var_0.b.c);
    global0 = array<Struct_3, 10>();
    var var_2 = select(select(var_0.b.c.wxy, !select(func_2().b.c.zzz, var_0.b.c.xww, func_2().b.c.wyx), !(!all(var_0.b.c.wwz))), !(!(!vec3<bool>(var_0.a, arg_0.x, true))), var_0.b.c.yxw);
    return Struct_1(var_0.d.zx, _wgslsmith_clamp_vec3_i32(~firstTrailingBit(_wgslsmith_mod_vec3_i32(global1.zxy, vec3<i32>(var_1.x, -18154i, -35029i))), var_0.b.a.b, ~(~firstTrailingBit(vec3<i32>(u_input.d, u_input.b, -25842i)))));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = func_2();
    global1 = ~vec4<i32>(~8160i, -23074i, var_0.c.b.b.x, i32(-1i) * -1i);
    global1 = select(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(arg_2.b.x, -13537i, -26684i, global1.x) << (var_0.d % vec4<u32>(32u)), ~vec4<i32>(28493i, 0i, 34217i, var_0.c.b.b.x) >> (vec4<u32>(1u, arg_2.a.x, arg_1, arg_1) % vec4<u32>(32u))), vec4<i32>(-select(11784i, global1.x, false), -abs(arg_0), 1i, var_0.b.d), vec4<i32>(_wgslsmith_div_i32(0i, arg_2.b.x), countOneBits(~2147483647i), ~1i, 1i)), vec4<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_div_i32(reverseBits(u_input.c), arg_2.b.x), -36354i), arg_2.b.x, _wgslsmith_sub_i32(-arg_2.b.x, firstTrailingBit(~global1.x))), any(var_0.b.c.yyw));
    global1 = select(vec4<i32>(max(8296i, var_0.b.a.b.x >> (28689u % 32u)), global1.x, arg_0, _wgslsmith_mod_i32(_wgslsmith_div_i32(global1.x, -14152i), arg_2.b.x >> (arg_1 % 32u))) ^ ((~vec4<i32>(-2147483647i, var_0.b.d, var_0.b.b, 2147483647i) << (var_0.d % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 24876i, -26651i, u_input.a.x), vec4<i32>(2147483647i, arg_2.b.x, arg_2.b.x, -2147483647i)), vec4<i32>(u_input.a.x, 0i, -25790i, arg_0))), vec4<i32>(arg_0 & -arg_2.b.x, ~global1.x, arg_2.b.x, -1749i) >> (firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 4294967295u, 0u, 0u), var_0.d, var_0.d), ~vec4<u32>(var_0.d.x, arg_1, arg_2.a.x, 53961u))) % vec4<u32>(32u)), func_2().b.c);
    var var_1 = Struct_4(arg_2, -19014i, func_2().b.c, -func_2().b.d);
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(func_2().c.a)))), _wgslsmith_f_op_f32(var_0.c.a * -1408f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(669f, var_0.c.a, var_0.c.a)), vec3<f32>(var_0.c.a, _wgslsmith_f_op_f32(var_0.c.a * -1045f), var_0.c.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_4(u_input.b, abs(~49474u), func_1(vec2<bool>(true, true)))))));
    var var_1 = Struct_4(Struct_1(vec2<u32>(1u, 1u), _wgslsmith_add_vec3_i32(vec3<i32>(-12821i, global1.x & 1i, i32(-1i) * -46753i), global1.ywx)), min(global1.x, max(global1.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, u_input.d), firstLeadingBit(29697i)))), !(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false), func_2().b.c, true)), ~(-24690i >> (countOneBits(max(35419u, 39650u)) % 32u)));
    var var_2 = -1000f;
    global1 = firstLeadingBit(vec4<i32>(u_input.b, ~select(-24490i, -2147483647i, var_1.c.x), ~(-(var_1.b | u_input.c)), abs(~13222i)));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_0.x)), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x - var_0.x))));
}

