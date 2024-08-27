struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(1u, 0u, 1u), vec3<u32>(10238u, 4294967295u, 1u), vec3<u32>(1044u, 4294967295u, 4455u), vec3<u32>(4294967295u, 53276u, 13221u));

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<f32>(187f, 978f, 1191f), vec4<f32>(1118f, 506f, 1155f, 590f), vec4<bool>(true, false, false, true), vec4<u32>(7775u, 4294967295u, 278u, 37578u)), Struct_1(vec3<f32>(-295f, 725f, -961f), vec4<f32>(629f, -1139f, -858f, -1000f), vec4<bool>(true, false, false, true), vec4<u32>(1u, 17115u, 4294967295u, 82483u)), Struct_1(vec3<f32>(-103f, 1351f, 1245f), vec4<f32>(-1000f, 1829f, 1786f, 183f), vec4<bool>(false, true, true, false), vec4<u32>(1u, 1u, 4294967295u, 0u)), Struct_1(vec3<f32>(-1276f, 699f, -1194f), vec4<f32>(1237f, -1029f, -732f, 188f), vec4<bool>(false, false, false, false), vec4<u32>(0u, 18920u, 4294967295u, 1u)), Struct_1(vec3<f32>(1000f, -2140f, 1092f), vec4<f32>(819f, 368f, 1000f, -658f), vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, 6337u, 1u, 37330u)), Struct_1(vec3<f32>(552f, -1932f, -224f), vec4<f32>(1249f, -1000f, 1000f, -867f), vec4<bool>(false, true, true, true), vec4<u32>(1u, 4294967295u, 1u, 18250u)), Struct_1(vec3<f32>(1155f, -357f, -1000f), vec4<f32>(1323f, 1708f, -178f, -819f), vec4<bool>(false, false, false, false), vec4<u32>(0u, 34529u, 1u, 109808u)), Struct_1(vec3<f32>(1773f, -1000f, -476f), vec4<f32>(1567f, 113f, -298f, 1358f), vec4<bool>(false, false, false, true), vec4<u32>(0u, 4294967295u, 28718u, 1u)), Struct_1(vec3<f32>(622f, 177f, -180f), vec4<f32>(-1501f, -802f, 1033f, -413f), vec4<bool>(true, true, true, true), vec4<u32>(1u, 60862u, 46468u, 8250u)), Struct_1(vec3<f32>(-1000f, -404f, 1190f), vec4<f32>(-1195f, -603f, 437f, -736f), vec4<bool>(true, false, true, true), vec4<u32>(1u, 4294967295u, 10431u, 1u)), Struct_1(vec3<f32>(994f, -856f, 243f), vec4<f32>(-570f, -1024f, -676f, 558f), vec4<bool>(false, false, true, false), vec4<u32>(0u, 4294967295u, 4294967295u, 51702u)), Struct_1(vec3<f32>(-1464f, 348f, 1304f), vec4<f32>(1824f, -686f, 1092f, 316f), vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 7941u, 28647u, 24833u)), Struct_1(vec3<f32>(-1000f, 927f, 679f), vec4<f32>(1000f, -516f, 699f, -382f), vec4<bool>(false, true, true, true), vec4<u32>(4294967295u, 64288u, 1u, 1u)), Struct_1(vec3<f32>(464f, 1689f, 100f), vec4<f32>(-1000f, -886f, -1040f, -119f), vec4<bool>(true, false, true, false), vec4<u32>(0u, 0u, 1u, 19786u)), Struct_1(vec3<f32>(636f, 273f, 767f), vec4<f32>(-1772f, 1006f, -586f, 265f), vec4<bool>(false, false, true, true), vec4<u32>(42531u, 1u, 1u, 4294967295u)), Struct_1(vec3<f32>(-1172f, 338f, 820f), vec4<f32>(744f, -771f, -625f, -1181f), vec4<bool>(false, false, true, true), vec4<u32>(0u, 1u, 1u, 1u)));

var<private> global3: i32 = 2147483647i;

var<private> global4: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    global2 = array<Struct_1, 16>();
    var var_0 = Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-449f, 242f)))), _wgslsmith_f_op_f32(-1f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1069f - 545f) + -1975f)), -1346f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f) - -1000f), -1000f), !vec4<bool>(true, true, true, all(vec2<bool>(false, true))), vec4<u32>(~(reverseBits(4294967295u) >> (firstLeadingBit(1u) % 32u)), 4294967295u, ~(~1u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~16274u, 1u), firstLeadingBit(_wgslsmith_clamp_u32(8213u, 42059u, 3590u)))));
    global3 = -select(~firstLeadingBit(1077i), -16885i, false);
    let var_1 = var_0.c.x;
    var var_2 = global1[_wgslsmith_index_u32(var_0.d.x, 10u)];
    return var_0.d.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = vec2<i32>(1i, u_input.a.x) & (vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(6796i, u_input.b) | vec2<i32>(u_input.b, u_input.a.x)));
    var var_1 = global2[_wgslsmith_index_u32(func_3(), 16u)];
    let var_2 = vec2<f32>(-1248f, var_1.a.x);
    let var_3 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(min(~var_1.d.x, 24490u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.d.x, var_1.d.x) << (firstLeadingBit(vec3<u32>(4294967295u, 0u, 8733u)) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(var_1.d.x, 4u)]))), 10u)];
    let var_4 = 22310u;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(var_1.b.x * 544f), var_3.b.x), var_3.b.zzw))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1025f, 959f), var_2.x)), 652f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-491f + 230f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x)))), 1688f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1015f * var_3.a.x)))), !(!(!(!vec4<bool>(var_3.c.x, var_1.c.x, false, var_3.c.x)))), vec4<u32>(4574u, ~var_3.d.x, ~var_1.d.x, var_1.d.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec4<bool> {
    var var_0 = func_2(true);
    var_0 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x))))) > _wgslsmith_f_op_f32(-var_0.b.x));
    global0 = array<vec3<u32>, 4>();
    let var_1 = func_2(false);
    let var_2 = all(select(var_0.c.yxw, vec3<bool>(true, !var_0.c.x, false), func_2(var_1.c.x).c.x & true));
    return select(select(!vec4<bool>(var_0.b.x < var_1.b.x, var_2, var_0.a.x < -2365f, -716f >= var_0.a.x), var_1.c, !(true != any(vec4<bool>(var_1.c.x, true, false, false)))), var_1.c, vec4<bool>(any(func_2(true).c), false, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1190f, 1000f));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(315f, 1557f, -357f))) * vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(497f, 731f, var_0.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-2090f, var_0.x, var_0.x), vec3<bool>(false, true, false))))), any(vec4<bool>(true, true, false, false)) & true)))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(step(var_0.x, 138f)))), _wgslsmith_f_op_f32(-var_0.x), true)), _wgslsmith_f_op_f32(108f * var_0.x)), select(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, true)), !func_1(vec4<u32>(4294967295u, 47005u, 16739u, 95701u), true)), vec4<bool>(true, true, !all(vec3<bool>(true, false, false)), !select(false, false, true)), false), _wgslsmith_mult_vec4_u32(vec4<u32>(~(~69262u), ~(81006u >> (0u % 32u)), ~(~69342u), ~select(0u, 4294967295u, false)), vec4<u32>(_wgslsmith_div_u32(~25951u, abs(4294967295u)), 1u, ~3994u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(41359u, 48860u, 38155u, 30860u)))));
    var var_2 = var_1.c;
    var var_3 = var_1.d.x;
    var var_4 = var_1;
    var_2 = !vec4<bool>(false || all(select(vec3<bool>(var_1.c.x, var_4.c.x, var_2.x), var_2.zxz, var_2.zyz)), all(func_2(any(vec4<bool>(false, var_2.x, var_2.x, var_2.x))).c.yy), true, any(vec3<bool>(var_4.c.x, !var_2.x, 5452u < var_4.d.x)));
    var var_5 = global2[_wgslsmith_index_u32(var_1.d.x, 16u)];
    var_2 = vec4<bool>(all(var_1.c), var_5.c.x, 721f == _wgslsmith_f_op_f32(round(var_1.a.x)), (var_5.b.x != var_4.b.x) | !(false && var_4.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(955f * _wgslsmith_f_op_f32(-var_0.x)));
}

