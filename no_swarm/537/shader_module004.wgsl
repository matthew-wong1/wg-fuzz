struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(19407u, 140151u, 5299u), vec3<u32>(115857u, 15748u, 13894u));

var<private> global1: array<u32, 29> = array<u32, 29>(100486u, 1u, 4294967295u, 5125u, 4294967295u, 77141u, 4294967295u, 1u, 1969u, 4294967295u, 23998u, 4294967295u, 4294967295u, 1u, 0u, 8654u, 52909u, 6902u, 746u, 1u, 0u, 47442u, 23467u, 25204u, 38395u, 46826u, 1u, 29815u, 0u);

var<private> global2: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_2(Struct_1(vec4<i32>(0i, i32(-2147483648), -1i, 10848i)), Struct_1(vec4<i32>(42887i, 2147483647i, -1i, 35335i)), true, vec3<bool>(true, false, false), Struct_1(vec4<i32>(-1i, 14056i, -21286i, 1i))), vec3<f32>(-1106f, -459f, 236f), 16559i), Struct_3(Struct_2(Struct_1(vec4<i32>(2147483647i, 9202i, 48475i, 0i)), Struct_1(vec4<i32>(0i, -20389i, -1i, -19515i)), true, vec3<bool>(false, false, false), Struct_1(vec4<i32>(0i, 2147483647i, i32(-2147483648), 14930i))), vec3<f32>(-929f, -684f, -423f), -25843i), Struct_3(Struct_2(Struct_1(vec4<i32>(1i, -3196i, 12350i, -15367i)), Struct_1(vec4<i32>(0i, -1i, -1i, -32627i)), false, vec3<bool>(true, false, true), Struct_1(vec4<i32>(-49571i, -1i, 1i, 0i))), vec3<f32>(-801f, 1200f, 320f), 2147483647i), Struct_3(Struct_2(Struct_1(vec4<i32>(-8360i, 30015i, 2147483647i, 1i)), Struct_1(vec4<i32>(-35045i, i32(-2147483648), 10747i, -90881i)), false, vec3<bool>(false, false, true), Struct_1(vec4<i32>(-6250i, -3253i, 2147483647i, -10764i))), vec3<f32>(-282f, -542f, -141f), -1i));

var<private> global3: array<u32, 28> = array<u32, 28>(43977u, 1u, 0u, 1u, 0u, 11148u, 41048u, 30582u, 1u, 15754u, 1u, 33380u, 0u, 4294967295u, 5796u, 4294967295u, 65018u, 0u, 4294967295u, 0u, 51756u, 1u, 0u, 53031u, 5237u, 0u, 0u, 4294967295u);

var<private> global4: f32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(82599u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~u_input.b.zx), _wgslsmith_mod_vec2_u32(~u_input.b.yx, countOneBits(vec2<u32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], 28u)], 4294967295u)))), 29u)]), _wgslsmith_clamp_u32(abs(abs(u_input.b.x) | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~65044u, 28u)], 28u)]), global1[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(u_input.b.x, 28u)]) | ~72934u, 29u)], ~u_input.b.x));
    global3 = array<u32, 28>();
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -15679i, u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -3822i, -1i)), vec4<i32>(-35300i, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.b.x, 4294967295u, 61546u, u_input.b.x) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(-1i, 25223i), _wgslsmith_sub_i32(-30557i, u_input.a), 1i, select(u_input.a, 41173i, false))), _wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<i32>(0i, 28841i, u_input.a, u_input.a))), ~vec4<i32>(u_input.a, -3826i, u_input.a, -34518i) & -vec4<i32>(-2147483647i, 1211i, 36323i, -18781i))));
    var var_2 = 41593u;
    let var_3 = all(vec4<bool>(true, true, true, ~(u_input.a & 2147483647i) > ~min(-48004i, -1i)));
    return 2147483647i;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(abs(arg_0.a.e.a.x), ~(i32(-1i) * -2147483647i), abs(arg_0.a.a.a.x)), (arg_1.a.a.a.yzz & arg_1.a.a.a.zzz) ^ min(min(arg_0.a.e.a.xyy, vec3<i32>(9421i, arg_1.a.a.a.x, 10506i)), vec3<i32>(arg_1.a.a.a.x, 38242i, arg_0.a.b.a.x))), select((~arg_1.a.e.a.ywy >> (abs(global0[_wgslsmith_index_u32(u_input.b.x, 2u)]) % vec3<u32>(32u))) >> (u_input.b % vec3<u32>(32u)), -arg_1.a.a.a.xwy, select(select(vec3<bool>(false, arg_0.a.c, arg_2.a.d.x), vec3<bool>(true, true, true), vec3<bool>(arg_1.a.d.x, arg_2.a.d.x, false)), arg_2.a.d, false)));
    var var_1 = Struct_2(Struct_1(firstTrailingBit(vec4<i32>(func_3(), arg_1.c << (51206u % 32u), _wgslsmith_mult_i32(-1i, u_input.a), countOneBits(37113i)))), arg_0.a.a, _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(step(arg_0.b.x, -529f)))), arg_0.a.d, Struct_1(-(~vec4<i32>(arg_0.c, arg_1.a.e.a.x, arg_0.a.e.a.x, 1i))));
    global3 = array<u32, 28>();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(global1[_wgslsmith_index_u32(14363u, 29u)]), _wgslsmith_div_u32(4294967295u, ~20122u)), 29u)];
    let var_3 = any(vec2<bool>(!(2750u < (4294967295u | u_input.b.x)), any(select(!vec4<bool>(arg_0.a.c, arg_1.a.c, arg_0.a.c, arg_0.a.c), vec4<bool>(arg_2.a.d.x, var_1.c, false, var_1.c), vec4<bool>(true, var_1.c, false, arg_0.a.d.x)))));
    return vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.b.x)), -1148f, arg_1.b.x);
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(678f, _wgslsmith_f_op_f32(f32(-1f) * -994f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(964f - -793f) - -292f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1208f + -1533f))))), _wgslsmith_f_op_f32(-792f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(416f)))) + -2031f))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1031f + -762f), 211f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-370f)) - 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -637f));
    global1 = array<u32, 29>();
    global4 = var_1.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(Struct_2(Struct_1(vec4<i32>(-2147483647i, 59407i, u_input.a, arg_0.x)), Struct_1(vec4<i32>(u_input.a, arg_0.x, arg_0.x, arg_0.x)), false, vec3<bool>(false, true, false), Struct_1(vec4<i32>(u_input.a, 14711i, -18596i, u_input.a))), vec3<f32>(-2168f, var_1.x, 1495f), 0i), Struct_3(Struct_2(Struct_1(vec4<i32>(11627i, u_input.a, 14616i, -32776i)), Struct_1(vec4<i32>(-1i, u_input.a, u_input.a, -18974i)), false, vec3<bool>(true, true, false), Struct_1(vec4<i32>(u_input.a, -2147483647i, arg_0.x, arg_0.x))), var_1.www, -6235i), Struct_3(Struct_2(Struct_1(vec4<i32>(6555i, 1i, u_input.a, 0i)), Struct_1(vec4<i32>(u_input.a, arg_0.x, -2147483647i, -1i)), true, vec3<bool>(false, false, true), Struct_1(vec4<i32>(24817i, 0i, arg_0.x, -29193i))), vec3<f32>(var_1.x, 1756f, var_1.x), arg_0.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 586f, 502f), vec3<f32>(-417f, var_1.x, 767f))), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -291f) + var_1.xxx)))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec4<i32>(0i, ~(-u_input.a), _wgslsmith_add_i32(i32(-1i) * -47843i, _wgslsmith_sub_i32(~54077i, 1i)), ~(19144i >> (1u % 32u))), -vec4<i32>(func_1(vec2<i32>(u_input.a, 2147483647i)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-2147483647i, 0i, 9737i, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), ~u_input.a, -u_input.a));
    var var_1 = _wgslsmith_f_op_f32(max(-2348f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-608f, _wgslsmith_f_op_f32(sign(-689f)))))))));
    let var_2 = max(firstTrailingBit(~22332u), global3[_wgslsmith_index_u32(u_input.b.x ^ ~(~(~0u)), 28u)]);
    let var_3 = global2[_wgslsmith_index_u32(select(~select(~43290u, 5784u, select(true, all(vec3<bool>(true, false, false)), true)), _wgslsmith_div_u32(1u, 1u), true), 4u)];
    var var_4 = ~19003i;
    var var_5 = var_3.a;
    global0 = array<vec3<u32>, 2>();
    global1 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.b.xx) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2127f, var_3.b.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, -226f) * var_3.b.zx)))));
}

