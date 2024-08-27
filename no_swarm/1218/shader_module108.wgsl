struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(0u, 98628u, 0u, 4294967295u), vec4<u32>(14289u, 8816u, 1u, 4294967295u), vec4<u32>(4294967295u, 4425u, 50092u, 34822u), vec4<u32>(1u, 1u, 3335u, 47787u), vec4<u32>(1u, 4294967295u, 47037u, 1u), vec4<u32>(1u, 65016u, 1u, 4294967295u), vec4<u32>(6542u, 0u, 0u, 32195u), vec4<u32>(785u, 1u, 3582u, 42018u), vec4<u32>(13352u, 15540u, 13269u, 2528u), vec4<u32>(4294967295u, 8664u, 1u, 4294967295u), vec4<u32>(47571u, 1u, 39533u, 78304u), vec4<u32>(51955u, 78615u, 12313u, 0u), vec4<u32>(12876u, 2210u, 18928u, 33415u));

var<private> global1: vec2<i32>;

var<private> global2: vec3<u32> = vec3<u32>(43058u, 9719u, 4294967295u);

var<private> global3: i32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(454f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1871f, 405f))))));
}

fn func_3() -> vec2<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f * 471f)) - 232f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-820f - 601f))))));
    let var_1 = global2.x >> ((u_input.b | 1u) % 32u);
    global3 = ~_wgslsmith_clamp_i32(u_input.a, ~(-global1.x), 0i);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(-243f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 126f) * vec3<f32>(1078f, var_0.x, -623f))))));
    return !(!select(vec2<bool>(true, any(vec3<bool>(true, var_2, false))), !vec2<bool>(var_2, false), vec2<bool>(true, true)));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(555f, arg_0)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-793f, arg_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, -629f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -211f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))), ~_wgslsmith_div_vec3_u32(firstTrailingBit(firstTrailingBit(vec3<u32>(1u, 0u, global2.x))), vec3<u32>(countOneBits(0u), _wgslsmith_clamp_u32(global2.x, u_input.b, 40759u), _wgslsmith_mult_u32(global2.x, u_input.b))), select(u_input.a > -_wgslsmith_add_i32(arg_1.x, -23271i), arg_2.x, (1i | ~arg_1.x) != ~_wgslsmith_clamp_i32(37526i, 64117i, 1i)));
    global0 = array<vec4<u32>, 13>();
    global2 = select(~(~var_0.b), ~(vec3<u32>(global2.x, _wgslsmith_mult_u32(35141u, global2.x), var_0.b.x) << (select(~vec3<u32>(global2.x, var_0.b.x, global2.x), var_0.b, true) % vec3<u32>(32u))), select(false, countOneBits(arg_1.x) <= _wgslsmith_add_i32(53864i, -12131i), true && func_3().x) != false);
    var var_1 = u_input.a << (~13524u % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(max(var_0.a, var_0.a));
    return Struct_2(~global2.x, ~global0[_wgslsmith_index_u32(global2.x, 13u)], var_0);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1170f, _wgslsmith_f_op_f32(func_2())))), firstLeadingBit(firstLeadingBit(~vec3<i32>(-2147483647i, 32586i, u_input.a) ^ -vec3<i32>(global1.x, u_input.a, 26306i))), !func_3());
    let var_1 = true;
    global2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~firstTrailingBit(~var_0.b.zwy), func_4(_wgslsmith_f_op_f32(select(var_0.c.a.x, var_0.c.a.x, var_0.c.c)), ~min(vec3<i32>(global1.x, global1.x, u_input.a), vec3<i32>(-1i, global1.x, global1.x)), !vec2<bool>(true, var_1)).b.zxx), vec3<u32>(~_wgslsmith_dot_vec4_u32(var_0.b, global0[_wgslsmith_index_u32(90055u, 13u)] >> (vec4<u32>(global2.x, 16966u, 11053u, var_0.b.x) % vec4<u32>(32u))), 0u, 0u), ~countOneBits(countOneBits(vec3<u32>(u_input.b, u_input.b, u_input.b))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-808f - var_0.c.a.x) + 520f), var_0.c.a.x, -396f)), var_0.b, (_wgslsmith_mult_u32(u_input.b, abs(1u)) >= 1u) || func_3().x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(max(global1.x, -79381i), global1.x, ~global1.x, _wgslsmith_clamp_i32(1i, u_input.a, global1.x)), -max(vec4<i32>(-11505i, -63746i, global1.x, global1.x), vec4<i32>(80576i, 61553i, -75047i, global1.x))), select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -2147483647i, global1.x, global1.x), abs(vec4<i32>(global1.x, u_input.a, -2147483647i, -2147483647i))), -(vec4<i32>(u_input.a, -6484i, u_input.a, 1i) ^ vec4<i32>(u_input.a, global1.x, 1364i, global1.x)), var_0.c.c || select(var_0.c.c, var_1, var_1))));
    var var_3 = vec3<f32>(var_0.c.a.x, var_0.c.a.x, 1310f);
    return func_4(_wgslsmith_f_op_f32(754f - 941f), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 25663i, var_2.d), vec3<i32>(u_input.a, -25763i, 988i)), u_input.a), ~vec3<i32>(global1.x, 2147483647i, u_input.a)) & ~vec3<i32>(-68671i, ~var_2.d, _wgslsmith_add_i32(u_input.a, u_input.a)), vec2<bool>(var_2.c, var_2.c)).c;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec3<u32>) -> Struct_2 {
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -602f)) - -1774f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, 1141f)))), vec3<i32>(global1.x, u_input.a, ~u_input.a), select(func_3(), vec2<bool>(true || any(vec4<bool>(true, arg_0.c, false, true)), func_3().x), vec2<bool>(_wgslsmith_f_op_f32(-arg_0.a.x) <= _wgslsmith_f_op_f32(f32(-1f) * -459f), true)));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_1().a.x))), _wgslsmith_f_op_f32(sign(710f)), -735f, _wgslsmith_f_op_f32(-arg_2.c.a.x));
    global1 = vec2<i32>(-1i) * -abs(vec2<i32>(2147483647i, 2147483647i));
    global1 = vec2<i32>(1278i, -12105i) | vec2<i32>(select(firstLeadingBit(-u_input.a), ~_wgslsmith_add_i32(32929i, -43715i), !func_1().c), -27156i);
    var var_1 = arg_2.c.c;
    global2 = arg_1.b.xyz | _wgslsmith_add_vec3_u32(~vec3<u32>(73380u, global2.x | 41607u, 57348u), func_4(-1528f, vec3<i32>(global1.x, u_input.a, -5458i), func_3()).b.wzw & func_5(Struct_1(vec2<f32>(973f, arg_2.c.a.x), vec3<u32>(8678u, arg_1.c.b.x, u_input.b), arg_1.c.c), 60806i, 9728i >> (u_input.b % 32u), vec3<u32>(global2.x, arg_0, 0u)).c.b);
    return arg_2.c;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global2 = _wgslsmith_sub_vec3_u32(~max(arg_0.b, ~(vec3<u32>(arg_1.b.x, 36348u, 1u) ^ arg_1.b)), ~arg_2);
    var var_0 = ~2147483647i >> (u_input.b % 32u);
    global1 = vec2<i32>(~_wgslsmith_mult_i32(u_input.a & 1i, global1.x), 21391i);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2745f, 1701f, -1243f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(111f, 1438f, -1000f), vec3<f32>(arg_0.a.x, arg_1.a.x, arg_1.a.x), arg_0.c)))) * vec3<f32>(-969f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1303f - arg_1.a.x) - 685f))), vec4<u32>(1u, min(global2.x, ~arg_2.x), ~0u, func_6(~abs(37429u), Struct_2(163077u, _wgslsmith_clamp_vec4_u32(vec4<u32>(95068u, 1u, 25072u, u_input.b), vec4<u32>(arg_1.b.x, 4294967295u, arg_2.x, 84695u), global0[_wgslsmith_index_u32(76777u, 13u)]), func_4(arg_1.a.x, vec3<i32>(-1i, global1.x, u_input.a), vec2<bool>(false, arg_1.c)).c), Struct_2(17852u, global0[_wgslsmith_index_u32(4294967295u, 13u)] & vec4<u32>(16391u, 11994u, 0u, u_input.b), arg_0)).b.x), func_1().c, _wgslsmith_div_i32(u_input.a, -10206i));
    let var_2 = -vec4<i32>(min(u_input.a, _wgslsmith_div_i32(abs(var_1.d), 2147483647i >> (var_1.b.x % 32u))), max(var_1.d ^ 0i, -var_1.d), _wgslsmith_add_i32(min(2147483647i, select(1i, 2147483647i, true)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, global1.x, -2438i, 14090i)), -vec4<i32>(global1.x, u_input.a, -25809i, global1.x))), u_input.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(24626u, func_5(func_1(), firstTrailingBit(max(-2147483647i, -60740i)), _wgslsmith_mod_i32(-u_input.a, _wgslsmith_div_i32(19525i, -1i)), ~firstTrailingBit(vec3<u32>(global2.x, 7457u, 4294967295u))), func_5(func_1(), 2147483647i, min(-12755i, _wgslsmith_div_i32(u_input.a, u_input.a)), vec3<u32>(reverseBits(global2.x), ~global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, u_input.b, u_input.b), vec4<u32>(39007u, 2169u, 0u, 41858u))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-403f * -1811f) - func_1().a.x), _wgslsmith_f_op_f32(func_2())), vec3<u32>(~(global2.x ^ 1u), 28249u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(62870u, 57680u, global2.x, 1u), vec4<u32>(4294967295u, 22235u, global2.x, u_input.b)), ~global0[_wgslsmith_index_u32(39177u, 13u)])), all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), true))), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, 46740u, 12065u), ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(67070u, global2.x, 33246u)), func_4(1016f, vec3<i32>(-19767i, u_input.a, -1i), vec2<bool>(true, false)).c.b)));
    let var_1 = min(vec4<i32>(5515i, min(2147483647i & u_input.a, u_input.a & ~u_input.a), u_input.a, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.x, global1.x), vec3<i32>(global1.x, 44043i, 2147483647i))), ~_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(59983i, global1.x, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, -1i, global1.x)) >> (vec4<u32>(u_input.b, 75551u, var_0.b.x, global2.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-13923i, 1i, u_input.a, 0i), reverseBits(vec4<i32>(8214i, 7372i, 23402i, u_input.a)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -292f);
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), var_0.a.x))), global0[_wgslsmith_index_u32(var_0.b.x, 13u)], !func_3().x, ~(~(-_wgslsmith_add_i32(global1.x, var_1.x))));
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_3.a - vec3<f32>(-867f, 601f, 1020f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(479f, var_0.a.x, var_0.a.x)) * vec3<f32>(344f, var_3.a.x, var_0.a.x)) * vec3<f32>(-1000f, var_0.a.x, func_7(var_0, Struct_1(vec2<f32>(1000f, var_3.a.x), var_0.b, true), var_0.b).a.x))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(604f + 372f)))), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-4170i, var_3.d, 1722i), -vec3<i32>(-1i, 0i, -20316i))), vec2<bool>(all(vec4<bool>(false, true, true, true)) && !var_0.c, true)).b, var_0.c, ~global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-272f, var_4.b.x);
}

