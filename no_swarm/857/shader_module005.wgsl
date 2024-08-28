struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true));

var<private> global2: Struct_1;

var<private> global3: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> vec4<i32> {
    global0 = arg_0;
    let var_0 = true;
    var var_1 = vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(27800u & u_input.d.x, firstTrailingBit(u_input.b.x), 27482u), u_input.d)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(75061u, abs(u_input.b.x)) | abs(u_input.d.zz & vec2<u32>(4294967295u, 7751u)), u_input.d.xx & abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.d.x, 1u)))) % vec2<u32>(32u));
    var var_2 = 0i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.a + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(342f, global2.a.x))))), (arg_0.b << (vec4<u32>(var_1.x, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_1.x, var_1.x, u_input.b.x)), 4294967295u << (u_input.d.x % 32u), 30509u) % vec4<u32>(32u))) & global2.b);
    return ~select(~global2.b, vec4<i32>(global0.b.x, var_3.b.x | ~(-15990i), var_3.b.x, u_input.a), global1[_wgslsmith_index_u32(u_input.b.x, 12u)]);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> vec4<i32> {
    global1 = array<vec4<bool>, 12>();
    let var_0 = ~21248u;
    global1 = array<vec4<bool>, 12>();
    global1 = array<vec4<bool>, 12>();
    let var_1 = !select(vec4<bool>(any(vec3<bool>(true, true, true)), false, true, _wgslsmith_f_op_f32(floor(1241f)) == _wgslsmith_f_op_f32(arg_1.x * -665f)), global1[_wgslsmith_index_u32(1971u, 12u)], any(vec3<bool>(select(false, false, true), true, all(vec4<bool>(true, false, true, false)))));
    return -global2.b;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_div_f32(-978f, global0.a.x))), _wgslsmith_f_op_f32(sign(-382f))), ~max(~vec4<i32>(-15626i, -29617i, global2.b.x, 63259i), -func_2(Struct_1(vec2<f32>(global2.a.x, 946f), global0.b), global3[_wgslsmith_index_u32(1u, 29u)], global2.b.x)));
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(global0.a.x - -314f), -511f))), global0.a), reverseBits(global2.b) >> (~(~u_input.b) % vec4<u32>(32u)));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, global0.a.x)), -778f), _wgslsmith_f_op_f32(abs(116f))) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global2.a.x)), var_0.a.x, true)), global2.a.x)), -(~select(func_3(Struct_1(global0.a, var_0.b), global2.a, 49875u, 4294967295u), vec4<i32>(var_0.b.x, 64701i, u_input.c, -2147483647i) & vec4<i32>(var_0.b.x, global0.b.x, 1i, u_input.e), !global1[_wgslsmith_index_u32(u_input.b.x, 12u)])));
    return firstTrailingBit(firstLeadingBit(u_input.d.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(21178u), ~u_input.d.x, 88352u, 1u), vec4<u32>(4294967295u, ~u_input.d.x, 1u, u_input.b.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(func_1(), 12u)];
    let var_1 = 305f;
    let var_2 = global2.b.yyw;
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1254f, global0.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-709f, var_1))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-236f, var_1)) + _wgslsmith_f_op_f32(f32(-1f) * -659f)), _wgslsmith_f_op_f32(-var_1))), abs(_wgslsmith_mod_vec4_i32(global0.b, global2.b)));
    var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-811f, 162f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_3.a, var_3.a, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1610f, var_3.a.x) * global0.a), var_0.zy)))), max(vec4<i32>(45571i, 0i, var_2.x, reverseBits(0i)), vec4<i32>(var_2.x, abs(_wgslsmith_mult_i32(2147483647i, 1i)), -8131i, _wgslsmith_add_i32(var_3.b.x << (4294967295u % 32u), firstLeadingBit(global2.b.x)))));
    var var_4 = _wgslsmith_clamp_vec2_i32(global0.b.xw, global2.b.yz, ~_wgslsmith_add_vec2_i32(~vec2<i32>(var_2.x, -7476i), _wgslsmith_mod_vec2_i32(vec2<i32>(-15474i, global0.b.x), vec2<i32>(-1i, 30906i))) & global2.b.xy);
    let var_5 = var_0.x || var_0.x;
    var_4 = -var_2.zz;
    global2 = Struct_1(var_3.a, vec4<i32>(_wgslsmith_mult_i32(var_3.b.x, global2.b.x), 39399i, 1i, u_input.a ^ min(-u_input.a, ~(-37926i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(373f, _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))), global0.a.x), _wgslsmith_f_op_f32(-244f * _wgslsmith_f_op_f32(trunc(global0.a.x)))));
}

