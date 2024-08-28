struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(-53471i, 77600i, 1i, i32(-2147483648)), vec4<i32>(33057i, 20887i, -1i, -1i), vec4<i32>(-1215i, -1i, 11839i, 2147483647i), vec4<i32>(2147483647i, 26603i, 6782i, 16271i), vec4<i32>(45643i, 21826i, 0i, -25253i), vec4<i32>(69927i, -29682i, 0i, 6449i), vec4<i32>(-1i, 1i, -1i, i32(-2147483648)), vec4<i32>(-1i, 1i, -11827i, i32(-2147483648)), vec4<i32>(-2500i, -1i, -1i, 2147483647i), vec4<i32>(-1i, -16896i, 2147483647i, 30765i), vec4<i32>(-54199i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, -1i, 1i, 18192i), vec4<i32>(0i, 33367i, -4578i, -5959i), vec4<i32>(i32(-2147483648), 1i, 17706i, -42766i), vec4<i32>(0i, -35779i, 3566i, 14645i), vec4<i32>(i32(-2147483648), 44180i, 1i, 4536i), vec4<i32>(2147483647i, 0i, 1i, 2147483647i), vec4<i32>(-1i, -33922i, 1i, -1i), vec4<i32>(24253i, 33737i, 0i, 26805i));

var<private> global1: array<vec4<f32>, 8>;

var<private> global2: array<vec2<bool>, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> i32 {
    global1 = array<vec4<f32>, 8>();
    var var_0 = arg_3.a.a;
    global0 = array<vec4<i32>, 19>();
    let var_1 = -51225i >> ((arg_1.a << (reverseBits(86923u) % 32u)) % 32u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1155f - arg_1.e.x)), _wgslsmith_f_op_f32(-1f))) - -182f));
    return arg_3.a.c;
}

fn func_2() -> vec3<i32> {
    var var_0 = 2147483647i;
    let var_1 = true;
    let var_2 = Struct_4(Struct_2(1u, Struct_1(false, var_1), u_input.b, Struct_1(false, var_1 || true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -555f), -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(global1[_wgslsmith_index_u32(select(1u, 33945u, true), 8u)])), global1[_wgslsmith_index_u32(~(~0u), 8u)]))), Struct_2(~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(0u, 0u)), Struct_1(any(vec3<bool>(true, true, true)), -2147483647i > func_3(Struct_3(Struct_2(1u, Struct_1(false, false), -18865i, Struct_1(var_1, var_1), vec2<f32>(-323f, 666f)), Struct_1(var_1, false), 2230f, -18313i), Struct_2(4294967295u, Struct_1(var_1, var_1), -20776i, Struct_1(var_1, true), vec2<f32>(100f, -850f)), u_input.b, Struct_3(Struct_2(4294967295u, Struct_1(var_1, false), u_input.b, Struct_1(var_1, false), vec2<f32>(1476f, 1048f)), Struct_1(false, var_1), 233f, u_input.a))), -111022i, Struct_1(any(vec3<bool>(var_1, var_1, var_1)), true), vec2<f32>(107f, _wgslsmith_div_f32(1150f, _wgslsmith_f_op_f32(1000f + 562f)))));
    global2 = array<vec2<bool>, 18>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2090f, -1597f))), _wgslsmith_f_op_vec2_f32(-var_2.b.wz))))) * _wgslsmith_f_op_vec2_f32(exp2(var_2.a.e))));
    return vec3<i32>(u_input.a, 1i, var_2.c.c);
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = ~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(func_2(), vec3<i32>(-1i, -2147483647i, -65793i), vec3<i32>(u_input.a, 13845i, u_input.a)), vec3<i32>(u_input.b & 2147483647i, u_input.c, -1i)) | vec3<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.c, -1i, 1i) & vec3<i32>(9903i, -1i, -6231i)), -vec3<i32>(u_input.c, 1i, -2147483647i)), 1i, u_input.c);
    var var_1 = reverseBits(-_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(0u, 19u)], vec4<i32>(var_0.x, firstTrailingBit(u_input.b), i32(-1i) * -16084i, i32(-1i) * -1i), global0[_wgslsmith_index_u32(min(64357u, 25894u), 19u)] >> (countOneBits(vec4<u32>(0u, 16206u, 1u, 4294967295u)) % vec4<u32>(32u))));
    global2 = array<vec2<bool>, 18>();
    global0 = array<vec4<i32>, 19>();
    global2 = array<vec2<bool>, 18>();
    return -20093i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1014f)), 455f), vec3<i32>(_wgslsmith_clamp_i32(~u_input.a << (~26053u % 32u), u_input.c, u_input.c), func_1(Struct_1(true, true)), -35031i), vec3<u32>(min(~abs(0u), reverseBits(min(16463u, 44059u))), _wgslsmith_sub_u32(abs(0u), 0u), 1u), ~((_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.b, 1i, u_input.b), global0[_wgslsmith_index_u32(66621u, 19u)]) << (vec4<u32>(1209u, 11625u, 0u, 3342u) % vec4<u32>(32u))) | vec4<i32>(u_input.c, _wgslsmith_mult_i32(22998i, u_input.c), func_1(Struct_1(true, true)), u_input.c)), 1u);
}

