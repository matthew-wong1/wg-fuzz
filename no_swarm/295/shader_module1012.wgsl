struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 15997u, 0u, 0u);

var<private> global1: u32 = 20291u;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<u32>(39547u, 1u), Struct_1(vec3<i32>(-22749i, 0i, -20507i), vec2<bool>(true, true), 396f, true, vec4<u32>(78650u, 20998u, 1u, 28993u)), 41207u, Struct_1(vec3<i32>(-1i, 13960i, 13141i), vec2<bool>(false, true), 1000f, true, vec4<u32>(7360u, 4294967295u, 0u, 10411u))), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec3<i32>(0i, -100344i, 7347i), vec2<bool>(true, false), 188f, true, vec4<u32>(16158u, 7333u, 4294967295u, 0u)), 1u, Struct_1(vec3<i32>(i32(-2147483648), 34346i, 0i), vec2<bool>(true, false), 922f, true, vec4<u32>(4294967295u, 6329u, 4294967295u, 4294967295u))), Struct_2(vec2<u32>(36u, 87718u), Struct_1(vec3<i32>(2147483647i, 2147483647i, 4950i), vec2<bool>(false, false), -196f, true, vec4<u32>(41972u, 15649u, 4294967295u, 4294967295u)), 68125u, Struct_1(vec3<i32>(-1i, 13432i, i32(-2147483648)), vec2<bool>(false, false), -728f, false, vec4<u32>(72364u, 0u, 14957u, 32315u))), Struct_2(vec2<u32>(52797u, 67530u), Struct_1(vec3<i32>(55153i, -8173i, -12558i), vec2<bool>(true, false), 1000f, true, vec4<u32>(1u, 1u, 20675u, 18100u)), 15598u, Struct_1(vec3<i32>(-1i, -6988i, 0i), vec2<bool>(false, true), -1248f, false, vec4<u32>(29441u, 20326u, 4294967295u, 16188u))), Struct_2(vec2<u32>(1u, 45984u), Struct_1(vec3<i32>(-2286i, -1i, 40542i), vec2<bool>(true, false), -268f, false, vec4<u32>(4294967295u, 57713u, 923u, 74224u)), 4294967295u, Struct_1(vec3<i32>(2147483647i, 65114i, -58779i), vec2<bool>(false, false), -1284f, true, vec4<u32>(1u, 1u, 63722u, 16348u))), Struct_2(vec2<u32>(74084u, 0u), Struct_1(vec3<i32>(i32(-2147483648), 1274i, -5059i), vec2<bool>(true, false), 2051f, true, vec4<u32>(4294967295u, 83649u, 1u, 1u)), 0u, Struct_1(vec3<i32>(-18455i, 2147483647i, i32(-2147483648)), vec2<bool>(false, true), -1938f, true, vec4<u32>(0u, 136067u, 16919u, 17896u))), Struct_2(vec2<u32>(4294967295u, 114393u), Struct_1(vec3<i32>(1i, i32(-2147483648), 0i), vec2<bool>(false, false), 773f, true, vec4<u32>(2221u, 0u, 13250u, 31020u)), 4294967295u, Struct_1(vec3<i32>(22289i, 1746i, 2147483647i), vec2<bool>(true, true), -1232f, true, vec4<u32>(16415u, 4294967295u, 1u, 0u))), Struct_2(vec2<u32>(1u, 26963u), Struct_1(vec3<i32>(2147483647i, 0i, 10774i), vec2<bool>(false, true), -2469f, true, vec4<u32>(38797u, 3992u, 1u, 53798u)), 27466u, Struct_1(vec3<i32>(84264i, -68764i, -25203i), vec2<bool>(false, true), 815f, true, vec4<u32>(11474u, 5746u, 4294967295u, 0u))), Struct_2(vec2<u32>(0u, 1u), Struct_1(vec3<i32>(-46839i, 33239i, 0i), vec2<bool>(true, true), 1000f, false, vec4<u32>(4294967295u, 0u, 36212u, 32877u)), 0u, Struct_1(vec3<i32>(-43251i, 0i, -1i), vec2<bool>(false, false), -1447f, false, vec4<u32>(4294967295u, 21383u, 942u, 0u))), Struct_2(vec2<u32>(28476u, 1867u), Struct_1(vec3<i32>(2147483647i, 0i, 2147483647i), vec2<bool>(false, false), 1340f, true, vec4<u32>(1u, 0u, 39619u, 0u)), 14618u, Struct_1(vec3<i32>(2147483647i, -12924i, 2147483647i), vec2<bool>(true, true), 1056f, true, vec4<u32>(4294967295u, 0u, 9040u, 0u))), Struct_2(vec2<u32>(6742u, 0u), Struct_1(vec3<i32>(-64635i, 4623i, -19418i), vec2<bool>(true, false), 1458f, true, vec4<u32>(1u, 34465u, 121428u, 1u)), 4294967295u, Struct_1(vec3<i32>(i32(-2147483648), -3599i, 2147483647i), vec2<bool>(true, false), 1249f, false, vec4<u32>(0u, 5311u, 0u, 1104u))), Struct_2(vec2<u32>(41484u, 42982u), Struct_1(vec3<i32>(i32(-2147483648), -1i, 55675i), vec2<bool>(true, false), 713f, true, vec4<u32>(1u, 11525u, 24778u, 1u)), 0u, Struct_1(vec3<i32>(2147483647i, 52452i, 0i), vec2<bool>(true, true), 1236f, true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u))), Struct_2(vec2<u32>(0u, 69143u), Struct_1(vec3<i32>(-1i, -1i, 2147483647i), vec2<bool>(false, false), 752f, true, vec4<u32>(1u, 44542u, 4294967295u, 38629u)), 0u, Struct_1(vec3<i32>(-11474i, -36021i, 1i), vec2<bool>(true, false), 971f, true, vec4<u32>(91600u, 0u, 40073u, 59439u))), Struct_2(vec2<u32>(4294967295u, 77391u), Struct_1(vec3<i32>(0i, 33690i, 0i), vec2<bool>(false, true), -882f, false, vec4<u32>(17105u, 1u, 1u, 24380u)), 0u, Struct_1(vec3<i32>(0i, i32(-2147483648), -40309i), vec2<bool>(false, true), 600f, true, vec4<u32>(0u, 13541u, 10320u, 26952u))), Struct_2(vec2<u32>(23165u, 0u), Struct_1(vec3<i32>(-1i, -38842i, -1i), vec2<bool>(false, false), -1157f, false, vec4<u32>(29540u, 4294967295u, 4294967295u, 58981u)), 0u, Struct_1(vec3<i32>(i32(-2147483648), 42844i, -52395i), vec2<bool>(true, true), -876f, true, vec4<u32>(4294967295u, 0u, 1u, 33155u))), Struct_2(vec2<u32>(53017u, 17826u), Struct_1(vec3<i32>(44826i, -1i, 71506i), vec2<bool>(true, true), 344f, true, vec4<u32>(19339u, 48795u, 1u, 13668u)), 42876u, Struct_1(vec3<i32>(-27820i, -55318i, -32425i), vec2<bool>(true, false), 1000f, true, vec4<u32>(0u, 0u, 0u, 51396u))), Struct_2(vec2<u32>(79089u, 0u), Struct_1(vec3<i32>(-62691i, 0i, 0i), vec2<bool>(true, false), -1162f, true, vec4<u32>(37285u, 54018u, 1u, 24561u)), 1u, Struct_1(vec3<i32>(-1i, 1i, 0i), vec2<bool>(true, false), -982f, false, vec4<u32>(1u, 0u, 4294967295u, 17532u))), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec2<bool>(true, false), -367f, false, vec4<u32>(65857u, 42962u, 77005u, 39599u)), 29733u, Struct_1(vec3<i32>(-10755i, 14341i, -1i), vec2<bool>(false, false), 1221f, false, vec4<u32>(1u, 50163u, 23884u, 1u))), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec3<i32>(0i, 1i, i32(-2147483648)), vec2<bool>(true, true), 1879f, false, vec4<u32>(31553u, 29322u, 4294967295u, 1u)), 1u, Struct_1(vec3<i32>(1i, 9358i, -3574i), vec2<bool>(false, true), 171f, true, vec4<u32>(1u, 39016u, 4294967295u, 4294967295u))), Struct_2(vec2<u32>(28847u, 4294967295u), Struct_1(vec3<i32>(-30116i, 28301i, -4610i), vec2<bool>(true, false), 460f, true, vec4<u32>(1u, 1u, 0u, 1u)), 42750u, Struct_1(vec3<i32>(-4900i, -1835i, 2147483647i), vec2<bool>(false, false), -222f, false, vec4<u32>(20228u, 4294967295u, 32717u, 1u))), Struct_2(vec2<u32>(48659u, 25115u), Struct_1(vec3<i32>(-24910i, 4340i, 2147483647i), vec2<bool>(false, false), -164f, false, vec4<u32>(1u, 25404u, 1u, 76682u)), 1u, Struct_1(vec3<i32>(43738i, 0i, 0i), vec2<bool>(false, true), -297f, false, vec4<u32>(69012u, 4294967295u, 21803u, 4294967295u))), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 1037i), vec2<bool>(false, true), 494f, false, vec4<u32>(54970u, 15764u, 4294967295u, 34399u)), 59084u, Struct_1(vec3<i32>(-1i, -1i, -5347i), vec2<bool>(true, false), -1388f, true, vec4<u32>(0u, 52542u, 0u, 4294967295u))), Struct_2(vec2<u32>(438u, 0u), Struct_1(vec3<i32>(45640i, 0i, -26846i), vec2<bool>(true, true), 337f, true, vec4<u32>(4294967295u, 22919u, 0u, 1u)), 17105u, Struct_1(vec3<i32>(2147483647i, -41322i, 28189i), vec2<bool>(true, false), 1556f, true, vec4<u32>(24074u, 4294967295u, 0u, 0u))), Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(vec3<i32>(-1i, -1i, 0i), vec2<bool>(true, false), 245f, false, vec4<u32>(1u, 9945u, 4294967295u, 9300u)), 38553u, Struct_1(vec3<i32>(58644i, 34035i, 31851i), vec2<bool>(false, true), 792f, true, vec4<u32>(79842u, 37566u, 4294967295u, 13537u))), Struct_2(vec2<u32>(15904u, 13956u), Struct_1(vec3<i32>(-1i, 31501i, 0i), vec2<bool>(true, true), -2205f, false, vec4<u32>(4294967295u, 150687u, 30796u, 4294967295u)), 13007u, Struct_1(vec3<i32>(-1i, 6155i, 37060i), vec2<bool>(true, true), 852f, true, vec4<u32>(97868u, 86644u, 26816u, 1u))), Struct_2(vec2<u32>(4294967295u, 88537u), Struct_1(vec3<i32>(0i, -36154i, 1i), vec2<bool>(true, false), -582f, false, vec4<u32>(4294967295u, 13092u, 41245u, 468u)), 69090u, Struct_1(vec3<i32>(0i, 8209i, 9665i), vec2<bool>(false, false), -614f, true, vec4<u32>(1u, 23879u, 1u, 0u))), Struct_2(vec2<u32>(100593u, 1u), Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648)), vec2<bool>(false, true), -143f, true, vec4<u32>(42069u, 1u, 32752u, 1u)), 1u, Struct_1(vec3<i32>(1i, 0i, 0i), vec2<bool>(true, false), 1000f, false, vec4<u32>(27472u, 54569u, 42007u, 15073u))), Struct_2(vec2<u32>(0u, 0u), Struct_1(vec3<i32>(22908i, -9212i, -46949i), vec2<bool>(true, false), 546f, false, vec4<u32>(67146u, 97919u, 46507u, 1u)), 22312u, Struct_1(vec3<i32>(-19266i, i32(-2147483648), -9607i), vec2<bool>(false, false), -1066f, false, vec4<u32>(53875u, 4294967295u, 28963u, 53144u))), Struct_2(vec2<u32>(31994u, 4294967295u), Struct_1(vec3<i32>(0i, 0i, -18852i), vec2<bool>(true, true), 886f, false, vec4<u32>(40893u, 73896u, 1u, 11448u)), 25979u, Struct_1(vec3<i32>(-28496i, i32(-2147483648), -1i), vec2<bool>(false, false), 117f, true, vec4<u32>(29374u, 11637u, 1u, 73422u))), Struct_2(vec2<u32>(1u, 1u), Struct_1(vec3<i32>(1i, 0i, 1i), vec2<bool>(false, false), -1116f, false, vec4<u32>(4294967295u, 164086u, 42133u, 20663u)), 0u, Struct_1(vec3<i32>(2147483647i, 26936i, -18514i), vec2<bool>(true, false), 2309f, true, vec4<u32>(4294967295u, 44836u, 4294967295u, 115032u))), Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec2<bool>(false, false), -238f, true, vec4<u32>(4294967295u, 80157u, 4294967295u, 20035u)), 23757u, Struct_1(vec3<i32>(0i, -39765i, 0i), vec2<bool>(true, true), 534f, true, vec4<u32>(0u, 28676u, 47146u, 42031u))), Struct_2(vec2<u32>(25471u, 4294967295u), Struct_1(vec3<i32>(1i, 0i, 2147483647i), vec2<bool>(true, false), -1000f, true, vec4<u32>(1u, 16474u, 99070u, 18047u)), 4294967295u, Struct_1(vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec2<bool>(true, false), -607f, false, vec4<u32>(45384u, 8368u, 41388u, 44636u))));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(round(arg_1.c));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c)), arg_3.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(453f + _wgslsmith_f_op_f32(round(arg_0.b.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f)));
    var_0 = 1711f;
    var_0 = -125f;
    return ~global2.x;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, global0.x) & 1u, 4294967295u, ~1u, func_3(Struct_2(u_input.d.wx, Struct_1(vec3<i32>(u_input.a, -4945i, 1i), vec2<bool>(true, false), 110f, arg_0, u_input.d), u_input.b, Struct_1(vec3<i32>(-1i, u_input.a, u_input.a), vec2<bool>(arg_0, false), -700f, false, u_input.d)), Struct_1(vec3<i32>(-2147483647i, 2147483647i, -2147483647i), vec2<bool>(arg_0, arg_0), 126f, arg_0, vec4<u32>(1u, 0u, 4955u, global2.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 572f, 722f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(486f, -1539f, 164f, -1681f)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(global2.x, 4294967295u, 0u, u_input.d.x), ~_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(global2.x, global2.x, u_input.b, 4294967295u))));
    let var_1 = Struct_1(-vec3<i32>(u_input.c, 16381i, ~_wgslsmith_clamp_i32(u_input.c, -78350i, -2147483647i)), select(!(!vec2<bool>(arg_0, false)), vec2<bool>(false, all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), true))), !all(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1095f)) - -709f), _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-380f + 828f) - -104f))))), true, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 2490u, 0u, var_0.x) >> (vec4<u32>(2513u, 80059u, 1u, 0u) % vec4<u32>(32u)), abs(u_input.d)), u_input.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, var_0.x ^ u_input.d.x, var_0.x ^ var_0.x, _wgslsmith_sub_u32(global2.x, global0.x)), vec4<u32>(1u, _wgslsmith_mult_u32(global0.x, 4294967295u), ~global2.x, global2.x), vec4<u32>(var_0.x, global0.x, u_input.d.x, func_3(Struct_2(vec2<u32>(var_0.x, global2.x), Struct_1(vec3<i32>(-13194i, -15918i, u_input.c), vec2<bool>(arg_0, false), 596f, true, u_input.d), u_input.b, Struct_1(vec3<i32>(u_input.a, 36860i, -25671i), vec2<bool>(arg_0, true), -1000f, arg_0, u_input.d)), Struct_1(vec3<i32>(u_input.c, u_input.a, u_input.c), vec2<bool>(arg_0, arg_0), -552f, true, vec4<u32>(u_input.b, 1u, 50412u, global0.x)), vec3<f32>(1030f, 1257f, 1000f), vec4<f32>(-192f, -100f, 445f, -2630f))))));
    var var_2 = Struct_1(var_1.a, !(!var_1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c), 920f)), arg_0, _wgslsmith_mult_vec4_u32(u_input.d, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, global2.x, 8666u) << (var_0 % vec4<u32>(32u)), vec4<u32>(43734u, 53852u, var_0.x, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 36077u, 1242u, 86913u), var_0))));
    var var_3 = var_1;
    var_2 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.a, ~vec3<i32>(var_2.a.x, 24020i, var_2.a.x), var_3.a & vec3<i32>(0i, var_2.a.x, var_1.a.x)) >> (var_1.e.wzz % vec3<u32>(32u)), -(~max(var_1.a, vec3<i32>(12755i, u_input.c, 75371i)))), select(var_2.b, select(vec2<bool>(true | var_2.d, all(vec2<bool>(false, true))), vec2<bool>(arg_0 == false, !var_3.d), !select(var_1.b.x, var_2.b.x, true)), var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f)), select(false, true, var_1.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u & var_3.e.x, 4294967295u), var_2.e.x, _wgslsmith_mod_u32(64585u, var_2.e.x & 4294967295u), var_0.x), vec4<u32>(var_2.e.x, global2.x, 0u, u_input.d.x)));
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, ~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(var_3.e.xzz, var_0.xxz), _wgslsmith_mod_u32(~4294967295u, var_2.e.x), abs(36436u))), 32u)];
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: u32) -> Struct_2 {
    let var_0 = 1000f;
    let var_1 = func_2(false);
    var var_2 = func_2(true);
    var var_3 = vec2<u32>(_wgslsmith_clamp_u32(1u, ~firstLeadingBit(global2.x), abs(4294967295u)) << (u_input.b % 32u), 0u);
    let var_4 = -(~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(1i, arg_1.x, -2147483647i, var_1.b.a.x)), ~arg_1), arg_1 ^ -vec4<i32>(1720i, 1i, 2147483647i, u_input.c)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~u_input.d.x), firstLeadingBit(-(vec4<i32>(-1i) * -vec4<i32>(0i, u_input.c, u_input.c, u_input.c))), !vec3<bool>(true, false, _wgslsmith_mod_u32(60598u, global2.x) >= 4294967295u), global2.x | u_input.d.x);
    var var_1 = Struct_2(~countOneBits(~vec2<u32>(0u, 41064u)), func_1(func_1(var_0.d.e.x, -(~vec4<i32>(1i, 0i, var_0.d.a.x, 0i)), vec3<bool>(var_0.d.d, func_1(u_input.d.x, vec4<i32>(var_0.b.a.x, 2147483647i, -13219i, -60331i), vec3<bool>(false, false, var_0.b.b.x), 0u).b.d, !var_0.b.b.x), ~global0.x).b.e.x, select(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -1i, var_0.d.a.x, 2978i), vec4<i32>(13232i, var_0.d.a.x, 2147483647i, 1i)), -vec4<i32>(-2147483647i, -49156i, -2147483647i, u_input.a), true), select(select(select(vec3<bool>(var_0.d.d, true, var_0.b.b.x), vec3<bool>(var_0.d.b.x, true, true), vec3<bool>(var_0.b.b.x, var_0.b.d, var_0.b.d)), vec3<bool>(var_0.d.d, false, var_0.d.d), vec3<bool>(var_0.b.b.x, false, true)), select(!vec3<bool>(var_0.b.b.x, var_0.b.d, true), vec3<bool>(true, true, true), var_0.b.d), (var_0.d.c <= -345f) | (1302f == var_0.b.c)), global2.x).d, min(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), var_0.d.e.zw), global0.x), var_0.b);
    var var_2 = 1119f;
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c) + _wgslsmith_div_f32(var_1.b.c, var_0.d.c)))));
    let var_3 = 1i;
    var var_4 = vec2<u32>(~_wgslsmith_div_u32(18612u, var_0.a.x), ~(33851u >> (global2.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-376f, var_4.x, u_input.d);
}

