struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

var<private> global1: Struct_4 = Struct_4(vec4<bool>(false, true, false, false), vec2<u32>(1u, 41227u), vec3<f32>(374f, -1136f, 872f));

var<private> global2: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(0u, 0u, 58285u, 4294967295u), vec4<u32>(59471u, 43815u, 33607u, 11299u), vec4<u32>(0u, 6863u, 80620u, 82307u), vec4<u32>(1u, 6144u, 44388u, 32170u), vec4<u32>(0u, 28650u, 0u, 1u), vec4<u32>(44779u, 611u, 0u, 1u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 34830u, 4294967295u, 73069u), vec4<u32>(7712u, 1u, 4294967295u, 50929u), vec4<u32>(4294967295u, 4294967295u, 5518u, 3094u), vec4<u32>(0u, 0u, 1838u, 0u), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 73456u, 0u, 1u), vec4<u32>(21268u, 1u, 51565u, 0u), vec4<u32>(82709u, 52528u, 4294967295u, 1u), vec4<u32>(13709u, 6172u, 70239u, 4294967295u), vec4<u32>(4294967295u, 25382u, 0u, 4294967295u), vec4<u32>(19586u, 0u, 4294967295u, 55254u), vec4<u32>(0u, 15922u, 0u, 30357u), vec4<u32>(8929u, 4294967295u, 10565u, 1u), vec4<u32>(11958u, 7200u, 21039u, 34190u), vec4<u32>(8742u, 0u, 4294967295u, 40885u), vec4<u32>(9844u, 11161u, 1u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 18256u), vec4<u32>(4294967295u, 70091u, 45962u, 83464u), vec4<u32>(0u, 4294967295u, 1u, 54502u), vec4<u32>(4294967295u, 510u, 0u, 1u), vec4<u32>(61482u, 114018u, 1u, 0u), vec4<u32>(1u, 4294967295u, 52534u, 4294967295u), vec4<u32>(14245u, 12438u, 10056u, 86666u), vec4<u32>(4294967295u, 20856u, 68864u, 1u));

var<private> global3: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(i32(-2147483648), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 0u), 1u), vec4<i32>(-37441i, 0i, -9773i, 1i)), Struct_3(-1i, Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 27867u), 4190u), vec4<i32>(27266i, -1047i, 47680i, 69732i)), Struct_3(-72490i, Struct_1(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), 4294967295u), vec4<i32>(-1i, 1i, 34001i, 1i)), Struct_3(-9149i, Struct_1(vec4<u32>(14260u, 0u, 4617u, 28640u), 31337u), vec4<i32>(15157i, -22157i, 2147483647i, 2147483647i)), Struct_3(2147483647i, Struct_1(vec4<u32>(5020u, 0u, 87950u, 4294967295u), 0u), vec4<i32>(53183i, 46334i, -72311i, 48991i)), Struct_3(-38994i, Struct_1(vec4<u32>(71988u, 9737u, 4294967295u, 33559u), 4294967295u), vec4<i32>(15518i, 0i, 0i, -1i)), Struct_3(2147483647i, Struct_1(vec4<u32>(1u, 1u, 89010u, 7213u), 56646u), vec4<i32>(-30318i, -1i, 12338i, -55768i)), Struct_3(0i, Struct_1(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), 44862u), vec4<i32>(i32(-2147483648), -12298i, 29479i, 12186i)), Struct_3(-10131i, Struct_1(vec4<u32>(2105u, 4294967295u, 69339u, 67472u), 0u), vec4<i32>(21049i, -1i, -22435i, 0i)), Struct_3(15897i, Struct_1(vec4<u32>(0u, 34268u, 77769u, 0u), 54616u), vec4<i32>(7894i, -5292i, 2147483647i, -1i)), Struct_3(2147483647i, Struct_1(vec4<u32>(66056u, 4294967295u, 79892u, 22173u), 4294967295u), vec4<i32>(-4452i, 0i, -53071i, 2147483647i)), Struct_3(i32(-2147483648), Struct_1(vec4<u32>(69968u, 93048u, 10636u, 12758u), 1u), vec4<i32>(11920i, 2147483647i, -1i, i32(-2147483648))), Struct_3(1i, Struct_1(vec4<u32>(1u, 4294967295u, 39327u, 26971u), 23548u), vec4<i32>(39903i, -4656i, 1i, -32152i)), Struct_3(i32(-2147483648), Struct_1(vec4<u32>(21019u, 1u, 26389u, 0u), 58969u), vec4<i32>(-1i, 1i, 16840i, 17886i)), Struct_3(7473i, Struct_1(vec4<u32>(1u, 1u, 4294967295u, 5515u), 1u), vec4<i32>(1i, 0i, -1i, -7726i)), Struct_3(1i, Struct_1(vec4<u32>(1u, 64345u, 15273u, 34626u), 4294967295u), vec4<i32>(-18948i, 1i, i32(-2147483648), 2188i)), Struct_3(17750i, Struct_1(vec4<u32>(1u, 42033u, 8050u, 4294967295u), 36227u), vec4<i32>(i32(-2147483648), -1i, 1i, -24564i)), Struct_3(-6017i, Struct_1(vec4<u32>(1u, 2293u, 39206u, 1u), 14610u), vec4<i32>(-1i, 1i, 1i, -22609i)), Struct_3(-5444i, Struct_1(vec4<u32>(30211u, 4294967295u, 0u, 4294967295u), 60457u), vec4<i32>(-22354i, 2147483647i, i32(-2147483648), -16296i)), Struct_3(i32(-2147483648), Struct_1(vec4<u32>(1u, 4294967295u, 34132u, 4294967295u), 81136u), vec4<i32>(2147483647i, -5183i, -9919i, i32(-2147483648))), Struct_3(44646i, Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 41887u), 38024u), vec4<i32>(-42738i, 1i, -8936i, i32(-2147483648))), Struct_3(2577i, Struct_1(vec4<u32>(0u, 0u, 52581u, 23686u), 43109u), vec4<i32>(-1i, i32(-2147483648), -18526i, 2147483647i)), Struct_3(-7155i, Struct_1(vec4<u32>(4294967295u, 1u, 11470u, 1u), 4294967295u), vec4<i32>(13986i, 2147483647i, 40016i, 14501i)), Struct_3(-178i, Struct_1(vec4<u32>(1u, 0u, 57246u, 1u), 0u), vec4<i32>(-12666i, 5835i, -24855i, 1819i)), Struct_3(2147483647i, Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 47908u), 786u), vec4<i32>(37367i, 45326i, -24090i, 1i)), Struct_3(1i, Struct_1(vec4<u32>(1u, 0u, 0u, 0u), 70751u), vec4<i32>(41622i, 16108i, -43325i, 951i)));

var<private> global4: Struct_4 = Struct_4(vec4<bool>(false, false, true, false), vec2<u32>(1u, 4294967295u), vec3<f32>(1000f, -725f, 1599f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(false, true, global4.a.x), !(!(!global4.a.xzx)), vec3<bool>(!global4.a.x && !select(global1.a.x, global4.a.x, true), global1.a.x, !(!global4.a.x)));
    var var_1 = -firstTrailingBit(vec4<i32>(-22600i, _wgslsmith_mod_i32(-34936i & u_input.c.x, 1i), countOneBits(reverseBits(6446i)), 61979i));
    global0 = array<Struct_3, 24>();
    var_1 = vec4<i32>(-2147483647i, var_1.x | 0i, u_input.c.x, 0i);
    var var_2 = firstLeadingBit(u_input.c);
    var var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) + global4.c.x));
    let var_5 = global1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-u_input.d, 2147483647i, 1i), _wgslsmith_clamp_i32(abs(u_input.c.x), -countOneBits(var_2.x) & var_1.x, ~var_2.x));
}

