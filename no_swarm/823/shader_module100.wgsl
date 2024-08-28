struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, false, false, true), Struct_1(vec4<f32>(-574f, 382f, 1624f, 280f), -240f, -518f, vec2<f32>(-784f, -728f), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<f32>(1000f, -282f, 908f, -592f), 678f, 220f, vec2<f32>(-941f, 1126f), vec2<i32>(52225i, -24117i)));

var<private> global1: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(27747u, 1u, 48511u), vec3<u32>(1351u, 32377u, 4294967295u), vec3<u32>(5704u, 4294967295u, 17452u), vec3<u32>(0u, 52961u, 16762u), vec3<u32>(49450u, 10744u, 33541u), vec3<u32>(10399u, 4294967295u, 0u), vec3<u32>(41373u, 70044u, 57269u), vec3<u32>(0u, 4787u, 114067u), vec3<u32>(0u, 1623u, 1u), vec3<u32>(3799u, 1u, 1u), vec3<u32>(25499u, 82019u, 0u), vec3<u32>(0u, 1645u, 1u), vec3<u32>(38085u, 47770u, 4294967295u), vec3<u32>(344u, 26533u, 0u), vec3<u32>(20063u, 111237u, 4200u), vec3<u32>(1u, 5388u, 0u), vec3<u32>(0u, 4294967295u, 21372u), vec3<u32>(18549u, 29250u, 4294967295u), vec3<u32>(109576u, 5403u, 25256u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 0u, 63949u), vec3<u32>(4294967295u, 4294967295u, 13842u), vec3<u32>(4294967295u, 69546u, 29477u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = false;
    global1 = array<vec3<u32>, 23>();
    let var_1 = Struct_2(global0.a, global0.b, global0.b);
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1398f + -729f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.c) + 537f)), 895f, -274f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.a.x + _wgslsmith_f_op_f32(-783f - -1010f))))), var_1.a.x != true, ~(~(~(~vec4<u32>(0u, 0u, u_input.b.x, 4294967295u)))), Struct_2(!select(!vec4<bool>(var_1.a.x, var_1.a.x, var_0, false), !var_1.a, vec4<bool>(false, false, true, var_1.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.c.a), var_1.b.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global0.b.c) * _wgslsmith_f_op_f32(min(-567f, -148f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(global0.c.d)))), global0.b.e), global0.c));
    var var_3 = ~(-_wgslsmith_mod_vec3_i32(abs(max(u_input.c, vec3<i32>(-1i, 24193i, -2147483647i))), u_input.c));
    return -238f;
}

fn func_2() -> u32 {
    let var_0 = u_input.b.x & ~((firstLeadingBit(u_input.d.x) << (1u % 32u)) ^ 63961u);
    let var_1 = ~(~u_input.b.x);
    var var_2 = select(~_wgslsmith_sub_u32(35488u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(var_0, var_1)) >> ((3775u ^ u_input.d.x) % 32u)), 3959u, global0.a.x);
    var var_3 = vec4<f32>(-512f, _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 0u, var_0), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.d.x, var_1, var_0)), vec3<u32>(4294967295u, var_0, 0u))))), -206f, _wgslsmith_f_op_f32(step(global0.b.a.x, _wgslsmith_f_op_f32(func_3(vec3<u32>(var_0, var_0, 1u))))));
    let var_4 = ~abs(_wgslsmith_dot_vec3_u32((global1[_wgslsmith_index_u32(var_1, 23u)] & vec3<u32>(var_0, 27912u, 0u)) & vec3<u32>(u_input.d.x, 0u, 41554u), _wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(firstTrailingBit(4604u), 23u)], ~vec3<u32>(10310u, u_input.d.x, 4294967295u), global1[_wgslsmith_index_u32(42114u >> (0u % 32u), 23u)])));
    return _wgslsmith_dot_vec4_u32(min(min(~vec4<u32>(14703u, var_0, u_input.b.x, var_4), ~vec4<u32>(84902u, 1u, var_1, 97342u)), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_4, 1u, var_4), vec4<u32>(29245u, var_4, var_1, var_4)) ^ (vec4<u32>(var_1, 0u, 31893u, var_1) | vec4<u32>(29004u, var_4, u_input.d.x, var_1)))), countOneBits(vec4<u32>(var_1, reverseBits(51764u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_4, 5709u), global1[_wgslsmith_index_u32(var_0, 23u)]))) & ~vec4<u32>(u_input.d.x & var_4, u_input.b.x, 35208u, var_4));
}

fn func_4(arg_0: u32) -> Struct_2 {
    let var_0 = !(!select(select(!vec3<bool>(global0.a.x, false, global0.a.x), !global0.a.wxy, select(vec3<bool>(true, global0.a.x, false), vec3<bool>(false, false, global0.a.x), vec3<bool>(false, global0.a.x, true))), !vec3<bool>(global0.a.x, global0.a.x, false), select(select(global0.a.xyx, global0.a.xzx, vec3<bool>(global0.a.x, global0.a.x, true)), !global0.a.zww, global0.c.e.x >= u_input.a)));
    var var_1 = global0.b;
    let var_2 = u_input.b.x;
    global1 = array<vec3<u32>, 23>();
    var var_3 = (arg_0 ^ var_2) >> (~_wgslsmith_add_u32(_wgslsmith_mod_u32(27453u, _wgslsmith_sub_u32(4294967295u, 34675u)), 1u) % 32u);
    return Struct_2(vec4<bool>(!(!global0.a.x), true, !select(select(true, global0.a.x, true), all(var_0), true != global0.a.x), true), global0.c, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(183f, global0.b.c, 786f, global0.b.b), vec4<f32>(var_1.b, 1000f, 816f, global0.c.c))) + vec4<f32>(-1430f, _wgslsmith_f_op_f32(step(599f, var_1.d.x)), _wgslsmith_f_op_f32(-var_1.d.x), 1f)), _wgslsmith_f_op_f32(func_3(vec3<u32>(var_2, u_input.d.x, var_2) & ~vec3<u32>(arg_0, u_input.d.x, 76973u))), var_1.d.x, vec2<f32>(global0.b.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1250f, 431f)), _wgslsmith_f_op_f32(ceil(143f)), var_0.x))), vec2<i32>(u_input.c.x, firstTrailingBit(u_input.c.x))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = array<vec3<u32>, 23>();
    global0 = func_4(func_2());
    let var_0 = Struct_2(!(!(!vec4<bool>(global0.a.x, false, false, global0.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a.x, -254f, global0.c.b, -2114f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c.b, 444f, global0.c.b, global0.b.c))))), _wgslsmith_div_f32(global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1983f, -145f, global0.a.x)) + _wgslsmith_f_op_f32(global0.b.d.x + 1442f))), _wgslsmith_f_op_f32(func_3(vec3<u32>(27298u, u_input.d.x >> (u_input.b.x % 32u), u_input.d.x))), global0.c.a.xz, _wgslsmith_sub_vec2_i32(~countOneBits(vec2<i32>(-11405i, u_input.c.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(-14475i, -4703i), vec2<i32>(u_input.a, 1i)) & global0.b.e)), func_4(u_input.d.x).b);
    let var_1 = select(vec4<u32>(abs(1u) | u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(25195u, select(1u, u_input.b.x, false)), abs(select(u_input.d.x, u_input.b.x, var_0.a.x))), ~31263u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, u_input.d.x, u_input.b.x, u_input.b.x)), ~55007u)), vec4<u32>(func_2(), u_input.d.x, 4294967295u, reverseBits(1u)), arg_0);
    let var_2 = global0.c;
    return Struct_2(select(func_4(_wgslsmith_add_u32(~61090u, ~var_1.x)).a, select(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), select(func_4(44279u).a, !vec4<bool>(var_0.a.x, global0.a.x, true, arg_0), vec4<bool>(global0.a.x, var_0.a.x, arg_0, global0.a.x)), true), var_0.a.x), func_4(u_input.d.x).c, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(false);
    var var_0 = vec2<u32>(u_input.d.x, func_2()) << ((u_input.d.zy << (u_input.d.zz % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = func_4(81300u);
    var_0 = u_input.d.xz ^ ~vec2<u32>(~min(16784u, 66100u), countOneBits(u_input.b.x));
    let var_1 = _wgslsmith_mod_u32(0u, var_0.x);
    global1 = array<vec3<u32>, 23>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-631f, global0.c.d.x))) * _wgslsmith_div_f32(_wgslsmith_div_f32(-1979f, global0.b.c), _wgslsmith_f_op_f32(f32(-1f) * -989f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.b, -213f)))), _wgslsmith_f_op_f32(global0.c.b + -945f));
    var var_3 = func_4(~firstLeadingBit(var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b))) * 870f), _wgslsmith_f_op_f32(-func_1(any(func_1(false).a.xxz)).c.d.x), _wgslsmith_sub_u32(var_0.x, 60822u), 0i, select(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, 30443u), ~u_input.d.x), ~var_0.x >> (45410u % 32u), _wgslsmith_add_u32(1u, 9719u)), vec3<u32>(select(select(0u, 61697u, global0.a.x), u_input.d.x, !global0.a.x), ~(var_1 << (0u % 32u)), _wgslsmith_div_u32(_wgslsmith_mult_u32(5856u, 24751u), reverseBits(31364u))), vec3<bool>(!global0.a.x, !(4294967295u > u_input.b.x), firstTrailingBit(u_input.c.x) >= -45744i)));
}

