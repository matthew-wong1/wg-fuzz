struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(false, vec3<i32>(-1i, i32(-2147483648), 1i), vec4<bool>(false, true, false, true), vec4<u32>(37366u, 80989u, 1u, 114741u), 2147483647i), Struct_1(true, vec3<i32>(1i, -28858i, 2147483647i), vec4<bool>(false, true, true, false), vec4<u32>(4294967295u, 4294967295u, 1u, 43077u), 0i), Struct_1(true, vec3<i32>(-30055i, 26774i, -15214i), vec4<bool>(true, true, false, false), vec4<u32>(27196u, 1u, 1978u, 41691u), 2147483647i), Struct_1(false, vec3<i32>(20564i, 55200i, 2147483647i), vec4<bool>(true, true, true, true), vec4<u32>(4294967295u, 0u, 37314u, 1u), 38776i), Struct_1(true, vec3<i32>(0i, 14192i, 2147483647i), vec4<bool>(true, false, true, true), vec4<u32>(0u, 1u, 59002u, 2603u), 2147483647i), Struct_1(false, vec3<i32>(1i, 1i, -47820i), vec4<bool>(false, true, true, true), vec4<u32>(25841u, 44411u, 49584u, 1u), -24595i), Struct_1(false, vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec4<bool>(true, false, false, false), vec4<u32>(1u, 61424u, 28395u, 4294967295u), -13560i), Struct_1(false, vec3<i32>(2147483647i, -38002i, -1i), vec4<bool>(true, true, true, true), vec4<u32>(1u, 102864u, 0u, 4294967295u), 1i), Struct_1(false, vec3<i32>(45777i, -45337i, 26896i), vec4<bool>(false, true, true, true), vec4<u32>(37212u, 0u, 4294967295u, 1597u), 1i), Struct_1(false, vec3<i32>(-1i, 1i, -6612i), vec4<bool>(false, true, false, false), vec4<u32>(4294967295u, 445u, 69086u, 1u), 0i), Struct_1(true, vec3<i32>(-89136i, 1707i, 2147483647i), vec4<bool>(false, true, true, false), vec4<u32>(0u, 10579u, 4294967295u, 1u), -1i), Struct_1(true, vec3<i32>(-33153i, 17193i, -11277i), vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, 52234u, 27246u, 1u), -35909i), Struct_1(true, vec3<i32>(0i, 0i, 1i), vec4<bool>(false, true, false, false), vec4<u32>(23899u, 105564u, 1u, 0u), -24224i), Struct_1(true, vec3<i32>(-3896i, 13257i, 1i), vec4<bool>(true, false, true, true), vec4<u32>(4294967295u, 31561u, 0u, 66720u), 42563i), Struct_1(false, vec3<i32>(2147483647i, 1i, -1544i), vec4<bool>(true, true, true, false), vec4<u32>(0u, 0u, 1u, 4294967295u), 26672i), Struct_1(true, vec3<i32>(1i, 0i, 40434i), vec4<bool>(true, true, true, true), vec4<u32>(73423u, 26926u, 4294967295u, 0u), -46829i), Struct_1(true, vec3<i32>(-264i, -51381i, -30943i), vec4<bool>(true, false, true, true), vec4<u32>(0u, 99580u, 6530u, 1u), -8068i), Struct_1(true, vec3<i32>(2147483647i, -4271i, 2147483647i), vec4<bool>(true, true, false, true), vec4<u32>(4294967295u, 0u, 0u, 1u), 1i), Struct_1(true, vec3<i32>(-39852i, -4307i, 11442i), vec4<bool>(true, true, false, true), vec4<u32>(0u, 1u, 4294967295u, 36262u), 54708i), Struct_1(true, vec3<i32>(-10551i, -1i, 0i), vec4<bool>(false, false, false, false), vec4<u32>(0u, 51465u, 1u, 0u), -1i), Struct_1(false, vec3<i32>(-1035i, i32(-2147483648), 2147483647i), vec4<bool>(false, false, true, false), vec4<u32>(5219u, 0u, 1u, 69490u), -15484i), Struct_1(true, vec3<i32>(1i, 63059i, -1i), vec4<bool>(true, true, true, false), vec4<u32>(4294967295u, 4294967295u, 0u, 8776u), -1i), Struct_1(false, vec3<i32>(19486i, -4605i, 56862i), vec4<bool>(false, true, false, true), vec4<u32>(34344u, 1u, 4486u, 4294967295u), 2147483647i), Struct_1(true, vec3<i32>(-1i, -36792i, 0i), vec4<bool>(false, false, true, false), vec4<u32>(24084u, 4294967295u, 66689u, 1u), 0i), Struct_1(true, vec3<i32>(2147483647i, -21086i, 10965i), vec4<bool>(false, true, false, false), vec4<u32>(1u, 32009u, 0u, 18215u), -77565i), Struct_1(false, vec3<i32>(-44773i, 11569i, 63912i), vec4<bool>(true, true, false, false), vec4<u32>(4294967295u, 6048u, 0u, 1u), 0i), Struct_1(false, vec3<i32>(2147483647i, 0i, -1i), vec4<bool>(false, false, true, true), vec4<u32>(0u, 1u, 52614u, 1u), -18808i));

var<private> global1: array<vec3<u32>, 3>;

var<private> global2: vec4<i32>;

var<private> global3: bool = false;

var<private> global4: Struct_1 = Struct_1(false, vec3<i32>(0i, 20691i, -1837i), vec4<bool>(true, true, false, true), vec4<u32>(35848u, 1u, 6600u, 29182u), -11323i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = any(!select(!global4.c.xx, vec2<bool>(true, true), vec2<bool>(true, global4.c.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -749f) - _wgslsmith_f_op_f32(f32(-1f) * -418f)))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(683u, 1u), 27u)];
    let var_3 = ~(-var_2.b.x);
    var_0 = any(global4.c);
    return vec4<i32>(var_3, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, var_2.b.x, 1750i), vec4<i32>(23660i, global4.e, global4.b.x, -2147483647i))), _wgslsmith_dot_vec4_i32(min(-vec4<i32>(587i, var_2.e, 35111i, 1i), -vec4<i32>(global4.b.x, var_2.e, var_3, 2147483647i)), vec4<i32>(30178i, var_2.b.x, -914i, -2147483647i)), reverseBits(global4.b.x)) ^ (-max(firstTrailingBit(vec4<i32>(u_input.c.x, var_3, -2147483647i, 1i)), countOneBits(vec4<i32>(var_3, var_3, -2147483647i, -2147483647i))) | (-reverseBits(vec4<i32>(19615i, -89874i, 37331i, global2.x)) >> (~(~vec4<u32>(var_2.d.x, 58963u, global4.d.x, global4.d.x)) % vec4<u32>(32u))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_1, 27>();
    let var_0 = ~_wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, arg_0.d.x, global4.d.x), u_input.b.zxy, u_input.b.wwz << (vec3<u32>(422u, 44948u, global4.d.x) % vec3<u32>(32u))), global4.d.yxx, select(!arg_0.c.zyw, global4.c.yyy, global4.c.x)), arg_0.d.xwz);
    let var_1 = vec4<u32>(var_0, _wgslsmith_div_u32(~(~(~arg_0.d.x)), var_0), var_0, ~66488u);
    var var_2 = max(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(func_3(4294967295u) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, global4.b.x, global4.e, global2.x), vec4<i32>(-1i, global2.x, 21478i, u_input.e)), select(vec4<i32>(-1i, -1i, global4.b.x, -5321i) ^ vec4<i32>(12117i, u_input.e, global2.x, u_input.c.x), abs(vec4<i32>(-1i, global4.e, -41403i, 3755i)), !global4.c)), (~vec4<i32>(global4.b.x, global2.x, u_input.e, u_input.c.x) ^ select(vec4<i32>(global2.x, global2.x, u_input.c.x, u_input.e), vec4<i32>(global4.b.x, 1i, arg_0.b.x, 17952i), arg_0.c)) >> (select(vec4<u32>(global4.d.x, global4.d.x, u_input.b.x, 0u) | var_1, ~vec4<u32>(4294967295u, arg_0.d.x, 1u, arg_0.d.x), true) % vec4<u32>(32u))), 9754i << (~abs(global4.d.x) % 32u));
    global4 = Struct_1(true, reverseBits(firstLeadingBit(~arg_0.b)), select(global4.c, !(!global4.c), true), vec4<u32>(countOneBits(~(arg_0.d.x << (61132u % 32u))), ~_wgslsmith_add_u32(global4.d.x, min(global4.d.x, 1u)), ~_wgslsmith_mod_u32(24656u, select(39119u, 37527u, arg_0.c.x)), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.d.x, 0u), u_input.b.xx), firstLeadingBit(var_1.zy & vec2<u32>(0u, u_input.a)))), global2.x);
    return ~_wgslsmith_dot_vec4_i32(~vec4<i32>(-8950i, 1i, global4.e, reverseBits(2147483647i)), abs(~vec4<i32>(arg_0.e, global4.e, -34228i, -1i) >> (countOneBits(vec4<u32>(4294967295u, var_0, arg_0.d.x, var_1.x)) % vec4<u32>(32u))));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(global4.e == (global2.x | global2.x), -vec3<i32>(-15172i, _wgslsmith_add_i32(-2147483647i, 57993i << (global4.d.x % 32u)), global4.e), vec4<bool>(any(!vec4<bool>(global4.c.x, true, global4.a, global4.a)), global4.a, !(global4.d.x < ~global4.d.x), global4.a), u_input.b, ~_wgslsmith_add_i32(_wgslsmith_div_i32(1i, ~u_input.e), ~func_2(global0[_wgslsmith_index_u32(44584u, 27u)])));
    var var_1 = var_0;
    global4 = var_0;
    var var_2 = _wgslsmith_sub_u32(select(~3902u, select(var_1.d.x, 4435u, false) >> (u_input.d.x % 32u), var_0.a), u_input.d.x) ^ 0u;
    global4 = Struct_1(!all(vec2<bool>(global4.a, var_1.a & var_1.a)), vec3<i32>(51873i, ~_wgslsmith_mod_i32(func_3(u_input.d.x).x, _wgslsmith_mult_i32(u_input.c.x, -51337i)), var_1.e), !(!select(select(var_0.c, var_0.c, false), select(vec4<bool>(false, var_1.c.x, false, false), global4.c, false), all(var_0.c.wz))), vec4<u32>(34813u, _wgslsmith_dot_vec2_u32(u_input.b.xz, ~global4.d.zw), var_1.d.x, _wgslsmith_add_u32((global4.d.x & 8206u) & 0u, _wgslsmith_mult_u32(~4294967295u, var_1.d.x))), u_input.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -982f), _wgslsmith_f_op_f32(f32(-1f) * -385f), true)), _wgslsmith_div_f32(1119f, -1791f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-108f, -701f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(397f, -103f) - vec2<f32>(235f, 1000f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(610f, -1000f), vec2<f32>(-189f, -623f), global4.c.yz)))), vec2<bool>(!global4.c.x, true)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-863f * 873f)), _wgslsmith_f_op_f32(floor(-727f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1505f + 223f), -923f)))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global4.d.x, global4.d.x, 1u, 0u)), abs(u_input.b) & max(u_input.b, u_input.b)), ~u_input.b.x), 27u)];
    global3 = any(global4.c);
    var_0 = -589f;
    global3 = !(!((_wgslsmith_sub_i32(u_input.c.x, u_input.e) >> (abs(4294967295u) % 32u)) != _wgslsmith_dot_vec3_i32(global4.b, countOneBits(global2.yxx))));
    var var_3 = abs(73635i);
    global1 = array<vec3<u32>, 3>();
    var var_4 = abs(select(~_wgslsmith_sub_u32(select(var_2.d.x, 4294967295u, true), ~23397u), max(global4.d.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_2.d.x, 2756u, 0u), vec4<u32>(u_input.d.x, 1u, global4.d.x, 1u))), !global4.a && select(var_2.c.x, all(vec2<bool>(global4.a, true)), any(global4.c.xxz))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(~u_input.a).x, max(_wgslsmith_mult_vec2_i32(-vec2<i32>(34957i, 1i), firstLeadingBit(vec2<i32>(u_input.e, 34560i)) >> (global4.d.ww % vec2<u32>(32u))), vec2<i32>(-1i) * -(~vec2<i32>(var_2.b.x, var_2.e))), _wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(~25595u | u_input.a, 3u)], ~global4.d.zyz));
}

