struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<u32>(44914u, 1u), 1000f, vec3<bool>(true, true, true), Struct_1(true, vec4<f32>(-1000f, -594f, -361f, 836f), 4294967295u, vec3<bool>(true, true, false), vec4<u32>(7809u, 62680u, 65221u, 0u))), vec2<bool>(false, false), Struct_1(false, vec4<f32>(-1073f, -995f, 1610f, 991f), 4513u, vec3<bool>(false, false, true), vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)));

var<private> global1: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(vec4<bool>(true, true, false, true), vec3<u32>(35043u, 1u, 16072u), Struct_1(true, vec4<f32>(366f, -1000f, -1029f, -422f), 4164u, vec3<bool>(false, false, true), vec4<u32>(1u, 0u, 0u, 1u)), vec3<u32>(1u, 0u, 1u)), Struct_5(vec4<bool>(false, true, false, false), vec3<u32>(0u, 47611u, 4294967295u), Struct_1(false, vec4<f32>(395f, 1298f, -872f, -1152f), 103205u, vec3<bool>(true, false, false), vec4<u32>(9768u, 111398u, 4294967295u, 4294967295u)), vec3<u32>(1u, 4294967295u, 1u)), Struct_5(vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 29564u, 26174u), Struct_1(false, vec4<f32>(-195f, 169f, -1374f, 443f), 77106u, vec3<bool>(false, true, false), vec4<u32>(1u, 4294967295u, 1031u, 4294967295u)), vec3<u32>(4294967295u, 1u, 40166u)), Struct_5(vec4<bool>(false, false, false, true), vec3<u32>(94835u, 4294967295u, 0u), Struct_1(false, vec4<f32>(1155f, -177f, 1852f, -1437f), 1u, vec3<bool>(false, false, false), vec4<u32>(4294967295u, 1u, 1u, 57720u)), vec3<u32>(29682u, 4294967295u, 65653u)), Struct_5(vec4<bool>(true, false, true, true), vec3<u32>(4294967295u, 62738u, 23665u), Struct_1(true, vec4<f32>(922f, 890f, -904f, 1398f), 4294967295u, vec3<bool>(true, false, true), vec4<u32>(78206u, 24817u, 0u, 62410u)), vec3<u32>(4294967295u, 1u, 1u)), Struct_5(vec4<bool>(false, true, false, true), vec3<u32>(0u, 26691u, 7833u), Struct_1(false, vec4<f32>(1316f, -310f, -1021f, -2032f), 0u, vec3<bool>(true, true, false), vec4<u32>(78291u, 45217u, 1u, 17441u)), vec3<u32>(0u, 0u, 72522u)), Struct_5(vec4<bool>(true, false, true, true), vec3<u32>(30051u, 0u, 4294967295u), Struct_1(false, vec4<f32>(891f, -982f, 877f, 917f), 15375u, vec3<bool>(false, false, false), vec4<u32>(1u, 0u, 10335u, 4294967295u)), vec3<u32>(33045u, 4294967295u, 29194u)), Struct_5(vec4<bool>(true, false, true, false), vec3<u32>(60306u, 171582u, 23841u), Struct_1(true, vec4<f32>(1239f, 679f, -1346f, 1086f), 1u, vec3<bool>(false, true, true), vec4<u32>(28949u, 18014u, 4294967295u, 23272u)), vec3<u32>(22619u, 1386u, 0u)), Struct_5(vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 10031u, 41959u), Struct_1(false, vec4<f32>(-590f, 1763f, -970f, 1052f), 40942u, vec3<bool>(false, false, true), vec4<u32>(45826u, 0u, 60996u, 0u)), vec3<u32>(20881u, 76837u, 1u)), Struct_5(vec4<bool>(false, false, false, false), vec3<u32>(1920u, 4294967295u, 35576u), Struct_1(true, vec4<f32>(1000f, -305f, -280f, -531f), 15725u, vec3<bool>(false, true, true), vec4<u32>(0u, 28079u, 1u, 0u)), vec3<u32>(1u, 16673u, 13284u)), Struct_5(vec4<bool>(false, true, true, true), vec3<u32>(66u, 0u, 4294967295u), Struct_1(false, vec4<f32>(-414f, 145f, -746f, 973f), 30188u, vec3<bool>(false, true, false), vec4<u32>(22897u, 40590u, 0u, 1u)), vec3<u32>(0u, 4294967295u, 0u)), Struct_5(vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 41166u, 0u), Struct_1(false, vec4<f32>(239f, 1062f, 438f, -346f), 22240u, vec3<bool>(true, true, true), vec4<u32>(0u, 4294967295u, 0u, 0u)), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_5(vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 1u, 0u), Struct_1(true, vec4<f32>(-342f, 138f, -1866f, 1257f), 0u, vec3<bool>(true, true, true), vec4<u32>(4294967295u, 0u, 26184u, 0u)), vec3<u32>(57054u, 1u, 4294967295u)), Struct_5(vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 1u, 21657u), Struct_1(true, vec4<f32>(1962f, -2080f, -218f, -2467f), 0u, vec3<bool>(false, false, true), vec4<u32>(1u, 82244u, 1u, 50547u)), vec3<u32>(37314u, 0u, 62225u)), Struct_5(vec4<bool>(false, true, true, false), vec3<u32>(0u, 39523u, 13921u), Struct_1(true, vec4<f32>(-3125f, 1670f, 1900f, 997f), 41664u, vec3<bool>(true, false, false), vec4<u32>(1u, 24408u, 1u, 7078u)), vec3<u32>(13432u, 23538u, 1u)), Struct_5(vec4<bool>(false, false, false, false), vec3<u32>(16283u, 33428u, 55554u), Struct_1(true, vec4<f32>(2427f, 459f, 3089f, 869f), 59746u, vec3<bool>(false, true, false), vec4<u32>(1u, 1u, 40953u, 69586u)), vec3<u32>(41834u, 0u, 984u)), Struct_5(vec4<bool>(false, true, false, false), vec3<u32>(77021u, 13969u, 1u), Struct_1(false, vec4<f32>(-1290f, -852f, 782f, 839f), 91524u, vec3<bool>(true, false, true), vec4<u32>(34241u, 0u, 51495u, 1u)), vec3<u32>(35535u, 1u, 55966u)), Struct_5(vec4<bool>(false, false, true, true), vec3<u32>(0u, 23683u, 4294967295u), Struct_1(true, vec4<f32>(604f, -779f, -660f, 1000f), 1u, vec3<bool>(true, true, true), vec4<u32>(1u, 4294967295u, 31803u, 62601u)), vec3<u32>(40805u, 69510u, 4294967295u)), Struct_5(vec4<bool>(false, true, true, false), vec3<u32>(25303u, 15323u, 0u), Struct_1(false, vec4<f32>(-1000f, -1000f, -1307f, 1000f), 4294967295u, vec3<bool>(true, true, true), vec4<u32>(1u, 55589u, 4294967295u, 4294967295u)), vec3<u32>(20523u, 4174u, 4294967295u)), Struct_5(vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 4294967295u, 12459u), Struct_1(false, vec4<f32>(495f, -208f, -613f, 637f), 4294967295u, vec3<bool>(true, false, false), vec4<u32>(15454u, 59788u, 0u, 85959u)), vec3<u32>(4294967295u, 15823u, 4294967295u)), Struct_5(vec4<bool>(true, true, true, false), vec3<u32>(41065u, 0u, 0u), Struct_1(false, vec4<f32>(-274f, -520f, -1304f, 304f), 4294967295u, vec3<bool>(true, false, false), vec4<u32>(668u, 1u, 0u, 0u)), vec3<u32>(46934u, 44252u, 1u)), Struct_5(vec4<bool>(false, true, true, true), vec3<u32>(66345u, 1347u, 1u), Struct_1(false, vec4<f32>(113f, 587f, 118f, -901f), 84924u, vec3<bool>(true, false, false), vec4<u32>(0u, 0u, 40433u, 40167u)), vec3<u32>(1u, 4294967295u, 42493u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(abs(1953u), global0.c.c | _wgslsmith_div_u32(global0.c.c ^ global0.a.d.c, 0u)), 45454u);
    let var_1 = vec2<i32>(0i | global0.d.x, ~max(arg_1, firstTrailingBit(-1i)));
    let var_2 = firstTrailingBit(~u_input.a);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0.c.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-127f, arg_0.x, 125f, -1104f)))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> Struct_3 {
    var var_0 = reverseBits(_wgslsmith_mult_u32(arg_3, 8776u));
    let var_1 = -1i;
    var var_2 = Struct_2(vec2<u32>(arg_0, arg_3), _wgslsmith_f_op_f32(-arg_1), select(select(!global0.c.d, !global0.c.d, 665f < global0.c.b.x), !vec3<bool>(false, global0.c.d.x, true), global0.a.d.d), global0.a.d);
    var var_3 = abs(49756u);
    var_0 = global0.c.c;
    return Struct_3(Struct_2(global0.c.e.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + arg_2.x))) * _wgslsmith_f_op_f32(step(179f, _wgslsmith_f_op_f32(arg_2.x * -719f)))), !global0.a.d.d, Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c.b + arg_2)), 35222u, vec3<bool>(all(global0.a.c.zz), global0.b.x, any(vec4<bool>(false, true, true, false))), _wgslsmith_mult_vec4_u32(~global0.c.e, ~var_2.d.e))), !(!global0.a.d.d.xx), global0.a.d, ~_wgslsmith_add_vec3_i32(-u_input.a, vec3<i32>(u_input.a.x, 2147483647i, -1i)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    global1 = array<Struct_5, 22>();
    global0 = func_3(global0.a.a.x & ~(~53814u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2212f) * _wgslsmith_f_op_f32(-global0.c.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f)))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.c.b.yy), _wgslsmith_f_op_vec2_f32(step(global0.a.d.b.xw, vec2<f32>(global0.c.b.x, global0.a.d.b.x))), global0.a.d.d.yz))), ~_wgslsmith_mult_i32(global0.d.x, i32(-1i) * -11062i))), ~global0.c.e.x);
    global1 = array<Struct_5, 22>();
    let var_0 = func_3(global0.a.d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(global0.a.d.b.x, -571f), reverseBits(arg_0.x))).x)), vec4<f32>(636f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.b.x))))), _wgslsmith_f_op_f32(select(-1850f, _wgslsmith_f_op_f32(global0.a.d.b.x + -474f), global0.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.a.b, -961f, true)), _wgslsmith_div_f32(-266f, global0.a.b)))))), 7573u).a;
    var var_1 = global0.a;
    return Struct_3(global0.a, func_3(min(4294967295u, max(34740u, var_0.a.x)), var_0.d.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, 583f, var_0.b, 818f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(338f, global0.c.b.x, var_1.d.b.x, 1000f))), _wgslsmith_f_op_vec4_f32(global0.a.d.b + vec4<f32>(var_1.b, -1133f, var_0.d.b.x, var_1.d.b.x))), any(select(vec4<bool>(false, var_0.c.x, var_0.d.a, false), vec4<bool>(var_0.d.a, true, false, var_0.c.x), true)))), 30468u << (var_1.a.x % 32u)).c.d.yx, var_0.d, vec3<i32>(_wgslsmith_mult_i32(~u_input.b, global0.d.x), -18078i, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<i32>(-36156i, u_input.a.x));
    var_0 = Struct_3(var_0.a, var_0.a.d.d.zx, func_3(var_0.c.c, 880f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.a.d.b))), ~global0.c.c).c, u_input.a);
    let var_1 = ~((~(~var_0.c.e.xz) << (_wgslsmith_add_vec2_u32(vec2<u32>(global0.a.a.x, var_0.a.a.x), vec2<u32>(85607u, global0.c.e.x)) % vec2<u32>(32u))) ^ select(~global0.a.a, var_0.c.e.zz, global0.a.d.d.x || !var_0.c.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(14356i, -1i, 0i, -3986i), vec4<i32>(u_input.a.x, -18035i, u_input.a.x, u_input.a.x)), firstLeadingBit(vec4<i32>(var_0.d.x, -7583i, -5930i, -39364i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(global0.c.b.xx)), global0.c.b.xx)) + _wgslsmith_f_op_vec2_f32(trunc(global0.c.b.zz))), u_input.a.x, global0.d.x);
}

