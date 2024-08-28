struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<vec4<f32>, 26>;

var<private> global3: vec4<i32>;

var<private> global4: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(744f, Struct_1(vec4<bool>(false, false, true, false), 50354u, vec4<bool>(false, false, true, true), vec2<u32>(4086u, 83739u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, false), 7331u, vec4<bool>(false, true, false, true), vec2<u32>(44394u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, true, false), 59950u, vec4<bool>(true, false, true, false), vec2<u32>(13378u, 4294967295u), vec2<bool>(true, true))), Struct_2(-616f, Struct_1(vec4<bool>(true, false, false, false), 35399u, vec4<bool>(false, false, true, true), vec2<u32>(17913u, 1707u), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, false, false), 0u, vec4<bool>(true, false, false, false), vec2<u32>(51441u, 0u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, true), 22996u, vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 1u), vec2<bool>(true, false))), Struct_2(-877f, Struct_1(vec4<bool>(false, false, true, false), 0u, vec4<bool>(true, true, true, true), vec2<u32>(0u, 18579u), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, false, true), 1u, vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, true, false), 2896u, vec4<bool>(true, true, true, true), vec2<u32>(1u, 37609u), vec2<bool>(true, true))), Struct_2(245f, Struct_1(vec4<bool>(true, true, true, true), 27673u, vec4<bool>(false, true, false, false), vec2<u32>(8353u, 13565u), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, false, false, false), 0u, vec4<bool>(true, true, false, true), vec2<u32>(34277u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, false, true), 52951u, vec4<bool>(false, true, true, false), vec2<u32>(16314u, 2508u), vec2<bool>(false, true))), Struct_2(-2279f, Struct_1(vec4<bool>(false, false, true, true), 0u, vec4<bool>(false, true, true, true), vec2<u32>(1u, 0u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, true, true), 5808u, vec4<bool>(true, true, false, false), vec2<u32>(82937u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, false, true, true), 0u, vec4<bool>(true, false, true, true), vec2<u32>(1u, 43488u), vec2<bool>(true, false))), Struct_2(-1528f, Struct_1(vec4<bool>(true, true, true, false), 77861u, vec4<bool>(true, false, false, true), vec2<u32>(1u, 22519u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, true, true), 8293u, vec4<bool>(true, true, false, false), vec2<u32>(1u, 1u), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, false, false, true), 0u, vec4<bool>(false, false, true, false), vec2<u32>(49577u, 18827u), vec2<bool>(false, true))), Struct_2(-764f, Struct_1(vec4<bool>(true, true, false, true), 32144u, vec4<bool>(false, false, true, false), vec2<u32>(47432u, 1u), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, false, true, false), 6104u, vec4<bool>(true, true, false, false), vec2<u32>(69418u, 1u), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, true, false), 4294967295u, vec4<bool>(true, false, true, true), vec2<u32>(46641u, 17952u), vec2<bool>(true, true))), Struct_2(-311f, Struct_1(vec4<bool>(false, false, true, false), 27704u, vec4<bool>(true, false, true, false), vec2<u32>(1u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, true, false), 4294967295u, vec4<bool>(true, false, false, false), vec2<u32>(0u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, false), 22345u, vec4<bool>(false, false, false, true), vec2<u32>(1u, 1u), vec2<bool>(false, true))), Struct_2(-201f, Struct_1(vec4<bool>(true, false, true, true), 0u, vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 13834u), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, false, true, true), 1u, vec4<bool>(false, false, true, true), vec2<u32>(50556u, 20400u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, true, false, true), 4294967295u, vec4<bool>(true, true, false, false), vec2<u32>(73862u, 4294967295u), vec2<bool>(false, true))), Struct_2(-496f, Struct_1(vec4<bool>(false, false, false, false), 0u, vec4<bool>(true, false, true, false), vec2<u32>(0u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, false, true), 4294967295u, vec4<bool>(true, false, false, true), vec2<u32>(1043u, 915u), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, false, false, true), 61676u, vec4<bool>(false, false, true, true), vec2<u32>(18893u, 27634u), vec2<bool>(false, true))), Struct_2(1685f, Struct_1(vec4<bool>(false, true, true, true), 21767u, vec4<bool>(false, true, false, false), vec2<u32>(30698u, 0u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, false, true, true), 0u, vec4<bool>(true, true, false, false), vec2<u32>(98841u, 4137u), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, false, true, false), 14318u, vec4<bool>(true, false, false, false), vec2<u32>(80583u, 15650u), vec2<bool>(true, false))), Struct_2(-1790f, Struct_1(vec4<bool>(true, false, false, false), 10010u, vec4<bool>(false, true, true, false), vec2<u32>(11254u, 1u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, false, false), 0u, vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, true, true, true), 0u, vec4<bool>(true, false, false, true), vec2<u32>(1u, 0u), vec2<bool>(false, true))), Struct_2(794f, Struct_1(vec4<bool>(false, false, true, true), 4294967295u, vec4<bool>(false, true, true, false), vec2<u32>(25868u, 42668u), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, false, true, true), 4294967295u, vec4<bool>(true, false, true, false), vec2<u32>(0u, 15402u), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, false, false), 4294967295u, vec4<bool>(true, false, true, false), vec2<u32>(0u, 47011u), vec2<bool>(true, true))), Struct_2(-317f, Struct_1(vec4<bool>(true, false, false, false), 21301u, vec4<bool>(false, false, false, false), vec2<u32>(15788u, 0u), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, true, false), 0u, vec4<bool>(false, false, true, false), vec2<u32>(6098u, 0u), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, true), 11719u, vec4<bool>(false, true, false, false), vec2<u32>(54179u, 4294967295u), vec2<bool>(true, false))), Struct_2(693f, Struct_1(vec4<bool>(false, true, true, true), 4294967295u, vec4<bool>(true, false, true, false), vec2<u32>(0u, 99477u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, false, true, true), 4294967295u, vec4<bool>(true, false, false, true), vec2<u32>(1u, 87193u), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, false, false), 1u, vec4<bool>(false, true, true, true), vec2<u32>(16277u, 34050u), vec2<bool>(false, true))), Struct_2(507f, Struct_1(vec4<bool>(true, false, false, true), 34057u, vec4<bool>(false, false, true, true), vec2<u32>(73972u, 1u), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, true, false), 4294967295u, vec4<bool>(true, false, true, true), vec2<u32>(1u, 63778u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, false), 39328u, vec4<bool>(true, false, true, true), vec2<u32>(0u, 31441u), vec2<bool>(true, true))), Struct_2(-1773f, Struct_1(vec4<bool>(true, true, false, true), 4294967295u, vec4<bool>(true, true, true, true), vec2<u32>(40276u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, true, true, false), 1u, vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 8118u), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, false, false), 1u, vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 13039u), vec2<bool>(true, false))), Struct_2(1367f, Struct_1(vec4<bool>(false, false, false, true), 0u, vec4<bool>(true, true, true, true), vec2<u32>(0u, 0u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, true, true, true), 27755u, vec4<bool>(true, true, false, false), vec2<u32>(12464u, 0u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, true, true, false), 45958u, vec4<bool>(true, true, false, true), vec2<u32>(73877u, 4294967295u), vec2<bool>(false, true))), Struct_2(-481f, Struct_1(vec4<bool>(false, true, true, true), 0u, vec4<bool>(true, false, false, false), vec2<u32>(0u, 25785u), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, true, true, true), 4294967295u, vec4<bool>(false, false, true, true), vec2<u32>(86382u, 28684u), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, true, true), 48099u, vec4<bool>(false, false, false, false), vec2<u32>(35827u, 45468u), vec2<bool>(true, true))), Struct_2(-1929f, Struct_1(vec4<bool>(false, false, true, false), 4877u, vec4<bool>(false, false, false, false), vec2<u32>(17183u, 0u), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, false, false), 28687u, vec4<bool>(true, false, true, true), vec2<u32>(20069u, 0u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, false), 0u, vec4<bool>(true, false, true, true), vec2<u32>(0u, 0u), vec2<bool>(false, true))), Struct_2(-201f, Struct_1(vec4<bool>(false, false, true, false), 0u, vec4<bool>(false, true, true, true), vec2<u32>(0u, 6507u), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, false, false), 0u, vec4<bool>(true, true, false, true), vec2<u32>(27553u, 0u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, false, true), 35281u, vec4<bool>(true, true, true, false), vec2<u32>(78646u, 1u), vec2<bool>(false, true))), Struct_2(573f, Struct_1(vec4<bool>(false, true, true, true), 39217u, vec4<bool>(true, true, false, false), vec2<u32>(75877u, 0u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, false, true, true), 0u, vec4<bool>(false, false, true, true), vec2<u32>(6266u, 1u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, false), 54452u, vec4<bool>(false, true, true, true), vec2<u32>(51709u, 29593u), vec2<bool>(true, true))), Struct_2(-459f, Struct_1(vec4<bool>(false, false, true, true), 0u, vec4<bool>(true, true, false, true), vec2<u32>(28802u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, false), 37207u, vec4<bool>(true, false, false, false), vec2<u32>(31859u, 78122u), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, true), 0u, vec4<bool>(false, false, false, false), vec2<u32>(59292u, 1u), vec2<bool>(false, false))), Struct_2(276f, Struct_1(vec4<bool>(true, false, true, false), 0u, vec4<bool>(false, true, true, true), vec2<u32>(33604u, 0u), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, true, true, false), 0u, vec4<bool>(true, false, false, false), vec2<u32>(1u, 1u), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, false, true), 0u, vec4<bool>(true, true, true, true), vec2<u32>(7979u, 3855u), vec2<bool>(true, false))), Struct_2(-584f, Struct_1(vec4<bool>(true, false, false, true), 14193u, vec4<bool>(true, true, false, false), vec2<u32>(28895u, 1u), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, true, true, true), 1u, vec4<bool>(false, true, false, true), vec2<u32>(55116u, 10124u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, true, false), 60543u, vec4<bool>(false, true, true, false), vec2<u32>(17434u, 1u), vec2<bool>(true, true))), Struct_2(-414f, Struct_1(vec4<bool>(true, true, true, false), 14182u, vec4<bool>(true, true, true, true), vec2<u32>(11957u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, false), 0u, vec4<bool>(true, true, false, false), vec2<u32>(78225u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, false), 4294967295u, vec4<bool>(true, false, false, true), vec2<u32>(24255u, 66417u), vec2<bool>(false, false))), Struct_2(2188f, Struct_1(vec4<bool>(false, true, false, false), 1u, vec4<bool>(true, false, true, false), vec2<u32>(24417u, 23506u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, false, false), 14129u, vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, false, false), 4294967295u, vec4<bool>(false, false, false, true), vec2<u32>(49445u, 22914u), vec2<bool>(true, true))), Struct_2(-2237f, Struct_1(vec4<bool>(true, true, false, false), 0u, vec4<bool>(false, true, true, false), vec2<u32>(31944u, 0u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, true, true, true), 1u, vec4<bool>(true, true, false, true), vec2<u32>(0u, 1u), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, false, false), 20681u, vec4<bool>(true, true, false, true), vec2<u32>(45565u, 43866u), vec2<bool>(false, true))), Struct_2(531f, Struct_1(vec4<bool>(true, true, true, false), 0u, vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, true, false), 4294967295u, vec4<bool>(false, true, false, true), vec2<u32>(0u, 41584u), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, false, false), 4294967295u, vec4<bool>(false, false, false, false), vec2<u32>(0u, 1u), vec2<bool>(false, false))), Struct_2(487f, Struct_1(vec4<bool>(true, false, true, true), 23140u, vec4<bool>(true, false, false, false), vec2<u32>(23318u, 32656u), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, false, false), 40851u, vec4<bool>(false, true, true, true), vec2<u32>(29354u, 1u), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, false, false), 26144u, vec4<bool>(true, true, true, false), vec2<u32>(87192u, 2335u), vec2<bool>(false, true))), Struct_2(1000f, Struct_1(vec4<bool>(true, false, false, false), 45829u, vec4<bool>(true, false, false, false), vec2<u32>(40777u, 9451u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, false, false), 1u, vec4<bool>(true, true, false, true), vec2<u32>(0u, 0u), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, true), 10614u, vec4<bool>(true, false, false, false), vec2<u32>(42555u, 6713u), vec2<bool>(true, false))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = ~_wgslsmith_mult_vec2_u32(~vec2<u32>(~u_input.a.x, _wgslsmith_clamp_u32(46806u, 0u, 60760u)), _wgslsmith_add_vec2_u32(~vec2<u32>(15043u, u_input.a.x), u_input.a.xx));
    let var_1 = -2147483647i;
    return 87879u;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> bool {
    var var_0 = arg_3;
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    global3 = ~(reverseBits(select(vec4<i32>(-26944i, global3.x, 1i, 2147483647i), vec4<i32>(global3.x, -1i, 47813i, 2147483647i), arg_3.b.c.x)) ^ ~(~vec4<i32>(global3.x, global3.x, u_input.d.x, u_input.b.x))) & _wgslsmith_clamp_vec4_i32(firstLeadingBit(min(vec4<i32>(u_input.b.x, -26224i, 10747i, 0i), vec4<i32>(5022i, 6046i, -1100i, global3.x))) | -(vec4<i32>(u_input.b.x, 26898i, global3.x, 13075i) >> (u_input.a % vec4<u32>(32u))), vec4<i32>(~u_input.c << ((20319u >> (arg_3.b.d.x % 32u)) % 32u), u_input.d.x, global3.x, 0i), vec4<i32>(i32(-1i) * -64784i, u_input.b.x, u_input.b.x, 2147483647i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-331f)) * -533f);
    return all(select(vec2<bool>(true, true), !vec2<bool>(global0.x, var_0.b.c.x), vec2<bool>(all(select(vec2<bool>(arg_1.b.c.x, arg_1.b.c.x), arg_3.b.a.wy, vec2<bool>(false, true))), true)));
}

fn func_2() -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1192f, _wgslsmith_f_op_f32(1112f + _wgslsmith_f_op_f32(max(-1301f, -1502f)))))), Struct_1(select(select(vec4<bool>(true, global0.x, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, global0.x, true, true), vec4<bool>(false, global0.x, global0.x, global0.x)), select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, false, false, global0.x), vec4<bool>(false, false, false, global0.x))), !vec4<bool>(global0.x, false, false, global0.x), all(vec3<bool>(global0.x, global0.x, true))), ~_wgslsmith_clamp_u32(u_input.a.x, func_1(vec2<bool>(false, true)), 15206u), vec4<bool>(true, _wgslsmith_add_i32(-2147483647i, 20001i) == global3.x, any(select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), false)), global0.x), u_input.a.zz >> (~u_input.a.zw % vec2<u32>(32u)), !vec2<bool>(all(vec3<bool>(true, global0.x, global0.x)), global0.x)), ~vec3<u32>(8132u, 1u | u_input.a.x, u_input.a.x), -663f);
    var var_1 = Struct_2(1956f, Struct_1(var_0.b.a, 0u, vec4<bool>(true, select(var_0.b.e.x, !var_0.b.a.x, true), false, (true && global0.x) & func_3(Struct_2(var_0.a, Struct_1(var_0.b.a, var_0.c.x, var_0.b.a, u_input.a.yx, var_0.b.a.xw), var_0.b, var_0.b), var_0, var_0.d, Struct_3(-1000f, global1[_wgslsmith_index_u32(16749u, 9u)], u_input.a.yzy, 739f))), var_0.b.d ^ ~(~vec2<u32>(43378u, u_input.a.x)), vec2<bool>(global0.x, var_0.b.c.x)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, func_1(vec2<bool>(false, var_0.b.e.x))), 1u | u_input.a.x), 9u)], var_0.b);
    let var_2 = vec3<bool>(~global3.x > 23107i, true, !var_0.b.e.x);
    var var_3 = _wgslsmith_clamp_u32(abs(~firstLeadingBit(4294967295u)) >> (_wgslsmith_mod_u32(var_0.b.b, 9283u) % 32u), 28835u, 1u);
    global3 = ~(~(~(-vec4<i32>(global3.x, global3.x, 5617i, 35422i))));
    return (_wgslsmith_add_i32(-reverseBits(global3.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global3.x, -2438i), -u_input.c)) >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u | var_0.c.x, firstLeadingBit(var_1.d.d.x), countOneBits(0u)), 161u, 38706u) % 32u)) >> (var_1.c.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(!vec2<bool>(!global0.x, false));
    var var_1 = u_input.a.zyy;
    global3 = vec4<i32>(i32(-1i) * -func_2(), global3.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(countOneBits(vec2<i32>(0i, u_input.d.x))), vec2<i32>(-2147483647i, global3.x) ^ ~vec2<i32>(u_input.b.x, -39248i)), countOneBits(u_input.b)), 0i);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-633f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-588f, 2221f))))), Struct_1(!select(select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(true, global0.x, global0.x, true), false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(false, global0.x, global0.x, false)), ~min(_wgslsmith_mult_u32(var_1.x, 17039u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1453u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, var_1.x, 21115u))), select(!(!vec4<bool>(true, global0.x, true, global0.x)), !select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<bool>(global0.x, any(vec4<bool>(false, true, true, true)), global0.x, any(vec4<bool>(global0.x, true, true, false)))), var_1.zy, !select(vec2<bool>(true, true), select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), vec2<bool>(false, global0.x)), any(vec2<bool>(true, global0.x)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(40926u, u_input.a.x) & _wgslsmith_clamp_u32(16616u, var_1.x, 1u), var_1.x, func_1(!vec2<bool>(global0.x, global0.x))), u_input.a.yxz, ~abs(vec3<u32>(0u, 63419u, 0u) << (vec3<u32>(u_input.a.x, var_1.x, u_input.a.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)))));
    var_0 = _wgslsmith_dot_vec2_u32(((vec2<u32>(28942u, 0u) >> (vec2<u32>(0u, var_1.x) % vec2<u32>(32u))) ^ firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_2.b.d))) ^ ~reverseBits(var_1.xz & vec2<u32>(24329u, 4294967295u)), var_2.b.d);
    let var_3 = 4632u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(func_1(var_2.b.c.yy) ^ ~(~var_3), var_1.x));
}

