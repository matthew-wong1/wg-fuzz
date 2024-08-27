struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 552f;

var<private> global1: array<Struct_4, 21>;

var<private> global2: Struct_1 = Struct_1(true, -37059i, true, vec3<bool>(false, true, false), vec3<f32>(-1034f, -732f, -1238f));

var<private> global3: Struct_4;

var<private> global4: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(-1i, 47460i, -1i), vec3<i32>(-18977i, -31526i, 33231i), vec3<i32>(11562i, 35007i, -34547i), vec3<i32>(-17717i, 2147483647i, 41896i), vec3<i32>(-71370i, -42141i, 8321i), vec3<i32>(53397i, 30776i, 1i), vec3<i32>(1i, -1i, -44689i), vec3<i32>(-31508i, 32535i, 1i), vec3<i32>(-3406i, 2147483647i, -29416i), vec3<i32>(0i, -28131i, 1i), vec3<i32>(2147483647i, 2147483647i, -5792i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(1i, 0i, -44502i));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    let var_0 = ~(_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_0.e.b, -8819i, -1i, global2.b) >> (~vec4<u32>(arg_0.d.d.x, 1830u, 22641u, u_input.b) % vec4<u32>(32u)), -(vec4<i32>(global3.a.x, arg_2.x, -7805i, global3.a.x) & vec4<i32>(global3.a.x, -11842i, global2.b, -1i))) & vec4<i32>(-_wgslsmith_div_i32(global2.b, 0i), global2.b, 1i, -4253i));
    var var_1 = 973f;
    let var_2 = vec2<f32>(539f, _wgslsmith_f_op_f32(f32(-1f) * -1181f));
    global4 = array<vec3<i32>, 13>();
    var var_3 = ~3210u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1513f) + _wgslsmith_f_op_f32(ceil(-1736f))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(true, abs(global3.a.x) << ((29752u & u_input.a) % 32u), true, vec3<bool>(global2.d.x, false, global2.d.x), vec3<f32>(_wgslsmith_f_op_f32(round(global2.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.x) + 1125f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(false, global2.b, false, vec3<bool>(global2.a, global2.a, global2.a), global2.e), vec3<f32>(global2.e.x, global2.e.x, 1166f), global2.c, Struct_2(Struct_1(global2.d.x, global3.a.x, false, global2.d, global2.e), Struct_1(global2.a, global3.a.x, global2.a, global2.d, global2.e), global3.a.xy, global3.b, Struct_1(false, -79434i, global2.c, vec3<bool>(global2.a, true, global2.a), vec3<f32>(global2.e.x, 795f, 663f))), Struct_1(global2.c, -1i, true, vec3<bool>(true, true, false), vec3<f32>(global2.e.x, -138f, global2.e.x))), 1000f, vec2<i32>(global2.b, global3.a.x)))) - 2049f)));
    let var_1 = Struct_3(var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1487f) + -1161f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(var_0, var_0.e, global2.c, Struct_2(Struct_1(var_0.a, global3.a.x, var_0.a, var_0.d, global2.e), var_0, global3.a.xz, global3.b, var_0), Struct_1(global2.a, var_0.b, global2.a, global2.d, var_0.e)), var_0.e.x, global3.a.yx)) * _wgslsmith_f_op_f32(-global2.e.x)))), !(~(~u_input.a) == 1u), Struct_2(Struct_1(select(global2.c, global2.a && false, global2.d.x != true), ~1i, any(vec4<bool>(false, false, var_0.a, true)), select(vec3<bool>(global2.a, global2.d.x, false), select(var_0.d, var_0.d, vec3<bool>(false, var_0.a, true)), false), vec3<f32>(global2.e.x, _wgslsmith_f_op_f32(1763f * -1737f), _wgslsmith_f_op_f32(abs(var_0.e.x)))), var_0, vec2<i32>(i32(-1i) * -2147483647i, countOneBits(var_0.b)) & max(global3.a.yx, select(vec2<i32>(0i, var_0.b), global3.a.zx, vec2<bool>(false, true))), reverseBits(abs(vec2<u32>(67018u, 3379u) << (global3.b % vec2<u32>(32u)))), var_0), Struct_1(false, var_0.b, true, global2.d, global2.e));
    let var_2 = _wgslsmith_add_u32(4294967295u, u_input.b);
    global1 = array<Struct_4, 21>();
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-740f, _wgslsmith_f_op_f32(1000f * global2.e.x))), -2574f));
    return var_1.a;
}

fn func_3(arg_0: u32) -> Struct_1 {
    var var_0 = !select(!select(global2.d.yz, vec2<bool>(true, global2.d.x), any(global2.d)), !vec2<bool>(global2.d.x, global2.a), select(func_1().d.yz, !vec2<bool>(global2.c, false), !select(global2.d.xx, global2.d.zx, global2.d.zz)));
    var var_1 = Struct_1(true || any(select(vec4<bool>(false, false, global2.c, global2.d.x), select(vec4<bool>(false, var_0.x, global2.c, var_0.x), vec4<bool>(global2.d.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, global2.d.x, false)), true)), _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, global2.b), min(82979i, -2147483647i)), any(global2.d.yy), !vec3<bool>(!global2.c, !any(global2.d.yz), (arg_0 <= global3.b.x) & true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e.x - 1508f) - _wgslsmith_f_op_f32(532f * global2.e.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-380f, global2.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(global2.c, 2929i, var_0.x, vec3<bool>(var_0.x, true, false), global2.e), global2.e, false, Struct_2(Struct_1(true, global3.a.x, var_0.x, global2.d, vec3<f32>(global2.e.x, global2.e.x, 1268f)), Struct_1(global2.d.x, 59943i, global2.c, vec3<bool>(global2.a, global2.c, true), vec3<f32>(global2.e.x, -2245f, 191f)), global3.a.zz, vec2<u32>(arg_0, 4294967295u), Struct_1(true, 0i, false, global2.d, vec3<f32>(-569f, global2.e.x, global2.e.x))), Struct_1(false, global2.b, global2.d.x, vec3<bool>(false, global2.d.x, var_0.x), vec3<f32>(-165f, global2.e.x, global2.e.x))), _wgslsmith_f_op_f32(1003f - global2.e.x), _wgslsmith_add_vec2_i32(vec2<i32>(global2.b, 1i), vec2<i32>(36424i, global2.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e.x * -2492f) + _wgslsmith_f_op_f32(select(712f, _wgslsmith_f_op_f32(min(global2.e.x, global2.e.x)), false)))));
    var_1 = Struct_1(any(!vec4<bool>(func_1().a, true, true, select(false, false, var_1.d.x))), ~(-_wgslsmith_sub_i32(-13295i, var_1.b) >> ((0u | global3.b.x) % 32u)), global3.a.x == -(_wgslsmith_dot_vec2_i32(vec2<i32>(8715i, -1i), vec2<i32>(-13956i, -1i)) >> (max(global3.b.x, u_input.a) % 32u)), vec3<bool>(any(vec2<bool>(true, true)), var_1.a, ~(~global3.a.x) >= var_1.b), vec3<f32>(global2.e.x, _wgslsmith_f_op_f32(floor(var_1.e.x)), _wgslsmith_f_op_f32(-global2.e.x)));
    var_0 = global2.d.yx;
    var var_2 = 42308u;
    return Struct_1(var_0.x, -15959i, false, select(func_1().d, select(select(!vec3<bool>(true, false, global2.c), global2.d, true), func_1().d, func_1().d), false), global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global2 = func_3(reverseBits(~u_input.a));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(func_3(~u_input.b).e.x))));
    var var_1 = Struct_2(Struct_1(global2.d.x, 0i, global2.a, select(func_3(u_input.b).d, !global2.d, global2.c), _wgslsmith_f_op_vec3_f32(ceil(global2.e))), func_3(74608u), global3.a.xx & global3.a.yy, ~global3.b, Struct_1(true, _wgslsmith_mult_i32(global2.b, _wgslsmith_dot_vec3_i32(global3.a, global4[_wgslsmith_index_u32(2242u, 13u)])) >> (firstTrailingBit(global3.b.x) % 32u), true, !vec3<bool>(true, global2.c || true, !global2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.e, vec3<f32>(var_0, 305f, var_0)))));
    let var_2 = global1[_wgslsmith_index_u32(global3.b.x, 21u)];
    global0 = _wgslsmith_div_f32(func_1().e.x, global2.e.x);
    var var_3 = 7048i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(4294967295u, _wgslsmith_mult_u32(global3.b.x, u_input.b), global3.b.x)), ~_wgslsmith_clamp_u32(1u << (var_2.b.x % 32u), 1u, global3.b.x), vec2<i32>(-1i, -30325i), var_1.a.e, var_2.a);
}

