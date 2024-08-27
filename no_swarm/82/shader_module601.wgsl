struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-1729f, 533f, 1381f, -459f), vec4<f32>(900f, -886f, -1490f, 1948f), vec4<f32>(-797f, 1175f, 1000f, 387f), vec4<f32>(-300f, 1032f, 1781f, 283f), vec4<f32>(-1455f, 1909f, -354f, 197f), vec4<f32>(-615f, -889f, 389f, 218f), vec4<f32>(-1661f, 1289f, -348f, 1337f), vec4<f32>(245f, 142f, -1158f, -379f), vec4<f32>(110f, 1335f, -971f, -534f), vec4<f32>(-1258f, 506f, -248f, -1202f), vec4<f32>(-275f, -1763f, -200f, -358f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(select(_wgslsmith_sub_vec4_i32(global0.a, vec4<i32>(-1i, 52670i, u_input.d.x, 1i) << (vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.c) % vec4<u32>(32u))), -(~global0.a), true), global0.a));
    var_0 = Struct_1(min(reverseBits(firstLeadingBit(-vec4<i32>(1i, -10353i, 19552i, u_input.d.x))), ~abs(global0.a)));
    let var_1 = i32(-1i) * -2147483647i;
    var var_2 = 0i;
    global0 = Struct_1(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(2147483647i, 114i, 2147483647i, var_1)), 1i, u_input.d.x, ~global0.a.x), -firstLeadingBit(vec4<i32>(var_0.a.x, -4786i, -1i, global0.a.x)))));
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> vec4<i32> {
    global0 = arg_0;
    let var_0 = arg_0;
    let var_1 = select(func_2(), false, true);
    global1 = array<vec4<f32>, 11>();
    let var_2 = ~(reverseBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c, u_input.a), _wgslsmith_sub_u32(20936u, u_input.c))) << (u_input.a % 32u));
    return reverseBits(abs(vec4<i32>(8477i, _wgslsmith_mult_i32(~var_0.a.x, -1i), _wgslsmith_dot_vec4_i32(firstTrailingBit(arg_0.a), arg_0.a | vec4<i32>(-2986i, -245i, var_0.a.x, 46072i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0.a.x, global0.a.x), arg_2.x >> (57631u % 32u)))));
}

fn func_1() -> Struct_1 {
    global1 = array<vec4<f32>, 11>();
    var var_0 = vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, func_2()))), global0.a.x <= (_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, u_input.d.x) & _wgslsmith_mult_i32(max(-19962i, 102332i), global0.a.x)), false);
    var var_1 = Struct_1(-_wgslsmith_sub_vec4_i32(func_3(Struct_1(global0.a), _wgslsmith_f_op_f32(786f + -622f), u_input.d.zx << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))), vec4<i32>(-1i, _wgslsmith_mod_i32(global0.a.x, global0.a.x), u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, -14912i), global0.a.yw))));
    var var_2 = Struct_2(Struct_1(global0.a), true == all(var_0.yz), ~firstTrailingBit(u_input.c));
    var_2 = Struct_2(var_2.a, var_2.b, 1u);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<vec4<f32>, 11>();
    var var_1 = Struct_1(~max(func_3(Struct_1(global0.a), _wgslsmith_f_op_f32(-1355f - -1205f), vec2<i32>(u_input.d.x, 4957i)), min(vec4<i32>(u_input.d.x, -35239i, var_0.a.x, -59611i), vec4<i32>(u_input.d.x, -2147483647i, global0.a.x, var_0.a.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(233f, 1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-760f, 295f) - vec2<f32>(1344f, 433f))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, false)))))));
    let var_3 = vec4<u32>(reverseBits(85913u), 0u, u_input.c, _wgslsmith_mult_u32(~min(u_input.a | 1u, ~u_input.c), ((u_input.a >> (4294967295u % 32u)) | ~u_input.a) >> ((_wgslsmith_add_u32(u_input.c, u_input.b) >> (u_input.b % 32u)) % 32u)));
    let var_4 = vec3<bool>(true, !(~1u == reverseBits(u_input.c)), func_2());
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(332f)))), var_2.x);
    let var_6 = true;
    global1 = array<vec4<f32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<i32>(var_1.a.x, func_3(var_0, 541f, vec2<i32>(0i, -1i)).x, abs(1i)) >> (vec3<u32>(var_3.x, firstTrailingBit(min(u_input.b, u_input.c)), 28723u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_5.zy + vec2<f32>(_wgslsmith_f_op_f32(var_5.x + -542f), _wgslsmith_f_op_f32(min(-557f, var_5.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-380f - 1363f)));
}

