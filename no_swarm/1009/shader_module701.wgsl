struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(1u, 33675u, 14042u), vec3<u32>(0u, 1u, 33525u), vec3<u32>(0u, 66677u, 36470u), vec3<u32>(59054u, 19710u, 10400u), vec3<u32>(3058u, 1u, 0u), vec3<u32>(1u, 37079u, 41422u), vec3<u32>(4294967295u, 2329u, 34799u), vec3<u32>(11186u, 39567u, 73105u), vec3<u32>(0u, 27u, 32004u), vec3<u32>(0u, 65659u, 4294967295u), vec3<u32>(1771u, 0u, 37188u), vec3<u32>(4294967295u, 18340u, 4294967295u), vec3<u32>(17315u, 61755u, 1u), vec3<u32>(17971u, 1u, 6396u), vec3<u32>(4294967295u, 27388u, 0u), vec3<u32>(4294967295u, 62520u, 1u), vec3<u32>(56407u, 1127u, 1723u), vec3<u32>(4294967295u, 1u, 25728u), vec3<u32>(0u, 50508u, 1u), vec3<u32>(10968u, 4294967295u, 4294967295u), vec3<u32>(27338u, 16292u, 36698u), vec3<u32>(1u, 1u, 19411u), vec3<u32>(91262u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(34960u, 0u, 9821u), vec3<u32>(4294967295u, 1u, 11028u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 1u));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(73429i, 35771i, i32(-2147483648)), vec3<i32>(32006i, -26746i, -20360i), vec3<bool>(false, true, true)), vec2<i32>(-1i, -53023i), Struct_1(vec3<i32>(i32(-2147483648), 1i, 51103i), vec3<i32>(-45822i, i32(-2147483648), -1i), vec3<bool>(false, false, true)));

var<private> global2: vec4<i32> = vec4<i32>(659i, 1i, -61555i, 1i);

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(37670i, 20484i, 1i), vec3<bool>(true, false, false)), vec2<i32>(i32(-2147483648), -23000i), Struct_1(vec3<i32>(-61333i, 48159i, i32(-2147483648)), vec3<i32>(-36211i, 2147483647i, 0i), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<i32>(45404i, 91501i, -37172i), vec3<i32>(23746i, 5938i, 1i), vec3<bool>(false, true, false)), vec2<i32>(1i, 23081i), Struct_1(vec3<i32>(1574i, 5062i, -17554i), vec3<i32>(-26659i, 2147483647i, 1i), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(-10725i, 27568i, 0i), vec3<i32>(-899i, i32(-2147483648), 1i), vec3<bool>(true, false, true)), vec2<i32>(-3865i, 20026i), Struct_1(vec3<i32>(41263i, 2147483647i, 2147483647i), vec3<i32>(12515i, i32(-2147483648), 14198i), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec3<i32>(14849i, -16546i, -1i), vec3<i32>(-1i, -8182i, 2147483647i), vec3<bool>(true, false, true)), vec2<i32>(1i, 54737i), Struct_1(vec3<i32>(-51953i, 1i, -32661i), vec3<i32>(22143i, 0i, 524i), vec3<bool>(false, true, true))), Struct_2(Struct_1(vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(1i, -1i, -1i), vec3<bool>(true, false, false)), vec2<i32>(1i, -1i), Struct_1(vec3<i32>(i32(-2147483648), -1i, 53277i), vec3<i32>(54413i, -5932i, 25554i), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec3<i32>(79208i, -29692i, -9915i), vec3<i32>(-15392i, i32(-2147483648), -48747i), vec3<bool>(true, true, true)), vec2<i32>(-28380i, 2147483647i), Struct_1(vec3<i32>(0i, 1i, 0i), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<bool>(true, true, false))), Struct_2(Struct_1(vec3<i32>(0i, 1i, 13921i), vec3<i32>(-8076i, 0i, 1i), vec3<bool>(false, true, false)), vec2<i32>(-34426i, -34198i), Struct_1(vec3<i32>(21577i, 28018i, 16842i), vec3<i32>(-5364i, 18779i, -1i), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, -14156i), vec3<i32>(1i, i32(-2147483648), 1i), vec3<bool>(true, false, false)), vec2<i32>(34646i, -1i), Struct_1(vec3<i32>(-1i, i32(-2147483648), 11725i), vec3<i32>(0i, 1i, 2147483647i), vec3<bool>(true, true, false))), Struct_2(Struct_1(vec3<i32>(-47060i, 0i, 1i), vec3<i32>(37986i, 5144i, -62544i), vec3<bool>(false, false, true)), vec2<i32>(-11152i, 0i), Struct_1(vec3<i32>(i32(-2147483648), 9725i, -49426i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(-20501i, 0i, -1i), vec3<i32>(-1i, -500i, 18714i), vec3<bool>(false, false, false)), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec3<i32>(18722i, -6747i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -22630i, -1i), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<i32>(363i, 14736i, 2147483647i), vec3<i32>(-5686i, 1i, -700i), vec3<bool>(true, true, false)), vec2<i32>(1i, 20302i), Struct_1(vec3<i32>(1694i, -1i, 32444i), vec3<i32>(2147483647i, 46861i, 12206i), vec3<bool>(false, true, true))), Struct_2(Struct_1(vec3<i32>(-8182i, -46177i, -20787i), vec3<i32>(2147483647i, 25413i, 1i), vec3<bool>(true, false, false)), vec2<i32>(2147483647i, -1i), Struct_1(vec3<i32>(-14604i, 1i, -1i), vec3<i32>(-4210i, -31807i, -15557i), vec3<bool>(false, false, false))), Struct_2(Struct_1(vec3<i32>(23473i, -11980i, 6789i), vec3<i32>(-1i, 11653i, i32(-2147483648)), vec3<bool>(true, false, true)), vec2<i32>(1i, 39708i), Struct_1(vec3<i32>(0i, 1087i, i32(-2147483648)), vec3<i32>(-1i, 48377i, 0i), vec3<bool>(false, true, true))), Struct_2(Struct_1(vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(1i, -4062i, -20973i), vec3<bool>(true, true, true)), vec2<i32>(2147483647i, -1i), Struct_1(vec3<i32>(-22268i, 6435i, 2147483647i), vec3<i32>(-25007i, -1i, 11403i), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec3<i32>(2147483647i, -1i, -1493i), vec3<i32>(-7829i, -17197i, -18511i), vec3<bool>(true, true, true)), vec2<i32>(-18675i, -47324i), Struct_1(vec3<i32>(i32(-2147483648), 1i, 10402i), vec3<i32>(-22317i, i32(-2147483648), -11807i), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec3<i32>(24325i, -1i, 6766i), vec3<i32>(19369i, -1i, 38348i), vec3<bool>(true, false, true)), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(vec3<i32>(5803i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-11206i, 0i, -17707i), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec3<i32>(-44264i, 0i, 1i), vec3<i32>(-14621i, 21538i, -18885i), vec3<bool>(true, false, false)), vec2<i32>(-38376i, -1i), Struct_1(vec3<i32>(-39966i, 74045i, 8274i), vec3<i32>(1i, -59622i, -63615i), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<i32>(1i, -1855i, 17422i), vec3<i32>(38735i, -1i, -5319i), vec3<bool>(true, false, true)), vec2<i32>(i32(-2147483648), -1i), Struct_1(vec3<i32>(0i, 28980i, 2139i), vec3<i32>(52835i, 44339i, 1i), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<i32>(0i, -1i, -1i), vec3<i32>(-23516i, -1441i, 2147483647i), vec3<bool>(true, false, false)), vec2<i32>(i32(-2147483648), 46431i), Struct_1(vec3<i32>(0i, 19450i, 37076i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(1i, -1i, 0i), vec3<i32>(12796i, 0i, -1i), vec3<bool>(false, true, true)), vec2<i32>(12665i, -7416i), Struct_1(vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(22277i, -32099i, 14827i), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec3<i32>(1i, 48381i, 18150i), vec3<i32>(-32377i, -14998i, -670i), vec3<bool>(true, false, false)), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(vec3<i32>(-4375i, 1i, 6034i), vec3<i32>(19801i, -1i, 1i), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec3<i32>(24443i, -26900i, 4505i), vec3<i32>(-14340i, 1i, 17547i), vec3<bool>(true, true, true)), vec2<i32>(1i, -35433i), Struct_1(vec3<i32>(1i, 4494i, 1i), vec3<i32>(-3950i, 66546i, -25964i), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec3<i32>(30103i, 2147483647i, 1i), vec3<i32>(-13927i, 5289i, -1i), vec3<bool>(true, true, true)), vec2<i32>(-12995i, 2147483647i), Struct_1(vec3<i32>(2147483647i, 46662i, -45008i), vec3<i32>(-19174i, 62007i, 2147483647i), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), 13852i), vec3<i32>(-1i, -1i, 1i), vec3<bool>(true, true, true)), vec2<i32>(-49252i, -1i), Struct_1(vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(7007i, -14335i, -30539i), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec3<i32>(-1i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 34304i, 24838i), vec3<bool>(true, false, false)), vec2<i32>(0i, 0i), Struct_1(vec3<i32>(1i, 0i, 21435i), vec3<i32>(2147483647i, -1i, -24791i), vec3<bool>(false, false, false))), Struct_2(Struct_1(vec3<i32>(-8715i, -9448i, -73440i), vec3<i32>(-26365i, -17583i, i32(-2147483648)), vec3<bool>(true, true, false)), vec2<i32>(16783i, 1i), Struct_1(vec3<i32>(1i, -1i, 14846i), vec3<i32>(i32(-2147483648), -8743i, 0i), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(27531i, 116428i, 0i), vec3<bool>(false, false, true)), vec2<i32>(2147483647i, -22100i), Struct_1(vec3<i32>(20272i, 2147483647i, 0i), vec3<i32>(-1i, 2147483647i, 7540i), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec3<i32>(0i, -1i, 11064i), vec3<i32>(1i, -75531i, -36860i), vec3<bool>(true, true, false)), vec2<i32>(-42053i, 1i), Struct_1(vec3<i32>(36007i, -1i, 2147483647i), vec3<i32>(2147483647i, 51281i, i32(-2147483648)), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(-1i, 0i, 0i), vec3<i32>(-11660i, 2147483647i, 56841i), vec3<bool>(false, false, true)), vec2<i32>(-10319i, -16864i), Struct_1(vec3<i32>(-1i, 23264i, i32(-2147483648)), vec3<i32>(2147483647i, -67773i, -1i), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(26485i, -4539i, i32(-2147483648)), vec3<i32>(66135i, 0i, -33577i), vec3<bool>(true, false, false)), vec2<i32>(0i, 1i), Struct_1(vec3<i32>(21366i, -34167i, 2147483647i), vec3<i32>(-1i, 2147483647i, -18093i), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(-61548i, 0i, 2147483647i), vec3<i32>(-18403i, 2147483647i, -49445i), vec3<bool>(false, false, false)), vec2<i32>(81536i, 1i), Struct_1(vec3<i32>(2147483647i, -1i, 22369i), vec3<i32>(0i, -20205i, 1475i), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(-47502i, -1i, -1i), vec3<i32>(i32(-2147483648), 46994i, -1i), vec3<bool>(true, false, false)), vec2<i32>(-20573i, 1464i), Struct_1(vec3<i32>(6071i, 57863i, -1i), vec3<i32>(2147483647i, 16359i, i32(-2147483648)), vec3<bool>(true, true, false))));

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_1(firstTrailingBit(~abs(global2.wyx)), global2.wyx, vec3<bool>(true, !(!any(vec3<bool>(false, arg_0.x, true))), all(select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(global1.c.c.x, false, true, true), vec4<bool>(global1.c.c.x, global1.a.c.x, true, false))) && arg_0.x));
    let var_1 = global1.c;
    let var_2 = Struct_2(global1.c, ~var_0.b.xz, global1.a);
    var var_3 = _wgslsmith_mult_vec4_u32(abs(~firstTrailingBit(~vec4<u32>(38633u, 47668u, 123196u, 4294967295u))), vec4<u32>(~abs(1u), 117950u, 1u, _wgslsmith_add_u32(~(14789u >> (1u % 32u)), 0u)));
    let var_4 = global1.a;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(35295u, 4294967295u, var_3.x), ~vec3<u32>(var_3.x, var_3.x, 1u)), 36992u), 32775u), vec2<u32>(_wgslsmith_dot_vec4_u32(select(select(vec4<u32>(var_3.x, var_3.x, var_3.x, 12897u), vec4<u32>(5792u, 6215u, var_3.x, var_3.x), vec4<bool>(true, true, arg_0.x, var_0.c.x)), select(vec4<u32>(var_3.x, var_3.x, 4294967295u, var_3.x), vec4<u32>(var_3.x, 34472u, var_3.x, 6696u), true), true), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, var_3.x, 55439u, 10515u), vec4<u32>(4294967295u, 72274u, 0u, 14742u))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, ~var_3.x, _wgslsmith_clamp_u32(var_3.x, var_3.x, var_3.x)), global0[_wgslsmith_index_u32(46102u, 29u)])));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1196f, 641f), vec2<f32>(-328f, 118f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1502f, -930f), vec2<f32>(-322f, -428f))), vec2<f32>(1038f, 1973f), arg_0)))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(46707u, ~func_3(select(vec3<bool>(true, true, false), global1.c.c, false), _wgslsmith_f_op_f32(min(224f, var_0.x)), var_0) << ((select(~27645u, 1u, any(global1.c.c.yy)) >> (firstTrailingBit(~20304u) % 32u)) % 32u), firstTrailingBit(_wgslsmith_add_u32(func_3(vec3<bool>(global1.c.c.x, global1.c.c.x, true), -1374f, vec2<f32>(389f, -565f)), 1u) | 1u)), 32u)];
    let var_2 = var_1.b;
    global4 = array<Struct_1, 24>();
    let var_3 = ~(~(~countOneBits(vec2<u32>(1u, 1u))));
    return !select(vec4<bool>(!(!var_1.a.c.x), !arg_0, global1.a.c.x, all(select(global1.c.c, global1.a.c, var_1.c.c.x))), select(select(vec4<bool>(global1.a.c.x, arg_0, true, var_1.a.c.x), vec4<bool>(var_1.a.c.x, true, var_1.c.c.x, false), select(vec4<bool>(global1.c.c.x, false, true, true), vec4<bool>(true, true, arg_0, global1.c.c.x), vec4<bool>(arg_0, global1.c.c.x, true, global1.a.c.x))), vec4<bool>(true, !global1.c.c.x, !arg_0, false), !(!vec4<bool>(true, true, var_1.c.c.x, false))), false);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    let var_0 = select(!select(!select(vec4<bool>(global1.a.c.x, arg_0, true, arg_0), vec4<bool>(false, true, arg_0, arg_1.x), vec4<bool>(global1.c.c.x, global1.c.c.x, true, global1.a.c.x)), !(!vec4<bool>(arg_0, true, arg_1.x, true)), !(!vec4<bool>(true, arg_1.x, false, global1.a.c.x))), select(func_2(false), vec4<bool>(any(vec3<bool>(false, false, true)), true, true, true), vec4<bool>(!all(vec3<bool>(global1.a.c.x, arg_0, false)), !arg_1.x, !arg_0, true)), vec4<bool>(false, select(true, func_2(false).x, _wgslsmith_f_op_f32(-739f + 1826f) < _wgslsmith_f_op_f32(trunc(-527f))), true, !all(global1.a.c)));
    global1 = global3[_wgslsmith_index_u32(reverseBits(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 31024u), vec2<u32>(0u, 30725u)), vec2<u32>(~11313u, ~31415u))), 32u)];
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_vec3_i32(global1.a.a << (_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(76601u, 29u)]) % vec3<u32>(32u)), vec3<i32>(26147i, -26468i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 0i, -1i), vec3<i32>(global2.x, global1.b.x, 2147483647i)))), global2.zxw, vec3<bool>(true, func_2(false).x, true)), min(vec2<i32>(-2147483647i, -25950i >> (select(7017u, 0u, global1.c.c.x) % 32u)), global1.a.a.yx), Struct_1(countOneBits(vec3<i32>(~0i, -u_input.a, -19374i)), global2.zyz << (vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u)), global1.c.c));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-505f, 566f, 511f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(235f, -1019f, 641f), vec3<f32>(-904f, 613f, 174f))), any(vec3<bool>(var_0.x, var_1.a.c.x, global1.c.c.x))))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1127f, -411f, _wgslsmith_f_op_f32(-1575f + -2216f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-916f, -1591f, -590f) - vec3<f32>(-579f, 948f, -1222f)), vec3<f32>(417f, -927f, 841f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1066f, -359f, 223f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(522f, 634f, -1000f), vec3<f32>(1881f, 304f, 140f))))));
    let var_3 = global1.c;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(~_wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, 0i, u_input.a), global1.a.a) & countOneBits(-vec3<i32>(global2.x, -12248i, u_input.a)), _wgslsmith_add_vec3_i32(-vec3<i32>(global1.c.a.x, -19785i, u_input.a) ^ vec3<i32>(global1.c.b.x, -15004i, global1.c.a.x), ~global1.a.a), vec3<bool>(global1.c.c.x, false, global1.c.c.x)), ~(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global2.x), vec2<i32>(u_input.a, u_input.a), global2.xw))), Struct_1(-(global2.wzy & (global1.a.b >> (vec3<u32>(1u, 33484u, 36591u) % vec3<u32>(32u)))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(17652i, -2147483647i, global1.b.x), select(global2.yzz, vec3<i32>(-2147483647i, global2.x, u_input.a), vec3<bool>(false, false, global1.c.c.x))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.a.b.x, -1i, -75355i), global1.a.a, vec3<i32>(1171i, global1.c.b.x, global2.x)), vec3<i32>(-14469i, 0i, 0i), vec3<bool>(true, global1.a.c.x, global1.c.c.x))), vec3<bool>(select(true, global1.a.c.x, !global1.c.c.x), any(vec2<bool>(global1.c.c.x, false)), global1.c.c.x)));
    var var_0 = 188f;
    var var_1 = _wgslsmith_clamp_vec3_u32(~global0[_wgslsmith_index_u32(12134u, 29u)], abs(vec3<u32>(~22863u << (func_1(global1.a.c.x, vec2<bool>(false, global1.a.c.x)) % 32u), reverseBits(0u << (0u % 32u)), ~35924u)), vec3<u32>(1u, 0u, func_1(global1.c.c.x, vec2<bool>(any(global1.a.c.zy), !global1.c.c.x))));
    var var_2 = global4[_wgslsmith_index_u32(~var_1.x, 24u)];
    let var_3 = ~(vec4<i32>(u_input.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, global2.x), var_2.b), -1i, _wgslsmith_mult_i32(global1.c.a.x, var_2.b.x << (4294967295u % 32u))) ^ -vec4<i32>(global2.x, var_2.b.x, _wgslsmith_mod_i32(global1.a.a.x, var_2.b.x), 625i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(global2.yw, (vec2<i32>(var_2.a.x, -40807i) | global2.yw) ^ (max(vec2<i32>(u_input.a, 2147483647i), global2.wx) ^ ~vec2<i32>(-27652i, var_2.a.x))), vec4<i32>(-u_input.a, global2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(0i), var_3.x, 27095i), vec3<i32>(_wgslsmith_add_i32(var_3.x, 44633i), ~(-2147483647i), _wgslsmith_mod_i32(var_3.x, -23858i))), abs(var_3.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(-1123f - _wgslsmith_f_op_f32(-325f + 1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1393f * 1f))), _wgslsmith_f_op_f32(ceil(-448f))));
}

