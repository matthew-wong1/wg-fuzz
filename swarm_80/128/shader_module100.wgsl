struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(53428i, -6731i, -83589i), vec3<i32>(23765i, -26802i, 2147483647i), vec3<i32>(46310i, -13394i, -15525i), vec3<i32>(2147483647i, 33225i, 1i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(2147483647i, -1i, 36237i), vec3<i32>(44731i, -1i, 2147483647i), vec3<i32>(2147483647i, 11608i, 2147483647i), vec3<i32>(-66760i, 1i, -1i));

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<bool>(false, true), -192f, 369f), Struct_1(vec2<bool>(true, false), -1065f, -615f), Struct_1(vec2<bool>(false, true), -522f, -405f), Struct_1(vec2<bool>(true, true), 1544f, 1667f), Struct_1(vec2<bool>(true, true), 288f, 1554f), Struct_1(vec2<bool>(false, false), -323f, 423f), Struct_1(vec2<bool>(false, false), 507f, 1074f), Struct_1(vec2<bool>(true, false), -905f, 925f), Struct_1(vec2<bool>(false, true), 517f, 1000f), Struct_1(vec2<bool>(true, true), -1982f, -256f), Struct_1(vec2<bool>(false, true), -471f, -431f), Struct_1(vec2<bool>(true, true), -347f, 231f));

var<private> global3: u32;

var<private> global4: Struct_4 = Struct_4(Struct_1(vec2<bool>(true, true), 670f, -1030f), Struct_1(vec2<bool>(true, true), -1000f, -1004f), vec3<f32>(1245f, -1000f, -358f), Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(1703f, -821f), vec2<u32>(1u, 0u), 175f, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    global0 = arg_1.a.x == true;
    global3 = ~0u;
    return -(1i << (global4.d.e % 32u));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: f32) -> i32 {
    let var_0 = Struct_3(!global4.d.a.ywz, _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(43671i, u_input.b.x, 0i), -vec3<i32>(u_input.a.x, u_input.a.x, 0i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, u_input.a.x, 6717i), select(global1[_wgslsmith_index_u32(1u, 9u)], vec3<i32>(u_input.a.x, u_input.a.x, 1i), global4.d.a.zzz))) | vec3<i32>(-2147483647i, u_input.a.x, -27607i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.d.b.x * 1437f), arg_2))));
    var var_2 = min(_wgslsmith_mult_vec2_u32(global4.d.c, global4.d.c), max(vec2<u32>(16664u, 0u), ~vec2<u32>(~54055u, abs(global4.d.e))));
    var var_3 = Struct_3(vec3<bool>(true, _wgslsmith_f_op_f32(exp2(arg_0.x)) != 1587f, global4.a.a.x), vec3<i32>(u_input.b.x, func_2(global4.a.a.x, global4.a) & ~countOneBits(u_input.b.x), min(var_0.b.x, -20946i)));
    var var_4 = ~firstTrailingBit(~(~vec4<u32>(global4.d.e, global4.d.c.x, global4.d.e, 4294967295u))) << (vec4<u32>(firstLeadingBit(~var_2.x), _wgslsmith_mult_u32(1u | var_2.x, var_2.x), ~10511u | global4.d.e, var_2.x) % vec4<u32>(32u));
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(abs(vec4<i32>(u_input.b.x, ~(-1i), -26906i, i32(-1i) * -14513i))), _wgslsmith_sub_vec4_i32(vec4<i32>(-29922i, select(u_input.b.x, -var_3.b.x, true), -3513i, 12511i & min(u_input.a.x, 14009i)), vec4<i32>(u_input.a.x >> (max(var_2.x, var_4.x) % 32u), 23773i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_3.b, global1[_wgslsmith_index_u32(4294967295u, 9u)]), -2147483647i), i32(-1i) * -42495i)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = !(func_2(true, global2[_wgslsmith_index_u32(firstTrailingBit(global4.d.c.x), 12u)]) >= _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(u_input.b.x, 2147483647i))) && (global4.d.c.x < ~_wgslsmith_sub_u32(4294967295u, 8958u));
    let var_1 = -(_wgslsmith_mod_i32(0i, -9779i) & func_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global4.c + global4.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.c, -279f, 698f)))), 2251f, 1106f));
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_1, u_input.b.x), ~(-2147483647i)), min(-vec2<i32>(_wgslsmith_div_i32(2147483647i, 24799i), var_1 >> (global4.d.e % 32u)), u_input.b.yz));
    let var_3 = Struct_3(global4.d.a.xwx, ~global1[_wgslsmith_index_u32(~abs(abs(47023u)), 9u)]);
    var var_4 = vec4<u32>(0u, 0u, global4.d.c.x, 1202u);
    return global2[_wgslsmith_index_u32(global4.d.c.x, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global4 = Struct_4(func_1(vec3<bool>(false, any(global4.d.a), -778f != global4.d.b.x)), func_1(!(!global4.d.a.ywz)), vec3<f32>(484f, 955f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global4.d.b.x))), global4.d);
    let var_0 = !vec2<bool>(false, any(global4.d.a.xw));
    let var_1 = global4.c.yx;
    var var_2 = i32(-1i) * -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, 273f))))), global4.d.b)), min(~abs(global4.d.e), 30028u), _wgslsmith_mod_vec2_u32(vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(4294967295u, global4.d.c.x)), 1u), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(global4.d.c, max(vec2<u32>(4294967295u, global4.d.c.x), global4.d.c)), vec2<u32>(0u, global4.d.e))), 0u);
}

