struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(26571i, 2147483647i, 2147483647i, -28035i);

var<private> global1: array<Struct_2, 16>;

var<private> global2: Struct_5;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    global1 = array<Struct_2, 16>();
    global2 = Struct_5(1f, global2.b, vec4<bool>(global2.c.x, true, true, !any(!vec4<bool>(false, global2.c.x, true, true))), global2.a);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -291f) - _wgslsmith_f_op_f32(global2.d * 1859f)) - global2.a), _wgslsmith_f_op_f32(step(global2.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1249f * global2.a), _wgslsmith_f_op_f32(global2.a + -294f))))), _wgslsmith_mod_i32(global0.x, i32(-1i) * -49706i) > (i32(-1i) * -53503i))), firstTrailingBit(0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1025f * -276f), 196f, 1000f) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(889f, global2.d, global2.d) * vec3<f32>(1782f, global2.d, global2.a)))))));
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(805f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global2.a, var_0.a, select(var_0.b <= 16544u, global2.c.x, global2.c.x))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-690f, global2.a, -315f, arg_0.a.a)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.d, 1546f, global2.a, -895f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, -925f, 1581f, -472f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c.x, global2.a, -1061f, arg_0.a.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.x, global2.d, 1000f, arg_0.a.c.x) + vec4<f32>(2259f, -2158f, global2.a, -772f)))))));
    global1 = array<Struct_2, 16>();
    let var_1 = Struct_4(4294967295u, global0.x, arg_0.a.a);
    global2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.c.x, _wgslsmith_f_op_f32(min(-1000f, arg_0.a.a))))), _wgslsmith_mult_vec2_u32(arg_1.xx, vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(17366u, 3294u, 29926u), ~vec3<u32>(4294967295u, var_1.a, global2.b.x)))), select(global2.c, global2.c, !select(global2.c, !global2.c, !global2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1340f, arg_0.a.c.x) + _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(func_3()))));
    var var_2 = arg_0;
    return countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~max(vec3<u32>(4294967295u, 5617u, 0u), vec3<u32>(u_input.a, 1u, 1u)), vec3<u32>(_wgslsmith_mult_u32(arg_1.x, var_1.a), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 79366u), vec2<u32>(0u, 4294967295u)), 29294u)), vec3<u32>(4294967295u ^ firstTrailingBit(17261u), min(1u, 1u) ^ var_2.c, arg_0.b.x)));
}

fn func_1() -> Struct_5 {
    let var_0 = global1[_wgslsmith_index_u32(global2.b.x, 16u)];
    var var_1 = 1000f;
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(0i, global0.x, -global0.x, global0.x << (38487u % 32u)), vec4<i32>(global0.x, _wgslsmith_div_i32(global0.x, global0.x << (func_2(global1[_wgslsmith_index_u32(global2.b.x, 16u)], vec3<u32>(global2.b.x, global2.b.x, u_input.a), global0.x) % 32u)), 0i, -15856i));
    global0 = ~firstTrailingBit(select(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_2.x, 10992i, 17708i, var_2.x), -vec4<i32>(global0.x, -2147483647i, 18418i, -2147483647i)), -(vec4<i32>(global0.x, -1i, var_2.x, global0.x) ^ vec4<i32>(global0.x, global0.x, 2147483647i, 20905i)), global2.c));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    return Struct_5(_wgslsmith_f_op_f32(step(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(177f, 1000f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3())))))), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)) | (firstLeadingBit(vec2<u32>(var_0.a.b, global2.b.x)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(63832u, 4294967295u), vec2<u32>(global2.b.x, var_0.a.b)) % vec2<u32>(32u))), ~vec2<u32>(u_input.a, 4294967295u)), !select(select(global2.c, !global2.c, true), !vec4<bool>(false, false, global2.c.x, false), 16977i < var_2.x), 751f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global2 = func_1();
    var var_0 = -(~(-vec3<i32>(global0.x, 0i, global0.x))) | max(global0.zxz, _wgslsmith_mod_vec3_i32(vec3<i32>(~(-2147483647i), -40724i, firstLeadingBit(-11515i)), -vec3<i32>(0i, global0.x, global0.x)));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d * global2.d))), ~(~global2.b), global2.c, -699f);
    global0 = min(firstTrailingBit(-(vec4<i32>(var_0.x, global0.x, -1i, 1i) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 17702u, 4225u, 0u), vec4<u32>(var_1.b.x, 88104u, 64777u, u_input.a)) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i >> (var_1.b.x % 32u), -17184i, _wgslsmith_dot_vec3_i32(global0.ywz, vec3<i32>(global0.x, global0.x, var_0.x)), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.x), var_0.xz))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, var_0.x, var_0.x, 21015i), vec4<i32>(25356i, 27666i, -2147483647i, 2147483647i)), vec4<i32>(-12649i, global0.x, var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, var_0.x, global0.x), vec4<i32>(var_0.x, -1i, 2147483647i, 0i))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, -2223f, vec4<u32>(u_input.a, abs(~28082u), _wgslsmith_div_u32(u_input.a >> (15789u % 32u), u_input.a), ~57829u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-880f, -1444f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(global2.d + 1525f)), global2.a)), 27516i);
}

