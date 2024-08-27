struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32> = vec3<f32>(949f, 1527f, 180f);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<u32>(14264u, 24670u, 11054u), false, vec2<i32>(2147483647i, 1i), vec4<i32>(-25243i, 2147483647i, 21720i, 3464i), vec2<u32>(0u, 76571u)), Struct_1(vec3<u32>(17214u, 13317u, 39630u), false, vec2<i32>(45736i, 2983i), vec4<i32>(-4347i, 2147483647i, i32(-2147483648), -58442i), vec2<u32>(4294967295u, 4265u)), Struct_1(vec3<u32>(16882u, 0u, 0u), false, vec2<i32>(6081i, 0i), vec4<i32>(i32(-2147483648), 60028i, -24331i, -26634i), vec2<u32>(1u, 0u)), Struct_1(vec3<u32>(119185u, 28297u, 30292u), true, vec2<i32>(1i, -14231i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 1i), vec2<u32>(42502u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 42114u, 2097u), false, vec2<i32>(1i, i32(-2147483648)), vec4<i32>(-29541i, 201i, 0i, 14405i), vec2<u32>(40423u, 4294967295u)), Struct_1(vec3<u32>(1u, 0u, 1u), false, vec2<i32>(1i, 0i), vec4<i32>(12421i, -32393i, 1i, -1i), vec2<u32>(24130u, 8783u)), Struct_1(vec3<u32>(26572u, 18463u, 36741u), true, vec2<i32>(7305i, 32978i), vec4<i32>(0i, 13382i, i32(-2147483648), 800i), vec2<u32>(4294967295u, 64020u)), Struct_1(vec3<u32>(1u, 4294967295u, 1u), false, vec2<i32>(i32(-2147483648), -1i), vec4<i32>(2147483647i, -1i, -42138i, i32(-2147483648)), vec2<u32>(22045u, 21539u)), Struct_1(vec3<u32>(1u, 13248u, 1u), false, vec2<i32>(-44231i, 2147483647i), vec4<i32>(-1i, 2147483647i, -23881i, 2249i), vec2<u32>(1u, 39932u)), Struct_1(vec3<u32>(93647u, 26009u, 0u), false, vec2<i32>(15753i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, 20599i, -24282i), vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), false, vec2<i32>(-38534i, i32(-2147483648)), vec4<i32>(-9365i, 0i, i32(-2147483648), 20843i), vec2<u32>(0u, 17555u)), Struct_1(vec3<u32>(0u, 64982u, 33911u), true, vec2<i32>(2147483647i, -21412i), vec4<i32>(2147483647i, -19595i, -13170i, -111139i), vec2<u32>(6525u, 22719u)), Struct_1(vec3<u32>(4294967295u, 17263u, 41499u), false, vec2<i32>(22788i, 2147483647i), vec4<i32>(6539i, 2147483647i, 75996i, 15224i), vec2<u32>(6588u, 57487u)), Struct_1(vec3<u32>(1u, 0u, 55958u), false, vec2<i32>(2147483647i, -46193i), vec4<i32>(8334i, -15264i, 0i, -2803i), vec2<u32>(27199u, 0u)), Struct_1(vec3<u32>(4294967295u, 87635u, 7355u), true, vec2<i32>(-1i, 66628i), vec4<i32>(74537i, i32(-2147483648), 0i, 58668i), vec2<u32>(0u, 62001u)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), true, vec2<i32>(-16735i, 28493i), vec4<i32>(2147483647i, 13855i, i32(-2147483648), 0i), vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(1u, 20211u, 2908u), true, vec2<i32>(-4603i, -54193i), vec4<i32>(-40394i, 74228i, -42364i, 19873i), vec2<u32>(0u, 58176u)), Struct_1(vec3<u32>(94802u, 4294967295u, 4294967295u), false, vec2<i32>(-18046i, -410i), vec4<i32>(64715i, 0i, 1i, -3320i), vec2<u32>(90656u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 50563u, 1u), true, vec2<i32>(56947i, -28777i), vec4<i32>(2147483647i, -42948i, -1i, 2147483647i), vec2<u32>(25412u, 4294967295u)), Struct_1(vec3<u32>(0u, 56428u, 44602u), false, vec2<i32>(-9343i, 0i), vec4<i32>(-42915i, 2147483647i, 16567i, -42350i), vec2<u32>(62395u, 19171u)), Struct_1(vec3<u32>(40348u, 3627u, 54531u), true, vec2<i32>(2147483647i, -15441i), vec4<i32>(16202i, -27539i, -29975i, 2147483647i), vec2<u32>(4294967295u, 0u)), Struct_1(vec3<u32>(0u, 1u, 1u), false, vec2<i32>(2147483647i, -1i), vec4<i32>(-47748i, -9603i, 59708i, 0i), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<u32>(39491u, 0u, 0u), false, vec2<i32>(23246i, 419i), vec4<i32>(35794i, 31033i, 0i, 1i), vec2<u32>(0u, 1u)), Struct_1(vec3<u32>(67666u, 0u, 4294967295u), true, vec2<i32>(i32(-2147483648), 5655i), vec4<i32>(1i, 1i, 2147483647i, -17436i), vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(4054u, 4294967295u, 4294967295u), true, vec2<i32>(2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -44008i, 0i, 24695i), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<u32>(30723u, 34241u, 1u), false, vec2<i32>(0i, 16917i), vec4<i32>(-30064i, 2147483647i, i32(-2147483648), 2962i), vec2<u32>(4294967295u, 0u)), Struct_1(vec3<u32>(0u, 10858u, 43874u), false, vec2<i32>(2147483647i, 0i), vec4<i32>(-19044i, 56195i, -1i, 12288i), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<u32>(0u, 39416u, 50406u), true, vec2<i32>(i32(-2147483648), 33731i), vec4<i32>(1i, 0i, -66304i, -24497i), vec2<u32>(24792u, 0u)), Struct_1(vec3<u32>(1u, 0u, 1u), false, vec2<i32>(i32(-2147483648), 2147483647i), vec4<i32>(1i, -10146i, 76627i, 0i), vec2<u32>(1u, 8051u)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = global2[_wgslsmith_index_u32(arg_2, 29u)];
    global2 = array<Struct_1, 29>();
    var var_1 = all(!select(!(!vec3<bool>(arg_0.b, arg_3.b, arg_3.b)), !(!vec3<bool>(arg_3.b, true, global0.b)), vec3<bool>(!arg_3.b, !var_0.b, any(vec4<bool>(true, false, false, false)))));
    let var_2 = ~var_0.a;
    global2 = array<Struct_1, 29>();
    return ~(~vec3<u32>(31214u, _wgslsmith_mod_u32(~arg_2, reverseBits(4294967295u)), arg_0.a.x));
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    return vec3<u32>(~1u, u_input.d, (arg_0.x & ~4294967295u) ^ arg_0.x);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = min(arg_0.a, firstLeadingBit(_wgslsmith_sub_vec3_u32(arg_0.a, global0.a) & select(func_2(arg_0, vec2<f32>(-492f, global1.x), 0u, Struct_1(arg_0.a, true, global0.d.yy, vec4<i32>(0i, global0.d.x, 25270i, u_input.c), vec2<u32>(4294967295u, 19088u))), _wgslsmith_clamp_vec3_u32(global0.a, global0.a, arg_0.a), true)));
    var var_1 = Struct_1(~func_3(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 0u) << (vec2<u32>(arg_0.e.x, global0.e.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.e.x, 68839u), arg_0.a.zy))), all(!select(select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(false, arg_0.b, true), vec3<bool>(arg_0.b, arg_0.b, false)), vec3<bool>(true, true, true), arg_0.b)), vec2<i32>(-(-33830i >> (~var_0.x % 32u)), -(~(-48398i))), _wgslsmith_add_vec4_i32(-vec4<i32>(firstLeadingBit(-38810i), _wgslsmith_add_i32(arg_0.d.x, 1i), 1i, _wgslsmith_sub_i32(global0.c.x, arg_0.c.x)), vec4<i32>(10779i, u_input.a.x, select(-22379i, -u_input.a.x, any(vec4<bool>(global0.b, false, true, global0.b))), _wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_mult_i32(arg_0.c.x, u_input.c), _wgslsmith_mod_i32(global0.c.x, -2147483647i)))), countOneBits(func_3(max(global0.a.yx | var_0.zz, ~vec2<u32>(u_input.b, 62676u))).zx));
    global0 = arg_0;
    let var_2 = -1i;
    var var_3 = vec4<u32>(9244u | _wgslsmith_mod_u32(u_input.b << (~u_input.d % 32u), 60113u), u_input.d, var_0.x, _wgslsmith_mod_u32(func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(121561u, u_input.b), ~arg_0.a.xx)).x, firstTrailingBit(~_wgslsmith_mod_u32(21954u, 4294967295u))));
    return global2[_wgslsmith_index_u32(31975u, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(84441u, global0.a.x, 1u, 34577u)), (vec4<u32>(u_input.b, 26620u, 4451u, u_input.b) << (vec4<u32>(u_input.b, 19563u, global0.a.x, 5134u) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 16980u), vec4<u32>(4294967295u, u_input.b, u_input.d, 50068u))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.e.x, global0.e.x, 6160u, 0u), ~vec4<u32>(global0.e.x, global0.a.x, global0.a.x, u_input.d)))), 29u)];
    let var_1 = func_1(Struct_1(~vec3<u32>(global0.e.x, ~4294967295u, u_input.d), false, -vec2<i32>(~(-9722i), -1i), vec4<i32>(-29401i, -16443i, _wgslsmith_sub_i32(global0.c.x, 25301i), -2147483647i), global0.a.yy));
    let var_2 = firstLeadingBit(global0.d);
    global0 = Struct_1(~vec3<u32>(~(~1u), u_input.b, 1u), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, var_0.b))), var_0.c, var_1.d, _wgslsmith_add_vec2_u32(func_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, func_1(Struct_1(var_0.a, global0.b, vec2<i32>(global0.c.x, global0.c.x), var_2, vec2<u32>(var_0.a.x, 1u))).e.x), 29u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)) - global1.yy), _wgslsmith_sub_u32(_wgslsmith_add_u32(global0.e.x, u_input.b), 1u), Struct_1(~vec3<u32>(4294967295u, 10955u, 56557u), global0.b, vec2<i32>(u_input.c, 0i), global0.d, _wgslsmith_add_vec2_u32(var_0.e, vec2<u32>(global0.e.x, 39807u)))).zx, var_1.a.xx));
    var var_3 = ~(-countOneBits(var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.c.x | 55610i, u_input.a.x, 3300i, 1i >> (var_0.a.x % 32u)), vec4<i32>(var_1.d.x, _wgslsmith_mult_i32(~var_0.c.x, reverseBits(54161i)), -1250i, (var_1.d.x | var_0.c.x) ^ -1i)), vec3<i32>(firstTrailingBit(var_3.x), 31401i, ~1i) >> (func_2(var_1, vec2<f32>(_wgslsmith_f_op_f32(min(1000f, 1355f)), global1.x), var_0.e.x, global2[_wgslsmith_index_u32(var_1.a.x, 29u)]) % vec3<u32>(32u)), abs(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, global0.a.x), ~vec2<u32>(var_1.e.x, var_0.e.x))), vec3<f32>(-498f, -1302f, _wgslsmith_f_op_f32(max(1121f, -697f))));
}

