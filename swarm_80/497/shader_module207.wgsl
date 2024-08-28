struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(Struct_2(vec3<bool>(true, false, false)), Struct_1(vec3<f32>(780f, -1460f, -222f)), 1130f), Struct_4(Struct_2(vec3<bool>(false, true, true)), Struct_1(vec3<f32>(738f, 1481f, -371f)), 221f), Struct_4(Struct_2(vec3<bool>(false, false, false)), Struct_1(vec3<f32>(-1887f, -1000f, -396f)), 722f), Struct_4(Struct_2(vec3<bool>(false, false, true)), Struct_1(vec3<f32>(-900f, 255f, 1618f)), -234f), Struct_4(Struct_2(vec3<bool>(true, false, true)), Struct_1(vec3<f32>(1240f, -476f, -311f)), -538f), Struct_4(Struct_2(vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-667f, -521f, -403f)), 1373f), Struct_4(Struct_2(vec3<bool>(false, false, false)), Struct_1(vec3<f32>(391f, -176f, -1339f)), 238f), Struct_4(Struct_2(vec3<bool>(true, false, false)), Struct_1(vec3<f32>(370f, -564f, -321f)), 813f), Struct_4(Struct_2(vec3<bool>(false, true, false)), Struct_1(vec3<f32>(235f, 727f, -1246f)), 864f), Struct_4(Struct_2(vec3<bool>(false, true, true)), Struct_1(vec3<f32>(1047f, 170f, -1045f)), 1407f), Struct_4(Struct_2(vec3<bool>(true, true, false)), Struct_1(vec3<f32>(401f, -804f, -474f)), -834f), Struct_4(Struct_2(vec3<bool>(true, false, false)), Struct_1(vec3<f32>(-1029f, -767f, -1208f)), -568f), Struct_4(Struct_2(vec3<bool>(false, true, false)), Struct_1(vec3<f32>(486f, 1000f, 497f)), -2272f));

var<private> global2: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(17907i, -1i, -19529i), vec3<i32>(3859i, 2147483647i, -17358i), vec3<i32>(0i, 26253i, i32(-2147483648)), vec3<i32>(2147483647i, -12792i, i32(-2147483648)), vec3<i32>(-3533i, 1i, 1i), vec3<i32>(-50861i, 0i, i32(-2147483648)), vec3<i32>(8633i, -6123i, 49153i), vec3<i32>(-1i, 18691i, 0i), vec3<i32>(-22160i, 2147483647i, i32(-2147483648)), vec3<i32>(42880i, 0i, -3231i), vec3<i32>(25784i, 16902i, 2147483647i), vec3<i32>(-1i, 0i, -1i), vec3<i32>(0i, 27986i, -14672i), vec3<i32>(-1i, i32(-2147483648), 41274i), vec3<i32>(14468i, -15390i, -1i), vec3<i32>(-16065i, 42560i, 2147483647i), vec3<i32>(51548i, 1i, -49064i), vec3<i32>(i32(-2147483648), -20911i, 1i), vec3<i32>(7748i, 1i, -1i), vec3<i32>(0i, 608i, i32(-2147483648)), vec3<i32>(0i, 0i, -13652i), vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(1i, -13460i, 14746i), vec3<i32>(44710i, 0i, 4490i), vec3<i32>(9117i, -10566i, -1i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    var var_0 = select(u_input.b.yx, -_wgslsmith_mult_vec2_i32(u_input.b.zz, _wgslsmith_sub_vec2_i32(u_input.b.zz, u_input.b.yx) >> (~vec2<u32>(36386u, 1u) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(4294967295u, 0u), ~1u, 1u), ~min(vec3<u32>(0u, 1u, 1u), vec3<u32>(37311u, 0u, 11743u))), 22u)] && false);
    return _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u))), ~(~min(~vec3<u32>(10574u, 1u, 0u), reverseBits(vec3<u32>(0u, 45623u, 4294967295u)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_add_vec2_u32((reverseBits(~vec2<u32>(4294967295u, 92633u)) >> (vec2<u32>(~0u, select(0u, 4294967295u, false)) % vec2<u32>(32u))) & select(max(vec2<u32>(1u, 45674u), vec2<u32>(4294967295u, 4906u)), ~firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)), global0[_wgslsmith_index_u32(~(~110025u), 22u)]), ~vec2<u32>(reverseBits(func_3()), 1u));
    global2 = array<vec3<i32>, 25>();
    var var_1 = vec3<i32>(arg_1.x, ~(~(-_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(1i, -6760i, 2147483647i, 0i)))), abs(arg_1.x) & u_input.b.x);
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-2672f + arg_0.a.x)), arg_0.a.x, _wgslsmith_f_op_f32(round(-1034f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1320f, 396f, arg_0.a.x)))))));
    let var_3 = !global0[_wgslsmith_index_u32(select(~var_0.x >> (var_0.x % 32u), ~reverseBits(var_0.x), !all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 22u)], false, global0[_wgslsmith_index_u32(var_0.x, 22u)], global0[_wgslsmith_index_u32(84717u, 22u)]))) & _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x), ~vec3<u32>(196u, var_0.x, 1u)), min(vec3<u32>(4294967295u, var_0.x, var_0.x) << (vec3<u32>(4294967295u, var_0.x, var_0.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 56269u)))), 22u)];
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(603f, -217f) * var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2388f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1272f - -386f), _wgslsmith_f_op_f32(-var_2.a.x))) - 752f)), var_2.a.x);
}

fn func_1(arg_0: vec3<i32>) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec3<f32>(-354f, -494f, -529f)), vec4<i32>(-2891i, 417i, 61589i, arg_0.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(709f, 133f, -1317f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-437f, 979f, 122f))))))));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_2(var_0, _wgslsmith_sub_vec4_i32(~max(vec4<i32>(-15731i, -19102i, -1i, 1i), vec4<i32>(-1i, 1i, -2147483647i, 41083i)), vec4<i32>(~u_input.a, ~4480i, -var_1.x, _wgslsmith_sub_i32(arg_0.x, var_1.x)))))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(28030u, 1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(~34042u, ~4294967295u), ~func_3())), reverseBits(~vec3<u32>(1u, 1u, 1u)) ^ (vec3<u32>(4294967295u, ~91246u, 16330u >> (1u % 32u)) | select(~vec3<u32>(82453u, 13059u, 6522u), reverseBits(vec3<u32>(0u, 49795u, 64744u)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(34611u, 22u)], false), vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(0u, 22u)])))), 22u)];
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(615f * var_2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, 702f, global0[_wgslsmith_index_u32(47912u, 22u)])))), _wgslsmith_f_op_f32(355f - _wgslsmith_f_op_f32(468f * var_0.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, global0[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1413f, -452f, var_2.x) + var_0.a)))))));
    return _wgslsmith_div_vec2_u32(~select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), global0[_wgslsmith_index_u32(1u, 22u)]), ~select(~(~vec2<u32>(67694u, 1u)), countOneBits(vec2<u32>(1u, 1u)), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 13>();
    var var_0 = ~(func_1(u_input.b) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(54888u, 34972u), vec2<u32>(69158u, 54216u)) % vec2<u32>(32u)));
    let var_1 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1444f, 1000f)), -833f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(577f + -796f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1443f, -754f))))) * _wgslsmith_f_op_f32(max(-1000f, -177f))));
    global2 = array<vec3<i32>, 25>();
    let var_2 = var_1.a;
    var var_3 = -(u_input.b.x << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.x, var_0.x) >> (~1587u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 5093u, var_0.x, var_0.x), abs(vec4<u32>(var_0.x, 54247u, 1u, 49578u)))) % 32u));
    let var_4 = -243f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(810f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b, var_1.a.a.x)) + -1000f)))), _wgslsmith_add_vec3_i32(-max(vec3<i32>(u_input.b.x, -17880i, 2147483647i) << (vec3<u32>(var_0.x, 4294967295u, var_0.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -1i, u_input.a), vec3<i32>(u_input.b.x, u_input.a, 9419i), global2[_wgslsmith_index_u32(28608u, 25u)])), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(global2[_wgslsmith_index_u32(var_0.x, 25u)] >> (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u)), vec3<i32>(-1i, 0i, u_input.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 61659i, u_input.a), vec3<i32>(-28949i, u_input.a, 3731i)))));
}

