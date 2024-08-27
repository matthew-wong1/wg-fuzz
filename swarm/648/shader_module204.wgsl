struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec4<i32>(-99400i, 0i, 19769i, 2147483647i), Struct_1(vec3<bool>(true, true, false), 1000f, vec3<f32>(-844f, -381f, -911f), false, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false), -521f, vec3<f32>(-193f, -175f, 677f), true, vec3<bool>(true, false, false))), Struct_2(vec4<i32>(-26744i, 2147483647i, 7159i, -45646i), Struct_1(vec3<bool>(true, false, false), 1103f, vec3<f32>(589f, -812f, 193f), true, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true), -2508f, vec3<f32>(740f, 1511f, 174f), true, vec3<bool>(false, false, true))), Struct_2(vec4<i32>(-22995i, -16084i, -11264i, 2147483647i), Struct_1(vec3<bool>(true, true, false), -204f, vec3<f32>(542f, 136f, -846f), false, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true), -492f, vec3<f32>(-456f, 871f, 1000f), true, vec3<bool>(false, false, true))), Struct_2(vec4<i32>(-36048i, -38696i, 19887i, 38398i), Struct_1(vec3<bool>(false, true, true), -881f, vec3<f32>(-990f, 373f, 1494f), true, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false), -1000f, vec3<f32>(1115f, 235f, -1001f), true, vec3<bool>(true, true, false))), Struct_2(vec4<i32>(5254i, i32(-2147483648), 10460i, 19665i), Struct_1(vec3<bool>(false, true, true), -1000f, vec3<f32>(-1053f, -1000f, -1000f), false, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false), 535f, vec3<f32>(1254f, 486f, 677f), false, vec3<bool>(false, false, true))), Struct_2(vec4<i32>(0i, 1i, 0i, 1i), Struct_1(vec3<bool>(false, false, false), -132f, vec3<f32>(-1546f, 1267f, -330f), false, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true), 1157f, vec3<f32>(383f, -1748f, -1916f), true, vec3<bool>(false, true, true))), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -47264i), Struct_1(vec3<bool>(false, false, true), 203f, vec3<f32>(1797f, 1518f, 225f), true, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false), -207f, vec3<f32>(-1097f, -1353f, -689f), false, vec3<bool>(false, true, true))), Struct_2(vec4<i32>(42010i, -3983i, 60170i, -1i), Struct_1(vec3<bool>(false, false, true), 1451f, vec3<f32>(-880f, -859f, 1000f), true, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false), 769f, vec3<f32>(-1156f, 426f, 501f), false, vec3<bool>(false, true, false))), Struct_2(vec4<i32>(-1i, 1163i, -1i, 60178i), Struct_1(vec3<bool>(false, false, true), -1536f, vec3<f32>(-252f, 796f, -410f), true, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true), 1660f, vec3<f32>(-882f, -1902f, 961f), false, vec3<bool>(true, false, false))), Struct_2(vec4<i32>(14192i, 2147483647i, 2147483647i, -1i), Struct_1(vec3<bool>(false, false, false), -945f, vec3<f32>(839f, 515f, 132f), true, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false), -236f, vec3<f32>(947f, -570f, 469f), true, vec3<bool>(true, false, false))), Struct_2(vec4<i32>(i32(-2147483648), -11998i, 8033i, 12356i), Struct_1(vec3<bool>(false, true, false), 204f, vec3<f32>(-325f, -1601f, -993f), false, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false), 125f, vec3<f32>(311f, -365f, 1000f), false, vec3<bool>(true, false, false))), Struct_2(vec4<i32>(i32(-2147483648), -1i, 2147483647i, 53939i), Struct_1(vec3<bool>(true, true, false), 235f, vec3<f32>(-389f, 187f, -1057f), true, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true), 1188f, vec3<f32>(1066f, -1021f, 366f), false, vec3<bool>(true, false, true))), Struct_2(vec4<i32>(2147483647i, -45231i, -6067i, 2147483647i), Struct_1(vec3<bool>(false, true, true), 1000f, vec3<f32>(-733f, 1101f, -485f), false, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false), 348f, vec3<f32>(-1018f, 555f, -1384f), true, vec3<bool>(false, true, true))), Struct_2(vec4<i32>(33531i, -20761i, 10358i, 2147483647i), Struct_1(vec3<bool>(true, false, false), -145f, vec3<f32>(539f, -339f, -246f), true, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false), -837f, vec3<f32>(-581f, 1000f, 974f), false, vec3<bool>(false, false, false))), Struct_2(vec4<i32>(-39820i, 2147483647i, -3700i, -22218i), Struct_1(vec3<bool>(true, true, false), -259f, vec3<f32>(-1456f, 192f, 258f), true, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false), 1876f, vec3<f32>(-108f, 1080f, 1281f), true, vec3<bool>(true, false, false))), Struct_2(vec4<i32>(-24692i, i32(-2147483648), 10814i, 27729i), Struct_1(vec3<bool>(false, false, true), -628f, vec3<f32>(273f, 1966f, -1000f), false, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true), -394f, vec3<f32>(-558f, -1688f, 166f), false, vec3<bool>(true, false, false))), Struct_2(vec4<i32>(-1i, 2147483647i, -30327i, 1i), Struct_1(vec3<bool>(true, false, true), 419f, vec3<f32>(-129f, 1715f, -522f), false, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false), -168f, vec3<f32>(1945f, -1225f, -913f), false, vec3<bool>(true, true, true))), Struct_2(vec4<i32>(2147483647i, -1i, -25873i, 1i), Struct_1(vec3<bool>(false, false, true), 615f, vec3<f32>(746f, -339f, -1000f), true, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true), 561f, vec3<f32>(610f, -1241f, -214f), true, vec3<bool>(false, false, false))), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 63120i), Struct_1(vec3<bool>(true, false, true), 426f, vec3<f32>(368f, -170f, 1250f), false, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true), 236f, vec3<f32>(1184f, -1745f, 789f), true, vec3<bool>(false, true, true))), Struct_2(vec4<i32>(-9276i, -1i, 1i, -57898i), Struct_1(vec3<bool>(false, false, false), 384f, vec3<f32>(529f, 474f, -441f), false, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false), -979f, vec3<f32>(424f, 746f, 974f), true, vec3<bool>(true, true, true))), Struct_2(vec4<i32>(-11783i, 0i, i32(-2147483648), 2147483647i), Struct_1(vec3<bool>(true, false, false), -498f, vec3<f32>(464f, -239f, -2346f), true, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, false), -599f, vec3<f32>(1349f, -1151f, -715f), true, vec3<bool>(true, true, true))), Struct_2(vec4<i32>(31010i, -13655i, -4535i, -1i), Struct_1(vec3<bool>(true, false, false), 333f, vec3<f32>(-775f, -578f, -780f), true, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true), -680f, vec3<f32>(-774f, -247f, -754f), true, vec3<bool>(true, false, false))), Struct_2(vec4<i32>(0i, 1i, 1i, -15903i), Struct_1(vec3<bool>(false, true, true), 1525f, vec3<f32>(801f, -844f, 280f), true, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, true), -826f, vec3<f32>(-681f, 1180f, -1000f), true, vec3<bool>(true, true, false))), Struct_2(vec4<i32>(1669i, i32(-2147483648), 24586i, 7192i), Struct_1(vec3<bool>(true, false, true), 1088f, vec3<f32>(-1000f, 371f, -1000f), true, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true), -326f, vec3<f32>(745f, -204f, 555f), false, vec3<bool>(true, true, true))), Struct_2(vec4<i32>(-1i, -70018i, -26377i, -22408i), Struct_1(vec3<bool>(true, true, true), -2045f, vec3<f32>(357f, 588f, 514f), true, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false), -420f, vec3<f32>(-800f, -624f, -1316f), false, vec3<bool>(true, true, true))), Struct_2(vec4<i32>(1i, -63109i, i32(-2147483648), 2147483647i), Struct_1(vec3<bool>(false, true, false), 392f, vec3<f32>(2242f, 617f, 2798f), true, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true), -130f, vec3<f32>(457f, 657f, -165f), true, vec3<bool>(false, false, true))), Struct_2(vec4<i32>(-1i, -1i, -29823i, -32910i), Struct_1(vec3<bool>(true, true, true), 1087f, vec3<f32>(416f, -1261f, 698f), false, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, true), 708f, vec3<f32>(-692f, -855f, -465f), true, vec3<bool>(true, true, false))), Struct_2(vec4<i32>(44167i, i32(-2147483648), -9160i, 22400i), Struct_1(vec3<bool>(true, true, true), -767f, vec3<f32>(143f, -992f, -1385f), false, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false), -282f, vec3<f32>(461f, 1757f, -1000f), true, vec3<bool>(false, true, false))), Struct_2(vec4<i32>(i32(-2147483648), 1i, 0i, 24531i), Struct_1(vec3<bool>(false, true, true), -390f, vec3<f32>(-885f, -2018f, 487f), true, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false), 153f, vec3<f32>(654f, 1000f, -867f), false, vec3<bool>(true, false, false))), Struct_2(vec4<i32>(1i, -55698i, 53693i, -16178i), Struct_1(vec3<bool>(false, false, true), -1295f, vec3<f32>(-1698f, -661f, 1000f), true, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false), 291f, vec3<f32>(584f, -241f, -238f), false, vec3<bool>(false, false, true))), Struct_2(vec4<i32>(-1i, 2147483647i, 0i, 10751i), Struct_1(vec3<bool>(true, true, false), -1651f, vec3<f32>(139f, -1000f, -106f), false, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true), -1232f, vec3<f32>(1164f, -303f, -309f), false, vec3<bool>(true, true, true))));

var<private> global2: u32;

var<private> global3: vec3<i32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = Struct_4(Struct_2(-_wgslsmith_sub_vec4_i32(select(vec4<i32>(1i, u_input.a, global3.x, global3.x), vec4<i32>(-35008i, -31789i, global3.x, u_input.a), false), vec4<i32>(u_input.a, 0i, global3.x, 0i)), Struct_1(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), -113f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-348f, 170f, 345f) + vec3<f32>(-1371f, 150f, -1000f))), false, !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(287f, -1995f) + -368f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(312f, -1000f, 992f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-399f, 217f, -1678f), vec3<f32>(-313f, -240f, 1001f), false)))), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec3<bool>(true, true, true))), -vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2660i, u_input.a), vec3<i32>(39772i, u_input.a, u_input.a)), (u_input.a ^ -31689i) >> (u_input.b.x % 32u)), global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32((arg_0 << (arg_0 % vec2<u32>(32u))) & vec2<u32>(42188u, arg_0.x), firstTrailingBit(vec2<u32>(1u, 0u))), arg_0.x), 31u)]);
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, firstTrailingBit(4294967295u) & (~1u << (~4294967295u % 32u))), 31u)], (_wgslsmith_div_vec2_i32(var_0.a.a.xw, _wgslsmith_clamp_vec2_i32(global3.yy, var_0.b, var_0.c.a.xz)) << (~(~u_input.b.xy) % vec2<u32>(32u))) << (vec2<u32>(53607u, ~(~1u)) % vec2<u32>(32u)), Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(-12749i, -var_0.a.a.x, 28810i, _wgslsmith_mult_i32(u_input.a, -1i)), min(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 4866i, -3705i), vec4<i32>(-23591i, u_input.a, var_0.c.a.x, 2147483647i)), _wgslsmith_mult_vec4_i32(var_0.c.a, var_0.c.a))), var_0.a.c, Struct_1(var_0.a.c.a, _wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_vec3_f32(-var_0.c.c.c), !var_0.a.c.d, !vec3<bool>(true, false, var_0.a.b.d))));
    let var_2 = Struct_1(vec3<bool>(var_0.c.b.d && var_0.c.b.a.x, !var_1.c.b.e.x, var_0.c.c.e.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.b.b), -200f))))), vec3<f32>(var_0.a.b.b, _wgslsmith_f_op_f32(sign(576f)), 1137f), true, !var_1.a.b.e);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.c.x)));
    let var_4 = _wgslsmith_add_i32(-abs(_wgslsmith_add_i32(_wgslsmith_div_i32(43492i, 73662i), global3.x >> (1u % 32u))), -(~_wgslsmith_div_i32(-var_0.b.x, 1i)));
    return ~1u;
}

fn func_2() -> vec2<u32> {
    global1 = array<Struct_2, 31>();
    let var_0 = Struct_4(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], vec2<i32>(0i, -(~(-2147483647i))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(func_3(u_input.b.yz ^ vec2<u32>(54654u, 0u))), u_input.b.x, _wgslsmith_sub_u32(19153u, 0u)), 31u)]);
    var var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 31u)];
    global3 = abs(vec3<i32>(~_wgslsmith_div_i32(0i, ~1i), 2147483647i, _wgslsmith_add_i32(u_input.a, i32(-1i) * -15929i)));
    var var_2 = select(!vec2<bool>(any(select(vec2<bool>(var_0.c.c.d, var_1.b.d), var_0.a.b.e.xx, vec2<bool>(var_1.c.a.x, var_1.b.d))), any(var_1.b.e)), !var_1.b.a.zy, !(!(u_input.a != global3.x)) | false);
    return abs(abs(countOneBits(vec2<u32>(~12397u, ~u_input.b.x))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> Struct_3 {
    global2 = min(~131212u, arg_1.x);
    let var_0 = 5519i;
    var var_1 = Struct_2(select(abs(-firstTrailingBit(vec4<i32>(-1i, -1i, global3.x, -2147483647i))), max(vec4<i32>(-45829i, -2147483647i, 26195i, -23419i), vec4<i32>(-2147483647i, 51452i, 0i, -2147483647i) >> (u_input.b % vec4<u32>(32u))) & ~max(vec4<i32>(-56699i, var_0, var_0, 0i), vec4<i32>(global3.x, global3.x, 20979i, 0i)), !vec4<bool>(true, any(vec4<bool>(false, false, true, true)), select(false, false, false), true)), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1594f), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1008f, arg_0, 1410f) - vec3<f32>(arg_0, arg_0, -680f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-632f, 1067f, arg_0), vec3<f32>(arg_0, 800f, 232f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(322f, arg_0, -1665f) - vec3<f32>(arg_0, -1025f, arg_0)))), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), select(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), all(vec3<bool>(false, true, false))), false)), Struct_1(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, arg_0, -219f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1914f, 735f, -969f))))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), true)), vec3<bool>(all(vec4<bool>(true, true, true, true)), !all(vec4<bool>(false, false, false, false)), true)));
    var var_2 = 1u;
    let var_3 = Struct_4(global1[_wgslsmith_index_u32(1u, 31u)], ~vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.a.zxy, -var_1.a.xzy), ~(i32(-1i) * -2147483647i)), Struct_2(firstTrailingBit(-(vec4<i32>(-50382i, -5200i, 4246i, 0i) >> (u_input.b % vec4<u32>(32u)))), Struct_1(var_1.b.e, var_1.b.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c.c) - vec3<f32>(var_1.c.b, arg_0, -332f)), var_1.c.e.x, select(select(vec3<bool>(true, false, var_1.b.a.x), var_1.b.a, true), !vec3<bool>(false, var_1.c.d, var_1.b.d), false)), Struct_1(!var_1.c.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1069f, -1179f)))), _wgslsmith_f_op_vec3_f32(var_1.c.c * var_1.b.c), true, vec3<bool>(false, var_1.b.a.x && var_1.c.a.x, var_1.c.e.x))));
    return Struct_3(_wgslsmith_f_op_f32(-arg_0));
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    global1 = array<Struct_2, 31>();
    let var_0 = abs(global3.xy & vec2<i32>(~select(global3.x, global3.x, true), 19955i));
    global0 = all(!vec4<bool>(false, false, !(u_input.b.x != u_input.b.x), !(u_input.b.x > 56911u)));
    let var_1 = vec3<bool>(firstTrailingBit(4294967295u) < min(arg_0, arg_0 >> (22399u % 32u)), any(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true)), false);
    global2 = u_input.b.x;
    return Struct_1(select(!var_1, select(vec3<bool>(var_1.x | var_1.x, !var_1.x, !var_1.x), vec3<bool>(!var_1.x, true, select(var_1.x, var_1.x, false)), false), any(!(!vec4<bool>(var_1.x, true, var_1.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-579f)) + _wgslsmith_f_op_f32(step(arg_1.a, arg_1.a))), vec3<f32>(arg_1.a, -1258f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) * 878f), vec3<bool>(var_1.x, all(select(var_1.zz, var_1.yz, true)), false));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = func_5(reverseBits(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) << (u_input.b.x % 32u), func_4(_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) + _wgslsmith_f_op_f32(-783f * -569f)))), func_2()));
    var_0 = Struct_1(!vec3<bool>(all(vec4<bool>(false, var_0.a.x, true, false)), !(var_0.e.x & var_0.d), var_0.e.x), -1386f, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1502f - _wgslsmith_div_f32(arg_1.a, arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.x, 606f)), arg_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(907f)), var_0.b)), _wgslsmith_f_op_f32(arg_1.a + var_0.c.x)), var_0.e.x, !(!select(select(vec3<bool>(true, var_0.e.x, var_0.d), vec3<bool>(var_0.d, var_0.a.x, var_0.a.x), false), vec3<bool>(false, var_0.d, false), vec3<bool>(false, var_0.a.x, false))));
    var var_1 = Struct_4(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x) | u_input.b.yz, vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u)), u_input.b.x))), 31u)], select(vec2<i32>(arg_0 >> (0u % 32u), global3.x | _wgslsmith_mult_i32(u_input.a, 2147483647i)), ~_wgslsmith_sub_vec2_i32(select(global3.xy, global3.xx, var_0.e.zz), -global3.xy), any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(var_0.d, var_0.d)))), Struct_2(-max(abs(vec4<i32>(23444i, u_input.a, u_input.a, u_input.a)), vec4<i32>(arg_0, global3.x, u_input.a, 0i)), func_5(0u, Struct_3(-560f)), func_5(_wgslsmith_add_u32(countOneBits(1u), 0u), func_4(_wgslsmith_f_op_f32(round(-388f)), firstTrailingBit(u_input.b.yy)))));
    var var_2 = -2147483647i;
    let var_3 = ~(~4294967295u);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    var var_1 = -1000f;
    var var_2 = func_1(global3.x, Struct_3(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(-1412f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1033f, -721f)));
    var_1 = var_2.c.b;
    let var_3 = func_4(863f, _wgslsmith_mult_vec2_u32(u_input.b.yw, select(~vec2<u32>(var_0, var_0), func_2() & vec2<u32>(25225u, 4294967295u), func_1(i32(-1i) * -1i, Struct_3(var_2.c.b), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.c.b, 113f)))).c.a.yy)));
    var var_4 = func_4(_wgslsmith_f_op_f32(-var_2.c.b), max(u_input.b.ww, _wgslsmith_clamp_vec2_u32(u_input.b.zz & u_input.b.yx, ~(~vec2<u32>(var_0, 0u)), ~min(u_input.b.zw, u_input.b.zw))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) - _wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_f_op_f32(var_3.a * -170f)) * _wgslsmith_f_op_vec2_f32(-var_2.b.c.xz)), ~(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(18337u, var_0), vec2<u32>(69780u, u_input.b.x)), ~vec2<u32>(u_input.b.x, 1u)) & ~(u_input.b.xx | vec2<u32>(4294967295u, 4294967295u))));
}

