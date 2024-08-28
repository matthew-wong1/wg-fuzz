struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(1529i, -13885i, -40128i), vec4<bool>(true, true, false, false), -8840i, vec3<f32>(216f, -309f, 375f), true), Struct_1(vec3<i32>(-1i, 1i, 21510i), vec4<bool>(false, true, false, true), -12842i, vec3<f32>(-1000f, 1812f, -173f), true), vec2<f32>(1434f, -350f));

var<private> global2: array<bool, 16>;

var<private> global3: u32 = 0u;

var<private> global4: vec4<u32> = vec4<u32>(93497u, 0u, 58855u, 0u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = -27603i;
    global2 = array<bool, 16>();
    return 1u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = ~vec2<u32>(func_3(-719f), _wgslsmith_dot_vec3_u32(global4.xxw, global4.wyw));
    let var_1 = any(vec4<bool>(true, false, true, !global2[_wgslsmith_index_u32(max(1u, _wgslsmith_mult_u32(var_0.x, u_input.d)), 16u)]));
    var var_2 = 220f;
    global0 = Struct_2(Struct_1(~u_input.b.zwz, global1.a.b, _wgslsmith_add_i32(global0.b.c, _wgslsmith_clamp_i32(1i, global0.b.c, -u_input.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.d) - global1.b.d), any(vec4<bool>(false, any(global1.b.b.zyw), u_input.a == u_input.b.x, !global1.b.b.x))), global0.b, arg_0.zx);
    global4 = vec4<u32>(~u_input.d, ~var_0.x, u_input.d, _wgslsmith_dot_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 70915u, u_input.d, var_0.x), vec4<u32>(0u, 0u, 24402u, 1u), vec4<u32>(25504u, 4294967295u, 4294967295u, var_0.x))), vec4<u32>(35996u, ~var_0.x, 4294967295u, ~(~4294967295u))));
    return Struct_2(global1.b, Struct_1(abs(~_wgslsmith_sub_vec3_i32(global1.a.a, global0.a.a)), !global0.a.b, 1i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2248f * 152f) + _wgslsmith_f_op_f32(global0.c.x + 2408f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.x), global1.a.b.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.c)) * _wgslsmith_f_op_vec2_f32(-global0.c)))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~(~global4.x), ~u_input.d, 0u, ~(global4.x >> (23413u % 32u)))), abs(~vec4<u32>(~u_input.d, 41815u >> (global4.x % 32u), u_input.d, _wgslsmith_mod_u32(global4.x, global4.x))));
    var var_1 = select(reverseBits(countOneBits(u_input.b)), u_input.b, global0.b.b);
    let var_2 = u_input.b.ywz;
    var var_3 = func_2(global0.a.d);
    global1 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.c.x - -1068f), -1000f, -666f))).a, Struct_1(~(~(-global0.a.a)), !select(global0.b.b, var_3.a.b, vec4<bool>(global0.b.b.x, global2[_wgslsmith_index_u32(4294967295u, 16u)], true, false)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(firstTrailingBit(0i), _wgslsmith_mult_i32(u_input.b.x, -1835i), 0i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(global1.a.c, global0.a.a.x, global1.a.a.x), var_2, global2[_wgslsmith_index_u32(4294967295u, 16u)]), vec3<i32>(-5956i, 2147483647i, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, global1.b.d.x, var_3.b.d.x))), !global2[_wgslsmith_index_u32(~(u_input.d >> (u_input.d % 32u)), 16u)]), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(-global0.a.d.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1363f)))))));
    return func_2(vec3<f32>(func_2(global1.b.d).b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -180f), -601f)).b;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(ceil(global1.b.d.x));
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -827f), global1.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -2045f)))));
    global0 = Struct_2(func_1(true), func_1(any(vec4<bool>(var_1.b.e, all(var_1.a.b.xwz), global2[_wgslsmith_index_u32(~u_input.d, 16u)], arg_0 != u_input.b.x))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.d.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(global0.a.d.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, var_0))))))));
    let var_2 = func_2(global1.b.d);
    let var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, global4.x), vec4<u32>(62613u, 3955u, 1u, 0u)), reverseBits(22526u) << (min(global4.x, u_input.d) % 32u)), 0u, _wgslsmith_dot_vec2_u32(global4.zz, vec2<u32>(1u, 0u)), ~u_input.d), select(vec4<u32>(~68806u, 1u, global4.x, 1u), vec4<u32>(~(33877u << (global4.x % 32u)), 1u, global4.x, abs(0u << (u_input.d % 32u))), -2147483647i < global0.b.c));
    return func_2(vec3<f32>(850f, global0.a.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d.x), var_2.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.a.d.x, var_1.a.d.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(i32(-1i) * -_wgslsmith_dot_vec3_i32(u_input.b.wyy >> (global4.wxx % vec3<u32>(32u)), ~vec3<i32>(54003i, global0.b.a.x, global0.a.a.x)), func_1(true));
    let var_1 = global0.b.a.x;
    let var_2 = global0.b;
    var_0 = Struct_2(Struct_1(countOneBits(select(global0.a.a >> (global4.zwx % vec3<u32>(32u)), var_0.a.a, vec3<bool>(var_0.b.b.x, true, true))), !(!func_4(-26260i, var_0.b).a.b), -var_2.a.x, var_0.a.d, func_4(var_2.a.x, func_1(var_2.e)).a.b.x), func_1(any(func_2(vec3<f32>(598f, var_0.c.x, global1.b.d.x)).b.b)), _wgslsmith_f_op_vec2_f32(sign(var_0.c)));
    let var_3 = Struct_1(-global1.b.a, func_2(var_2.d).b.b, _wgslsmith_dot_vec4_i32(max(~(~u_input.b), vec4<i32>(var_0.a.a.x, _wgslsmith_add_i32(-1i, -6520i), global1.b.a.x, _wgslsmith_mult_i32(0i, var_0.b.c))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, u_input.b) & -u_input.b, countOneBits(-vec4<i32>(-2147483647i, -2147483647i, -2147483647i, var_0.a.c)))), global0.a.d, all(func_4(-1i, Struct_1(global0.a.a, !vec4<bool>(false, true, true, var_0.b.b.x), 62057i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.d.x, var_0.b.d.x, 108f)), global0.a.b.x)).a.b.yyx));
    let var_4 = global1.c.x;
    global4 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 94652u, global4.x, global4.x), vec4<u32>(1u, u_input.d, 61231u, 4294967295u)), vec4<u32>(global4.x, global4.x, u_input.d, 18310u), min(vec4<u32>(24482u, u_input.d, 4294967295u, global4.x), vec4<u32>(0u, 4294967295u, 0u, 17217u))), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 54777u, global4.x), vec4<u32>(0u, 67943u, global4.x, u_input.d)))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(109128u, global4.x), 6687u, abs(4294967295u), u_input.d), select(~vec4<u32>(u_input.d, global4.x, 83982u, 1u), ~vec4<u32>(u_input.d, 0u, global4.x, global4.x), global0.b.b.x & global1.b.b.x))), countOneBits(~max(67459u, global4.x)) | global4.x, u_input.d, global4.x);
    global0 = Struct_2(global1.a, func_4(var_2.c, global0.a).b, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-870f, var_0.b.d.x))))) * vec2<f32>(_wgslsmith_f_op_f32(-1379f - func_2(vec3<f32>(-1448f, var_0.a.d.x, global1.a.d.x)).a.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1001f), _wgslsmith_f_op_f32(-global0.a.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global4.zw, ~(~30573u), ~global4.zy);
}

