struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<u32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(21441u, 106666u, 10046u, 40808u, 4294967295u, 3568u, 1u, 1u, 0u, 0u, 50007u, 6388u, 73121u, 4294967295u, 46317u, 0u, 4294967295u, 1u, 54912u, 33691u, 4294967295u, 38352u, 84164u, 16051u);

var<private> global1: array<i32, 1>;

var<private> global2: array<Struct_4, 7>;

var<private> global3: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(vec4<u32>(5504u, 4294967295u, 79464u, 17052u)), vec4<i32>(-8924i, 50404i, 39299i, 0i), vec2<u32>(1u, 4294967295u), false, Struct_2(vec4<u32>(17086u, 4294967295u, 1u, 46075u))), Struct_3(Struct_2(vec4<u32>(13654u, 4294967295u, 4294967295u, 4294967295u)), vec4<i32>(1i, 32807i, 0i, -27084i), vec2<u32>(4294967295u, 33418u), true, Struct_2(vec4<u32>(30880u, 94986u, 0u, 77526u))), Struct_3(Struct_2(vec4<u32>(35061u, 1u, 4294967295u, 4294967295u)), vec4<i32>(0i, 1i, 30752i, -60783i), vec2<u32>(83831u, 56564u), false, Struct_2(vec4<u32>(0u, 94463u, 4294967295u, 19309u))), Struct_3(Struct_2(vec4<u32>(18909u, 1u, 4394u, 0u)), vec4<i32>(i32(-2147483648), -1i, 0i, 13310i), vec2<u32>(15360u, 10703u), false, Struct_2(vec4<u32>(4294967295u, 6121u, 4294967295u, 18722u))), Struct_3(Struct_2(vec4<u32>(1u, 9093u, 7743u, 1u)), vec4<i32>(-1i, -50502i, 1i, 36620i), vec2<u32>(1u, 0u), false, Struct_2(vec4<u32>(4294967295u, 17422u, 1u, 30173u))), Struct_3(Struct_2(vec4<u32>(46889u, 1u, 9737u, 4294967295u)), vec4<i32>(40965i, i32(-2147483648), i32(-2147483648), 2147483647i), vec2<u32>(3615u, 0u), false, Struct_2(vec4<u32>(24232u, 0u, 1u, 29961u))), Struct_3(Struct_2(vec4<u32>(1203u, 0u, 53112u, 1u)), vec4<i32>(-8646i, 65812i, 17297i, 0i), vec2<u32>(4294967295u, 68757u), false, Struct_2(vec4<u32>(9164u, 0u, 27660u, 0u))), Struct_3(Struct_2(vec4<u32>(97410u, 11073u, 65142u, 38824u)), vec4<i32>(39356i, 35584i, 17922i, 31514i), vec2<u32>(27584u, 4294967295u), false, Struct_2(vec4<u32>(37498u, 42782u, 0u, 0u))), Struct_3(Struct_2(vec4<u32>(20968u, 1u, 35261u, 0u)), vec4<i32>(i32(-2147483648), 2934i, -3791i, -26695i), vec2<u32>(1u, 80992u), true, Struct_2(vec4<u32>(0u, 82241u, 4294967295u, 0u))), Struct_3(Struct_2(vec4<u32>(1u, 29594u, 0u, 4294967295u)), vec4<i32>(34752i, 3390i, -32581i, 20912i), vec2<u32>(69522u, 16518u), false, Struct_2(vec4<u32>(11161u, 45796u, 4294967295u, 1u))), Struct_3(Struct_2(vec4<u32>(9146u, 0u, 1u, 1298u)), vec4<i32>(-1i, 2147483647i, 3932i, 2147483647i), vec2<u32>(0u, 50578u), false, Struct_2(vec4<u32>(25115u, 1u, 4294967295u, 15577u))), Struct_3(Struct_2(vec4<u32>(4294967295u, 1u, 1u, 35145u)), vec4<i32>(-1i, -81991i, 1i, 2147483647i), vec2<u32>(4294967295u, 37117u), false, Struct_2(vec4<u32>(4294967295u, 6714u, 4294967295u, 4294967295u))), Struct_3(Struct_2(vec4<u32>(23488u, 38131u, 69088u, 36860u)), vec4<i32>(-23490i, 2903i, -9488i, 1i), vec2<u32>(1u, 1u), true, Struct_2(vec4<u32>(26221u, 0u, 1u, 65767u))), Struct_3(Struct_2(vec4<u32>(65932u, 38175u, 53122u, 4294967295u)), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 1i), vec2<u32>(191u, 39693u), false, Struct_2(vec4<u32>(15543u, 68909u, 1u, 54962u))));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    global2 = array<Struct_4, 7>();
    var var_0 = ~vec4<i32>(firstTrailingBit(~u_input.c), ~2147483647i, _wgslsmith_div_i32(16680i, -1i), (-2147483647i << (_wgslsmith_div_u32(9334u, global0[_wgslsmith_index_u32(arg_1.c.x, 24u)]) % 32u)) << ((max(u_input.a.x, 55104u) & (arg_1.a.a.x & arg_0)) % 32u));
    let var_1 = Struct_1(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(-arg_1.b.x, i32(-1i) * -2147483647i), u_input.c >> ((u_input.a.x ^ 2787u) % 32u)));
    let var_2 = !arg_1.d;
    var var_3 = vec2<i32>(1i, arg_2);
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.x + arg_3.x))), arg_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(ceil(arg_3.x))), -2006f)), _wgslsmith_f_op_f32(trunc(-405f))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-673f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -642f) - _wgslsmith_f_op_f32(func_3(4294967295u, Struct_3(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 16493u, 4294967295u)), vec4<i32>(1i, u_input.b, u_input.c, -1i), vec2<u32>(u_input.a.x, 5594u), arg_0, Struct_2(vec4<u32>(u_input.a.x, 46612u, 28037u, 33901u))), global1[_wgslsmith_index_u32(0u, 1u)], vec4<f32>(1203f, 939f, 1140f, 295f)))), 309f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-185f, 752f, arg_0))), 648f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1138f)))));
    return Struct_2(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a.x, 1u)), ~vec4<u32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], 24u)], 4294967295u) << (vec4<u32>(5362u, 97454u, 65517u, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]) % vec4<u32>(32u))));
}

fn func_1() -> bool {
    var var_0 = func_2(true);
    let var_1 = !vec3<bool>(false, true, select(any(vec2<bool>(false, true)), true, true));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(1466f, -379f), _wgslsmith_f_op_f32(f32(-1f) * -1796f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -840f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 180f))))));
    global1 = array<i32, 1>();
    global3 = array<Struct_3, 14>();
    return all(vec4<bool>(all(vec2<bool>(true, true)), true, true, !var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_2(select(select(vec4<u32>(4294967295u, 44340u, ~13470u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 3371u)), false), vec4<u32>(~abs(25704u), ~74114u, min(4646u, _wgslsmith_clamp_u32(u_input.a.x, global0[_wgslsmith_index_u32(8417u, 24u)], 0u)), 1u), !(!func_1())));
    let var_2 = ~4012u << ((~(~1u) & (firstLeadingBit(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 4294967295u)) & firstLeadingBit(max(u_input.a.x, 49365u)))) % 32u);
    let var_3 = _wgslsmith_clamp_vec2_u32(var_1.a.xy, u_input.a.zz, u_input.a.zy) | var_1.a.zz;
    global0 = array<u32, 24>();
    let var_4 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(abs(select(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.b, 20i), true)), abs(vec2<i32>(u_input.b, u_input.b))) ^ reverseBits(~min(vec2<i32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(var_2, 1u)]), vec2<i32>(16716i, 56173i))), min(_wgslsmith_sub_vec2_i32(~vec2<i32>(0i, u_input.c) | ~vec2<i32>(global1[_wgslsmith_index_u32(1919u, 1u)], 14724i), _wgslsmith_mod_vec2_i32(vec2<i32>(25532i, u_input.c), vec2<i32>(1i, -2147483647i)) ^ max(vec2<i32>(1i, 39221i), vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2, 24u)], 1u)], 1i))), _wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(4528u, 24u)]), 1u)], ~global1[_wgslsmith_index_u32(1u, 1u)]), vec2<i32>(select(u_input.b, -14338i, true), ~2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(var_3.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2, 0u, var_3.x, var_1.a.x), _wgslsmith_div_vec4_u32(var_1.a, vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(var_3.x, 24u)], 0u, 4294967295u)))), -431f, -global1[_wgslsmith_index_u32(u_input.a.x, 1u)], ~(~max(countOneBits(4294967295u), countOneBits(var_3.x))), u_input.a);
}

