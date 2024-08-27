struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(-1008f, 1955f, 418f, 453f), vec4<f32>(-336f, 1719f, 2029f, -408f), vec4<f32>(-551f, -973f, -1515f, 1000f), vec4<f32>(-1104f, -669f, 243f, -415f), vec4<f32>(-564f, -619f, 1074f, -2201f), vec4<f32>(-178f, -443f, -1613f, -1000f), vec4<f32>(1374f, 1082f, 706f, 1455f), vec4<f32>(-940f, -764f, 100f, 700f), vec4<f32>(249f, -1299f, 444f, 1201f), vec4<f32>(654f, -527f, -1282f, 1287f), vec4<f32>(-1046f, -1259f, 362f, 1230f), vec4<f32>(1765f, -142f, -1000f, 250f), vec4<f32>(1034f, -697f, 457f, 2041f), vec4<f32>(-789f, 293f, 1000f, 1767f), vec4<f32>(639f, -1200f, 924f, 128f), vec4<f32>(-130f, -1996f, -1000f, -711f), vec4<f32>(2935f, 1167f, -387f, 670f), vec4<f32>(751f, 1228f, 1000f, -623f), vec4<f32>(1731f, 1742f, -229f, -1165f), vec4<f32>(-1000f, -423f, 845f, -173f), vec4<f32>(-389f, 555f, -1065f, -1849f));

var<private> global1: array<i32, 27> = array<i32, 27>(1i, 8687i, -48173i, 1i, 1i, 1i, -10249i, 33380i, -19441i, 46042i, -14636i, 0i, 4273i, -30563i, 1i, 19468i, i32(-2147483648), i32(-2147483648), -9213i, 23693i, 1i, -73088i, 1i, 97547i, 4647i, 1i, 7174i);

var<private> global2: array<i32, 29>;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = 43480u;
    global3 = arg_0;
    var_0 = u_input.a;
    let var_1 = ~(-39655i);
    let var_2 = u_input.e;
    return !select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, 27463i <= arg_0.a.x), vec2<bool>(any(vec2<bool>(false, true)), true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(-_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(global3.a, vec3<i32>(arg_0.a.x, 2164i, arg_0.a.x)), ~_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 27u)], arg_0.a.x, 2147483647i), global3.a)));
    var var_1 = ~u_input.e.yx;
    let var_2 = !func_3(var_0);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * 1305f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-900f)))))));
    global2 = array<i32, 29>();
    return Struct_1(reverseBits(select(var_0.a, firstLeadingBit(vec3<i32>(-21708i, 31281i, arg_0.a.x)), !(!vec3<bool>(var_2.x, false, true)))));
}

fn func_1() -> Struct_1 {
    global3 = Struct_1(global3.a);
    let var_0 = u_input.c;
    var var_1 = func_2(Struct_1(abs(global3.a)));
    let var_2 = func_2(Struct_1(vec3<i32>(-global1[_wgslsmith_index_u32(62646u, 27u)], _wgslsmith_sub_i32(var_1.a.x, var_1.a.x), firstTrailingBit(-29114i)) << (_wgslsmith_mult_vec3_u32(reverseBits(u_input.e), max(u_input.e, u_input.e)) % vec3<u32>(32u))));
    let var_3 = Struct_1(~select(_wgslsmith_add_vec3_i32(max(var_2.a, vec3<i32>(30279i, global2[_wgslsmith_index_u32(27827u, 29u)], var_2.a.x)), var_1.a), vec3<i32>(global2[_wgslsmith_index_u32(8648u, 29u)], ~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 0i), global3.a)), vec3<bool>(true, true, true)));
    return Struct_1(vec3<i32>(countOneBits(41030i), global1[_wgslsmith_index_u32(var_0, 27u)] << ((_wgslsmith_add_u32(1u, var_0) >> (u_input.c % 32u)) % 32u), firstLeadingBit(0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    let var_0 = Struct_1(countOneBits(firstTrailingBit(global3.a)));
    global3 = var_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f * 153f))))));
    let var_2 = var_0;
    global3 = Struct_1(min(vec3<i32>(var_0.a.x, 2147483647i, -global3.a.x), max(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.x, global3.a.x, global3.a.x), vec3<i32>(-1i, -1i, global3.a.x), vec3<i32>(16543i, global2[_wgslsmith_index_u32(15210u, 29u)], global3.a.x)), var_0.a << (u_input.e % vec3<u32>(32u)))));
    let var_3 = -223f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(var_2.a.x, var_2.a.x, 1i | var_2.a.x, -1i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) + _wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_1))), _wgslsmith_f_op_f32(523f - var_1), var_1));
}

