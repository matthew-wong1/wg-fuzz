struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1u, vec3<bool>(false, true, false)), Struct_1(68627u, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec3<bool>(true, true, false)), Struct_1(97156u, vec3<bool>(false, false, true)), Struct_1(5574u, vec3<bool>(false, true, false)), Struct_1(4294967295u, vec3<bool>(true, true, false)), Struct_1(16585u, vec3<bool>(false, true, false)), Struct_1(31112u, vec3<bool>(false, true, false)), Struct_1(4294967295u, vec3<bool>(false, false, false)), Struct_1(4294967295u, vec3<bool>(true, false, false)), Struct_1(4294967295u, vec3<bool>(false, true, false)), Struct_1(28474u, vec3<bool>(false, false, false)), Struct_1(53247u, vec3<bool>(false, true, false)), Struct_1(4294967295u, vec3<bool>(true, true, true)), Struct_1(0u, vec3<bool>(true, false, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1144f) - 1f))));
    global0 = array<Struct_1, 16>();
    var var_1 = !(!select(vec4<bool>(true, true, true == arg_0.b.x, !arg_0.b.x), !select(vec4<bool>(arg_0.b.x, true, true, false), vec4<bool>(arg_0.b.x, true, false, arg_0.b.x), arg_0.b.x), arg_0.b.x));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(912f * 982f), _wgslsmith_f_op_f32(min(808f, 1144f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1312f)), 1f)))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = array<Struct_1, 16>();
    var var_0 = Struct_2(vec3<i32>(select(2147483647i, -1i, false), 31796i >> (1u % 32u), -17456i), vec2<f32>(arg_0, 260f), _wgslsmith_f_op_f32(func_3(Struct_1(select(u_input.b, 0u, false) >> (u_input.a % 32u), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))))), Struct_1(u_input.b, !vec3<bool>(true, all(vec2<bool>(false, false)), true)));
    var var_1 = vec4<f32>(var_0.b.x, -893f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1046f))));
    return Struct_2(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.a, var_0.a), abs(-8099i), var_0.a.x), abs(firstTrailingBit(var_0.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-730f, _wgslsmith_f_op_f32(select(-1561f, var_1.x, false)))))), _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-797f)))) * var_0.c)), Struct_1(var_0.d.a, select(vec3<bool>(true, true, true), var_0.d.b, vec3<bool>(all(vec3<bool>(var_0.d.b.x, var_0.d.b.x, var_0.d.b.x)), 4294967295u > u_input.b, false))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1540f - -296f))));
    global0 = array<Struct_1, 16>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, arg_2.b.x)) - var_0.b);
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(~arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -var_0.a.x, arg_2.a.x), func_2(_wgslsmith_f_op_f32(var_1.x - 210f)).a), select(64532i, _wgslsmith_mult_i32(1i, abs(-1i)), arg_1.b.x)), arg_2.a);
    global0 = array<Struct_1, 16>();
    return arg_3.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b, select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), func_1(-1i, global0[_wgslsmith_index_u32(u_input.b, 16u)], Struct_2(vec3<i32>(0i, 2147483647i, 16520i), vec2<f32>(-280f, 158f), -1000f, Struct_1(0u, vec3<bool>(false, true, false))), Struct_2(vec3<i32>(0i, 7842i, 0i), vec2<f32>(-1060f, -360f), -2068f, global0[_wgslsmith_index_u32(u_input.b, 16u)]))), vec3<bool>(func_2(-356f).d.b.x, true, true), vec3<bool>(all(vec3<bool>(false, true, true)), func_1(1133i, Struct_1(4294967295u, vec3<bool>(false, false, true)), Struct_2(vec3<i32>(-14750i, 24015i, -2147483647i), vec2<f32>(1000f, -429f), -1132f, Struct_1(78014u, vec3<bool>(true, false, false))), Struct_2(vec3<i32>(-51756i, -41053i, -3150i), vec2<f32>(727f, -257f), -309f, Struct_1(93199u, vec3<bool>(false, false, false)))).x, func_2(282f).d.b.x)), vec3<bool>(false, func_1(2147483647i, Struct_1(u_input.a, vec3<bool>(false, false, true)), func_2(428f), func_2(-1319f)).x, func_2(_wgslsmith_f_op_f32(-706f * 2168f)).d.b.x), select(!func_1(-2147483647i, Struct_1(1u, vec3<bool>(false, false, false)), Struct_2(vec3<i32>(48761i, -51108i, 2147483647i), vec2<f32>(1000f, 212f), -296f, Struct_1(15241u, vec3<bool>(false, true, false))), Struct_2(vec3<i32>(2147483647i, 5799i, 11125i), vec2<f32>(-408f, 187f), 1798f, Struct_1(u_input.b, vec3<bool>(false, true, true)))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), all(vec3<bool>(true, true, true)))));
    var_0 = global0[_wgslsmith_index_u32(2655u, 16u)];
    var_0 = Struct_1(~1u, var_0.b);
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((~vec3<u32>(0u, var_0.a, var_0.a) << (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, 799u, 62636u), vec3<u32>(var_0.a, 13737u, 34567u)), vec3<u32>(6753u, u_input.b, 4294967295u) >> (vec3<u32>(u_input.a, 1u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))) & vec3<u32>(min(reverseBits(35980u), _wgslsmith_add_u32(4294967295u, var_0.a)), min(~var_0.a, 68341u >> (u_input.a % 32u)), min(u_input.b ^ 0u, u_input.a & var_0.a)), ~(~(~vec3<u32>(15250u, var_0.a, 1u)))), 16u)];
    var var_1 = ~vec2<i32>(_wgslsmith_sub_i32(-1i, countOneBits(-42036i)) >> (u_input.a % 32u), ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-967f))))));
}

