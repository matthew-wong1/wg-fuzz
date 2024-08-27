struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, 1666f);

var<private> global1: array<vec4<f32>, 14>;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec4<u32>(1403u, 15348u, 23675u, 1u)), Struct_1(vec4<u32>(23611u, 4294967295u, 1u, 36360u))), Struct_2(Struct_1(vec4<u32>(1u, 20642u, 15182u, 32802u)), Struct_1(vec4<u32>(1u, 26718u, 5364u, 15882u))), Struct_2(Struct_1(vec4<u32>(43820u, 6637u, 28878u, 25471u)), Struct_1(vec4<u32>(1u, 1u, 8519u, 1u))), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 0u, 0u)), Struct_1(vec4<u32>(17473u, 1u, 4294967295u, 35459u))), Struct_2(Struct_1(vec4<u32>(0u, 15745u, 0u, 143u)), Struct_1(vec4<u32>(4294967295u, 57918u, 60459u, 1u))), Struct_2(Struct_1(vec4<u32>(9287u, 4294967295u, 4294967295u, 45423u)), Struct_1(vec4<u32>(26567u, 1u, 1u, 75827u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 69932u, 95445u, 31872u)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 22473u))), Struct_2(Struct_1(vec4<u32>(10871u, 91321u, 1u, 0u)), Struct_1(vec4<u32>(1u, 81191u, 63668u, 37198u))), Struct_2(Struct_1(vec4<u32>(1u, 44482u, 78129u, 16982u)), Struct_1(vec4<u32>(24735u, 1u, 17563u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(14390u, 84156u, 58087u, 0u)), Struct_1(vec4<u32>(75708u, 4294967295u, 4294967295u, 34656u))));

var<private> global3: f32;

var<private> global4: array<Struct_2, 2>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = -_wgslsmith_sub_vec3_i32(-(~abs(vec3<i32>(arg_2, u_input.c, arg_2))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_0, 2388i, 39865i), vec3<i32>(max(2147483647i, arg_2), ~(-1i), -arg_2)));
    global1 = array<vec4<f32>, 14>();
    let var_1 = global4[_wgslsmith_index_u32(arg_3.b.a.x, 2u)];
    global0 = _wgslsmith_div_vec2_f32(arg_1.xz, _wgslsmith_f_op_vec2_f32(-arg_1.yz));
    global0 = arg_1.yx;
    return _wgslsmith_mult_u32(~firstTrailingBit(_wgslsmith_clamp_u32(abs(4294967295u), reverseBits(u_input.e.x), u_input.d.x)), ~(~min(_wgslsmith_mod_u32(var_1.a.a.x, u_input.e.x), u_input.e.x >> (9876u % 32u))));
}

fn func_3() -> f32 {
    global1 = array<vec4<f32>, 14>();
    global4 = array<Struct_2, 2>();
    var var_0 = -23966i;
    var_0 = countOneBits(u_input.c);
    global4 = array<Struct_2, 2>();
    return _wgslsmith_f_op_f32(floor(global0.x));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<bool> {
    global2 = array<Struct_2, 10>();
    let var_0 = arg_2.a.x;
    global2 = array<Struct_2, 10>();
    let var_1 = vec2<i32>(abs(-arg_1.x), -3953i);
    var var_2 = ~(~_wgslsmith_mod_u32(~abs(var_0), _wgslsmith_dot_vec4_u32(~arg_2.a, _wgslsmith_sub_vec4_u32(vec4<u32>(var_0, var_0, 48194u, 4294967295u), u_input.d))));
    return vec2<bool>(all(vec4<bool>(true, arg_3.x, select(any(vec3<bool>(arg_3.x, true, true)), true, false), arg_3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(102f, global0.x)))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(((-76790i << (func_1(-1i, vec3<f32>(-484f, global0.x, global0.x), -4818i, Struct_2(Struct_1(vec4<u32>(u_input.e.x, 4294967295u, 0u, 4294967295u)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, u_input.d.x)))) % 32u)) & 35580i) >> (~u_input.d.x % 32u), u_input.c);
    let var_1 = select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(func_2(u_input.e.x | u_input.e.x, vec2<i32>(reverseBits(-7646i), select(var_0, 42536i, true)), Struct_1(vec4<u32>(u_input.d.x, u_input.e.x, u_input.e.x, 47592u)), vec2<bool>(-23198i <= u_input.a, any(vec3<bool>(false, false, false)))), vec2<bool>(true, true), !vec2<bool>(0i == var_0, true)), vec2<bool>(true, all(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))));
    let var_2 = Struct_2(Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.d.x, 31u, 0u), min(vec4<u32>(u_input.d.x, 4294967295u, 35625u, u_input.d.x), vec4<u32>(57569u, 0u, u_input.e.x, 45955u)), min(u_input.d, vec4<u32>(u_input.e.x, u_input.d.x, 29134u, u_input.d.x)))), Struct_1(u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(max(abs(vec3<u32>(11414u, 8947u, u_input.e.x)), ~u_input.e.yxy))), vec2<i32>(var_0, 49143i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1451f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 801f) - vec2<f32>(global0.x, -1825f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1817f, global0.x)), true))))));
}

