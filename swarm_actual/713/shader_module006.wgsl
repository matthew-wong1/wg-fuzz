struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<u32>(1u, 0u, 0u, 25718u), 1u));

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<u32>(1924u, 66083u, 73493u, 1u), 11310u), Struct_1(vec4<u32>(73938u, 71453u, 26241u, 0u), 1u), Struct_1(vec4<u32>(90051u, 0u, 0u, 9595u), 52537u), Struct_1(vec4<u32>(0u, 11986u, 23129u, 4294967295u), 22777u), Struct_1(vec4<u32>(21543u, 1u, 4294967295u, 27298u), 4294967295u), Struct_1(vec4<u32>(82606u, 0u, 98913u, 2591u), 31171u), Struct_1(vec4<u32>(1u, 29389u, 17255u, 35911u), 1u), Struct_1(vec4<u32>(0u, 636u, 1u, 4294967295u), 34426u), Struct_1(vec4<u32>(33442u, 0u, 0u, 58980u), 4294967295u), Struct_1(vec4<u32>(5070u, 4294967295u, 4294967295u, 31422u), 34193u), Struct_1(vec4<u32>(1u, 22215u, 1u, 1u), 0u), Struct_1(vec4<u32>(0u, 56224u, 65688u, 35372u), 4294967295u), Struct_1(vec4<u32>(1u, 4294967295u, 131149u, 1u), 10107u), Struct_1(vec4<u32>(6831u, 30901u, 28671u, 4294967295u), 44573u), Struct_1(vec4<u32>(51981u, 4294967295u, 0u, 1u), 1u), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 41387u), 31734u), Struct_1(vec4<u32>(0u, 0u, 35400u, 10162u), 1u), Struct_1(vec4<u32>(41357u, 49501u, 38741u, 1u), 13977u), Struct_1(vec4<u32>(52418u, 0u, 1u, 2961u), 56726u), Struct_1(vec4<u32>(1u, 637u, 56611u, 60375u), 1u), Struct_1(vec4<u32>(0u, 1u, 71869u, 24281u), 1u), Struct_1(vec4<u32>(76647u, 1u, 17870u, 4294967295u), 4294967295u), Struct_1(vec4<u32>(21184u, 37339u, 18380u, 22557u), 15214u), Struct_1(vec4<u32>(4294967295u, 1u, 72743u, 0u), 0u), Struct_1(vec4<u32>(53371u, 104853u, 1u, 76666u), 4294967295u));

var<private> global2: vec3<f32> = vec3<f32>(183f, -1531f, -1000f);

var<private> global3: u32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(select(_wgslsmith_dot_vec3_u32(u_input.c.zyy, _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.a.x, 9940u, global0.a.b), vec3<u32>(global0.a.b, 32828u, global0.a.b))), ~global0.a.b << (countOneBits(1u) % 32u), any(vec4<bool>(true, false, true, false)))), 25u)]);
    global1 = array<Struct_1, 25>();
    global3 = _wgslsmith_div_u32(abs(abs(1u)), ~global0.a.a.x);
    var var_1 = vec3<i32>(19124i, u_input.b.x, 14149i);
    let var_2 = -2461f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(586f * var_2)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(abs(-432f))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> f32 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(global0.a.a.x, 25u)]);
    var var_1 = arg_0;
    var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(min(~(1i | arg_0.x), reverseBits(0i)), -2147483647i, -(i32(-1i) * -1i)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-13874i, -1i, -31099i), vec3<i32>(-1i, arg_0.x, 10818i)), vec3<i32>(_wgslsmith_div_i32(-2147483647i, 2147483647i), arg_0.x, arg_1)), _wgslsmith_div_vec3_i32(arg_0, vec3<i32>(-1i | arg_1, -13326i, arg_1))));
    let var_2 = -16405i;
    var var_3 = Struct_1(~vec4<u32>(_wgslsmith_mod_u32(32135u, global0.a.a.x << (1u % 32u)), ~global0.a.a.x, ~0u, var_0.a.b), ~abs(u_input.e));
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1() -> Struct_1 {
    let var_0 = global0.a.a.x;
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1276f, global2.x, _wgslsmith_f_op_f32(func_2(vec3<i32>(-13256i, u_input.b.x, u_input.b.x), u_input.b.x))), vec3<f32>(global2.x, global2.x, global2.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1203f, global2.x, global2.x), vec3<f32>(global2.x, 691f, -2095f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-471f, 180f, -2507f) + vec3<f32>(421f, global2.x, 607f))) * vec3<f32>(1f, 882f, _wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), 0i)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, global2.x, 1172f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-137f, 137f, global2.x)))))));
    var var_1 = ~u_input.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, -827f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -168f))))), 177f));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.yzy - vec3<f32>(739f, global2.x, -115f)) + var_2.zxw));
    return global1[_wgslsmith_index_u32(39876u, 25u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(global2.x, global2.x), global2.x, _wgslsmith_div_f32(-209f, global2.x), global2.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1518f, 819f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) * _wgslsmith_f_op_f32(global2.x + 114f)))))));
    let var_1 = Struct_2(func_1());
    return ~u_input.b.x << (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, -func_4(func_1(), vec4<i32>(-1152i, u_input.b.x, 2147483647i, 0i))), reverseBits(u_input.b.x >> (~0u % 32u)), abs(1i), u_input.b.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(global2.x - 1000f), 1341f, global2.x);
    let var_2 = func_1();
    var var_3 = false;
    let var_4 = _wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(var_0.ww, ~var_0.wz | vec2<i32>(27408i, 26300i))), var_0.yw);
    let var_5 = vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1324f + global2.x));
}

