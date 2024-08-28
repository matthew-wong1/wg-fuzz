struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
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

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<u32>(29490u, 1u), vec4<u32>(471u, 0u, 0u, 14686u), vec3<i32>(1i, -58112i, 25954i), vec3<bool>(true, true, false)), Struct_1(vec2<u32>(21674u, 0u), vec4<u32>(1u, 4294967295u, 1u, 5595u), vec3<i32>(0i, -19029i, -1023i), vec3<bool>(false, true, false)), Struct_1(vec2<u32>(6133u, 1u), vec4<u32>(62942u, 1u, 1u, 1126u), vec3<i32>(-58930i, -11366i, 1i), vec3<bool>(false, false, true)), Struct_1(vec2<u32>(18736u, 1u), vec4<u32>(1u, 1u, 4294967295u, 1774u), vec3<i32>(i32(-2147483648), -29285i, -12451i), vec3<bool>(false, false, true)), Struct_1(vec2<u32>(32989u, 9977u), vec4<u32>(1258u, 32203u, 0u, 4294967295u), vec3<i32>(0i, -35146i, -1i), vec3<bool>(true, false, false)), Struct_1(vec2<u32>(0u, 0u), vec4<u32>(4294967295u, 17394u, 1u, 44473u), vec3<i32>(2147483647i, 2147483647i, -1i), vec3<bool>(false, true, true)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(3868u, 18513u, 4294967295u, 1u), vec3<i32>(-50002i, 0i, 1i), vec3<bool>(false, true, true)), Struct_1(vec2<u32>(6929u, 58962u), vec4<u32>(15781u, 28141u, 1u, 32635u), vec3<i32>(2147483647i, -9461i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_1(vec2<u32>(1u, 0u), vec4<u32>(22571u, 0u, 0u, 11405u), vec3<i32>(14638i, 26942i, 32843i), vec3<bool>(false, true, false)), Struct_1(vec2<u32>(44215u, 87568u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec3<i32>(2147483647i, -7325i, 4202i), vec3<bool>(false, true, false)), Struct_1(vec2<u32>(12264u, 87304u), vec4<u32>(16221u, 4294967295u, 76503u, 14210u), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<bool>(true, true, true)), Struct_1(vec2<u32>(0u, 7249u), vec4<u32>(1u, 0u, 7678u, 42053u), vec3<i32>(-1i, 0i, 2993i), vec3<bool>(true, false, true)), Struct_1(vec2<u32>(1u, 45720u), vec4<u32>(31621u, 4294967295u, 1u, 34943u), vec3<i32>(i32(-2147483648), i32(-2147483648), -10805i), vec3<bool>(true, true, true)), Struct_1(vec2<u32>(101746u, 4183u), vec4<u32>(44555u, 4294967295u, 4294967295u, 4294967295u), vec3<i32>(17203i, 33237i, 677i), vec3<bool>(false, false, true)), Struct_1(vec2<u32>(71312u, 0u), vec4<u32>(1515u, 4294967295u, 26470u, 26391u), vec3<i32>(-1889i, -66043i, -566i), vec3<bool>(true, true, true)), Struct_1(vec2<u32>(0u, 22419u), vec4<u32>(47489u, 54078u, 63504u, 0u), vec3<i32>(48619i, 12609i, -30893i), vec3<bool>(false, true, false)), Struct_1(vec2<u32>(11324u, 3855u), vec4<u32>(1667u, 1u, 0u, 1u), vec3<i32>(-1i, 0i, -38237i), vec3<bool>(false, false, true)));

var<private> global2: Struct_3;

var<private> global3: array<Struct_1, 9>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: i32) -> vec3<i32> {
    let var_0 = Struct_5(Struct_1(~vec2<u32>(0u, select(4294967295u, global2.d.b.a.x, global2.c.b.d.x)), firstLeadingBit(abs(global2.e.b)), global2.c.b.c, select(!(!global2.d.b.d), global2.e.d, global2.b.d)), vec3<u32>(abs(58167u >> (1u % 32u)), firstTrailingBit(~(~u_input.c)), 0u), ~min(~41408u, select(~global2.e.b.x, _wgslsmith_add_u32(u_input.c, 0u), true)));
    global1 = array<Struct_1, 17>();
    var var_1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(15440u, 1u), var_0.a.a), ~var_0.a.a.x, 4294967295u), 0u, 1u), vec4<u32>(u_input.a, var_0.b.x, var_0.a.a.x, 0u));
    global3 = array<Struct_1, 9>();
    var_1 = reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(global2.b.b), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c, global2.b.a.x, var_0.c), var_0.a.b)), ~var_0.a.b));
    return global2.b.c;
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = ~_wgslsmith_add_i32(u_input.b.x, u_input.b.x);
    return u_input.b.x;
}

fn func_2(arg_0: vec3<f32>) -> Struct_4 {
    global2 = Struct_3(~vec2<i32>(~func_3(vec2<i32>(-24798i, global2.d.b.c.x), -1i, global3[_wgslsmith_index_u32(4294967295u, 9u)], arg_0.x), func_1(-145i).x), Struct_1(global2.c.b.b.zz, global2.e.b, global2.e.c, global2.d.b.d), Struct_2(reverseBits(2370u), Struct_1(select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.a), global2.b.b.wx), firstTrailingBit(global2.d.b.b.zy), select(true, false, false)), global2.b.b, (u_input.b >> (global2.e.b.xzz % vec3<u32>(32u))) | (u_input.b | u_input.b), !global2.d.b.d)), Struct_2(101087u ^ ~_wgslsmith_div_u32(global2.b.a.x, u_input.a), global2.b), global3[_wgslsmith_index_u32(global2.d.b.a.x, 9u)]);
    var var_0 = arg_0.x;
    let var_1 = global2.d;
    var var_2 = Struct_4(global3[_wgslsmith_index_u32(firstTrailingBit(30065u), 9u)], Struct_3(~global2.b.c.yz, Struct_1(vec2<u32>(var_1.a, 4294967295u), select(~var_1.b.b, max(var_1.b.b, global2.d.b.b), vec4<bool>(false, var_1.b.d.x, true, false)), reverseBits(global2.e.c), !(!var_1.b.d)), global2.d, Struct_2(~(~global2.b.a.x), Struct_1(~var_1.b.b.zw, vec4<u32>(7310u, 0u, var_1.a, 4294967295u) >> (global2.e.b % vec4<u32>(32u)), -u_input.b, select(global2.d.b.d, vec3<bool>(var_1.b.d.x, true, var_1.b.d.x), false))), Struct_1(min(vec2<u32>(var_1.a, u_input.c) & vec2<u32>(0u, var_1.b.b.x), ~vec2<u32>(0u, 0u)), _wgslsmith_clamp_vec4_u32(var_1.b.b, ~var_1.b.b, vec4<u32>(16863u, u_input.c, 15636u, var_1.a)), var_1.b.c, var_1.b.d)), Struct_1(_wgslsmith_div_vec2_u32(firstLeadingBit(reverseBits(var_1.b.b.wy)), ~(vec2<u32>(var_1.a, var_1.b.b.x) & global2.d.b.b.xz)), vec4<u32>(~(45593u | global2.d.a), min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.b.b.x), vec2<u32>(74305u, global2.d.a)), u_input.a), 66977u, 69934u), u_input.b, global2.d.b.d));
    var var_3 = firstLeadingBit(var_1.b.a);
    return Struct_4(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(~var_3.x << (4294967295u % 32u), _wgslsmith_dot_vec4_u32(firstLeadingBit(global2.c.b.b), _wgslsmith_mod_vec4_u32(var_2.b.b.b, var_2.a.b))), 70221u), 9u)], Struct_3(~vec2<i32>(_wgslsmith_mod_i32(0i, 2147483647i), global2.e.c.x >> (var_3.x % 32u)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.b.b.xz, vec2<u32>(var_1.b.b.x, select(var_2.b.b.a.x, u_input.a, false))), 9u)], Struct_2(~u_input.c, global2.b), Struct_2(_wgslsmith_clamp_u32(select(global2.c.a, var_3.x, true), abs(var_3.x), 34586u), var_1.b), Struct_1(vec2<u32>(max(13872u, 4294967295u), 83302u), ~(vec4<u32>(var_3.x, u_input.a, global2.e.b.x, global2.e.a.x) >> (vec4<u32>(59399u, 1u, 28022u, 20773u) % vec4<u32>(32u))), select(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 1i, -2147483647i), vec3<i32>(241i, 41866i, var_2.c.c.x)), var_1.b.c, var_1.b.d), vec3<bool>(true, true, var_2.a.c.x != u_input.b.x))), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2070f;
    var var_1 = reverseBits(_wgslsmith_sub_vec3_i32(global2.b.c, func_1(-3494i)) >> (_wgslsmith_mult_vec3_u32(global2.c.b.b.xwz, global2.d.b.b.wyx) % vec3<u32>(32u)));
    global3 = array<Struct_1, 9>();
    var var_2 = global2.d.b.d;
    let var_3 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-666f, global0.x, global0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.zzx - vec3<f32>(global0.x, -328f, -453f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xwy), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-735f, -215f, global0.x), global0.yxw))))));
    var_0 = -806f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

