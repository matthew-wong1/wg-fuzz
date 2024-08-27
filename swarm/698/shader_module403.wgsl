struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true));

var<private> global1: bool;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(true), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(true), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(false), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(false), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(true), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(false), vec4<bool>(false, false, false, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: f32) -> i32 {
    let var_0 = -1i >= select(~(i32(-1i) * -4998i), _wgslsmith_sub_i32(firstTrailingBit(1i), 1i), global2.x);
    global2 = vec3<bool>(var_0, any(vec4<bool>(!global2.x & true, all(vec4<bool>(global2.x, true, false, global2.x)), var_0, global2.x)), true);
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    global1 = all(global0[_wgslsmith_index_u32(u_input.a, 12u)]);
    return -2147483647i;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(~(~abs(~(~30237u))), 6u)];
    let var_1 = firstTrailingBit(0i);
    global2 = var_0.b.yyz;
    global1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-970f, 1218f, 330f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -352f), _wgslsmith_f_op_f32(-187f * -130f), _wgslsmith_f_op_f32(trunc(1578f))))))));
    return any(!vec2<bool>(all(global0[_wgslsmith_index_u32(reverseBits(u_input.a), 12u)]), true));
}

fn func_4(arg_0: Struct_2) -> i32 {
    global1 = all(vec2<bool>(true, true));
    var var_0 = arg_0.a;
    var var_1 = Struct_1(!all(vec4<bool>(var_0.a, false, var_0.a, arg_0.b.x)) || (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1015f * -533f), _wgslsmith_f_op_f32(floor(-178f)))) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = vec4<u32>(115156u, ~_wgslsmith_clamp_u32(u_input.a, abs(~u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(u_input.a, u_input.a)))), 42386u, ~1u);
    global2 = select(arg_0.b.xxw, vec3<bool>(var_1.a, var_0.a, var_2.x > var_2.x), all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, ~var_2.x, var_2.x << (43927u % 32u)), vec3<u32>(23628u << (var_2.x % 32u), ~1u, var_2.x)), 12u)]));
    return 0i;
}

fn func_1() -> vec4<f32> {
    let var_0 = global3[_wgslsmith_index_u32(~firstLeadingBit(countOneBits(_wgslsmith_add_u32(u_input.a, 41424u))), 6u)];
    let var_1 = 4414i;
    var var_2 = Struct_2(var_0.a, global0[_wgslsmith_index_u32(0u, 12u)]);
    let var_3 = vec3<i32>(-12642i, var_1, ((-var_1 ^ func_2(-1165f, 745f)) & var_1) ^ 23676i);
    var var_4 = func_4(global3[_wgslsmith_index_u32(~select(~u_input.a, ~1u, !func_3(vec2<bool>(global2.x, var_0.b.x), var_0.b.xw, var_2.a)), 6u)]);
    return vec4<f32>(-387f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(782f - 823f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(234f)))))), _wgslsmith_f_op_f32(floor(1096f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1()))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) + vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(339f, -609f, global2.x))), 1000f, -662f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-830f + 1257f) - _wgslsmith_f_op_f32(-1137f + -765f))))));
    global0 = array<vec4<bool>, 12>();
    let var_1 = Struct_2(Struct_1(global2.x), select(!(!vec4<bool>(false, global2.x, global2.x, true)), !vec4<bool>(select(global2.x, global2.x, true), global2.x, global2.x, u_input.a <= 3890u), vec4<bool>(func_3(global2.yx, select(vec2<bool>(true, global2.x), vec2<bool>(false, true), false), Struct_1(global2.x)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(global2.x, false))), !any(global2.xz), !(global2.x | true))));
    global2 = select(!(!(!(!vec3<bool>(false, false, var_1.b.x)))), !select(var_1.b.zxw, select(!var_1.b.xxz, var_1.b.zww, var_1.b.zyy), false), true);
    let var_2 = vec2<u32>(28006u, _wgslsmith_mult_u32(abs(4294967295u), ~reverseBits(min(101176u, u_input.a))));
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(min(max(vec2<i32>(-4382i, 2147483647i), vec2<i32>(-21633i, 10012i)) << (min(vec2<u32>(u_input.a, u_input.a), var_2) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(1i, 0i)), vec2<i32>(-21956i, -9227i))), ~(_wgslsmith_add_vec2_i32(vec2<i32>(12824i, -8143i), vec2<i32>(-43102i, 5381i)) << (vec2<u32>(47783u, u_input.a) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zz + _wgslsmith_f_op_vec2_f32(var_0.xz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1274f, 1200f))))), ~vec4<i32>(_wgslsmith_sub_i32(abs(-36378i), abs(0i)), -(~19892i), ~18995i, 36858i), -1178f);
}

