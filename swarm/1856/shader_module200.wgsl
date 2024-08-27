struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: vec2<u32> = vec2<u32>(52610u, 36373u);

var<private> global2: vec3<i32> = vec3<i32>(-18952i, -46107i, 1i);

var<private> global3: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec2<f32> {
    global0 = array<Struct_2, 26>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(319f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1224f, _wgslsmith_f_op_f32(select(168f, -636f, true))))))));
    var var_1 = 0u;
    let var_2 = vec2<bool>(false, any(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(all(vec4<bool>(false, false, true, false)), true), true)));
    global3 = global2.x;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -273f));
}

fn func_3() -> vec4<bool> {
    var var_0 = -203f;
    var var_1 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-546f, 572f)))), vec2<f32>(1f, 1f), !(1u < global1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(567f, 1000f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(746f, -883f))))))));
    global1 = _wgslsmith_clamp_vec2_u32(min(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global1.x), vec2<u32>(global1.x, global1.x))), vec2<u32>(global1.x, global1.x)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(global1.x, 0u)), ~(vec2<u32>(global1.x, global1.x) >> (vec2<u32>(global1.x, 4294967295u) % vec2<u32>(32u)))), max(reverseBits(~vec2<u32>(global1.x, global1.x)), ~min(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, 12811u)))) << ((vec2<u32>(global1.x, 4294967295u) >> (~reverseBits(abs(vec2<u32>(9885u, 4294967295u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    global2 = -u_input.b;
    let var_2 = ~firstTrailingBit(vec4<u32>(global1.x, global1.x, global1.x, global1.x));
    return select(vec4<bool>(!(_wgslsmith_dot_vec2_u32(var_2.xy, vec2<u32>(15432u, global1.x)) != ~var_2.x), all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, false)) != all(vec4<bool>(true, true, true, true))), !vec4<bool>(false, !all(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, true, true)), true), select(all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))), true, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true))));
}

fn func_1() -> vec2<f32> {
    var var_0 = _wgslsmith_div_i32(global2.x, -35235i);
    global2 = u_input.b;
    global2 = u_input.b;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(func_2()));
    let var_2 = any(!func_3());
    return var_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> u32 {
    var var_0 = vec2<bool>(!(!func_3().x), !select(!(22101i <= global2.x), false && select(true, true, false), true));
    global2 = vec3<i32>(global2.x, 2147483647i, global2.x);
    var_0 = vec2<bool>(var_0.x, var_0.x);
    global1 = vec2<u32>(reverseBits(1u), 1u);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(abs(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(func_1())), reverseBits(vec4<u32>(global1.x, global1.x, 36957u, global1.x)))), ~(~(~65214u)) & global1.x);
    global3 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1419f, -863f, -1000f, -1535f))))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-474f, -664f, _wgslsmith_div_f32(904f, -1258f), _wgslsmith_f_op_vec2_f32(func_2()).x), vec4<f32>(_wgslsmith_f_op_f32(1591f - -1270f), _wgslsmith_f_op_f32(-419f + 1542f), _wgslsmith_f_op_f32(max(2092f, -481f)), _wgslsmith_f_op_f32(min(885f, -1079f))), false)), !func_3())));
    let var_2 = !vec2<bool>(func_3().x, true);
    let var_3 = Struct_3(var_1.yx);
    let var_4 = 76047i;
    let var_5 = func_3().wwx;
    global2 = abs(min(vec3<i32>(~1i, u_input.a.x, u_input.a.x), vec3<i32>(-40960i | global2.x, 90074i, 37105i))) ^ (vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(-5907i), 46205i, firstTrailingBit(-18021i)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, -34316i);
}

