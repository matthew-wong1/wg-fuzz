struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<f32>(1000f, -2076f, 286f), 2147483647i, 378f, 45865u));

var<private> global1: array<Struct_2, 5>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.a.a.x, -709f))), 1444f, -231f, _wgslsmith_f_op_f32(global0.a.a.x - -581f)));
    var var_1 = var_0.zy;
    let var_2 = select(vec4<i32>(7577i, _wgslsmith_div_i32(-_wgslsmith_sub_i32(global0.a.b, -2147483647i), global0.a.b), -global0.a.b, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global0.a.b, -9083i)), vec2<i32>(global0.a.b, global0.a.b)) | global0.a.b), _wgslsmith_mult_vec4_i32(vec4<i32>(~(-10701i), select(global0.a.b, global0.a.b, all(vec2<bool>(false, true))), firstTrailingBit(-global0.a.b), _wgslsmith_sub_i32(-1i >> (1u % 32u), i32(-1i) * -2147483647i)), vec4<i32>(-17596i, -2147483647i, 3741i, _wgslsmith_div_i32(2147483647i, i32(-1i) * -7626i))), all(select(!(!vec4<bool>(arg_0, arg_0, arg_0, false)), !vec4<bool>(true, true, arg_0, true), arg_0)));
    var var_3 = firstTrailingBit(u_input.d);
    var var_4 = var_2.yx;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 36183u, u_input.a), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, 9937u, global0.a.d), vec3<u32>(1u, 0u, 0u))))) >> (633u % 32u);
}

fn func_2() -> vec3<u32> {
    global1 = array<Struct_2, 5>();
    var var_0 = Struct_4(vec2<i32>(14523i, global0.a.b));
    var var_1 = Struct_3(global0.a, 14470i, _wgslsmith_dot_vec2_u32(u_input.d, ~u_input.d));
    let var_2 = Struct_4(vec2<i32>((~(-51972i) ^ _wgslsmith_mult_i32(global0.a.b, global0.a.b)) | (var_1.a.b >> (var_1.a.d % 32u)), _wgslsmith_add_i32(var_0.a.x, var_1.b)));
    let var_3 = Struct_3(global0.a, _wgslsmith_clamp_i32(-2147483647i, countOneBits(abs(var_2.a.x)) ^ _wgslsmith_add_i32(-69370i, 1i), ~2147483647i), _wgslsmith_mod_u32(global0.a.d, _wgslsmith_div_u32(abs(var_1.a.d), 0u)) << (_wgslsmith_sub_u32(1u, global0.a.d) % 32u));
    return ~vec3<u32>(func_3(any(vec4<bool>(true, true, true, true))), 39704u, ~(~var_1.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 209u), vec3<u32>(4294967295u, 1u, global0.a.d)) % 32u)));
}

fn func_1(arg_0: u32, arg_1: f32) -> f32 {
    global1 = array<Struct_2, 5>();
    var var_0 = -1i;
    let var_1 = Struct_3(global0.a, 42917i, u_input.a);
    global0 = global1[_wgslsmith_index_u32(1u, 5u)];
    var var_2 = abs(countOneBits(func_2()));
    return global0.a.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> Struct_4 {
    return Struct_4(reverseBits(vec2<i32>(~countOneBits(-14486i), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(17030i, arg_1.b.b, 39977i)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, global0.a.b, arg_1.b.b), vec3<i32>(-2147483647i, arg_1.b.b, -22188i))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (i32(-1i) * -70366i) ^ global0.a.b;
    let var_1 = func_4(global0.a.d, Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global0.a.c, global0.a.a.x)), _wgslsmith_f_op_f32(-global0.a.c), _wgslsmith_f_op_f32(func_1(u_input.d.x, 776f)), global0.a.c)), global0.a));
    var var_2 = firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.a, firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(var_0, var_0)))), firstTrailingBit(_wgslsmith_add_i32(var_0, firstTrailingBit(58813i))), var_0 & (_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, var_0, global0.a.b), vec3<i32>(global0.a.b, 16821i, 15537i)) & var_1.a.x), var_0));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(global0.a.a.x + _wgslsmith_f_op_f32(global0.a.a.x - -743f)), -828f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(450f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1126f, global0.a.a.x)), -878f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1419f)), global0.a.a.x);
    global0 = Struct_2(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(69945u);
}

