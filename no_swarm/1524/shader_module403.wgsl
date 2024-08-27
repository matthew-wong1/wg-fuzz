struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_1 = Struct_1(2147483647i, 57706u);

var<private> global3: vec2<u32>;

var<private> global4: Struct_1 = Struct_1(18005i, 1u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: bool) -> u32 {
    var var_0 = !vec3<bool>(false, false, arg_3);
    global4 = arg_0;
    return ~arg_0.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global2.b;
    global1 = vec4<u32>(global4.b, arg_0.x, func_3(Struct_1(~(~arg_2), 1u), _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.a.yw), arg_2 << (_wgslsmith_dot_vec3_u32(global1.ywx, global1.xxx) % 32u)), firstLeadingBit(-1i) <= u_input.a.x, true), ~17172u);
    global0 = array<Struct_1, 26>();
    let var_1 = Struct_1(_wgslsmith_div_i32(-1i, ~(-u_input.a.x)), _wgslsmith_add_u32(firstTrailingBit(~(~global4.b)), ~(~0u)));
    global0 = array<Struct_1, 26>();
    return Struct_1(1i, 36006u);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = vec3<u32>(~4294967295u, firstTrailingBit(~0u), 1u);
    global4 = func_2(var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-212f, 1000f), _wgslsmith_f_op_f32(max(-1000f, -719f)), all(vec2<bool>(true, false)))))))), 22870i, global0[_wgslsmith_index_u32(global3.x, 26u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-339f, -1269f, -511f))) + vec3<f32>(-299f, 1358f, -1130f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(524f, 1000f, 1015f)), vec3<f32>(-825f, -510f, 123f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(565f, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(700f + var_1.x)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -306f, -1000f), vec3<f32>(-673f, var_1.x, -1337f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-899f, 716f, 450f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -571f, -693f)))))))));
    let var_3 = vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(996f, _wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + 2103f), -216f) + _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(floor(-1000f))))), var_1.x);
    return global2.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = vec3<u32>(arg_0.b, 0u, _wgslsmith_div_u32(global4.b, countOneBits(arg_2.b)));
    let var_1 = abs(abs(~global1.x));
    global2 = arg_2;
    var var_2 = ~(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, ~global4.b), reverseBits(vec3<u32>(global4.b, 4294967295u, global1.x))) & vec3<u32>(39095u, 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_1, vec4<u32>(global2.b, global3.x, 7040u, global3.x)), ~arg_1)));
    let var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2349i, -82323i, -11069i), vec3<i32>(86449i, u_input.a.x, global4.a)) | abs(global2.a), 37826i, -1i, 1i), u_input.a >> (arg_1 % vec4<u32>(32u))), vec4<i32>(u_input.a.x, func_4(-u_input.a.xwy, Struct_1(16671i, global2.b), func_2(arg_1.xwx, -508f, global4.a, Struct_1(u_input.a.x, 22351u))), -78766i, -31123i << (1u % 32u)) & _wgslsmith_mult_vec4_i32((u_input.a | vec4<i32>(1i, arg_2.a, -36652i, global2.a)) & ~u_input.a, abs(select(u_input.a, u_input.a, false))));
    return _wgslsmith_mult_i32(arg_2.a, -24035i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    global1 = ~countOneBits(vec4<u32>(46547u, global2.b, ~firstTrailingBit(global1.x), ~(~20603u)));
    global4 = Struct_1(global2.a, ~(~global4.b));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-vec4<i32>(func_1(global0[_wgslsmith_index_u32(global3.x, 26u)], vec4<u32>(global1.x, 82266u, 4294967295u, global2.b), Struct_1(1i, 1u)), ~0i, _wgslsmith_mult_i32(global2.a, -54166i), 0i)));
}

