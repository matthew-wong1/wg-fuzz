struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, false, true, false, true, true, true, false, false, true);

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(-353f, Struct_1(-1266f, i32(-2147483648), vec3<i32>(24536i, i32(-2147483648), 1i), 3394i, 4294967295u), vec4<u32>(42441u, 0u, 1u, 1u)), Struct_2(189f, Struct_1(-678f, 1i, vec3<i32>(0i, 2147483647i, 0i), 0i, 73380u), vec4<u32>(62755u, 5514u, 6945u, 4294967295u)), Struct_2(-599f, Struct_1(562f, 1i, vec3<i32>(-3527i, 2203i, i32(-2147483648)), -12451i, 32629u), vec4<u32>(4294967295u, 1u, 3754u, 0u)), Struct_2(888f, Struct_1(-1153f, -32908i, vec3<i32>(-50108i, 24108i, 2147483647i), 0i, 1u), vec4<u32>(39215u, 4294967295u, 2424u, 26138u)), Struct_2(-531f, Struct_1(892f, 2147483647i, vec3<i32>(2147483647i, 55739i, -47567i), -7986i, 1u), vec4<u32>(63850u, 25299u, 4294967295u, 1u)), Struct_2(-585f, Struct_1(-2347f, 1i, vec3<i32>(35357i, 39839i, 14995i), i32(-2147483648), 0u), vec4<u32>(48380u, 1u, 4294967295u, 47291u)), Struct_2(324f, Struct_1(1000f, i32(-2147483648), vec3<i32>(-1i, -13116i, 44782i), i32(-2147483648), 4294967295u), vec4<u32>(877u, 0u, 57954u, 799u)), Struct_2(255f, Struct_1(974f, -16590i, vec3<i32>(-21558i, -31760i, 0i), 0i, 33926u), vec4<u32>(47615u, 27830u, 33227u, 4294967295u)), Struct_2(-378f, Struct_1(-1000f, 20092i, vec3<i32>(0i, -30151i, 2147483647i), -2666i, 46763u), vec4<u32>(102u, 43611u, 27019u, 24036u)), Struct_2(-586f, Struct_1(1338f, -35784i, vec3<i32>(0i, 2147483647i, 90211i), -18397i, 1u), vec4<u32>(1u, 44597u, 39448u, 23007u)), Struct_2(1000f, Struct_1(220f, -20582i, vec3<i32>(2147483647i, -10714i, -20093i), 49484i, 4686u), vec4<u32>(43592u, 28693u, 47842u, 1u)), Struct_2(1662f, Struct_1(-2208f, -27369i, vec3<i32>(10525i, -1i, -20394i), -9748i, 19922u), vec4<u32>(4294967295u, 0u, 0u, 0u)), Struct_2(181f, Struct_1(-114f, 20255i, vec3<i32>(-19800i, 8005i, 0i), 2147483647i, 0u), vec4<u32>(4294967295u, 51838u, 16380u, 4294967295u)), Struct_2(465f, Struct_1(1710f, 23537i, vec3<i32>(2147483647i, -29468i, -1i), i32(-2147483648), 1u), vec4<u32>(4294967295u, 0u, 1u, 4283u)));

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(true, vec2<f32>(-1301f, -547f), 5507u, vec4<i32>(1i, 1i, 19931i, 0i)), Struct_4(false, vec2<f32>(-949f, -956f), 1u, vec4<i32>(31364i, 4937i, -13855i, -1i)), Struct_4(true, vec2<f32>(-578f, -901f), 29255u, vec4<i32>(1i, 43209i, 0i, i32(-2147483648))), Struct_4(false, vec2<f32>(-2179f, 1391f), 46875u, vec4<i32>(i32(-2147483648), 0i, 1i, 5649i)), Struct_4(false, vec2<f32>(2289f, -691f), 0u, vec4<i32>(1i, i32(-2147483648), 0i, 1i)), Struct_4(true, vec2<f32>(1000f, -1710f), 1u, vec4<i32>(33392i, i32(-2147483648), 9908i, 47179i)), Struct_4(true, vec2<f32>(-310f, -568f), 0u, vec4<i32>(-56203i, 0i, i32(-2147483648), 0i)), Struct_4(false, vec2<f32>(132f, 1259f), 27321u, vec4<i32>(-1i, -13536i, -17157i, 2147483647i)), Struct_4(false, vec2<f32>(607f, 981f), 4294967295u, vec4<i32>(-23318i, i32(-2147483648), -21613i, -7060i)), Struct_4(true, vec2<f32>(-227f, -1815f), 4294967295u, vec4<i32>(28206i, -46856i, -42563i, -64469i)), Struct_4(false, vec2<f32>(-1708f, -1000f), 57027u, vec4<i32>(-26727i, 1i, 39121i, 1i)), Struct_4(false, vec2<f32>(1884f, 912f), 9752u, vec4<i32>(-39138i, 36020i, 2147483647i, 0i)), Struct_4(true, vec2<f32>(-659f, 152f), 4294967295u, vec4<i32>(57708i, 50293i, 16865i, -1i)), Struct_4(true, vec2<f32>(281f, 1336f), 6167u, vec4<i32>(11165i, -24125i, -12475i, -1i)), Struct_4(true, vec2<f32>(-604f, 1000f), 4294967295u, vec4<i32>(i32(-2147483648), 36097i, 0i, -1i)), Struct_4(true, vec2<f32>(573f, 830f), 0u, vec4<i32>(2147483647i, 1i, 2147483647i, 2147483647i)), Struct_4(false, vec2<f32>(2041f, -501f), 3491u, vec4<i32>(1i, i32(-2147483648), -36145i, 2867i)));

var<private> global3: i32 = 0i;

var<private> global4: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global4.b.x)))), arg_3.a, 1560f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.a, arg_3.a, global4.a)) - 794f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.a, arg_3.a, 397f, arg_2.a))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, 1000f, 1000f, global4.b.x)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-633f - -724f), _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_div_f32(var_0.x, 154f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-243f)), arg_2.a)), arg_0, vec3<i32>(_wgslsmith_dot_vec4_i32(global4.d, max(u_input.c, ~global4.d)), (i32(-1i) * -14543i) | (u_input.b << (36929u % 32u)), min(~_wgslsmith_mult_i32(u_input.c.x, 0i), -_wgslsmith_add_i32(33913i, global4.d.x))), -_wgslsmith_dot_vec3_i32(arg_3.c, max(vec3<i32>(-16510i, -2147483647i, -1i), select(u_input.c.yzz, vec3<i32>(arg_0, -1i, 0i), true))), 232u);
    let var_2 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(~select(-var_1.c, vec3<i32>(-2147483647i, 9799i, 31937i), true), _wgslsmith_mult_vec3_i32(~select(var_1.c, arg_3.c, vec3<bool>(global0[_wgslsmith_index_u32(var_1.e, 10u)], false, true)), u_input.c.ywx), _wgslsmith_sub_vec3_i32(global4.d.zwy, vec3<i32>(u_input.e, abs(1i), arg_0))));
    let var_3 = arg_2;
    global0 = array<bool, 10>();
    return ~arg_2.e;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global4.b.x * 588f), u_input.e, global4.d.wwz, global4.d.x, min(func_3(1i, global4.d.x << (arg_0 % 32u), Struct_1(-951f, -56896i, u_input.c.zxz, -1i, 0u), Struct_1(global4.b.x, global4.d.x, global4.d.wyx, -1995i, arg_0)), _wgslsmith_sub_u32(1u, firstTrailingBit(u_input.a))) >> (4294967295u % 32u));
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a, 1338f))), _wgslsmith_f_op_f32(floor(-349f))), 0i | (var_0.b & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.b, global4.d.x, -5429i), global4.d)), u_input.c.xxx, u_input.b, 0u), Struct_2(global4.b.x, Struct_1(530f, abs(~u_input.b), ~vec3<i32>(1i, u_input.c.x, u_input.d) << ((vec3<u32>(4294967295u, arg_0, 4294967295u) ^ vec3<u32>(8735u, 18424u, 0u)) % vec3<u32>(32u)), -(~27204i), _wgslsmith_sub_u32(var_0.e, 39798u)), select(~(~vec4<u32>(global4.c, 0u, 30156u, arg_0)), vec4<u32>(var_0.e >> (var_0.e % 32u), ~arg_0, ~0u, ~74945u), select(select(vec4<bool>(global4.a, true, global4.a, true), vec4<bool>(false, true, false, global4.a), global0[_wgslsmith_index_u32(arg_0, 10u)]), select(vec4<bool>(true, global4.a, true, global4.a), vec4<bool>(global4.a, true, global4.a, true), vec4<bool>(global4.a, false, true, false)), true))), any(select(!(!vec3<bool>(true, global4.a, global0[_wgslsmith_index_u32(14257u, 10u)])), select(select(vec3<bool>(false, false, global4.a), vec3<bool>(true, true, true), false), !vec3<bool>(global4.a, global0[_wgslsmith_index_u32(arg_0, 10u)], false), true), true)), vec3<u32>(69424u, arg_0, ~_wgslsmith_mod_u32(45716u, ~0u)));
    var var_2 = var_1;
    var var_3 = vec2<u32>(75080u, ~firstTrailingBit(0u));
    let var_4 = u_input.c;
    return ~countOneBits(i32(-1i) * -_wgslsmith_clamp_i32(-19113i, -13511i, var_4.x));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(select(4294967295u, min(_wgslsmith_mult_u32(global4.c, u_input.a), arg_1.x), all(vec4<bool>(all(vec4<bool>(true, false, global4.a, false)), global4.a, !all(vec2<bool>(global4.a, global4.a)), global4.a | true))), 14u)];
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.c.x ^ abs(18234u), abs(43593u), arg_1.x), ~arg_1.x), 17u)];
}

fn func_1(arg_0: Struct_1) -> u32 {
    global4 = func_4(func_2(~(~(~0u))), vec4<u32>(_wgslsmith_mult_u32(countOneBits(5071u), 1u), (_wgslsmith_div_u32(u_input.a, 1u) << (18671u % 32u)) | (func_3(arg_0.c.x, arg_0.c.x, Struct_1(global4.b.x, 1i, vec3<i32>(-1i, -4677i, arg_0.d), arg_0.c.x, global4.c), Struct_1(arg_0.a, 2147483647i, global4.d.xxx, arg_0.b, 0u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e, 4294967295u), vec2<u32>(4294967295u, 0u))), 21528u, ~countOneBits(19254u ^ u_input.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, 608f, global4.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1076f, global4.b.x, global4.b.x), vec3<f32>(1285f, 1425f, -520f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1201f, 839f, arg_0.a) + vec3<f32>(global4.b.x, 167f, -1754f))))), select(vec3<bool>(all(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.e, 10u)])), global0[_wgslsmith_index_u32(15376u, 10u)], true), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(17557u, 10u)], false)), select(!vec3<bool>(true, false, global4.a), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global4.a, global0[_wgslsmith_index_u32(u_input.a, 10u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.e, 10u)]), true), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 10u)]))))));
    global2 = array<Struct_4, 17>();
    global2 = array<Struct_4, 17>();
    global1 = array<Struct_2, 14>();
    let var_0 = 1322f;
    return ~global4.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, global4.c, 4294967295u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 15682u, 0u, global4.c), abs(vec4<u32>(24383u, 75328u, 0u, 4621u)))) ^ (~select(max(vec4<u32>(11967u, 4294967295u, 15974u, u_input.a), vec4<u32>(u_input.a, 35593u, u_input.a, 29718u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global4.c, u_input.a, 1u, global4.c), vec4<u32>(49573u, u_input.a, 34291u, 59601u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global4.c), 10u)]) ^ (firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(18504u, 0u, 108463u, global4.c), vec4<u32>(12166u, 1u, global4.c, 0u))) ^ ~reverseBits(vec4<u32>(global4.c, 0u, 53180u, global4.c))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global4.b.x))))))), Struct_1(-1711f, global4.d.x, countOneBits(vec3<i32>(abs(u_input.b), u_input.d, -12771i)), 19300i, ~(~_wgslsmith_mod_u32(u_input.a, var_0.x))), vec4<u32>(var_0.x, ~max(abs(33719u), global4.c), reverseBits(~(~0u)), _wgslsmith_mod_u32(var_0.x, var_0.x) ^ ~(~51904u)));
    let var_2 = (_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.x, func_1(Struct_1(116f, -2147483647i, u_input.c.wwy, -2147483647i, 0u))), min(39777u, global4.c)) >> (~global4.c % 32u)) <= ~1u;
    global4 = func_4(i32(-1i) * -2147483647i, vec4<u32>(~64846u, 30206u, 4294967295u, var_1.b.e), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-254f, 704f, var_1.a), vec3<f32>(global4.b.x, -532f, -1000f)))) * vec3<f32>(_wgslsmith_f_op_f32(min(var_1.a, var_1.a)), _wgslsmith_f_op_f32(var_1.a + -375f), _wgslsmith_f_op_f32(min(var_1.b.a, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.b.x, -1481f, -1227f), vec3<f32>(919f, global4.b.x, 273f))))));
    let var_3 = max(~2147483647i, _wgslsmith_sub_i32((-11031i | select(var_1.b.c.x, -2147483647i, true)) ^ 1i, abs(36595i) ^ ~_wgslsmith_clamp_i32(global4.d.x, u_input.d, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~countOneBits(41086i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.a, -452f, var_1.b.a, -148f), vec4<f32>(-1411f, 1597f, var_1.b.a, 914f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.a, 1085f, 252f, global4.b.x), vec4<f32>(var_1.a, var_1.b.a, -1026f, var_1.a), global4.a))) * vec4<f32>(_wgslsmith_f_op_f32(round(1840f)), _wgslsmith_f_op_f32(-1535f + -1390f), _wgslsmith_f_op_f32(select(global4.b.x, 564f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1164f)))), -1i, 4294967295u);
}

