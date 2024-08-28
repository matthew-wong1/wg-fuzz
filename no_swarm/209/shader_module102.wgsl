struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(770f, -611f, 297f), vec3<f32>(-1592f, -445f, -1005f), vec3<f32>(-929f, 1049f, 1232f), vec3<f32>(-980f, -1994f, 2108f), vec3<f32>(114f, 903f, -1875f), vec3<f32>(782f, -1528f, 422f), vec3<f32>(412f, 309f, -286f), vec3<f32>(-2342f, 1594f, -321f), vec3<f32>(261f, 824f, -216f), vec3<f32>(-469f, -554f, 130f), vec3<f32>(2667f, -206f, 1000f), vec3<f32>(-1148f, -1337f, -322f), vec3<f32>(452f, 569f, -608f));

var<private> global2: vec4<f32> = vec4<f32>(510f, 710f, 627f, 398f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<u32>) -> bool {
    let var_0 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -932f) * global2.x), 306f) != _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))));
    var var_1 = global0[_wgslsmith_index_u32(~arg_2.x, 23u)];
    global0 = array<Struct_1, 23>();
    var var_2 = ~arg_1.xx ^ vec2<i32>(-1267i, -countOneBits(2147483647i));
    var var_3 = reverseBits(arg_2);
    return var_0;
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = vec2<bool>(false, func_2(-u_input.b, max(-vec3<i32>(u_input.b, u_input.b, -1i), ~vec3<i32>(u_input.b, u_input.b, -43242i)), max(~vec4<u32>(16475u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 0u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 44352u, 0u))) && false);
    var var_1 = 35505u;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 592f) * _wgslsmith_f_op_vec2_f32(-global2.zx));
    return u_input.a.x;
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(647f * global2.x))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_mod_i32(abs(-u_input.b), u_input.b)), -1i, arg_0, Struct_1(u_input.a.x ^ (u_input.a.x ^ min(arg_0.a, arg_0.a)), ~(~arg_0.b)), _wgslsmith_div_vec4_i32(~vec4<i32>(-3073i, 14947i, u_input.b, u_input.b) >> (_wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_0.b.x, arg_0.a, arg_0.b.x, arg_0.a), vec4<u32>(1u, arg_0.b.x, u_input.a.x, 1u), true), ~vec4<u32>(u_input.a.x, 43704u, arg_0.b.x, 31399u), ~vec4<u32>(arg_0.b.x, 89189u, arg_0.b.x, 1u)) % vec4<u32>(32u)), vec4<i32>(select(_wgslsmith_div_i32(1i, 36237i), u_input.b, true), -u_input.b, u_input.b, _wgslsmith_mult_i32(u_input.b ^ -2147483647i, _wgslsmith_mod_i32(u_input.b, u_input.b)))));
    var var_2 = vec3<u32>(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(arg_0.a, 1u)), min(1u, _wgslsmith_clamp_u32(min(select(1u, 16498u, true), ~arg_0.b.x), firstLeadingBit(_wgslsmith_mod_u32(arg_0.b.x, 104041u)), ~0u | u_input.a.x)), ~1u);
    global1 = array<vec3<f32>, 13>();
    global2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-751f - global2.x))) + vec4<f32>(_wgslsmith_f_op_f32(sign(global2.x)), -628f, -710f, _wgslsmith_f_op_f32(-220f - _wgslsmith_f_op_f32(var_0 * global2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, global2.x, global2.x, -142f) - vec4<f32>(506f, var_0, global2.x, var_0)))))));
    return max(0u, 43943u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-min(u_input.b, u_input.b));
    let var_1 = var_0;
    var var_2 = 13104u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global2.x)))))))));
    var var_4 = firstTrailingBit(~vec4<u32>(~4294967295u, u_input.a.x, u_input.a.x, ~0u)) & vec4<u32>(~abs(func_1(var_1)), reverseBits(~32280u), firstLeadingBit(~_wgslsmith_clamp_u32(79955u, 83834u, 0u)), u_input.a.x);
    let var_5 = 35986i;
    var var_6 = ~(~func_3(global0[_wgslsmith_index_u32(~countOneBits(1u), 23u)]));
    let var_7 = u_input.a.x;
    var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-473f * global2.x)))), -669f, true));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_4.yz, var_4.xy), var_4.zz) & abs(u_input.a)) ^ var_4.zz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -949f) * -1457f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f) + 626f)), var_4.zzw, -1385f, 330f);
}

