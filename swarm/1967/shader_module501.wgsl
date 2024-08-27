struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_2(3943i, Struct_1(vec4<f32>(-1214f, -1000f, 142f, -1578f), 491f, vec2<i32>(42533i, 1i), vec4<i32>(-29423i, -1i, 14187i, 19947i), vec3<f32>(819f, 1476f, -1219f)), vec3<i32>(647i, -25729i, 0i), Struct_1(vec4<f32>(-1056f, -581f, -153f, -1442f), -1005f, vec2<i32>(-43095i, -6170i), vec4<i32>(1i, 34064i, 0i, -295i), vec3<f32>(1119f, -1670f, -473f)))), Struct_3(Struct_2(-6970i, Struct_1(vec4<f32>(-1144f, -926f, 219f, -1750f), 1121f, vec2<i32>(i32(-2147483648), 0i), vec4<i32>(3428i, 13833i, i32(-2147483648), -6190i), vec3<f32>(1554f, -1528f, -1000f)), vec3<i32>(465i, -31077i, 0i), Struct_1(vec4<f32>(-413f, -2272f, 1033f, 1464f), 190f, vec2<i32>(-34898i, i32(-2147483648)), vec4<i32>(65757i, -36086i, 0i, -1i), vec3<f32>(1927f, -767f, -754f)))), Struct_3(Struct_2(0i, Struct_1(vec4<f32>(-1298f, -543f, -621f, 672f), -436f, vec2<i32>(32908i, 1815i), vec4<i32>(0i, 0i, 0i, 9i), vec3<f32>(450f, -1441f, -509f)), vec3<i32>(0i, -1i, -23737i), Struct_1(vec4<f32>(-568f, 1000f, 466f, -1217f), 360f, vec2<i32>(2147483647i, 17883i), vec4<i32>(i32(-2147483648), -9624i, 9742i, -18171i), vec3<f32>(1400f, -1000f, -239f)))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(abs(-1475f));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>) -> i32 {
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(621f, -1115f, -832f, 1538f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-795f, 217f, -739f, 825f)), arg_1.x)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(468f, 532f, -147f, -789f)), vec4<f32>(-114f, _wgslsmith_f_op_f32(-394f - 705f), -326f, 1268f)))), 1370f, u_input.b.xx, -u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-150f, 1710f, 1000f), vec3<f32>(-458f, -165f, 1505f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1703f, -2531f, 1992f))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-314f, 2406f, 1061f) - vec3<f32>(191f, 422f, -1000f))))))));
    var var_2 = countOneBits(~1u) << (1u % 32u);
    global0 = 1u;
    var var_3 = var_1.e.zz;
    return _wgslsmith_clamp_i32(1i, var_1.d.x, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.x, -33754i, 1i), u_input.b.xww ^ u_input.b.xxx) | firstLeadingBit(-2147483647i));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = !arg_1;
    var var_1 = 1u;
    global1 = array<Struct_3, 3>();
    let var_2 = global1[_wgslsmith_index_u32(50127u, 3u)];
    var var_3 = vec2<i32>(46969i, -1i);
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(338f)) - _wgslsmith_f_op_f32(-var_2.a.d.b)), -154f, _wgslsmith_f_op_f32(func_2()), -754f) + var_2.a.d.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(529f - var_2.a.b.a.x) + _wgslsmith_f_op_f32(867f - -448f))) * var_2.a.d.e.x), min(vec2<i32>(-351i, var_2.a.d.c.x), _wgslsmith_add_vec2_i32(min(var_2.a.d.c, vec2<i32>(var_2.a.c.x, -19837i)), countOneBits(_wgslsmith_mod_vec2_i32(var_2.a.c.zx, var_2.a.d.c)))), vec4<i32>(-countOneBits(-1i) ^ (20233i << (firstTrailingBit(30687u) % 32u)), abs(~1i), firstTrailingBit(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(u_input.b.yxy, vec3<i32>(var_3.x, var_2.a.a, -2147483647i)), abs(39085i))), _wgslsmith_add_i32(select(func_3(vec2<i32>(0i, -6946i), vec2<bool>(var_0, false)), var_3.x, all(vec2<bool>(var_0, var_0))), -2147483647i)), _wgslsmith_f_op_vec3_f32(floor(var_2.a.b.a.wyz)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 3>();
    var var_0 = func_1(448f, false);
    let var_1 = Struct_2(-2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1143f), true).a * func_1(-1546f, true).a), _wgslsmith_f_op_f32(round(1f)), var_0.c, -vec4<i32>(-var_0.d.x, countOneBits(9396i), 0i, min(15689i, 11418i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e))), u_input.b.zxz, Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, 147f)))), u_input.b.zx, vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, ~vec4<i32>(-24596i, 0i, 24850i, u_input.a.x)), 2147483647i, abs(~u_input.c), -2787i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(361f)), -1559f, _wgslsmith_f_op_f32(-var_0.a.x)))));
    global1 = array<Struct_3, 3>();
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.e.x, var_1.d.b, var_1.d.b, var_1.b.a.x))))))), var_0.a.x, vec2<i32>(5487i, max(~var_0.c.x, _wgslsmith_sub_i32(var_1.b.d.x, -14588i))) >> (~abs(vec2<u32>(4294967295u, 14041u)) % vec2<u32>(32u)), vec4<i32>(var_1.b.c.x, _wgslsmith_clamp_i32(var_0.c.x, -36607i | _wgslsmith_mult_i32(15818i, var_1.d.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-30727i, -1i, -41115i), var_0.d.wxx) << (~46675u % 32u)), u_input.a.x << (_wgslsmith_clamp_u32(~19735u, 12489u, 4294967295u) % 32u), u_input.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.d.a.x)), var_1.d.a.x)), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(var_1.d.b - 1000f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, var_0.b, var_1.d.b), var_1.d.a.yyy) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 283f, 936f) - var_0.a.xxx))))));
    var var_2 = abs(vec4<u32>(_wgslsmith_div_u32(abs(18376u), ~41606u), ~11840u, 15579u, ~max(1u, 65279u)) >> (min(abs(min(vec4<u32>(47302u, 5115u, 1u, 30850u), vec4<u32>(33609u, 42975u, 40928u, 0u))), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_mult_vec3_u32(var_2.ywz, select(vec3<u32>(var_2.x, _wgslsmith_mult_u32(var_2.x, 38239u), 37501u), _wgslsmith_sub_vec3_u32(vec3<u32>(5045u, var_2.x, var_2.x), ~vec3<u32>(1u, var_2.x, var_2.x)), true)), ~func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f * var_0.a.x)), true).d.x, vec4<u32>(44692u, select(~abs(var_2.x), abs(var_2.x), true), ~0u >> (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 57421u, var_2.x, 4294967295u), abs(vec4<u32>(0u, 1u, var_2.x, 4294967295u))) << (var_2.x % 32u)), var_2.x);
}

