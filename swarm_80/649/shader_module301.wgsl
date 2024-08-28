struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global1: f32 = -1000f;

var<private> global2: u32;

var<private> global3: vec3<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> vec3<i32> {
    global1 = -718f;
    let var_0 = arg_1.a;
    var var_1 = ~(firstLeadingBit(abs(_wgslsmith_mod_i32(15079i, arg_2))) >> (_wgslsmith_mod_u32(arg_1.a.a, 1u) % 32u));
    return _wgslsmith_clamp_vec3_i32(select(abs(vec3<i32>(global3.x, u_input.a, 0i)) & -abs(vec3<i32>(global3.x, arg_0.a.x, -474i)), select(vec3<i32>(-2147483647i, u_input.a, 28031i), -vec3<i32>(2147483647i, -16436i, u_input.a), !global0[_wgslsmith_index_u32(7403u, 21u)]) & firstTrailingBit(arg_0.a), global0[_wgslsmith_index_u32(arg_1.a.a, 21u)]), -abs(arg_0.a), vec3<i32>(_wgslsmith_div_i32(abs(0i), _wgslsmith_mult_i32(0i, arg_2)), firstTrailingBit(arg_0.a.x), ~(global3.x ^ 0i)));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_3(func_3(Struct_3(countOneBits(-vec3<i32>(10497i, global3.x, u_input.a))), Struct_4(Struct_1(~51215u), vec2<bool>(any(vec3<bool>(false, true, false)), any(vec3<bool>(false, true, false))), true), ~max(-38682i, u_input.a ^ 47022i)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1479f, 1301f, -859f, 1153f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-332f, -274f, 740f, -579f), vec4<f32>(-414f, -1985f, -2453f, 1000f))), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-121f, 1027f, 204f, -389f) - vec4<f32>(-131f, -744f, -1000f, -230f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(807f, -598f, 1000f, 1227f), vec4<f32>(-172f, -1605f, 1000f, 601f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1015f, -1798f, 422f) * vec4<f32>(-404f, 1697f, -197f, -2196f)))))));
    var_0 = Struct_3(_wgslsmith_clamp_vec3_i32(var_0.a, -_wgslsmith_sub_vec3_i32(select(var_0.a, vec3<i32>(51913i, 18257i, 37073i), true), vec3<i32>(global3.x, -12617i, global3.x) & vec3<i32>(7559i, -2444i, 1i)), max(-var_0.a, var_0.a) & var_0.a));
    let var_2 = Struct_1(1u);
    let var_3 = Struct_4(Struct_1(1u), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))), false);
    return var_0.a;
}

fn func_1() -> vec2<i32> {
    global3 = func_2();
    global2 = _wgslsmith_mult_u32(firstTrailingBit(14255u), 4294967295u) >> (_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(999u, 29523u)), select(vec2<u32>(12914u, 31652u), vec2<u32>(0u, 4294967295u), true)))) % 32u);
    var var_0 = 1u;
    var var_1 = vec2<u32>(69283u, _wgslsmith_clamp_u32(1u, ~1u, _wgslsmith_mod_u32(41222u, 28543u)));
    var var_2 = Struct_1(~_wgslsmith_sub_u32(10743u, countOneBits(_wgslsmith_add_u32(1u, var_1.x))));
    return ~vec2<i32>(~reverseBits(0i), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(true, false, true, select(false, true, true)));
    var var_1 = func_1();
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(454f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -611f) - _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f + 1294f))))), Struct_1(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 14453u), vec2<u32>(1u, 4294967295u)), ~15974u))), Struct_1(~1u), vec3<bool>(true, true, true));
    global3 = reverseBits(-((vec3<i32>(u_input.a, global3.x, u_input.a) & vec3<i32>(10841i, global3.x, var_1.x)) | vec3<i32>(2702i, global3.x, var_1.x)) ^ ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_1.x, -10157i), vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(2147483647i, global3.x, 11063i)) >> (vec3<u32>(var_2.b.a, var_2.c.a, var_2.b.a) % vec3<u32>(32u))));
    let var_3 = var_2.b;
    var_1 = select(~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 5000i >> (var_3.a % 32u)), ~abs(global3.xx)), vec2<i32>(firstTrailingBit(-global3.x), select(var_1.x, 32044i, var_2.d.x)), all(vec3<bool>((var_3.a | 0u) == (0u >> (var_3.a % 32u)), true, all(select(vec4<bool>(var_2.d.x, false, var_2.d.x, var_2.d.x), vec4<bool>(true, true, false, true), var_2.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-1079f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.x, -629f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_2.a.x, -1098f, var_2.d.x))))))), u_input.a, var_2.a.x, -2268f);
}

