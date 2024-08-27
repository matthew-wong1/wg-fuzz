struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1027f, 489f, -494f, -358f);

var<private> global1: Struct_3 = Struct_3(true, 0i, vec3<i32>(-1i, 1i, -48286i));

var<private> global2: vec2<u32>;

var<private> global3: u32 = 6052u;

var<private> global4: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global3 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(global2.x, 37888u, global2.x), vec3<u32>(global2.x, 4294967295u, global2.x), vec3<bool>(global1.a, true, global1.a)), reverseBits(vec3<u32>(u_input.d, u_input.d, 0u)))), _wgslsmith_mod_u32(abs(max(u_input.d, 4294967295u)), _wgslsmith_mult_u32(global2.x, u_input.d) << (u_input.d % 32u)), global2.x), countOneBits(firstTrailingBit(~(vec3<u32>(3972u, global2.x, 60160u) << (vec3<u32>(4294967295u, 1u, 4294967295u) % vec3<u32>(32u))))));
    let var_0 = 14196i;
    let var_1 = Struct_3(true, -(~(-1i)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a.c, ~abs(1i), ~(-arg_0.a.c)), countOneBits(select(vec3<i32>(39703i, u_input.a.x, 18489i), max(global1.c, global1.c), all(vec2<bool>(true, true))))));
    global4 = true;
    let var_2 = arg_1;
    return select(all(!vec4<bool>(var_1.a, true, true, false)), !global1.a, (_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_3.b.x, -20364i, -3076i), vec4<i32>(-1i, u_input.c, arg_0.a.b.x, 2147483647i)) << (~20310u % 32u)) > _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(12637i, var_2.a.b.x, arg_3.a), vec3<i32>(-1i, arg_2.a, global1.c.x)), 0i)) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * arg_3.d.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = ~vec4<u32>(13257u, _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(global2.x), ~4294967295u, ~u_input.d), ~(~vec3<u32>(global2.x, global2.x, 30725u))), 4294967295u, u_input.d);
    var var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(global1.c.x, select(global1.c.zx, vec2<i32>(-36757i, ~9309i), var_1.a), ~_wgslsmith_sub_i32(var_1.b, ~(-26536i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.xy))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(275f, global0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.zy)));
    var var_3 = Struct_2(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - global0.x))));
    let var_4 = arg_1;
    return _wgslsmith_f_op_vec2_f32(step(var_3.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.b.x, -1361f), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.a.d.x, var_3.b.x), var_3.b))))))));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_3(any(!vec2<bool>(true, global1.a)) & (~u_input.d <= u_input.d), -23107i, global1.c), vec2<bool>(false, global1.a), all(!vec4<bool>(any(vec2<bool>(global1.a, global1.a)), any(vec3<bool>(false, global1.a, global1.a)), func_3(Struct_2(Struct_1(u_input.a.x, u_input.a, 2147483647i, global0.yz), global0.wx), Struct_2(Struct_1(44720i, vec2<i32>(1i, 2147483647i), u_input.e, global0.yy), vec2<f32>(-1520f, global0.x)), Struct_1(arg_0.x, u_input.a, global1.b, vec2<f32>(global0.x, -1212f)), Struct_1(1i, u_input.a, global1.b, global0.xy)), true)), Struct_3(_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(439f, global0.x)) <= 100f, arg_0.x ^ -(~global1.c.x), abs(firstTrailingBit(global1.c)))));
    global1 = Struct_3(true, arg_0.x, vec3<i32>(i32(-1i) * -_wgslsmith_sub_i32(arg_0.x, global1.b), firstLeadingBit(-(~global1.b)), reverseBits(_wgslsmith_dot_vec3_i32(~arg_0.yyx, _wgslsmith_mult_vec3_i32(global1.c, vec3<i32>(u_input.b, 4993i, u_input.c))))));
    global1 = Struct_3(2218f <= var_0.x, u_input.c, arg_0.wyx);
    let var_1 = Struct_1(-35083i, _wgslsmith_add_vec2_i32(u_input.a, global1.c.yy), 47031i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1369f), _wgslsmith_f_op_vec2_f32(-global0.xz)))), _wgslsmith_f_op_vec2_f32(trunc(global0.wy)), reverseBits(1i) > _wgslsmith_clamp_i32(arg_0.x, 2147483647i, firstTrailingBit(-48040i)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(min(-1178f, global0.x)), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -709f))))), -969f);
    return ~(~59502u | (u_input.d << (abs(_wgslsmith_mult_u32(12652u, u_input.d)) % 32u)));
}

fn func_1() -> Struct_3 {
    global1 = Struct_3(global1.a | true, i32(-1i) * -global1.c.x, global1.c & reverseBits(-countOneBits(global1.c)));
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, func_2(select(vec4<i32>(-10684i, u_input.a.x, global1.b, 2147483647i), vec4<i32>(33157i, -2147483647i, u_input.a.x, 1i), vec4<bool>(global1.a, true, true, false))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, global2.x, 1u), vec4<u32>(u_input.d, 0u, global2.x, 21009u) | vec4<u32>(41066u, global2.x, 0u, u_input.d))), ~firstTrailingBit(global2.x), _wgslsmith_add_u32(~u_input.d, firstLeadingBit(select(4294967295u, 40792u, false))), u_input.d), abs(abs(abs(vec4<u32>(15264u, u_input.d, global2.x, 25104u) ^ vec4<u32>(u_input.d, 39690u, global2.x, 55147u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1772f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_3(true, 2909i, vec3<i32>(30444i, 24122i, u_input.b)), vec2<bool>(false, true), global1.a, Struct_3(global1.a, -61512i, vec3<i32>(u_input.b, 2200i, global1.c.x)))).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1117f) + 278f)), global0.x)));
    global2 = ~vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), global2.x), select(min(global2.x, global2.x) ^ u_input.d, func_2(-vec4<i32>(-3493i, global1.c.x, -11493i, 16417i)), global1.a));
    let var_2 = global1.a;
    return Struct_3((_wgslsmith_mult_i32(global1.b, 0i) < _wgslsmith_clamp_i32(-13928i & global1.b, -62819i, _wgslsmith_sub_i32(-2147483647i, -39865i))) && true, -2147483647i, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~abs(abs(vec2<u32>(0u, u_input.d ^ global2.x)));
    let var_0 = 0u;
    global1 = func_1();
    var var_1 = Struct_3(true, ~global1.b, select(vec3<i32>(u_input.c | (u_input.e << (0u % 32u)), u_input.e, _wgslsmith_mod_i32(global1.c.x, 9287i ^ global1.b)), -(_wgslsmith_mult_vec3_i32(vec3<i32>(-93844i, global1.b, 7809i), vec3<i32>(1i, 53517i, 2147483647i)) ^ abs(vec3<i32>(1i, -57091i, global1.b))), !any(select(vec4<bool>(true, true, global1.a, global1.a), vec4<bool>(global1.a, false, global1.a, global1.a), vec4<bool>(true, global1.a, true, global1.a)))));
    global3 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(~(global2.x ^ 0u)), 81645u, u_input.d), 1u);
    global3 = _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, var_0, 4294967295u) | vec3<u32>(global2.x, 33704u, 0u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0, 0u, 1u), vec3<u32>(var_0, var_0, global2.x)))), abs(abs(~4294967295u)));
    var_1 = func_1();
    let var_2 = Struct_1(-16289i, -(vec2<i32>(-1i) * -(u_input.a | vec2<i32>(var_1.c.x, 2147483647i))), ~abs(global1.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 143f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(996f, 416f)))))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(~(vec4<i32>(global1.b, 46171i, global1.b, 35143i) << (vec4<u32>(12470u, 4294967295u, var_0, u_input.d) % vec4<u32>(32u))), firstTrailingBit(~vec4<i32>(var_1.c.x, 1i, var_2.c, 5214i))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, 1i), var_2.c), _wgslsmith_mult_i32(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-8107i, u_input.e), vec2<i32>(-15302i, var_2.a)))), global1.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.yy + var_2.d), _wgslsmith_div_vec2_f32(var_2.d, vec2<f32>(global0.x, var_2.d.x)))))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(exp2(global0.x))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.d.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(2147483647i, u_input.b)), -vec2<i32>(var_3.a.b.x, -1i)), firstTrailingBit(-u_input.c), var_3.a.a ^ ~17387i, countOneBits(u_input.e)), vec4<i32>(-1i) * -vec4<i32>(46697i, var_1.b, global1.c.x, global1.c.x)), reverseBits(vec4<i32>(~u_input.e, var_3.a.c, 2147483647i, -1i) | (~vec4<i32>(var_2.a, var_2.c, global1.b, 2147483647i) | reverseBits(vec4<i32>(-2147483647i, 1i, var_2.c, 58240i)))));
}

