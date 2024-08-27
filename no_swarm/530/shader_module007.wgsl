struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(15009i, 0i, -8439i), vec2<u32>(15316u, 1u), -176f);

var<private> global3: array<u32, 31>;

var<private> global4: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(799f, 2147483647i, vec4<f32>(-1000f, 504f, 1400f, -149f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<u32> {
    var var_0 = vec3<u32>(global1.b.x, countOneBits(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global2.b.x, global1.b.x, 4294967295u, global1.b.x) >> (vec4<u32>(1u, 4294967295u, 40489u, 67523u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(global1.b.x, global2.b.x), global1.b.x, ~36583u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global1.b.x, 31u)], 31u)]))), ~firstTrailingBit(1u) & 1u);
    global1 = Struct_2(vec3<i32>(abs((global2.a.x << (var_0.x % 32u)) | min(global2.a.x, 46629i)), _wgslsmith_add_i32(global2.a.x, -68138i) | -min(global2.a.x, 2147483647i), global1.a.x), vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.x, global2.b.x), global2.b), 4294967295u), var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1501f)))));
    global1 = Struct_2(vec3<i32>(u_input.a.x, global1.a.x, u_input.b.x), abs(var_0.xx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.c, _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_div_f32(global1.c, global1.c)))))));
    var var_1 = vec3<u32>(_wgslsmith_div_u32((4294967295u >> (global2.b.x % 32u)) ^ 0u, ~(var_0.x << (0u % 32u))), ~(~4294967295u) >> (_wgslsmith_div_u32(36430u, ~global1.b.x) % 32u), 1u) << (select(select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.x, global3[_wgslsmith_index_u32(global2.b.x, 31u)]), vec3<u32>(global2.b.x, global1.b.x, 55608u)) >> (vec3<u32>(2188u, 73239u, 66907u) % vec3<u32>(32u)), ~vec3<u32>(var_0.x, global3[_wgslsmith_index_u32(66069u, 31u)], 31477u), vec3<bool>(any(vec4<bool>(false, true, false, true)), false, u_input.a.x != global2.a.x)), _wgslsmith_sub_vec3_u32(~(vec3<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(global2.b.x, 31u)]) & vec3<u32>(0u, global3[_wgslsmith_index_u32(global2.b.x, 31u)], 113609u)), _wgslsmith_sub_vec3_u32(vec3<u32>(12302u, global3[_wgslsmith_index_u32(var_0.x, 31u)], global3[_wgslsmith_index_u32(global2.b.x, 31u)]) ^ vec3<u32>(17027u, 56124u, global1.b.x), vec3<u32>(88100u, 37952u, 0u))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), any(vec3<bool>(true, true, true))), true)) % vec3<u32>(32u));
    global1 = Struct_2(global2.a, vec2<u32>(0u, firstTrailingBit(~(~46675u))), _wgslsmith_f_op_f32(102f - _wgslsmith_f_op_f32(ceil(427f))));
    return vec2<u32>(~_wgslsmith_sub_u32(var_0.x, 73563u), global1.b.x) | vec2<u32>(0u, _wgslsmith_add_u32(1u, global1.b.x));
}

fn func_2() -> Struct_2 {
    global1 = Struct_2(global2.a, func_3() >> (~firstLeadingBit(global2.b) % vec2<u32>(32u)), global2.c);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(593f, _wgslsmith_div_f32(global1.c, 811f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-463f, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(402f, global2.c))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.c, global0.x)) + _wgslsmith_f_op_f32(-global2.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c - -646f))), _wgslsmith_f_op_f32(ceil(-1123f))));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(global1.c + global1.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1148f)))))), select(false, !select(true, all(vec4<bool>(false, true, true, false)), false), false), Struct_2(vec3<i32>(global2.a.x, 22523i, reverseBits(1716i >> (1u % 32u))), vec2<u32>(~global3[_wgslsmith_index_u32(1u, 31u)] ^ 0u, 62666u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c, -1657f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.x)))), global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -481f))), -1000f));
    var var_1 = Struct_2(var_0.d.a, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.e.x + 667f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-590f, 1304f))) * var_0.b)));
    let var_2 = global4[_wgslsmith_index_u32(func_3().x, 1u)];
    return var_0.d;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global3[_wgslsmith_index_u32(global1.b.x, 31u)], _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, global2.b.x, 6862u, global2.b.x), vec4<u32>(4294967295u, global2.b.x, 0u, global1.b.x)), _wgslsmith_add_u32(var_0.b.x, global1.b.x)), ~countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(var_0.b.x, 31u)], 109497u, 4294967295u, 4294967295u))) & ~firstTrailingBit(abs(vec4<u32>(33975u, 0u, 19753u, 0u))), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.x, ~(global2.b.x << (1u % 32u)), global2.b.x, 12805u), vec4<u32>(~firstTrailingBit(1u), global1.b.x, var_0.b.x, ~var_0.b.x)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.c, global0.x)))))), _wgslsmith_f_op_f32(-1000f + 339f), true, Struct_2(countOneBits(vec3<i32>(var_0.a.x << (var_0.b.x % 32u), global2.a.x, -26224i)), _wgslsmith_clamp_vec2_u32(var_0.b, global2.b, global2.b), -753f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, -486f, -916f, 667f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1171f, -834f, global0.x, -704f)))))));
    var var_3 = Struct_3(1324f, var_2.e.x, any(vec4<bool>(true, var_2.c, true, all(select(vec4<bool>(var_2.c, var_2.c, true, var_2.c), vec4<bool>(var_2.c, true, var_2.c, var_2.c), vec4<bool>(false, var_2.c, var_2.c, false))))), var_2.d, var_2.e);
    var var_4 = _wgslsmith_div_vec3_u32((firstTrailingBit(select(vec3<u32>(114838u, var_2.d.b.x, var_2.d.b.x), vec3<u32>(var_2.d.b.x, 35406u, global2.b.x), var_2.c)) & countOneBits(vec3<u32>(17869u, 4294967295u, global3[_wgslsmith_index_u32(71752u, 31u)]))) >> (vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(24550u, 1u), 4294967295u), _wgslsmith_sub_u32(global2.b.x, var_2.d.b.x) | ~var_2.d.b.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(global2.b.x, var_0.b.x, var_0.b.x)), vec3<u32>(1u, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 31u)], 2376u)), vec3<u32>(~var_2.d.b.x, ~abs(var_0.b.x), max(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(39300u, 31u)], global2.b.x), _wgslsmith_mod_u32(var_0.b.x, 4294967295u)))));
    return var_2.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1163f * global2.c)), _wgslsmith_f_op_f32(f32(-1f) * -612f), global2.c));
    let var_1 = vec3<bool>(!all(vec3<bool>(any(vec3<bool>(true, false, false)), true, true)), true, !select(65799u <= global3[_wgslsmith_index_u32(global1.b.x & 3807u, 31u)], false, true));
    let var_2 = Struct_1(arg_2.c, _wgslsmith_mod_i32(~global1.a.x | _wgslsmith_sub_i32(global2.a.x >> (global2.b.x % 32u), min(global1.a.x, 33027i)), ~max(global2.a.x, arg_2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c, var_2.c.x))))));
    let var_4 = select(~(reverseBits(u_input.a.zw) >> (~(~global2.b) % vec2<u32>(32u))), ~(_wgslsmith_mult_vec2_i32(~global2.a.xx, select(arg_2.a.xy, global1.a.zx, var_1.x)) >> (abs(arg_2.b) % vec2<u32>(32u))), var_1.x);
    return ~(~firstLeadingBit((arg_2.b << (vec2<u32>(72790u, 0u) % vec2<u32>(32u))) << (~vec2<u32>(global1.b.x, arg_2.b.x) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(923f + global2.c) - _wgslsmith_f_op_f32(step(global1.c, global0.x)))))), global1.c);
    global3 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(~global3[_wgslsmith_index_u32(1u, 31u)]))), abs(vec2<i32>(0i, 54890i)), vec4<f32>(-621f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global1.c, _wgslsmith_div_f32(-1314f, -1247f)), _wgslsmith_div_vec2_u32(min(global1.b, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, global1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, 1066f, 538f, -366f) * vec4<f32>(global1.c, 231f, global0.x, -196f)), func_1(), vec3<i32>(u_input.a.x, u_input.a.x, 28697i))), vec2<u32>(~global1.b.x, 0u)));
}

