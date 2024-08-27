struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_1(-1i, vec2<bool>(true, false), false, vec4<i32>(-44965i, 45833i, -1i, 8142i), true), vec3<f32>(-782f, -2054f, -456f)), Struct_3(Struct_1(8268i, vec2<bool>(true, false), false, vec4<i32>(17167i, -1146i, -1i, -1i), true), vec3<f32>(-2446f, -810f, 1309f)), Struct_3(Struct_1(-14705i, vec2<bool>(false, false), false, vec4<i32>(51181i, 0i, 12208i, -15449i), true), vec3<f32>(1000f, 193f, 860f)), Struct_3(Struct_1(2147483647i, vec2<bool>(true, false), true, vec4<i32>(-38081i, -10466i, -1i, 1i), false), vec3<f32>(358f, 494f, -1724f)), Struct_3(Struct_1(0i, vec2<bool>(false, false), true, vec4<i32>(0i, 45809i, 0i, 14914i), true), vec3<f32>(-624f, -1401f, 1309f)), Struct_3(Struct_1(-1i, vec2<bool>(true, false), true, vec4<i32>(0i, 0i, -1i, 0i), true), vec3<f32>(2484f, -1000f, -680f)), Struct_3(Struct_1(-5945i, vec2<bool>(true, true), true, vec4<i32>(-3732i, -5996i, -1i, 0i), true), vec3<f32>(766f, 890f, -1316f)), Struct_3(Struct_1(1i, vec2<bool>(true, true), true, vec4<i32>(2147483647i, -29146i, -65597i, 45009i), true), vec3<f32>(-354f, -262f, 817f)), Struct_3(Struct_1(912i, vec2<bool>(true, false), false, vec4<i32>(-448i, 0i, 1i, 2227i), false), vec3<f32>(-1161f, 397f, -1151f)), Struct_3(Struct_1(33937i, vec2<bool>(false, true), false, vec4<i32>(26939i, 0i, 60715i, -41392i), true), vec3<f32>(678f, -645f, 1249f)), Struct_3(Struct_1(-9322i, vec2<bool>(true, true), false, vec4<i32>(2147483647i, -9470i, 28687i, 10951i), true), vec3<f32>(261f, 423f, 776f)), Struct_3(Struct_1(2147483647i, vec2<bool>(true, true), true, vec4<i32>(1i, -1i, 1i, 53276i), false), vec3<f32>(1808f, -1141f, 2544f)), Struct_3(Struct_1(i32(-2147483648), vec2<bool>(false, true), true, vec4<i32>(5990i, 49594i, -7408i, -5690i), false), vec3<f32>(324f, 1999f, 1000f)), Struct_3(Struct_1(9847i, vec2<bool>(true, true), false, vec4<i32>(2147483647i, 1i, -43753i, 2147483647i), false), vec3<f32>(1928f, -478f, -531f)), Struct_3(Struct_1(1i, vec2<bool>(false, true), true, vec4<i32>(50702i, 0i, 21648i, 0i), true), vec3<f32>(1000f, 158f, -656f)), Struct_3(Struct_1(-25973i, vec2<bool>(false, false), false, vec4<i32>(-1i, -1i, i32(-2147483648), i32(-2147483648)), true), vec3<f32>(-494f, 1000f, -1000f)), Struct_3(Struct_1(i32(-2147483648), vec2<bool>(true, true), true, vec4<i32>(1i, -1i, -1i, -47169i), true), vec3<f32>(-1817f, 1062f, -657f)), Struct_3(Struct_1(1i, vec2<bool>(false, false), true, vec4<i32>(-6216i, -20875i, 2147483647i, 32369i), true), vec3<f32>(-1000f, -680f, 709f)), Struct_3(Struct_1(2147483647i, vec2<bool>(false, true), true, vec4<i32>(38131i, 2147483647i, 29320i, 92185i), false), vec3<f32>(-654f, -225f, 1000f)), Struct_3(Struct_1(i32(-2147483648), vec2<bool>(false, true), true, vec4<i32>(i32(-2147483648), i32(-2147483648), 46772i, 0i), false), vec3<f32>(187f, -1677f, 392f)), Struct_3(Struct_1(0i, vec2<bool>(false, true), false, vec4<i32>(52394i, 1i, -6457i, -54834i), false), vec3<f32>(-725f, 1160f, 1537f)), Struct_3(Struct_1(i32(-2147483648), vec2<bool>(false, false), true, vec4<i32>(-5955i, -50122i, 1i, -28426i), true), vec3<f32>(2119f, 809f, -1570f)), Struct_3(Struct_1(-65814i, vec2<bool>(true, true), false, vec4<i32>(1i, -15453i, 19003i, 43064i), false), vec3<f32>(1000f, 1076f, -200f)), Struct_3(Struct_1(i32(-2147483648), vec2<bool>(true, true), true, vec4<i32>(-16074i, -17336i, 0i, -1i), false), vec3<f32>(-2274f, 2254f, -702f)), Struct_3(Struct_1(8891i, vec2<bool>(true, false), false, vec4<i32>(24008i, 38293i, 2147483647i, 2147483647i), false), vec3<f32>(-512f, 971f, -520f)), Struct_3(Struct_1(0i, vec2<bool>(true, true), false, vec4<i32>(i32(-2147483648), 1i, 1i, -1i), false), vec3<f32>(197f, 1069f, 833f)), Struct_3(Struct_1(-1i, vec2<bool>(true, true), true, vec4<i32>(-54800i, 0i, -25264i, -10643i), false), vec3<f32>(-1000f, -1028f, -131f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    var var_0 = abs(_wgslsmith_sub_vec4_i32(reverseBits(-vec4<i32>(0i, -1i, u_input.d, u_input.b.x)), vec4<i32>(global1.a.a, global1.a.d.x, global1.a.d.x, global1.a.a) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.d, 2147483647i, -4083i), vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.d)))) >> (firstLeadingBit(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(global0.x, u_input.e, 10209u, 1u), vec4<u32>(44061u, 1u, 1u, global0.x), vec4<bool>(arg_2.x, arg_2.x, global1.a.e, true)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, global0.x) >> (vec4<u32>(124884u, u_input.a, 15437u, u_input.e) % vec4<u32>(32u)), vec4<u32>(24266u, global0.x, 4294967295u, global0.x) & vec4<u32>(0u, 11790u, global0.x, 1u)))) % vec4<u32>(32u));
    let var_1 = arg_2;
    var_0 = u_input.b;
    global2 = array<Struct_3, 27>();
    global2 = array<Struct_3, 27>();
    return ~global0.x;
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> u32 {
    return ~arg_3.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> vec3<u32> {
    global1 = global2[_wgslsmith_index_u32(arg_0.x ^ (u_input.e << (((func_3(Struct_3(Struct_1(-1i, vec2<bool>(false, global1.a.b.x), global1.a.c, vec4<i32>(-16681i, arg_1.a, 32885i, 39563i), arg_1.c), vec3<f32>(arg_3, global1.b.x, 166f)), arg_3, vec4<u32>(u_input.a, 4294967295u, 1259u, arg_0.x), arg_0.zwz) << (global0.x % 32u)) & max(u_input.a, u_input.a)) % 32u)), 27u)];
    var var_0 = !select(vec4<bool>(all(vec4<bool>(false, false, arg_1.b.x, false)) || any(vec3<bool>(true, true, true)), u_input.a != ~43349u, arg_2.x, true != select(true, false, arg_1.e)), vec4<bool>(true, arg_2.x, arg_2.x, true), any(vec3<bool>(!arg_2.x, arg_2.x, true)));
    var var_1 = 4294967295u;
    let var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(countOneBits(22581u) << (func_3(global2[_wgslsmith_index_u32(arg_0.x, 27u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -502f))), max(firstLeadingBit(arg_0), firstTrailingBit(vec4<u32>(0u, global0.x, global0.x, global0.x))), arg_0.xzw) % 32u)), 27u)];
    global2 = array<Struct_3, 27>();
    return vec3<u32>(1u, u_input.e, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0.zx);
    global0 = ~(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(global0.x, var_0.a.x, 55001u)), abs(vec3<u32>(var_0.a.x, u_input.a, 20807u)) & (vec3<u32>(45446u, 0u, u_input.e) | vec3<u32>(var_0.a.x, global0.x, 0u)), vec3<u32>(func_1(-602f, 521f, global1.a.b), _wgslsmith_div_u32(u_input.e, u_input.a), 11426u | var_0.a.x)) | _wgslsmith_add_vec3_u32(~reverseBits(vec3<u32>(90464u, 1u, 9875u)), ~func_2(vec4<u32>(0u, global0.x, var_0.a.x, var_0.a.x), Struct_1(0i, vec2<bool>(global1.a.b.x, global1.a.e), true, u_input.b, global1.a.e), global1.a.b, global1.b.x)));
    let var_1 = true;
    var var_2 = global1.a.e;
    var var_3 = any(!vec4<bool>(_wgslsmith_f_op_f32(sign(global1.b.x)) >= -704f, global1.a.e, global1.a.e, select(var_1, all(vec3<bool>(true, var_1, var_1)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((countOneBits(global1.a.d) ^ (vec4<i32>(8166i, global1.a.d.x, -27643i, 1i) ^ global1.a.d)) ^ vec4<i32>(global1.a.d.x, global1.a.a, min(u_input.d, -57451i), -2147483647i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-954f, 720f)), _wgslsmith_f_op_f32(abs(global1.b.x)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)))), vec3<f32>(_wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.x)) * 1f), var_1)), global1.b.x, _wgslsmith_f_op_f32(global1.b.x - -1578f)), vec4<u32>(5953u, global0.x, _wgslsmith_clamp_u32(~4294967295u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(9929u, var_0.a.x, global0.x), vec3<u32>(var_0.a.x, global0.x, u_input.a))), _wgslsmith_sub_u32(var_0.a.x, reverseBits(u_input.e))) & _wgslsmith_div_vec4_u32(~vec4<u32>(18368u, 0u, u_input.a, 56799u), firstLeadingBit(reverseBits(vec4<u32>(4294967295u, u_input.a, u_input.e, 38460u)))));
}

