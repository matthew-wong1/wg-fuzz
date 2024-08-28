struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-958f, 119f));

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-438f));

var<private> global2: vec3<f32> = vec3<f32>(-383f, -257f, -1142f);

var<private> global3: i32;

var<private> global4: vec4<i32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_5, arg_3: Struct_2) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(29757u, 1u)];
    return select(arg_3.a.x == global0.a.x, ~arg_2.a.a > _wgslsmith_clamp_u32(33507u, 33034u, ~(~1u)), arg_1);
}

fn func_2() -> vec3<i32> {
    global0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global2.yx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, 1280f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.zy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global0.a.x))) - _wgslsmith_f_op_vec2_f32(-global0.a))));
    let var_0 = Struct_3(48252u, global4.x);
    var var_1 = vec3<bool>(any(vec3<bool>(func_3(_wgslsmith_clamp_u32(var_0.a, 45984u, u_input.a.x), 51894i > u_input.b.x, Struct_5(Struct_3(u_input.a.x, u_input.d.x), -2147483647i, var_0, Struct_4(vec4<i32>(-5382i, u_input.b.x, u_input.e.x, -2147483647i))), Struct_2(vec2<f32>(global2.x, global0.a.x))), any(vec3<bool>(true, true, true)), !any(vec2<bool>(true, false)))), true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false))) & true);
    return _wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x & -68582i, abs(var_0.b), u_input.c), -vec3<i32>(1i, global4.x, global4.x) << (reverseBits(u_input.a.xyw) % vec3<u32>(32u))), ~(~(vec3<i32>(global4.x, -77983i, 11892i) ^ min(u_input.e, vec3<i32>(1i, 37954i, -2147483647i)))));
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_3(~u_input.a.x, global4.x);
    var var_1 = func_2();
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(170f, 1025f, global2.x, 949f))), vec4<f32>(global0.a.x, global0.a.x, global2.x, -185f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, -1046f, global0.a.x, 1185f), vec4<f32>(-284f, 967f, 133f, -202f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, 819f, global0.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global2.x, global2.x, 944f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, global0.a.x, -359f, -524f), vec4<f32>(global2.x, 868f, 387f, 1000f), vec4<bool>(true, true, true, true)))))));
    var var_3 = Struct_5(Struct_3(abs(abs(_wgslsmith_add_u32(u_input.a.x, 8375u))), ~abs(max(u_input.e.x, 38195i))), -34947i, Struct_3(1316u, i32(-1i) * -u_input.c), Struct_4(~_wgslsmith_mod_vec4_i32(vec4<i32>(-49399i, -6798i, 47608i, var_1.x), vec4<i32>(u_input.c, -1i, global4.x, u_input.b.x))));
    let var_4 = -var_3.d.a;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(firstTrailingBit(func_1()) << (u_input.a % vec4<u32>(32u)));
    var_0 = abs(u_input.a);
    global1 = array<Struct_1, 1>();
    var var_1 = true;
    var var_2 = true;
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(443f, global0.a.x, global0.a.x))))) + vec3<f32>(-1368f, 788f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(global2.x * global2.x)) * _wgslsmith_div_f32(-518f, _wgslsmith_f_op_f32(global0.a.x * -2360f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(64128i, -(~u_input.b.x), global4.x), vec2<i32>(~(_wgslsmith_sub_i32(global4.x, u_input.c) | u_input.c), reverseBits(select(-2147483647i, global4.x, false)) ^ _wgslsmith_sub_i32(~22136i, u_input.d.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, ~firstLeadingBit(4294967295u), u_input.a.x), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(min(1i, u_input.e.x), 2147483647i, ~(-54702i))), ~min(vec3<i32>(u_input.c, u_input.d.x, 2147483647i) << (var_0.www % vec3<u32>(32u)), u_input.e >> (var_0.wxx % vec3<u32>(32u)))), 13822i);
}

