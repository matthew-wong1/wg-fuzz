struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -489f;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<i32>(-22979i, 598i, 43314i, 2147483647i), 1i, vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(12874i, -84883i, -1i, -9429i), 0i, vec2<bool>(false, true), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-65348i, -1i, 4390i, -10656i), 78986i, vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(2147483647i, -1i, 0i, -13364i), -9178i, vec2<bool>(true, false), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(20807i, i32(-2147483648), 8170i, 123423i), 1i, vec2<bool>(false, true), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-1i, -9064i, 0i, -37016i), -18786i, vec2<bool>(true, false), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(4242i, i32(-2147483648), i32(-2147483648), 0i), 25633i, vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(8588i, -1i, -19865i, 62731i), -600i, vec2<bool>(false, true), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(1i, 1i, -4561i, -1i), -45937i, vec2<bool>(false, false), vec3<bool>(true, false, true)));

var<private> global2: vec2<u32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    global1 = array<Struct_1, 9>();
    global0 = 944f;
    let var_0 = vec2<i32>(abs(2147483647i), firstTrailingBit(21470i));
    var var_1 = global1[_wgslsmith_index_u32(8661u, 9u)];
    let var_2 = 27181i;
    return firstTrailingBit(-vec4<i32>(45112i, ~(-var_1.b), -101588i, ~(-1i ^ u_input.a.x)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> i32 {
    let var_0 = ~global2.x;
    global0 = -2580f;
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 9u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1000f, arg_0.x)))))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(abs(global2.x) >> (~4294967295u % 32u), ~firstLeadingBit(var_0), (global2.x | var_0) << (~var_0 % 32u)), ~(~vec3<u32>(var_0, 1u, _wgslsmith_mod_u32(var_0, 0u)))), 9u)];
    return -2147483647i;
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = Struct_1(func_2(global1[_wgslsmith_index_u32(~(global2.x | 0u), 9u)], ~u_input.a.x), func_3(vec2<f32>(-101f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(845f - 1518f), _wgslsmith_div_f32(-238f, 162f))), u_input.a.x), vec2<bool>(!all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), ~u_input.a.x >= min(0i, u_input.a.x)), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))), vec3<bool>(true, false, 1i != -arg_0)));
    global2 = vec2<u32>(4294967295u, global2.x);
    global2 = ~_wgslsmith_sub_vec2_u32(countOneBits(~vec2<u32>(40448u, global2.x)) << (vec2<u32>(global2.x, 1u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(global2.x), _wgslsmith_clamp_u32(77090u, 93528u, 411u)), reverseBits(vec2<u32>(global2.x, global2.x)) ^ abs(vec2<u32>(1u, 4294967295u))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2806f)));
    var var_1 = select(any(vec3<bool>(-487f != _wgslsmith_f_op_f32(select(-471f, 2112f, var_0.d.x)), (u_input.a.x >> (global2.x % 32u)) == 2411i, true)), true, true);
    return abs(abs(_wgslsmith_sub_i32(arg_0, arg_0)));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> u32 {
    let var_0 = Struct_1((abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, arg_1, arg_1, 26211i), vec4<i32>(-21661i, u_input.a.x, 0i, u_input.a.x))) & vec4<i32>(0i, _wgslsmith_mult_i32(1i, -1i), u_input.a.x | -54862i, -64893i)) | u_input.a, arg_1, vec2<bool>(true, true), vec3<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, false))), true, 52311u >= ~global2.x));
    let var_1 = arg_0.x;
    global0 = 286f;
    let var_2 = var_0;
    global0 = 1000f;
    return 9937u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(global2.x << (abs(~0u) % 32u), func_4(vec3<f32>(_wgslsmith_div_f32(1000f, -178f), -1041f, _wgslsmith_f_op_f32(f32(-1f) * -1718f)), func_1(52692i)));
    let var_1 = _wgslsmith_sub_vec4_i32(max(-(~vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a >> (min(vec4<u32>(42757u, 105084u, global2.x, 3953u), abs(vec4<u32>(global2.x, 4294967295u, 11455u, 0u))) % vec4<u32>(32u))), u_input.a);
    global0 = 1f;
    global1 = array<Struct_1, 9>();
    var var_2 = global2.x;
    let var_3 = all(vec2<bool>(true, false));
    let var_4 = !vec2<bool>(true, select(var_3, !var_3, var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(max(~select(u_input.a.x, 50590i, false), ~0i), -_wgslsmith_sub_i32(u_input.a.x >> (global2.x % 32u), var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f - _wgslsmith_f_op_f32(step(693f, -328f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-382f - 2153f) - _wgslsmith_f_op_f32(abs(-733f)))), all(select(vec4<bool>(var_4.x, var_3, var_3, false), vec4<bool>(false, var_3, var_3, var_3), select(vec4<bool>(var_4.x, true, true, true), vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), vec4<bool>(false, var_3, var_4.x, var_3)))))));
}

